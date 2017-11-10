var paragraph = document.createElement("p");
var textNode = document.createTextNode("テキストの例");
// paragraphの子ノードとして、textNodeを追加する
paragraph.appendChild(textNode);
// <p>テキストの例</p>

var myIdElement = document.getElementById("myId");
// div#myId の子ノードとして、paragraphを追加する。(テキストだけでなく、要素も追加出来る。)
myIdElement.appendChild(paragraph);
// <div id="myId">
//   <p>テキストの例</p>
// </div>
//

console.log(paragraph.innerHTML);
paragraph.innerHTML = '<i id="i" >was writtern </i>';
paragraph.innerHTML = "";
