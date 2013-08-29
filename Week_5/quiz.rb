Quiz:

1. The ability to perform a background request and update the HTML page in-place with the response relies on:

  - (i) JavaScript
  - (ii) The browser making the DOM available to JavaScript
  - (v) XmlHttpRequest

2. When using JavaScript for client-side form validation, which is NOT true?

  - It reduces work for the server, since the server doesnt have to repeat validations already performed by JavaScript

3. Given the following JavaScript code:

		var square = {
		  side: 5, 
		  area: function() { 
		    return this.side*this.side;
		  }
		};
   Which of the following expressions evaluates to 25?

  - (ii) square.area()
  - (iii) var p = {side: 5, __proto__: square}; p.area()
  - (iv) square.area.call({side: 5}) 

4. Which of the following BEST describes why one would want to "minify" JavaScript?

  - To compress JavaScript code for faster page load times

5. Which of the following is/are true regarding JavaScript's prototype inheritance?

  - (i) It can be used to mimic class inheritance
  - (ii) If a property of an object does not exist, this property is checked for up the prototype chain 

6. The Rails ActiveRecord caching machinery nicely separates the logic for cache expiration from the rest of the app by adding ActiveRecord hooks to expire stale data. This is an example of effective use of the ---- design pattern.

  - Observer        