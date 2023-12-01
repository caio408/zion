require 'request_helper'

feature 'Songs' do
  background do
    sign_in
  end

  scenario 'create/update/destroy song' do
    navigate 'Cadastros > Songs'

    click_link 'Novo'

    fill_in 'Name', with: 'name'
    fill_in 'Title', with: 'title'
    fill_in 'Content', with: 'content'
    fill_in 'Active', with: 'active'

    click_button 'Salvar'

    expect(page).to have_notice 'Song criado com sucesso.'

    click_link 'Editar'

    expect(page).to have_field 'Name', with: 'name'
    expect(page).to have_field 'Title', with: 'title'
    expect(page).to have_field 'Content', with: 'content'
    expect(page).to have_field 'Active', with: 'active'

    fill_in 'Name', with: 'name'
    fill_in 'Title', with: 'title'
    fill_in 'Content', with: 'content'
    fill_in 'Active', with: 'active'

    click_button 'Salvar'

    expect(page).to have_notice 'Song editado com sucesso.'

    click_link 'Editar'

    expect(page).to have_field 'Name', with: 'name'
    expect(page).to have_field 'Title', with: 'title'
    expect(page).to have_field 'Content', with: 'content'
    expect(page).to have_field 'Active', with: 'active'

    click_link 'Voltar'

    click_link 'Deletar', confirm: true

    expect(page).to have_notice 'Song deletado com sucesso.'

    expect(page).to_not have_content 'name'
    expect(page).to_not have_content 'title'
    expect(page).to_not have_content 'content'
    expect(page).to_not have_content 'active'
  end

end
