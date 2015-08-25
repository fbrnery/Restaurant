require "test_helper"

describe ClientesController do
  let(:cliente) { clientes :one }

  it "gets index" do
    get :index
    value(response).must_be :success?
    value(assigns(:clientes)).wont_be :nil?
  end

  it "gets new" do
    get :new
    value(response).must_be :success?
  end

  it "creates cliente" do
    expect {
      post :create, cliente: { idade: cliente.idade, name: cliente.name }
    }.must_change "Cliente.count"

    must_redirect_to cliente_path(assigns(:cliente))
  end

  it "shows cliente" do
    get :show, id: cliente
    value(response).must_be :success?
  end

  it "gets edit" do
    get :edit, id: cliente
    value(response).must_be :success?
  end

  it "updates cliente" do
    put :update, id: cliente, cliente: { idade: cliente.idade, name: cliente.name }
    must_redirect_to cliente_path(assigns(:cliente))
  end

  it "destroys cliente" do
    expect {
      delete :destroy, id: cliente
    }.must_change "Cliente.count", -1

    must_redirect_to clientes_path
  end
end
