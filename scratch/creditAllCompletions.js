async function getEmailsWhoAttempted(quizId) {
  /* get the response CSV */
  let url = `/mod/quiz/report.php?sesskey=${window.M.cfg.sesskey}&download=json&id=${quizId}&mode=overview&attempts=enrolled_with&onlygraded=&onlyregraded=&slotmarks=1`;
  let gradesJSON = await fetch(url);
  let grades = await gradesJSON.json();
  /* for some reason there's an extra array layer */
  grades = grades[0];
  // the columns aren't labeled.
  return new Set(grades.map(attempt => attempt[2]));
}

async function creditAllAttempts(quizIds) {
  let quizzesAttemptedByEmail = new Map(); // from email to number of quizzes attempted
  for (let quizId of quizIds) {
    let emailsWhoAttemptedQuiz = await getEmailsWhoAttempted(quizId);
    // add the number of quizzes attempted to the map
    for (let email of emailsWhoAttemptedQuiz) {
      let quizzesAttemptedSoFar = quizzesAttemptedByEmail.get(email) || 0;
      quizzesAttemptedByEmail.set(email, quizzesAttemptedSoFar + 1);
    }
  }

  // now we have a map of emails to number of quizzes attempted

  // For each user, fill in the grade and feedback comments.
  let userRows = document.querySelectorAll('.gradingtable table tbody tr');
  for (let userRow of userRows) {
    let email = userRow.querySelector('.email').textContent; // should also be .c3
    let quizzesAttempted = quizzesAttemptedByEmail.get(email) || 0;
    let grade = quizzesAttempted / quizIds.length;
    // round to 2 decimal places
    grade = Math.round(grade * 100) / 100;
    // Set the grade text box.
    let gradeTextBox = userRow.querySelector('input[name^=quickgrade]');
    // The maximum grade is the text just after the text box
    // FIXME: hard-coded to 100.
    let maxGrade = 100;
    // type the grade into the text box
    gradeTextBox.value = grade * maxGrade;
    // trigger the change event
    gradeTextBox.dispatchEvent(new Event('change'));
    // Set the feedback text box.
    if (grade < 1.0) {
      let feedbackText = `You have completed ${quizzesAttempted} out of ${quizIds.length} quizzes that are part of this assignment. Don't forget to complete these quizzes on Moodle; let the instructor know when you have done so.`;
      let feedbackTextBox = userRow.querySelector('textarea[name^=quickgrade_comments]');
      feedbackTextBox.value = feedbackText;
      // trigger the change event
      feedbackTextBox.dispatchEvent(new Event('change'));
    }
  }
}

function getMatchingActivities(regex) {
  // make sure the regex is a regex
  if (typeof regex === 'string') {
    regex = new RegExp(regex);
  }

  // activityDirectory is organized by category, so we need to flatten it.
  let matchingActivities = [];
  for (let category of activityDirectory) {
    for (let activity of category.activities || []) {
      // if the activity URL doesn't contain /mod/quiz/view.php, it's not a quiz.
      if (!/\/mod\/quiz\/view.php/.test(activity.url)) {
        continue;
      }
      // check that the title matches.
      if (!regex.test(activity.title)) {
        continue;
      }

      // extract the quiz id while we're here
      let quizId = new URL(activity.url).searchParams.get('id');
      activity.id = quizId;

      matchingActivities.push(activity);
    }
  }
  return matchingActivities;
}

async function doPromptAndCredit() {
  let activityRegex = prompt('Enter a regex to match the activities you want to credit.');
  let activities = getMatchingActivities(activityRegex);
  if (activities.length === 0) {
    alert("no matching activities.")
    return;
  }
  // Confirm that these are the activities you want to credit.
  let activityTitles = activities.map(activity => activity.title);
  let activityTitlesString = activityTitles.join('\n');
  let confirmed = confirm(`Are you sure you want to credit all completions of the following activities?\n\n${activityTitlesString}`);
  if (!confirmed) {
    return;
  }
  let quizIds = activities.map(activity => activity.id);
  await creditAllAttempts(quizIds);
}