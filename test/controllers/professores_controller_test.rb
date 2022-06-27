require "test_helper"

class ProfessoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @professore = professores(:one)
  end

  test "should get index" do
    get professores_url, as: :json
    assert_response :success
  end

  test "should create professore" do
    assert_difference("Professore.count") do
      post professores_url, params: { professore: { cep: @professore.cep, cfp: @professore.cfp, email: @professore.email, end: @professore.end, escolas_id: @professore.escolas_id, nascimento: @professore.nascimento, nome: @professore.nome, tel: @professore.tel } }, as: :json
    end

    assert_response :created
  end

  test "should show professore" do
    get professore_url(@professore), as: :json
    assert_response :success
  end

  test "should update professore" do
    patch professore_url(@professore), params: { professore: { cep: @professore.cep, cfp: @professore.cfp, email: @professore.email, end: @professore.end, escolas_id: @professore.escolas_id, nascimento: @professore.nascimento, nome: @professore.nome, tel: @professore.tel } }, as: :json
    assert_response :success
  end

  test "should destroy professore" do
    assert_difference("Professore.count", -1) do
      delete professore_url(@professore), as: :json
    end

    assert_response :no_content
  end
end
