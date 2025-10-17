require 'rails_helper'

RSpec.describe Estudiante, type: :model do
  subject { described_class.new(nombres: "Juan", apellidos: "Perez", carrera: "Sistemas", carnet: "A123456") }

  context "validaciones" do
    it { should validate_presence_of(:nombres) }
    it { should validate_length_of(:nombres).is_at_most(50) }

    it { should validate_presence_of(:apellidos) }
    it { should validate_length_of(:apellidos).is_at_most(50) }

    it { should validate_presence_of(:carrera) }
    it { should validate_length_of(:carrera).is_at_most(100) }

    it { should validate_presence_of(:carnet) }
    it { should validate_uniqueness_of(:carnet).case_insensitive }
    it { should validate_length_of(:carnet).is_at_least(6).is_at_most(12) }
  end
end
