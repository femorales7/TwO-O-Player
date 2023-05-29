class Game 

  def initializacion (player1, player2)
    @players = [player1, player2]
    @current_player = player1
  end

  def start
    while !game_over?
      question = Question.new
      puts "------ New Turne -----"
      puts "#{current_player}: #{question.ask_question}"
      answer = gets.chomp.to_i

      if question.correct_answer?(answer)
        puts "Correct answer!"
        current_player.increment_score
      else 
        puts "Wrong anser"
        current_player.decrement_lives
      end

      private

      attr_reader :players
      attr_accessor :current_player

      def switch_player
        @current_player = (current_player == players[0] ? players[1] : players[0])        
      end

      def game_over?
        players.any? {|player| player.lives_remaining.zero?}
      end

      def display_score
        puts "Scores"
        players.each do |player|
          puts "#{player}: #{player.score} points, #{player.lives_remaining} lives}"
        end
      end

      def announce_winner
        winner = players.find {|player| player.lives_remaining.positive?}
        loser = players.find {|player| player == winner}
        puts "----- Gamer Over -----"
        puts "#{winner} wins with a score of #{winner.score}! #{loser} scored #{loser.score}"
      end

    end
