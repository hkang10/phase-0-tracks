var words = ["one", "two", "three", "four", "five"]

function longestWord(word) {
  var words = "";
  for (var i=0; i < word.length; i++){
    if (word[i].length > words.length){
      words = word[i]
    }
  }
  return words;
}


function KeyValue(name, age){
  
}

console.log(longestWord(words));
