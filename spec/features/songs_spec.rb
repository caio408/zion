# frozen_string_literal: true

require 'feature_helper'

feature 'Song', type: :feature do


  scenario 'Register music' do
    navigate 'Adiministração > Musicas'
    click_link 'Novo'

    fill_in 'Música', with: 'Arde Outra Vez'
    fill_in 'Autor', with: 'Thales Roberto'
    fill_in 'Escala', with: 'João, Maria e Thiago'

    click_buttom 'Salvar'
    expect(page).to have_success 'Musica cadastrado com sucesso.'
  end
end
