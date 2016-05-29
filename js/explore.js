
//Write a function that will reverse a string

function reverseString(str) {
  //Create an empty string that will store the reverse string
	var newString = "";
	// iterating through the string and reversing it while storing the new data into the new string variable
	for (var i = str.length - 1; i >= 0; i--) {
		newString += str[i];
	}
  //returns the new data
	return newString;
}
//driver code to test string
reverseString('hello');
