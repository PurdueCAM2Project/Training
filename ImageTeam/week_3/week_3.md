# Purdue CAM2: Image Team Training, Week 3

## Overview

This week will cover neural networks, convolutional neural networks, and labeling images.

If you are stuck on any of the material, please email me at gauenk@purdue.edu with your questions!

## Tasks

- Install [labelImg](https://github.com/tzutalin/labelImg)
- Label 30 CAM2 Images from the 500 you gathered.

Answer the following questions:

1. Roughly, what number of images in your folder were you able to label?
2. What is the quality of your cameras?
3. What camera ID's do you have in your folder?
4. How small is the tiniest person in the image? (provide screenshot and size in number of pixels wide/tall)
5. What is a vanishing gradient?
6. Given the following model, write out the parial derivative chain required for $$ \frac{\partial C}{Theta_{1}} $$:
   The model is given by:
   -> Linear Layers -> Log Softmax Layer -> Negative Log Likelihood

## To Submit

- Answers to questions
- 30 labeled CAM2 images
- Screenshot of complete quizzes from Coursera.
- Neural Network for MNIST data in Torch7
- Neural Network for MNIST data in Caffe

# Video Summary 

## Andrew Ng, Coursera

Complete the videos/quizzes:

- Neural Network: Representation (Coursera's Week 4)
- Quiz: Neural Network Representation (Coursera's Week 4)
- Neural Network: Learning (Coursera's Week 5)
- Quiz: Neural Network Learning (Coursera's Week 5)
- (Optional) Advice for Applying Machine Learning (Coursera's Week 6)
- (Optional) Quiz: Advice for Applying Machine Learning (Coursera's Week 6)

There are esimated times for each section provided by Coursera, but I would guess they will not take that long.

## Nando de Freitas, Oxford

Complete:

- Lecture [4](https://www.youtube.com/watch?v=VR0W_PNwLGw) and [3](https://www.youtube.com/watch?v=kPrHqQzCkg0)
- Lecture [5](https://www.youtube.com/watch?v=qz9bKfOqd0Y)
- Lecture [7](https://www.youtube.com/watch?v=FYgsztDxSvE)
- [Logistic Regression in Torch7](https://www.cs.ox.ac.uk/people/nando.defreitas/machinelearning/practicals/practical3.pdf). We are only interested in the practical3.lua file, and the basics such as forward/backward, feval functions, creating a model, etc. We are not concerned with optimization details. With respect to optimization: we will use what works, and SGD works well often. No need to dive in deep with AdaGrad, AdaMax, etc. Just know that smart people work hard to find good optimization techniques.