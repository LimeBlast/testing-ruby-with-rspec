describe 'Matchers' do
  it 'asserts on equality' do
    expect(3).to eq 3
  end

  it 'asserts on mathematical operators' do
    expect(5).to be > 2
  end

  it 'asserts on matching a regular expression' do
    email              = 'email@email.com'
    regular_expression = /^\w+@\w+\.[a-z]{2,4}$/

    expect(email).to match regular_expression
  end

  it 'asserts on types and classes' do
    object = 2.3 # Float

    expect(object).to be_a Numeric # Because Float extends Numeric
    expect(object).to be_an_instance_of Float
  end

  it 'asserts on truthiness' do
    false_value = false
    nil_value   = nil

    expect(false_value).to be false
    expect(nil_value).to be_falsey
  end

  it 'expects errors' do
    expect do
      raise ArgumentError
    end.to raise_error ArgumentError # Testing for specific error

    expect do
      raise TypeError
    end.to raise_error # Testing for any error
  end

  it 'expects throws' do
    expect do
      throw :oops
    end.to throw_symbol :oops # Testing for specific throw

    expect do
      throw :hooray
    end.to throw_symbol # Testing for any throw
  end

  it 'asserts on predicates' do
    class ExampleObject
      def good?
        true
      end
    end

    expect(ExampleObject.new).to be_good
  end

  it 'asserts on collections' do
    list = [
        :one,
        :two,
        :three,
        :four
    ]

    expect(list).to include :three
    expect(list).to start_with [:one, :two]
    expect(list).to end_with [:four]
  end

  it 'negates asserts' do
    expect(3).not_to be 5
  end
end
