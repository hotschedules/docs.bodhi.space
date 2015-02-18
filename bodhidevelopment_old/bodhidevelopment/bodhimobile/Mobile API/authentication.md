---
title: "Authentication"
posted: 2014-01-30
post: true
---


# Authentication Module Reference

## Overview

This module is designed to authenticate users.

## Tasks

  * `supported` property
  * `username` property
  * `authenticated` property
  * `login` function
  * `logout` function
  * `getCredentialsInfo` function
  * `authentication.usernameChanged` event

## Properties

### supported

#### Discussion

Returns whether the device supports authentication.

#### Sample

`var supported = authentication.supported;`  

### username

#### Discussion

Returns current authenticated username or **null**. This property changed when
authentication.usernameChanged event received.

#### Sample

`var username = authentication.username;`  

### authenticated

#### Discussion

Returns **true** if user already authenticated. Otherwise returns **false**.
This property changed when authentication.usernameChanged event received.

#### Sample

`var isAuthenticated = authentication.authenticated;`  

## Functions

### login

`authentication.login( options, successCallback, errorCallback )`

#### Discussion

Tries to login to server with user credentials.

#### Arguments

  * _options_required

Object with key-value. Supported keys:

    * _username_

A String value. The key must contains string with username.

    * _password_

A String value. The key must contains string with user password.

    * _remember_

A Boolean value. If **true** credentials will be saved and will be used after
application restart.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains:

    * _username_ \- Authorized username. (String)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`var options = {  
    username: "test_user",  
    password: "password"};  
authentication.login( options, function(info) {  
    alert("User (" \+ info.username + ") authenticated.");  
}, function (error) {  
    alert("Login failed! code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### logout

`authentication.logout( successCallback, errorCallback )`

#### Discussion

Logout current authorized user and clear all session cookies.

#### Arguments

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always **null**.

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`authentication.logout( function(info) {  
    alert("Finished.");  
}, function (error) {  
    alert("Logout failed! code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### getCredentialsInfo

`authentication.getCredentialsInfo( successCallback, errorCallback )`

#### Discussion

Gets username and remember flag which used in last successful call of login
method.

#### Arguments

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains:

    * _username_ \- Username which was used in last login. (String)
    * _remember_ \- Last used remember flag state. (Boolean)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`authentication.getCredentialsInfo( function(info) {  
    alert("Last username = " \+ info.username + "\n"+  
         "Last remember" \+ info.remember);  
}, function (error) {  
    alert("Failed! code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

## Events

### authentication.usernameChanged

#### Discussion

Event received when current authentication status changed.

#### Callback Arguments

  * _username_ \- Current authenticated username or **null**. (String)

  * [Index](../index.html)

* * *

(C) 2014 Red Book Connect. All rights reserved. (Last updated: 2014-08-18)

