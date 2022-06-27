require "test_helper"

class EscolasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @escola = escolas(:one)
  end

  test "should get index" do
    get escolas_url, as: :json
    assert_response :success
  end

  test "should create escola" do
    assert_difference("Escola.count") do
      post escolas_url, params: { escola: { cep: @escola.cep, cnpj: @escola.cnpj, diretor: @escola.diretor, email: @escola.email, end: @escola.end, nome: @escola.nome, tel: @escola.tel } }, as: :json
    end

    assert_response :created
  end

  test "should show escola" do
    get escola_url(@escola), as: :json
    assert_response :success
  end

  test "should update escola" do
    patch escola_url(@escola), params: { escola: { cep: @escola.cep, cnpj: @escola.cnpj, diretor: @escola.diretor, email: @escola.email, end: @escola.end, nome: @escola.nome, tel: @escola.tel } }, as: :json
    assert_response :success
  end

  test "should destroy escola" do
    assert_difference("Escola.count", -1) do
      delete escola_url(@escola), as: :json
    end

    assert_response :no_content
  end
end
