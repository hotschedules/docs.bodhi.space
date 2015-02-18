---
title: "Globalization"
posted: 2014-01-30
post: true
---


# Globalization Module Reference

## Overview

Obtains information and performs operations specific to the user's locale and
timezone.

## Tasks

  * `getPreferredLanguage` function
  * `getLocaleName` function
  * `dateToString` function
  * `stringToDate` function
  * `getDatePattern` function
  * `getDateNames` function
  * `isDayLightSavingsTime` function
  * `getFirstDayOfWeek` function
  * `numberToString` function
  * `stringToNumber` function
  * `getNumberPattern` function
  * `getCurrencyPattern` function

## Functions

### getPreferredLanguage

`globalization.getPreferredLanguage( successCallback, errorCallback )`

#### Discussion

Returns the language identifier string to the _succesCallback_ with a
properties object as a parameter. That object should have a value property
with a String value.  
If there is an error getting the language, then the _errorCallback_ executes.

#### Arguments

  * _succesCallback_optional

Success callback. Called when function finished without errors

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`globalization.getPreferredLanguage( function(info) {  
    alert("language: " \+ info.value);  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### getLocaleName

`globalization.getLocaleName( successCallback, errorCallback )`

#### Discussion

Returns the locale identifier string to the _succesCallback_ with a properties
object as a parameter. That object should have a value property with a String
value.  
If there is an error getting the locale, then the _errorCallback_ executes.

#### Arguments

  * _succesCallback_optional

Success callback. Called when function finished without errors

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`globalization.getLocaleName( function(info) {  
    alert("locale: " \+ info.value);  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### dateToString

`globalization.dateToString( date, options, successCallback, errorCallback )`

#### Discussion

Returns the formatted date String via a value property accessible from the
object passed as a parameter to the _succesCallback_.  
If there is an error formatting the date, then the _errorCallback_ executes

#### Arguments

  * _date_required

Date. This parameter should be of type Date.

  * _options_optional

Object with key-value. Supported keys:

    * _formatLength_

Variants: short, medium, long, full

    * _selector_

Variants: date, time, date and time

  * _succesCallback_optional

Success callback. Called when function finished without errors

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`globalization.dateToString( new Date(), {formatLength:"short", selector:"date
and time"},  
function(info) {  
    alert("date: " \+ info.value);  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### stringToDate

`globalization.stringToDate( dateString, options, successCallback,
errorCallback )`

#### Discussion

Parses a date formatted as a string, according to the client's user
preferences and calendar using the time zone of the client, and returns the
corresponding date object.

#### Arguments

  * _dateString_required

Date. This parameter should be of type String.

  * _options_optional

Object with key-value. Supported keys:

    * _formatLength_

Variants: short, medium, long, full

    * _selector_

Variants: date, time, date and time

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object and can contains keys:

    * _year_\- The four digit year. (Number)
    * _month_\- The month from (0-11). (Number)
    * _day_\- The day from (1-31). (Number)
    * _hour_\- The hour from (0-23). (Number)
    * _minute_\- The minute from (0-59). (Number)
    * _second_\- The second from (0-59). (Number)
    * _millisecond_\- The milliseconds (from 0-999), not available on all platforms. (Number)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`globalization.stringToDate( "4/06/2014", {selector:"date"},  
function(info) {  
    alert("month:" \+ info.month + " day:" \+ date.day + " year:" \+ date.year);  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### getDatePattern

`globalization.getDatePattern( options, successCallback, errorCallback )`

#### Discussion

Returns a pattern string to format and parse dates according to the client's
user preferences.

#### Arguments

  * _options_optional

Object with key-value. Supported keys:

    * _formatLength_

Variants: short, medium, long, full

    * _selector_

Variants: date, time, date and time

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object and can contains keys:

    * _pattern_ \- The date and time pattern to format and parse dates. The patterns follow [Unicode Technical Standard #35](http://unicode.org/reports/tr35/tr35-4.html). (String)
    * _timezone_ \- The abbreviated name of the time zone on the client. (String)
    * _utc_offset_ \- The current difference in seconds between the client's time zone and coordinated universal time. (Number)
    * _dst_offset_ \- The current daylight saving time offset in seconds between the client's non-daylight saving's time zone and the client's daylight saving's time zone. (Number)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`globalization.getDatePattern( {formatLength:"short", selector:"date and
time"},  
function(info) {  
    alert("pattern: " \+ info.pattern);  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### getDateNames

`globalization.getDateNames( options, successCallback, errorCallback )`

#### Discussion

Returns an array of the names of the months or days of the week, depending on
the client's user preferences and calendar.

#### Arguments

  * _options_optional

Object with key-value. Supported keys:

    * _type_

Variants: narrow, wide

    * _item_

Variants: months, days

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object and can contains keys:

    * _value_ \- property with an Array of String values. The array features names starting from either the first month in the year or the first day of the week, depending on the option selected.

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`globalization.getDateNames( { type: "wide", item: "months" },  
function(info) {  
    for (var i = 0; i < info.value.length; i++) {  
        alert("month: " \+ info.value[i]);  
    }  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### isDayLightSavingsTime

`globalization.isDayLightSavingsTime( date, successCallback, errorCallback )`

#### Discussion

Indicates whether daylight savings time is in effect for a given date using
the client's time zone and calendar.

#### Arguments

  * _date_required

Date. This parameter should be of type Date.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object and can contains keys:

    * _dst_ \- property with a Boolean value. A true value indicates that daylight savings time is in effect for the given date, and false indicates that it is not.

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`globalization.isDayLightSavingsTime( new Date(),  
function(info) {  
    alert("dst: " \+ info.dst);  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### getFirstDayOfWeek

`globalization.getFirstDayOfWeek( successCallback, errorCallback )`

#### Discussion

Returns the first day of the week according to the client's user preferences
and calendar.

#### Arguments

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object and can contains keys:

    * _value_ \- property with a Number value.

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`globalization.getFirstDayOfWeek( function(info) {  
    alert("day: " \+ info.value);  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### numberToString

`globalization.numberToString( number, options, successCallback, errorCallback
)`

#### Discussion

Returns a number formatted as a string according to the client's user
preferences.

#### Arguments

  * _number_required

  * _options_optional

Object with key-value. Supported keys:

    * _type_

Variants: decimal, percent, currency

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object and can contains keys:

    * _value_ \- property with a String value.

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`globalization.numberToString( 3.1415926, {type:"decimal"},  
function(info) {  
    alert("number:" \+ info.value);  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### stringToNumber

`globalization.stringToNumber( string, options, successCallback, errorCallback
)`

#### Discussion

Parses a number formatted as a string according to the client's user
preferences and returns the corresponding number.

#### Arguments

  * _string_required

Number. This parameter should be of type String.

  * _options_optional

Object with key-value. Supported keys:

    * _type_

Variants: decimal, percent, currency

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object and can contains keys:

    * _value_ \- property with a Number value.

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`globalization.stringToNumber( "3.1415926", {type:"decimal"},  
function(info) {  
    alert("number:" \+ info.value);  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### getNumberPattern

`globalization.getNumberPattern( options, successCallback, errorCallback )`

#### Discussion

Returns a pattern string to format and parse numbers according to the client's
user preferences.

#### Arguments

  * _options_optional

Object with key-value. Supported keys:

    * _type_

Variants: decimal, percent, currency

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object and can contains keys:

    * _pattern_ \- The number pattern to format and parse numbers. The patterns follow [Unicode Technical Standard #35](http://unicode.org/reports/tr35/tr35-4.html). (String)
    * _symbol_ \- The symbol to use when formatting and parsing, such as a percent or currency symbol. (String)
    * _fraction_ \- The number of fractional digits to use when parsing and formatting numbers. (Number)
    * _rounding_ \- The rounding increment to use when parsing and formatting. (Number)
    * _positive_ \- The symbol to use for positive numbers when parsing and formatting. (String)
    * _negative_ \- The symbol to use for negative numbers when parsing and formatting. (String)
    * _decimal_ \- The decimal symbol to use for parsing and formatting. (String)
    * _grouping_ \- The grouping symbol to use for parsing and formatting. (String)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`globalization.getNumberPattern( {type:"decimal"},  
function(info) {  
    alert("pattern: " \+ info.pattern + "\n" +  
        "symbol: " \+ info.symbol + "\n" +  
        "fraction: " \+ info.fraction + "\n" +  
        "rounding: " \+ info.rounding + "\n" +  
        "positive: " \+ info.positive + "\n" +  
        "negative: " \+ info.negative + "\n" +  
        "decimal: " \+ info.decimal + "\n" +  
        "grouping: " \+ info.grouping);},  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### getCurrencyPattern

`globalization.getCurrencyPattern( currencyCode, successCallback,
errorCallback )`

#### Discussion

Returns a pattern string to format and parse currency values according to the
client's user preferences and ISO 4217 currency code.

#### Arguments

  * _currencyCode_required

The parameter should be a String of one of the ISO 4217 currency codes, for
example 'USD'.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object and can contains keys:

    * _pattern_ \- The currency pattern to format and parse currency values. The patterns follow [Unicode Technical Standard #35](http://unicode.org/reports/tr35/tr35-4.html). (String)
    * _code_ \- The ISO 4217 currency code for the pattern. (String)
    * _fraction_ \- The number of fractional digits to use when parsing and formatting currency. (Number)
    * _rounding_ \- The rounding increment to use when parsing and formatting. (Number)
    * _decimal_ \- The decimal symbol to use for parsing and formatting. (String)
    * _grouping_ \- The grouping symbol to use for parsing and formatting. (String)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`globalization.getCurrencyPattern( "USD",  
function(info) {  
    alert("pattern: " \+ info.pattern + "\n" +  
        "code: " \+ info.code + "\n" +  
        "fraction: " \+ info.fraction + "\n" +  
        "rounding: " \+ info.rounding + "\n" +  
        "decimal: " \+ info.decimal + "\n" +  
        "grouping: " \+ info.grouping);},  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

  * [Index](../index.html)

* * *

(C) 2014 Red Book Connect. All rights reserved. (Last updated: 2014-06-05)

