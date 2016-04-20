class helloTypescript{
	constructor(){
		console.log("This is Typescript code (automatically compiled)");
	}

	sayHello() : void{
		console.log("I'm also Typescript code. A class method.");
	}
}

var t : helloTypescript = new helloTypescript();
t.sayHello();