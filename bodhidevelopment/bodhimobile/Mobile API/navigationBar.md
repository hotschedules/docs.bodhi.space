---
title: "Navigation Bar"
posted: 2014-01-30
post: true
---

# Navigation Bar Module Reference

## Overview

The module is used to Navigation Bar control.  
Developer can showing or hiding Navigation Bar, changing title and right
navigation bar item.

## Tasks

  * `show` function
  * `hide` function
  * `setTitle` function
  * `setRightButton` function
  * `navigationBar.rightButtonPressed` event

## Functions

### show

`navigationBar.show( options, successCallback, errorCallback )`

#### Discussion

Shows the Navigation Bar.

#### Arguments

  * _options_optional

Object with key-value. Supported keys:

    * _fixed_

A Boolean value. If this flag is set to true then Navigation Bar will be shown
and will not disappear due to the actions of the user (swiping or scrolling to
up).

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always **null**.

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`navigationBar.show( {fixed: true}, function(info) {  
    alert("Navigation Bar will be shown");  
}, function (error) {  
    alert("show failed! code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### hide

`navigationBar.hide( options, successCallback, errorCallback )`

#### Discussion

Hides the Navigation Bar.

#### Arguments

  * _options_optional

Object with key-value. Supported keys:

    * _fixed_

A Boolean value. If this flag is set to true then Navigation Bar will be
hidden and will not appear due to the actions of the user (swiping or
scrolling to up).

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always **null**.

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`navigationBar.show( {fixed: true}, function(info) {  
    alert("Navigation Bar will be hidden");  
}, function (error) {  
    alert("hide failed! code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### setTitle

`navigationBar.setTitle( options, successCallback, errorCallback )`

#### Discussion

Replaces default Navigation Bar Title to specified.  
Can showing loading indicator.  
If _options_ not selected set default title.

#### Arguments

  * _options_optional

Object with key-value. Supported keys:

    * _title_

A String value. String with title.

    * _loading_

A Boolean value. If this flag is set to true then application will add loading
indicator to the navigation bar.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always **null**.

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`navigationBar.setTitle( {loading:true, title:"Loading..."}, function(info) {  
    alert("Navigation Title updated.");  
}, function (error) {  
    alert("setTitle failed! code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### setRightButton

`navigationBar.setRightButton( options, successCallback, errorCallback )`

#### Discussion

Sets the Navigation Bar right button.  
Can showing loading indicator.  
If no _options_ are specified removes the right button.

#### Arguments

  * _options_optional

Object with key-value. Supported keys:

    * _title_

A String value. String with button title.

    * _icon_

A String value. String with url of icon.

    * _loading_

A Boolean value. If this flag is set to true then application will show
loading indicator in the space of right button.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always **null**.

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`navigationBar.setRightButton( {title:"Cancel"}, function(info) {  
    alert("Button updated");  
}, function (error) {  
    alert("Failed! code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

## Events

### navigationBar.rightButtonPressed

#### Discussion

Event received when user pressed to the right navigation bar button.

#### Callback Arguments

  * No arguments

  * [Index](../index.html)

* * *

(C) 2014 Red Book Connect. All rights reserved. (Last updated: 2014-08-18)

