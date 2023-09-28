@react.component
let make = (
  ~isActive,
  ~isPaused,
  ~onStartClick,
  ~onResetClick,
  ~onPauseResumeClick,
) => {
  let startButton = (
    <Button
      className=`
        bg-sky-400
        text-white
        hover:bg-sky-500
        hover:shadow-md
      `
      text="Start"
      onClick={onStartClick}
    />
  )

  let activeButtons = (
    <div className="flex justify-between gap-2">
      <Button
        className=`
          bg-yellow-400
          text-white
          hover:bg-yellow-500
          hover:shadow-md
        `
        text="Reset"
        onClick={onResetClick}
      />

      <Button
        className=`
          bg-gray-400
          text-white
          hover:bg-gray-500
          hover:shadow-md
        `
        text={
          {switch isPaused {
            | true => "Resume"
            | _ => "Pause"
          }}
        }
        onClick={onPauseResumeClick}
      />
    </div>
  )

  <div className="mx-auto">
    {isActive ? activeButtons : startButton}
  </div>
}

