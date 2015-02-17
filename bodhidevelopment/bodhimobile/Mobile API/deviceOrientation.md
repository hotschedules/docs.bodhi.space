---
title: "Device Orientation"
posted: 2014-01-30
post: true
---


# Device Orientation Module Reference

## Overview

Locking device orientation in specified mode.

## Tasks

  * `deviceOrientation.MODE` constant
  * `setOrientation` function

## Constants

### deviceOrientation.MODE

#### Discussion

The enum contains variants of supported orientation modes.  
It used in setOrientation method.

  * _deviceOrientation.MODE.AUTO_

UI support all orientations. UI will be working in portrait and landscape
modes.

  * _deviceOrientation.MODE.PORTRAIT_

UI support only portrait orientation. UI will be working only in portrait
mode.

  * _deviceOrientation.MODE.LANDSCAPE_

UI support only landscape orientation. UI will be working only in landscape
mode.

## Functions

### setOrientation

`deviceOrientation.setOrientation( orientation, successCallback, errorCallback
)`

#### Discussion

Lock UI in selected **orientation**.

#### Arguments

  * _orientation_required

String with required orientation mode. See deviceOrientation.MODE for more
info.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always **null**.

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

` deviceOrientation.setOrientation( deviceOrientation.MODE.PORTRAIT,
function(info) {  
    alert("Orientaion locked in portrait mode");  
}, function (error) {  
    alert("setOrientation! code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

  * [Index](../index.html)

* * *

(C) 2014 Red Book Connect. All rights reserved. (Last updated: 2014-08-19)

