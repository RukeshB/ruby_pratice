# "1. Write a card game using OOP concept that takes number of players as input.
# Each player will be dealt 3 random cards which should be displayed as follows:
#
# Player 1: 3 of Hearts, 2 of Clubs, Jack of Spades
# Player 2: …
# Player 3: …
#
# Display who won the game: Player X won!
#
# Tips: Make a game, card and player class
# "

require_relative './Player.rb'
require_relative './Card.rb'

class Game
  attr_accessor :card, :total_player, :player, :card_per_player

  def initialize(card, player, card_per_player = 3, total_player = 3)
    @card = card
    @player = player
    @total_player = total_player
    @card_per_player = card_per_player
  end

  # main function
  def play
    taken_card = []
    scores = []
    highest_card = []
    high_card = 0

    @total_player.times do |index|
      player_card = []
      player_high_score = 0
      print "Player #{index + 1} : "
      @card_per_player.times do
        draw_card = @card.is_taken_card(taken_card, player)
        player_card.push(draw_card)
        taken_card.push(player_card)
        if player_high_score < draw_card[:card_value] # to find the bigger card of a player
          player_high_score = draw_card[:card_value]
        end
        print "#{draw_card[:card]} of #{draw_card[:type]}, "
      end

      if high_card < player_high_score # to store the player index having bigger card from all draw cards
        highest_card = []
        high_card = player_high_score
        highest_card << index
      elsif high_card == player_high_score # if 2 player have same bigger card from all draw cards
        highest_card << index
      end
      puts ""
      patterns_point = check_patterns(player_card)
      # pattern_point[index] = check_patterns(player_card)

      scores << calculate_score(patterns_point, player_card)
    end
    puts select_winner(scores, highest_card)
  end

  # function to calculate total score of a player
  def calculate_score(patterns_point, selected_cards)
    card_point = 0
    selected_cards.map { |card| card_point += card[:card_value] }

    card_point + patterns_point
  end

  # function to select a winner base on the total score
  def select_winner(scores, highest_card)
    greater_score = 0

    highest_card.each do |index| # to give 20 point to all player having bigger card from draw card
      scores[index] += 20
    end

    scores.each do |score|
      if score > greater_score
        greater_score = score
      end
    end

    p scores
    "Draw" if(scores.count(greater_score))
    "player #{scores.index(greater_score)+1} Won!"
  end

  # function to check the patterns of a card
  def check_patterns(selected_cards)

    same_card, same_color, same_type, sequence = 0, 0, 0, 0

    cards_value = selected_cards.map { |element| element[:card_value] }.sort

    @card_per_player.times do |index_1|

      @card_per_player.times do |index_2|
        same_card += 1 if (selected_cards[index_1][:card] == selected_cards[index_2][:card])
        same_color += 1 if (selected_cards[index_1][:color] == selected_cards[index_2][:color])
        same_type += 1 if (selected_cards[index_1][:card_types] == selected_cards[index_2][:card_types])
      end

      if (index_1 + 1) < @card_per_player # to make sure don't overflow
        if cards_value[index_1] == 14  #when player have ace
          if (14 - cards_value[index_1 + 1]).abs == 1 || (1 - cards_value[index_1 + 1]).abs == 1
            sequence += 1
          end
        elsif cards_value[index_1 + 1] == 14  #when player have ace
          if (cards_value[index_1] - 14).abs == 1 || (cards_value[index_1] - 1).abs == 1
            sequence += 1
          end
        else  # when player don't have ace
          if (cards_value[index_1] - cards_value[index_1 + 1]).abs == 1
            sequence += 1
          end
        end
      end

      # assign a point base on card patterns
      if same_card == 3
        return 1000
      elsif sequence == 2 && same_type == 3
        return 900
      elsif sequence == 2 && index_1 == @card_per_player
        return 700
      elsif same_color == 3
        return 500
      elsif same_card == 2
        return 100
      end

      same_card, same_type, same_color = 0, 0, 0
    end

     0
  end
end

total_player , total_draw = 3, 3
game = Game.new(Card.new, Player.new, total_draw, total_player)
game.play
# game.calculate_score(1,Card.new.cards)

