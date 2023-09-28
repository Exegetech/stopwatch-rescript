@react.component
let make: (
  ~className: string,
  ~text: string,
  ~onClick: (JsxEvent.Mouse.t) => unit,
) => Jsx.element
