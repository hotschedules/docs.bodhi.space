---
title: "Compass"
posted: 2014-01-30
post: true
---

# Compass Module Reference

## Overview

This module provides the ability to getting compass readings.

## Tasks

  * `headingInfo` object
  * `watchHeading` function
  * `clearWatch` function

## Objects

### headingInfo

#### Discussion

This Object contains information about compass heading.

#### Keys

  * _timestamp_required

A Date value. Timestamp of heading information.

  * _heading_required

A Float value. Universal heading. The value 0 means the device is pointed
toward magnetic north, 90 means it is pointed east, 180 means it is pointed
south, and so on. Must work on all device.

  * _magneticHeading_optional

A Float value. The value in this property represents the heading relative to
the magnetic North Pole, which is different from the geographic North Pole.
The value 0 means the device is pointed toward magnetic north, 90 means it is
pointed east, 180 means it is pointed south, and so on.

  * _trueHeading_optional

A Float value. The value in this property represents the heading relative to
the geographic North Pole. The value 0 means the device is pointed toward
magnetic north, 90 means it is pointed east, 180 means it is pointed south,
and so on.

## Functions

### watchHeading

`compass.watchHeading( successCallback, errorCallback )`

#### Discussion

Starts watching compass heading information.

#### Arguments

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is headingInfo object.

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _A String value. This value used as parameter of clearWatch method to stop updating._

#### Sample

`var watch_id = compass.watchHeading( function (headingInfo) {  
    alert("Heading: "+headingInfo.heading);  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### clearWatch

`compass.clearWatch( watchId )`

#### Discussion

Stops heading updating.

#### Arguments

  * _watchId_required

Watch identifier which returned watchHeading method

#### Return Value

  * _No return value_

#### Sample

`compass.clearWatch( watch_id );`  

  * [Index](../index.html)

* * *

(C) 2014 Red Book Connect. All rights reserved. (Last updated: 2014-06-13)

