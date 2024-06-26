# alura-php-composer
Curso de PHP Composer

## Repositório principal do Composer

packagist.org

É possível dizer para o Composer procurar components em outros repositórios.

# Como rodar

```
 docker compose exec workspace php buscar-cursos.php
```

Sempre que alterar a configuração de autoload é necessário rodar:

```
docker compose exec workspace composer dumpautoload
```

## Ferramentas php

Instalar com `composer --dev "biblioteca" `

### php-unit

Testes unitários

### phpcs
https://github.com/squizlabs/PHP_CodeSniffer

Validação de padroes de código.

Permite seguir padrões de código como https://www.php-fig.org/psr/psr-12/

```
vendor/bin/phpcs --standard=PSR12 src/
```

### phan 

Análise estática do código

https://github.com/phan/phan

```
vendor/bin/phan --allow-polyfill-parser src/Buscador.php
```

## Scripts no composer

Define um script para rodar com **composer nome**

Um **@** no início referencia outro comando definido em **scripts**.

Composer permite rodar qualquer comando do sistema operacional, código PHP.

Permite definir comandos para executar antes ou depois de eventos como **install**, **update**, etc.

https://getcomposer.org/doc/articles/scripts.md