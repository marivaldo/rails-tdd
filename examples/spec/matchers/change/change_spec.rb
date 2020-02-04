require 'counter'

describe 'Matcher change' do
  it { expect{Counter.increment}.to change { Counter.qtt } } # qtt 1
  it { expect{Counter.increment}.to change { Counter.qtt }.by(1) } # qtt 2
  it { expect{Counter.increment}.to change { Counter.qtt }.from(2).to(3) } # qtt 3
end