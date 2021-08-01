require 'test_helper'

class ArticleTest < ActiveSupport::TestCase

  def setup
    @user = User.create(email: 'test@test.com', password: 'password123', roles: 'editor')
    @category = Category.create(title: 'Technology')
    @valid_article = Article.create(title: 'Title ', content: 'content', user_id: @user.id, category_id: @category.id)
    @invalid_article = Article.create(user_id: @user.id, category_id: @category.id)
  end
 
  test "article is valid" do
    assert @valid_article.valid?
  end
  test "article not valid" do
    refute @invalid_article.valid?
  end
  test "article fails without title" do
    refute @invalid_article.valid?, 'article is valid without a title'
    assert_not_nil @valid_article.errors[:title], 'no validation error for title present'
  end
  test "article fails without content" do
    refute @invalid_article.valid?, 'article is valid without a content'
    assert_not_nil @valid_article.errors[:content], 'no validation error for content present'
  end
  test "#category" do
    assert @valid_article.category.valid?
  end
  test "#user" do
    assert @valid_article.user.valid?
  end
end
