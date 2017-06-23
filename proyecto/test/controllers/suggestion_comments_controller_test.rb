require 'test_helper'

class SuggestionCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @suggestion_comment = suggestion_comments(:one)
  end

  test "should get index" do
    get suggestion_comments_url
    assert_response :success
  end

  test "should get new" do
    get new_suggestion_comment_url
    assert_response :success
  end

  test "should create suggestion_comment" do
    assert_difference('SuggestionComment.count') do
      post suggestion_comments_url, params: { suggestion_comment: { suggestion_id: @suggestion_comment.suggestion_id, text: @suggestion_comment.text, user_id: @suggestion_comment.user_id } }
    end

    assert_redirected_to suggestion_comment_url(SuggestionComment.last)
  end

  test "should show suggestion_comment" do
    get suggestion_comment_url(@suggestion_comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_suggestion_comment_url(@suggestion_comment)
    assert_response :success
  end

  test "should update suggestion_comment" do
    patch suggestion_comment_url(@suggestion_comment), params: { suggestion_comment: { suggestion_id: @suggestion_comment.suggestion_id, text: @suggestion_comment.text, user_id: @suggestion_comment.user_id } }
    assert_redirected_to suggestion_comment_url(@suggestion_comment)
  end

  test "should destroy suggestion_comment" do
    assert_difference('SuggestionComment.count', -1) do
      delete suggestion_comment_url(@suggestion_comment)
    end

    assert_redirected_to suggestion_comments_url
  end
end
