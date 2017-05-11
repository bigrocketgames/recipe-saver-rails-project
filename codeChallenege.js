// hoisting

// function hoisting() {
//   console.log(a);
//   console.log(daFirstHoist);
//   console.log(daSecondHoist());

//   var a = a;
//   function daFirstHoist() {
//     return "The first hoist";
//   }
//   var daSecondHoist = function() {
//     return "The second hoist";
//   }
// }

// hoisting();
// // undefined
// // "The first hoissssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssst"
// // Type Error

// function hoisting() {
//   var a
//   function daFirstHoist() {
//     return "The first hoist";
//   }
//   var daSecondHoist
//   console.log(a);
//   console.log(daFirstHoist);
//   console.log(daSecondHoist);

//   a = a;
//   daSecondHoist = function() {
//     return "The second hoist";
//   }
// }


// var hero = "Megaman"
// var game {
//   hero: "Link",
//   properties: {
//     hero: "Zelda",
//     getHeroName: function() {
//       return this.hero
//     }
//   }
// }

// var logHeroName = game.properties.getHeroName;
// console.log(game.properties.getHeroName()); //
// console.log(logHeroName()); //