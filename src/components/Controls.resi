@react.component
let make: (
  ~isActive: bool,
  ~isPaused: bool,
  ~onStartClick: (JsxEvent.Mouse.t) => unit,
  ~onResetClick: (JsxEvent.Mouse.t) => unit,
  ~onPauseResumeClick: (JsxEvent.Mouse.t) => unit,
) => Jsx.element
