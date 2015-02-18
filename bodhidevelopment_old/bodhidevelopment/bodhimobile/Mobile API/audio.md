---
title: "Audio"
posted: 2014-01-30
post: true
---

# Audio Module Reference

## Overview

This module allows playing and recording audio.

## Tasks

  * `RBCAudioItemState` constant
  * `RBCAudioItem` object
  * `getAudio` function

## Constants

### RBCAudioItemState

#### Discussion

This enum contains variants of [RBCAudioItem](audioItem.html) object states.

  * _RBCAudioItemState.STOPPED_

Audio record currently stopped.

  * _RBCAudioItemState.PLAYING_

Audio record currently playing.

  * _RBCAudioItemState.PAUSED_

Audio record currently paused.

  * _RBCAudioItemState.RECORDED_

Audio record currently recorded.

## Objects

### RBCAudioItem

#### Discussion

This object contains information about audio records and allows developer to
record, play and control audio. See [RBCAudioItem Class
Reference](audioItem.html) to get more information.

## Functions

### getAudio

`audio.getAudio( options, successCallback, errorCallback )`

#### Discussion

Creates new [RBCAudioItem](audioItem.html) object which used for all audio
operations.

#### Arguments

  * _options_optional

Object with key-value. Supported keys:

    * _key_optional

A String value. The key in [App Storage](appStorage.html). If not specified,
method will create a new automatically.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains:

    * _audioItem_ \- The created [RBCAudioItem](audioItem.html) object.

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`audio.getAudio( function(info) {  
    alert("RBCAudioItem created.");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

  * [Index](../index.html)

* * *

(C) 2014 Red Book Connect. All rights reserved. (Last updated: 2014-06-20)

