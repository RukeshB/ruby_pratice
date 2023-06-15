class Player
  # function to draw a card
  def draw_card
    card = Card.new
    cards = card.cards
    card_types = card.card_types

    picked_card = {}
    card_random_value = rand(0...cards.length).floor
    type_random_value = rand(0...card_types.length).floor

    picked_card[:card] = (card.cards[card_random_value])
    picked_card[:type] = (card_types[type_random_value])
    picked_card[:card_value] = card_random_value + 2
    picked_card[:color] = card.find_card_color(card_types[type_random_value])

    picked_card
  end
end
