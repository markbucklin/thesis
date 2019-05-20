var mdinclude = require('mdinclude');
var result = mdinclude.readFileSync('body.md');
sys.write.stdout(result.toString)
