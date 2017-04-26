window.addEventListener("load", event => {
	console.log("Page loaded");
	var p = document.createElement("p");
	var text = document.createTextNode("Hello world !");
	p.appendChild(text);
	document.body.appendChild(p);
});
