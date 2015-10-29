def sign_and_play
  visit('/')
  fill_in('player1', with: "Pikachu")
  fill_in('player2', with: "Batman")
  click_button('Submit')
end
