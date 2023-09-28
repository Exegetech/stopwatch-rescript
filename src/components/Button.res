@react.component
let make = (
  ~className,
  ~text,
  ~onClick,
) => {
  let className = `
    rounded-md
    py-4
    px-8
    text-5xl
    w-64
  ` ++ className

  <button
    className={className}
    onClick={onClick}
  >
    {React.string(text)}
  </button>
}

