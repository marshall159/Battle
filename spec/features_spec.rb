# describe "Homepage", type: :feature do
#   it "goes to the home page" do
#     visit '/'
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end

feature "it takes 2 names in a form" do
  scenario "load the page" do
    visit("/")
    expect(page).to have_field("p1_name")
    expect(page).to have_field("p2_name")
  end
end

feature "it shows 2 names" do
  scenario "load the page" do
    visit("/")
    fill_in "p1_name", with: "Bob"
    fill_in "p2_name", with: "Dave"
    click_button "Submit"
    expect(page).to have_content("Player 1: ")
    expect(page).to have_content("Player 2: ")
  end
end
