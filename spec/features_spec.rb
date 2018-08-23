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
    name1 = "Bob"
    name2 = "Steve"
    names_entered(name1, name2)

    expect(page).to have_content("Player 1: " + name1)
    expect(page).to have_content("Player 2: " + name2)
  end
end

feature "it shows relevant information after names entered" do
  before do
    @name1 = "Bob"
    @name2 = "Steve"
    names_entered(@name1, @name2)
  end
  it "finds two names entered" do
    expect(page).to have_content("Player 1: " + @name1)
    expect(page).to have_content("Player 2: " + @name2)
  end
  it "finds hitpoints" do
    expect(page).to have_content("Hitpoints: 100")
    expect(page).to have_content("Hitpoints: 100")
  end

end


def names_entered(name1, name2)
  visit("/")
  fill_in "p1_name", with: name1
  fill_in "p2_name", with: name2
  click_button "Submit"
end
