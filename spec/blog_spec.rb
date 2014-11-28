require 'blog'
require 'post'

describe Blog do
  it 'has no posts' do
    expect(Blog.new).to be_empty
  end

  it 'has a post when initialized with one' do
    expect(Blog.new(posts: [Post.new])).not_to be_empty
  end

  it 'counts the number of posts' do
    expect(Blog.new(posts: [Post.new]).posts_count).to eq 1
  end
end
