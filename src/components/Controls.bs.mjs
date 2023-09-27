// Generated by ReScript, PLEASE EDIT WITH CARE

import * as JsxRuntime from "react/jsx-runtime";

function Controls(props) {
  var startButton = JsxRuntime.jsx("button", {
        children: "Start",
        className: "inline-block rounded-md px-4 py-2 text-sm text-gray-500 hover:text-gray-700 focus:relative",
        onClick: props.onStartClick
      });
  var activeButtons = JsxRuntime.jsxs(JsxRuntime.Fragment, {
        children: [
          JsxRuntime.jsx("button", {
                children: "Reset",
                className: "inline-block rounded-md px-4 py-2 text-sm text-gray-500 hover:text-gray-700 focus:relative",
                onClick: props.onResetClick
              }),
          JsxRuntime.jsx("button", {
                children: props.isPaused ? "Resume" : "Pause",
                className: "inline-block rounded-md px-4 py-2 text-sm text-gray-500 hover:text-gray-700 focus:relative",
                onClick: props.onPauseResumeClick
              })
        ]
      });
  return JsxRuntime.jsx("div", {
              children: props.isActive ? activeButtons : startButton,
              className: "inline-flex rounded-lg border border-gray-100 bg-gray-100 p-1"
            });
}

var make = Controls;

export {
  make ,
}
/* react/jsx-runtime Not a pure module */