# BancoDeDadosMySQL

Banco de dados criado usando o MySQL Workbench 8.0 CE

## Arquivos

### db.sql

Arquivo com os comandos usados para a criação do banco de dados:

-   Criação do banco;
-   Criação das tabelas;
-   Inseção dos dados nas tabelas.

### dump.sql

Arquivo de dump do banco de dados criado no MySQL Workbench 8.0 CE usando os comandos do arquivo db.sql

## Tabelas do Banco

### users

Tabela de usuários contendo os seguintes campos:

-   id;
-   username;
-   password_hash;
-   num_followers;
-   email;
-   phone;
-   birthday;
-   created_at;
-   updated_at.

### posts

Tabela de postagens contendo os seguintes campos:

-   id;
-   content;
-   user_id (autor da postagem);
-   created_at;
-   updated_at.

### comments

Tabela de comentários contendo os seguintes campos:

-   id;
-   content;
-   user_id (autor do comentário);
-   post_id (postagem à qual o comentário está relacionado);
-   created_at;
-   updated_at.

## Relacionamento entre as tabelas:

### users - posts (1 - N)

Um usuário pode ter várias postagens, mas cada postagem possui apenas 1 autor.

### users - comments (1 - N)

Um usuário pode ter vários comentários, mas cada comentário possui apenas 1 autor.

### posts - comments (1 - N)

Uma postagem pode ter vários comentários, mas cada comentário está relacionado a apenas 1 postagem.
