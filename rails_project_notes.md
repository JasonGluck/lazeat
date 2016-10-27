# Phuket letzeat

## Domain Modeling

**USER**

- name
- email
- password_digest
- zip code (optional?)

```ruby
has_many :favorites
has_many :dishes, through: :favorites
has_many :queries
```


**QUERY**

- user_id


```ruby
has_many :ingredients
belongs_to  :user
```
**FAVORITE**

- dish_id
- user_id

```ruby
belongs_to :dish
belongs_to :user
```
**INGREDIENT_DISHES**

```ruby
belongs_to :ingredient
belongs_to :dish
```

**DISH**

- name


```ruby
has_many :favorites
has_many :users, through: :favorites
has_many :ingredient_dishes
has_many :ingredients, through: :ingredient_dishes
```
**INGREDIENT**

- calories
- name
- vegetarian
- gluten


```ruby
has_many :ingredient_dishes
has_many :dishes, through: :ingredient_dishes
has_many :favorites, through: :dishes
```

## Wireframe


###Page 0 

1. login/signup form

###Page 1 

1. New ingredient form (enter your ingredients)

  - text field for entering an ingredient
  - ingredient is added to list (dish search list, RSL)
  - rsl is stored on cookie
  - search is performed every time I add an ingredient
  - Able to delete ingredient
  - Able to edit ingredient

2. Link to your past saved dishes

### Page 2 

1. Saved dishes

  - Picture
  - Title
  - Short description?
  - link

2. Delete dishes


### Future Features?

- food_group [carb, dairy, protein, vegetable, fruit, fat, sugar]

- Instead of cooking the saved dish, you can order it. (I'm Feeling Lazy Button)

- Filter results (blacklist ingredients/types of food?, rating levels)

- Other user interaction? (see other users favorites?)

- Validate ingredient input
