// madLib
// Write a function that takes three strings - a verb, an adjective,
// and a noun - uppercases and interpolates them into the sentence
// "We shall VERB the ADJECTIVE NOUN". Use ES6 template literals.
//
// For example,
//
// > madLib('make', 'best', 'guac');
// "We shall MAKE the BEST GUAC."
function madLib(verb, adj, noun) {
  return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`;
}
// console.log(madLib('make', 'best', 'guac'));

//
// isSubstring
// Input
// A String, called searchString.
// A String, called subString.
function isSubstring(searchString, subString) {
  return searchString.includes(subString);
}
console.log(isSubstring("time to program", "time"));
console.log(isSubstring("Jump for joy", "joys"));
// Output: A Boolean. true if the subString is a part of the searchString.
//
// > isSubstring("time to program", "time")
// true
//
// > isSubstring("Jump for joy", "joys")
// false
