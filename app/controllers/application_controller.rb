class ApplicationController < ActionController::API
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:nome, :cpf, :municipio, :uf])
        #devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:nome, :email, :encrypted_password, :cpf, :municipio, :uf) }
        #devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:nome, :email, :encrypted_password, :cpf, :municipio, :uf) }
    end
end
