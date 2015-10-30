feature 'Battle!' do
  before do
    sign_and_play
  end
  scenario 'enter player names'do
    expect(page).to have_content("Pikachu vs Batman")
  end

  scenario 'you can see player2\'s hitpoints' do
    expect(page).to have_content("Batman's HP: 100")
  end

  scenario 'you can see player1\'s hitpoints' do
    expect(page).to have_content("Pikachu's HP: 100")
  end

  scenario 'player 1\'s attack reduces player 2\'s health and gives confirmation' do
    click_button('Attack')
    expect(page).to have_content('Pikachu does a MASSIVE attack on Batman')
    click_button('Return to the battle')
    expect(page).to have_content("Batman's HP: 90")
  end

  scenario 'player 2\'s attack reduces player 1\'s health and gives confirmation' do
    click_button('Attack')
    click_button('Return to the battle')
    click_button('Attack')
    expect(page).to have_content('Batman does a MASSIVE attack on Pikachu')
        click_button('Return to the battle')
    expect(page).to have_content("Pikachu's HP: 90")
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
  scenario 'Player runs out of hitpoints' do
    19.times do
      click_button('Attack')
      click_button('Return to the battle')
    end
    expect(page).to have_content("Batman Loses!")
  end
end
