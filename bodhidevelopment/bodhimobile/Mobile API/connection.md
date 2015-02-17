---
title: "Connection"
posted: 2014-01-30
post: true
---

# Connection Module Reference

## Overview

Getting information about current connection status.

## Tasks

  * `TYPES` constant
  * `STATES` constant
  * `RBCConnectionMonitor` object
  * `type` property
  * `state` property
  * `startMonitoring` function
  * `isOnline` function
  * `typeChanged` function
  * `stateChanged` function
  * `connection.type` event
  * `connection.state` event

## Constants

### TYPES

#### Discussion

This enum contains all variants of internet connections types.

  * _connection.TYPES.UNKNOWN_

Unknown connection type

  * _connection.TYPES.ETHERNET_

Device connected via Ethernet  
Tip: iOS device doesn't support it.

  * _connection.TYPES.WIFI_

Device connected via Wi-Fi

  * _connection.TYPES.CELL_2G_

Device connected via 2G Cellular  
Tip: iOS device doesn't support it. Used _CELL_ instead it.

  * _connection.TYPES.CELL_3G_

Device connected via 3G Cellular  
Tip: iOS device doesn't support it. Used _CELL_ instead it.

  * _connection.TYPES.CELL_4G_

Device connected via 4G Cellular  
Tip: iOS device doesn't support it. Used _CELL_ instead it.

  * _connection.TYPES.CELL_

Device connected via Cellular  
Tip: This varian used when application cannot determine more info about
cellular connection.

  * _connection.TYPES.NONE_

Device not connected to internet

### STATES

#### Discussion

This enum contains simple information about internet connection.

  * _connection.STATES.UNKNOWN_

Unknown connection state

  * _connection.STATES.ONLINE_

Device has internet connection.

  * _connection.STATES.OFFLINE_

Device doesn't connected to internet

## Objects

### RBCConnectionMonitor

#### Discussion

This object contains information about specified server availability for
requests from the device. See [RBCConnectionMonitor Class
Reference](connectionMonitor.html) to get more information.

## Properties

### type

#### Discussion

Current internet connection type. See TYPES enum for variants.

#### Sample

`var type = connection.type;`  

### state

#### Discussion

Current internet connection state. See STATES enum for variants.

#### Sample

`var state = connection.state;`  

## Functions

### startMonitoring

`connection.startMonitoring( options, successCallback, errorCallback )`

#### Discussion

Creates new [RBCConnectionMonitor](connectionMonitor.html) object which used
for monitoring specified in _options_ server.

#### Arguments

  * _options_required

Object with key-value. Supported keys:

    * _url_required

A String value. Monitored server address.

    * _timeout_optional

An Number value. Optional ping timeout in seconds. By default 30 seconds.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains:

    * _monitor_ \- The created [RBCConnectionMonitor](connectionMonitor.html) object.

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`connection.startMonitoring( {url:"http://www.google.com"}, function(info) {  
    alert("Monitor created.");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### isOnline

`connection.isOnline( )`

#### Discussion

Return _true_ if device currently connected to internel. Otherwise return
_false_.

#### Return Value

  * _true_ or _false_

#### Sample

`if (connection.isOnline()) {  
    alert("Device online");  
}`  

### typeChanged

`connection.typeChanged( callback )`

#### Discussion

Register _callback_ as observer for connection.type event.

#### Arguments

  * _callback_required

#### Return Value

  * _this_

#### Sample

`connection.typeChanged( function(info) {  
    alert("Connection type changed: " \+ info.type);  
});`  

### stateChanged

`connection.stateChanged( callback )`

#### Discussion

Register _callback_ as observer for connection.state event.

#### Arguments

  * _callback_required

#### Return Value

  * _this_

#### Sample

`connection.stateChanged( function(info) {  
    alert("Connection state changed: " \+ info.state);  
});`  

## Events

### connection.type

#### Discussion

Event received when device determines that type of internet connection has
been changed. For example if device found wi-fi network instead cellular.

### connection.state

#### Discussion

Event received when device found or lost internet connection

  * [Index](../index.html)

* * *

(C) 2014 Red Book Connect. All rights reserved. (Last updated: 2014-08-18)

