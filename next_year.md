# Next Year

## Objectives

* What AI solutions can be used on what problems?
* Processing large datasets?
* Model debugging strategies?

Social impact:

* Feedback loops
* Biases

Meta:

* Easy for students to predict the class structure.
* Make it easy for me to give feedback.
 
### Knowledge

* Kinds of AI systems
* Components of systems
* Mathematical basis (what is backprop, how it works, etc.)
* How outputs depend on data
* Worldviews of data ethics
* History and trajectory of AI?

### Skills

* Select an approach to solve a problem
* Map problem characteristics onto approach elements
* Implement approach in code

### Dispositions

* Treat data as both valuable and flawed
* Treat people as more than just data sources or targets to manipulate
* Investigate where data came from
    * "you credit the source, but the source doesn't credit their sources at all. So we can't acknowledge the artists who created these skins (thankfulness, humility), have any recourse if some of the skins are inappropriate (accountability), or easily add new skins (replicability)."
* Think through how a system will affect people.
* Think about what the data doesn't include, what the algorithm ignores or de-emphasizes.
* Repeat experiments.
* Notice and document the decisions you're making.
* Seek understanding of what a system gets wrong (rather than just reporting numbers)
* Try variations
* experiment-tracking mechanism? model storage?

## High level

* Start with applications. Gradually deepen the code and concepts.
* Intentionally overlap application areas and even specific datasets between DATA 202 and CS 344.
* The material on interpretability and fairness/bias could have come much earlier in the semester.
* Specifically connect with *Reformed* tradition

### Projects

* Remind students about the drivetrain approach for projects
* Ask for a *minimal* deliverable and a *stretch* deliverable.
* Check with Pat and with 396/398 if there are elements of project structure that we could deliberately practice.

## Materials

* The fast.ai textbook doesn’t encourage enough spending time with data (EDA)
* Use more of the HuggingFace stuff instead? Sequence modeling?
* Is there a canonical simple thing to do with RL? Perhaps we could start with 3 weeks on applications, then spiral into details?


## Logistics

* Don't bother auto-pushing content to student repos.
* Use a single compute platform (Colab?)
* Use a single submission platform (Moodle?)
* Projects: meet earlier, get more specific
* AI Lab Hours

## Potential Resources

* [Applied Machine Learning course at Cornell Tech](https://www.youtube.com/playlist?list=PL2UML_KCiC0UlY7iCQDSiGDMovaupqc83)
* <https://incidentdatabase.ai/>
* Interactive AI:
    * [Agency plus automation: Designing artificial intelligence into interactive systems](https://www.pnas.org/content/116/6/1844)
    * Ben S [Human-Centered AI IUI 2021 tutorial](https://iui.acm.org/2021/hcai_tutorial.html)

## Potential Activities

* Play with latent space / generation (projection, latent space math, )
* Logistic regression in NN (as same thing as linreg, just different loss and activation)
* Vision to text encoder decoder—with paraphrase setup both ways
* Write an explanation, share it with your mom, describe how it went, improve the explanation.
* Actually have a small-group discussion about a perspectival topic (deliberately trying to express a range of perspectives) and summarize it (record it?).
* Instead of fighting with querying Bing (ch2), just collect a small set of images by hand / from personal photo library

## Low-Level Stuff

* More visualization tools.
    * Loss plots
    * Data exploration, e.g., class distribution
    * A "quick snapshot" of a dataset?
        * examples, clustered using pretrained embeddings?
    * Visualizing the results of learning:
* Batch size -- can use a bigger model.
* sklearn 011: Make sure to ask about *validation* set (See Andrew Feikema's submission)
* Reporting: clearer delineation of *problem statement* vs *student answer*.
* More data wrangling?
* Clarify to students what *limitations* means (e.g., "time to finish the project" is not a limitation)
* If using Colab: share the working directory with me? Use underscores instead of dashes in filenames.

### Project Debrief

* For a team project: what was their role?
* What's your 60-second self-reflection on your performance on the project?
* Ask students to describe their process; what was challenging and how overcame
