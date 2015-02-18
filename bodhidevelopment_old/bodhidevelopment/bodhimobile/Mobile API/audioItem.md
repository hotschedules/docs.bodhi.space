---
title: "AudioItem"
posted: 2014-01-30
post: true
---

# RBCAudioItem Class Reference

## Overview

This object is created by [audio.getAudio](audio.html#//api/name/getAudio)
method and it used for recording and playback audio.

Once an object is no longer needed developer must necessarily call close
method!

## Tasks

  * `key` property
  * `state` property
  * `duration` property
  * `position` property
  * `startPlaying` function
  * `stopPlaying` function
  * `pausePlaying` function
  * `getDuration` function
  * `seekTo` function
  * `startRecording` function
  * `stopRecording` function
  * `setVolume` function
  * `onStateChanged` function
  * `onDurationChanged` function
  * `onPositionChanged` function
  * `close` function

## Properties

### key

#### Discussion

The key in [App Storage](appStorage.html) associated with audio record.

#### Sample

`// audioItem - is object created with audio.getAudio method  
var appStorageKey = audioItem.key;`  

### state

#### Discussion

Current audio item state. See variants in
[RBCAudioItemState](audio.html#//api/name/RBCAudioItemState).  
Developer can control changes after registering **callback** in onStateChanged
method.

#### Sample

`// audioItem - is object created with audio.getAudio method  
var state = audioItem.state;`  

### duration

#### Discussion

Audio record duration. Developer can control changes after registering
**callback** in onDurationChanged method.

#### Sample

`// audioItem - is object created with audio.getAudio method  
var duration = audioItem.duration;`  

### position

#### Discussion

Current audio record position. Developer can control changes after registering
**callback** in onPositionChanged method.

#### Sample

`// audioItem - is object created with audio.getAudio method  
var position = audioItem.position;`  

## Functions

### startPlaying

`RBCAudioItem::startPlaying( successCallback, errorCallback )`

#### Discussion

Starts playing audio record.

#### Arguments

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always **null**.

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`// audioItem - is object created with audio.getAudio method  
audioItem.startPlaying( function() {  
    alert("Success.");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### stopPlaying

`RBCAudioItem::stopPlaying( successCallback, errorCallback )`

#### Discussion

Stop playing audio record.

#### Arguments

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always **null**.

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`// audioItem - is object created with audio.getAudio method  
audioItem.stopPlaying( function() {  
    alert("Success.");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### pausePlaying

`RBCAudioItem::pausePlaying( successCallback, errorCallback )`

#### Discussion

Pause audio record playing.

#### Arguments

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always **null**.

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`// audioItem - is object created with audio.getAudio method  
audioItem.pausePlaying( function() {  
    alert("Success.");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### getDuration

`RBCAudioItem::getDuration( successCallback, errorCallback )`

#### Discussion

Returns current audio record duration. After calling this method duration
property updated automatically.

#### Arguments

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains:

    * _duration_ \- Duration of audio record. (Float)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`// audioItem - is object created with audio.getAudio method  
audioItem.getDuration( function(info) {  
    alert("Audio record duration: "+info.duration);  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### seekTo

`RBCAudioItem::seekTo( position, successCallback, errorCallback )`

#### Discussion

Moves current playing position.

#### Arguments

  * _position_required

A Float value. New playing position. In Seconds.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always **null**.

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`// audioItem - is object created with audio.getAudio method  
audioItem.seekTo( 1.5, function(info) {  
    alert("Position changed.");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### startRecording

`RBCAudioItem::startRecording( successCallback, errorCallback )`

#### Discussion

Starts recording audio.

#### Arguments

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always **null**.

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`// audioItem - is object created with audio.getAudio method  
audioItem.startRecording( function() {  
    alert("Success.");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### stopRecording

`RBCAudioItem::stopRecording( successCallback, errorCallback )`

#### Discussion

Stops recording audio.

#### Arguments

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always **null**.

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`// audioItem - is object created with audio.getAudio method  
audioItem.stopRecording( function() {  
    alert("Success.");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### setVolume

`RBCAudioItem::setVolume( volume, successCallback, errorCallback )`

#### Discussion

Changes volume for audio record.

#### Arguments

  * _volume_required

A Float value. New volume. Value must be in range [0..1].

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always **null**.

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`// audioItem - is object created with audio.getAudio method  
audioItem.setVolume( 0.7, function(info) {  
    alert("Volume changed.");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### onStateChanged

`RBCAudioItem::onStateChanged( callback )`

#### Discussion

Registers _callback_ to monitor state property changes.

#### Arguments

  * _callback_optional

Callback. Called when state property changed.

Callback parameter is object which contains:

    * _state_ \- [RBCAudioItemState](audio.html#//api/name/RBCAudioItemState)

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`// audioItem - is object created with audio.getAudio method  
audioItem.onStateChanged( function(info) {  
    alert("New Audio Item State: "+info.state);  
});`  

### onDurationChanged

`RBCAudioItem::onDurationChanged( callback )`

#### Discussion

Registers _callback_ to monitor duration property changes.

#### Arguments

  * _callback_optional

Callback. Called when duration property changed.

Callback parameter is object which contains:

    * _duration_ \- A Float value. New audio record duration.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`// audioItem - is object created with audio.getAudio method  
audioItem.onDurationChanged( function(info) {  
    alert("New Audio Item Duration: "+info.duration);  
});`  

### onPositionChanged

`RBCAudioItem::onPositionChanged( callback )`

#### Discussion

Registers _callback_ to monitor position property changes.

#### Arguments

  * _callback_optional

Callback. Called when position property changed.

Callback parameter is object which contains:

    * _position_ \- A Float value. New playing position.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`// audioItem - is object created with audio.getAudio method  
audioItem.onPositionChanged( function(info) {  
    alert("New Audio Item Position: "+info.position);  
});`  

### close

`RBCAudioItem::close( successCallback, errorCallback )`

#### Discussion

Closes audio item and release all resources.

#### Arguments

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always **null**

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`// audioItem - is object created with audio.getAudio method  
audioItem.close( function() {  
    alert("Audio Item Closed.");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

  * [Index](../index.html)

* * *

(C) 2014 Red Book Connect. All rights reserved. (Last updated: 2014-06-20)

