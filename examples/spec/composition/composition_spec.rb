describe 'Ruby on Rails' do
  it { is_expected.to start_with('Ruby').and end_with('Rails') }
  it { expect(fruits).to eq('bananna').or eq('orange').or eq('apple') }
end