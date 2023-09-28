@react.component
let make = (~digit, ~className) => {
  let className = `
    inline-block
    text-9xl
  ` ++ className
  <span className={className}>{React.string(digit)}</span>
}

