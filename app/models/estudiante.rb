class Estudiante < ApplicationRecord
  validates :nombres, presence: true, length: { maximum: 50 },
                      format: { with: /\A[a-zA-Z\s]+\z/, message: "solo permite letras" }

  validates :apellidos, presence: true, length: { maximum: 50 },
                        format: { with: /\A[a-zA-Z\s]+\z/, message: "solo permite letras" }

  validates :carrera, presence: true, length: { maximum: 100 }

  validates :carnet, presence: true, uniqueness: true,
                     format: { with: /\A[a-zA-Z0-9\-]+\z/, message: "solo permite letras, números y guiones" },
                     length: { in: 6..12 }
end
