feature 'Players enter names' do
  scenario 'When going to homepage show content' do
    visit('/')
    expect(page).to have_content 'player 1'
  end

  scenario 'Allow players to enter their names and see them on screen' do
    visit('/')
    fill_in 'player1', with: 'Nacho'
    fill_in 'player2', with: 'Evelyn'
    click_button 'Submit'
    expect(page).to have_content 'Nacho'
    expect(page).to have_content 'Evelyn'
  end
end
