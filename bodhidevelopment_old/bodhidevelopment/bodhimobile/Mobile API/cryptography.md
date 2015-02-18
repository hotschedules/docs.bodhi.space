---
title: "Cryptography"
posted: 2014-01-30
post: true
---


# Cryptography Module Reference

## Overview

This module contains cryptographic methods.

## Tasks

  * `hash` function

## Functions

### hash

`cryptography.hash( options, successCallback, errorCallback )`

#### Discussion

Computes the hash of a string

#### Arguments

  * _options_required

Object with key-value. Supported keys:

    * _data_

A String value. The key must contains string to compute the hash.

    * _hash_

A String value. The key must contains hash algorithm.

Supported algorithms:

      * **md5**
      * **sha1**
      * **sha-256**
      * **sha-384**
      * **sha-512**

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains keys:

    * _hash_ \- Contains computed the hash. (String)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`cryptography.hash( {data:"string", hash:"md5"},  
function(info) {  
    alert("md5('string') = "+info.hash);  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

  * [Index](../index.html)

* * *

(C) 2014 Red Book Connect. All rights reserved. (Last updated: 2014-06-13)

