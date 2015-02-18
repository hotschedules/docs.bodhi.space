---
title: "RBCConnectionMonitor"
posted: 2014-01-30
post: true
---

# RBCConnectionMonitor Class Reference

## Overview

This object is created by
[connection.startMonitoring](connection.html#//api/name/startMonitoring)
method and used for checking the server availability.

Once an object is no longer needed developer must necessarily call stop
method!

## Tasks

  * `url` property
  * `available` property
  * `onAvailableChanged` function
  * `stop` function

## Properties

### url

#### Discussion

The internet address of the monitored server.

#### Sample

`// connectionMonitor - is object created with connection.startMonitoring
method  
var url = connectionMonitor.url;`  

### available

#### Discussion

Current available state. Server available for requests from the device if
**available** is **true**.

#### Sample

`// connectionMonitor - is object created with connection.startMonitoring
method  
var serverAvailable = connectionMonitor.available;`  

## Functions

### onAvailableChanged

`RBCConnectionMonitor::onAvailableChanged( callback )`

#### Discussion

Registers _callback_ to monitor available property changes.

#### Arguments

  * _callback_optional

Callback. Called when available property changed.

Callback parameter is object which contains:

    * _available_ \- A Boolean value. The server availability.

#### Return Value

  * _this_

#### Sample

`// connectionMonitor - is object created with connection.startMonitoring
method  
connectionMonitor.onAvailableChanged( function(info) {  
    alert("Server "+(info.available ? "" : "not ") + "available");  
});`  

### stop

`RBCConnectionMonitor::stop( successCallback, errorCallback )`

#### Discussion

Stops monitoring and release all resources.

#### Arguments

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always **null**

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`// connectionMonitor - is object created with connection.startMonitoring
method  
connectionMonitor.stop( function() {  
    alert("Monitoring finished.");  
}, function (error) {  
    alert("Error! code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

  * [Index](../index.html)

* * *

(C) 2014 Red Book Connect. All rights reserved. (Last updated: 2014-08-18)

