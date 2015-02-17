---
title: "Archiving"
posted: 2014-01-30
post: true
---

# Archiving Module Reference

## Overview

This module provides the ability to working with zip archives.

Developer can create new zip archive with files from [App Storage](appStorage)
and extract files from zip archive (which saved in [App Storage](appStorage)).

## Tasks

  * `zip` function
  * `unzip` function

## Functions

### zip

`archiving.zip( options, successCallback, errorCallback )`

#### Discussion

Create new zip archive with files from [App Storage](appStorage).

Developer can create archive with selected files (options must contains
_files_ key) or can add all files in [App Storage](appStorage) with keys which
contains prefix in the start (options must contains _filesWithPrefix_ key).

#### Arguments

  * _options_required

Object with key-value. Supported keys:

    * _archive_

A String value. The key must contains zip archive name (The key in [App
Storage](appStorage)).

    * _password_

A String value. The key can contains password for zip archive.

    * _files_

An Array of Objects. The key can contains the list of files which will be
added to zip archive.

Each item must contains 2 properties:

      * _key_ \- the key in [App Storage](appStorage) which contains file. (String)
      * _name_ \- the name of file in zip archive. (String)

Can contains full path with folders e.g. "foder1/file1.txt"

    * _filesWithPrefix_

A String value. All files in [App Storage](appStorage) with keys which
contains prefix in the start of string will be added to zip archive.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always null.

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`archiving.zip( {archive:"zip1_key", password:"12345", files:[{key:"image1",
name:"image.jpg"}]},  
function(info) {  
    alert("Zip Archive created");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### unzip

`archiving.unzip( options, successCallback, errorCallback )`

#### Discussion

Extract files from zip archive to [App Storage](appStorage).

If _prefix_ key in _options_ exist all keys for extracted files will started
from prefix.

For example zip file contains 2 files:

  1. file1.txt
  2. folder1/file1.txt
After unzipping will be created keys:

  1. prefix/file1.txt
  2. prefix/folder1/file1.txt

#### Arguments

  * _options_required

Object with key-value. Supported keys:

    * _archive_

A String value. The key must contains zip archive name (The key in [App
Storage](appStorage)).

    * _password_

A String value. The key can contains password for zip archive.

    * _prefix_

A String value. All keys for extracted files will started from this prefix.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains keys:

    * _keys_ \- Contains all keys for extracted files. (Array of Strings)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`archiving.unzip( {archive:"zip1_key", password:"12345", prefix:"zip1_files"},  
function(info) {  
    alert("Files unzipped: "+info.keys);  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

  * [Index](../index.html)

* * *

(C) 2014 Red Book Connect. All rights reserved. (Last updated: 2014-06-13)

