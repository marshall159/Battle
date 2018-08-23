feature "it shows relevant information after names entered" do
  before do
    sign_in_and_play
  end

  it "finds hitpoints" do
    expect(page).to have_content("Hitpoints: 100")
    expect(page).to have_content("Hitpoints: 100")
  end

end
