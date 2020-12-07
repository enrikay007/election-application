require 'test_helper'

class VotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vote = votes(:one)
  end

  test "should get index" do
    get votes_url
    assert_response :success
  end

  test "should get new" do
    get new_vote_url
    assert_response :success
  end

  test "should create vote" do
    assert_difference('Vote.count') do
      post votes_url, params: { vote: { constituency_name: @vote.constituency_name, cpp: @vote.cpp, ind: @vote.ind, ndc: @vote.ndc, ndp: @vote.ndp, npp: @vote.npp, pnc: @vote.pnc, ppp: @vote.ppp, region: @vote.region, rejected_votes: @vote.rejected_votes, total_valid_votes: @vote.total_valid_votes, total_votes_cast: @vote.total_votes_cast } }
    end

    assert_redirected_to vote_url(Vote.last)
  end

  test "should show vote" do
    get vote_url(@vote)
    assert_response :success
  end

  test "should get edit" do
    get edit_vote_url(@vote)
    assert_response :success
  end

  test "should update vote" do
    patch vote_url(@vote), params: { vote: { constituency_name: @vote.constituency_name, cpp: @vote.cpp, ind: @vote.ind, ndc: @vote.ndc, ndp: @vote.ndp, npp: @vote.npp, pnc: @vote.pnc, ppp: @vote.ppp, region: @vote.region, rejected_votes: @vote.rejected_votes, total_valid_votes: @vote.total_valid_votes, total_votes_cast: @vote.total_votes_cast } }
    assert_redirected_to vote_url(@vote)
  end

  test "should destroy vote" do
    assert_difference('Vote.count', -1) do
      delete vote_url(@vote)
    end

    assert_redirected_to votes_url
  end
end
