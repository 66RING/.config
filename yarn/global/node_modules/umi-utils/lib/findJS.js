"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = _default;

var _path = require("path");

var _fs = require("fs");

const JS_EXTNAMES = ['.js', '.jsx', '.ts', '.tsx'];

function _default(baseDir, fileNameWithoutExtname) {
  for (var _i = 0, _JS_EXTNAMES = JS_EXTNAMES; _i < _JS_EXTNAMES.length; _i++) {
    const extname = _JS_EXTNAMES[_i];
    const fileName = `${fileNameWithoutExtname}${extname}`;
    const absFilePath = (0, _path.join)(baseDir, fileName);

    if ((0, _fs.existsSync)(absFilePath)) {
      return absFilePath;
    }
  }

  return null;
}