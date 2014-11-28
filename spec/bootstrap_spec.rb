require 'bootstrap'

describe Bootstrap do
  it 'says hello' do
    expect(Bootstrap.new.hello).to include 'Hello'
  end
end
