var createLogText = function(text, index){
	var li = document.createElement("li");
        var p = document.createElement("p");
        var logText = document.createTextNode(text);
        p.appendChild(logText);

        li.appendChild(p);
	if(index %2 == 0){
		li.setAttribute("class", "saki");	
	}else{
		li.setAttribute("class", "miki");
	}

        return li;
}

var logTexts = Immutable.List.of(
	"「あなたは咲さんですか。美樹です。」",
	"「はい。咲と呼んでください。」",
	"「咲さんは柔道部員ですか。」",
	"「はい、そうです。」"
);

var log = document.getElementById("log");
var ul = document.createElement("ul");

logTexts.reverse().map(function(text, index){
	return createLogText(text, index);
}).forEach(function(li){
	ul.appendChild(li);
});

log.appendChild(ul);

