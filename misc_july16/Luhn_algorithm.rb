def lune('0023002400450012')
		return false unless input.match(/\d/)
		input.to_s.split(//).reverse.map(&:to_i).map.with_index do |n, i|
				(i + 1).even? ? (n + 2 > 9 ? (n * 2 - 9) : n * 2): n
		end.inject(0){ |s, n| s + n }	% 10 == 0
end