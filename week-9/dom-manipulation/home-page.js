// DOM Manipulation Challenge


// I worked on this challenge [with: Tal Schwartz].


// Add your JavaScript calls to this page:

// Release 0:




// Release 1:

document.getElementById("release-0").className += "done";


// Release 2:

document.getElementById("release-1").style.display = "none";


// Release 3:

document.getElementsByTagName("H1")[0].innerHTML = "I completed release 2";


// Release 4:

document.getElementById("release-3").style.backgroundColor = "#955251";



// Release 5:
var x = document.getElementsByClassName("release-4");
var i;
for (i = 0; i< x.length; i++) {
    x[i].style.fontSize = "2em";
}

//Release 6:
var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));

//Reflection:

// What did you learn about the DOM?
// The first thing I learned about DOM, is the ability to manipulate objects across different languages. Until now, we haven't used JS to manipulate and HTML page. This presents a whole new realm of possibility. Specifically in this challenge, we learned syntax of calling DOM manipulation through JavaScript. We looked into targeting by ID, Class and Tag during this challenge. We then determined which elements we wanted to change, and executed those changes through this JS file.

// What are some useful methods to use to manipulate the DOM?
// Selecting by Id, Class and Tag are very powerful methods while manipulating HTML DOM through JS. "getElementById", "getElementByClass" and "getElementsByTagName" are all used to find a particular element by be manipulated. We also looked into the addition of a <template> tag within a website, that can be unlocked through JS.

