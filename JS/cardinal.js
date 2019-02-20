function toggleOpenClose(anchorid,classname,wrapper) {
	
	var element = document.getElementById(anchorid);
	var wrapper = document.getElementById(wrapper);
	console.log(element);
	console.log(wrapper);
		wrapper.classList.toggle(classname);
		element.classList.toggle("open");
}

function triggerOpener(quest,npc,money) {
	if(quest==1) {

		document.getElementById("q-outerwrapper").classList.toggle("trigger");
		document.getElementById("opener-quest").classList.toggle("open");
	}
	if(npc==1) {

		document.getElementById("nsc-outerwrapper").classList.toggle("trigger");
		document.getElementById("opener-npc").classList.toggle("open");
	}
	if(money==1) {

		document.getElementById("gold-outerwrapper").classList.toggle("trigger");
		document.getElementById("opener-money").classList.toggle("open");
	}
}