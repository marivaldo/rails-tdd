describe 'Matcher All' do
  it { expect([1, 7, 9]).to all be_odd.and be_an(Integer) }
  it { expect(['Ruby', 'Rails']).to all be_a(String).and include('R') }
end