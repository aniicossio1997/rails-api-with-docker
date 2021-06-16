require 'rails_helper'

describe 'Rutas de Store' do
  it 'Obtener una tienda de un especifico id user' do
    expect(get: '/v1/stores/1').to route_to(
      format: 'json',
      controller: 'v1/stores',
      action: 'show',
      id: '1'
    )
  end

end