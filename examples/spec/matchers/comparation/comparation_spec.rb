describe 'Matcher comparation' do
  it '>' do
    expect(5).to be > 1
  end

  it '>=' do
    expect(5).to be >= 2
    expect(5).to be >= 5
  end

  it '<' do
    expect(5).to be < 10
  end

  it '<=' do
    expect(5).to be <= 10
    expect(5).to be <= 5
  end

  it 'be_between inclusive / aggregate failures' do
    expect(5).to be_between(2, 7).inclusive
    expect(2).to be_between(2, 7).inclusive
    expect(7).to be_between(2, 7).inclusive
  end

  # aggregate_failure example
  # it 'be_between inclusive / aggregate failures', aggregate_failures: true do
  #   expect(5).to be_between(2, 7).inclusive
  #   expect(1).to be_between(2, 7).inclusive
  #   expect(8).to be_between(2, 7).inclusive
  # end

  it 'be_between exclusive' do
    expect(5).to be_between(2, 7).exclusive
    expect(3).to be_between(2, 7).exclusive
    expect(6).to be_between(2, 7).exclusive
  end

  it 'match' do
    expect('rails@com').to match(/..@../)
  end

  it 'start_with' do
    expect('ruby').to start_with('ruby')
    expect([1, 2, 3]).to start_with(1)
  end

  it 'end_with' do
    expect('ruby on rails').to end_with('rails')
    expect([1, 2, 3]).to end_with(3)
  end
end