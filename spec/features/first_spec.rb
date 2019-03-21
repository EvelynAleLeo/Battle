feature 'Our app starts' do
  scenario 'When going to homepage show content' do
    visit('/')
    expect(page).to have_content 'Hello'
  end
end
