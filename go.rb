require 'lib/kriya_tool'

case ARGV[0]
when nil
  KriyaTool.play('some_sat_kriya')
when "2"
  KriyaTool.play_twos
end


