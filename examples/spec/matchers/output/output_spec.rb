describe 'Matcher output' do
  it { expect{puts 'Marivaldo'}.to output.to_stdout }
  it { expect{print 'Marivaldo'}.to output('Marivaldo').to_stdout }
  it { expect{puts 'Marivaldo'}.to output(/Marivaldo/).to_stdout }

  it { expect{warn 'Marivaldo'}.to output.to_stderr }
  it { expect{warn 'Marivaldo'}.to output("Marivaldo\n").to_stderr }
  it { expect{warn 'Marivaldo'}.to output(/Marivaldo/).to_stderr }
end