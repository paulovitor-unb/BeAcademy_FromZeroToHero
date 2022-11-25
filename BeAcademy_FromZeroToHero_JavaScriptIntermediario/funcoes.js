/* IIFE -> Immediately Invoked Function Expression */
(function helloWorld() {
    // alert("Hello, world!");
})();

(function (message) {
    // alert(message);
})("Hello, world!");

/* Arrow functions */
/* function sum(a) {
    return a + 10;
} */

/* const sum = (a) => {
    return a + 10;
} */
const sum = (a) => a + 100;

// console.log(sum(3))

// exemplo com map()
const materials = ["Hydrogen", "Helium", "Lithium", "Beryllium"];

/* const newArray = materials.map(function showLength(material) {
    return material.length;
}); */

const newArray = materials.map((material) => material.length);
// console.log(newArray);
