require_relative 'lib/kriya_tool'

case ARGV[0]
when "spine"
  KriyaTool.play(:spinal_warmup_series_with_meditation)
when nil
  KriyaTool.play('some_sat_kriya')
when "2"
  KriyaTool.play_twos
end


