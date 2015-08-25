require "test_helper"

describe Cliente do
  let(:cliente) { Cliente.new }

   it "must validate cliente name presence" do
    cliente.name = '    '
    cliente.must_be :invalid?
    cliente.errors[:name].must_include "Deve ser preenchido"
end

 it "must validate cliente idade is not negative" do
    cliente.idade = -1
    cliente.must_be :invalid?
    cliente.errors[:idade].must_include "Deve ser um número entre 0 e 100"
  end

 it "must validate cliente idade can be" do
    cliente.idade = '0 e 100'
    cliente.must_be :invalid?
    cliente.errors[:idade].must_include "Deve ser um número entre 0 e 100"
  end
end




