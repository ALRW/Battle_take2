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
  scenario 'player 1\'s attack reduces player 2\'s health' do
    click_button('Attack')
    click_button('Return to the battle')
    expect(page).to have_content("Batman's HP: 90")
  end
  describe 'Switching turns' do
      context 'we can see the current turn' do
        scenario 'At the start of the game it is player 1\'s turn' do
          expect(page).to have_content("It is Pikachu's turn")
        end
      end
      context 'player 1 has taken their turn' do
        scenario 'it should be player 2\'s turn' do
          click_button('Attack')
          click_button('Return to the battle')
          expect(page).to have_content("It is Batman's turn")
        end
      end
  end

end
