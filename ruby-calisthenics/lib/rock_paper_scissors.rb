class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError
# RockPaperScissors::NoSuchStrategyError with "Strategy must be one of R,P,S"
  end

  def self.winner(player1, player2)
    choices = /[RPS]/
    p1 = player1[1]
    p2 = player2[1]
    print p1
    print p2
    raise RockPaperScissors::NoSuchStrategyError,"Strategy must be one of R,P,S" unless (p1 =~ choices) && (p2 =~ choices)

    if (p1 == p2) || (p1 == 'P' && p2 == 'R') || (p1 == 'R' && p2 == 'S') || (p1 == 'S' && p2 == 'P')
	return player1
    else
	return player2
    end
  end

  def self.tournament_winner(tournament)
    if (tournament[0][0].is_a? String)
	self.winner(tournament[0], tournament[1])
    else
	self.tournament_winner(
		[self.tournament_winner(tournament[0]),
		 self.tournament_winner(tournament[1])]
		)
    end
  end

end
