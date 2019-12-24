"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = _default;

var _path = require("path");

var _fs = require("fs");

const CSS_EXTNAMES = ['.css', '.less', '.scss', '.sass'];

function _default(baseDir, fileNameWithoutExtname) {
  for (var _i = 0, _CSS_EXTNAMES = CSS_EXTNAMES; _i < _CSS_EXTNAMES.length; _i++) {
    const extname = _CSS_EXTNAMES[_i];
    const fileName = `${fileNameWithoutExtname}${extname}`;
    const absFilePath = (0, _path.join)(baseDir, fileName);

    if ((0, _fs.existsSync)(absFilePath)) {
      return absFilePath;
    }
  }

  return null;
}