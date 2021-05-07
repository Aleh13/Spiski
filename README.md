Создаете новый рельсовый проект c ключом --api.
Далее создаете модел User с полями
  *- name
  *- email
  *- password (при желании любое название если пароль шифруется )
в модели должны присутсвовать валидации на обязательной заполнение этих полей,
на минимальное количесво (6) символов поля пассворд и на уникальность поля емайл.
  Создаете контролер users_controller и делаете роуты к нему таким образом чтобы
адрес к ним был типа {domen}/api/v1/users где домен  на локальной машине это http://localhost:3000
для тестирования апи можно использовать программы postman, insomnia.
Ендпоинты следущие:
  get /api/v1/users - просмотр всех юзеров
  get /api/v1/users/{id} - просмотр одного юзера
  post /api/v1/users - создать пользователя
  put /api/v1/users/{id} - изменить поля пользователя
  delete /api/v1/users/{id} - удалить пользователя
  post /api/v1/users/login - проверить на соответсвие емейд паролю, в ответе - { "success": :true }
Все ответы с ендпоинтов должны быть в формате JSON

дополнительные задачи:

complexity *
  Написать тесты на rspec
протестировать модель на наличие валидаций
протестировать ендпоинты (requests)

complexity **
  Изменить контроллер чтобы доступы к эндпоинтам осущетвлялись только через наличие Authorization в headers запроса
исключая создания пользователя и логин
можете использовать любой тип авторизации ( самое простое Basic Access Authentication (see RFC 7617))

complexity ***
 в дополнение к предыдущемы изменить контроллер таким образом чтобы 
 get /api/v1/users/profile показываль текущего полбзователя который соответствует авторизированому пользователю
так же это касается изменения и удаления пользователя

-----------------

весь код пишется без дополнительных гемов не входяших в базовую установку rails кроме:
rspec
factory_bot
jwt
bcrypt
