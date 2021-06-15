require 'rails_helper'
RSpec.describe V1::UsersController, type: :controller do
  describe 'Inicio de sesion del usuario' do
    let(:user) {create(:owner,password:'1234567890')}
    context 'Inicio de sesion correcto' do
      before do 
        post(:login,format: :json, params:{
          user:{
            email:user.email,
            password:'1234567890'
          }
        })
      end
      context 'Estatus correcto OK' do
        subject { response }
        it { is_expected.to have_http_status(:ok) }
      end
      context 'Respuesta de login correcto' do
        subject { payload_test }
        it { is_expected.to include(:id,:email,:age,:store)}
      end
    end
    context 'Inicio de sesion fallido' do
      before do
        post(:login, format: :json, params:{
          user: {
            email: user.email,
            password: '123'
          }
        })
      end
      context 'Estatus de error (bad_request)' do
        subject { response }
        it { is_expected.to have_http_status(:bad_request)}
      end
      context 'Estructura de errors' do
        subject { payload_test } #evalar la respuesta
        it { is_expected.to include(:errors)}
      end
    end
  end
end