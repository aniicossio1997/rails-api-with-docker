require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe 'Validaciones del modelo user' do
    #con build va crear una instancia del modelo user
    subject { build(:user) }
    it 'validar si el email esta presente' do
      should validate_presence_of(:email)
    end
    it 'validar si el password esta presente' do
      should validate_presence_of(:password_digest)
    end
    it 'validar si el type esta presente' do
      should validate_presence_of(:type)
    end
    it 'validar si el age esta presente' do
      should validate_presence_of(:age)
    end
    it 'validar si el email es unico' do
      should validate_uniqueness_of(:email)
    end
    it 'validar que no acepte emails incorrectos' do
      should_not allow_value("test").for(:email)
    end
    it 'validar que age sea un numero entero' do
      should validate_numericality_of(:age).only_integer
    end
    it 'validar si la edad es mayor o igual a 18' do
      should validate_numericality_of(:age).is_greater_thant_or_equal_to(18)
    end
    it 'validar si la edad es menor o igual a 100' do
      should validate_numericality_of(:age).is_less_thant_or_equal_to(100)
    end
    
  end

end
