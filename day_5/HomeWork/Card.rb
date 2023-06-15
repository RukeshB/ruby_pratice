class Card
  attr_reader :cards, :card_types, :card_color

  def initialize
    @cards = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "jack", "queen", "king", "ace"]
    @card_types = ["Heart", "Clubs", "Spades", "diamonds"]
  end

  # function to find a color of drawn card
  def find_card_color(card_type)
    if card_type == "Heart" || card_type == "diamonds"
      "Red"
    else
      "Black"
    end
  end

  # function to check if card is already drawn or not
  def is_taken_card(taken_card, player_obj)
    draw = player_obj.draw_card
    taken_card.each do |player|
      player.each do |card|
        if card == draw
          draw = player_obj.draw_card
          return is_taken_card(taken_card, player_obj)
        end
      end
    end

    draw
  end

end