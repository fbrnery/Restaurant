require "test_helper"

describe Restaurante do
  let(:restaurante) { Restaurante.new }

  it "must be valid" do
    value(restaurante).must_be :valid?
  end
end
