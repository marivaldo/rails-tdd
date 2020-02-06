require 'rails_helper'

RSpec.describe Product, type: :model do
  it 'is valid with description, price and category' do
  	product = create(:product)
  	except(product).to be_valid
  end
end
