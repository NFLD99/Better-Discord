var pathInput = "D:/Better-Discord/Source_Code/Master_Code.css";
var pathTempOutput = "D:/temp.txt"
var pathOutput = "D:/Better-Discord/ChangeLog.txt"
const _fs = require("fs");
var text = _fs.readFileSync(pathInput, "utf8");
var match = null, rx = /(?:__(.*?)__.*?)+/g, res = [];
while(match = rx.exec(text)) res.push(match[1]);
_fs.writeFileSync(pathTempOutput, res.join("\r\n"));

var text = _fs.readFileSync(pathTempOutput, "utf8");
var matchp = null, rx = /[+-]\s(.*)+/g, res = [];
while(matchp = rx.exec(text)) res.push(matchp[1]);
_fs.writeFileSync(pathOutput, res.join("\r\n"));

