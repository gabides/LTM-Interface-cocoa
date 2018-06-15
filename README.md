# LTM-Interface-cocoa

C++ application for micro-expressions detection and recognition with graphical interface (video player). This engine is the video editing part of the app (displays the ME at the right place and time in the video, with annotations). OpenCV is necessary to run the app.

The LTM app is a visualisation tool for researchers to compare algorithms results and ground truth.

 This interface is part of the LTM microexpressions analysis project, it is coded for OSX with Swift language and Cocoa framework.  
 With the interface you can launch tasks to annotate videos ([LTM-Engine](https://github.com/gabides/LTM-Engine/)), and change the video encoding ([LTM-Converter](https://github.com/gabides/LTM-Converter/)).
 
 

Usage:  

datasets should be imported with the following architecture:

|dataset
 |sample1
  |microExpressions
   |microExpressionFile_sample1.ltm   // these .ltm files are text files
   |microExpressionFile_sample2.ltm
  |videos
   |video_sample1.avi
 |sample2 
   |microExpressions
   |videos
  |sample3
   |microExpressions
   |videos
 

This app was developped using OpenCV version 3.4.1


ME = micro-expression


Year-long project with Louis Lenief at CentraleSupélec (2018) and the Facial Analysis Synthesis and Tracking ([FAST](http://www.rennes.supelec.fr/ren/rd/fast/fast_accueil.php)) research team.

