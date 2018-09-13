# Algorithms - Lede 2018 
A course on algorithms used in journalism, for beginning Python programmers.
Taught at the Lede program, Columbia Journalism School, summer 2018
by Jonathan Stray. Some parts adapted from previous work, as noted.

## Course overview
This is a course on algorithmic data analysis in journalism, and also the journalistic analysis of algorithms used in society. The major topics are text processing, visualization of high dimensional data, regression, machine learning, algorithmic bias and accountability, monte carlo simulation, and election prediction. 

There are seven weeks of material and 13 classes total. Most classes include a Jupyter notebook that students filled out during class time, following the instructor on screen. The full class notebook is named `class-week-day-topic.ipynb` while this same notebook ready to be filled out in class is called `class-week-day-topic-empty.ipynb` Though I believe it's important for learning for the students to type the code themselves, I sometimes included particularly annoying or unedifying snippets in the "empty" notebooks.

There is a homework assignment after most classes, given as a notebook which students must fill out themselves. Homework solutions are available separately for instructors -- contact me (try @jonathanstray on Twitter)

All coding is done in Python, using Pandas, matplotlib, scikit learn. 

Some classes also include slide decks, in pdf and pptx formats. The pptx files are included for potential remixes and because the notes contain extra information, e.g. the source URLs for each slide.

## Prerequisites
Students must have basic ability to work with data in Python/Pandas, such as filtering, grouping, and plotting.

## Administration
- Instructor: Jonathan Stray, jms2361@columbia.edu
- Dates: Mondays and Wednesdays, 7/18-8/29
- Class: 10am-1pm
- Lab: 2pm-5pm
- Location: World Room
- Slack channel: #algorithms

## Teaching notes

For each week, I have included notes about what worked and what didn't, in the hope of improving future iterations of the course. You'll see that it took me a few weeks to dial in the level and style of teaching, so the course is strongest (for this audience) starting in week 3.

