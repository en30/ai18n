require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  setup do
    @post = posts(:one)
  end

  test "visiting the index" do
    visit posts_url
    assert_selector "h1", text: "投稿一覧"
  end

  test "should create post" do
    visit posts_url
    click_on "投稿する"

    fill_in "本文", with: @post.content
    fill_in "タイトル", with: @post.title
    click_on "保存"

    assert_text "Post was successfully created"
    click_on "一覧に戻る"
  end

  test "should update Post" do
    visit post_url(@post)
    click_on "編集する", match: :first

    fill_in "本文", with: @post.content
    fill_in "タイトル", with: @post.title
    click_on "保存"

    assert_text "Post was successfully updated"
    click_on "一覧に戻る"
  end

  test "should destroy Post" do
    visit post_url(@post)
    click_on "削除する", match: :first

    assert_text "Post was successfully destroyed"
  end
end
