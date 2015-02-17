---
title: "iBeacon"
posted: 2014-01-30
post: true
---


# iBeacon Module Reference

## Overview

This module provides the support for working with iBeacons. Developer can use
iBeacon module in 2 variants:

  1. **Can add and monitor regions.**
    * If application in background when device falls into the region of iBeacon user will receive predefined notification.
    * If application in foreground developer can receive iBeacon.didEnterToRegion, iBeacon.didExitFromRegion, iBeacon.didFoundBeaconsInRegion events.
  2. **Can add and monitor separate iBeacon markers.**
    * If application in background when device finds iBeacon marker user will receive predefined notification.
    * If application in foreground developer can receive iBeacon.didFoundBeacon and iBeacon.didLostBeacon events.

Both variants can be used simultaneously. Developer can monitor regions and
specific iBeacons in one moment.

## Tasks

  * `regionInfo` object
  * `beaconInfo` object
  * `supported` property
  * `getRegions` function
  * `addRegion` function
  * `checkRegion` function
  * `removeRegion` function
  * `removeAllRegions` function
  * `addBeacon` function
  * `getBeacons` function
  * `removeBeacon` function
  * `removeAllBeacons` function
  * `iBeacon.didEnterToRegion` event
  * `iBeacon.didExitFromRegion` event
  * `iBeacon.didFoundBeaconsInRegion` event
  * `iBeacon.didFoundBeacon` event
  * `iBeacon.didLostBeacon` event

## Objects

### regionInfo

#### Discussion

This Object contains information about iBeacon region.

#### Keys

  * _uuid_required

A String value. Region's proximity UUID.

  * _enter_notification_required

An Object. Contains information about notification that will be displayed if
the device entered to the region and application was in background.

Contains properties:

    * _title_

A String value. Local notification title.

    * _message_

A String value. Local notification message.

    * _url_

A String value. Link that will open after application will be opened from
notification.

### beaconInfo

#### Discussion

This Object contains information about iBeacon.

#### Keys

  * _uuid_required

A String value. iBeacon proximity UUID.

  * _major_required

An Integer value. iBeacon major.

  * _minor_required

An Integer value. iBeacon minor.

  * _proximity_optional

A String value. Can have unknown, immediate, near, far value. Presented only
in iBeacon.didFoundBeaconsInRegion event.

  * _found_notification_required

An Object. Contains information about notification that will be displayed if
the device found the iBeacon when application was in background.

Contains properties:

    * _title_

A String value. Local notification title.

    * _message_

A String value. Local notification message.

    * _url_

A String value. Link that will open after application will be opened from
notification.

## Properties

### supported

#### Discussion

Returns whether the device supports iBeacons monitoring.

#### Sample

`var supported = iBeacon.supported;`  

## Functions

### getRegions

`iBeacon.getRegions( successCallback, errorCallback )`

#### Discussion

Returns a list of regions which the monitored currently.

#### Arguments

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains:

    * _regions_ \- The list of regionInfo objects. (Array of Object)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`iBeacon.getRegions( function(info) {  
    alert("Monitored regions count: "+info.regions.length);  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### addRegion

`iBeacon.addRegion( options, successCallback, errorCallback )`

#### Discussion

Adds new region to monitoring.

#### Arguments

  * _options_required

regionInfo object. Contains information about new iBeacon region.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains:

    * _region_ \- Added regionInfo object. (Object)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`var region = {  
    uuid: "b614b5eb-80fa-433b-ba25-dfadc540811a",  
    enter_notification: {  
        title: "Hello!",  
        message: "You are in region",  
        url: "http://www.google.com"}};  
