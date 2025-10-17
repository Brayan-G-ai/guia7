require 'rails_helper'

feature "Estudiante navega por la aplicación" do
  scenario "El usuario usa el enlace 'Back' en la página de nuevo estudiante" do
    visit new_estudiante_path
    click_link "Back"
    expect(page).to have_content("Estudiantes")
  end
end
