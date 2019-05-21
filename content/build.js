#!/usr/bin/env node
var file =
  process
    .argv[2];
var mdinclude = require("mdinclude");
var result = mdinclude.readFileSync(
  file
);
console.log(
  result
);
