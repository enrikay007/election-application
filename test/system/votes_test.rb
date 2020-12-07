require "application_system_test_case"

class VotesTest < ApplicationSystemTestCase
  setup do
    @vote = votes(:one)
  end

  test "visiting the index" do
    visit votes_url
    assert_selector "h1", text: "Votes"
  end

  test "creating a Vote" do
    visit votes_url
    click_on "New Vote"

    fill_in "Constituency name", with: @vote.constituency_name
    fill_in "Cpp", with: @vote.cpp
    fill_in "Ind", with: @vote.ind
    fill_in "Ndc", with: @vote.ndc
    fill_in "Ndp", with: @vote.ndp
    fill_in "Npp", with: @vote.npp
    fill_in "Pnc", with: @vote.pnc
    fill_in "Ppp", with: @vote.ppp
    fill_in "Region", with: @vote.region
    fill_in "Rejected votes", with: @vote.rejected_votes
    fill_in "Total valid votes", with: @vote.total_valid_votes
    fill_in "Total votes cast", with: @vote.total_votes_cast
    click_on "Create Vote"

    assert_text "Vote was successfully created"
    click_on "Back"
  end

  test "updating a Vote" do
    visit votes_url
    click_on "Edit", match: :first

    fill_in "Constituency name", with: @vote.constituency_name
    fill_in "Cpp", with: @vote.cpp
    fill_in "Ind", with: @vote.ind
    fill_in "Ndc", with: @vote.ndc
    fill_in "Ndp", with: @vote.ndp
    fill_in "Npp", with: @vote.npp
    fill_in "Pnc", with: @vote.pnc
    fill_in "Ppp", with: @vote.ppp
    fill_in "Region", with: @vote.region
    fill_in "Rejected votes", with: @vote.rejected_votes
    fill_in "Total valid votes", with: @vote.total_valid_votes
    fill_in "Total votes cast", with: @vote.total_votes_cast
    click_on "Update Vote"

    assert_text "Vote was successfully updated"
    click_on "Back"
  end

  test "destroying a Vote" do
    visit votes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vote was successfully destroyed"
  end
end
