@react.component
let make = (~time) => {
  let d1 = Formatter.formatD1(time)
  let d2 = Formatter.formatD2(time)
  let d3 = Formatter.formatD3(time)

  <div>
    <Digit className="w-40" digit={d1} />
    <Digit className="w-8" digit={":"} />
    <Digit className="w-40" digit={d2} />
    <Digit className="w-8" digit={":"} />
    <Digit className="w-40" digit={d3} />
  </div>
}

