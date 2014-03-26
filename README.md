struct-utils
============

This is a collection of functions of general usefulness or importance for
Matlab programming.  There are two groups of files:

 - **utility** files - stored in the `util` directory - that I have created to
 fill holes in the standard Matlab library over the years.

 - **structure** extensions extend the Matlab struct class with several
 methods that anyone would be happy to have. For the most part, these tools
 are intended to make structures be more database-like, so some of them may
 be outmoded by Matlab's [new data types].  [new data types]:
 http://blogs.mathworks.com/loren/2013/09/10/introduction-to-the-new-matlab-data-types-in-r2013b/
 These have two subtypes:
	 1. methods, stored in the `util/@struct` directory
	 1. tools, stored in the `util` directory.

To "install," simply add the `util` directory to your Matlab path.

Currently includes the following:

### Utility Files###

 - `approx.m` -- Tests whether numbers are approximately equal, to a
   user-specified tolerance
 - `bisect_find.m` -- Bisection search in a *sorted* cell array of
   strings
 - `capitalize.m` -- Capitalize the first letters of words in "titlecase"
 - `ccrop.m` -- Crop trailing all-NaN rows and columns from a cell array
 - `cisnan.m` -- Return a logical array indicating NaNs in a cell array
 - `ifinput.m` -- Request user input with a pre-set default value
 - `ifnum2str.m` -- num2str, but don't error if input is already a str
 - `ifstr2num.m` -- str2num, but don't error if input is already a num
 - `strdist.m` -- Naive string distance algorithm 
 - `strnearest.m` -- Slightly more clever string distance algorithm
 - `tr.m` -- analog to tr(1), translate input characters to output characters
 - `uniques.m` -- return a list of unique values sorted to match their
   original order of appearance 

### Structure Extentions ###

*Methods*

(in `util/@struct`)

 - `concat.m` -- Concatenates the contents of two or more fields 
 - `eq.m` -- Recursively test if structures are equal
 - `expand.m` -- Duplicates records in a structure array according to a
   delimited field
 - `fieldop.m` -- Performs an operation on the fields of each record in a
   structure array 
 - `filter.m` -- Finds records in a structure matching a set of criteria;
   analogous to SQL WHERE clause
 - `ifrmfield.m` -- rmfield, but don't error if the field doesn't exist
 - `lookup.m` -- Given an entry in column A, find the corresponding entry
   in column B
 - `moddata.m` -- Modify the contents of a given field in a structure array
 - `mvfield.m` -- Rename a field without changing its position in the field order
 - `pivot.m` -- Draw an Excel-style "pivot table" to spec
 - `select.m` -- Pick out named fields; analogous to SQL SELECT clause
 - `show.m` -- Pretty-print structures.  A MONSTER function.
 - `sort.m` -- I was shocked I had to write this myself.
 - `stack.m` -- Creates a union of fields of two input structures
 - `struct2xls.m` -- Write a structure to an Excel worksheet (requires MS
   Office) 
 - `top.m` -- Show the top n records according to a given field
 - `trunc.m` -- Truncate a structure after n records

*Utilities*

(in `util`)

 - `read_dat.m` -- Read delimited data into a struct (my own
   implementation, works better for me than `csvread`)
 - `vlookup.m` -- Lookup the contents of one field in another structure;
   add another field to the first structure.  Kind of like an SQL JOIN.
 - `accum.m` -- Analogous to SQL GROUP BY, but with some neat tricks.
 - `xls2struct.m` -- Convert an Excel worksheet into a struct.

