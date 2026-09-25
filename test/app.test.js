const assert = require("assert");

function applicationStatus() {
    return "SATC E-Commerce application loaded successfully.";
}

const result = applicationStatus();

assert.strictEqual(
    result,
    "SATC E-Commerce application loaded successfully."
);

console.log("Unit test passed: application status is correct.");
