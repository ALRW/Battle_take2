feature 'Battle!' do
  before do
    visit('/')
    fill_in('player1', with: "Pikachu")
    fill_in('player2', with: "Batman")
    click_button('Submit')
  end
  scenario 'enter player names'do
    expect(page).to have_content("Pikachu vs Batman")
  end
  scenario 'player 1 can see player2\'s hitpoints' do
    expect(page).to have_content("Batman's HP: 100")    
  end
end
