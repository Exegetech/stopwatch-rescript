@react.component
let make = (
  ~isActive,
  ~isPaused,
  ~onStartClick,
  ~onResetClick,
  ~onPauseResumeClick,
) => {
  let startButton = (
    <button
      className="inline-block rounded-md px-4 py-2 text-sm text-gray-500 hover:text-gray-700 focus:relative"
      onClick={onStartClick}
    >
      {React.string("Start")}
    </button>
  )

  let activeButtons = (
    <>
      <button
        className="inline-block rounded-md px-4 py-2 text-sm text-gray-500 hover:text-gray-700 focus:relative"
        onClick={onResetClick}
      >
        {React.string("Reset")}
      </button>

      <button
        className="inline-block rounded-md px-4 py-2 text-sm text-gray-500 hover:text-gray-700 focus:relative"
        onClick={onPauseResumeClick}
      >
        {switch isPaused {
          | true => React.string("Resume")
          | _ => React.string("Pause")
        }}
      </button>
    </>
  )

  <div className="inline-flex rounded-lg border border-gray-100 bg-gray-100 p-1">
    {isActive ? activeButtons : startButton}
  </div>
}

