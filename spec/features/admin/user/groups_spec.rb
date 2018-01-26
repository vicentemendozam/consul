require 'rails_helper'

feature "User groups" do

  let(:admin) { create(:administrator).user }

  background do
    login_as(admin)
  end

  scenario "Index" do
    group1 = create(:user_group)
    group2 = create(:user_group)

    visit admin_user_groups_path

    expect(page).to have_content group1.name
    expect(page).to have_content group2.name
  end

  scenario "Show" do
    group = create(:user_group)

    visit admin_user_group_path(group)

    expect(page).to have_content group.name
  end

  scenario "Create", :focus do
    visit admin_valuators_path
save_and_open_page
    click_link "Grupos de evaluadores"
    click_link "Nuevo"

    fill_in "user_group_name", with: "Health"
    click_button "Create Group"

    expect(page).to have_content "User group created successfully"
    expect(page).to have_content "There is 1 group of users"
    expect(page).to have_content "Health"
  end

  scenario "Update" do
    group = create(:user_group, name: "Health")

    visit admin_user_group_path(group)
    click_link "Edit"

    fill_in "name", with: "Health and Sports"
    click_button "Update Group"

    expect(page).to have_content "User group updated successfully"
    expect(page).to have_content "Health and Sports"
  end

  scenario "Destroy" do
    group1 = create(:user_group)

    visit admin_user_group_path(group)
    click_link "Destroy"

    expect(page).to have_content "User group destroyed successfully"
    expect(page).to have_content "There are 0 groups of users"
  end

end