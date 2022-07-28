const fs = require("fs");

(async () => {
  const fibonacciWASM = fs.readFileSync("./fibonacci.wasm");

  const fibonacci = await WebAssembly.instantiate(
    new Uint8Array(fibonacciWASM),
  ).then((res) => res.instance.exports);
  console.log(fibonacci.fibonacci(10));
})();
