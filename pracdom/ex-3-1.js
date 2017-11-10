var passage = document.getElementById("passage");
var wordCount = document.getElementById("count");

var countLength = passage.innerHTML.length;
var textNode = document.createTextNode("Word count is " + countLength);
wordCount.appendChild(textNode);

