function toggleOpenClose(anchorid,open,close,wrapper) {
	
	var element = document.getElementById(anchorid);
	var wrapper = document.getElementById(wrapper);
	console.log(element);
	if (wrapper.classList.contains(open)) {
		wrapper.classList.remove(open);
		wrapper.classList.add(close);
		element.classList.remove("icon-down-open");
		element.classList.add("icon-up-open");
		element.classList.remove("open");
		element.classList.add("close");

	}
	else {
		wrapper.classList.remove(close);
		wrapper.classList.add(open);
		element.classList.remove("icon-up-open");
		element.classList.add("icon-down-open");
		element.classList.remove("close");
		element.classList.add("open");
	}
}