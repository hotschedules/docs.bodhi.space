---
title: "Contacts"
posted: 2014-01-30
post: true
---


# Contacts Module Reference

## Overview

This module provides the access to contacts list from address book. Developer
can receive contacts, create, update and delete contact item.

## Tasks

  * `contactField` object
  * `contactAddress` object
  * `contactName` object
  * `contactInfo` object
  * `find` function
  * `findById` function
  * `create` function
  * `update` function
  * `delete` function

## Objects

### contactField

#### Discussion

This object contains information about the field of contact, such as phone
number or email.

#### Keys

  * _type_required

A String value. The type of field.

  * _value_required

A String value. The value of field.

### contactAddress

#### Discussion

This Object contains information about the address record of contact.

#### Keys

  * _type_required

A String value. The type of address.

  * _formatted_optional

A String value. Formatted address.

  * _streetAddress_optional

A String value. The street name.

  * _locality_optional

A String value. The city name.

  * _region_optional

A String value. The region.

  * _postalCode_optional

A String value. The postal code.

  * _country_optional

A String value. The country.

### contactName

#### Discussion

This Object contains information about the name of contact.

#### Keys

  * _formatted_required

A String value. Formatted dispay name.

  * _familyName_optional

A String value. The last name.

  * _givenName_optional

A String value. The first name.

  * _middleName_optional

A String value. The middle name.

  * _honorificPrefix_optional

A String value. The prefix ("Sir" "Duke" "General").

  * _honorificSuffix_optional

A String value. The suffix ("Jr." "Sr." "III").

### contactInfo

#### Discussion

This Object contains information about the contact item.

#### Keys

  * _id_required

A String value. The identifier of contact.

  * _raw_id_optional

A String value. Optional identifier of contact. Used in android.

  * _displayName_required

A String value. Formatted dispay name.

  * _name_required

contactName object. Contains full information about the contact's name.

  * _nickname_optional

A String value. The nickname of contact.

  * _phoneNumbers_optional

Array of contactField objects. The list of phone numbers.

  * _emails_optional

Array of contactField objects. The list of emails.

  * _addresses_optional

Array of contactAddress objects. The list of addresses associated with
contact.

  * _birthday_optional

A Date value. The birthday of contact.

## Functions

### find

`contacts.find( options, successCallback, errorCallback )`

#### Discussion

Returns a list of contacts.

#### Arguments

  * _options_optional

Object with key-value. Supported keys:

    * _filter_

A String value. If a filter is specified, then return only contacts with a
name containing the string. By default this property is **null**

    * _limit_

An Interger value. If limit is specified, the return only "limit" contacts. By
default this property is **null**.

    * _offset_

An Interger value. If offset is specified, the return contacts with index
started from "offset". By default this property is **null**.

    * _getTotalCount_

A Boolean value. Returns total count of contacts with specified _filter_. By
default this property is **true**

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains:

    * _contacts_ \- The list of contactInfo objects. (Array of Object)
    * _totalCount_ \- The total count of contacts. Returns only if _getTotalCount_ is **true** (Boolean)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`contacts.find( {}, function(info) {  
    alert("Contacts count: "+info.contacts.length);  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### findById

`contacts.findById( contactId, successCallback, errorCallback )`

#### Discussion

Returns the contact with specified id.

#### Arguments

  * _contactId_required

A String value. The identifier of contact.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains:

    * _contacts_ \- The list of contactInfo objects with one element. (Array of Object)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`contacts.findById( "32", function(info) {  
    alert("Found contacts count: "+info.contacts.length);  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### create

`contacts.create( contact, successCallback, errorCallback )`

#### Discussion

Adds new contact to address book.

#### Arguments

  * _contact_required

contactInfo object. Contains information about new contact.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains:

    * _contacts_ \- The list of contactInfo objects with one element. (Array of Object)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`var contact = {  
    name: {  
        givenName: "Test",  
        familyName: "User"},  
    emails: [{  
        type: "Work",  
        value: "test@test.com"}]};  
contacts.create( contact, function(info) {  
    alert("Contact added with id: "+info.contacts[0].id);  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### update

`contacts.update( contact, successCallback, errorCallback )`

#### Discussion

Updates information for exist contact in address book.

#### Arguments

  * _contact_required

contactInfo object. Contains updated information for contact. Must contain id
and raw_id (if exist).

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always **null**

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`var contact = {  
    id: "35",  
    name: {  
        givenName: "Test1",  
        familyName: "User1"},  
    emails: [{  
        type: "Work",  
        value: "test1@test.com"}]};  
contacts.update( contact, function(info) {  
    alert("Contact information updated.");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### delete

`contacts.delete( contact, successCallback, errorCallback )`

#### Discussion

Deletes exist contact from address book.

#### Arguments

  * _contact_required

contactInfo object. Contains information for contact. Must contain id and
raw_id (if exist). Other fields ignored.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always **null**

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`var contact = { id: "35" };  
contacts.delete( contact, function(info) {  
    alert("Contact removed.");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

  * [Index](../index.html)

* * *

(C) 2014 Red Book Connect. All rights reserved. (Last updated: 2014-06-14)

