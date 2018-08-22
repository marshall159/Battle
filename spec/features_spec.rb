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
    name1 = "Bob"
    name2 = "Dave"
    visit("/")
    fill_in "p1_name", with: name1
    fill_in "p2_name", with: name2
    click_button "Submit"
    expect(page).to have_content("Player 1: " + name1)
    expect(page).to have_content("Player 2: " + name2)
  end
end
