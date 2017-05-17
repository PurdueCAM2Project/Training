# Purdue CAM2 Project Training Guide

This document is written for new members. Every new member needs to do every assignment here. 
It is expected that the entire training takes no more than 20 hours.

Please read the [Welcome Document](https://docs.google.com/document/d/1exaJDYxN_hc9c_pgZlogo75A3Qo58ppXv6uyqHY2-28/edit?usp=sharing)
and understand the differences between "student thinking" and "researcher thinking".

### Understand the Purpose of the Project

Please read [Making of CAM2](https://engineering.purdue.edu/HELPS/Publications/papers/GlobalSIP2015.pdf) and understand the purpose of the project.

### Set up development environment

You should having a Linux computer for this project. If your computer does not run Linux and it has at least 8GB memory, 
you may use [Virtualbox](https://www.virtualbox.org/wiki/Downloads) or 
[VMware](http://www.vmware.com/products/player/playerpro-evaluation.html) to create a virtual Linux computer 
[Setting up Your VM](https://github.com/PurdueCAM2Project/Training/wiki/Setting-Up-a-Ubuntu-VM). Even if you have a Linux computer, you
should consider running a virtual Linux installation. This allows you to change settings and install new software packages without
affecting your native Linux.

### Learn GitHub

Your contributions to the project will be mostly recorded by github. Please watch [training video](https://www.youtube.com/playlist?list=PL_DUEaCnbkZCI8IMXYVhYGupSHjPVBY1i). For more information read through the [wiki page](https://github.com/PurdueCAM2Project/Training/wiki/%5BGuide%5D-Git-and-GitHub).

### Learn Python

Contribution to the CAM2 group relies heavily on the use of Python. There are many resources avalable to learn python, from reading the [Python Wiki](https://wiki.python.org/moin/BeginnersGuide) to the [Google Develuper Guide](https://developers.google.com/edu/python/introduction). You can learn the syntax by signing up to [Code Acadamy](https://www.codecademy.com/learn/python). The best way to learn however is to simply try to start coding so follow the tutorials in this training repository and you will begin to get the feel of it in no time.

### Learning Django and Heroku

[Django](https://developer.mozilla.org/en-US/docs/Learn/Server-side/Django/Introduction) and [Heroku](https://www.heroku.com/) are both vital tools to the Camera Database team and the CAM2 UI team. Everyone who wants to contribute to the CAM2 project should have knowledge of developing with these tools. To get started there are [3 assignments](https://github.com/PurdueCAM2Project/Training/wiki/Django-and-Heroku-Assignment) you must complete. Joseph also created an introduction to Heroku video you can watch [here](https://drive.google.com/open?id=0B3Blc1_VMKTpSno0VmljdDAtR00). The UI team currently uses [Travis CI (Continuous Integration)](https://travis-ci.org/) to deploy the website. A video demo for this is also avalable [here](https://drive.google.com/open?id=0B3Blc1_VMKTpREdDaGFTMWlWMmc).

### Introduction to Machine Learning

To get a basic understading of what the CAM2 Image Team does. Please answer and submit the following questions:

1. What is a training and testing data-set?
2. What is meant by model variance and model bias? Which one would we prefer and why?
3. What is overfitting and how does it relate to model complexity? 
4. What is cross-validation?
5. List 3 methods that performed well on ImageNet last year. Don't say "Ensemble A", but rather give the actual deep learning model used. If you are unsure, google your answer and there will be a pdf of the paper on the topic.

### Introduction to Beautiful Soup and Selenium

The CAM2 Database has thousands of cameras. These cameras were not added manually instead web parsing tools such as [BeautifulSoup4](https://www.crummy.com/software/BeautifulSoup/bs4/doc/) and [Selenium](http://www.seleniumhq.org/) were used to gather the data from various camera websites around the world. [This](https://drive.google.com/open?id=0B3Blc1_VMKTpUHlEdFFEb0pLaUE) paper explains this process in more detail as well as information about how metadata about the cameras is collected. The final step in completing the introductory training for the CAM2 Purdue Team is to complete the two web parsing assignments below.

- Compleate and submit [Parsing Tutorial 1](https://github.com/PurdueCAM2Project/Training/wiki/Parsing-Tutorial-1) (JSon and BeautifulSoup4)
- Compleate and submit [Parsing Tutorial 2](https://github.com/PurdueCAM2Project/Training/wiki/Selenium-Assignment) (Selenium)
