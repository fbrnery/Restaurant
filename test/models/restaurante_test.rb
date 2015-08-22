require "test_helper"

describe Restaurante do
  let(:restaurante) { Restaurante.new }

  it "must validate restaurante name presence" do
    restaurante.name = '    '
    restaurante.must_be :invalid?
    restaurante.errors[:name].must_include "deve ser preenchido"
end

  it "must validate restaurante endereco presence" do
    restaurante.endereco = '    '
    restaurante.must_be :invalid?
    restaurante.errors[:endereco].must_include "deve ser preenchido"
end

  it "must validate restaurante especialidade presence" do
    restaurante.especialidade = '    '
    restaurante.must_be :invalid?
    restaurante.errors[:especialidade].must_include "deve ser preenchido"
  end
end
