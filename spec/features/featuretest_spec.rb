feature 'Fill in the names' do
  scenario 'enter player names'do
    visit('/')
    fill_in('player1', with: "Pikachu")
    fill_in('player2', with: "Batman")
    click_button('Submit')
    expect(page).to have_content("Pikachu vs Batman")
  end
end
