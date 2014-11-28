require 'blog'

describe 'Callbacks' do
  let(:blog) { Blog.new }

  before(:each) do |example| # You can pass the test example into the callback
    blog.populate!
    puts example.inspect
  end

  it 'has one post' do
    expect(blog.posts_count).to eq 1
  end
end
