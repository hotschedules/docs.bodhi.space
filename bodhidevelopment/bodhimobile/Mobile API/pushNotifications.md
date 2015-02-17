---
title: "Push Notifications"
posted: 2014-01-30
post: true
---

# Push Notifications Module Reference

## Overview

This module provides the ability to working with Push Notifications and
analogs.

  * On **iOS** used Push Notifications
  * On **Android** used Google Cloud Messaging. Server must send data for push notification with two keys: text - for notification text and title - for notification title
  * On **WP** used MPNS

## Tasks

  * `register` function
  * `unregister` function
  * `setApplicationIconBadgeNumber` function

## Functions

### register

`pushNotifications.register( options, successCallback, errorCallback )`

#### Discussion

Registers application to Push Notifications.

#### Arguments

  * _options_required

Object with key-value. On different platforms developer must specify different
options:

    * **On iOS**
      * _badge_

A Boolean value. The app accepts notifications that badge the app icon.

      * _sound_

A Boolean value. The app accepts alert sounds as notifications.

      * _alert_

A Boolean value. The app accepts alert messages as notifications.

    * **On Android**
      * _senderID_

A String value. The android sender ID.

    * **On WP**
      * _mpnsChannelName_

A String value. The name that the application uses to identify the
notification channel instance.

      * _mpnsServiceName_

A String value. The name that the web service uses to associate itself with
the Push Notification Service.

      * _tileAllowedDomains_

Array of Strings. The list of allowed domains from which to access remote
images.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains keys:

    * _pushToken_ \- Push token. (String)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`pushNotifications.register( {badge:true, sound:true, alert:true},  
function(info) {  
    alert("Push token: "+info.pushToken);  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### unregister

`archiving.unregister( successCallback, errorCallback )`

#### Discussion

Unregisters application for Push Notifications.

#### Arguments

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always null.

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`archiving.unregister( function() {  
    alert("Unregistered");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### setApplicationIconBadgeNumber

`archiving.setApplicationIconBadgeNumber( badge, successCallback,
errorCallback )`

#### Discussion

Sets the number as the badge of the app icon.

#### Arguments

  * _badge_required

An Integer value. The number currently set as the badge of the app icon

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always null.

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`archiving.setApplicationIconBadgeNumber( 4, function() {  
    alert("Badge updated!");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

  * [Index](../index.html)

* * *

(C) 2014 Red Book Connect. All rights reserved. (Last updated: 2014-06-14)

