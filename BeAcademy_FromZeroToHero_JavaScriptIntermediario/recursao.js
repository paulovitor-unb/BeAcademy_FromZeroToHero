/* Recursion */
function countDown(number) {
    console.log(number);
    const newNumber = number - 1;
    if (newNumber > 0) {
        countDown(newNumber);
    }
}

// countDown(10);

/* Default parameters */
function say(message = "Hi") {
    // console.log(message);
}

say(); // "Hi"
say("Hello"); // "Hello"
