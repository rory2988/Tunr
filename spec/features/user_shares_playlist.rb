require 'spec_helper'

describe "a user can share a playlist" do
  let(:user) do 
    User.create!({
      email: "j@k.co",
      password: "jeff",
      password_confirmation: "jeff",
      first_name: "Jeff",
      last_name: "K",
      dob: Date.today,
      balance: 100.00
    }) 
  end

  let(:user_for_sharing) do 
    User.create!({
      email: "r@b.co",
      password: "rory",
      password_confirmation: "rory",
      first_name: "Rory",
      last_name: "B",
      dob: Date.today,
      balance: 75.00
    }) 
  end

  let(:user_loser) do 
    User.create!({
      email: "d@c.co",
      password: "dakota",
      password_confirmation: "dakota",
      first_name: "Dakota",
      last_name: "C",
      dob: Date.today,
      balance: 50.00
    }) 
  end

  let(:playlist) do
    Playlist.create!({
      title: "Cool Playlist",
      user_id: user.id,
      created_at: Time.now,
      updated_at: Time.now
    })
  end

  it "user can share playlist" do
    # Setup
    login(user)

    # Workflow for feature
    visit user_path(user)
    click_link "Share Playlist"


end
  def login(user)
    visit "/login"
    fill_in :email, with: user.email
    fill_in :password, with: user.password
    click_button "Log in!"
  end

  def logout(user)
    visit "/login"
    click_link "Log Out #{user.first_name}!"
  end
end