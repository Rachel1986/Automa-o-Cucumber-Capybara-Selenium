#language:pt

Funcionalidade: Login
  Para que eu possa cadastrar e gerenciar minhas tarefas
  Sendo um usuário
  Posso acessar o sistema com meu email e senha previamente cadastrados.

  Fazer login com email e senha 
  Clicou em Conectar, é autorizado com sucesso
  Nano Courses

  Contexto:
  Dado que eu acesso a página principal
  
  @logout
  Cenário: Usuário deve ser autorizado
    
    Quando eu faço login com "rachelguzmanv@yahoo.com" e "SenhaOculta!"
    E clico no botão Conectar
    Então deve ser direcionado para a página principal "NANO COURSES"

  
  Cenário: Senha errada
    
    Quando eu faço login com "rachelguzmanv@yahoo.com" e "12345"
    E clico no botão Conectar
    Então devo ver a mensagem "USUÁRIO OU SENHA INVÁLIDOS"

  Cenário: Usuário não existe

    Quando eu faço login com "luna@yahoo.org" e "12345"
    E clico no botão Conectar
    Então devo ver a mensagem "USUÁRIO OU SENHA INVÁLIDOS"

  Cenário: Email incorreto

    Quando eu faço login com "rachelguzmanv.yahoo.com" e "12345"
    E clico no botão Conectar
    Então devo ver a mensagem "USUÁRIO OU SENHA INVÁLIDOS"