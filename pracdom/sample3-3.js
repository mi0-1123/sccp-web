// <p>text</p> のノードを作るための関数。
function createParagraph(text) {
    var paragraph = document.createElement("p");
    var textNode = document.createTextNode(text);
    paragraph.appendChild(textNode);
    return paragraph;
}

var messageTexts = Immutable.List(["Hello.", "How are you?", "I'm Fine!"]);

var messages = document.getElementById("messages");

// "Hello." - (createParagraph) -> <p>Hello.</p> - (append) -> 
// <div id="messages">
//   <p>Hello.</p>
// </div>
messageTexts.map(createParagraph).forEach(function (message) {
    messages.appendChild(message);
});
