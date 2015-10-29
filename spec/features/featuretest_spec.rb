feature 'Battle!' do
  before do
    sign_and_play
  end
  scenario 'enter player names'do
    expect(page).to have_content("Pikachu vs Batman")
  end
  scenario 'player 1 can see player2\'s hitpoints' do
    expect(page).to have_content("Batman's HP: 100")
  end
  scenario 'player 1 attacks player 2' do
    click_button('Attack')
    expect(page).to have_content('Pikachu does a MASSIVE attack on Batman')
  end
end
