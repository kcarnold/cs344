---
title: "Exams by Us"
---

In this class, we are going to try writing our own exams.

Why? Once you leave school, you won't have instructors. But you won't stop learning. So you're going to need to take ownership of your own learning.

Since it's easy to *feel* like you've learned something without actually learning it, some ways of assessing your learning are important. One way to do this is to try exercises, like you'll be doing in your projects. Another way is to test yourself. So that's what we'll try now.

[GitHub Copilot adds, based on my outline:] Another benefit of writing your own exams is that you'll get to practice learning in community. You'll get to see how your classmates are learning, and you'll get to help them learn. And you'll get to see how you learn, and how you can help yourself learn.

## Stage 1: Writing Questions

In this stage, each student will write questions. Expectations:

- Each student writes 3 questions.
- Each question is for a different unit.
- Each question should include an answer key.
- One question should be multiple-choice. One question should be short-answer. The third question can be in a format of your choice (e.g. fill-in-the-blank, true-false, multiple-choice, short-answer, etc.).

Aim for a range of questions about different topics. For example, when we first ran this, we got lots of questions about loss function selection early on. Review what's already there before you suggest your own.

### Multiple Choice

A multiple-choice question should have one clearly correct answer, and three relevant detractors. The question should be clear, and the distractors should be relevant. The distractors should not be so similar that they could be confused with the correct answer.

### Short Answer

Short answer questions might start with words like "Explain", "Compare", "Describe", "Define", "Weigh the pros and cons of", etc. There should be a single answer that is clearly correct.

### Difficulty

You should try to vary the difficulty of your questions. As a rough guide, aim for each question to be at a different level of Bloom's Taxonomy. Concentrate on the first 4 levels:

- Remembering (words like "define", "list", "name")
- Understanding (words like "give an example", "explain", "describe", "identify")
- Applying (words like "implement", "apply", "solve")
- Analyzing (words like "analyze", "distinguish", "contrast")

## Stage 2: Reviewing Questions

Each student should contribute two revisions to questions written by other students. Revisions can be improvements to the clarity of the question (it should be clear what the question is asking), or improvements to the answer key (it should be clear what the correct answer is, and why it's correct).


## Stage 3: Taking the Exam

Individually: Each student will get a stratified random sample of questions. The sample should include one question from each unit, and one question from each type (multiple-choice, short-answer, etc.).

We will also collaboratively test ChatGPT. Each student will give ChatGPT a question, then reflect on whether the answer is correct.

We will also reflect on our experience with this first exam and how we can improve it for the next one.

## Logistics

We'll do this all in a GitHub repo: https://github.com/kcarnold/cs344-exam-23sp

- Stage 1:
  - Make a directory (folder) for each question, named like `u01-mc-history`
    - `u` means "unit"
    - `01` means "unit 1" (two digits, so they sort correctly)
    - `mc` means "multiple choice". Other types include `sa` (short answer), `tf` (true/false), or other.
  - In each directory, make a `README.md` file that contains the question.
  - In each directory, make an `answer.md` file that contains the answer, and an explanation of why the answer is correct.
  - In each directory, make a `SLO.md` that contains the learning objective(s) that the question is testing. You can generally copy and paste these from the unit's Objectives section on the website.
    - In some cases, the Objectives list may not bo complete, correct, or clear. Suggestions for improvement there count as a Review.
- Stage 2: Reviewing Questions
  - Each student makes two revisions to questions written by other students.
  - Either open a PR suggesting a specific fix, or open an Issue or Discussion with a link to what you're commenting on.
    - To link to a specific line in a file, go to that file, click the `<>` in the bar above the file contents, click the line number, then select "Reference in new issue" from the `...` menu.
    - Use `@` to reference the original author, so they can revise based on your feedback.
- Stage 3:
  - Start a new document (Word, GDocs, etc.) for collecting your responses.
  - Each student picks a stratified random set of questions. For each one:
    - Feed it verbatim to ChatGPT (perhaps adjusting formatting as necessary, if copy-paste fails). Copy and paste your original prompt and its answer into your document.
    - Try to get ChatGPT to improve its answer. You might edit the prompt or add another message.
    - Copy and paste the new prompt and response into your document.
    - Grade the ChatGPT response on (1) accuracy and (2) usefulness for understanding the concept.
  - Submit your document to the assignment in Moodle.

### How to take a random sample of questions?

We want a *stratified* random sample, with one question per unit. You could do this by hand, but here's some code to do it. Run this in your JavaScript console on the GitHub repo page. (If this is the first time you're pasting something into the Console, you may get a message saying that you need to type something like "allow pasting". Do that, then paste again.)

The result will show up in the Console and in the page body.

```js
(() => {
  let byUnit = new Map();
  document.querySelectorAll('[aria-label="Directory"]').forEach(x => {
    let name = x.closest('[role="row"]').querySelector('a').textContent;
    let unit = /^(u|uc)(\d+)-(.+)$/.exec(name)[2];
    let contents = byUnit.get(unit) || [];
    contents.push(name);
    byUnit.set(unit, contents);
    console.log(unit)
  })

  let result = [];
  for (let [unit, options] of byUnit) {
    console.log(options)
    result.push(options[Math.floor(Math.random() * options.length)]);
  }
  console.log(result.join(', ');
  document.body.innerHTML = `<h1>Your questions</h1>${result.join(', ')}`;
})()
```

## References

- https://li.wsu.edu/documents/2018/01/student-generated-test-questions.pdf/  
- https://www.researchgate.net/publication/279747608_Asking_the_Right_Questions_Using_Student-Written_Exams_as_an_Innovative_Approach_to_Learning_and_Evaluation  
- [“Exams by You”: Having Students Write and Complete Their Own Exams During the COVID-19 Pandemic - PMC](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC9082101/)
