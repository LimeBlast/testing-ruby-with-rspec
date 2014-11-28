require 'price_calculator'
require 'product'

describe 'Stubs' do
  it 'provides stubs to simulate state' do
    calculator = PriceCalculator.new

    # Simulates an object which responds to specificied calls
    calculator.add double(price: 1.0)

    # Simulates an object which responds to specified calls, only if simulated object contains specified calls
    calculator.add instance_double('Product', price: 100.25)

    # Simulates an object, and allows you to define additional calls and value returns
    another_product_stub = instance_double('Product')
    allow(another_product_stub).to receive(:price).and_return(1.0)
    #allow(another_product_stub).to receive(:price) { 1.0 } # Does the same as the line above
    calculator.add another_product_stub

    # Passing multiple return values returns them in order
    yet_another_product_stub = instance_double('Product')
    allow(yet_another_product_stub).to receive(:price).and_return(1.0, 2.0)
    calculator.add yet_another_product_stub # Receives 1.0
    calculator.add yet_another_product_stub # Receives 2.0
    calculator.add yet_another_product_stub # Receives 2.0 again

    expect(calculator.final_price).to eq 107.25
  end
end
