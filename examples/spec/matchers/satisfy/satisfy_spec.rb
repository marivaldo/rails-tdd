describe 'Matcher satisfy' do
  it { expect(10).to satisfy {|x| x % 2 == 0} }
end