---
title: "Bluetooth Peripheral"
posted: 2014-01-30
post: true
---


# BT Peripheral Module Reference

## Overview

This module used for working with Bluetooth 4.0 LE Peripherals. Now supported
only Health Thermometer and Battery Service GATT profiles.

## Tasks

  * `STATES` constant
  * `CONNECTION_STATES` constant
  * `peripheralInfo` object
  * `profilesInfo` object
  * `supported` property
  * `start` function
  * `stop` function
  * `getState` function
  * `startDiscovery` function
  * `stopDiscovery` function
  * `connect` function
  * `disconnect` function
  * `btPeripheral.stateChanged` event
  * `btPeripheral.peripheralsChanged` event
  * `btPeripheral.peripheralStateChanged` event
  * `btPeripheral.peripheralInfoChanged` event

## Constants

### STATES

#### Discussion

This enum contains all states of [BT Peripheral](btPeripheral.html) module.

  * _btPeripheral.STATES.Unknown_

State unknown, update imminent.

  * _btPeripheral.STATES.Resetting_

The connection with the system service was momentarily lost, update imminent.

  * _btPeripheral.STATES.Unsupported_

The platform doesn't support the Bluetooth Low Energy.

  * _btPeripheral.STATES.Unauthorized_

The application is not authorized to use the Bluetooth Low Energy.

  * _btPeripheral.STATES.PoweredOff_

Bluetooth is currently powered off.

  * _btPeripheral.STATES.PoweredOn_

Bluetooth is currently powered on and available to use.

### CONNECTION_STATES

#### Discussion

This enum contains all variants of Peripheral connection state.

  * _btPeripheral.CONNECTION_STATES.Unknown_

Unknown connection state

  * _btPeripheral.CONNECTION_STATES.Disconnected_

Peripheral Device disconnected.

  * _btPeripheral.CONNECTION_STATES.Connecting_

Peripheral Device in connection state.

  * _btPeripheral.CONNECTION_STATES.Connected_

Peripheral Device connected.

  * _btPeripheral.CONNECTION_STATES.Disconnecting_

Peripheral Device in disconnection state.

## Objects

### peripheralInfo

#### Discussion

This Object contains information about Peripheral Device.

#### Keys

  * _id_required

A String value. Device idenfier. Used in connect and disconnect functions.

  * _name_required

An Integer value. Device Name.

  * _rssi_required

An Integer value. Current Device RSSI.

### profilesInfo

#### Discussion

This Object contains information about supported GATT profiles which found on
Peripheral Device after connection established.

#### Keys

  * _thermometer_

An Object value. Contains information from Health Thermometer GATT profile if
device supports it.

    * _timestamp_

A Date value. This information timestamp.

    * _temp_

A Float value. Current temperature.

    * _measurement_

A String value. Unit of temperature measure. F for Fahrenheit and C for
Celsius degrees.

    * _location_

A String value. Location of thermometer.

  * _battery_

An Object value. Contains information from Battery Service GATT profile if
device supports it.

    * _level_

An Integer value. Current device battery level (0-100).

    * _charging_

A Boolean value. **true** if device plugged for charger. Otherwise **false**.

## Properties

### supported

#### Discussion

Returns whether the device supports [BT Peripheral](btPeripheral.html) module.

#### Sample

`var supported = btPeripheral.supported;`  

## Functions

### start

`btPeripheral.start( successCallback, errorCallback )`

#### Discussion

Starts working with Bluetooth 4.0 LE. Developer must call this method before
using all another functions.

#### Arguments

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always null

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`btPeripheral.start( function() {  
    alert("Started.");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### stop

`btPeripheral.stop( successCallback, errorCallback )`

#### Discussion

Stops working with Bluetooth 4.0 LE. Developer must call this method when all
operations with it finished.

#### Arguments

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always null

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`btPeripheral.stop( function() {  
    alert("Stopped.");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### getState

`btPeripheral.getState( successCallback, errorCallback )`

#### Discussion

Gets current state. Also developer can add listener for
btPeripheral.stateChanged event to receive state updates.

#### Arguments

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains:

    * _state_ \- Current state. See STATES for more info. (Integer)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`btPeripheral.getState( function(info) {  
    alert("Current state: "+info.state);  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### startDiscovery

`btPeripheral.startDiscovery( successCallback, errorCallback )`

#### Discussion

Starts scanning for peripherals. Developer can add listener for
btPeripheral.peripheralsChanged event to receive updates of peripherals list

#### Arguments

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always null

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`btPeripheral.startDiscovery( function() {  
    alert("Discovery Started.");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### stopDiscovery

`btPeripheral.stopDiscovery( successCallback, errorCallback )`

#### Discussion

Stops scanning for peripherals.

#### Arguments

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always null

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`btPeripheral.stopDiscovery( function() {  
    alert("Discovery Stopped.");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### connect

`btPeripheral.connect( peripheralId, successCallback, errorCallback )`

#### Discussion

Tries to connect to peripheral device. Developer can monitor connection state
with btPeripheral.peripheralStateChanged event.

Also when connection established automatically starts receiving information
from supported GATT profiles. Developer must add listener for
btPeripheral.peripheralInfoChanged event to receive it.

#### Arguments

  * _peripheralId_required

A String value. Idenfier of peripheral device.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always null

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`btPeripheral.connect( "46c85837-cc6e-452f-a279-f4731cec164d", function(info)
{  
    alert("Peripheral connected.");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### disconnect

`btPeripheral.disconnect( peripheralId, successCallback, errorCallback )`

#### Discussion

Disconnects from peripheral device.

#### Arguments

  * _peripheralId_required

A String value. Idenfier of peripheral device.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always null

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`btPeripheral.disconnect( "46c85837-cc6e-452f-a279-f4731cec164d",
function(info) {  
    alert("Peripheral disconnected.");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

## Events

### btPeripheral.stateChanged

#### Discussion

Event received when changed state of [BT Peripheral](btPeripheral.html)
module. Working only between start and stop methods calls.

#### Callback Arguments

  * _state_ \- New state. See STATES for more info. (Integer)

### btPeripheral.peripheralsChanged

#### Discussion

Event received when list of found peripherals changed. Working only between
startDiscovery and stopDiscovery methods calls.

#### Callback Arguments

  * _peripherals_ \- The list of found peripheralInfo objects. (Array of Object)

### btPeripheral.peripheralStateChanged

#### Discussion

Event received when connection state of peripheral device changed.

#### Callback Arguments

  * _peripheralId_ \- Idenfier of peripheral device. (String)
  * _state_ \- New state. See CONNECTION_STATES for more info. (Integer)

### btPeripheral.peripheralInfoChanged

#### Discussion

Event received when supported GATT profile information received.

#### Callback Arguments

  * _peripheralId_ \- Idenfier of peripheral device. (String)
  * _info_ \- Updated profilesInfo. (Object)

  * [Index](../index.html)

* * *

(C) 2014 Red Book Connect. All rights reserved. (Last updated: 2014-06-25)

