var words = ["one", "two", "three", "four", "five"]
var words2 = ["News", "Documentary", "Variety", "Life"]

function longestWord(word) {
  var words = "";
  for (var i=0; i < word.length; i++){
    if (word[i].length > words.length){
      words = word[i]
    }
  }
  return words;
}

//Variables for Release 1 function to compare.
var name1 = {name: "Audrey", age: 32}
var name2 = {name: "Bob", age: 25}
var name3 = {name: "Audrey", age: 25}
var name4 = {name: "Tom", age: 32}

//Release 1 function which compares the two objects to find if information matches (true) or if they dont(false)
function KeyValue(name, age){
  for (key in name){
    if (typeof name[key] !== 'function'){
      if (typeof age[key] != 'undefined'){
        if (name[key] == age[key]){
          return true;
        }
      }
    }
  }
  return false;
}


//Driver codes
//Release 0
console.log(longestWord(words))
console.log(longestWord(words2))

//Release 1
console.log(KeyValue(name1, name3))
console.log(KeyValue(name2, name3))

//Release 2
