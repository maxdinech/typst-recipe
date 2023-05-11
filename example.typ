#import "recipe.typ": recipe, note

#set text(lang: "fr")
  
#set text(10pt, font: "IBM")
#set page(
  margin: (x: 54pt, y: 52pt),
  numbering: "1",
  number-align: right,
)

#let author = [de Max]

#let max-magrets-ananas = recipe(
  title: [Magrets de canard à l'ananas],
  author: author,
  description: [
    Sans doute mon plat préféré, cette recette du Sud-Ouest aux accords sucré-salé, sublimée par un vin proposant le juste équilibre de puissance et de fruits confits est une belle explosion de saveurs simples, les laissant toutes s'exprimer deux à deux en autant de mariages séduisants.
  ],
  prep_time: "20 minutes",
  bake_time: "15 minutes",
  difficulty: "facile",
  ingredients: [
    - 3 magrets de canard
    - 6 rondelles d'ananas
    - 4 c.à.s. de miel
    - 6 c.à.s de vinaigre
    - sel, poivre
  ],
  cookware: [],
  steps: [    
    Sortir les magrets 20 minutes avant la cuisson. Découper l'excédent de gras sur les côtés des magrets. Inciser profondément en croisillons le gras du magret, sans couper la viande. Saler et poivrer les deux côtés.

    Poser les magrets côté gras dans une poêle froide et chauffer à vif. Cuire 7 minutes#note("Cuire jusqu'a ce que le gras soit bien grillé. Quand il devient brun, on peut retourner.") en arrosant la chair et en retirant régulièrement l'excèdent de graisse fondue au fond de la poêle et en la réservant dans un bol#note("Cette graisse permettra de réaliser d'excellentes pommes de terres sautées qui accompagneront bien cette recette.").

    Retourner les magrets et cuire 3 minutes côté chair puis les retirer de la sauteuse en les couvrant sous de l'aluminium.

    Ajouter les tranches d'ananas et laisser caraméliser quelques minutes. Saler poivrer, réserver sur des assiettes chaudes.

    Déglacer la poêle avec le vinaigre, puis ajouter le miel. Laisser frémir deux minutes puis baisser le feu au minimum.
    
    Pour le service : découper le magret en tranches d'environ 1 cm. Les disposer en gardant la forme du magret sur un plat préalablement chauffé au four, ajouter l'ananas, et napper de la sauce au miel.

   #colbreak()
    #image("magrets-ananas.png", width: 100%)
  ],
  remarks: [],
  pairings: [
    Le magret de canard est une viande assez puissante en goût, il faut donc l’accompagner avec un vin rouge relativement jeune (5-10 ans) qui pourra rivaliser avec cette puissance. On pourrait penser aux vins de Bordeaux, mais l'accord avec l'ananas de la recette ne me semble pas évident. On cherchera ainsi plutôt des vins de la vallée du Rhône méridionale, autour de Vacqueyras et Châteauneuf-du-Pape, à la recherche de notes d'orange, ou bien des vins du Languedoc pour leurs tanins puissants et les notes de prune. Ou encore, pour un accord plus régional, un malbec du Sud-Ouest. Par exemple :
      - Cotes-du-Rhône, *Domaine des Tours* (#sym.euro)
      - Minervois-la-Livinière, *Chateau Maris -- Les Planels* (#sym.euro#sym.euro)
      - Terrasses du Larzac, *Domaine de Montcalmès 2018* (#sym.euro#sym.euro)
  ]
)


#let max-filet-pate = recipe(
  title: [Filet mignon de porc en pâte],
  author: author,
  description: [Description ici],
  prep_time: "20 minutes",
  bake_time: "15 minutes",
  difficulty: "facile",
  ingredients: [
    - 1 filet mignon de porc
    - une pate feuilletée
    - moutarde (4 c.s.)
    - crème fraiche (4 c.s.)
    - vin blanc (10 cl)
    - sel (1 pincée)
    - poivre
  ],
  cookware: [
    Un moule de 22cm
  ],
  steps: [    
    + Sortir les magrets 20 minutes avant la cuisson.
    + Retirer l'excedent de gras sur les cotes des magrets.
    + Avec un couteau, inciser profondément en croisillons le gras du magret, saler et poivrer les 2 cotés.
    + Poser les magrets cote gras dans une poele chauffee a vif
    + Cuire 5 minutes en arrosant le dessus des magrets avec le gras de cuisson
    + Retourner les magrets et cuire 3 minutes avant de les retirer de la sauteuse et les envelopper dans du papier aluminium.
   #colbreak()
    7. Reserver le gras de la sauteuse, ajouter les tranches d'ananas et laisser caraméliser quelques minutes. Saler poivrer, Réserver sur des assiettes chaudes.
    + Jetez la graisse contenue dans la poêle et remettez-la sur feu vif, avec les tranches d'ananas, leur jus et le reste de marinade des magrets. Faites-les caraméliser en les retournant souvent.
    + Dès que l'ananas est coloré, réglez le feu au minimum, posez les ­magrets dans la poêle, côté peau au-dessus, salez, poivrez, couvrez à demi et laissez sur feu doux encore 5 min.
    + aaa


  ],
  remarks: [
    - On peut utiliser l'excedent de graisse de canard (decoupe a la preparation et la graisse extraite pendant la cuisson) pour realiser des patates sautees.
  ]
)

#max-magrets-ananas
