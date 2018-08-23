# describe "Homepage", type: :feature do
#   it "goes to the home page" do
#     visit '/'
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end

feature "The page loads" do
  scenario "gone to page" do
    visit("/")
    expect(page).to have_field("p1_name")
    expect(page).to have_field("p2_name")
  end
end

feature "You can enter names" do
  scenario "enter two names" do
    sign_in_and_play

    expect(page).to have_content("Player 1: Bob")
    expect(page).to have_content("Player 2: Jim")
  end
end

feature "it shows relevant information after names entered" do
  before do
    sign_in_and_play
  end
  it "finds two names entered" do
    expect(page).to have_content("Player 1: Bob")
    expect(page).to have_content("Player 2: Jim")
  end
  it "finds hitpoints" do
    expect(page).to have_content("Hitpoints: 100")
    expect(page).to have_content("Hitpoints: 100")
  end

end
