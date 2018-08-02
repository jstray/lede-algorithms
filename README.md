# Algorithms - Lede 2018 
A course on algorithms for doing journalis.

## Course overview
This is a course on algorithmic data analysis in journalism. We will cover basic methods for working with large(ish) data sets, and a variety of techniques used in story production, from regression to simulation to machine learning.

There are basically two different ways algorithms are combined journalism: we can use algorithms to analyze data to produce stories, and as we can do stories about algorithms that affect people's lives. We will do both.

- Instructor: Jonathan Stray, jms2361@columbia.edu
- Dates: Mondays and Wednesdays, 7/18-8/29
- Class: 10am-1pm
- Location: World Room
- Lab: 2pm-5pm
- Slack channel: #algorithms

## Schedule 
This is a rough outline, and subject to change, but your homework assignments will always be up to date!

**Every Monday, you must bring in an algorithmic story to share with the class.**

Homework is due before the following class.


### Week 1 - Introduction to Algorithms
Algorithms for doing journalism, journalism about algorithms. The purpose of mathematical formalism. 
Homework:

- [Assignment notebook](https://github.com/jstray/lede-algorithms/blob/master/week-1/week-1-homework.ipynb). Show that an average of averages is not the same as the overall average. Work out when the overall average and an average of averages **are** equal. Show that this really works, by computing the values in Jupyter.


### Week 2 - Text Processing
In this class we will develop the ubiquitous vector space document model, with TF-IDF weighting. You will learn to algorithmically summarize documents by extracting keywords, how to compare documents for similarity, and how a search engine and Google News work.  [Class 1 notebook.](https://github.com/jstray/lede-algorithms/blob/master/week-2/week-2-1-class.ipynb)  [Class 2 notebook.](https://github.com/jstray/lede-algorithms/blob/master/week-2/week-2-1-class.ipynb) [Slides](https://github.com/jstray/lede-algorithms/blob/master/week-2/week-2.pdf)

References:
- An article which describes TF-IDF in more detail [TF-IDF is about what matters](https://planspace.org/20150524-tfidf_is_about_what_matters/)
- A real life example of TF-IDF and cosine similarity used in journalism: [How ProPublica's Message Machine Reverse Engineers Political Microtargeting](https://www.propublica.org/nerds/how-propublicas-message-machine-reverse-engineers-political-microtargeting)

- The [Overview document mining platform](overviewdocs.com), a powerful tool you can use to explore document sets, or OCR and convert them. See also this [visualization of the TF-IDF vectors](https://blog.overviewdocs.com/2012/03/16/video-document-mining-with-the-overview-prototype/) of a document set.

Homework:
- [State of the Union with TF-IDF](https://github.com/jstray/lede-algorithms/blob/master/week-2-1/week-2-homework.ipynb) Analyze the State of the Union speeches in the 20th century to see how topics changed by decade (see notebook assignment)
- [Principal component analysis](https://github.com/jstray/lede-algorithms/blob/master/week-2/week-2-2-homework.ipynb) Principal component analysis of bits of the General Social Survey

### Week 3 - Regression

Linear regression. We'll pick apart and reproduce the Washington Post [article](https://www.washingtonpost.com/news/monkey-cage/wp/2017/04/17/racism-motivated-trump-voters-more-than-authoritarianism-or-income-inequality). The relationship between causality and data. Simpson's paradox. "Controlling for" variables. Logistic regression.  [Class 1 notebook.](https://github.com/jstray/lede-algorithms/blob/master/week-3/week-3-1-class.ipynb)  [Class 2 notebook.](https://github.com/jstray/lede-algorithms/blob/master/week-3/week-3-1-class.ipynb) [Slides](https://github.com/jstray/lede-algorithms/blob/master/week-3/week-3.pdf)

Homework:
- [Linear regression](https://github.com/jstray/lede-algorithms/blob/master/week-3/week-3-1-homework.ipynb)
- [Logistic regression](https://github.com/jstray/lede-algorithms/blob/master/week-3/week-3-2-homework.ipynb)


### Week 4 - Machine Learning

### Week 5 - Network Anaysis

### Week 6 - Simulations 1

### Week 7 - Simulations 2




