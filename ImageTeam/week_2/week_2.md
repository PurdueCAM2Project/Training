# Purdue CAM2: Image Team Training, Week 2

## Overview

This week will cover logistic regression, model selection, and an introduction into neural networks. We will also learn to "grab" data using the "archiver.py" file.

Please email me when you start this week (gauenk@purdue.edu). I need to give you the 100 camera ids and a link to upload your images to the drive. Thank you.

If you are stuck on any of the material, please email me at gauenk@purdue.edu with your questions!

## Tasks

- Selected video lectures
- Download 5 image from 100 different cameras in the CAM2 dataset. Wait 2 minutes between each captured frame, e.g. the 5 images will take 8 minutes to collect.
- Logisitic Regression in Torch7 & Caffe

Answer the following questions:
  1. What is the sigmoid function? What is the advantage of the function's range?
  2. What optimization procedure is done to train logistic regression? Give the equation of the cost function and for the weight update.
  3. The output can be seen as a Bernoulli Random Variable. Write down the probability of the output given the data.
  4. What is meant by model variance and model bias? Which one would we prefer and why?
  5. What is overfitting and how does it relate to model complexity? 
  6. What is cross-validation? What are the steps needed to implement k-fold cross validation?
  7. What is online learning? What is batch learning, and what are the two kinds? What is an epoch?
  8. What's the Jacobian and Hessian of (a) f(x,y) = 3xy+4y (b) f(x,y,z) = 2yz + 8zx + 3xy
  9. What does big data help with in terms of error?

## To Submit

- Answers to questions.
- Screenshot of complete quizzes from Coursera.
- Upload 500 images into the google drive.
- Logisitc Regression for MNIST data in Torch7.
- Logisitc Regression for MNIST data in Caffe. [some help here](http://caffe.berkeleyvision.org/tutorial/net_layer_blob.html)

# Video Summary 

## Andrew Ng, Coursera

Complete the videos/quizzes:

- Logistic Regression (Coursera's Week 3)
- Quiz: Logistic Regression (Coursera's Week 3)
- Regularization (Coursera's Week 3)
- Quiz: Regularization (Coursera's Week 3)

There are esimated times for each section provided by Coursera, but I would guess they will not take that long.

## Nando de Freitas, Oxford

Complete:

- Lecture [4](https://www.youtube.com/watch?v=VR0W_PNwLGw) and [3](https://www.youtube.com/watch?v=kPrHqQzCkg0)
- Lecture [5](https://www.youtube.com/watch?v=qz9bKfOqd0Y)
- Lecture [7](https://www.youtube.com/watch?v=FYgsztDxSvE)
- [Logistic Regression in Torch7](https://www.cs.ox.ac.uk/people/nando.defreitas/machinelearning/practicals/practical3.pdf). We are only interested in the practical3.lua file, and the basics such as forward/backward, feval functions, creating a model, etc. We are not concerned with optimization details. With respect to optimization: we will use what works, and SGD works well often. No need to dive in deep with AdaGrad, AdaMax, etc. Just know that smart people work hard to find good optimization techniques.