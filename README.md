# lib-practice

Библиотека - Учреждение, собирающее и хранящее книги для общественного пользования.
Система учета книг в библиотеке - это система, хранящая в себе все книги библиотеки, разделенные по различным категориям, так же система ведет учет читателей библиотеки.

Сущности:
Книги(id, Название, обложка, автор, категория, читатель);
Категрии(id, Название);
теги(id, Название);
Чиатели(id, Имя, фамилия, Отчество, Дата рождения, дата регистрации);
КнигиИТеги(Id книги, id тега);

Функции:
1. Просмотр данных о книгах и читателях;
2. Добавление новых записей;
3. Редактирование и удаление существующих записей;
4. Закрепление книги за читателем.
