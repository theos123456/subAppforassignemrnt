require "application_system_test_case"

class SubmitsTest < ApplicationSystemTestCase
  setup do
    @submit = submits(:one)
  end

  test "visiting the index" do
    visit submits_url
    assert_selector "h1", text: "Submits"
  end

  test "creating a Submit" do
    visit submits_url
    click_on "New Submit"

    fill_in "Assignment", with: @submit.assignment_id
    fill_in "Link", with: @submit.link
    fill_in "User", with: @submit.user_id
    click_on "Create Submit"

    assert_text "Submit was successfully created"
    click_on "Back"
  end

  test "updating a Submit" do
    visit submits_url
    click_on "Edit", match: :first

    fill_in "Assignment", with: @submit.assignment_id
    fill_in "Link", with: @submit.link
    fill_in "User", with: @submit.user_id
    click_on "Update Submit"

    assert_text "Submit was successfully updated"
    click_on "Back"
  end

  test "destroying a Submit" do
    visit submits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Submit was successfully destroyed"
  end
end
