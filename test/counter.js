const Counter = artifacts.require("Counter");

contract('Counter Test', () => {
    it("Is Contract Deployed", async() => {
        const counter = await Counter.deployed();
        assert(counter.address !== '', "Invalid contract address");
    });

    it("Set value for counter", async() => {
        const counter = await Counter.deployed();

        const value = await counter.incremenntCounter(10)
        assert(value, 10, "Invalid value");
    });
})