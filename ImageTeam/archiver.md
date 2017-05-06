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

## MySQL

- Install mysql ``` sudo apt-get install mysql-server ```
- TODO: create username, password, and load in the cam2 db

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






