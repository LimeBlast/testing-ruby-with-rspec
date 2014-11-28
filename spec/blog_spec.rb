require 'blog'
require 'post'

describe Blog do

  context 'with no posts' do
    let(:blog) { Blog.new }

    it 'has no posts' do
      expect(blog).to be_empty
    end
  end

  context 'with one post' do
    let(:blog) { Blog.new(posts: [Post.new]) }

    it 'has a post when initialized with one' do
      expect(blog).not_to be_empty
    end

    it 'counts the number of posts' do
      expect(blog.posts_count).to eq 1
    end
  end

end
