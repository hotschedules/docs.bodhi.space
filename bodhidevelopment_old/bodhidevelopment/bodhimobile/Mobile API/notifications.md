---
title: "Notifications"
posted: 2014-01-30
post: true
---

# Notifications Module Reference

## Overview

This module used to notify user about some events in application.

## Tasks

  * `vibrate` function
  * `beep` function
  * `alert` function
  * `showToast` function

## Functions

### vibrate

`notifications.vibrate( options )`

#### Discussion

Vibrates the device. Developer can configure vibration duration, mute duration
and repeat count

#### Arguments

  * _options_optional

Object with key-value. Supported keys:

    * _vibrate_

The property with a Number value. Determines vibration duration in ms. On iOS
_vibrate_ always 400 ms.

    * _mute_

The property with a Number value. Determines mute duration in ms between
multimple vibrations.

    * _repeatCount_

The property with a Number value. Determines number of repeating "vibrate-
mute" operations.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`notifications.vibrate( {vibrate:400, mute:400, repeatCount:3} );`  

### beep

`notifications.beep( )`

#### Discussion

The device plays a beep sound.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`notifications.beep( );`  

### alert

`notifications.alert( title, message, cancelButton, otherButtons, callback )`

#### Discussion

Shows a custom alert or dialog box.

#### Arguments

  * _title_required

Dialog title. (String)

  * _message_optional

Dialog message. (String)

  * _cancelButton_required

Dialog cancel button title. (String)

  * _otherButtons_optional

Dialog other button titles. (Array of Strings)

  * _callback_optional

Callback. Called when user pressed button in alert or dialog box

Callback parameter is object and can contains keys:

    * _button_ \- property with a String value. The name of pressed button.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`notifications.alert( "Title", "Message", "Cancel", ["OK"],  
function(info) {  
    alert("Pressed " \+ info.button + " button");  
});`  

### showToast

`notifications.showToast( message, duration, position, errorCallback )`

#### Discussion

Shows toast notification.

#### Arguments

  * _message_required

Toast message. (String)

  * _duration_required

Duration of toast on the screen in milliseconds. (Integer)

  * _position_required

Position of toast on the screen. (String)

Supported values:

    * **top**
    * **center**
    * **bottom**

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`notifications.showToast( "Toast Message", 2000, "bottom",  
function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

  * [Index](../index.html)

* * *

(C) 2014 Red Book Connect. All rights reserved. (Last updated: 2014-06-12)

