# Purdue CAM2: Image Team Training, Archiver Help File

## Overview

This document contains a tutorial for using the CAM2 archiver. It is using the version current as of 5/5/17.

## To Run

**Requirements**
- Python 2.7
- MySQL
- CAM2 Database
- Camera ID's (in text file or otherwise)

To execute program, run:
```
python archiveList.py <filename> <duration> <interval>
```

For example, if you wanted to collect 5 images from 100 cameras with a 2 minute interval:

```
python archiveList.py my_100_cameras.txt 480 120
```

Where the head of my_100_cameras.txt with the format `<camera id> <is video>` is:

```
>$ head my_100_cameras.txt
1 1
2 1
3 1
4 1
5 1
6 1
7 1
8 1
9 1
10 1
```

## MySQL

- Install mysql ``` sudo apt-get install mysql-server ```
- TODO: create username, password, and load in the cam2 db. Today is 5/13, I will try to add more details by 5/15. However, if details are not here I recommend googling! We need to import the cam2 database into mysql. Note we recommend a **blank** password.
- Once mysql has a database (i.e. "cam2"), edit the "archiver.py" file to:

```
# The path of the results directory.
RESULTS_PATH = '<results directory>'

# The server database credentials.
DB_SERVER = 'localhost' #<-- probably still localhost
DB_USER_NAME = '<username in mysql>' 
DB_PASSWORD = '<password>' #<-- if no password leave blank
DB_NAME = '<database name>' #<-- for example, "cam2"
```


## Python Files

- camera.py: contains functions imported into archiver.py
- archiver.py: this file is where the downloading occurs.
  ```
  This program archives images from a single camera.
  To use this program:
  python archiver.py <camera_id> <is_video> <duration> <interval>
  where:
  <camera_id> is the camera ID in the database.
  <is_video> is 1 for a MJPEG stream, 0 for a JPEG stream.
  <duration> is the archiving duration in seconds.
  <interval> is the interval between two frames in seconds (or 0 for the maximum
  frame rate possible).
  ```
- archiveList.py: this file is a wrapper for archiver.py to take a textfile as input
  ```
  Call Syntax: python archiveList.py <Input File> <Duration> <Interval>
  ```






