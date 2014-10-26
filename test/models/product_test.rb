require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "saving product without name" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:name].any?
  end

  test "saving product without description" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:description].any?
  end

  test "saving product with name and description" do
    product = Product.new(name: 'sample product', description: 'lorem ipsum dolor sit amet')
    assert product.valid?
  end
end
