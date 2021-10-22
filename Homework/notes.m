% Rules & General Knowledge for Naming Variables
% 	1. Variable names in MATLAB must start with a letter.
% 	2. The trailing characters can only be numbers, letters, or underscores.
% 	3. The function isvarname can be used to check the validity of a variable name.
% 		a. However, it will not say false for functions that are already in MATLAB, such as pi.
% 	4. The function namelengthmax will tell you the longest length of characters a variable's name can be.
% 	5. When having a multiword variable name, you can do one of two things…
% 		a. Using the underscore "_" character to separate words
% 		b. Using mixed cases (usually starting with lower case)
% 	6. The prefix n is often used for variables representing the number of objects.
% 		a. Examples: nCols, nRows, nSamples
% 	7. Constant values typically begin with a capital letter.
% 		a. Examples: MaxScore = 100
% 	
% List of formulas for geometric shapes
% 	1. Rectangle
% 		a. Perimeter = 2 (l * w)
% 		b. Area = l * w
% 	2. Circle
% 		a. Radius = D / 2
% 		b. Diameter = r * 2
% 		c. Circumference = 2 * Pi * r
% 		d. Area = Pi * r^2
% 	
% Function Notation Basics
% 	1. Y = sin(?) 
% 		a. Function name: sin
% 		b. Input argument: ?
% 		c. Output argument: y
% 	2. c = pythag(a,b)
% 		a. Function name: pythag
% 		b. input arguments: a and b
% 		c. output arguments: c
% 	3. [x1, x2] = quadratic(a,b,c)
% 		a. Function name: quadratic
% 		b. input arguments: a, b, and c
% 		c. output arguments: x1 and x2
% 
% Getting Help In MATLAB
% 	1. The help command lists the primary help topics for a specific function in the Command window.
% 	2. The doc command opens the reference page for the specified function in the Help Browser.
% 	3. The lookfor command searches for a keyword in all help entries.
% 
% Three Basic Classifications of Data
% 	1. Numeric
% 		a. Integer (1, 2, 128)
% 		b. Floating Point (1.4, 0.32, 129.33)
% 	2. Text/Character
% 	3. Boolean/Logical
% 
% Calcaulating an average from a list of values
% 	1. Set sum = 0.
% 	2. Set count = 0.
% 	3. Read in nextValue from list.
% 	4. Let sum = sum + nextValue.
% 	5. Let count = count + 1.
% 	6. Are there more items in the list?
% 		a. If yes, then return to step 3.
% 
% sprintf function
% The sprintf function outputs a formatted character string.
% outputString = sprintf(format, A, …)
% "format refers to an input string that describes the format for the output fields.
% 
% The format string can include four types of information.
% 	1. Literal text to be included in the output string.
% 	2. A percent sign followed by a conversion ccharacter.
% 	3. Specificiations for field width, precision, and more.
% 	4. Escape characters.
% 
% Conversion characters specify how numeric (or string) data will be formatted.
% 	They always start with a % sign.
% 		Can include…
% 			1. Identifier
% 			2. Flag
% 			3. Field width
% 			4. Precision
% 			5. Subtype
% 			6. Conversion character
% Opening and Messing With File-Directed I/O
% To open and close files, we use fopen and fclose.
% To read from and write to files, we use fscanf and fprintf.
% To move to specific points in a file, we use fseek, and frewind.
% linspace(x1,x2) - Creates a row vector of 100 equally spaced points between x1 and x2.
% OR
% linspace(x1,x2,N) - Creates a row vector of N equally spaced points between x1 and x2.
% 
% What are arrays?
% An array is a structure that holds multiple values of the same data type.
% 	The values in an array can be arranged in
% 		• One Dimension (called a vector)
% 			§ This is a single row or a single column.
% 		• Two Dimensions (called a matrix)
% 			§ Multiple rows and columns.
% 		• Higher Dimensions (three or more)
% 			§ Multiple rows, columns, layers, etc.
% 	
% 	Arrays can store multiple values in one variable, as long as they are the same data type.
% 	Arrays can also be operated based on individual elements, groups of elements, or the entire array.
% 	Finally, they help us streamline coding using array-based (vectorized) operations.
% 	
% Scalars have a single value associated with them, while arrays have multiple values associated with them.
% Matrices are one or two-dimensional arrays.
% Vectors are one-dimensional matrices.
