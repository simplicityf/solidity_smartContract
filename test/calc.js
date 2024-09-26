const Calculate = artifacts.require("Calculate");

contract ('Calculate', () => {
    it ("Should Deploy Smart Contract", async() => {
        const calculate = await Calculate.deployed();
        // console.log(calculate.address);
        assert(calculate.address !== '', "Invalid contract address");
    });

    it ('Adding Value', async() => {
        const calculate = await Calculate.deployed();
         const setvalue = await calculate.setValue('10');

         console.log(setvalue);
         assert(setvalue, '10', 'Not the correct value');
        const getvalue = await calculate.getValue();
        console.log(getvalue);
        await assert.equal(getvalue, '10', 'Not the correct value');
    });
    
    it ('Setting Value for Addition, subtraction, multiplication, and division ', async() => {
        const calculate = await Calculate.deployed();

        const addition = await calculate.addition('20');
        assert(addition, '20', 'not the correct input value');
        const subtraction = await calculate.subtraction('5');
        assert(subtraction, '5', 'not the correct input value');
        const division = await calculate.division('10');
        assert(division, '10', 'not the correct input value');
        const multiplication = await calculate.multiplication('30');
        assert(multiplication, '30', 'not the correct input value');
    });

    // it("getting value", async () => {
    //     const calculate = await Calculate.deployed();

    //     await calculate.setValue(10);
    //     const value = await calculate.getValue();
    //     assert.equal(value.toString(), '10', "The value was not set correctly");
    //     // const addition = await calculate.addition('20');

    //     // const get = await calculate.getValue()
    //     // assert(get, '30', 'not the correct addition value');
    // })
});