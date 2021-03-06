# Отчет по курсовому проекту
## по курсу "Логическое программирование"

### студент: Савин А. А.

## Результат проверки

| Преподаватель     | Дата         |  Оценка       |
|-------------------|--------------|---------------|
| Сошников Д.В. |              |               |
| Левинская М.А.|              |               |

> *Комментарии проверяющих (обратите внимание, что более подробные комментарии возможны непосредственно в репозитории по тексту программы)*

## Введение

За время выполнения курсовой работы я понял, что интернет полон различными генеалогическими деревьями, что в мире существуют много энтузиастов, стремящихся задокументировать
схему собственного рода и сделать поиск проще. Написанный аналог хоть и не является наглядным источником информации о семейном древе, но может давать ответы на четко сформулированные
вопросы.

## Задание

 1. Создать родословное дерево своего рода на несколько поколений (3-4) назад в стандартном формате GEDCOM с использованием сервиса MyHeritage.com 
 2. Преобразовать файл в формате GEDCOM в набор утверждений на языке Prolog, используя следующее представление: child(ребенок, родитель)
 3. Реализовать предикат проверки/поиска vi. Золовка
 4. Реализовать программу на языке Prolog, которая позволит определять степень родства двух произвольных индивидуумов в дереве
 5. [На оценки хорошо и отлично] Реализовать естественно-языковый интерфейс к системе, позволяющий задавать вопросы относительно степеней родства, и получать осмысленные ответы. 

## Получение родословного дерева

Для выполнения задания я взял родословную английской монархии, так как она наиболее полная и ветвистая. 

## Предикат поиска родственника
Фрагмент базы из GEDCOM
```
0 @I500014@ INDI
1 NAME Prince Phillip of Greece and Denmark Duke of Edinburgh //
2 GIVN Prince Phillip of Greece and Denmark Duke of Edinburgh
1 SEX M
1 FAMS @F500005@
1 RIN MH:I500014
1 _UID 61798344DAA360F884B1DE8743437AA1
0 @I500015@ INDI
1 NAME Charles Prince of Wales //
2 GIVN Charles Prince of Wales
1 SEX M
1 FAMS @F500006@
1 FAMC @F500005@
1 RIN MH:I500015
1 _UID 6179836074CD8A7B572A920C6B54083B
```
Фрагмент базы на языке Prolog
```prolog
child("David Armstrong-Jones Viscount Linley", "Anthony Armstrong-Jones Earl of Snowdon").
child("David Armstrong-Jones Viscount Linley" , "Princess Margaret").
male("David Armstrong-Jones Viscount Linley").

male("Anthony Armstrong-Jones Earl of Snowdon").

child("Lady Sarah Armstrong-Jones", "Anthony Armstrong-Jones Earl of Snowdon").
child("Lady Sarah Armstrong-Jones" , "Princess Margaret").
female("Lady Sarah Armstrong-Jones").

child("Hon. Charles Armstrong-Jones", "David Armstrong-Jones Viscount Linley").
child("Hon. Charles Armstrong-Jones", "Serena Stanhope").
male("Hon. Charles Armstrong-Jones").

female("Serena Stanhope").

child("Samuel Chatto", "Daniel Chatto").
child("Samuel Chatto", "Lady Sarah Armstrong-Jones").
male("Samuel Chatto").

male("Daniel Chatto").
```
Предикат поиска золовки реализован следующим образом:
Сначала создаем предикат сестра и муж. 
Сестра - человек женского пола с общими родителями. 
Муж - человек мужского пола с общим ребенком.
```
sister(X, Y) :- child(X, Z), child(Y, Z), female(Y).
husband(X, Y) :- child(Z, X), child(Z, Y), male(Y).
```
Теперь находим сестру мужа.
```
SisterInLaw(X, Y) :- husband(X, Z), sister(Y, Z).
```
Ответ для Serena Stanhop: Lady Sarah Armstrong-Jones. 
## Выводы

Выполняя курсовой проект, я понял, как близок Prolog к нашему естественному языку. Как можно выдать сущности хорошее определение и программа ее найдет. Создается ощущение, что 
программист на Prolog будто объясняет ребенку кто такая золовка и ребенок сам находит ее на родовом дереве. К тому же, здесь мы имеем дело с вполне реалистичными понятиями, которыми
мы апеллируем в мозгу не задумываясь, так как они для нас привычны. 


