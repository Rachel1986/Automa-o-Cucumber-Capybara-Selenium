

Dado('que eu acesso a página principal') do
  visit 'https://on.fiap.com.br/'
end

Quando('eu faço login com {string} e {string}') do |email, senha|
  find('input[id=username]').set email
  find('#password').set senha
  end

Quando('clico no botão Conectar') do
  click_button 'Conectar'
end

Então('deve ser direcionado para a página principal {string}') do |titulo|
  expect(page).to have_content(titulo)
end

Então('devo ver a mensagem {string}') do |mensagem|
  expect(page).to have_content(mensagem)
  #find(class: 'login-error', text: mensagem)
end
