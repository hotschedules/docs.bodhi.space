---
title: "Battery"
posted: 2014-01-30
post: true
---


# Battery Module Reference

## Overview

Getting information about battery level and plugged for charger state.

## Tasks

  * `level` property
  * `isPlugged` property
  * `levelChanged` function
  * `pluggedChanged` function
  * `low` function
  * `critical` function
  * `battery.level` event
  * `battery.plugged` event
  * `battery.low` event
  * `battery.critical` event

## Properties

### level

#### Discussion

Current battery level.

Tip: On iOS devices battery level divisible by 5

#### Sample

`var level = battery.level;`  

### isPlugged

#### Discussion

Is device plugged for charger

#### Sample

`var plugged = battery.isPlugged;`  

## Functions

### levelChanged

`battery.levelChanged( callback )`

#### Discussion

Register _callback_ as observer for battery.level event.

#### Arguments

  * _callback_required

#### Return Value

  * _this_

#### Sample

`battery.levelChanged( function(info) {  
    alert("Battery level changed. Current level: " \+ info.level);  
});`  

### pluggedChanged

`battery.pluggedChanged( callback )`

#### Discussion

Register _callback_ as observer for battery.plugged event.

#### Arguments

  * _callback_required

#### Return Value

  * _this_

#### Sample

`battery.pluggedChanged( function(info) {  
    alert(info.isPlugged ? "Device plugged" : "Device unplugged");  
});`  

### low

`battery.low( callback )`

#### Discussion

Register _callback_ as observer for battery.low event.

#### Arguments

  * _callback_required

#### Return Value

  * _this_

#### Sample

`battery.low( function() {  
    alert("Battery low!");  
});`  

### critical

`battery.critical( callback )`

#### Discussion

Register _callback_ as observer for battery.critical event.

#### Arguments

  * _callback_required

#### Return Value

  * _this_

#### Sample

`battery.critical( function() {  
    alert("Battery critical low!");  
});`  

## Events

### battery.level

#### Discussion

Event received when changed battery level

### battery.plugged

#### Discussion

Event received when device plugged or unplugged from charger

### battery.low

#### Discussion

Event received when device unplugged from charger and battery level less then
20%

### battery.critical

#### Discussion

Event received when device unplugged from charger and battery level less then
5%

  * [Index](../index.html)

* * *

(C) 2014 Red Book Connect. All rights reserved. (Last updated: 2014-06-03)

