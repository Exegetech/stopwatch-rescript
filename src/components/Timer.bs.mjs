// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Digit from "./Digit.bs.mjs";
import * as Formatter from "../utils/Formatter.bs.mjs";
import * as JsxRuntime from "react/jsx-runtime";

function Timer(props) {
  var time = props.time;
  var d1 = Formatter.formatD1(time);
  var d2 = Formatter.formatD2(time);
  var d3 = Formatter.formatD3(time);
  return JsxRuntime.jsxs("div", {
              children: [
                JsxRuntime.jsx(Digit.make, {
                      digit: d1,
                      className: "w-40"
                    }),
                JsxRuntime.jsx(Digit.make, {
                      digit: ":",
                      className: "w-8"
                    }),
                JsxRuntime.jsx(Digit.make, {
                      digit: d2,
                      className: "w-40"
                    }),
                JsxRuntime.jsx(Digit.make, {
                      digit: ":",
                      className: "w-8"
                    }),
                JsxRuntime.jsx(Digit.make, {
                      digit: d3,
                      className: "w-40"
                    })
              ]
            });
}

var make = Timer;

export {
  make ,
}
/* Digit Not a pure module */
