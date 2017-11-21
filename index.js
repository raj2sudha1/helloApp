process.title="HelloApp"
console.log("Hello World new");

//TODO : test the below code for npm stop command
//process.on('SIGINT', console.log("SignOut from HelloApp"));

// Prevents the program from closing instantly
process.stdin.resume();

