---
title: "Kernel Promise"
posted: 2014-01-30
post: true
---

# Kernel Promise Reference

## Overview

Virtually all functions in modules return instance of RBCPromise object.  
With it you can easy add success and finished callbacks for the function.

## Tasks

  * `then` function
  * `fail` function
  * `success` function

## Functions

### then

`RBCPromise.then( succesCallback, errorCallback )`

#### Discussion

Add success (_succesCallback_) and error (_errorCallback_) callbacks to the
callback's list associated for the function.  
When function will receive the results from application this callbacks will be
called.

#### Arguments

  * _succesCallback_required

Success callback. Called when function finished without errors

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _this_

#### Sample

`someModule.someFunction().then( function(info) {  
    alert("Function complete");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### fail

`RBCPromise.fail( errorCallback )`

#### Discussion

Add _errorCallback_ to the callback's list associated for the function.  
If function will receive error results from application this callback will be
called.

#### Arguments

  * _errorCallback_required

Error Callback. Called when function return error.

#### Return Value

  * _this_

#### Sample

`someModule.someFunction().fail( function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### success

`RBCPromise.success( succesCallback )`

#### Discussion

Add _succesCallback_ to the callback's list associated for the function.  
If function will receive success results from application this callbacks will
be called.

#### Arguments

  * _succesCallback_required

Success callback. Called when function finished without errors

#### Return Value

  * _this_

#### Sample

`someModule.someFunction().success( function(info) {  
    alert("Function complete");  
});`  

  * [Index](../index.html)

* * *

(C) 2014 Red Book Connect. All rights reserved. (Last updated: 2014-06-04)

