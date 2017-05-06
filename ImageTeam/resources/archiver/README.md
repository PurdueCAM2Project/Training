# README #

### Citation ###

If you use this software, please include the following statement in acknowledgments

"The image archiving program is provided by the CAM2 (Continuous Analysis
of Many CAMeras) project at Purdue University."

### What is this repository for? ###

* This repository stores the source code for retrieving data (image 
  or video) from network cameras.

* This is part of Purdue's CAM2 (Continuous Analysis of Many CAMeras)
  project. The project's web site is https://cam2.ecn.purdue.edu/

* Please read the terms of use 
https://cam2.ecn.purdue.edu/terms

In particular, "You agree not to use the Platform to determine the
identity of any specific individuals contained in any video or video
stream."

* The lead investigator is Dr. Yung-Hsiang Lu, yunglu@purdue.edu. Please
send your questions, comments, or suggestions to him.

### Motivation ###

Thousands of network cameras are connected to the Internet and provide
real-time visual data (image or video).  Many network cameras require
no password and anyone connected to the Internet can retrieve the
data,i.e., the data is publicly available.  This program considers
only public data and does use any password.

Even though the data is publicly available to anyone interested
seeing, there are several problems. First, there is no central
repository where network cameras must register.  Thus, significant
efforts must be taken to find various sources of data. Second,
different brands of network cameras need different methods to retrieve
the data.  The cameas may also provide different data formats: some
provide individual JPEG images; some provide motion JPEG (MJPEG)
video; some others provide H.264 video.  

Many organizations (such as departments of transportation) aggregate
streams of multiple cameras and put these streams on web sites.
However, these web sites have different formats and styles.  Some web
sites use simple HTML; some use CSS; some use Javascript. Some web
sites have fixed URLs for different cameras. Some web site have
dynamically generated URLs reflecting the time (thus, the URLs are
always changing).  

To solve these problems, researchers at Purdue University are
developing the software to retrieve data from heterogeneous sources.

This software requires a database that stores cameras' information
(how to retrieve the data). The repository contains some examples of
entries in a database (using MySQL).

### Prerequisites ###

* [Install MySQL](https://help.ubuntu.com/lts/serverguide/mysql.html) to maintain the camera database.

* [Install OpenCV](https://github.com/jayrambhia/Install-OpenCV) to decode the downloaded images.

* Install MySQLdb to access the MySQL database from Python:
```
sudo apt-get install python-mysqldb
```

### Database Setup ###

* Create an empty MySQL database using the following MySQL command:

```
CREATE DATABASE cameras;
```

* Build the database using the provided file and the following Linux command:
```
mysql -u root -p cameras < cameras.sql
```

* Modify the database credentials in the ```archiver.py``` module:
```
DB_SERVER = 'localhost'
DB_USER_NAME = 'root'
DB_PASSWORD = ''
DB_NAME = 'cameras'
```


### Files ###

* ```archiver.py``` is the main Python module. It archives images from a single camera.
* ```camera.py``` provides classes to communicate with different types of cameras: IP cameras and non-IP cameras.
* ```stream_parser.py``` is used by ```camera.py``` to parse JPEG and MJPEG streams.
* ```error.py``` contains custom Python Exceptions.
* ```cameras.sql``` can be used to build the database. It has the data of 20 cameras.

### How to use? ###

Execute the ```archiver.py``` as follows:

```
python archiver.py <camera_id> <is_video> <duration> <interval>
```

where:
```<camera_id>``` is the camera ID in the database,
```<is_video>``` is 1 for a MJPEG stream, 0 for a JPEG stream,
```<duration>``` is the archiving duration in seconds, and
```<interval>``` is the interval between two frames in seconds (or 0 for the maximum
frame rate possible).  Some cameras provide only periodic snapshots. If the interval is
too small, the same image will be repeated.