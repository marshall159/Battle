def sign_in_and_play
  visit("/")
  fill_in "p1_name", with: "Bob"
  fill_in "p2_name", with: "Jim"
  click_button "Submit"
end