## LICENSE
This work is licensed under Creative Commons [CC-BY 3](https://creativecommons.org/licenses/by/3.0/us/). Which means you can pretty much do what you want with it, just as long as you mention my name in derivative works.

## Syllabus 

### Week 1 - Introduction to Algorithms
Algorithms for doing journalism, journalism about algorithms. The purpose of mathematical formalism. 

*Materials:*
- [Slides](https://github.com/jstray/lede-algorithms/blob/master/week-1/week-1.pdf)

*Homework:*
- [Average of averages](https://github.com/jstray/lede-algorithms/blob/master/week-1/week-1-homework.ipynb). First you'll do some basic group operations on the Titantic survival data. Then you'll use the results to show that an average of averages is not always the same as the overall average. You must figure out when these two averages **are** equal, and how to compute the overall average from the individual averages.

*What worked and didn't.* Students enjoyed the introductory lecture. The material on linear vs. quadratic running time was a bit abstract, and we didn't really talk about it later in the course, so I'd drop it next time. Most students were able to understand what the "average of averages" problem was about but many got stuck on the summation notation in the homework. I'd rewrite this to look like code instead of algebra (`averages.mean()` etc.)


### Week 2-1 - Text processing and TF-IDF
In this class we will develop the ubiquitous vector space document model, with TF-IDF weighting. You will learn to algorithmically summarize documents by extracting keywords, how to compare documents for similarity, and how a search engine and Google News work. 

*Materials:*
- [Slides](https://github.com/jstray/lede-algorithms/blob/master/week-2/week-2.pdf)
- [Class notebook](https://github.com/jstray/lede-algorithms/blob/master/week-2/week-2-1-class.ipynb)

*References:*
- [TF-IDF is about what matters](https://planspace.org/20150524-tfidf_is_about_what_matters/) - an article which describes TF-IDF in more detail.
- [How ProPublica's Message Machine Reverse Engineers Political Microtargeting](https://www.propublica.org/nerds/how-propublicas-message-machine-reverse-engineers-political-microtargeting) - a real life example of TF-IDF and cosine similarity used in journalism. 
- Stephen Ramsay's short book [Reading Machines](http://www.dansinykin.com/uploads/8/4/0/2/84026824/ramsay_algorithmic_criticism.pdf) - TF-IDF used in the digital humanities, plus a fantastic discussion of text analysis in general. 
- The [Overview document mining platform](overviewdocs.com), a powerful tool you can use to explore document sets, or OCR and convert them. See also this [visualization of the TF-IDF vectors](https://blog.overviewdocs.com/2012/03/16/video-document-mining-with-the-overview-prototype/) of a document set.
- [A full-text visualization of the Iraq war logs](https://blog.overviewdocs.com/2010/12/10/a-full-text-visualization-of-the-iraq-war-logs/) - I used TF-IDF to analyze the Wikileaks Iraq War Logs, which became the inspiration for Overview.


*Homework:*
- [Analyze the state of the Union with TF-IDF](https://github.com/jstray/lede-algorithms/blob/master/week-2-1/week-2-homework.ipynb) to see how topics changed by decade


*What worked and didn't.* It would help to motivate TF-IDF by showing it used in journalism first, e.g. [message machine](https://www.propublica.org/nerds/how-propublicas-message-machine-reverse-engineers-political-microtargeting). The slide deck describing TF-IDF was adapted from my [computational journalism seminar](http://www.compjournalism.com/) and had too many equations for most. The switch from distance to similarity within the notebook was confusing. Jonathan Soma's [2017 class on TF-IDF](http://jonathansoma.com/lede/foundations/classes/text%20processing/tf-idf/) repeatedly plots a few dimensions at a time and seemed to help get the concept across. 

Generally, the students were inspired by text analysis and several used TF-IDF for summarization or clustering as part of their Data Studio projects. We could usefully spend more time on other NLP topics like tagging and sentimen t analysis (both of which are supported in `TextBlob`.) Sentiment analysis in particular is ever-popular, for better or worse.


### Week 2-2 - Vectors, clusters, and visualization

We'll start with the idea of clusters, and the K-means algorithm which identifies them. Then we'll look at the voting patterns of the UK house of lords in 2012 (yes, there is a reason for this particular data) to develop the general idea of high dimensional vectors representing data. We'll learn some ways to visualize such high dimensional spaces, including the classic PCA algorithm.

*Materials:*
- [Class notebook](https://github.com/jstray/lede-algorithms/blob/master/week-2/week-2-1-class.ipynb) 

*References:*
- [Visualizing K-Means Clustering](https://www.naftaliharris.com/blog/visualizing-k-means-clustering/) - an interactive demonstration by Naftali Harris
- [In Depth: Principal Component Analysis](https://jakevdp.github.io/PythonDataScienceHandbook/05.09-principal-component-analysis.html)

*Homework:*
- [Principal component analysis](https://github.com/jstray/lede-algorithms/blob/master/week-2/week-2-2-homework.ipynb) of data from the General Social Survey.

*What worked and didn't.* Students found the PCA material very abstract -- but the discusson of [Flatland](http://www.geom.uiuc.edu/~banchoff/Flatland/) as a method of thinking about higher dimensions was a hit! It would have been better to build up to PCA from simpler high dimensional EDA techniques, e.g. `scatter_matrix`. 

The GSS PCA assignment was difficult for most students, in part because the General Social Survey website has a horrificially complex interface and it's too easy to choose data that doesn't work well for various reasons. It would be better to include a pre-downloaded subset of the data, e.g. the data on altruism used in the homework solution. It may also have helped to give another example of interepreting the axes of a PCA plot using the colors in the scatterplot; in the homework notebook, the link between the povided color schema and increasing numeric values was not clear.


### Week 3-1 - Linear Regression
After a few toy examples of linear regression, we'll pick apart and reproduce the Washington Post article [Racism motivated Trump voters more than authoritarianism](https://www.washingtonpost.com/news/monkey-cage/wp/2017/04/17/racism-motivated-trump-voters-more-than-authoritarianism-or-income-inequality) using the [original American National Election Study data](http://electionstudies.org/project/2016-time-series-study/)

*In-class exercise:* break into five groups and assign each a visualization from the "Examples" section of the slides. Ask each group to take 10 minutes to produce as many causal interpretations of the data as they can think of -- for each example there is at least one plausible confounder.

*Materials:*
- [Slides](https://github.com/jstray/lede-algorithms/blob/master/week-3/week-3.pdf) about correlation, causation, and confounding variables. 
- [Class notebook](https://github.com/jstray/lede-algorithms/blob/master/week-3/week-3-1-class.ipynb)  
- [Simpson's paradox notebook](https://github.com/jstray/lede-algorithms/blob/master/week-3/Simpson's%20Paradox.ipynb) and why controlling for a variable can change the sign of a coefficient on another variable. This is a constructed counter-example to the story below, deisgned so that it looks like particular shoes improve performance, but actually it's just that people who run at night both run faster (which is a real effect) and also more commonly wear these shoes.

*References:*
- [Nike Says Its $250 Running Shoes Will Make You
Run Much Faster. What if That’s Actually True?](https://www.nytimes.com/interactive/2018/07/18/upshot/nike-vaporfly-shoe-strava.html) This NY Times story involves exactly the sort of question regression is meant to answer -- do people wearing these shoes run faster? -- and exactly the sort of question for which there is an infinite supply of potential confounders. It's instructive to see how they handled this by using four different statistical methods of controlling for all other variables, on a rich data set of marathon times.

*Homework:*
- [Linear regression](https://github.com/jstray/lede-algorithms/blob/master/week-3/week-3-1-homework.ipynb) on school test scores, a re-creation of this [2010 story in the Pioneer Press](https://www.twincities.com/2010/07/09/schools-that-work-despite-appearances-schools-doing-better-than-expected-have-traits-in-common/) which asked, what makes a school succeed despite disadvantages?

*What worked and didn't.* The in-class discussion of causality worked well. The presentation of Simpson's paradox was probably still a bit too abstract; I'm not sure  everyone could connect it to the idea of a confounding variable. This class also required extensive whiteboarding of the core formulas and geometry of regression, so some slides with this material would be good.


### Class 3-2 Logistic Regression
For this class we are going to reproduce the Boston Globe analysis for their series [Speed Trap: Who gets a ticket, who gets a break?](http://archive.boston.com/globe/metro/packages/tickets/) which is a classic example of logistic regression in journalism, and also introduces the idea of quantitative measurements of racial bias.

*Materials:*
 - [Class notebook](https://github.com/jstray/lede-algorithms/blob/master/week-3/week-3-2-class.ipynb)

 *References:*
  - [Counting Possible Worlds](https://towcenter.gitbooks.io/curious-journalist-s-guide-to-data/content/analysis/counting_possible_worlds.html) - The Curious Journalist's Guide to Data

*Homework:*
- [Logistic regression](https://github.com/jstray/lede-algorithms/blob/master/week-3/week-3-2-homework.ipynb) to examine the effects of Titanic passenger sex and class on survival odds. As a bonus question, we'll use the ANES data from the last class to see how much effect  opinion of Obamacare had in the 2016 election, when controlling for party.

*What worked and didn't.* The logarithm and exponentiation operations were unfamiliar to many students, and could have used a review. Ditto the concept of function composition where the logit is used to "remap" the linear regression to 0..1. Also, we definitely needed to start by discussing the difference between odds and probability.



### Week 4-1 - Machine Learning
This is our introduction to machine learning, beginning with decision trees.

*In-class exercise:* Act out the construction and use of decision trees and random forests using the amazing [Lights, Camera, Algorithms game](https://gist.github.com/rshorey/6fbf25b7a35ff67fbda435a1553d9564) by Jeremy Merrill and Rachel Shorey.

*Materials:*
- [Class notebook](https://github.com/jstray/lede-algorithms/blob/master/week-4/week-4-1-supervised-learning-class.ipynb) which uses GSS data on attitudes towards government spending on various programs, and tries to predict the answer to one question from the answers on all the others. Plus we make the computer actually draw the decision tree!

*References:*
- [A visual introduction to machine learning](http://www.r2d3.us/visual-intro-to-machine-learning-part-1/) - an interactive machine learning tutorial
- [Getting started with machine learning for reporting](http://paldhous.github.io/NICAR/2018/machine-learning.html) - an all-star presentation of how ML has been used and abused in journalism

*Homework:*
- [Supervised learning](https://github.com/jstray/lede-algorithms/blob/master/week-4/week-4-1-supervised-learning-homework.ipynb) on the classic `wine` data set. Introduction to confusion matrices / accuracy metrics.

*What worked and didn't.* Students loved the decision tree game. However, our random forest actually had slightly lower accuracy than the initial single tree. The Lights, Camera, Algorithm data gives very high accuracy with just a single tree, and could use some harder cases so that the forest more commonly helps. (With less than 50 players, there is a random element to the game depending on what cards are dealt.)

There was some confusion on the confusion matrix in the homework so it probably would have been helpful to spend more class time on this -- or perhaps the problem is that the students first needed context and motivation for why we care about these numbers, which is that they're key to the deconstruction of "Machine Bias" in the next week.


### Week 4-2 - Feature engineering
It's all about which features we feed to the beast. This class collects a lot of the machinery we need to do machine learning in practice, including classification on text vectors and creating dummy variables. Also, cross-validation! 

*Materials:*
- [Class notebook](https://github.com/jstray/lede-algorithms/blob/master/week-4/week-4-2-feature-selection-class.ipynb) which tries to predict flight delays from messy categorical data, and then predicts occupation code from job title and company name in campaign finance data.
- [Using machine learning to classify documents with Overview](https://github.com/jstray/lede-algorithms/blob/master/week-4/Machine%20learning%20with%20Overview.ipynb). Instructions and code to use Overview's tagging to create training data, run a classifier, and re-import the results to automatically tag all other documents.

*References:*
- [Predict-a-bill: how it works](http://ajcnewsapps.tumblr.com/post/77008124090/predict-a-bill-how-it-works) - The Atlanta Journal-Constitution predicts whether Georgia state legislation will pass, based on text and other features.

*Homework:*
- [Determining bill topics](https://github.com/jstray/lede-algorithms/blob/master/week-4/week-4-2-text-classification-homework.ipynb) from their text. 

*What worked and didn't.* The large occupation confusion matrix in the class notebook might be clearer if we dropped the 'Y' (unknown) category.

 On the assignment, some students get an error message trouble reading `bills.csv`:
`(UnicodeDecodeError: ‘utf-8’ codec can’t decode byte 0x89 in position 680: invalid start byte)`. 
Using `df = pd.read_csv('bills.csv', encoding='Latin1')` seemed to fix this on both Windows and Mac.


### Week 5-1 - Machine Bias
This week the class turns from analyzing data to analyzing algorithms. This class we will break down ProPublica's famous [Machine Bias story](https://www.propublica.org/article/machine-bias-risk-assessments-in-criminal-sentencing) using their original data on the performance of the COMPAS recidivism prediction algorithm.

*In-class exercise:* 
First we're going to get down and dirty with confusion matrices, because the core of ProPublica's argument is a difference in false positive rates between black and white defendants. I've created a game called [Kitchen Confusion Matrix](https://github.com/jstray/lede-algorithms/blob/master/week-5/kitchen-confusion-matrix.ipynb) where students acted this out. 
We started with the cards for [Lights, Camera, Algorithms game](https://gist.github.com/rshorey/6fbf25b7a35ff67fbda435a1553d9564) and I asked students to hand-write in a few additional data points for each card: `exotic`, `in_season`, and `imported`. We used a simple scoring function, `score = 2*exotic + in_season - imported`, to compute a score for each fruit/vegetable, trying to predict whether or not the food ultimatey got `eaten` when served. Imagine this score as the result of a previous linear regression against the actual outcomes.

Then we picked a threshold for the classifer to guess `eaten==True`, and in this case we used `score>=2`. All the students physically sorted themselves into predicted eaten and predicted not eaten, in two groups on opposite sides of the room. Then each group split into two: actually eaten and not actually eaten.

At this point I handed out four signs, one for each group, to label the entries of our physical confusion matrix: TP, FP, TN, FN. Each group chose a team leader to hold up the sign, and count the number of people in the group. We wrote the resulting confusion matrix on the whiteboard.

Then we separated each group again, by fruit vs. vegetable. This produced eight groups (though one was empty) and now we used eight signs: each of TP, FP, TN, FN for both fruit and vegetable. Again we counted each group and wrote two more confusion matrices on the board. These represented the classifier performance for fruits and for vegetables. Naturally, the game data is engineered to try to make the false positive rate different between these two groups. 


*Materials*:
- [Slides](https://github.com/jstray/lede-algorithms/blob/master/week-5/week-5-1.pdf) introducing algorithmic accountability generally and Machine Bias in particular.	
- [Class notebook](https://github.com/jstray/lede-algorithms/blob/master/week-5/week-5-1-machine-bias-class.ipynb) recreating the ProPublica analysis, and creating our own classifier to understand the limits of recidivism prediction.
- [Kitchen Confusion Matrix data](https://github.com/jstray/lede-algorithms/blob/master/week-5/kitchen-confusion-matrix.csv). See also the 
 [data generation notebook](https://github.com/jstray/lede-algorithms/blob/master/week-5/kitchen-confusion-matrix.ipynb) which shows how it's rigged for our pedagogical objectives.

*References*:
 - [Prediction](https://towcenter.gitbooks.io/curious-journalist-s-guide-to-data/content/communication/prediction.html) - The Curious Journalist's Guide to Data
 - [California ends cash bail system despite opposition from bail industry and criminal justice reformers](https://www.desertsun.com/story/news/politics/2018/08/24/californias-money-based-bail-system-could-replaced/1069379002/) - Desert Sun. Predictive risk scores in the real-world context of reform in California.
 - [Human decisions and machine predictions](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5947971/) - Analyzes real judicial decision data and makes the case that using a prediction algorithm would simultaneously send fewer people to jail, reduce the crime rate, and improve racial disparities.

*Homework:*
- [Make a fair classifier](https://github.com/jstray/lede-algorithms/blob/master/week-5/week-5-1-fairness-tradeoffs-homework.ipynb), according to the equal false positive rate (FPR) definition, by modifying the COMPAS logistic regression built in class to use different thresholds for black vs. white. How do other metrics shift?

*What worked and didn't.* Acting out confusion matrices was popular. However in our run of Kitchen Confusion Matrix we didn't get the expected higher FPR for fruits. Narratively, the outcome of "being eaten" didn't motivate students to think about the desirability of the outcome and the potential unjustness of differential error. They weren't emotionally invested in being picked by the classifier, whereas I had presumed that all food would surely want to be given a chance to be eaten.

On the homework, most students had problems writing the `predict_threshold_groups` function. Sometimes the goal of equalizing FPR by using per-group thresholds was not clear. There was also a purely technical challenge in that most students were not aware that you can use an array of booleans as a write index into the rows of a dataframe, which is probably the easiest way to code the requested function.

Predictive calibration, and its definition in terms of positive predictive value (PPV, aka precision) was difficult to get on the initial pass through the material. We probably needed to first look at the mechanics of prediction evaluation, perhaps with the [chapter](https://towcenter.gitbooks.io/curious-journalist-s-guide-to-data/content/communication/prediction.html) mentioned above. Calibration is a key concept because of the impossibility of calibration plus equal error rates, an impossibility which is central to the discussion around Machine Bias and classifier bias generally. Perhaps we need an interactive graphical demonstration to give intuition about why we can't have both properties in the presence of differential base rates. 



### Week 5-2 - Algorithmic Accountability
Building on our detailed breakdown of Machine Bias, we expand the scope to talk about algorithmic accountability in general. We briefly review the U.S. legal framework of protected classes, and the impossibility theorems that define what sort of classifiers we can actually build. Going outwards from there, we talk about training data quality and how predictions are actually used in society. Then we'll turn to other cases including income-baised price discrimination and the effects of algorithmic credit scoring.

*Materials*:
- [Slides](https://github.com/jstray/lede-algorithms/blob/master/week-5/week-5-2.pdf) with more on algorithmic accountability, including fairness impossibility theorems, data quality issues, biased humans ignorning algorithmic predictions, and the case of Chicago's predictive policing system. 
- [Class notebook](https://github.com/jstray/lede-algorithms/blob/master/week-5/week-5-2-lending-class.ipynb) analyzing who wins and who loses from more accurately predicting whether someone will repay a loan, using real data from Lending Club.

*References:*
- [Banking Start-Ups Adopt New Tools for Lending](https://www.nytimes.com/2015/01/19/technology/banking-start-ups-adopt-new-tools-for-lending.html) - NY Times. Describes contemporary use of machine learning for loan decisions.
- [Predictably Unequal? The Effects of Machine Learning on Credit Markets](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3072038) - Fuster et al. An analysis of who wins and who loses when default prediction gets better, based on internal Federal Reserve data.

*Homework:*
- Watch the first part of the [Fairness in Machine Learning NIPS 2017 Tutorial](http://fairml.how) by Solon Barocas and Moritz Hardt, where Barocas talks.

*What worked and didn't.* The fairness impossibilities material was very abstract. I really like the three simple and mutally exclusive fairness conditions that Barocas and Hardt identify, but these are totally opaque to non-statiticians. We could really use graphical examples to give intuition about why you can only have one type at a time. 


### Week 6-1 - Election Prediction
In this class we'll build a basic Monte Carlo U.S. election predictor which uses per-state polling errors and simulates the electoral college. And we'll begin our discussion of how to interpret the predictions of 2016 in the face of Trump's win.

*Materials:*
- [Class notebook](https://github.com/jstray/lede-algorithms/blob/master/week-6/week-6-1-election-prediction.ipynb) goes from simulating one poll to simulating the electoral college to simulating correlated error.

*References:*
- [The Real Story of 2016](https://fivethirtyeight.com/features/the-real-story-of-2016/) - Fivethirtyeight
- Buzzfeed's post-election [forecast grades](https://www.buzzfeednews.com/article/jsvine/2016-election-forecast-grades)
- [After 2016, Can We Ever Trust the Polls Again?](https://newrepublic.com/article/139158/2016-can-ever-trust-polls-again) - The New Republic
- [Putting the Polling Miss of the 2016 Election in Perspective](https://www.nytimes.com/interactive/2016/11/13/upshot/putting-the-polling-miss-of-2016-in-perspective.html) - The Upshot
- [Models Based on ‘Fundamentals’ Have Failed at Predicting Presidential Elections](https://fivethirtyeight.com/features/models-based-on-fundamentals-have-failed-at-predicting-presidential-elections/) - Fivethirtyeight

*Homework:*
- [Fundamentals-based election prediction](https://github.com/jstray/lede-algorithms/blob/master/week-6/week-6-1-election-prediction-homework.ipynb). How well can we predict election outcome from economic, approval, and term indicators? Use logistic regression to find out.

*What worked and didn't.* Students needed a primer on basic polling and sampling theory, which we ended up doing in the next class.


### Week 6-2 - Correlated errors.
This class was planned to be more simulation but that was pushed to 7-1. Instead we spent most of it discussing the mechanics of samlping and polling. We used [this chapter](https://towcenter.gitbooks.io/curious-journalist-s-guide-to-data/content/quantification/sampling_and_quantified_error.html) as a reference and worked in a notebook to simulate polling. The objective was to demonstrate basic properties, such as how the MOE changes with sample size, and also the mechanics of simulation with Pandas.

*Materials:*
- [Simple polling simulation](https://github.com/jstray/lede-algorithms/blob/master/week-6/Simple%20Polling%20Simulation.ipynb) notebook.

*References:*
- [Sampling and Quantified Error](https://towcenter.gitbooks.io/curious-journalist-s-guide-to-data/content/quantification/sampling_and_quantified_error.html) - The Curious Journalist's Guide to Data
- [The Devil in the Polling Data](https://www.quantamagazine.org/why-nate-silver-sam-wang-and-everyone-else-were-wrong-part-2-20161111/) - Quanta magazine. All about correlated errors, in the 2007 financial crisis and the 2016 election.

*Homework:*
- [Correlated polling errors](https://github.com/jstray/lede-algorithms/blob/master/week-6/week-6-2-midwest-polling-errors-homework.ipynb). Modify the 6-1 class notebook model so polling errors are correlated only across the midwest, not nationally. This is approximately what actually happened in 2016.



### Week 7-1 - Simulation
We'll look at several uses of simulation in journalism, starting with demonstrating how something works:

- [Should Prison Sentences Be Based On Crimes That Haven’t Been Committed Yet?](https://fivethirtyeight.com/features/prison-reform-risk-assessment/) - Fivethirtyeight

- [Watch how the measles outbreak spreads when kids get vaccinated – and when they don't](https://www.theguardian.com/society/ng-interactive/2015/feb/05/-sp-watch-how-measles-outbreak-spreads-when-kids-get-vaccinated) - The Guardian

- [This game will show you just how foolish it is to sell stocks right now](https://qz.com/487013/this-game-will-show-you-just-how-foolish-it-is-to-sell-stocks-right-now/) - Quartz


Several other journalistic simulations have been of the "significance testing" type. For a primer on significance testing in general, see [this chapter](https://towcenter.gitbooks.io/curious-journalist-s-guide-to-data/content/analysis/arguing_from_the_odds.html).

- [How BuzzFeed News Used Betting Data To Investigate Match-Fixing In Tennis](https://www.buzzfeednews.com/article/johntemplon/how-we-used-data-to-investigate-match-fixing-in-tennis). See also the [code notebook](https://github.com/BuzzFeedNews/2016-01-tennis-betting-analysis)! 

- [Why Betting Data Alone Can’t Identify Match Fixers In Tennis](https://fivethirtyeight.com/features/why-betting-data-alone-cant-identify-match-fixers-in-tennis/) - Fivethirtyeight. A great discussion of what Buzzfeed's statistics mean

- The Wall Street Journal's multi-decade investigation into insider trading has used simulation several times: [2006](http://www.pulitzer.org/winners/wall-street-journal) (read "How the journal analyzed stock-option grants"), [2013](http://businessjournalism.org/2013/11/bronze-from-casual-conversation-to-massive-investigation-into-insider-trading/), and [2017](https://www.wsj.com/articles/hundreds-of-people-made-gifts-of-stock-with-great-timing-1513881239)

- [Statistical Model Strongly Suggests the Stormy Daniels Payoff Came from the Trump Campaign](https://medium.com/@whstancil/statistical-model-strongly-suggests-the-stormy-daniels-payoff-came-from-the-trump-campaign-7c09c300cb18). This one has similar structure to The Tennis Racket, but has a robustness issue: as [this notebook](https://github.com/jstray/lede-algorithms/blob/master/week-6/stormy-daniels-payments-simulation.ipynb) shows, if you take the previous 20 payments, as opposed to the previous 10, the probability of getting close to $130,000 is very much higher.


### Week 7-2 - Discussion and wrap up
I had all students submit data stories they wanted to talk about, and then we discussed the top five or so in detail.






