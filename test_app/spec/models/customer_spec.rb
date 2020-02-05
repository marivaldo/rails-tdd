require 'rails_helper'

RSpec.describe Customer, type: :model do
  it '#full_name' do
  	customer = create(:customer)
  	expect(customer.full_name).to start_with('Mr. ')
  end

  it '#full_name - override attribute' do
  	customer = create(:customer, name: 'Marivaldo Malaquias')
  	expect(customer.full_name).to eq('Mr. Marivaldo Malaquias')
  end

  it 'inheritance' do
  	customer = create(:customer_default)
  	expect(customer.vip).to eq(false)
  end

  it 'Using attributes_for' do
  	attrs = attributes_for(:customer)
  	customer = Customer.create(attrs)
  	expect(customer.full_name).to start_with('Mr. ')
  end

  it 'Transient attribute' do
  	customer = create(:customer_default, upcased: true)
  	expect(customer.name.upcase).to eq(customer.name)
  end

  it 'Customer male vip' do
  	customer = create(:customer_male_vip)
  	expect(customer.gender).to eq('M')
  	expect(customer.vip).to eq(true)
  end

  it 'Customer female vip' do
  	customer = create(:customer_female_vip)
  	expect(customer.gender).to eq('F')
  	expect(customer.vip).to eq(true)
  end

  it { expect{ create(:customer) }.to change{Customer.all.size}.by(1) }
end
