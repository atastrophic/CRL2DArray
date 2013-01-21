# CRL2DArray
CRL2DArray is a wrapper to NSMutableArray for quickly working with Two-Dimensional arrays in objective-C. 


## How to Install
Simply, drop the files in your project, import in your required class and start working.

## How to Use
Here is a sample code to help you get started

First, import the file where required
    #import "CRL2DArray.h"
    
Now, instantiate the class with required rows & columns

    CRL2DArray *myTwoDArray = [[CRL2DArray alloc] initWithRows:5 columns:5];
    
Use the `insertObject:atRow:column` to insert objects into the array

    [myTwoDArray insertObject:[NSNumber numberWithInt:1] atRow:1 column:2];
    
The class will raise exceptions if row or column is out of bounds as defined during initializaiton.

To retrieve an object from the array, use `objectAtRow:column` method.

    [myTwoDArray objectAtRow:1 column:2];
    
Note: the method will raise exception if row or column is out of bounds.

### Important ..
CRL2DArray uses string constant `kCRL2DArrayEmptyKey` INTERNALLY to store nil objects in array. So, in order to nilify (set nil) at particular point in array, simply insert `kCRL2DArrayEmptyKey` using `insertObject:atRow:column` method.

    [myTwoDArray insertObject:kCRL2DArrayEmptyKey atRow:1 column:2];
    
# Contributions are always Welcome .. !!
