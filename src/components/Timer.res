@react.component
let make = (~time) => {
  let d1 = Formatter.formatD1(time)
  let d2 = Formatter.formatD2(time)
  let d3 = Formatter.formatD3(time)

  <div>
    <span>{React.string(d1)}</span>
    <span>{React.string(d2)}</span>
    <span>{React.string(d3)}</span>
  </div>
}

