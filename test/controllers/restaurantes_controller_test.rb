require "test_helper"

describe RestaurantesController do
  let(:restaurante) { restaurantes :one }

  it "gets index" do
    get :index
    value(response).must_be :success?
    value(assigns(:restaurantes)).wont_be :nil?
  end

  it "gets new" do
    get :new
    value(response).must_be :success?
  end

  it "creates restaurante" do
    expect {
      post :create, restaurante: { endereco: restaurante.endereco, especialidade: restaurante.especialidade, name: restaurante.name }
    }.must_change "Restaurante.count"

    must_redirect_to restaurante_path(assigns(:restaurante))
  end

  it "shows restaurante" do
    get :show, id: restaurante
    value(response).must_be :success?
  end

  it "gets edit" do
    get :edit, id: restaurante
    value(response).must_be :success?
  end

  it "updates restaurante" do
    put :update, id: restaurante, restaurante: { endereco: restaurante.endereco, especialidade: restaurante.especialidade, name: restaurante.name }
    must_redirect_to restaurante_path(assigns(:restaurante))
  end

  it "destroys restaurante" do
    expect {
      delete :destroy, id: restaurante
    }.must_change "Restaurante.count", -1

    must_redirect_to restaurantes_path
  end
end
