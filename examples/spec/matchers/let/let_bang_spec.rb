$count = 0

describe 'let!' do
  invoke_order = []

  let!(:counter) do
  	invoke_order << :let!
  	$count += 1
  end

  it 'call helper method before test' do
  	invoke_order << :examble
  	expect(invoke_order).to eq([:let!, :examble])
  	expect(counter).to eq(1)
  end
end