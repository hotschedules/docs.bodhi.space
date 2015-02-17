---
title: "Main Menu"
posted: 2014-01-30
post: true
---

# Main Menu Module Reference

## Overview

This module used for working with application main menu. Developer can add and
remove custom menu items from it.

## Tasks

  * `menuItem` object
  * `updateTitle` function
  * `addCustomItem` function
  * `removeCustomItem` function
  * `removeAllCustomItems` function
  * `showMenu` function
  * `bounceMenu` function
  * `mainMenu.customItemSelected` event

## Objects

### menuItem

#### Discussion

This Object contains information about custom menu item.

#### Keys

  * _id_optional

The property with a String value. The identifier of the custom menu item.

  * _title_required

The property with a String value. The title of the custom menu item.

  * _icon_optional

The property with a String value. The icon URL of the custom menu item.

#### Sample

`var menuItem = {id: "1",  
        title: "Favorites",  
        icon: "http://server.com/path_to_icon"};`  

## Functions

### updateTitle

`mainMenu.updateTitle( title, successCallback, errorCallback )`

#### Discussion

Updates title for the items group in main menu.

#### Arguments

  * _title_required

A String Value. New title for the items group in main menu.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always null.

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`mainMenu.updateTitle( "Test Application", function () {  
    alert("Title updated");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### addCustomItem

`mainMenu.addCustomItem( item, successCallback, errorCallback )`

#### Discussion

Adds new application custom item to the main menu.

#### Arguments

  * _item_required

menuItem object. Contains information about new custom menu item. If _id_ is
not specified it will be generated in application.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains:

    * _item_ \- The menuItem object. (Object)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`var menuItem = {title: "Favorites", icon: "http://server.com/path_to_icon"};  
mainMenu.addCustomItem( item, function(info) {  
    alert("Item added with id: "+info.item.id);  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### removeCustomItem

`mainMenu.removeCustomItem( item, successCallback, errorCallback )`

#### Discussion

Deletes exist item from the main menu.

#### Arguments

  * _event_required

menuItem object. Contains information about the custom menu item. Must contain
id. Other fields ignored.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains:

    * _item_ \- The menuItem object. (Object)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`var item = { id: "1" };  
mainMenu.removeCustomItem( item, function(info) {  
    alert("Item removed.");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### removeAllCustomItems

`mainMenu.removeAllCustomItems( successCallback, errorCallback )`

#### Discussion

Deletes all items for the current application from the main menu.

#### Arguments

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always **null**

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`mainMenu.removeAllCustomItem( function(info) {  
    alert("All Items removed.");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### showMenu

`mainMenu.showMenu( successCallback, errorCallback )`

#### Discussion

Opens the main menu.

#### Arguments

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always **null**

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`mainMenu.showMenu( function(info) {  
    alert("Menu showed.");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### bounceMenu

`mainMenu.bounceMenu( successCallback, errorCallback )`

#### Discussion

Bounces the main menu.

#### Arguments

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always **null**

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`mainMenu.bounceMenu( function(info) {  
    alert("Menu bounced.");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

## Events

### mainMenu.customItemSelected

#### Discussion

Event received when user selected application custom item in the main menu.

#### Callback Arguments

  * _item_ \- The menuItem object. (Object)

  * [Index](../index.html)

* * *

(C) 2014 Red Book Connect. All rights reserved. (Last updated: 2014-07-01)

