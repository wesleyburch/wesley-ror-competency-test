require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    2.times do
      Article.create(title: 'title', content: 'content', user_id: users(:pass).id, category_id: categories(:one).id)
    end
  end

  test "user is valid" do
    assert users(:pass).valid?
  end
  test "user fails without role" do
    assert_not users(:fail).save, "Saved User without a Role"
  end
  test '#articles' do
    assert_equal 2, users(:pass).articles.size
  end

end
