class KriyaTool
  
  SEQUENCES = {
    :spinal_warmup_series_with_meditation => [
      "get ready to begin: 20 seconds",
      "hands on ankles, lower back flexes: 2 minutes",
      "sufi grind right: 1 minute",
      "switch directions: 1 minute",
      "hands on shoulders, inhale swing left, exhale swing right: 2 minutes",
      "hands on knees, upper back flexes: 2 minutes",
      "shoulder shrugs: 2 minutes",
      "neck rotate right: 1 minute",
      "switch directions: 1 minute",
      "legs straight forward, stretch down on exhale: 2 minutes",
      "spread legs, stretch toward center: 2 minutes",
      "spread legs, stretch alternating left and right: 2 minutes",
      "lay on your left side, right knee to the ground in front of you, look back over right and bring right hand to the floor behind you: 1 minute",
      "switch sides: 1 minute",
      "okay, now just relax for 7 minutes: 7 minutes",
      "get ready for meditation: 20 seconds",
      "starting eleven minute meditation timer now: 11 minutes",
      "you're done: 20 seconds",
    ]
    :some_sat_kriya => [
      "get ready: 10 seconds",
      "sat kriya for four minutes: 4 minutes"
    ] 
  }
  
  def self.play(name)
    array = SEQUENCES[name.to_sym]
    array.each do |x|
      command, timestring = x.split(': ')
      duration = timestring.split(' ')[0].to_i.send(timestring.split(' ')[1])
      `say "#{command}"`
      sleep duration.to_i
      `say "stop"`
      sleep 3
    end
  end
  
  
end