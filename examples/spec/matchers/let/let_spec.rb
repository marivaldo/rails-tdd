$counter = 0

describe 'let' do
	let(:count) { $counter += 1 }
  
  it 'init value' do
  	expect(count).to eq(1) # 1 time, fetch invoke
  	expect(count).to eq(1) # 2 time, fetch cach
  end

  it 'count does not cached between tests' do
  	expect(count).to eq(2)
  end
end