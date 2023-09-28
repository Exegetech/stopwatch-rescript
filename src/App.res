@react.component
let make = () => {
  let (isActive, setIsActive) = React.useState(() => false)
  let (isPaused, setIsPaused) = React.useState(() => true)
  let (time, setTime) = React.useState(() => 0)

  React.useEffect1(() => {
    let interval: ref<option<intervalId>> = ref(None)

    switch (isActive, isPaused) {
      | (true, false) => {
        let id = setInterval(() => {
          setTime((time) => time + 10)
        }, 10)

        interval := Some(id)
      }
      | _ => {
        switch interval.contents {
          | Some(interval) => {
            clearInterval(interval)
          }
          | _ => {
            ()
          }
        }
      }
    }

    Some(() => {
      switch interval.contents {
        | Some(interval) => {
          clearInterval(interval)
        }
        | _ => {
          ()
        }
      }
    })
  }, [isActive, isPaused])

  let handleStart = (_e) => {
    setIsActive((_prev) => true)
    setIsPaused((_prev) => false)
  }

  let handlePauseResume = (_e) => {
    setIsPaused((_prev) => !isPaused)
  }

  let handleReset = (_e) => {
    setIsActive((_prev) => false)
    setTime((_prev) => 0)
  }

  <div className=`
    mt-32
    container
    mx-auto
    flex
    flex-row
    justify-center
  `>
    <div className=`
      h-80
      bg-red-500
      rounded-xl
      text-white
      flex
      flex-col 
      justify-between
      p-8
    `>
      <Timer time=time />

      <Controls
        isActive={isActive}
        isPaused={isPaused}
        onStartClick={handleStart}
        onResetClick={handleReset}
        onPauseResumeClick={handlePauseResume}
      />
    </div>
  </div>
}
