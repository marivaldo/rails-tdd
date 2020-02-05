describe 'Double test' do
  it '--' do
  	user = double('User')
  	allow(user).to receive_messages(name: 'Mala', password: 'secret')
  	user.name
  end

  it 'as_null_object' do
  	user = double('User').as_null_object
  	allow(user).to receive_messages(name: 'Mala', password: 'secret')
  	user.name
  	user.role
  end
end