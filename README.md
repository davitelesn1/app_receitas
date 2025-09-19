# 🍽️ App de Receitas com Flutter

Este é um projeto desenvolvido em Flutter que simula um app de receitas. Ele permite ao usuário navegar por categorias de refeições, visualizar detalhes das receitas e gerenciar suas favoritas, além de ajustar preferências no menu de configurações.


## 📱 Demonstração

<p align="center">
  <img src="assets/demo/demo_gif_1.gif" alt="App Demo 1" width="300"/>
  <img src="assets/demo/demo_gif_2.gif" alt="App Demo 2" width="300"/>
</p>


## 📱 Funcionalidades

- Navegação por **categorias de refeições**
- Visualização de **detalhes das refeições**
- Adição e remoção de refeições aos **favoritos**
- Tela de **configurações** para aplicar filtros de dieta
- Interface com **abas (tabs)** para facilitar a navegação

## 🧠 Principais Aprendizados

Durante o desenvolvimento deste app, foram abordados e fixados diversos conceitos essenciais do Flutter. Entre os principais destaques estão:

### ✅ Uso de Rotas Nomeadas

A navegação entre telas foi organizada com **rotas nomeadas**, centralizadas no arquivo `app_routes.dart`, facilitando a manutenção e evitando o uso de strings soltas no código:

```dart
class AppRoutes {
  static const HOME = '/';
  static const CATEGORIES_MEALS = '/categories-meals';
  static const MEAL_DETAIL = '/meal-detail';
  static const SETTINGS = '/settings';
}
```

Isso garante um fluxo de navegação limpo e seguro entre as telas principais como:

- `CategoriesScreen`
- `CategoriesMealsScreen`
- `MealDetailScreen`
- `SettingsScreen`

### 🧩 Organização por Telas

Cada tela foi criada em um arquivo separado, reforçando a modularização do projeto. As principais telas são:

- `CategoriesScreen`: Mostra as categorias de refeições
- `CategoriesMealsScreen`: Lista as refeições da categoria selecionada
- `MealDetailScreen`: Exibe detalhes de uma refeição específica
- `FavoriteScreen`: Lista as refeições favoritas
- `SettingsScreen`: Permite aplicar filtros (gluten-free, lactose-free etc.)
- `TabsScreen`: Controla a navegação por abas entre "Categorias" e "Favoritos"

### 🔁 Navegação com Abas

Foi utilizada a `BottomNavigationBar` para alternar entre duas seções principais:

- **Categorias**
- **Favoritos**

Isso foi implementado na `TabsScreen`, garantindo uma experiência fluida e intuitiva.

### ⚙️ Filtros Personalizados

A `SettingsScreen` permite ao usuário aplicar filtros, e essas preferências são passadas como parâmetros para atualizar a lista de refeições exibidas.

---

## 📂 Estrutura de Arquivos

```
lib/
├── components/
│   ├── category_item.dart
│   ├── main_drawer.dart
│   └── meal_item.dart
├── data/
│   └── dummy_data.dart
├── app_routes.dart
├── models/
│   ├── category.dart
│   ├── meal.dart
│   └── settings.dart
├── screens/
│   ├── categories_screen.dart
│   ├── categories_meals_screen.dart
│   ├── favorite_screen.dart
│   ├── meal_detail_screen.dart
│   ├── settings_screen.dart
│   └── tabs_screen.dart
├── utils/
│   └── app_routes.dart
└── main.dart

```

---

## 🧑‍💻 Tecnologias Usadas

- Flutter
- Dart

---

## 📌 Observações

Este projeto foi desenvolvido com fins educativos como parte de uma jornada de aprendizado em Flutter. O foco está no uso correto de:

- Rotas nomeadas
- Gerenciamento de estado simples com `setState`
- Modularização com múltiplas telas