iBeacon.addRegion( options, function(info) {  
    alert("Region added.");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### checkRegion

`iBeacon.checkRegion( uuid, successCallback, errorCallback )`

#### Discussion

Checks whether the device is within the region with _uuid_.

#### Arguments

  * _uuid_required

A String value. Checked region's proximity UUID.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains:

    * _region_ \- Checked regionInfo object. (Object)
    * _inside_ \- _true_ if the device is inside the region. Otherwise _false_. (Boolean)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`iBeacon.checkRegion( "b614b5eb-80fa-433b-ba25-dfadc540811a", function(info) {  
    if (info.inside)  
        alert("You are inside.");  
    else  
        alert("You are outside.");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### removeRegion

`iBeacon.removeRegion( uuid, successCallback, errorCallback )`

#### Discussion

Removes the region with _uuid_ from monitoring.

#### Arguments

  * _uuid_required

A String value. Removed region's proximity UUID.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains:

    * _region_ \- Removed regionInfo object. (Object)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`iBeacon.removeRegion( "b614b5eb-80fa-433b-ba25-dfadc540811a", function(info)
{  
    alert("Region removed.");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### removeAllRegions

`iBeacon.removeAllRegions( successCallback, errorCallback )`

#### Discussion

Removes all regions from monitoring.

#### Arguments

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always null

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`iBeacon.removeAllRegions( function() {  
    alert("All regions removed.");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### addBeacon

`iBeacon.addBeacon( options, successCallback, errorCallback )`

#### Discussion

Adds new iBeacon to monitoring.

#### Arguments

  * _options_required

beaconInfo object. Contains information about new iBeacon.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains:

    * _beacon_ \- Added beaconInfo object. (Object)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`var beacon = {  
    uuid: "b614b5eb-80fa-433b-ba25-dfadc540811a",  
    major: 1,  
    minor: 1,  
    found_notification: {  
        title: "Hello!",  
        message: "You found beacon",  
        url: "http://www.google.com"}};  
iBeacon.addBeacon( options, function(info) {  
    alert("Beacon added.");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### getBeacons

`iBeacon.getBeacons( successCallback, errorCallback )`

#### Discussion

Returns a list of iBeacons which the monitored currently.

#### Arguments

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains:

    * _beacons_ \- The list of beaconInfo objects. (Array of Object)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`iBeacon.getBeacons( function(info) {  
    alert("Monitored beacons count: "+info.beacons.length);  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### removeBeacon

`iBeacon.removeBeacon( options, successCallback, errorCallback )`

#### Discussion

Removes the iBeacon from monitoring.

#### Arguments

  * _options_required

beaconInfo object. Removed iBeacon information. Must contain uuid, major and
minor fields.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains:

    * _beacon_ \- Removed beaconInfo object. (Object)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`var beacon = {  
    uuid: "b614b5eb-80fa-433b-ba25-dfadc540811a",  
    major: 1,  
    minor: 1};  
iBeacon.removeBeacon( options, function(info) {  
    alert("Beacon removed.");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### removeAllBeacons

`iBeacon.removeAllBeacons( successCallback, errorCallback )`

#### Discussion

Removes all iBeacons from monitoring.

#### Arguments

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always null

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`iBeacon.removeAllBeacons( function() {  
    alert("All iBeacons removed.");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

## Events

### iBeacon.didEnterToRegion

#### Discussion

Event received when the device enters to the monitored region.

#### Callback Arguments

  * _region_ \- regionInfo object. (Object)

### iBeacon.didExitFromRegion

#### Discussion

Event received when the device exits from the monitored region.

#### Callback Arguments

  * _region_ \- regionInfo object. (Object)

### iBeacon.didFoundBeaconsInRegion

#### Discussion

Event received when the device updated the list of beacons in the region where
it is.

#### Callback Arguments

  * _region_ \- regionInfo object. (Object)
  * _beacons_ \- The list of beaconInfo objects. (Array of Object)

### iBeacon.didFoundBeacon

#### Discussion

Event received when the device found the monitored iBeacon.

#### Callback Arguments

  * _beacon_ \- beaconInfo object. (Object)

### iBeacon.didLostBeacon

#### Discussion

Event received when the device lost the monitored iBeacon.

#### Callback Arguments

  * _beacon_ \- beaconInfo object. (Object)

  * [Index](../index.html)

* * *

(C) 2014 Red Book Connect. All rights reserved. (Last updated: 2014-06-14)

