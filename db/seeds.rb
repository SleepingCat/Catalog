# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Section.create(Name: 'Фэнтези', Parent_ID: nil, id: 1)
Section.create(Name: 'Классическая литература', Parent_ID: nil, id:2)
Section.create(Name: 'Научная литература', Parent_ID: nil, id:3)
Section.create(Name: 'Стелаж#1', Parent_ID: 1, id:4)
Section.create(Name: 'Стелаж#2', Parent_ID: 2, id:5)
Section.create(Name: 'Стелаж#10', Parent_ID: 2, id:6)
Section.create(Name: 'Стелаж#1', Parent_ID: 3, id:7)
Section.create(Name: 'Полка#3', Parent_ID: 4, id:8)
Section.create(Name: 'Полка#4', Parent_ID: 4, id:9)
Section.create(Name: 'Полка#1', Parent_ID: 5, id:10)
Section.create(Name: 'Полка#2', Parent_ID: 7, id:11)

Book.create(Name: 'Властелин Колец', Section_ID: 8)
Book.create(Name: 'Гарри Поттер', Section_ID: 8)
Book.create(Name: 'Анна Каренина', Section_ID: 10)
Book.create(Name: 'Физика', Section_ID: 11)
Book.create(Name: 'Химия', Section_ID: 11)