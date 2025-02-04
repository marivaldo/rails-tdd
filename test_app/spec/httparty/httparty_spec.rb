describe 'HTTParty' do
  it 'Test response', vcr: {cassette_name: 'jsonplaceholder/posts', record: :new_episodes} do
  	response = HTTParty.get('https://jsonplaceholder.typicode.com/posts/3')
  	content_type = response.headers['content-type']
  	expect(content_type).to match(/application\/json/)
  end
end