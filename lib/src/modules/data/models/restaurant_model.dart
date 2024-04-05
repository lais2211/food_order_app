import 'package:flutter/material.dart';
import 'package:restaurante_app/src/modules/data/models/addon_model.dart';
import 'package:restaurante_app/src/modules/data/models/food_enum.dart';

import 'food_model.dart';

class Restaurant extends ChangeNotifier{
  final List<Food> menu = [
    //burguers

    Food(
        description:
            'Um hambúrguer suculento com carne 100% Angus, coberto com queijo cheddar derretido, alface crocante, tomate fresco, cebola roxa fatiada e um toque especial de molho secreto, tudo isso servido em um pão de brioche levemente tostado.',
        imagePath: 'lib/assets/burgers/1.jpg',
        price: 35.0,
        name: 'The Classic Tower',
        category: FoodCategory.burger,
        availableAddons: [
          Addon('Bacon', 4.00),
          Addon('Quejo Cheddar', 4.00),
          Addon('Cebola empadana', 5.99),
          Addon('Salada', 2.99),
          Addon('Molho da casa', 1.99),
        ]),
    Food(
        description:
            'Uma explosão de sabores picantes! Este hambúrguer apresenta uma generosa porção de carne de picanha temperada, coberta com queijo pepper jack derretido, jalapeños em conserva, cebola crispy e um molho de pimenta especial. Servido em um pão de batata macio e levemente apimentado.',
        imagePath: 'lib/assets/burgers/2.jpg',
        price: 32.0,
        name: 'The Spicy Inferno',
        category: FoodCategory.burger,
        availableAddons: [
          Addon('Bacon', 4.00),
          Addon('Quejo Cheddar', 4.00),
          Addon('Cebola empadana', 5.99),
          Addon('Salada', 2.99),
          Addon('Molho da casa', 1.99),
        ]),
    Food(
        description:
            'Uma opção deliciosa para os amantes de vegetais! Esse hambúrguer vegetariano é feito com uma suculenta base de cogumelos e feijão preto, temperada com ervas frescas. É servido com alface crocante, tomate fatiado, cebola roxa, abacate cremoso e um molho de iogurte com ervas. Tudo isso em um pão integral levemente tostado.',
        imagePath: 'lib/assets/burgers/3.jpg',
        price: 40.0,
        name: 'The Veggie Delight',
        category: FoodCategory.burger,
        availableAddons: [
          Addon('Bacon', 4.00),
          Addon('Quejo Cheddar', 4.00),
          Addon('Cebola empadana', 5.99),
          Addon('Salada', 2.99),
          Addon('Molho da casa', 1.99),
        ]),
    Food(
        description:
            'Prepare-se para um festival de sabores defumados! Este hambúrguer é composto por carne suína desfiada cozida lentamente em molho barbecue artesanal, coberta com queijo cheddar derretido, cebola caramelizada e fatias de bacon crocante. Servido em um pão de cerveja tostado.',
        imagePath: 'lib/assets/burgers/4.jpg',
        price: 31.0,
        name: 'The BBQ Master',
        category: FoodCategory.burger,
        availableAddons: [
          Addon('Bacon', 4.00),
          Addon('Quejo Cheddar', 4.00),
          Addon('Cebola empadana', 5.99),
          Addon('Salada', 2.99),
          Addon('Molho da casa', 1.99),
        ]),
    Food(
        description:
            ' Uma experiência gastronômica luxuosa! Este hambúrguer é feito com carne de wagyu, conhecida por sua textura macia e sabor intensamente rico. É coberto com queijo brie derretido, rúcula fresca, cebola caramelizada e uma generosa porção de molho de trufas negras. Servido em um pão de brioche artesanal.',
        imagePath: 'lib/assets/burgers/5.jpg',
        price: 30.0,
        name: 'The Gourmet Truffle',
        category: FoodCategory.burger,
        availableAddons: [
          Addon('Bacon', 4.00),
          Addon('Quejo Cheddar', 4.00),
          Addon('Cebola empadana', 5.99),
          Addon('Salada', 2.99),
          Addon('Molho da casa', 1.99),
        ]),

    //salads

    Food(
        description:
            'Uma salada refrescante que combina o melhor da culinária mediterrânea. Esta salada apresenta uma mistura de alface crocante, tomate cereja suculento, pepino fresco, azeitonas Kalamata, queijo feta cremoso e um toque de azeite de oliva extra virgem. Perfeita para os amantes de sabores mediterrâneos.',
        imagePath: 'lib/assets/salads/1.jpg',
        price: 25.0,
        name: 'Mediterranean Bliss',
        category: FoodCategory.salad,
        availableAddons: [
          Addon('Molho de Mostarda e Mel', 4.00),
          Addon('Molho de Iogurte com Ervas', 4.00),
          Addon('Molho de Gergelim Oriental', 5.99),
          Addon('Molho de Limão e Manjericão', 2.99),
          Addon('Molho de Abacate e Coentro', 1.99),
        ]),
    Food(
        description:
            'Leve um pedacinho do paraíso para o seu prato com esta salada tropical. Uma mistura de folhas verdes frescas, abacaxi suculento, manga madura, palmito crocante, coco ralado e um toque de molho de limão e coentro. Uma explosão de sabores tropicais em cada garfada.',
        imagePath: 'lib/assets/salads/2.jpg',
        price: 22.0,
        name: 'Tropical Paradise',
        category: FoodCategory.salad,
        availableAddons: [
          Addon('Molho de Mostarda e Mel', 4.00),
          Addon('Molho de Iogurte com Ervas', 4.00),
          Addon('Molho de Gergelim Oriental', 5.99),
          Addon('Molho de Limão e Manjericão', 2.99),
          Addon('Molho de Abacate e Coentro', 1.99),
        ]),
    Food(
        description:
            'Uma salada crocante e cheia de sabores asiáticos. Esta salada é composta por repolho roxo fatiado, cenoura ralada, edamame, amendoim torrado, cebolinha picada e um molho de gengibre e soja. Perfeita para quem adora uma mistura equilibrada de texturas e um toque oriental.',
        imagePath: 'lib/assets/salads/3.jpg',
        price: 29.0,
        name: 'Asian Crunch',
        category: FoodCategory.salad,
        availableAddons: [
          Addon('Molho de Mostarda e Mel', 4.00),
          Addon('Molho de Iogurte com Ervas', 4.00),
          Addon('Molho de Gergelim Oriental', 5.99),
          Addon('Molho de Limão e Manjericão', 2.99),
          Addon('Molho de Abacate e Coentro', 1.99),
        ]),
    Food(
        description:
            'Uma versão saborosa e moderna da clássica salada Caesar. Alface romana grelhada, frango grelhado suculento, croutons crocantes, queijo parmesão ralado e um molho Caesar cremoso. A combinação perfeita entre grelhados e frescor, para uma salada cheia de sabor.',
        imagePath: 'lib/assets/salads/4.jpg',
        price: 21.0,
        name: 'Grilled Caesar',
        category: FoodCategory.salad,
        availableAddons: [
          Addon('Molho de Mostarda e Mel', 4.00),
          Addon('Molho de Iogurte com Ervas', 4.00),
          Addon('Molho de Gergelim Oriental', 5.99),
          Addon('Molho de Limão e Manjericão', 2.99),
          Addon('Molho de Abacate e Coentro', 1.99),
        ]),
    Food(
        description:
            'Uma salada nutritiva e repleta de ingredientes super saudáveis. Mix de folhas verdes, quinoa cozida, grão-de-bico crocante, abacate cremoso, sementes de chia e um molho de limão e azeite. Uma explosão de nutrientes e sabores que vão te dar energia para encarar o dia.',
        imagePath: 'lib/assets/salads/5.jpg',
        price: 30.0,
        name: 'Superfood Power',
        category: FoodCategory.salad,
        availableAddons: [
          Addon('Molho de Mostarda e Mel', 4.00),
          Addon('Molho de Iogurte com Ervas', 4.00),
          Addon('Molho de Gergelim Oriental', 5.99),
          Addon('Molho de Limão e Manjericão', 2.99),
          Addon('Molho de Abacate e Coentro', 1.99),
        ]),

    //sides
    Food(
        description:
            'Deliciosos anéis de cebola empanados e crocantes, perfeitamente temperados. Esses acompanhamentos são fritos até ficarem dourados e servidos com um molho especial para mergulhar. Uma opção clássica e irresistível que complementa qualquer lanche.',
        imagePath: 'lib/assets/sides/1.jpg',
        price: 30.0,
        name: 'Crispy Onion Rings',
        category: FoodCategory.side,
        availableAddons: [
          Addon('Molho de Chipotle', 4.00),
          Addon('Molho Ranch', 4.00),
          Addon('Molho de Queijo Cheddar', 5.99),
          Addon('Molho de Marinara', 2.99),
          Addon('Molho Barbecue', 1.99),
        ]),
    Food(
        description:
            'Pimentas jalapeño recheadas com uma mistura cremosa de queijo derretido, envoltas em uma crosta dourada e crocante. Esses poppers têm um toque picante e são perfeitos para os amantes de queijo. Acompanhados de um molho de ranch para um mergulho extra saboroso.',
        imagePath: 'lib/assets/sides/2.jpg',
        price: 25.0,
        name: 'Cheesy Jalapeño Poppers',
        category: FoodCategory.side,
        availableAddons: [
          Addon('Molho de Chipotle', 4.00),
          Addon('Molho Ranch', 4.00),
          Addon('Molho de Queijo Cheddar', 5.99),
          Addon('Molho de Marinara', 2.99),
          Addon('Molho Barbecue', 1.99),
        ]),
    Food(
        description:
            'Batatas fritas crocantes cobertas com uma generosa porção de alho picado e queijo parmesão ralado. Esses acompanhamentos são perfeitamente temperados com ervas e especiarias e fritos até ficarem dourados e deliciosos. Uma opção saborosa e cheia de sabor.',
        imagePath: 'lib/assets/sides/3.jpg',
        price: 23.0,
        name: 'Garlic Parmesan Fries',
        category: FoodCategory.side,
        availableAddons: [
          Addon('Molho de Chipotle', 4.00),
          Addon('Molho Ranch', 4.00),
          Addon('Molho de Queijo Cheddar', 5.99),
          Addon('Molho de Marinara', 2.99),
          Addon('Molho Barbecue', 1.99),
        ]),
    Food(
        description:
            ' Bastões de queijo mussarela empanados e fritos até ficarem dourados e derretidos por dentro. Esses acompanhamentos são perfeitamente crocantes por fora e irresistivelmente cremosos por dentro. Acompanhados de um molho de marinara para mergulhar e desfrutar de uma combinação clássica.',
        imagePath: 'lib/assets/sides/4.jpg',
        price: 27.0,
        name: 'Mozzarella Sticks',
        category: FoodCategory.side,
        availableAddons: [
          Addon('Molho de Chipotle', 4.00),
          Addon('Molho Ranch', 4.00),
          Addon('Molho de Queijo Cheddar', 5.99),
          Addon('Molho de Marinara', 2.99),
          Addon('Molho Barbecue', 1.99),
        ]),
    Food(
        description:
            'Batatas doces fritas e crocantes, cobertas com uma combinação de queijo cheddar derretido, bacon crocante, cebolinha picada e um toque de molho barbecue. Esses acompanhamentos oferecem um equilíbrio irresistível de sabores doces, salgados e defumados para satisfazer seus desejos.',
        imagePath: 'lib/assets/sides/5.jpg',
        price: 28.0,
        name: 'Loaded Sweet Potato Fries',
        category: FoodCategory.side,
        availableAddons: [
          Addon('Molho de Chipotle', 4.00),
          Addon('Molho Ranch', 4.00),
          Addon('Molho de Queijo Cheddar', 5.99),
          Addon('Molho de Marinara', 2.99),
          Addon('Molho Barbecue', 1.99),
        ]),

    //desserts

    Food(
        description:
            'Uma sobremesa indulgente que combina camadas de mousse de chocolate rico e cremoso com fatias de banana fresca e crocante, finalizada com chantilly e raspas de chocolate. Uma explosão de sabores para os amantes de chocolate e banana.',
        imagePath: 'lib/assets/desserts/1.jpg',
        price: 29.0,
        name: 'Choco-Banana Dream',
        category: FoodCategory.dessert,
        availableAddons: [
          Addon('Chantilly', 4.00),
          Addon('Calda de Chocolate', 4.00),
          Addon('Frutas Frescas', 5.99),
          Addon('Nozes Caramelizadas', 2.99),
          Addon('Biscoitos Crocantes', 1.99),
        ]),
    Food(
        description:
            'Uma sobremesa clássica e irresistível. Uma base de biscoito crocante, recheada com um creme de cheesecake suave e cremoso, coberto com um delicioso molho de morango fresco e finalizado com chantilly. Uma combinação perfeita de sabor doce e azedo.',
        imagePath: 'lib/assets/desserts/2.jpg',
        price: 28.0,
        name: 'Strawberry Cheesecake Delight',
        category: FoodCategory.dessert,
        availableAddons: [
          Addon('Chantilly', 4.00),
          Addon('Calda de Chocolate', 4.00),
          Addon('Frutas Frescas', 5.99),
          Addon('Nozes Caramelizadas', 2.99),
          Addon('Biscoitos Crocantes', 1.99),
        ]),
    Food(
        description:
            'Uma sobremesa decadente que apresenta uma base de massa folhada crocante, recheada com um caramelo cremoso e pecans caramelizados. Servido com uma bola de sorvete de baunilha e drizzles de caramelo por cima. Uma combinação irresistível de doçura e textura.',
        imagePath: 'lib/assets/desserts/3.jpg',
        price: 25.0,
        name: 'Caramel Pecan Bliss',
        category: FoodCategory.dessert,
        availableAddons: [
          Addon('Chantilly', 4.00),
          Addon('Calda de Chocolate', 4.00),
          Addon('Frutas Frescas', 5.99),
          Addon('Nozes Caramelizadas', 2.99),
          Addon('Biscoitos Crocantes', 1.99),
        ]),
    Food(
        description:
            'Uma sobremesa tropical que combina camadas de pão de ló de coco úmido, recheado com um creme de manga fresco e coberto com uma cobertura de coco ralado tostado. Uma explosão de sabores exóticos que vai te transportar para uma ilha paradisíaca.',
        imagePath: 'lib/assets/desserts/4.jpg',
        price: 30.0,
        name: 'Mango Coconut Paradise',
        category: FoodCategory.dessert,
        availableAddons: [
          Addon('Chantilly', 4.00),
          Addon('Calda de Chocolate', 4.00),
          Addon('Frutas Frescas', 5.99),
          Addon('Nozes Caramelizadas', 2.99),
          Addon('Biscoitos Crocantes', 1.99),
        ]),
    Food(
        description:
            'Uma sobremesa refrescante e cítrica. Um bolo de limão macio e úmido, recheado com uma camada de creme de limão e coberto com uma mistura de frutas vermelhas frescas, como morangos, framboesas e amoras. Perfeito para os amantes de sobremesas frescas e frutadas.',
        imagePath: 'lib/assets/desserts/5.jpg',
        price: 26.0,
        name: 'Lemon Berry Delight',
        category: FoodCategory.dessert,
        availableAddons: [
          Addon('Chantilly', 4.00),
          Addon('Calda de Chocolate', 4.00),
          Addon('Frutas Frescas', 5.99),
          Addon('Nozes Caramelizadas', 2.99),
          Addon('Biscoitos Crocantes', 1.99),
        ]),

    //drinks

    Food(
        description:
            'Uma refrescante mistura de suco de abacaxi e laranja, com um toque de maracujá. Essa bebida tropical é perfeita para dias quentes, trazendo uma explosão de sabores frutados e refrescantes.',
        imagePath: 'lib/assets/drinks/1.jpg',
        price: 15.0,
        name: 'Tropical Breeze',
        category: FoodCategory.drink,
        availableAddons: [
          Addon('Áçucar', 0.50),
          Addon('Adoçante', 0.50),
        ]),
    Food(
        description:
            'Uma bebida revigorante e borbulhante que combina hortelã fresca, suco de limão, açúcar e água com gás. Essa versão sem álcool do clássico mojito é perfeita para aqueles que procuram uma opção refrescante e com um toque de hortelã.',
        imagePath: 'lib/assets/drinks/2.jpg',
        price: 14.0,
        name: 'Minty Mojito Fizz',
        category: FoodCategory.drink,
        availableAddons: [
          Addon('Áçucar', 0.50),
          Addon('Adoçante', 0.50),
        ]),
    Food(
        description:
            'Um smoothie suave e cremoso feito com uma mistura de morangos, mirtilos e framboesas, combinado com iogurte e um toque de mel. Essa bebida é nutritiva, refrescante e cheia de antioxidantes, tornando-a uma opção saudável e saborosa.',
        imagePath: 'lib/assets/drinks/3.jpg',
        price: 16.0,
        name: 'Berry Bliss Smoothie',
        category: FoodCategory.drink,
        availableAddons: [
          Addon('Áçucar', 0.50),
          Addon('Adoçante', 0.50),
        ]),
    Food(
        description:
            'Uma bebida deliciosa e reconfortante para os amantes de café. Um espresso suave coberto com leite vaporizado e uma generosa quantidade de caramelo. Essa bebida é perfeita para começar o dia ou aproveitar um momento relaxante.',
        imagePath: 'lib/assets/drinks/4.jpg',
        price: 17.0,
        name: 'Caramel Macchiato Delight',
        category: FoodCategory.drink,
        availableAddons: [
          Addon('Áçucar', 0.50),
          Addon('Adoçante', 0.50),
        ]),
    Food(
        description:
            'Uma bebida efervescente e cítrica que combina suco de limão, suco de laranja e água com gás. Essa refrescante bebida é perfeita para quem gosta de sabores cítricos e uma dose extra de bolhas.',
        imagePath: 'lib/assets/drinks/5.jpg',
        price: 12.0,
        name: 'Citrus Sparkler',
        category: FoodCategory.drink,
        availableAddons: [
          Addon('Áçucar', 0.50),
          Addon('Adoçante', 0.50),
        ]),
  ];
}
