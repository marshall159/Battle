describe "Homepage", type: :feature do
  it "goes to the home page" do
    visit '/'
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
