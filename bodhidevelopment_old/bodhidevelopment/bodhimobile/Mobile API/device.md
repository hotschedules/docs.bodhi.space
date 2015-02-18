---
title: "Device"
posted: 2014-01-30
post: true
---


# Device Module Reference

## Overview

Getting basic information about device.  
Also provides events about application state.

## Tasks

  * `device.TYPES` constant
  * `model` property
  * `platform` property
  * `guid` property
  * `osVersion` property
  * `name` property
  * `type` property
  * `ready` function
  * `pause` function
  * `resume` function
  * `device.pause` event
  * `device.resume` event

## Constants

### device.TYPES

#### Discussion

The enum contains variants of device types.

  * _device.TYPES.PHONE_

Device is a phone.

  * _device.TYPES.TABLET_

Device is a tablet.

## Properties

### model

#### Discussion

Device model. For example iPhone6,1 or iPhone6,2 for iPhone 5s

#### Sample

`var deviceModel = device.model;`  

### platform

#### Discussion

Device Platform. Supported values:

  * iOS
  * Android
  * WP

#### Sample

`var devicePlatform = device.platform;`  

### guid

#### Discussion

Device identifier

#### Sample

`var deviceId = device.guid;`  

### osVersion

#### Discussion

Device OS version

#### Sample

`var osVersion = device.osVersion;`  

### name

#### Discussion

Device Name

#### Sample

`var deviceName = device.name;`  

### type

#### Discussion

Device Type. See device.TYPES for more info.

#### Sample

`var deviceType = device.type;`  

## Functions

### ready

`device.ready( callback )`

#### Discussion

Add _callback_ which will be called after full JavaScript kernel and modules
initialization.  
If call this function after initialization end _callback_ will be called
immediately.

#### Arguments

  * _callback_required

Callback which execute after JavaScript kernel initialization.

#### Return Value

  * _this_

#### Sample

`device.ready( function() {  
    alert("Initializtion complete");  
});`  

### pause

`device.pause( callback )`

#### Discussion

Register _callback_ as observer for device.pause event.

#### Arguments

  * _callback_required

Callback which execute when application enter to background.

#### Return Value

  * _this_

#### Sample

`device.pause( function() {  
    alert("Application will enter to background");  
});`  

### resume

`device.resume( callback )`

#### Discussion

Register _callback_ as observer for device.resume event.

#### Arguments

  * _callback_required

Callback which execute when application return to foreground.

#### Return Value

  * _this_

#### Sample

`device.resume( function() {  
    alert("Application will enter to foreground");  
});`  

## Events

### device.pause

#### Discussion

Event received when application enter to background

### device.resume

#### Discussion

Event received when application returned from background

  * [Index](../index.html)

* * *

(C) 2014 Red Book Connect. All rights reserved. (Last updated: 2014-08-19)

