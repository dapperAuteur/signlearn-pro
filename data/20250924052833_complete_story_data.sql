-- Complete migration with all 353 lessons from CSV
-- Generated on 2025-09-24T05:28:33.344Z


-- Clear existing data
DELETE FROM story_lessons;
DELETE FROM user_progress;
DELETE FROM learning_sessions;
DELETE FROM stories;

-- Create 12 story parts (353 lessons ÷ 30 ≈ 12 stories)
INSERT INTO stories (title, description, difficulty_level, story_order) VALUES
('Curb Appeall Story 1', 'Learn 30 verbs through Curb and friends adventures (lessons 1-30)', 1, 1),
('Curb Appeall Story 2', 'Learn 30 verbs through Curb and friends adventures (lessons 31-60)', 1, 2),
('Curb Appeall Story 3', 'Learn 30 verbs through Curb and friends adventures (lessons 61-90)', 1, 3),
('Curb Appeall Story 4', 'Learn 30 verbs through Curb and friends adventures (lessons 91-120)', 2, 4),
('Curb Appeall Story 5', 'Learn 30 verbs through Curb and friends adventures (lessons 121-150)', 2, 5),
('Curb Appeall Story 6', 'Learn 30 verbs through Curb and friends adventures (lessons 151-180)', 2, 6),
('Curb Appeall Story 7', 'Learn 30 verbs through Curb and friends adventures (lessons 181-210)', 2, 7),
('Curb Appeall Story 8', 'Learn 30 verbs through Curb and friends adventures (lessons 211-240)', 3, 8),
('Curb Appeall Story 9', 'Learn 30 verbs through Curb and friends adventures (lessons 241-270)', 3, 9),
('Curb Appeall Story 10', 'Learn 30 verbs through Curb and friends adventures (lessons 271-300)', 3, 10),
('Curb Appeall Story 11', 'Learn 30 verbs through Curb and friends adventures (lessons 301-330)', 3, 11),
('Curb Appeall Story 12', 'Learn 23 verbs through Curb and friends adventures (lessons 331-353)', 3, 12);

-- Insert all 353 lessons into the 'lessons' table
INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 1, 'to help', 'ayudar', 'aider', 'aiutare', 'ajudar', 'Curb Appeall helps Platypus prepare a healthy picnic.', 'Curb Appeall ayuda a Platypus a preparar un picnic saludable.', 'Curb Appeall aide Platypus à préparer un pique-nique.', 'Curb Appeall aiuta Platypus a preparare un picnic.', 'Curb Appeall ajuda o Platypus a preparar um piquenique.'
FROM stories s WHERE s.title = 'Curb Appeall Story 1';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 2, 'to study', 'estudiar', 'étudier', 'studiare', 'estudar', 'Curb and his friends decided to study nutrition to better understand their favorite foods.', 'Curb y sus amigos decidieron estudiar nutrición para entender mejor sus alimentos favoritos.', 'Curb et ses amis ont décidé d''étudier la nutrition pour mieux comprendre leurs aliments préférés.', 'Curb e i suoi amici hanno deciso di studiare la nutrizione per capire meglio i loro cibi preferiti.', 'Curb e seus amigos decidiram estudar nutrição para entender melhor seus alimentos favoritos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 1';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 3, 'to teach', 'enseñar', 'enseigner', 'insegnare', 'ensinar', 'The kangaroo taught the others how to make a healthy smoothie with fruits and vegetables.', 'El canguro enseñó a los demás a preparar un batido saludable con frutas y verduras.', 'Le kangourou a appris aux autres à préparer un smoothie sain avec des fruits et des légumes.', 'Il canguro ha insegnato agli altri come preparare un frullato sano con frutta e verdura.', 'O canguru ensinou os outros a fazer um smoothie saudável com frutas e vegetais.'
FROM stories s WHERE s.title = 'Curb Appeall Story 1';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 4, 'to enjoy', 'disfrutar', 'profiter de', 'godere', 'aproveitar', 'Everyone enjoyed the smoothie while discussing ways to save money on healthy food.', 'Todos disfrutaron el batido mientras discutían formas de ahorrar dinero en alimentos saludables.', 'Tout le monde a profité du smoothie tout en discutant des moyens d''économiser de l''argent sur la nourriture saine.', 'Tutti hanno goduto del frullato mentre discutevano modi per risparmiare denaro sugli alimenti sani.', 'Todos aproveitaram o smoothie enquanto discutiam maneiras de economizar dinheiro em alimentos saudáveis.'
FROM stories s WHERE s.title = 'Curb Appeall Story 1';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 5, 'to work', 'trabajar', 'travailler', 'lavorare', 'trabalhar', 'They decided to work together in a community garden to grow fresh food.', 'Decidieron trabajar juntos en un jardín comunitario para cultivar alimentos frescos.', 'Ils ont décidé de travailler ensemble dans un jardin communautaire pour cultiver des aliments frais.', 'Hanno deciso di lavorare insieme in un giardino comunitario per coltivare cibo fresco.', 'Decidiram trabalhar juntos em um jardim comunitário para cultivar alimentos frescos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 1';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 6, 'to pay', 'pagar', 'payer', 'pagare', 'pagar', 'Curb suggested paying with time instead of money to learn skills in the garden.', 'Curb sugirió pagar con tiempo en lugar de dinero para aprender habilidades en el jardín.', 'Curb a suggéré de payer avec du temps plutôt qu''avec de l''argent pour apprendre des compétences dans le jardin.', 'Curb ha suggerito di pagare con il tempo invece che con i soldi per imparare le competenze nel giardino.', 'Curb sugeriu pagar com tempo em vez de dinheiro para aprender habilidades no jardim.'
FROM stories s WHERE s.title = 'Curb Appeall Story 1';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 7, 'to save', 'ahorrar', 'économiser', 'risparmiare', 'economizar', 'They learned to save water by using efficient irrigation systems.', 'Aprendieron a ahorrar agua utilizando sistemas de riego eficiente.', 'Ils ont appris à économiser de l''eau en utilisant des systèmes d''irrigation efficaces.', 'Hanno imparato a risparmiare acqua utilizzando sistemi di irrigazione efficienti.', 'Aprenderam a economizar água usando sistemas de irrigação eficientes.'
FROM stories s WHERE s.title = 'Curb Appeall Story 1';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 8, 'to cook', 'cocinar', 'cuisiner', 'cucinare', 'cozinhar', 'Then, they cooked a soup together with the vegetables they grew.', 'Luego, cocinaron juntos una sopa con las verduras que cultivaron.', 'Ensuite, ils ont cuisiné une soupe ensemble avec les légumes qu''ils ont cultivés.', 'Poi hanno cucinato insieme una zuppa con le verdure che hanno coltivato.', 'Depois, cozinharam juntos uma sopa com os vegetais que cultivaram.'
FROM stories s WHERE s.title = 'Curb Appeall Story 1';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 9, 'to share', 'compartir', 'partager', 'condividere', 'compartilhar', 'They decided to share the soup with the neighborhood kids to teach them about nutrition.', 'Decidieron compartir la sopa con los niños del vecindario para enseñarles sobre nutrición.', 'Ils ont décidé de partager la soupe avec les enfants du quartier pour leur enseigner la nutrition.', 'Hanno deciso di condividere la zuppa con i bambini del quartiere per insegnare loro la nutrizione.', 'Decidiram compartilhar a sopa com as crianças da vizinhança para ensiná-las sobre nutrição.'
FROM stories s WHERE s.title = 'Curb Appeall Story 1';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 10, 'to walk', 'caminar', 'marcher', 'camminare', 'caminhar', 'After the meal, they took a walk around the neighborhood to promote physical activity.', 'Después de la comida, dieron un paseo por el vecindario para promover la actividad física.', 'Après le repas, ils ont fait une promenade dans le quartier pour promouvoir l''activité physique.', 'Dopo il pasto, hanno fatto una passeggiata nel quartiere per promuovere l''attività fisica.', 'Após a refeição, deram um passeio pelo bairro para promover a atividade física.'
FROM stories s WHERE s.title = 'Curb Appeall Story 1';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 11, 'to learn', 'aprender', 'apprendre', 'imparare', 'aprender', 'Curb and his friends want to learn how to save.', 'Curb y sus amigos quieren aprender a ahorrar.', 'Curb et ses amis veulent apprendre à économiser.', 'Curb e i suoi amici vogliono imparare a risparmiare.', 'Curb e seus amigos querem aprender a economizar.'
FROM stories s WHERE s.title = 'Curb Appeall Story 1';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 12, 'to listen', 'escuchar', 'écouter', 'ascoltare', 'ouvir', 'The group listens carefully to an otter talking about money.', 'El grupo escucha atentamente a una nutria que les habla sobre dinero.', 'Le groupe écoute attentivement une loutre parler d''argent.', 'Il gruppo ascolta attentamente una lontra che parla di soldi.', 'O grupo ouve atentamente uma lontra falando sobre dinheiro.'
FROM stories s WHERE s.title = 'Curb Appeall Story 1';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 13, 'to plan', 'planear', 'planifier', 'pianificare', 'planejar', 'The otter teaches them to plan a budget for their trip.', 'La nutria les enseña a planear un presupuesto para su viaje.', 'La loutre leur apprend à planifier un budget pour leur voyage.', 'La lontra insegna loro a pianificare un budget per il loro viaggio.', 'A lontra ensina-os a planejar um orçamento para sua viagem.'
FROM stories s WHERE s.title = 'Curb Appeall Story 1';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 14, 'to run', 'correr', 'courir', 'correre', 'correr', 'Later, they decide to run around the lake as exercise.', 'Más tarde, deciden correr alrededor del lago como ejercicio.', 'Plus tard, ils décident de courir autour du lac comme exercice.', 'Più tardi, decidono di correre intorno al lago come esercizio.', 'Mais tarde, eles decidem correr ao redor do lago como exercício.'
FROM stories s WHERE s.title = 'Curb Appeall Story 1';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 15, 'to cook', 'cocinar', 'cuisiner', 'cucinare', 'cozinhar', 'Upon returning, Curb helps cook a healthy dinner with the kangaroo.', 'Al volver, Curb ayuda a cocinar una cena saludable con la canguro.', 'En rentrant, Curb aide à cuisiner un dîner sain avec le kangourou.', 'Al ritorno, Curb aiuta a cucinare una cena salutare con il canguro.', 'Ao voltar, Curb ajuda a cozinhar um jantar saudável com o canguru.'
FROM stories s WHERE s.title = 'Curb Appeall Story 1';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 16, 'to dance', 'bailar', 'danser', 'ballare', 'dançar', 'After dinner, everyone starts dancing to celebrate their learning.', 'Después de cenar, todos empiezan a bailar para celebrar su aprendizaje.', 'Après le dîner, tout le monde commence à danser pour célébrer leur apprentissage.', 'Dopo cena, tutti iniziano a ballare per celebrare il loro apprendimento.', 'Após o jantar, todos começam a dançar para celebrar o que aprenderam.'
FROM stories s WHERE s.title = 'Curb Appeall Story 1';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 17, 'to rest', 'descansar', 'se reposer', 'riposarsi', 'descansar', 'Then, they decide to rest under a big tree while talking about their dreams.', 'Luego, deciden descansar bajo un gran árbol mientras hablan sobre sus sueños.', 'Ensuite, ils décident de se reposer sous un grand arbre tout en parlant de leurs rêves.', 'Poi decidono di riposarsi sotto un grande albero mentre parlano dei loro sogni.', 'Depois, eles decidem descansar sob uma grande árvore enquanto falam sobre seus sonhos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 1';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 18, 'to jump', 'saltar', 'sauter', 'saltare', 'pular', 'While resting, they decide to jump over rocks to practice balance.', 'Mientras descansan, deciden saltar sobre rocas para practicar equilibrio.', 'Pendant qu''ils se reposent, ils décident de sauter sur des rochers pour pratiquer l''équilibre.', 'Mentre si riposano, decidono di saltare sulle rocce per praticare l''equilibrio.', 'Enquanto descansam, eles decidem pular sobre pedras para praticar o equilíbrio.'
FROM stories s WHERE s.title = 'Curb Appeall Story 1';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 19, 'to play', 'jugar', 'jouer', 'giocare', 'jogar', 'The kids and the animals play by inventing healthy recipes.', 'Los niños y los animales juegan a inventar recetas saludables.', 'Les enfants et les animaux jouent à inventer des recettes saines.', 'I bambini e gli animali giocano inventando ricette salutari.', 'As crianças e os animais brincam de inventar receitas saudáveis.'
FROM stories s WHERE s.title = 'Curb Appeall Story 1';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 20, 'to search', 'buscar', 'chercher', 'cercare', 'buscar', 'They decide to search for local ingredients to prepare a big breakfast.', 'Deciden buscar ingredientes locales para preparar un gran desayuno.', 'Ils décident de chercher des ingrédients locaux pour préparer un grand petit-déjeuner.', 'Decidono di cercare ingredienti locali per preparare una grande colazione.', 'Decidem buscar ingredientes locais para preparar um grande café da manhã.'
FROM stories s WHERE s.title = 'Curb Appeall Story 1';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 21, 'to find', 'encontrar', 'trouver', 'trovare', 'encontrar', 'They find fresh fruits and herbs for their recipes.', 'Encuentran frutas frescas y hierbas para sus recetas.', 'Ils trouvent des fruits frais et des herbes pour leurs recettes.', 'Trovano frutta fresca ed erbe per le loro ricette.', 'Eles encontram frutas frescas e ervas para suas receitas.'
FROM stories s WHERE s.title = 'Curb Appeall Story 1';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 22, 'to explain', 'explicar', 'expliquer', 'spiegare', 'explicar', 'The lemur explains why fruits are good for energy.', 'El lémur explica por qué las frutas son buenas para la energía.', 'Le lémurien explique pourquoi les fruits sont bons pour l''énergie.', 'Il lemure spiega perché i frutti sono buoni per l''energia.', 'O lêmure explica por que as frutas são boas para a energia.'
FROM stories s WHERE s.title = 'Curb Appeall Story 1';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 23, 'to win', 'ganar', 'gagner', 'vincere', 'ganhar', '"If we keep this up, we can win a cooking contest!" says Curb.', '"¡Si seguimos así, podemos ganar un concurso de cocina!", dice Curb.', '"Si nous continuons ainsi, nous pouvons gagner un concours de cuisine !", dit Curb.', '"Se continuiamo così, possiamo vincere un concorso di cucina!" dice Curb.', '"Se continuarmos assim, podemos ganhar um concurso de culinária!" diz Curb.'
FROM stories s WHERE s.title = 'Curb Appeall Story 1';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 24, 'to run', 'correr', 'courir', 'correre', 'correr', 'In the morning, they all run together as part of their daily routine.', 'Por la mañana, todos corren juntos como parte de su rutina diaria.', 'Le matin, ils courent tous ensemble dans le cadre de leur routine quotidienne.', 'Al mattino, corrono tutti insieme come parte della loro routine quotidiana.', 'De manhã, todos correm juntos como parte de sua rotina diária.'
FROM stories s WHERE s.title = 'Curb Appeall Story 1';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 25, 'to teach', 'enseñar', 'enseigner', 'insegnare', 'ensinar', 'The kangaroo teaches them how to measure their food portions using their hands.', 'El canguro les enseña cómo medir sus porciones de comida usando sus manos.', 'Le kangourou leur enseigne comment mesurer leurs portions de nourriture avec leurs mains.', 'Il canguro insegna loro come misurare le porzioni di cibo usando le mani.', 'O canguru ensina como medir as porções de comida usando as mãos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 1';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 26, 'to drink', 'beber', 'boire', 'bere', 'beber', 'The platypus reminds everyone that it’s important to drink enough water.', 'El ornitorrinco recuerda a todos que es importante beber suficiente agua.', 'L''ornithorynque rappelle à tout le monde qu''il est important de boire suffisamment d''eau.', 'L''ornitorinco ricorda a tutti che è importante bere abbastanza acqua.', 'O ornitorrinco lembra a todos que é importante beber água suficiente.'
FROM stories s WHERE s.title = 'Curb Appeall Story 1';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 27, 'to rest', 'descansar', 'se reposer', 'riposarsi', 'descansar', 'After running, they sit to rest under a big tree.', 'Después de correr, se sientan a descansar bajo un gran árbol.', 'Après avoir couru, ils s''assoient pour se reposer sous un grand arbre.', 'Dopo aver corso, si siedono a riposarsi sotto un grande albero.', 'Após correrem, sentam-se para descansar sob uma grande árvore.'
FROM stories s WHERE s.title = 'Curb Appeall Story 1';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 28, 'to listen', 'escuchar', 'écouter', 'ascoltare', 'ouvir', 'While resting, they listen to the birdsong.', 'Mientras descansan, escuchan el canto de los pájaros.', 'Pendant qu''ils se reposent, ils écoutent le chant des oiseaux.', 'Mentre si riposano, ascoltano il canto degli uccelli.', 'Enquanto descansam, ouvem o canto dos pássaros.'
FROM stories s WHERE s.title = 'Curb Appeall Story 1';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 29, 'to prepare', 'preparar', 'préparer', 'preparare', 'preparar', 'They all gather to prepare a healthy breakfast with fruits and oats.', 'Todos se reúnen para preparar un desayuno saludable con frutas y avena.', 'Ils se réunissent tous pour préparer un petit-déjeuner sain avec des fruits et de l''avoine.', 'Si riuniscono tutti per preparare una colazione sana con frutta e avena.', 'Todos se reúnem para preparar um café da manhã saudável com frutas e aveia.'
FROM stories s WHERE s.title = 'Curb Appeall Story 1';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 30, 'to walk', 'caminar', 'marcher', 'camminare', 'caminhar', 'Later, they decide to walk to the market to find more ingredients.', 'Más tarde, deciden caminar al mercado para buscar más ingredientes.', 'Plus tard, ils décident de marcher jusqu''au marché pour trouver d''autres ingrédients.', 'Più tardi, decidono di camminare fino al mercato per trovare altri ingredienti.', 'Mais tarde, decidem caminhar até o mercado para encontrar mais ingredientes.'
FROM stories s WHERE s.title = 'Curb Appeall Story 1';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 1, 'to save (money)', 'ahorrar', 'économiser', 'risparmiare', 'economizar', 'Curb tells them that saving money is also part of a healthy lifestyle.', 'Curb les dice que ahorrar dinero también es parte de un estilo de vida saludable.', 'Curb leur dit qu''économiser de l''argent fait également partie d''un mode de vie sain.', 'Curb dice loro che risparmiare denaro è anche parte di uno stile di vita sano.', 'Curb diz que economizar dinheiro também faz parte de um estilo de vida saudável.'
FROM stories s WHERE s.title = 'Curb Appeall Story 2';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 2, 'to share', 'compartir', 'partager', 'condividere', 'compartilhar', 'Curb suggests that everyone shares a shopping list to save money.', 'Curb sugiere que todos compartan una lista de compras para ahorrar dinero.', 'Curb suggère que tout le monde partage une liste de courses pour économiser de l''argent.', 'Curb suggerisce a tutti di condividere una lista della spesa per risparmiare denaro.', 'Curb sugere que todos compartilhem uma lista de compras para economizar dinheiro.'
FROM stories s WHERE s.title = 'Curb Appeall Story 2';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 3, 'to cook', 'cocinar', 'cuisiner', 'cucinare', 'cozinhar', 'The kangaroo helps cook a stew with fresh vegetables from the market.', 'El canguro ayuda a cocinar un guiso con vegetales frescos del mercado.', 'Le kangourou aide à cuisiner un ragoût avec des légumes frais du marché.', 'Il canguro aiuta a cucinare uno stufato con verdure fresche dal mercato.', 'O canguru ajuda a cozinhar um ensopado com vegetais frescos do mercado.'
FROM stories s WHERE s.title = 'Curb Appeall Story 2';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 4, 'to jump', 'saltar', 'sauter', 'saltare', 'pular', 'After eating, the kids decide to jump rope for exercise.', 'Después de comer, los niños deciden saltar la cuerda para hacer ejercicio.', 'Après avoir mangé, les enfants décident de sauter à la corde pour faire de l''exercice.', 'Dopo aver mangiato, i bambini decidono di saltare la corda per esercitarsi.', 'Depois de comer, as crianças decidem pular corda para se exercitar.'
FROM stories s WHERE s.title = 'Curb Appeall Story 2';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 5, 'to dance', 'bailar', 'danser', 'ballare', 'dançar', 'The platypus plays music, and everyone starts dancing happily.', 'El ornitorrinco pone música y todos comienzan a bailar alegremente.', 'L''ornithorynque met de la musique et tout le monde commence à danser joyeusement.', 'L''ornitorinco mette della musica e tutti iniziano a ballare felicemente.', 'O ornitorrinco coloca música e todos começam a dançar alegremente.'
FROM stories s WHERE s.title = 'Curb Appeall Story 2';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 6, 'to take care of', 'cuidar', 'prendre soin de', 'prendersi cura di', 'cuidar', 'Curb tells them that taking care of their body is as important as taking care of money.', 'Curb les dice que cuidar de su cuerpo es tan importante como cuidar del dinero.', 'Curb leur dit que prendre soin de leur corps est aussi important que de leur argent.', 'Curb dice loro che prendersi cura del proprio corpo è importante quanto prendersi cura del denaro.', 'Curb diz que cuidar do corpo é tão importante quanto cuidar do dinheiro.'
FROM stories s WHERE s.title = 'Curb Appeall Story 2';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 7, 'to learn', 'aprender', 'apprendre', 'imparare', 'aprender', 'They decide to learn a new recipe that is nutritious and easy to prepare.', 'Deciden aprender una nueva receta que sea nutritiva y fácil de preparar.', 'Ils décident d''apprendre une nouvelle recette nutritive et facile à préparer.', 'Decidono di imparare una nuova ricetta che sia nutriente e facile da preparare.', 'Decidem aprender uma nova receita que seja nutritiva e fácil de preparar.'
FROM stories s WHERE s.title = 'Curb Appeall Story 2';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 8, 'to run', 'correr', 'courir', 'correre', 'correr', 'In the afternoon, they all go running in the park to improve their stamina.', 'En la tarde, todos salen a correr por el parque para mejorar su resistencia.', 'Dans l''après-midi, ils vont tous courir dans le parc pour améliorer leur endurance.', 'Nel pomeriggio, tutti vanno a correre nel parco per migliorare la loro resistenza.', 'À tarde, todos vão correr no parque para melhorar sua resistência.'
FROM stories s WHERE s.title = 'Curb Appeall Story 2';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 9, 'to study', 'estudiar', 'étudier', 'studiare', 'estudar', 'The children decide to study food labels to better understand the ingredients.', 'Los niños deciden estudiar etiquetas de alimentos para entender mejor los ingredientes.', 'Les enfants décident d''étudier les étiquettes des aliments pour mieux comprendre les ingrédients.', 'I bambini decidono di studiare le etichette degli alimenti per capire meglio gli ingredienti.', 'As crianças decidem estudar os rótulos dos alimentos para entender melhor os ingredientes.'
FROM stories s WHERE s.title = 'Curb Appeall Story 2';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 10, 'to play', 'jugar', 'jouer', 'giocare', 'jogar', 'Then, they organize a game where they must quickly identify healthy foods.', 'Luego, organizan un juego donde deben identificar alimentos saludables rápidamente.', 'Ensuite, ils organisent un jeu où ils doivent rapidement identifier les aliments sains.', 'Poi organizzano un gioco in cui devono identificare rapidamente i cibi sani.', 'Depois, organizam um jogo onde devem identificar rapidamente alimentos saudáveis.'
FROM stories s WHERE s.title = 'Curb Appeall Story 2';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 11, 'to ask', 'preguntar', 'demander', 'chiedere', 'perguntar', 'The platypus asks why some foods have hidden sugar.', 'El ornitorrinco pregunta por qué algunos alimentos tienen azúcar escondido.', 'L''ornithorynque demande pourquoi certains aliments contiennent du sucre caché.', 'L''ornitorinco chiede perché alcuni alimenti contengono zucchero nascosto.', 'O ornitorrinco pergunta por que alguns alimentos têm açúcar escondido.'
FROM stories s WHERE s.title = 'Curb Appeall Story 2';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 12, 'to answer', 'responder', 'répondre', 'rispondere', 'responder', 'Curb answers that it''s important to read labels carefully to avoid excess.', 'Curb responde que es importante leer bien las etiquetas para evitar excesos.', 'Curb répond qu''il est important de bien lire les étiquettes pour éviter les excès.', 'Curb risponde che è importante leggere bene le etichette per evitare gli eccessi.', 'Curb responde que é importante ler bem os rótulos para evitar excessos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 2';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 13, 'to listen', 'escuchar', 'écouter', 'ascoltare', 'escutar', 'They listen to a nutritionist in a video explaining how to balance meals.', 'Escuchan a un nutricionista en un video que explica cómo equilibrar las comidas.', 'Ils écoutent un nutritionniste dans une vidéo expliquant comment équilibrer les repas.', 'Ascoltano un nutrizionista in un video che spiega come bilanciare i pasti.', 'Escutam um nutricionista em um vídeo que explica como equilibrar as refeições.'
FROM stories s WHERE s.title = 'Curb Appeall Story 2';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 14, 'to swim', 'nadar', 'nager', 'nuotare', 'nadar', 'The next day, they decide to swim in the park pool to stay active.', 'Al día siguiente, deciden nadar en la piscina del parque para mantenerse activos.', 'Le lendemain, ils décident de nager dans la piscine du parc pour rester actifs.', 'Il giorno dopo, decidono di nuotare nella piscina del parco per rimanere attivi.', 'No dia seguinte, decidem nadar na piscina do parque para se manterem ativos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 2';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 15, 'to build', 'construir', 'construire', 'costruire', 'construir', 'Afterwards, they build a fort with branches while talking about their personal goals.', 'Después, construyen un fuerte con ramas mientras hablan de sus metas personales.', 'Ensuite, ils construisent un fort avec des branches en parlant de leurs objectifs personnels.', 'Successivamente costruiscono un fortino con dei rami parlando dei loro obiettivi personali.', 'Depois, constroem um forte com galhos enquanto falam de seus objetivos pessoais.'
FROM stories s WHERE s.title = 'Curb Appeall Story 2';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 16, 'to search/look for', 'buscar', 'chercher', 'cercare', 'buscar', 'They look for healthy snack ideas in a recipe book at the library.', 'Buscan ideas para snacks saludables en un libro de recetas de la biblioteca.', 'Ils cherchent des idées de collations saines dans un livre de recettes à la bibliothèque.', 'Cercano idee per snack salutari in un libro di ricette della biblioteca.', 'Procuram ideias para lanches saudáveis em um livro de receitas na biblioteca.'
FROM stories s WHERE s.title = 'Curb Appeall Story 2';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 17, 'to cook', 'cocinar', 'cuisiner', 'cucinare', 'cozinhar', 'They decide to cook a healthy recipe they found in the book together.', 'Deciden cocinar juntos una receta saludable que encontraron en el libro.', 'Ils décident de cuisiner ensemble une recette saine trouvée dans le livre.', 'Decidono di cucinare insieme una ricetta salutare trovata nel libro.', 'Decidem cozinhar juntos uma receita saudável que encontraram no livro.'
FROM stories s WHERE s.title = 'Curb Appeall Story 2';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 18, 'to teach', 'enseñar', 'enseigner', 'insegnare', 'ensinar', 'The kangaroo teaches how to measure ingredients using a scale.', 'El canguro enseña cómo medir ingredientes usando una balanza.', 'Le kangourou enseigne comment mesurer les ingrédients en utilisant une balance.', 'Il canguro insegna come misurare gli ingredienti usando una bilancia.', 'O canguru ensina como medir os ingredientes usando uma balança.'
FROM stories s WHERE s.title = 'Curb Appeall Story 2';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 19, 'to work', 'trabajar', 'travailler', 'lavorare', 'trabalhar', 'Everyone works together to prepare a delicious and nutritious meal.', 'Todos trabajan juntos para preparar una comida deliciosa y nutritiva.', 'Tout le monde travaille ensemble pour préparer un repas délicieux et nutritif.', 'Tutti lavorano insieme per preparare un pasto delizioso e nutriente.', 'Todos trabalham juntos para preparar uma refeição deliciosa e nutritiva.'
FROM stories s WHERE s.title = 'Curb Appeall Story 2';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 20, 'to clean', 'limpiar', 'nettoyer', 'pulire', 'limpar', 'After eating, they clean the kitchen and discuss ways to save water.', 'Después de comer, limpian la cocina y discuten formas de ahorrar agua.', 'Après avoir mangé, ils nettoient la cuisine et discutent des moyens d''économiser l''eau.', 'Dopo aver mangiato, puliscono la cucina e discutono di modi per risparmiare acqua.', 'Depois de comer, limpam a cozinha e discutem maneiras de economizar água.'
FROM stories s WHERE s.title = 'Curb Appeall Story 2';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 21, 'to share', 'compartir', 'partager', 'condividere', 'compartilhar', 'They share what they learned with other kids in the neighborhood.', 'Comparten lo que aprendieron con otros niños en el vecindario.', 'Ils partagent ce qu''ils ont appris avec d''autres enfants du quartier.', 'Condividono ciò che hanno imparato con altri bambini del quartiere.', 'Compartilham o que aprenderam com outras crianças do bairro.'
FROM stories s WHERE s.title = 'Curb Appeall Story 2';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 22, 'to jump', 'saltar', 'sauter', 'saltare', 'pular', 'Later, they jump rope together for fun and exercise.', 'Más tarde, saltan la cuerda juntos para divertirse y hacer ejercicio.', 'Plus tard, ils sautent à la corde ensemble pour s''amuser et faire de l''exercice.', 'Più tardi saltano la corda insieme per divertirsi e fare esercizio.', 'Mais tarde, pulam corda juntos para se divertir e fazer exercício.'
FROM stories s WHERE s.title = 'Curb Appeall Story 2';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 23, 'to buy', 'comprar', 'acheter', 'comprare', 'comprar', 'They go to the local market to buy fresh fruits and vegetables.', 'Van al mercado local para comprar frutas y verduras frescas.', 'Ils vont au marché local pour acheter des fruits et légumes frais.', 'Vanno al mercato locale per comprare frutta e verdura fresca.', 'Vão ao mercado local para comprar frutas e vegetais frescos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 2';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 24, 'to save (money)', 'ahorrar', 'économiser', 'risparmiare', 'economizar', 'The platypus talks about how to save money by buying in bulk.', 'El ornitorrinco habla de cómo ahorrar dinero comprando productos a granel.', 'L''ornithorynque parle de comment économiser de l''argent en achetant en gros.', 'L''ornitorinco parla di come risparmiare denaro acquistando all''ingrosso.', 'O ornitorrinco fala sobre como economizar dinheiro comprando a granel.'
FROM stories s WHERE s.title = 'Curb Appeall Story 2';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 25, 'to plant', 'plantar', 'planter', 'piantare', 'plantar', 'After the market, they decide to plant a small garden in the yard.', 'Después del mercado, deciden plantar un pequeño huerto en el patio.', 'Après le marché, ils décident de planter un petit jardin dans la cour.', 'Dopo il mercato, decidono di piantare un piccolo orto nel cortile.', 'Depois do mercado, decidem plantar uma pequena horta no quintal.'
FROM stories s WHERE s.title = 'Curb Appeall Story 2';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 26, 'to water', 'regar', 'arroser', 'annaffiare', 'regar', 'Every day, they take turns watering the plants and watching them grow.', 'Cada día, se turnan para regar las plantas y observar su crecimiento.', 'Chaque jour, ils se relaient pour arroser les plantes et observer leur croissance.', 'Ogni giorno si alternano ad annaffiare le piante e osservare la loro crescita.', 'Todos os dias, revezam-se para regar as plantas e observar o crescimento delas.'
FROM stories s WHERE s.title = 'Curb Appeall Story 2';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 27, 'to play', 'jugar', 'jouer', 'giocare', 'jogar', 'During the break, they play hide and seek in the garden.', 'Durante el descanso, juegan a las escondidas en el jardín.', 'Pendant la pause, ils jouent à cache-cache dans le jardin.', 'Durante la pausa, giocano a nascondino nel giardino.', 'Durante a pausa, jogam esconde-esconde no jardim.'
FROM stories s WHERE s.title = 'Curb Appeall Story 2';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 28, 'to help', 'ayudar', 'aider', 'aiutare', 'ajudar', 'The kids help the kangaroo build a small shed for tools.', 'Los niños ayudan al canguro a construir un pequeño cobertizo para herramientas.', 'Les enfants aident le kangourou à construire un petit abri pour les outils.', 'I bambini aiutano il canguro a costruire un piccolo capanno per gli attrezzi.', 'As crianças ajudam o canguru a construir um pequeno galpão para ferramentas.'
FROM stories s WHERE s.title = 'Curb Appeall Story 2';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 29, 'to run', 'correr', 'courir', 'correre', 'correr', 'Before dinner, they decide to run around the neighborhood to stay active.', 'Antes de la cena, deciden correr alrededor del vecindario para mantenerse activos.', 'Avant le dîner, ils décident de courir autour du quartier pour rester actifs.', 'Prima di cena, decidono di correre intorno al quartiere per mantenersi attivi.', 'Antes do jantar, decidem correr pelo bairro para se manterem ativos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 2';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 30, 'to sell', 'vender', 'vendre', 'vendere', 'vender', 'To earn extra money, they organize a fruit sale from the garden.', 'Para ganar dinero extra, organizan una venta de frutas del huerto.', 'Pour gagner de l''argent supplémentaire, ils organisent une vente de fruits du jardin.', 'Per guadagnare soldi extra, organizzano una vendita di frutta dell''orto.', 'Para ganhar dinheiro extra, organizam uma venda de frutas da horta.'
FROM stories s WHERE s.title = 'Curb Appeall Story 2';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 1, 'to learn', 'aprender', 'apprendre', 'imparare', 'aprender', 'They learn to calculate change using coins and bills.', 'Aprenden a calcular el cambio usando monedas y billetes.', 'Ils apprennent à calculer la monnaie avec des pièces et des billets.', 'Imparano a calcolare il resto usando monete e banconote.', 'Aprendem a calcular o troco usando moedas e notas.'
FROM stories s WHERE s.title = 'Curb Appeall Story 3';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 2, 'to build', 'construir', 'construire', 'costruire', 'construir', 'Later, they build a safe box to store their savings.', 'Más tarde, construyen una caja fuerte para guardar sus ahorros.', 'Plus tard, ils construisent une boîte forte pour conserver leurs économies.', 'Più tardi costruiscono una cassetta di sicurezza per conservare i loro risparmi.', 'Mais tarde, constroem uma caixa-forte para guardar suas economias.'
FROM stories s WHERE s.title = 'Curb Appeall Story 3';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 3, 'to save', 'ahorrar', 'économiser', 'risparmiare', 'economizar', 'They decide to save the money from the sale for a bigger project.', 'Deciden ahorrar el dinero de la venta para un proyecto más grande.', 'Ils décident d''économiser l''argent de la vente pour un projet plus grand.', 'Decidono di risparmiare i soldi della vendita per un progetto più grande.', 'Decidem economizar o dinheiro da venda para um projeto maior.'
FROM stories s WHERE s.title = 'Curb Appeall Story 3';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 4, 'to teach', 'enseñar', 'enseigner', 'insegnare', 'ensinar', 'The kangaroo teaches them how to build wooden boxes.', 'El canguro les enseña a construir cajas de madera.', 'Le kangourou leur enseigne à construire des boîtes en bois.', 'Il canguro insegna loro a costruire scatole di legno.', 'O canguru lhes ensina a construir caixas de madeira.'
FROM stories s WHERE s.title = 'Curb Appeall Story 3';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 5, 'to cook', 'cocinar', 'cuisiner', 'cucinare', 'cozinhar', 'Meanwhile, the platypus cooks a healthy dinner for everyone.', 'Mientras tanto, el ornitorrinco cocina una cena saludable para todos.', 'Pendant ce temps, l''ornithorynque cuisine un dîner sain pour tout le monde.', 'Nel frattempo, l''ornitorinco cucina una cena sana per tutti.', 'Enquanto isso, o ornitorrinco cozinha um jantar saudável para todos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 3';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 6, 'to celebrate', 'celebrar', 'célébrer', 'celebrare', 'celebrar', 'After finishing dinner, they celebrate the success of their first project together.', 'Después de terminar la cena, celebran el éxito de su primer proyecto juntos.', 'Après avoir terminé le dîner, ils célèbrent le succès de leur premier projet ensemble.', 'Dopo aver finito la cena, celebrano il successo del loro primo progetto insieme.', 'Depois de terminar o jantar, comemoram o sucesso do primeiro projeto juntos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 3';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 7, 'to practice', 'practicar', 'pratiquer', 'praticare', 'praticar', 'Every morning they practice new exercises at the local park.', 'Cada mañana practican nuevos ejercicios en el parque local.', 'Chaque matin, ils pratiquent de nouveaux exercices dans le parc local.', 'Ogni mattina praticano nuovi esercizi nel parco locale.', 'Todas as manhãs praticam novos exercícios no parque local.'
FROM stories s WHERE s.title = 'Curb Appeall Story 3';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 8, 'to swim', 'nadar', 'nager', 'nuotare', 'nadar', 'One afternoon, they decide to swim in the nearby lake to stay cool.', 'Una tarde, deciden nadar en el lago cercano para mantenerse frescos.', 'Un après-midi, ils décident de nager dans le lac voisin pour rester frais.', 'Un pomeriggio decidono di nuotare nel lago vicino per rimanere freschi.', 'Uma tarde, decidem nadar no lago próximo para se refrescar.'
FROM stories s WHERE s.title = 'Curb Appeall Story 3';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 9, 'to explore', 'explorar', 'explorer', 'esplorare', 'explorar', 'During their free time, they explore a forest full of interesting plants.', 'Durante su tiempo libre, exploran un bosque lleno de plantas interesantes.', 'Pendant leur temps libre, ils explorent une forêt pleine de plantes intéressantes.', 'Durante il loro tempo libero, esplorano una foresta piena di piante interessanti.', 'Durante o tempo livre, exploram uma floresta cheia de plantas interessantes.'
FROM stories s WHERE s.title = 'Curb Appeall Story 3';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 10, 'to recycle', 'reciclar', 'recycler', 'riciclare', 'reciclar', 'They learn to recycle materials to care for the environment.', 'Aprenden a reciclar materiales para cuidar el medio ambiente.', 'Ils apprennent à recycler les matériaux pour protéger l''environnement.', 'Imparano a riciclare i materiali per proteggere l''ambiente.', 'Aprendem a reciclar materiais para cuidar do meio ambiente.'
FROM stories s WHERE s.title = 'Curb Appeall Story 3';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 11, 'to plant', 'sembrar', 'planter', 'piantare', 'plantar', 'They decide to plant flowers around their boxes to beautify the space.', 'Deciden sembrar flores alrededor de sus cajas para embellecer el espacio.', 'Ils décident de planter des fleurs autour de leurs boîtes pour embellir l’espace.', 'Decidono di piantare fiori intorno alle loro scatole per abbellire lo spazio.', 'Decidem plantar flores ao redor de suas caixas para embelezar o espaço.'
FROM stories s WHERE s.title = 'Curb Appeall Story 3';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 12, 'to sing', 'cantar', 'chanter', 'cantare', 'cantar', 'While working, they sing songs to keep their spirits high.', 'Mientras trabajan, cantan canciones para mantener el ánimo alto.', 'Pendant qu’ils travaillent, ils chantent des chansons pour garder le moral.', 'Mentre lavorano, cantano canzoni per mantenere alto il morale.', 'Enquanto trabalham, cantam canções para manter o ânimo elevado.'
FROM stories s WHERE s.title = 'Curb Appeall Story 3';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 13, 'to think', 'pensar', 'penser', 'pensare', 'pensar', 'Curb Appeall thinks of new ideas for future projects.', 'Curb Appeall piensa en nuevas ideas para proyectos futuros.', 'Curb Appeall pense à de nouvelles idées pour des projets futurs.', 'Curb Appeall pensa a nuove idee per progetti futuri.', 'Curb Appeall pensa em novas ideias para projetos futuros.'
FROM stories s WHERE s.title = 'Curb Appeall Story 3';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 14, 'to laugh', 'reír', 'rire', 'ridere', 'rir', 'Everyone laughs when the platypus tells a joke about kangaroos.', 'Todos ríen cuando el ornitorrinco cuenta un chiste sobre canguros.', 'Tout le monde rit lorsque l’ornithorynque raconte une blague sur les kangourous.', 'Tutti ridono quando l''ornitorinco racconta una barzelletta sui canguri.', 'Todos riem quando o ornitorrinco conta uma piada sobre cangurus.'
FROM stories s WHERE s.title = 'Curb Appeall Story 3';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 15, 'to search for', 'buscar', 'chercher', 'cercare', 'procurar', 'They search for recyclable materials in the neighborhood for their next project.', 'Buscan materiales reciclables en el vecindario para su próximo proyecto.', 'Ils cherchent des matériaux recyclables dans le quartier pour leur prochain projet.', 'Cercano materiali riciclabili nel quartiere per il loro prossimo progetto.', 'Procuram materiais recicláveis no bairro para o próximo projeto.'
FROM stories s WHERE s.title = 'Curb Appeall Story 3';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 16, 'to build', 'construir', 'construire', 'costruire', 'construir', 'With the help of a beaver friend, they build a small cabin.', 'Con la ayuda de un castor amigo, construyen una pequeña cabaña.', 'Avec l’aide d’un ami castor, ils construisent une petite cabane.', 'Con l’aiuto di un amico castoro, costruiscono una piccola capanna.', 'Com a ajuda de um amigo castor, constroem uma pequena cabana.'
FROM stories s WHERE s.title = 'Curb Appeall Story 3';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 17, 'to run', 'correr', 'courir', 'correre', 'correr', 'Every afternoon they run together through the forest to improve their stamina.', 'Cada tarde corren juntos por el bosque para mejorar su resistencia.', 'Chaque après-midi, ils courent ensemble dans la forêt pour améliorer leur endurance.', 'Ogni pomeriggio corrono insieme nella foresta per migliorare la resistenza.', 'Todas as tardes correm juntos pela floresta para melhorar a resistência.'
FROM stories s WHERE s.title = 'Curb Appeall Story 3';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 18, 'to organize', 'organizar', 'organiser', 'organizzare', 'organizar', 'They organize a market to sell handmade products.', 'Organizan un mercado para vender productos hechos a mano.', 'Ils organisent un marché pour vendre des produits faits à la main.', 'Organizzano un mercato per vendere prodotti fatti a mano.', 'Organizam um mercado para vender produtos feitos à mão.'
FROM stories s WHERE s.title = 'Curb Appeall Story 3';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 19, 'to teach', 'enseñar', 'enseigner', 'insegnare', 'ensinar', 'Curb Appeall teaches the children how to maintain a budget.', 'Curb Appeall enseña a los niños cómo mantener un presupuesto.', 'Curb Appeall enseigne aux enfants comment gérer un budget.', 'Curb Appeall insegna ai bambini come mantenere un bilancio.', 'Curb Appeall ensina às crianças como manter um orçamento.'
FROM stories s WHERE s.title = 'Curb Appeall Story 3';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 20, 'to learn', 'aprender', 'apprendre', 'imparare', 'aprender', 'The animals learn about balanced nutrition in a workshop.', 'Los animales aprenden sobre nutrición balanceada en un taller.', 'Les animaux apprennent la nutrition équilibrée lors d’un atelier.', 'Gli animali imparano sulla nutrizione equilibrata durante un laboratorio.', 'Os animais aprendem sobre nutrição balanceada em um workshop.'
FROM stories s WHERE s.title = 'Curb Appeall Story 3';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 21, 'to rest', 'descansar', 'se reposer', 'riposare', 'descansar', 'After working hard, they decide to rest under a big tree.', 'Después de trabajar duro, deciden descansar bajo un árbol grande.', 'Après avoir travaillé dur, ils décident de se reposer sous un grand arbre.', 'Dopo aver lavorato sodo, decidono di riposarsi sotto un grande albero.', 'Depois de trabalhar muito, decidem descansar sob uma grande árvore.'
FROM stories s WHERE s.title = 'Curb Appeall Story 3';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 22, 'to share', 'compartir', 'partager', 'condividere', 'compartilhar', 'They share their ideas with a new family of squirrels that just arrived.', 'Comparten sus ideas con una nueva familia de ardillas que acaba de llegar.', 'Ils partagent leurs idées avec une nouvelle famille d’écureuils qui vient d’arriver.', 'Condividono le loro idee con una nuova famiglia di scoiattoli appena arrivata.', 'Compartilham suas ideias com uma nova família de esquilos que acabou de chegar.'
FROM stories s WHERE s.title = 'Curb Appeall Story 3';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 23, 'to motivate', 'motivar', 'motiver', 'motivare', 'motivar', 'The kangaroo motivates the children to stay active by jumping with them.', 'El canguro motiva a los niños a mantenerse activos saltando con ellos.', 'Le kangourou motive les enfants à rester actifs en sautant avec eux.', 'Il canguro motiva i bambini a rimanere attivi saltando con loro.', 'O canguru motiva as crianças a se manterem ativas pulando com elas.'
FROM stories s WHERE s.title = 'Curb Appeall Story 3';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 24, 'to avoid', 'evitar', 'éviter', 'evitare', 'evitar', 'They talk about how to avoid eating too many sweets.', 'Hablan sobre cómo evitar comer demasiados dulces.', 'Ils parlent de comment éviter de manger trop de sucreries.', 'Parlano di come evitare di mangiare troppi dolci.', 'Falam sobre como evitar comer muitos doces.'
FROM stories s WHERE s.title = 'Curb Appeall Story 3';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 25, 'to decide', 'decidir', 'décider', 'decidere', 'decidir', 'They decide that the next project will be to create a community garden.', 'Deciden que el próximo proyecto será crear un jardín comunitario.', 'Ils décident que le prochain projet sera de créer un jardin communautaire.', 'Decidono che il prossimo progetto sarà creare un giardino comunitario.', 'Decidem que o próximo projeto será criar um jardim comunitário.'
FROM stories s WHERE s.title = 'Curb Appeall Story 3';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 26, 'to support', 'apoyar', 'soutenir', 'supportare', 'apoiar', 'They all support each other in their training challenges.', 'Todos se apoyan mutuamente en los desafíos de sus entrenamientos.', 'Ils se soutiennent mutuellement dans les défis de leurs entraînements.', 'Si supportano a vicenda nelle sfide degli allenamenti.', 'Todos se apoiam nos desafios dos seus treinos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 3';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 27, 'to trust', 'confiar', 'faire confiance', 'fidarsi', 'confiar', 'The children trust that the kangaroo knows the best path through the forest.', 'Los niños confían en que el canguro conoce el mejor camino por el bosque.', 'Les enfants font confiance au kangourou pour connaître le meilleur chemin dans la forêt.', 'I bambini si fidano che il canguro conosca il miglior sentiero nella foresta.', 'As crianças confiam que o canguru conhece o melhor caminho pela floresta.'
FROM stories s WHERE s.title = 'Curb Appeall Story 3';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 28, 'to repair', 'reparar', 'réparer', 'riparare', 'reparar', 'The beaver repairs the broken bridge so everyone can cross.', 'El castor repara el puente roto para que todos puedan cruzar.', 'Le castor répare le pont cassé pour que tout le monde puisse traverser.', 'Il castoro ripara il ponte rotto per permettere a tutti di attraversare.', 'O castor repara a ponte quebrada para que todos possam atravessar.'
FROM stories s WHERE s.title = 'Curb Appeall Story 3';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 29, 'to develop', 'desarrollar', 'développer', 'sviluppare', 'desenvolver', 'They decide to develop new healthy recipes with local fruits.', 'Deciden desarrollar nuevas recetas saludables con frutas locales.', 'Ils décident de développer de nouvelles recettes saines avec des fruits locaux.', 'Decidono di sviluppare nuove ricette sane con frutta locale.', 'Decidem desenvolver novas receitas saudáveis com frutas locais.'
FROM stories s WHERE s.title = 'Curb Appeall Story 3';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 30, 'to forget', 'olvidar', 'oublier', 'dimenticare', 'esquecer', 'Curb Appeall never forgets to thank his friends for their help.', 'Curb Appeall nunca olvida dar las gracias a sus amigos por su ayuda.', 'Curb Appeall n''oublie jamais de remercier ses amis pour leur aide.', 'Curb Appeall non dimentica mai di ringraziare i suoi amici per il loro aiuto.', 'Curb Appeall nunca esquece de agradecer aos amigos pela ajuda.'
FROM stories s WHERE s.title = 'Curb Appeall Story 3';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 1, 'to win', 'ganar', 'gagner', 'vincere', 'ganhar', 'They win first place in the healthy cooking competition.', 'Ganan el primer lugar en la competencia de cocina saludable.', 'Ils gagnent la première place du concours de cuisine saine.', 'Vincono il primo posto nella competizione di cucina sana.', 'Ganham o primeiro lugar no concurso de culinária saudável.'
FROM stories s WHERE s.title = 'Curb Appeall Story 4';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 2, 'to lose', 'perder', 'perdre', 'perdere', 'perder', 'Despite losing the map, they manage to find the way together.', 'A pesar de perder el mapa, logran encontrar el camino juntos.', 'Bien qu''ils aient perdu la carte, ils réussissent à trouver leur chemin ensemble.', 'Nonostante abbiano perso la mappa, riescono a trovare la strada insieme.', 'Apesar de perderem o mapa, conseguem encontrar o caminho juntos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 4';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 3, 'to measure', 'medir', 'mesurer', 'misurare', 'medir', 'They use a ruler to measure how much the plant in the garden has grown.', 'Usan una regla para medir cuánto ha crecido la planta en el jardín.', 'Ils utilisent une règle pour mesurer combien la plante dans le jardin a poussé.', 'Usano un righello per misurare quanto è cresciuta la pianta nel giardino.', 'Usam uma régua para medir quanto a planta no jardim cresceu.'
FROM stories s WHERE s.title = 'Curb Appeall Story 4';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 4, 'to run', 'correr', 'courir', 'correre', 'correr', 'The children run alongside the kangaroo to improve their endurance.', 'Los niños corren junto con el canguro para mejorar su resistencia.', 'Les enfants courent avec le kangourou pour améliorer leur endurance.', 'I bambini corrono insieme al canguro per migliorare la loro resistenza.', 'As crianças correm junto com o canguru para melhorar a resistência.'
FROM stories s WHERE s.title = 'Curb Appeall Story 4';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 5, 'to learn', 'aprender', 'apprendre', 'imparare', 'aprender', 'They learn to make healthy bread with the turtle chef.', 'Aprenden a hacer pan saludable con el chef tortuga.', 'Ils apprennent à faire du pain sain avec le chef tortue.', 'Imparano a fare il pane sano con lo chef tartaruga.', 'Aprendem a fazer pão saudável com o chef tartaruga.'
FROM stories s WHERE s.title = 'Curb Appeall Story 4';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 6, 'to create', 'crear', 'créer', 'creare', 'criar', 'They create a list of fun activities for the day.', 'Crean una lista de actividades divertidas para el día.', 'Ils créent une liste d''activités amusantes pour la journée.', 'Creano una lista di attività divertenti per la giornata.', 'Criam uma lista de atividades divertidas para o dia.'
FROM stories s WHERE s.title = 'Curb Appeall Story 4';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 7, 'to understand', 'entender', 'comprendre', 'capire', 'entender', 'The kangaroo explains how to understand nutrition labels.', 'El canguro les explica cómo entender las etiquetas nutricionales.', 'Le kangourou leur explique comment comprendre les étiquettes nutritionnelles.', 'Il canguro spiega come capire le etichette nutrizionali.', 'O canguru explica como entender os rótulos nutricionais.'
FROM stories s WHERE s.title = 'Curb Appeall Story 4';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 8, 'to share', 'compartir', 'partager', 'condividere', 'compartilhar', 'They decide to share their favorite meals with everyone.', 'Deciden compartir sus comidas favoritas entre todos.', 'Ils décident de partager leurs plats préférés avec tout le monde.', 'Decidono di condividere i loro piatti preferiti con tutti.', 'Decidem compartilhar suas refeições favoritas com todos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 4';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 9, 'to visit', 'visitar', 'visiter', 'visitare', 'visitar', 'They visit a wise owl to learn more about budgeting.', 'Visitan a un búho sabio para aprender más sobre presupuestos.', 'Ils visitent un hibou sage pour en savoir plus sur les budgets.', 'Visitano un saggio gufo per imparare di più sui budget.', 'Visitam uma coruja sábia para aprender mais sobre orçamentos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 4';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 10, 'to search/look for', 'buscar', 'chercher', 'cercare', 'buscar', 'They search for exotic fruits in the market for a new recipe.', 'Buscan frutas exóticas en el mercado para una nueva receta.', 'Ils cherchent des fruits exotiques au marché pour une nouvelle recette.', 'Cercano frutti esotici al mercato per una nuova ricetta.', 'Procuram frutas exóticas no mercado para uma nova receita.'
FROM stories s WHERE s.title = 'Curb Appeall Story 4';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 11, 'to write', 'escribir', 'écrire', 'scrivere', 'escrever', 'They write in their journals about what they learned today.', 'Escriben en sus diarios sobre lo que aprendieron hoy.', 'Ils écrivent dans leurs journaux sur ce qu''ils ont appris aujourd''hui.', 'Scrivono nei loro diari quello che hanno imparato oggi.', 'Escrevem em seus diários sobre o que aprenderam hoje.'
FROM stories s WHERE s.title = 'Curb Appeall Story 4';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 12, 'to teach', 'enseñar', 'enseigner', 'insegnare', 'ensinar', 'The bear teaches the children how to save money.', 'El oso enseña a los niños cómo ahorrar dinero.', 'L''ours enseigne aux enfants comment économiser de l''argent.', 'L''orso insegna ai bambini come risparmiare denaro.', 'O urso ensina às crianças como economizar dinheiro.'
FROM stories s WHERE s.title = 'Curb Appeall Story 4';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 13, 'to take', 'tomar', 'prendre', 'prendere', 'tomar', 'They take fresh water from the river after their training.', 'Toman agua fresca del río después de su entrenamiento.', 'Ils prennent de l''eau fraîche de la rivière après leur entraînement.', 'Prendono acqua fresca dal fiume dopo il loro allenamento.', 'Pegam água fresca do rio após o treino.'
FROM stories s WHERE s.title = 'Curb Appeall Story 4';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 14, 'to look/watch', 'mirar', 'regarder', 'guardare', 'olhar', 'They watch an educational video about basic exercises.', 'Miran un video educativo sobre ejercicios básicos.', 'Ils regardent une vidéo éducative sur les exercices de base.', 'Guardano un video educativo sugli esercizi di base.', 'Assistem a um vídeo educativo sobre exercícios básicos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 4';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 15, 'to sing', 'cantar', 'chanter', 'cantare', 'cantar', 'They sing a song about fruits and vegetables during breakfast.', 'Cantan una canción sobre frutas y verduras en el desayuno.', 'Ils chantent une chanson sur les fruits et légumes au petit déjeuner.', 'Cantano una canzone su frutta e verdura durante la colazione.', 'Cantam uma música sobre frutas e verduras no café da manhã.'
FROM stories s WHERE s.title = 'Curb Appeall Story 4';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 16, 'to run', 'correr', 'courir', 'correre', 'correr', 'They run together to the park while telling stories.', 'Corren juntos al parque mientras cuentan historias.', 'Ils courent ensemble au parc en se racontant des histoires.', 'Corrono insieme al parco mentre raccontano storie.', 'Correm juntos para o parque enquanto contam histórias.'
FROM stories s WHERE s.title = 'Curb Appeall Story 4';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 17, 'to dance', 'bailar', 'danser', 'ballare', 'dançar', 'They dance in a competition organized by the elephant.', 'Bailan en una competencia organizada por el elefante.', 'Ils dansent dans une compétition organisée par l''éléphant.', 'Ballano in una competizione organizzata dall''elefante.', 'Dançam em uma competição organizada pelo elefante.'
FROM stories s WHERE s.title = 'Curb Appeall Story 4';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 18, 'to cook', 'cocinar', 'cuisiner', 'cucinare', 'cozinhar', 'They cook a healthy soup with carrots and spinach.', 'Cocinan una sopa saludable con zanahorias y espinacas.', 'Ils cuisinent une soupe saine avec des carottes et des épinards.', 'Cucinano una zuppa sana con carote e spinaci.', 'Cozinham uma sopa saudável com cenouras e espinafre.'
FROM stories s WHERE s.title = 'Curb Appeall Story 4';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 19, 'to sleep', 'dormir', 'dormir', 'dormire', 'dormir', 'They sleep under the stars after a day full of adventures.', 'Duermen bajo las estrellas después de un día lleno de aventuras.', 'Ils dorment sous les étoiles après une journée pleine d''aventures.', 'Dormono sotto le stelle dopo una giornata piena di avventure.', 'Dormem sob as estrelas após um dia cheio de aventuras.'
FROM stories s WHERE s.title = 'Curb Appeall Story 4';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 20, 'to clean', 'limpiar', 'nettoyer', 'pulire', 'limpar', 'They clean the kitchen after cooking for the group.', 'Limpian la cocina después de cocinar para el grupo.', 'Ils nettoient la cuisine après avoir cuisiné pour le groupe.', 'Puliscono la cucina dopo aver cucinato per il gruppo.', 'Limpam a cozinha depois de cozinhar para o grupo.'
FROM stories s WHERE s.title = 'Curb Appeall Story 4';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 21, 'to listen', 'escuchar', 'écouter', 'ascoltare', 'escutar', 'They listen to the rabbit''s advice on how to save money.', 'Escuchan los consejos del conejo sobre cómo ahorrar dinero.', 'Ils écoutent les conseils du lapin sur comment économiser de l''argent.', 'Ascoltano i consigli del coniglio su come risparmiare denaro.', 'Escutam os conselhos do coelho sobre como economizar dinheiro.'
FROM stories s WHERE s.title = 'Curb Appeall Story 4';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 22, 'to paint', 'pintar', 'peindre', 'dipingere', 'pintar', 'They paint a colorful mural in the park to inspire others.', 'Pintan un mural colorido en el parque para inspirar a otros.', 'Ils peignent une fresque colorée dans le parc pour inspirer les autres.', 'Dipingono un murale colorato nel parco per ispirare gli altri.', 'Pintam um mural colorido no parque para inspirar outros.'
FROM stories s WHERE s.title = 'Curb Appeall Story 4';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 23, 'to explore', 'explorar', 'explorer', 'esplorare', 'explorar', 'They explore a new route for their morning walks.', 'Exploran una nueva ruta para sus caminatas matutinas.', 'Ils explorent un nouveau chemin pour leurs promenades matinales.', 'Esplorano un nuovo percorso per le loro passeggiate mattutine.', 'Exploram um novo trajeto para suas caminhadas matinais.'
FROM stories s WHERE s.title = 'Curb Appeall Story 4';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 24, 'to jump', 'saltar', 'sauter', 'saltare', 'saltar', 'They jump on an inflatable castle for exercise.', 'Saltan en un castillo inflable para hacer ejercicio.', 'Ils sautent sur un château gonflable pour faire de l''exercice.', 'Saltano su un castello gonfiabile per fare esercizio.', 'Saltam em um castelo inflável para se exercitar.'
FROM stories s WHERE s.title = 'Curb Appeall Story 4';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 25, 'to learn', 'aprender', 'apprendre', 'imparare', 'aprender', 'They learn new healthy recipes in a cooking class.', 'Aprenden nuevas recetas saludables en una clase de cocina.', 'Ils apprennent de nouvelles recettes saines dans un cours de cuisine.', 'Imparano nuove ricette sane in una lezione di cucina.', 'Aprendem novas receitas saudáveis em uma aula de culinária.'
FROM stories s WHERE s.title = 'Curb Appeall Story 4';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 26, 'to swim', 'nadar', 'nager', 'nuotare', 'nadar', 'They swim in the lake while practicing deep breathing.', 'Nadan en el lago mientras practican respiración profunda.', 'Ils nagent dans le lac tout en pratiquant la respiration profonde.', 'Nuotano nel lago mentre praticano la respirazione profonda.', 'Nadam no lago enquanto praticam respiração profunda.'
FROM stories s WHERE s.title = 'Curb Appeall Story 4';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 27, 'to write', 'escribir', 'écrire', 'scrivere', 'escrever', 'They write in their journals about their achievements of the day.', 'Escriben en sus diarios sobre sus logros del día.', 'Ils écrivent dans leurs journaux sur leurs réalisations de la journée.', 'Scrivono nei loro diari dei traguardi della giornata.', 'Escrevem em seus diários sobre as conquistas do dia.'
FROM stories s WHERE s.title = 'Curb Appeall Story 4';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 28, 'to open', 'abrir', 'ouvrir', 'aprire', 'abrir', 'They open a book about the importance of nutrients.', 'Abren un libro sobre la importancia de los nutrientes.', 'Ils ouvrent un livre sur l''importance des nutriments.', 'Aprono un libro sull''importanza dei nutrienti.', 'Abrem um livro sobre a importância dos nutrientes.'
FROM stories s WHERE s.title = 'Curb Appeall Story 4';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 29, 'to teach', 'enseñar', 'enseigner', 'insegnare', 'ensinar', 'They teach other children how to do basic exercises in the park.', 'Enseñan a otros niños a hacer ejercicios básicos en el parque.', 'Ils enseignent à d''autres enfants comment faire des exercices de base dans le parc.', 'Insegnano ad altri bambini a fare esercizi di base nel parco.', 'Ensinam a outras crianças a fazer exercícios básicos no parque.'
FROM stories s WHERE s.title = 'Curb Appeall Story 4';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 30, 'to build', 'construir', 'construire', 'costruire', 'construir', 'They build a small garden to grow vegetables together.', 'Construyen un pequeño jardín para cultivar vegetales juntos.', 'Ils construisent un petit jardin pour cultiver des légumes ensemble.', 'Costruiscono un piccolo giardino per coltivare insieme le verdure.', 'Constroem um pequeno jardim para cultivar vegetais juntos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 4';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 1, 'to celebrate', 'celebrar', 'célébrer', 'celebrare', 'celebrar', 'They celebrate their achievements with a healthy party.', 'Celebran sus logros con una fiesta saludable.', 'Ils célèbrent leurs réussites avec une fête saine.', 'Celebrano i loro successi con una festa salutare.', 'Celebram suas conquistas com uma festa saudável.'
FROM stories s WHERE s.title = 'Curb Appeall Story 5';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 2, 'to decide', 'decidir', 'décider', 'decidere', 'decidir', 'They decide what physical activity to do the next day.', 'Deciden qué actividad física hacer al día siguiente.', 'Ils décident quelle activité physique faire le lendemain.', 'Decidono quale attività fisica fare il giorno successivo.', 'Decidem qual atividade física fazer no dia seguinte.'
FROM stories s WHERE s.title = 'Curb Appeall Story 5';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 3, 'to remember', 'recordar', 'se souvenir', 'ricordare', 'lembrar', 'They remember the fox''s advice about saving part of their earnings.', 'Recuerdan el consejo del zorro sobre ahorrar una parte de sus ganancias.', 'Ils se souviennent du conseil du renard sur l''économie d''une partie de leurs gains.', 'Ricordano il consiglio della volpe di risparmiare parte dei loro guadagni.', 'Lembram do conselho da raposa sobre economizar parte de seus ganhos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 5';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 4, 'to search/look for', 'buscar', 'chercher', 'cercare', 'buscar', 'They look for fresh fruits at the local market.', 'Buscan frutas frescas en el mercado local.', 'Ils cherchent des fruits frais au marché local.', 'Cercano frutta fresca al mercato locale.', 'Buscam frutas frescas no mercado local.'
FROM stories s WHERE s.title = 'Curb Appeall Story 5';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 5, 'to share', 'compartir', 'partager', 'condividere', 'compartilhar', 'They share a healthy meal with new friends they met at the park.', 'Comparten una comida saludable con los amigos nuevos que conocieron en el parque.', 'Ils partagent un repas sain avec de nouveaux amis qu''ils ont rencontrés au parc.', 'Condividono un pasto sano con i nuovi amici conosciuti al parco.', 'Compartilham uma refeição saudável com novos amigos que conheceram no parque.'
FROM stories s WHERE s.title = 'Curb Appeall Story 5';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 6, 'to eat', 'comer', 'manger', 'mangiare', 'comer', 'They eat fresh fruits and vegetables to feel full of energy.', 'Comen frutas y verduras frescas para sentirse llenos de energía.', 'Ils mangent des fruits et légumes frais pour se sentir pleins d''énergie.', 'Mangiano frutta e verdura fresca per sentirsi pieni di energia.', 'Comem frutas e vegetais frescos para se sentirem cheios de energia.'
FROM stories s WHERE s.title = 'Curb Appeall Story 5';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 7, 'to prepare', 'preparar', 'préparer', 'preparare', 'preparar', 'They prepare a plan for the next week on how to save money while eating healthily.', 'Preparan un plan para la próxima semana sobre cómo ahorrar dinero mientras comen sano.', 'Ils préparent un plan pour la semaine prochaine sur comment économiser de l''argent en mangeant sainement.', 'Preparano un piano per la prossima settimana su come risparmiare mangiando in modo sano.', 'Preparam um plano para a próxima semana sobre como economizar enquanto comem de forma saudável.'
FROM stories s WHERE s.title = 'Curb Appeall Story 5';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 8, 'to take care of', 'cuidar', 'prendre soin de', 'prendersi cura di', 'cuidar', 'They take care of their garden plants so they grow strong.', 'Cuidan de las plantas de su jardín para que crezcan fuertes.', 'Ils prennent soin des plantes de leur jardin pour qu''elles poussent bien.', 'Si prendono cura delle piante del loro giardino per farle crescere forti.', 'Cuidam das plantas do jardim para que cresçam fortes.'
FROM stories s WHERE s.title = 'Curb Appeall Story 5';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 9, 'to listen', 'escuchar', 'écouter', 'ascoltare', 'ouvir', 'They listen to the owl''s story about staying motivated.', 'Escuchan la historia del búho sobre cómo mantenerse motivados.', 'Ils écoutent l''histoire du hibou sur comment rester motivés.', 'Ascoltano la storia del gufo su come rimanere motivati.', 'Ouvem a história da coruja sobre como manter a motivação.'
FROM stories s WHERE s.title = 'Curb Appeall Story 5';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 10, 'to play', 'jugar', 'jouer', 'giocare', 'jogar', 'They play a board game about personal finances.', 'Juegan un juego de mesa sobre finanzas personales.', 'Ils jouent à un jeu de société sur les finances personnelles.', 'Giocano a un gioco da tavolo sulle finanze personali.', 'Jogam um jogo de tabuleiro sobre finanças pessoais.'
FROM stories s WHERE s.title = 'Curb Appeall Story 5';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 11, 'to jump', 'saltar', 'sauter', 'saltare', 'saltar', 'They jump in an exercise class at the town''s gym.', 'Saltan en una clase de ejercicios en el gimnasio del pueblo.', 'Ils sautent dans un cours d''exercices à la salle de sport du village.', 'Saltano in una lezione di esercizi in palestra.', 'Saltam em uma aula de exercícios na academia da cidade.'
FROM stories s WHERE s.title = 'Curb Appeall Story 5';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 12, 'to wash', 'lavar', 'laver', 'lavare', 'lavar', 'They wash their hands before preparing food.', 'Lavan sus manos antes de preparar los alimentos.', 'Ils lavent leurs mains avant de préparer les aliments.', 'Si lavano le mani prima di preparare i cibi.', 'Lavam as mãos antes de preparar os alimentos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 5';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 13, 'to sleep', 'dormir', 'dormir', 'dormire', 'dormir', 'They sleep early to be full of energy the next day.', 'Duermen temprano para estar llenos de energía al día siguiente.', 'Ils dorment tôt pour être pleins d''énergie le lendemain.', 'Dormono presto per essere pieni di energia il giorno dopo.', 'Dormem cedo para estarem cheios de energia no dia seguinte.'
FROM stories s WHERE s.title = 'Curb Appeall Story 5';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 14, 'to save', 'ahorrar', 'économiser', 'risparmiare', 'poupar', 'They save coins in a special jar for a group project.', 'Ahorran monedas en un frasco especial para un proyecto grupal.', 'Ils économisent des pièces dans un bocal spécial pour un projet de groupe.', 'Risparmiano monete in un barattolo speciale per un progetto di gruppo.', 'Poupam moedas em um frasco especial para um projeto em grupo.'
FROM stories s WHERE s.title = 'Curb Appeall Story 5';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 15, 'to learn', 'aprender', 'apprendre', 'imparare', 'aprender', 'They learn about the health properties of whole foods.', 'Aprenden sobre las propiedades saludables de los alimentos integrales.', 'Ils apprennent les propriétés saines des aliments complets.', 'Imparano le proprietà salutari dei cibi integrali.', 'Aprendem sobre as propriedades saudáveis dos alimentos integrais.'
FROM stories s WHERE s.title = 'Curb Appeall Story 5';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 16, 'to write', 'escribir', 'écrire', 'scrivere', 'escrever', 'They write in their journals about what they ate and how they felt.', 'Escriben en sus diarios sobre lo que comieron y cómo se sintieron.', 'Ils écrivent dans leurs journaux ce qu''ils ont mangé et comment ils se sentaient.', 'Scrivono nei loro diari ciò che hanno mangiato e come si sono sentiti.', 'Escrevem em seus diários sobre o que comeram e como se sentiram.'
FROM stories s WHERE s.title = 'Curb Appeall Story 5';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 17, 'to buy', 'comprar', 'acheter', 'comprare', 'comprar', 'They buy fruits at the local market with their saved money.', 'Compran frutas en el mercado local con el dinero ahorrado.', 'Ils achètent des fruits au marché local avec l''argent économisé.', 'Comprano frutta al mercato locale con i soldi risparmiati.', 'Compram frutas no mercado local com o dinheiro economizado.'
FROM stories s WHERE s.title = 'Curb Appeall Story 5';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 18, 'to sing', 'cantar', 'chanter', 'cantare', 'cantar', 'They sing a song about recycling and taking care of the environment.', 'Cantan una canción sobre el reciclaje y el cuidado del medio ambiente.', 'Ils chantent une chanson sur le recyclage et la protection de l''environnement.', 'Cantano una canzone sul riciclo e la cura dell''ambiente.', 'Cantam uma música sobre reciclagem e cuidado com o meio ambiente.'
FROM stories s WHERE s.title = 'Curb Appeall Story 5';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 19, 'to run', 'correr', 'courir', 'correre', 'correr', 'They run along the beach in a friendly race with the kangaroo.', 'Corren por la playa en una carrera amistosa con el canguro.', 'Ils courent sur la plage dans une course amicale avec le kangourou.', 'Corrono sulla spiaggia in una corsa amichevole con il canguro.', 'Correm pela praia em uma corrida amigável com o canguru.'
FROM stories s WHERE s.title = 'Curb Appeall Story 5';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 20, 'to teach', 'enseñar', 'enseigner', 'insegnare', 'ensinar', 'They teach the younger kids how to do basic exercises.', 'Enseñan a los niños más pequeños sobre cómo hacer ejercicios básicos.', 'Ils enseignent aux plus jeunes comment faire des exercices de base.', 'Insegnano ai bambini più piccoli come fare esercizi di base.', 'Ensinam às crianças mais novas como fazer exercícios básicos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 5';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 21, 'to travel', 'viajar', 'voyager', 'viaggiare', 'viajar', 'They travel by bike through the forest to explore new routes.', 'Viajan en bicicleta por el bosque para explorar nuevas rutas.', 'Ils voyagent à vélo à travers la forêt pour explorer de nouvelles routes.', 'Viaggiano in bicicletta attraverso la foresta per esplorare nuovi percorsi.', 'Viajam de bicicleta pela floresta para explorar novas rotas.'
FROM stories s WHERE s.title = 'Curb Appeall Story 5';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 22, 'to win', 'ganar', 'gagner', 'vincere', 'ganhar', 'They win an award for their creative ideas about recycling.', 'Ganan un premio por sus ideas creativas sobre el reciclaje.', 'Ils gagnent un prix pour leurs idées créatives sur le recyclage.', 'Vincono un premio per le loro idee creative sul riciclo.', 'Ganham um prêmio por suas ideias criativas sobre reciclagem.'
FROM stories s WHERE s.title = 'Curb Appeall Story 5';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 23, 'to drink', 'beber', 'boire', 'bere', 'beber', 'They drink lemon water after exercising.', 'Beben agua con limón después de hacer ejercicio.', 'Ils boivent de l''eau citronnée après avoir fait de l''exercice.', 'Bevono acqua con limone dopo aver fatto esercizio.', 'Bebem água com limão após se exercitarem.'
FROM stories s WHERE s.title = 'Curb Appeall Story 5';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 24, 'to organize', 'organizar', 'organiser', 'organizzare', 'organizar', 'They organize a healthy picnic for the entire community.', 'Organizan un picnic saludable para toda la comunidad.', 'Ils organisent un pique-nique sain pour toute la communauté.', 'Organizzano un picnic salutare per tutta la comunità.', 'Organizam um piquenique saudável para toda a comunidade.'
FROM stories s WHERE s.title = 'Curb Appeall Story 5';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 25, 'to search/look for', 'buscar', 'chercher', 'cercare', 'buscar', 'They look for books in the library about how to take care of the planet.', 'Buscan libros en la biblioteca sobre cómo cuidar el planeta.', 'Ils cherchent des livres à la bibliothèque sur comment protéger la planète.', 'Cercano libri in biblioteca su come prendersi cura del pianeta.', 'Procuram livros na biblioteca sobre como cuidar do planeta.'
FROM stories s WHERE s.title = 'Curb Appeall Story 5';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 26, 'to save', 'ahorrar', 'économiser', 'risparmiare', 'poupar', 'They save money by avoiding processed foods.', 'Ahorran dinero evitando comprar alimentos procesados.', 'Ils économisent de l''argent en évitant les aliments transformés.', 'Risparmiano denaro evitando di comprare cibi lavorati.', 'Poupam dinheiro evitando comprar alimentos processados.'
FROM stories s WHERE s.title = 'Curb Appeall Story 5';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 27, 'to listen', 'escuchar', 'écouter', 'ascoltare', 'escutar', 'They listen to an expert talking about the importance of proteins.', 'Escuchan a un experto que habla sobre la importancia de las proteínas.', 'Ils écoutent un expert parler de l''importance des protéines.', 'Ascoltano un esperto che parla dell''importanza delle proteine.', 'Escutam um especialista falar sobre a importância das proteínas.'
FROM stories s WHERE s.title = 'Curb Appeall Story 5';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 28, 'to dance', 'bailar', 'danser', 'ballare', 'dançar', 'They dance together as part of a fun exercise session.', 'Bailan juntos como parte de una sesión divertida de ejercicios.', 'Ils dansent ensemble dans le cadre d''une séance d''exercice amusante.', 'Ballano insieme come parte di una divertente sessione di esercizi.', 'Dançam juntos como parte de uma sessão divertida de exercícios.'
FROM stories s WHERE s.title = 'Curb Appeall Story 5';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 29, 'to cook', 'cocinar', 'cuisiner', 'cucinare', 'cozinhar', 'They cook a soup with fresh ingredients from the garden.', 'Cocinan una sopa con ingredientes frescos del jardín.', 'Ils cuisinent une soupe avec des ingrédients frais du jardin.', 'Cucinate una zuppa con ingredienti freschi dell''orto.', 'Cozinham uma sopa com ingredientes frescos do jardim.'
FROM stories s WHERE s.title = 'Curb Appeall Story 5';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 30, 'to rest', 'descansar', 'se reposer', 'riposare', 'descansar', 'They rest under a tree after a long walk.', 'Descansan bajo un árbol después de una larga caminata.', 'Ils se reposent sous un arbre après une longue marche.', 'Riposano sotto un albero dopo una lunga passeggiata.', 'Descansam sob uma árvore depois de uma longa caminhada.'
FROM stories s WHERE s.title = 'Curb Appeall Story 5';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 1, 'to play', 'jugar', 'jouer', 'giocare', 'jogar', 'They play a memory game about healthy habits.', 'Juegan a un juego de memoria sobre hábitos saludables.', 'Ils jouent à un jeu de mémoire sur les habitudes saines.', 'Giocano a un gioco di memoria sulle abitudini sane.', 'Jogam um jogo de memória sobre hábitos saudáveis.'
FROM stories s WHERE s.title = 'Curb Appeall Story 6';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 2, 'to decide', 'decidir', 'décider', 'decidere', 'decidir', 'They decide to try a new workout routine for a week.', 'Deciden probar una nueva rutina de ejercicios por una semana.', 'Ils décident d''essayer une nouvelle routine d''exercices pendant une semaine.', 'Decidono di provare una nuova routine di allenamento per una settimana.', 'Decidem experimentar uma nova rotina de exercícios por uma semana.'
FROM stories s WHERE s.title = 'Curb Appeall Story 6';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 3, 'to forget', 'olvidar', 'oublier', 'dimenticare', 'esquecer', 'They never forget to bring water when going to the park to exercise.', 'Nunca olvidan llevar agua cuando van al parque a hacer ejercicio.', 'Ils n''oublient jamais d''apporter de l''eau lorsqu''ils vont au parc pour faire de l''exercice.', 'Non dimenticano mai di portare l''acqua quando vanno al parco a fare esercizio.', 'Nunca esquecem de levar água quando vão ao parque para se exercitar.'
FROM stories s WHERE s.title = 'Curb Appeall Story 6';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 4, 'to try', 'intentar', 'essayer', 'provare', 'tentar', 'They try yoga with the help of the kangaroo, who is very flexible.', 'Intentan hacer yoga con la ayuda del canguro, que es muy flexible.', 'Ils essaient le yoga avec l''aide du kangourou, qui est très flexible.', 'Provano a fare yoga con l''aiuto del canguro, che è molto flessibile.', 'Tentam fazer yoga com a ajuda do canguru, que é muito flexível.'
FROM stories s WHERE s.title = 'Curb Appeall Story 6';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 5, 'to teach', 'enseñar', 'enseigner', 'insegnare', 'ensinar', 'They teach other kids how to make a healthy smoothie.', 'Enseñan a otros niños cómo hacer un batido saludable.', 'Ils enseignent à d''autres enfants comment faire un smoothie sain.', 'Insegnano ad altri bambini come fare un frullato salutare.', 'Ensinam outras crianças a fazer um smoothie saudável.'
FROM stories s WHERE s.title = 'Curb Appeall Story 6';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 6, 'to enjoy', 'disfrutar', 'profiter', 'godere', 'desfrutar', 'They enjoy a picnic full of fresh fruits and nuts.', 'Disfrutan de un picnic lleno de frutas frescas y nueces.', 'Ils profitent d''un pique-nique rempli de fruits frais et de noix.', 'Godono di un picnic pieno di frutta fresca e noci.', 'Desfrutam de um piquenique cheio de frutas frescas e nozes.'
FROM stories s WHERE s.title = 'Curb Appeall Story 6';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 7, 'to clean', 'limpiar', 'nettoyer', 'pulire', 'limpar', 'They clean the kitchen after cooking together.', 'Limpian la cocina después de cocinar juntos.', 'Ils nettoient la cuisine après avoir cuisiné ensemble.', 'Pulisco la cucina dopo aver cucinato insieme.', 'Limpam a cozinha depois de cozinhar juntos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 6';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 8, 'to take care of', 'cuidar', 'prendre soin', 'prendersi cura', 'cuidar', 'They take care of the community garden to learn about plants.', 'Cuidan del huerto comunitario para aprender sobre plantas.', 'Ils prennent soin du jardin communautaire pour en apprendre plus sur les plantes.', 'Si prendono cura dell''orto comunitario per imparare sulle piante.', 'Cuidam do jardim comunitário para aprender sobre as plantas.'
FROM stories s WHERE s.title = 'Curb Appeall Story 6';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 9, 'to write', 'escribir', 'écrire', 'scrivere', 'escrever', 'They write their health goals in a special notebook.', 'Escriben sus metas de salud en un cuaderno especial.', 'Ils écrivent leurs objectifs de santé dans un cahier spécial.', 'Scrivono i loro obiettivi di salute in un quaderno speciale.', 'Escrevem seus objetivos de saúde em um caderno especial.'
FROM stories s WHERE s.title = 'Curb Appeall Story 6';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 10, 'to run', 'correr', 'courir', 'correre', 'correr', 'They run a friendly race in the park to stay active.', 'Corren una carrera amistosa en el parque para mantenerse activos.', 'Ils courent une course amicale dans le parc pour rester actifs.', 'Corrono una gara amichevole nel parco per rimanere attivi.', 'Correm uma corrida amigável no parque para se manterem ativos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 6';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 11, 'to learn', 'aprender', 'apprendre', 'imparare', 'aprender', 'They learn about the benefits of eating more fiber in their diet.', 'Aprenden sobre los beneficios de comer más fibra en su dieta.', 'Ils apprennent les avantages de manger plus de fibres dans leur alimentation.', 'Imparano i benefici di mangiare più fibre nella loro dieta.', 'Aprendem sobre os benefícios de comer mais fibras na dieta.'
FROM stories s WHERE s.title = 'Curb Appeall Story 6';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 12, 'to ask', 'preguntar', 'demander', 'chiedere', 'perguntar', 'They ask the doctor how to stay healthy in winter.', 'Preguntan al médico sobre cómo mantenerse saludables en el invierno.', 'Ils demandent au médecin comment rester en bonne santé en hiver.', 'Chiedono al dottore come rimanere in salute durante l''inverno.', 'Perguntam ao médico como se manterem saudáveis no inverno.'
FROM stories s WHERE s.title = 'Curb Appeall Story 6';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 13, 'to think', 'pensar', 'penser', 'pensare', 'pensar', 'They think of new activities to do with their friends.', 'Piensan en nuevas actividades para hacer con sus amigos.', 'Ils pensent à de nouvelles activités à faire avec leurs amis.', 'Pensano a nuove attività da fare con i loro amici.', 'Pensam em novas atividades para fazer com os amigos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 6';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 14, 'to share', 'compartir', 'partager', 'condividere', 'compartilhar', 'They share their healthy recipes with other kids at school.', 'Comparten sus recetas saludables con otros niños en la escuela.', 'Ils partagent leurs recettes saines avec d''autres enfants à l''école.', 'Condividono le loro ricette salutari con altri bambini a scuola.', 'Compartilham suas receitas saudáveis com outras crianças na escola.'
FROM stories s WHERE s.title = 'Curb Appeall Story 6';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 15, 'to listen', 'escuchar', 'écouter', 'ascoltare', 'escutar', 'They listen to a podcast about saving money while buying healthy foods.', 'Escuchan un podcast sobre cómo ahorrar dinero al comprar alimentos saludables.', 'Ils écoutent un podcast sur la façon d''économiser de l''argent en achetant des aliments sains.', 'Ascoltano un podcast su come risparmiare denaro acquistando cibi sani.', 'Escutam um podcast sobre como economizar dinheiro comprando alimentos saudáveis.'
FROM stories s WHERE s.title = 'Curb Appeall Story 6';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 16, 'to play', 'jugar', 'jouer', 'giocare', 'jogar', 'They play a trivia game about nutrition to learn more.', 'Juegan un juego de preguntas sobre nutrición para aprender más.', 'Ils jouent à un jeu de questions sur la nutrition pour en apprendre davantage.', 'Giocano a un quiz sulla nutrizione per imparare di più.', 'Jogam um jogo de perguntas sobre nutrição para aprender mais.'
FROM stories s WHERE s.title = 'Curb Appeall Story 6';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 17, 'to walk', 'caminar', 'marcher', 'camminare', 'caminhar', 'They walk through the neighborhood picking up trash to keep the area clean.', 'Caminan por el vecindario recogiendo basura para mantener el área limpia.', 'Ils marchent dans le quartier en ramassant des déchets pour maintenir la zone propre.', 'Camminano nel quartiere raccogliendo rifiuti per mantenere la zona pulita.', 'Caminham pelo bairro recolhendo lixo para manter a área limpa.'
FROM stories s WHERE s.title = 'Curb Appeall Story 6';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 18, 'to dance', 'bailar', 'danser', 'ballare', 'dançar', 'They dance together to stay active and have fun.', 'Bailan juntos para mantenerse activos y divertirse.', 'Ils dansent ensemble pour rester actifs et s''amuser.', 'Ballano insieme per rimanere attivi e divertirsi.', 'Dançam juntos para se manterem ativos e se divertirem.'
FROM stories s WHERE s.title = 'Curb Appeall Story 6';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 19, 'to cook', 'cocinar', 'cuisiner', 'cucinare', 'cozinhar', 'They cook a vegetable soup following a simple recipe.', 'Cocinan una sopa de verduras siguiendo una receta simple.', 'Ils cuisinent une soupe de légumes en suivant une recette simple.', 'Cucinano una zuppa di verdure seguendo una ricetta semplice.', 'Cozinham uma sopa de legumes seguindo uma receita simples.'
FROM stories s WHERE s.title = 'Curb Appeall Story 6';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 20, 'to search/look for', 'buscar', 'chercher', 'cercare', 'buscar', 'They search online for ways to reduce food waste.', 'Buscan información en internet sobre cómo reducir el desperdicio de alimentos.', 'Ils cherchent des informations sur internet pour réduire le gaspillage alimentaire.', 'Cercano informazioni online su come ridurre lo spreco alimentare.', 'Buscam informações na internet sobre como reduzir o desperdício de alimentos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 6';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 21, 'to count/tell', 'contar', 'compter/raconter', 'contare/raccontare', 'contar', 'They share their stories of healthy achievements at the family gathering.', 'Cuentan sus historias de logros saludables en la reunión familiar.', 'Ils racontent leurs histoires de réussites saines lors de la réunion de famille.', 'Raccontano le loro storie di successi salutari durante la riunione di famiglia.', 'Contam suas histórias de conquistas saudáveis na reunião familiar.'
FROM stories s WHERE s.title = 'Curb Appeall Story 6';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 22, 'to swim', 'nadar', 'nager', 'nuotare', 'nadar', 'They swim in the lake as part of their exercise routine.', 'Nadan en el lago como parte de su rutina de ejercicios.', 'Ils nagent dans le lac dans le cadre de leur routine d''exercices.', 'Nuotano nel lago come parte della loro routine di esercizi.', 'Nadam no lago como parte da sua rotina de exercícios.'
FROM stories s WHERE s.title = 'Curb Appeall Story 6';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 23, 'to buy', 'comprar', 'acheter', 'comprare', 'comprar', 'They buy fresh fruits and vegetables at the local market.', 'Compran frutas y verduras frescas en el mercado local.', 'Ils achètent des fruits et légumes frais au marché local.', 'Comprano frutta e verdura fresca al mercato locale.', 'Compram frutas e vegetais frescos no mercado local.'
FROM stories s WHERE s.title = 'Curb Appeall Story 6';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 24, 'to open', 'abrir', 'ouvrir', 'aprire', 'abrir', 'They open a book about the human body to learn more about digestion.', 'Abren un libro sobre el cuerpo humano para aprender más sobre la digestión.', 'Ils ouvrent un livre sur le corps humain pour en savoir plus sur la digestion.', 'Aprono un libro sul corpo umano per imparare di più sulla digestione.', 'Abrem um livro sobre o corpo humano para aprender mais sobre digestão.'
FROM stories s WHERE s.title = 'Curb Appeall Story 6';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 25, 'to write', 'escribir', 'écrire', 'scrivere', 'escrever', 'They write a list of health goals for the next month.', 'Escriben una lista de metas de salud para el próximo mes.', 'Ils écrivent une liste d''objectifs de santé pour le mois prochain.', 'Scrivono una lista di obiettivi di salute per il prossimo mese.', 'Escrevem uma lista de metas de saúde para o próximo mês.'
FROM stories s WHERE s.title = 'Curb Appeall Story 6';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 26, 'to run', 'correr', 'courir', 'correre', 'correr', 'They run in the park to improve their endurance.', 'Corren en el parque para mejorar su resistencia.', 'Ils courent dans le parc pour améliorer leur endurance.', 'Corrono nel parco per migliorare la loro resistenza.', 'Correm no parque para melhorar sua resistência.'
FROM stories s WHERE s.title = 'Curb Appeall Story 6';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 27, 'to use', 'usar', 'utiliser', 'usare', 'usar', 'They use an app to track their eating habits.', 'Usan una aplicación para registrar sus hábitos alimenticios.', 'Ils utilisent une application pour enregistrer leurs habitudes alimentaires.', 'Usano un''app per monitorare le loro abitudini alimentari.', 'Usam um aplicativo para registrar seus hábitos alimentares.'
FROM stories s WHERE s.title = 'Curb Appeall Story 6';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 28, 'to learn', 'aprender', 'apprendre', 'imparare', 'aprender', 'They learn about the importance of hydration at school.', 'Aprenden sobre la importancia de la hidratación en la escuela.', 'Ils apprennent l''importance de l''hydratation à l''école.', 'Imparano l''importanza dell''idratazione a scuola.', 'Aprendem sobre a importância da hidratação na escola.'
FROM stories s WHERE s.title = 'Curb Appeall Story 6';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 29, 'to clean', 'limpiar', 'nettoyer', 'pulire', 'limpar', 'They clean the kitchen after preparing a healthy lunch.', 'Limpian la cocina después de preparar un almuerzo saludable.', 'Ils nettoient la cuisine après avoir préparé un déjeuner sain.', 'Puliscano la cucina dopo aver preparato un pranzo sano.', 'Limpam a cozinha após preparar um almoço saudável.'
FROM stories s WHERE s.title = 'Curb Appeall Story 6';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 30, 'to share', 'compartir', 'partager', 'condividere', 'compartilhar', 'They share healthy recipes with their friends online.', 'Comparten recetas saludables con sus amigos en línea.', 'Ils partagent des recettes saines avec leurs amis en ligne.', 'Condividono ricette salutari con i loro amici online.', 'Compartilham receitas saudáveis com seus amigos online.'
FROM stories s WHERE s.title = 'Curb Appeall Story 6';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 1, 'to enjoy', 'disfrutar', 'profiter', 'godere', 'desfrutar', 'They enjoy an outdoor meal after an active day.', 'Disfrutan de una comida al aire libre después de un día activo.', 'Ils profitent d''un repas en plein air après une journée active.', 'Godono di un pasto all''aperto dopo una giornata attiva.', 'Desfrutam de uma refeição ao ar livre após um dia ativo.'
FROM stories s WHERE s.title = 'Curb Appeall Story 7';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 2, 'to prepare', 'preparar', 'préparer', 'preparare', 'preparar', 'They prepare a fruit smoothie as a post-workout snack.', 'Preparan un batido de frutas como merienda después de entrenar.', 'Ils préparent un smoothie aux fruits comme collation après l''entraînement.', 'Preparano un frullato di frutta come spuntino post-allenamento.', 'Preparam um smoothie de frutas como lanche pós-treino.'
FROM stories s WHERE s.title = 'Curb Appeall Story 7';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 3, 'to drink', 'beber', 'boire', 'bere', 'beber', 'They drink lemon water to stay hydrated.', 'Beben agua con limón para mantenerse hidratados.', 'Ils boivent de l''eau citronnée pour rester hydratés.', 'Bevono acqua con limone per rimanere idratati.', 'Bebem água com limão para se manterem hidratados.'
FROM stories s WHERE s.title = 'Curb Appeall Story 7';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 4, 'to draw', 'dibujar', 'dessiner', 'disegnare', 'desenhar', 'They draw a graph to visualize their savings goals.', 'Dibujan un gráfico para visualizar sus objetivos de ahorro.', 'Ils dessinent un graphique pour visualiser leurs objectifs d''épargne.', 'Disegnano un grafico per visualizzare i loro obiettivi di risparmio.', 'Desenham um gráfico para visualizar suas metas de economia.'
FROM stories s WHERE s.title = 'Curb Appeall Story 7';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 5, 'to cook', 'cocinar', 'cuisiner', 'cucinare', 'cozinhar', 'They cook a new vegetable soup recipe together.', 'Cocinan juntos una receta nueva de sopa de vegetales.', 'Ils cuisinent ensemble une nouvelle recette de soupe aux légumes.', 'Cucìnano insieme una nuova ricetta di zuppa di verdure.', 'Cozinham juntos uma nova receita de sopa de vegetais.'
FROM stories s WHERE s.title = 'Curb Appeall Story 7';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 6, 'to organize', 'organizar', 'organiser', 'organizzare', 'organizar', 'They organize a fundraiser event for the school.', 'Organizan un evento para recaudar fondos para la escuela.', 'Ils organisent un événement pour collecter des fonds pour l''école.', 'Organizzano un evento per raccogliere fondi per la scuola.', 'Organizam um evento para arrecadar fundos para a escola.'
FROM stories s WHERE s.title = 'Curb Appeall Story 7';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 7, 'to dance', 'bailar', 'danser', 'ballare', 'dançar', 'They dance to celebrate after reaching a goal.', 'Bailan para celebrar después de alcanzar un objetivo.', 'Ils dansent pour célébrer après avoir atteint un objectif.', 'Ballano per festeggiare dopo aver raggiunto un obiettivo.', 'Dançam para celebrar depois de alcançar uma meta.'
FROM stories s WHERE s.title = 'Curb Appeall Story 7';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 8, 'to walk', 'caminar', 'marcher', 'camminare', 'caminhar', 'They walk through the forest to relax after studying.', 'Caminan por el bosque para relajarse después de estudiar.', 'Ils marchent dans la forêt pour se détendre après avoir étudié.', 'Camminano nel bosco per rilassarsi dopo aver studiato.', 'Caminham pela floresta para relaxar após estudar.'
FROM stories s WHERE s.title = 'Curb Appeall Story 7';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 9, 'to decide', 'decidir', 'décider', 'decidere', 'decidir', 'They decide to save half of their allowances each week.', 'Deciden ahorrar la mitad de sus mesadas cada semana.', 'Ils décident d''économiser la moitié de leur argent de poche chaque semaine.', 'Decidono di risparmiare metà della loro paghetta ogni settimana.', 'Decidem economizar metade de suas mesadas toda semana.'
FROM stories s WHERE s.title = 'Curb Appeall Story 7';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 10, 'to talk', 'hablar', 'parler', 'parlare', 'falar', 'They talk to a nutritionist about improving their diet.', 'Hablan con un nutricionista sobre cómo mejorar su dieta.', 'Ils parlent avec un nutritionniste de l''amélioration de leur régime alimentaire.', 'Parlano con un nutrizionista su come migliorare la loro dieta.', 'Falam com um nutricionista sobre como melhorar a dieta.'
FROM stories s WHERE s.title = 'Curb Appeall Story 7';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 11, 'to play', 'jugar', 'jouer', 'giocare', 'jogar', 'They play a soccer match in the park with friends.', 'Juegan un partido de fútbol en el parque con amigos.', 'Ils jouent un match de football dans le parc avec des amis.', 'Giocano una partita di calcio al parco con gli amici.', 'Jogam uma partida de futebol no parque com os amigos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 7';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 12, 'to help', 'ayudar', 'aider', 'aiutare', 'ajudar', 'They help their parents prepare a healthy dinner.', 'Ayudan a sus padres a preparar una cena saludable.', 'Ils aident leurs parents à préparer un dîner sain.', 'Aiutano i loro genitori a preparare una cena sana.', 'Ajudam seus pais a preparar um jantar saudável.'
FROM stories s WHERE s.title = 'Curb Appeall Story 7';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 13, 'to listen', 'escuchar', 'écouter', 'ascoltare', 'escutar', 'They listen to relaxing music while doing yoga.', 'Escuchan música relajante mientras hacen yoga.', 'Ils écoutent de la musique relaxante pendant qu''ils font du yoga.', 'Ascoltano musica rilassante mentre fanno yoga.', 'Escutam música relaxante enquanto fazem yoga.'
FROM stories s WHERE s.title = 'Curb Appeall Story 7';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 14, 'to paint', 'pintar', 'peindre', 'dipingere', 'pintar', 'They paint a mural depicting healthy habits.', 'Pintan un mural que muestra hábitos saludables.', 'Ils peignent une fresque qui montre des habitudes saines.', 'Dipingono un murale che mostra abitudini salutari.', 'Pintam um mural que mostra hábitos saudáveis.'
FROM stories s WHERE s.title = 'Curb Appeall Story 7';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 15, 'to rest', 'descansar', 'se reposer', 'riposare', 'descansar', 'They rest under a tree after a long walk.', 'Descansan bajo un árbol después de una larga caminata.', 'Ils se reposent sous un arbre après une longue marche.', 'Riposano sotto un albero dopo una lunga passeggiata.', 'Descansam debaixo de uma árvore depois de uma longa caminhada.'
FROM stories s WHERE s.title = 'Curb Appeall Story 7';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 16, 'to study', 'estudiar', 'étudier', 'studiare', 'estudar', 'They study the benefits of whole foods.', 'Estudian sobre los beneficios de los alimentos integrales.', 'Ils étudient les bienfaits des aliments complets.', 'Studiano i benefici degli alimenti integrali.', 'Estudam os benefícios dos alimentos integrais.'
FROM stories s WHERE s.title = 'Curb Appeall Story 7';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 17, 'to run', 'correr', 'courir', 'correre', 'correr', 'They run a friendly race to improve their endurance.', 'Corren una carrera amistosa para mejorar su resistencia.', 'Ils courent une course amicale pour améliorer leur endurance.', 'Corrono una gara amichevole per migliorare la loro resistenza.', 'Correm uma corrida amigável para melhorar sua resistência.'
FROM stories s WHERE s.title = 'Curb Appeall Story 7';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 18, 'to buy', 'comprar', 'acheter', 'comprare', 'comprar', 'They buy seeds to plant their own herb garden.', 'Compran semillas para plantar su propio jardín de hierbas.', 'Ils achètent des graines pour planter leur propre jardin d''herbes.', 'Comprano semi per piantare il proprio giardino di erbe aromatiche.', 'Compram sementes para plantar seu próprio jardim de ervas.'
FROM stories s WHERE s.title = 'Curb Appeall Story 7';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 19, 'to cook', 'cocinar', 'cuisiner', 'cucinare', 'cozinhar', 'They cook a healthy cake without added sugar.', 'Cocinan un pastel saludable sin azúcar añadido.', 'Ils cuisinent un gâteau sain sans sucre ajouté.', 'Cucinano una torta sana senza zucchero aggiunto.', 'Cozinham um bolo saudável sem açúcar adicionado.'
FROM stories s WHERE s.title = 'Curb Appeall Story 7';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 20, 'to jump', 'saltar', 'sauter', 'saltare', 'saltar', 'They jump over the waves while playing at the beach.', 'Saltan sobre las olas mientras juegan en la playa.', 'Ils sautent par-dessus les vagues en jouant sur la plage.', 'Saltano sopra le onde mentre giocano sulla spiaggia.', 'Saltam sobre as ondas enquanto brincam na praia.'
FROM stories s WHERE s.title = 'Curb Appeall Story 7';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 21, 'to plan', 'planear', 'planifier', 'pianificare', 'planejar', 'They plan a trip to explore the countryside.', 'Planean una excursión para explorar el campo.', 'Ils planifient une excursion pour explorer la campagne.', 'Pianificano un''escursione per esplorare la campagna.', 'Planejam uma excursão para explorar o campo.'
FROM stories s WHERE s.title = 'Curb Appeall Story 7';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 22, 'to write', 'escribir', 'écrire', 'scrivere', 'escrever', 'They write a journal about their wellness goals.', 'Escriben un diario sobre sus objetivos de bienestar.', 'Ils écrivent un journal sur leurs objectifs de bien-être.', 'Scrivono un diario sui loro obiettivi di benessere.', 'Escrevem um diário sobre seus objetivos de bem-estar.'
FROM stories s WHERE s.title = 'Curb Appeall Story 7';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 23, 'to clean', 'limpiar', 'nettoyer', 'pulire', 'limpar', 'They clean the kitchen together after cooking.', 'Limpian la cocina juntos después de cocinar.', 'Ils nettoient la cuisine ensemble après avoir cuisiné.', 'Pulìscono la cucina insieme dopo aver cucinato.', 'Limpam a cozinha juntos depois de cozinhar.'
FROM stories s WHERE s.title = 'Curb Appeall Story 7';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 24, 'to search/look for', 'buscar', 'chercher', 'cercare', 'procurar', 'They look for new ways to save money at the grocery store.', 'Buscan nuevas maneras de ahorrar dinero en el supermercado.', 'Ils cherchent de nouvelles façons d''économiser de l''argent au supermarché.', 'Cercano nuovi modi per risparmiare denaro al supermercato.', 'Procuram novas maneiras de economizar no supermercado.'
FROM stories s WHERE s.title = 'Curb Appeall Story 7';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 25, 'to dance', 'bailar', 'danser', 'ballare', 'dançar', 'They dance to celebrate their success in learning a new recipe.', 'Bailan para celebrar su éxito al aprender una nueva receta.', 'Ils dansent pour célébrer leur succès à apprendre une nouvelle recette.', 'Ballano per festeggiare il loro successo nell''imparare una nuova ricetta.', 'Dançam para comemorar o sucesso em aprender uma nova receita.'
FROM stories s WHERE s.title = 'Curb Appeall Story 7';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 26, 'to read', 'leer', 'lire', 'leggere', 'ler', 'They read a book about the benefits of daily exercise.', 'Leen un libro sobre los beneficios del ejercicio diario.', 'Ils lisent un livre sur les bienfaits de l''exercice quotidien.', 'Leggono un libro sui benefici dell''esercizio quotidiano.', 'Leem um livro sobre os benefícios do exercício diário.'
FROM stories s WHERE s.title = 'Curb Appeall Story 7';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 27, 'to teach', 'enseñar', 'enseigner', 'insegnare', 'ensinar', 'They teach their friends how to make a nutritious smoothie.', 'Enseñan a sus amigos cómo hacer un batido nutritivo.', 'Ils enseignent à leurs amis comment faire un smoothie nutritif.', 'Insegnano ai loro amici come preparare un frullato nutriente.', 'Ensinam seus amigos a fazer um smoothie nutritivo.'
FROM stories s WHERE s.title = 'Curb Appeall Story 7';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 28, 'to open', 'abrir', 'ouvrir', 'aprire', 'abrir', 'They open a new box of crayons for their creative projects.', 'Abren una nueva caja de lápices de colores para sus proyectos creativos.', 'Ils ouvrent une nouvelle boîte de crayons pour leurs projets créatifs.', 'Aprono una nuova scatola di pastelli per i loro progetti creativi.', 'Abrem uma nova caixa de lápis de cor para seus projetos criativos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 7';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 29, 'to swim', 'nadar', 'nager', 'nuotare', 'nadar', 'They swim in the river as part of their exercise routine.', 'Nadan en el río como parte de su rutina de ejercicio.', 'Ils nagent dans la rivière dans le cadre de leur routine d''exercice.', 'Nuotano nel fiume come parte della loro routine di allenamento.', 'Nadam no rio como parte da sua rotina de exercícios.'
FROM stories s WHERE s.title = 'Curb Appeall Story 7';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 30, 'to paint', 'pintar', 'peindre', 'dipingere', 'pintar', 'They paint a mural on the theme of nature and health.', 'Pintan un mural sobre el tema de la naturaleza y la salud.', 'Ils peignent une fresque sur le thème de la nature et de la santé.', 'Dipingono un murale sul tema della natura e della salute.', 'Pintam um mural sobre o tema da natureza e da saúde.'
FROM stories s WHERE s.title = 'Curb Appeall Story 7';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 1, 'to organize', 'organizar', 'organiser', 'organizzare', 'organizar', 'They organize a garage sale to raise money for the local park.', 'Organizan una venta de garaje para recaudar dinero para el parque local.', 'Ils organisent une vente de garage pour collecter des fonds pour le parc local.', 'Organizzano una vendita di garage per raccogliere fondi per il parco locale.', 'Organizam uma venda de garagem para arrecadar dinheiro para o parque local.'
FROM stories s WHERE s.title = 'Curb Appeall Story 8';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 2, 'to build', 'construir', 'construire', 'costruire', 'construir', 'They build a birdhouse as part of their science project.', 'Construyen una casa para pájaros como parte de su proyecto de ciencias.', 'Ils construisent une maison pour oiseaux dans le cadre de leur projet scientifique.', 'Costruiscono una casetta per uccelli come parte del loro progetto scientifico.', 'Constroem uma casinha de pássaros como parte de seu projeto de ciências.'
FROM stories s WHERE s.title = 'Curb Appeall Story 8';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 3, 'to help', 'ayudar', 'aider', 'aiutare', 'ajudar', 'They help their grandparents plant a vegetable garden.', 'Ayudan a sus abuelos a plantar un jardín de vegetales.', 'Ils aident leurs grands-parents à planter un potager.', 'Aiutano i loro nonni a piantare un orto.', 'Ajudam seus avós a plantar uma horta.'
FROM stories s WHERE s.title = 'Curb Appeall Story 8';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 4, 'to recycle', 'reciclar', 'recycler', 'riciclare', 'reciclar', 'They recycle bottles to make creative crafts.', 'Reciclan botellas para hacer manualidades creativas.', 'Ils recyclent des bouteilles pour créer des objets artisanaux.', 'Riciclano bottiglie per creare lavori artigianali.', 'Reciclam garrafas para fazer artesanatos criativos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 8';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 5, 'to cook', 'cocinar', 'cuisiner', 'cucinare', 'cozinhar', 'They cook a healthy meal together using local ingredients.', 'Cocinan juntos una comida saludable con ingredientes locales.', 'Ils cuisinent ensemble un repas sain avec des ingrédients locaux.', 'Cucìnano insieme un pasto sano con ingredienti locali.', 'Cozinham juntos uma refeição saudável com ingredientes locais.'
FROM stories s WHERE s.title = 'Curb Appeall Story 8';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 6, 'to take care of', 'cuidar', 's''occuper de', 'prendersi cura', 'cuidar', 'They take care of animals at the local shelter as a volunteer activity.', 'Cuidan de los animales en el refugio local como actividad voluntaria.', 'Ils s''occupent des animaux au refuge local comme activité bénévole.', 'Si prendono cura degli animali al rifugio locale come attività di volontariato.', 'Cuidam dos animais no abrigo local como uma atividade voluntária.'
FROM stories s WHERE s.title = 'Curb Appeall Story 8';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 7, 'to write', 'escribir', 'écrire', 'scrivere', 'escrever', 'They write a thank-you letter to their swimming coach.', 'Escriben una carta de agradecimiento a su entrenador de natación.', 'Ils écrivent une lettre de remerciement à leur entraîneur de natation.', 'Scrivono una lettera di ringraziamento al loro allenatore di nuoto.', 'Escrevem uma carta de agradecimento ao treinador de natação.'
FROM stories s WHERE s.title = 'Curb Appeall Story 8';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 8, 'to sing', 'cantar', 'chanter', 'cantare', 'cantar', 'They sing a song to motivate themselves while walking to the market.', 'Cantan una canción para motivarse mientras caminan al mercado.', 'Ils chantent une chanson pour se motiver en marchant vers le marché.', 'Cantano una canzone per motivarsi mentre camminano verso il mercato.', 'Cantam uma canção para se motivar enquanto caminham para o mercado.'
FROM stories s WHERE s.title = 'Curb Appeall Story 8';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 9, 'to buy', 'comprar', 'acheter', 'comprare', 'comprar', 'They buy seeds to start their own home garden.', 'Compran semillas para empezar su propio huerto en casa.', 'Ils achètent des graines pour démarrer leur propre jardin à la maison.', 'Comprano semi per iniziare il loro giardino di casa.', 'Compram sementes para começar sua própria horta em casa.'
FROM stories s WHERE s.title = 'Curb Appeall Story 8';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 10, 'to run', 'correr', 'courir', 'correre', 'correr', 'They run around the park to improve their endurance.', 'Corren alrededor del parque para mejorar su resistencia.', 'Ils courent autour du parc pour améliorer leur endurance.', 'Corrono intorno al parco per migliorare la loro resistenza.', 'Correm pelo parque para melhorar sua resistência.'
FROM stories s WHERE s.title = 'Curb Appeall Story 8';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 11, 'to draw', 'dibujar', 'dessiner', 'disegnare', 'desenhar', 'They draw their health goals and place them on a motivational mural.', 'Dibujan sus metas de salud y las colocan en un mural motivacional.', 'Ils dessinent leurs objectifs de santé et les placent sur un mur motivationnel.', 'Disegnano i loro obiettivi di salute e li mettono su un murale motivazionale.', 'Desenham seus objetivos de saúde e os colocam em um mural motivacional.'
FROM stories s WHERE s.title = 'Curb Appeall Story 8';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 12, 'to sleep', 'dormir', 'dormir', 'dormire', 'dormir', 'They sleep early to have energy for their big day of activities.', 'Duermen temprano para tener energía para su gran día de actividades.', 'Ils dorment tôt pour avoir de l''énergie pour leur grande journée d''activités.', 'Dormono presto per avere energia per la loro grande giornata di attività.', 'Dormem cedo para ter energia para o grande dia de atividades.'
FROM stories s WHERE s.title = 'Curb Appeall Story 8';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 13, 'to win', 'ganar', 'gagner', 'vincere', 'ganhar', 'They win a recycling contest for their innovative ideas.', 'Ganan un concurso de reciclaje por sus innovadoras ideas.', 'Ils gagnent un concours de recyclage grâce à leurs idées innovantes.', 'Vincono un concorso di riciclaggio per le loro idee innovative.', 'Ganham um concurso de reciclagem por suas ideias inovadoras.'
FROM stories s WHERE s.title = 'Curb Appeall Story 8';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 14, 'to study', 'estudiar', 'étudier', 'studiare', 'estudar', 'They study the food pyramid to learn about a balanced diet.', 'Estudian la pirámide alimenticia para aprender sobre una dieta equilibrada.', 'Ils étudient la pyramide alimentaire pour apprendre à équilibrer leur alimentation.', 'Studiano la piramide alimentare per imparare una dieta equilibrata.', 'Estudam a pirâmide alimentar para aprender sobre uma dieta equilibrada.'
FROM stories s WHERE s.title = 'Curb Appeall Story 8';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 15, 'to congratulate', 'felicitar', 'féliciter', 'congratulare', 'felicitar', 'They congratulate their friend for completing their first 5K race.', 'Felicitan a su amigo por completar su primera carrera de 5K.', 'Ils félicitent leur ami pour avoir terminé sa première course de 5 km.', 'Si congratulano con il loro amico per aver completato la sua prima corsa di 5 km.', 'Felicitam o amigo por completar sua primeira corrida de 5 km.'
FROM stories s WHERE s.title = 'Curb Appeall Story 8';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 16, 'to imagine', 'imaginar', 'imaginer', 'immaginare', 'imaginar', 'They imagine what it would be like to open a gym for kids and animals.', 'Imaginan cómo sería abrir un gimnasio para niños y animales.', 'Ils imaginent ce que ce serait d''ouvrir une salle de sport pour enfants et animaux.', 'Immaginano come sarebbe aprire una palestra per bambini e animali.', 'Imaginam como seria abrir uma academia para crianças e animais.'
FROM stories s WHERE s.title = 'Curb Appeall Story 8';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 17, 'to inflate', 'inflar', 'gonfler', 'gonfiare', 'inflar', 'They inflate balloons to decorate Curb''s birthday party.', 'Inflan globos para decorar la fiesta de cumpleaños de Curb.', 'Ils gonflent des ballons pour décorer la fête d''anniversaire de Curb.', 'Gonfiano palloncini per decorare la festa di compleanno di Curb.', 'Inflam balões para decorar a festa de aniversário do Curb.'
FROM stories s WHERE s.title = 'Curb Appeall Story 8';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 18, 'to lift', 'levantar', 'soulever', 'sollevare', 'levantar', 'They lift small weights to improve their strength.', 'Levantan pesas pequeñas para mejorar su fuerza.', 'Ils soulèvent de petits poids pour améliorer leur force.', 'Sollevano piccoli pesi per migliorare la loro forza.', 'Levantam pesos pequenos para melhorar sua força.'
FROM stories s WHERE s.title = 'Curb Appeall Story 8';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 19, 'to achieve', 'lograr', 'atteindre', 'raggiungere', 'alcançar', 'They achieve completing their community garden project.', 'Logran terminar su proyecto de jardín comunitario.', 'Ils atteignent l''achèvement de leur projet de jardin communautaire.', 'Riescono a completare il loro progetto di giardino comunitario.', 'Conseguem terminar seu projeto de jardim comunitário.'
FROM stories s WHERE s.title = 'Curb Appeall Story 8';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 20, 'to mix', 'mezclar', 'mélanger', 'mescolare', 'misturar', 'They mix fruits to prepare a healthy smoothie.', 'Mezclan frutas para preparar un batido saludable.', 'Ils mélangent des fruits pour préparer un smoothie sain.', 'Mescolano frutta per preparare un frullato salutare.', 'Misturam frutas para preparar um smoothie saudável.'
FROM stories s WHERE s.title = 'Curb Appeall Story 8';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 21, 'to assemble, to ride', 'montar', 'monter', 'montare', 'montar', 'They ride their bikes for a countryside journey.', 'Montan sus bicicletas para un paseo por el campo.', 'Ils montent leurs vélos pour une balade à la campagne.', 'Montano le loro biciclette per una gita in campagna.', 'Montam suas bicicletas para um passeio no campo.'
FROM stories s WHERE s.title = 'Curb Appeall Story 8';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 22, 'to swim', 'nadar', 'nager', 'nuotare', 'nadar', 'They swim in the nearby river to cool off on a hot day.', 'Nadan en el río cercano para refrescarse en un día caluroso.', 'Ils nagent dans la rivière proche pour se rafraîchir par une journée chaude.', 'Nuotano nel fiume vicino per rinfrescarsi in una giornata calda.', 'Nadam no rio próximo para se refrescar em um dia quente.'
FROM stories s WHERE s.title = 'Curb Appeall Story 8';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 23, 'to observe', 'observar', 'observer', 'osservare', 'observar', 'They observe how the plants grow in their garden.', 'Observan cómo crecen las plantas en su huerto.', 'Ils observent comment les plantes poussent dans leur jardin.', 'Osservano come crescono le piante nel loro giardino.', 'Observam como as plantas crescem em sua horta.'
FROM stories s WHERE s.title = 'Curb Appeall Story 8';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 24, 'to organize', 'organizar', 'organiser', 'organizzare', 'organizar', 'They organize a sports event for kids and animals.', 'Organizan un evento deportivo para niños y animales.', 'Ils organisent un événement sportif pour enfants et animaux.', 'Organizzano un evento sportivo per bambini e animali.', 'Organizam um evento esportivo para crianças e animais.'
FROM stories s WHERE s.title = 'Curb Appeall Story 8';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 25, 'to hear', 'oír', 'entendre', 'sentire', 'ouvir', 'They hear the sound of birds singing in the forest.', 'Oyen el sonido de los pájaros cantando en el bosque.', 'Ils entendent le son des oiseaux chanter dans la forêt.', 'Sentono il suono degli uccelli che cantano nella foresta.', 'Ouvem o som dos pássaros cantando na floresta.'
FROM stories s WHERE s.title = 'Curb Appeall Story 8';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 26, 'to give an opinion', 'opinar', 'donner son avis', 'esprimere un''opinione', 'opinar', 'They give their opinion on what type of healthy food they should cook.', 'Opinan sobre qué tipo de comida saludable deberían cocinar.', 'Ils donnent leur avis sur quel type de nourriture saine ils devraient cuisiner.', 'Esprimono la loro opinione su che tipo di cibo sano dovrebbero cucinare.', 'Opinam sobre que tipo de comida saudável deveriam cozinhar.'
FROM stories s WHERE s.title = 'Curb Appeall Story 8';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 27, 'to lose', 'perder', 'perdre', 'perdere', 'perder', 'They lose a soccer game, but learn from the experience.', 'Pierden un partido de fútbol, pero aprenden de la experiencia.', 'Ils perdent un match de football, mais ils apprennent de l''expérience.', 'Perdono una partita di calcio, ma imparano dall''esperienza.', 'Perdem uma partida de futebol, mas aprendem com a experiência.'
FROM stories s WHERE s.title = 'Curb Appeall Story 8';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 28, 'to plan', 'planificar', 'planifier', 'pianificare', 'planejar', 'They plan their week to include time for exercise and rest.', 'Planifican su semana para incluir tiempo de ejercicio y descanso.', 'Ils planifient leur semaine pour inclure du temps pour l''exercice et le repos.', 'Pianificano la loro settimana per includere tempo per l''esercizio e il riposo.', 'Planejam sua semana para incluir tempo para exercício e descanso.'
FROM stories s WHERE s.title = 'Curb Appeall Story 8';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 29, 'to practice', 'practicar', 'pratiquer', 'praticare', 'praticar', 'They practice yoga every morning to stay flexible.', 'Practican yoga todas las mañanas para mantenerse flexibles.', 'Ils pratiquent le yoga tous les matins pour rester flexibles.', 'Praticano yoga ogni mattina per rimanere flessibili.', 'Praticam yoga todas as manhãs para se manter flexíveis.'
FROM stories s WHERE s.title = 'Curb Appeall Story 8';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 30, 'to prepare', 'preparar', 'préparer', 'preparare', 'preparar', 'They prepare a healthy meal with fresh ingredients.', 'Preparan una comida saludable con ingredientes frescos.', 'Ils préparent un repas sain avec des ingrédients frais.', 'Preparano un pasto sano con ingredienti freschi.', 'Preparam uma refeição saudável com ingredientes frescos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 8';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 1, 'to protect', 'proteger', 'protéger', 'proteggere', 'proteger', 'They protect their fruits and vegetables from insects in the garden.', 'Protegen sus frutas y verduras de los insectos en el jardín.', 'Ils protègent leurs fruits et légumes des insectes dans le jardin.', 'Proteggono la loro frutta e verdura dagli insetti nel giardino.', 'Protegem suas frutas e verduras dos insetos no jardim.'
FROM stories s WHERE s.title = 'Curb Appeall Story 9';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 2, 'to remove', 'quitar', 'enlever', 'togliere', 'tirar', 'They remove the dirty plates after dinner.', 'Quitan los platos sucios después de la cena.', 'Ils enlèvent les assiettes sales après le dîner.', 'Toglono i piatti sporchi dopo la cena.', 'Tiram os pratos sujos depois do jantar.'
FROM stories s WHERE s.title = 'Curb Appeall Story 9';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 3, 'to laugh', 'reir', 'rire', 'ridere', 'rir', 'They laugh at Curb''s jokes about his training.', 'Se ríen de las bromas de Curb sobre su entrenamiento.', 'Ils rient des blagues de Curb sur son entraînement.', 'Ridono delle battute di Curb sul suo allenamento.', 'Riem das piadas de Curb sobre o seu treino.'
FROM stories s WHERE s.title = 'Curb Appeall Story 9';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 4, 'to remember', 'recordar', 'se souvenir', 'ricordare', 'lembrar', 'They remember the importance of drinking water before exercising.', 'Recuerdan la importancia de tomar agua antes de hacer ejercicio.', 'Ils se souviennent de l''importance de boire de l''eau avant de faire de l''exercice.', 'Si ricordano l''importanza di bere acqua prima di fare esercizio.', 'Lembram da importância de beber água antes de fazer exercício.'
FROM stories s WHERE s.title = 'Curb Appeall Story 9';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 5, 'to reduce', 'reducir', 'réduire', 'ridurre', 'reduzir', 'They reduce the size of their portions to eat healthier.', 'Reducen el tamaño de las porciones para comer más saludable.', 'Ils réduisent la taille de leurs portions pour manger plus sainement.', 'Riducono la dimensione delle loro porzioni per mangiare più sano.', 'Reduzem o tamanho das porções para comer de forma mais saudável.'
FROM stories s WHERE s.title = 'Curb Appeall Story 9';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 6, 'to reflect', 'reflexionar', 'réfléchir', 'riflettere', 'refletir', 'They reflect on how their diet affects their daily energy.', 'Reflexionan sobre cómo su dieta afecta su energía diaria.', 'Ils réfléchissent à la façon dont leur alimentation affecte leur énergie quotidienne.', 'Riflettono su come la loro dieta influisce sulla loro energia quotidiana.', 'Refletem sobre como sua dieta afeta sua energia diária.'
FROM stories s WHERE s.title = 'Curb Appeall Story 9';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 7, 'to relax', 'relajar', 'se détendre', 'rilassarsi', 'relaxar', 'They relax with a peaceful walk through the park.', 'Se relajan con una caminata tranquila por el parque.', 'Ils se détendent avec une promenade tranquille dans le parc.', 'Si rilassano con una passeggiata tranquilla nel parco.', 'Relaxam com uma caminhada tranquila pelo parque.'
FROM stories s WHERE s.title = 'Curb Appeall Story 9';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 8, 'to resolve', 'resolver', 'résoudre', 'risolvere', 'resolver', 'They resolve a problem in the training by working together.', 'Resuelven un problema en el entrenamiento trabajando juntos.', 'Ils résolvent un problème dans l''entraînement en travaillant ensemble.', 'Risolvono un problema nell''allenamento lavorando insieme.', 'Resolvem um problema no treinamento trabalhando juntos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 9';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 9, 'to respect', 'respetar', 'respecter', 'rispettare', 'respeitar', 'They respect rest times to improve their performance.', 'Respetan los tiempos de descanso para mejorar su rendimiento.', 'Ils respectent les temps de repos pour améliorer leurs performances.', 'Rispettano i tempi di riposo per migliorare le loro prestazioni.', 'Respeitam os tempos de descanso para melhorar seu desempenho.'
FROM stories s WHERE s.title = 'Curb Appeall Story 9';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 10, 'to know', 'saber', 'savoir', 'sapere', 'saber', 'They know that good nutrition is key to their well-being.', 'Saben que la buena nutrición es clave para su bienestar.', 'Ils savent que la bonne nutrition est essentielle à leur bien-être.', 'Sanno che una buona alimentazione è fondamentale per il loro benessere.', 'Sabem que uma boa nutrição é essencial para o seu bem-estar.'
FROM stories s WHERE s.title = 'Curb Appeall Story 9';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 11, 'to jump', 'saltar', 'sauter', 'saltare', 'pular', 'They jump with joy when learning a new exercise.', 'Saltan de alegría al aprender un nuevo ejercicio.', 'Ils sautent de joie en apprenant un nouvel exercice.', 'Saltano di gioia quando imparano un nuovo esercizio.', 'Pulam de alegria ao aprender um novo exercício.'
FROM stories s WHERE s.title = 'Curb Appeall Story 9';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 12, 'to go out', 'salir', 'sortir', 'uscire', 'sair', 'They go out into the fresh air to exercise in the sun.', 'Salen al aire libre para hacer ejercicio al sol.', 'Ils sortent à l''extérieur pour faire de l''exercice au soleil.', 'Escono all''aria aperta per fare esercizio al sole.', 'Saem ao ar livre para se exercitar ao sol.'
FROM stories s WHERE s.title = 'Curb Appeall Story 9';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 13, 'to go up, to raise', 'subir', 'monter', 'salire', 'subir', 'They go up the stairs to strengthen their legs.', 'Suben las escaleras para fortalecer sus piernas.', 'Ils montent les escaliers pour renforcer leurs jambes.', 'Salgono le scale per rafforzare le loro gambe.', 'Sobem as escadas para fortalecer as pernas.'
FROM stories s WHERE s.title = 'Curb Appeall Story 9';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 14, 'to have', 'tener', 'avoir', 'avere', 'ter', 'They have many questions about how to improve their health.', 'Tienen muchas preguntas sobre cómo mejorar su salud.', 'Ils ont beaucoup de questions sur la façon d''améliorer leur santé.', 'Hanno molte domande su come migliorare la loro salute.', 'Têm muitas perguntas sobre como melhorar sua saúde.'
FROM stories s WHERE s.title = 'Curb Appeall Story 9';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 15, 'to touch', 'tocar', 'toucher', 'toccare', 'tocar', 'They touch their heart to feel the rhythm of their health.', 'Tocan su corazón para sentir el ritmo de su salud.', 'Ils touchent leur cœur pour ressentir le rythme de leur santé.', 'Toccano il loro cuore per sentire il ritmo della loro salute.', 'Tocam o coração para sentir o ritmo de sua saúde.'
FROM stories s WHERE s.title = 'Curb Appeall Story 9';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 16, 'to work', 'trabajar', 'travailler', 'lavorare', 'trabalhar', 'They work together to improve their lifestyle habits.', 'Trabajan juntos para mejorar sus hábitos de vida.', 'Ils travaillent ensemble pour améliorer leurs habitudes de vie.', 'Lavorano insieme per migliorare le loro abitudini di vita.', 'Trabalham juntos para melhorar seus hábitos de vida.'
FROM stories s WHERE s.title = 'Curb Appeall Story 9';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 17, 'to bring', 'traer', 'apporter', 'portare', 'trazer', 'They bring new ideas on how to eat better.', 'Traen nuevas ideas sobre cómo comer mejor.', 'Ils apportent de nouvelles idées sur la façon de mieux manger.', 'Portano nuove idee su come mangiare meglio.', 'Trazem novas ideias sobre como comer melhor.'
FROM stories s WHERE s.title = 'Curb Appeall Story 9';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 18, 'to use', 'usar', 'utiliser', 'usare', 'usar', 'They use their phones to track their physical activity.', 'Usan sus teléfonos para rastrear su actividad física.', 'Ils utilisent leurs téléphones pour suivre leur activité physique.', 'Usano i loro telefoni per monitorare la loro attività fisica.', 'Usam seus telefones para monitorar sua atividade física.'
FROM stories s WHERE s.title = 'Curb Appeall Story 9';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 19, 'to see', 'ver', 'voir', 'vedere', 'ver', 'They see everything they can do if they take better care of themselves.', 'Ven todo lo que pueden hacer si se cuidan mejor.', 'Ils voient tout ce qu''ils peuvent faire s''ils prennent mieux soin d''eux-mêmes.', 'Vedono tutto ciò che possono fare se si prendono meglio cura di loro stessi.', 'Veem tudo o que podem fazer se cuidarem melhor de si mesmos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 9';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 20, 'to live', 'vivir', 'vivre', 'vivere', 'viver', 'They live a life full of energy and joy.', 'Viven una vida llena de energía y alegría.', 'Ils vivent une vie pleine d''énergie et de joie.', 'Vivono una vita piena di energia e gioia.', 'Vivem uma vida cheia de energia e alegria.'
FROM stories s WHERE s.title = 'Curb Appeall Story 9';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 21, 'to vote', 'votar', 'voter', 'votare', 'votar', 'They vote for the best options for their well-being.', 'Votan por las mejores opciones para su bienestar.', 'Ils votent pour les meilleures options pour leur bien-être.', 'Votano per le migliori opzioni per il loro benessere.', 'Votam pelas melhores opções para o seu bem-estar.'
FROM stories s WHERE s.title = 'Curb Appeall Story 9';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 22, 'to return', 'volver', 'revenir', 'tornare', 'voltar', 'They return to their daily routine after a break.', 'Vuelven a su rutina diaria después de un descanso.', 'Ils reviennent à leur routine quotidienne après une pause.', 'Tornano alla loro routine quotidiana dopo una pausa.', 'Voltam para sua rotina diária após um descanso.'
FROM stories s WHERE s.title = 'Curb Appeall Story 9';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 23, 'to vote', 'votar', 'voter', 'votare', 'votar', 'They vote to decide what activity to do in their free time.', 'Votan para decidir qué actividad hacer en su tiempo libre.', 'Ils votent pour décider quelle activité faire pendant leur temps libre.', 'Votano per decidere quale attività fare nel loro tempo libero.', 'Votam para decidir qual atividade fazer no tempo livre.'
FROM stories s WHERE s.title = 'Curb Appeall Story 9';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 24, 'to lie down', 'yacer', 'être allongé', 'giacere', 'deitar', 'They lie down on the grass to stretch.', 'Yacen en el césped para hacer estiramientos.', 'Ils s''allongent sur l''herbe pour s''étirer.', 'Si sdraiano sull''erba per fare stretching.', 'Deitam-se na grama para fazer alongamentos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 9';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 25, 'to add', 'añadir', 'ajouter', 'aggiungere', 'adicionar', 'They add fruits and vegetables to their diet every day.', 'Añaden frutas y verduras a su dieta todos los días.', 'Ils ajoutent des fruits et des légumes à leur alimentation tous les jours.', 'Aggiungono frutta e verdura alla loro dieta ogni giorno.', 'Adicionam frutas e vegetais à sua dieta todos os dias.'
FROM stories s WHERE s.title = 'Curb Appeall Story 9';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 26, 'to help', 'ayudar', 'aider', 'aiutare', 'ajudar', 'They help their friends understand how to save money.', 'Ayudan a sus amigos a entender cómo ahorrar dinero.', 'Ils aident leurs amis à comprendre comment économiser de l''argent.', 'Aiutano i loro amici a capire come risparmiare denaro.', 'Ajudam seus amigos a entender como economizar dinheiro.'
FROM stories s WHERE s.title = 'Curb Appeall Story 9';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 27, 'to dance', 'bailar', 'danser', 'ballare', 'dançar', 'They dance together to release their stress.', 'Bailan juntos para liberar su estrés.', 'Ils dansent ensemble pour libérer leur stress.', 'Ballano insieme per liberare lo stress.', 'Dançam juntos para liberar o estresse.'
FROM stories s WHERE s.title = 'Curb Appeall Story 9';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 28, 'to drink', 'beber', 'boire', 'bere', 'beber', 'They drink water after exercising.', 'Beben agua después de hacer ejercicio.', 'Ils boivent de l''eau après avoir fait de l''exercice.', 'Bevano acqua dopo aver fatto esercizio.', 'Bebem água depois de fazer exercício.'
FROM stories s WHERE s.title = 'Curb Appeall Story 9';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 29, 'to search', 'buscar', 'chercher', 'cercare', 'procurar', 'They search for ways to improve their health and well-being.', 'Buscan maneras de mejorar su salud y bienestar.', 'Ils cherchent des moyens d''améliorer leur santé et leur bien-être.', 'Cercano modi per migliorare la loro salute e il loro benessere.', 'Procuram maneiras de melhorar sua saúde e bem-estar.'
FROM stories s WHERE s.title = 'Curb Appeall Story 9';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 30, 'to change', 'cambiar', 'changer', 'cambiare', 'mudar', 'They change their diet to be healthier.', 'Cambian su dieta para ser más saludables.', 'Ils changent leur alimentation pour être plus sains.', 'Cambiano la loro dieta per essere più sani.', 'Mudam sua dieta para serem mais saudáveis.'
FROM stories s WHERE s.title = 'Curb Appeall Story 9';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 1, 'to eat', 'comer', 'manger', 'mangiare', 'comer', 'They eat together as a family to enjoy healthy food.', 'Comen juntos en familia para disfrutar de alimentos saludables.', 'Ils mangent ensemble en famille pour profiter de la nourriture saine.', 'Mangiano insieme in famiglia per godere di cibo sano.', 'Comem juntos em família para aproveitar alimentos saudáveis.'
FROM stories s WHERE s.title = 'Curb Appeall Story 10';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 2, 'to understand', 'comprender', 'comprendre', 'comprendere', 'compreender', 'They understand how food affects their health.', 'Comprenden cómo la comida afecta su salud.', 'Ils comprennent comment la nourriture affecte leur santé.', 'Capiscono come il cibo influisce sulla loro salute.', 'Compreendem como a comida afeta sua saúde.'
FROM stories s WHERE s.title = 'Curb Appeall Story 10';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 3, 'to run', 'correr', 'courir', 'correre', 'correr', 'They run in the park to stay fit.', 'Corren en el parque para mantenerse en forma.', 'Ils courent dans le parc pour rester en forme.', 'Corrono nel parco per mantenersi in forma.', 'Correm no parque para manterem-se em forma.'
FROM stories s WHERE s.title = 'Curb Appeall Story 10';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 4, 'to cut', 'cortar', 'couper', 'tagliare', 'cortar', 'They cut vegetables to make a salad.', 'Cortan las verduras para hacer una ensalada.', 'Ils coupent des légumes pour faire une salade.', 'Tagliano le verdure per fare un''insalata.', 'Cortam os vegetais para fazer uma salada.'
FROM stories s WHERE s.title = 'Curb Appeall Story 10';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 5, 'to give', 'dar', 'donner', 'dare', 'dar', 'They give advice on living a healthy life.', 'Dan consejos para llevar una vida saludable.', 'Ils donnent des conseils pour mener une vie saine.', 'Danno consigli su come vivere una vita sana.', 'Dão conselhos sobre como viver uma vida saudável.'
FROM stories s WHERE s.title = 'Curb Appeall Story 10';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 6, 'to say', 'decir', 'dire', 'dire', 'dizer', 'They say that exercise is key to well-being.', 'Dicen que el ejercicio es clave para el bienestar.', 'Ils disent que l''exercice est la clé du bien-être.', 'Dicono che l''esercizio è la chiave per il benessere.', 'Dizem que o exercício é a chave para o bem-estar.'
FROM stories s WHERE s.title = 'Curb Appeall Story 10';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 7, 'to develop', 'desarrollar', 'développer', 'sviluppare', 'desenvolver', 'They develop new strategies to save money.', 'Desarrollan nuevas estrategias para ahorrar dinero.', 'Ils développent de nouvelles stratégies pour économiser de l''argent.', 'Sviluppano nuove strategie per risparmiare denaro.', 'Desenvolvem novas estratégias para economizar dinheiro.'
FROM stories s WHERE s.title = 'Curb Appeall Story 10';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 8, 'to draw', 'dibujar', 'dessiner', 'disegnare', 'desenhar', 'They draw their healthy future in a notebook.', 'Dibujan su futuro saludable en un cuaderno.', 'Ils dessinent leur avenir sain dans un carnet.', 'Disegnano il loro futuro sano in un quaderno.', 'Desenham seu futuro saudável em um caderno.'
FROM stories s WHERE s.title = 'Curb Appeall Story 10';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 9, 'to enjoy', 'disfrutar', 'profiter', 'godere', 'desfrutar', 'They enjoy eating together in the field.', 'Disfrutan comiendo juntos en el campo.', 'Ils profitent de manger ensemble dans le champ.', 'Godono mangiare insieme nel campo.', 'Aproveitam comer juntos no campo.'
FROM stories s WHERE s.title = 'Curb Appeall Story 10';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 10, 'to teach', 'enseñar', 'enseigner', 'insegnare', 'ensinar', 'They teach their friends how to choose healthy foods.', 'Enseñan a sus amigos cómo elegir alimentos saludables.', 'Ils enseignent à leurs amis comment choisir des aliments sains.', 'Insegnano ai loro amici come scegliere cibi sani.', 'Ensinam seus amigos como escolher alimentos saudáveis.'
FROM stories s WHERE s.title = 'Curb Appeall Story 10';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 11, 'to write', 'escribir', 'écrire', 'scrivere', 'escrever', 'They write their health goals in their journals.', 'Escriben sus metas de salud en sus diarios.', 'Ils écrivent leurs objectifs de santé dans leurs journaux.', 'Scrivono i loro obiettivi di salute nei loro diari.', 'Escrevem suas metas de saúde em seus diários.'
FROM stories s WHERE s.title = 'Curb Appeall Story 10';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 12, 'to study', 'estudiar', 'étudier', 'studiare', 'estudar', 'They study how exercise improves their mental health.', 'Estudian cómo el ejercicio mejora su salud mental.', 'Ils étudient comment l''exercice améliore leur santé mentale.', 'Studiano come l''esercizio migliora la loro salute mentale.', 'Estudam como o exercício melhora sua saúde mental.'
FROM stories s WHERE s.title = 'Curb Appeall Story 10';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 13, 'to explain', 'explicar', 'expliquer', 'spiegare', 'explicar', 'They explain the importance of physical activity.', 'Explican la importancia de la actividad física.', 'Ils expliquent l''importance de l''activité physique.', 'Spiegano l''importanza dell''attività fisica.', 'Explicam a importância da atividade física.'
FROM stories s WHERE s.title = 'Curb Appeall Story 10';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 14, 'to promote', 'fomentar', 'promouvoir', 'promuovere', 'promover', 'They promote an active life by inviting their friends to walk.', 'Fomentan una vida activa al invitar a sus amigos a caminar.', 'Ils promeuvent une vie active en invitant leurs amis à marcher.', 'Promuovono una vita attiva invitando i loro amici a camminare.', 'Promovem uma vida ativa convidando seus amigos para caminhar.'
FROM stories s WHERE s.title = 'Curb Appeall Story 10';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 15, 'to win', 'ganar', 'gagner', 'vincere', 'ganhar', 'They won a race competition and felt very happy.', 'Ganaron una competencia de carrera y se sintieron muy felices.', 'Ils ont gagné une compétition de course et se sont sentis très heureux.', 'Hanno vinto una competizione di corsa e si sono sentiti molto felici.', 'Ganhou uma competição de corrida e se sentiu muito feliz.'
FROM stories s WHERE s.title = 'Curb Appeall Story 10';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 16, 'to spend', 'gastar', 'dépenser', 'spendere', 'gastar', 'They spend their money wisely to buy healthy food.', 'Gastan su dinero sabiamente para comprar comida saludable.', 'Ils dépensent leur argent judicieusement pour acheter des aliments sains.', 'Spendono i loro soldi saggiamente per comprare cibo sano.', 'Gastam seu dinheiro sabiamente para comprar comida saudável.'
FROM stories s WHERE s.title = 'Curb Appeall Story 10';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 17, 'to talk', 'hablar', 'parler', 'parlare', 'falar', 'They talk about how to save money for the future.', 'Hablan sobre cómo ahorrar dinero para el futuro.', 'Ils parlent de comment économiser de l''argent pour l''avenir.', 'Parlano di come risparmiare denaro per il futuro.', 'Falam sobre como economizar dinheiro para o futuro.'
FROM stories s WHERE s.title = 'Curb Appeall Story 10';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 18, 'to do/make', 'hacer', 'faire', 'fare', 'fazer', 'They exercise together every day to stay healthy.', 'Hacen ejercicio juntos todos los días para mantenerse saludables.', 'Ils font de l''exercice ensemble tous les jours pour rester en bonne santé.', 'Fanno esercizio insieme ogni giorno per rimanere in salute.', 'Fazem exercício juntos todos os dias para se manterem saudáveis.'
FROM stories s WHERE s.title = 'Curb Appeall Story 10';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 19, 'to impose', 'imponer', 'imposer', 'imporre', 'impor', 'They impose rules for healthy eating in their home.', 'Imponen reglas para una alimentación saludable en su hogar.', 'Ils imposent des règles pour une alimentation saine chez eux.', 'Impongono regole per mangiare sano a casa loro.', 'Impõem regras para uma alimentação saudável em casa.'
FROM stories s WHERE s.title = 'Curb Appeall Story 10';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 20, 'to include', 'incluir', 'inclure', 'includere', 'incluir', 'They include more protein in their daily diet.', 'Incluyen más proteínas en su dieta diaria.', 'Ils incluent plus de protéines dans leur alimentation quotidienne.', 'Includono più proteine nella loro dieta quotidiana.', 'Incluem mais proteínas em sua dieta diária.'
FROM stories s WHERE s.title = 'Curb Appeall Story 10';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 21, 'to invest', 'invertir', 'investir', 'investire', 'investir', 'They invest in their health by exercising and eating well.', 'Invierten en su salud al hacer ejercicio y comer bien.', 'Ils investissent dans leur santé en faisant de l''exercice et en mangeant bien.', 'Investono nella loro salute facendo esercizio e mangiando bene.', 'Investem em sua saúde praticando exercício e comendo bem.'
FROM stories s WHERE s.title = 'Curb Appeall Story 10';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 22, 'to go', 'ir', 'aller', 'andare', 'ir', 'They go to the gym for strength training.', 'Van al gimnasio para hacer entrenamiento de fuerza.', 'Ils vont à la salle de sport pour faire de l''entraînement en force.', 'Vanno in palestra per fare allenamento di forza.', 'Vão para a academia para fazer treino de força.'
FROM stories s WHERE s.title = 'Curb Appeall Story 10';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 23, 'to lift', 'levantar', 'lever', 'sollevare', 'levantar', 'They lift weights to improve their strength.', 'Levantan pesas para mejorar su fuerza.', 'Ils soulèvent des poids pour améliorer leur force.', 'Sollevano pesi per migliorare la loro forza.', 'Levantam pesos para melhorar sua força.'
FROM stories s WHERE s.title = 'Curb Appeall Story 10';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 24, 'to achieve', 'lograr', 'réussir', 'riuscire', 'conseguir', 'They achieve their health goals with effort and dedication.', 'Logran sus metas de salud con esfuerzo y dedicación.', 'Ils atteignent leurs objectifs de santé avec effort et dévouement.', 'Raggiungono i loro obiettivi di salute con impegno e dedizione.', 'Alcançam suas metas de saúde com esforço e dedicação.'
FROM stories s WHERE s.title = 'Curb Appeall Story 10';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 25, 'to maintain', 'mantener', 'maintenir', 'mantenere', 'manter', 'They maintain a balanced diet every day.', 'Mantienen una dieta equilibrada todos los días.', 'Ils maintiennent une alimentation équilibrée tous les jours.', 'Mantengono una dieta equilibrata ogni giorno.', 'Mantêm uma dieta equilibrada todos os dias.'
FROM stories s WHERE s.title = 'Curb Appeall Story 10';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 26, 'to measure', 'medir', 'mesurer', 'misurare', 'medir', 'They measure their progress in exercise with a fitness tracker.', 'Miden su progreso en el ejercicio con un reloj de fitness.', 'Ils mesurent leurs progrès dans l''exercice avec un traqueur de fitness.', 'Misurano i loro progressi nell''esercizio con un tracker di fitness.', 'Medem seu progresso no exercício com um monitor de fitness.'
FROM stories s WHERE s.title = 'Curb Appeall Story 10';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 27, 'to improve', 'mejorar', 'améliorer', 'migliorare', 'melhorar', 'They improve their performance with each workout.', 'Mejoran su rendimiento físico con cada entrenamiento.', 'Ils améliorent leurs performances à chaque entraînement.', 'Migliorano le loro performance ad ogni allenamento.', 'Melhoram seu desempenho a cada treino.'
FROM stories s WHERE s.title = 'Curb Appeall Story 10';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 28, 'to put in', 'meter', 'mettre', 'mettere', 'colocar', 'They put fresh ingredients in their smoothies.', 'Meten los ingredientes frescos en sus batidos.', 'Ils mettent des ingrédients frais dans leurs smoothies.', 'Mettono ingredienti freschi nei loro frullati.', 'Colocam ingredientes frescos nos seus smoothies.'
FROM stories s WHERE s.title = 'Curb Appeall Story 10';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 29, 'to look', 'mirar', 'regarder', 'guardare', 'olhar', 'They look at the stars while enjoying an active evening.', 'Miran las estrellas mientras disfrutan de una noche activa.', 'Ils regardent les étoiles tout en appréciant une soirée active.', 'Guardano le stelle mentre godono di una serata attiva.', 'Olham para as estrelas enquanto aproveitam uma noite ativa.'
FROM stories s WHERE s.title = 'Curb Appeall Story 10';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 30, 'to die', 'morir', 'mourir', 'morire', 'morrer', 'They show respect for nature and its animals.', 'Muestran respeto por la naturaleza y sus animales.', 'Ils montrent du respect pour la nature et ses animaux.', 'Mostrano rispetto per la natura e i suoi animali.', 'Mostram respeito pela natureza e seus animais.'
FROM stories s WHERE s.title = 'Curb Appeall Story 10';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 1, 'to move', 'mover', 'bouger', 'muovere', 'mover', 'They move their bodies to warm up before running.', 'Mueven sus cuerpos para calentarse antes de correr.', 'Ils bougent leurs corps pour se réchauffer avant de courir.', 'Muovono i loro corpi per riscaldarsi prima di correre.', 'Movem seus corpos para aquecer antes de correr.'
FROM stories s WHERE s.title = 'Curb Appeall Story 11';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 2, 'to swim', 'nadar', 'nager', 'nuotare', 'nadar', 'They swim in the lake for fun and exercise.', 'Nadan en el lago para divertirse y hacer ejercicio.', 'Ils nagent dans le lac pour s''amuser et faire de l''exercice.', 'Nuotano nel lago per divertirsi e fare esercizio.', 'Nadam no lago para se divertir e se exercitar.'
FROM stories s WHERE s.title = 'Curb Appeall Story 11';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 3, 'to smell', 'oler', 'sentir', 'odorare', 'cheirar', 'They smell the flowers as they walk through the park.', 'Huelen las flores mientras pasean por el parque.', 'Ils sentent les fleurs en se promenant dans le parc.', 'Annusano i fiori mentre passeggiano nel parco.', 'Cheiram as flores enquanto passeiam pelo parque.'
FROM stories s WHERE s.title = 'Curb Appeall Story 11';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 4, 'to forget', 'olvidar', 'oublier', 'dimenticare', 'esquecer', 'They forget to drink water while running.', 'Olvidan que deben beber agua mientras corren.', 'Ils oublient de boire de l''eau pendant qu''ils courent.', 'Dimenticano di bere acqua mentre corrono.', 'Esquecem de beber água enquanto correm.'
FROM stories s WHERE s.title = 'Curb Appeall Story 11';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 5, 'to oppose', 'oponer', 'opposer', 'opporre', 'opor', 'They oppose unhealthy habits.', 'Oponen resistencia a los hábitos poco saludables.', 'Ils s''opposent aux habitudes malsaines.', 'Si oppongono alle abitudini poco salutari.', 'Opondo-se aos hábitos não saudáveis.'
FROM stories s WHERE s.title = 'Curb Appeall Story 11';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 6, 'to order, to tidy', 'ordenar', 'ordonner', 'ordinare', 'ordenar', 'They tidy their workout space after using it.', 'Ordenan su espacio de ejercicio después de usarlo.', 'Ils rangent leur espace d''entraînement après l''avoir utilisé.', 'Ordinano il loro spazio di allenamento dopo averlo usato.', 'Organizam seu espaço de treino depois de usá-lo.'
FROM stories s WHERE s.title = 'Curb Appeall Story 11';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 7, 'to seem', 'parecer', 'sembler', 'sembrare', 'parecer', 'They seem very happy when they finish their exercises.', 'Parecen muy felices cuando completan sus ejercicios.', 'Ils semblent très heureux lorsqu''ils terminent leurs exercices.', 'Sembrano molto felici quando finiscono i loro esercizi.', 'Parecem muito felizes quando terminam seus exercícios.'
FROM stories s WHERE s.title = 'Curb Appeall Story 11';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 8, 'to participate', 'participar', 'participer', 'partecipare', 'participar', 'They participate in a marathon to raise funds for health.', 'Participan en un maratón para recaudar fondos para la salud.', 'Ils participent à un marathon pour collecter des fonds pour la santé.', 'Partecipano a una maratona per raccogliere fondi per la salute.', 'Participam de uma maratona para arrecadar fundos para a saúde.'
FROM stories s WHERE s.title = 'Curb Appeall Story 11';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 9, 'to spend (time)', 'pasarlo', 'passer', 'passare', 'passar', 'They spent the afternoon exercising in the park.', 'Pasaron la tarde haciendo ejercicio en el parque.', 'Ils ont passé l''après-midi à faire de l''exercice dans le parc.', 'Hanno trascorso il pomeriggio facendo esercizio nel parco.', 'Passaram a tarde se exercitando no parque.'
FROM stories s WHERE s.title = 'Curb Appeall Story 11';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 10, 'to ask for', 'pedir', 'demander', 'chiedere', 'pedir', 'They ask for advice on nutrition to improve their health.', 'Piden consejos sobre nutrición para mejorar su salud.', 'Ils demandent des conseils sur la nutrition pour améliorer leur santé.', 'Chiedono consigli sulla nutrizione per migliorare la loro salute.', 'Pedem conselhos sobre nutrição para melhorar sua saúde.'
FROM stories s WHERE s.title = 'Curb Appeall Story 11';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 11, 'to lose', 'perder', 'perdre', 'perdere', 'perder', 'They lose energy when they don’t sleep well.', 'Pierden energía cuando no duermen bien.', 'Ils perdent de l''énergie quand ils ne dorment pas bien.', 'Perdono energia quando non dormono bene.', 'Perdem energia quando não dormem bem.'
FROM stories s WHERE s.title = 'Curb Appeall Story 11';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 12, 'to be able to', 'poder', 'pouvoir', 'potere', 'poder', 'They can run faster after training a lot.', 'Pueden correr más rápido después de entrenar mucho.', 'Ils peuvent courir plus vite après avoir beaucoup entraîné.', 'Possono correre più velocemente dopo aver allenato molto.', 'Podem correr mais rápido depois de treinar muito.'
FROM stories s WHERE s.title = 'Curb Appeall Story 11';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 13, 'to put', 'poner', 'mettre', 'mettere', 'colocar', 'They put the focus on nutrition and exercise.', 'Ponen el foco en la nutrición y el ejercicio.', 'Ils mettent l''accent sur la nutrition et l''exercice.', 'Mettono l''accento sulla nutrizione e sull''esercizio.', 'Colocam o foco na nutrição e no exercício.'
FROM stories s WHERE s.title = 'Curb Appeall Story 11';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 14, 'to practice', 'practicar', 'pratiquer', 'praticare', 'praticar', 'They practice yoga every morning.', 'Practican yoga todas las mañanas.', 'Ils pratiquent le yoga chaque matin.', 'Praticano lo yoga ogni mattina.', 'Praticam yoga todas as manhãs.'
FROM stories s WHERE s.title = 'Curb Appeall Story 11';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 15, 'to prefer', 'preferir', 'préférer', 'preferire', 'preferir', 'They prefer a diet rich in vegetables.', 'Prefieren una dieta rica en vegetales.', 'Ils préfèrent un régime riche en légumes.', 'Preferiscono una dieta ricca di verdure.', 'Preferem uma dieta rica em vegetais.'
FROM stories s WHERE s.title = 'Curb Appeall Story 11';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 16, 'to prepare', 'preparar', 'préparer', 'preparare', 'preparar', 'They prepare their food for the week on Sunday.', 'Preparan su comida para la semana el domingo.', 'Ils préparent leur nourriture pour la semaine le dimanche.', 'Prepara il cibo per la settimana la domenica.', 'Preparam a comida para a semana no domingo.'
FROM stories s WHERE s.title = 'Curb Appeall Story 11';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 17, 'to present', 'presentar', 'présenter', 'presentare', 'apresentar', 'They present their project on healthy habits.', 'Presentan su proyecto sobre hábitos saludables.', 'Ils présentent leur projet sur les habitudes saines.', 'Presentano il loro progetto sulle abitudini salutari.', 'Apresentam seu projeto sobre hábitos saudáveis.'
FROM stories s WHERE s.title = 'Curb Appeall Story 11';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 18, 'to lend', 'prestar', 'prêter', 'prestare', 'emprestar', 'They pay attention to their body signals during exercise.', 'Prestan atención a las señales de su cuerpo durante el ejercicio.', 'Ils prêtent attention aux signaux de leur corps pendant l''exercice.', 'Prestano attenzione ai segnali del loro corpo durante l''esercizio.', 'Prestam atenção aos sinais de seus corpos durante o exercício.'
FROM stories s WHERE s.title = 'Curb Appeall Story 11';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 19, 'to prohibit', 'prohibir', 'interdire', 'proibire', 'proibir', 'They prohibit processed foods in their house.', 'Prohíben los alimentos procesados en su casa.', 'Ils interdisent les aliments transformés chez eux.', 'Proibiscono i cibi trasformati in casa.', 'Proíbem os alimentos processados em casa.'
FROM stories s WHERE s.title = 'Curb Appeall Story 11';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 20, 'to promote', 'promover', 'promouvoir', 'promuovere', 'promover', 'They promote physical exercise among their friends.', 'Promueven el ejercicio físico entre sus amigos.', 'Ils promeuvent l''exercice physique parmi leurs amis.', 'Promuovono l''esercizio fisico tra i loro amici.', 'Promovem o exercício físico entre seus amigos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 11';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 21, 'to stay', 'quedarse', 'rester', 'rimanere', 'ficar', 'They stay at home to rest after training.', 'Se quedan en casa para descansar después del entrenamiento.', 'Ils restent à la maison pour se reposer après l''entraînement.', 'Rimangono a casa per riposarsi dopo l''allenamento.', 'Ficam em casa para descansar depois do treino.'
FROM stories s WHERE s.title = 'Curb Appeall Story 11';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 22, 'to complain', 'quejarse', 'se plaindre', 'lamentarsi', 'reclamar', 'They complain when they don’t have time to exercise.', 'Se quejan cuando no tienen tiempo para hacer ejercicio.', 'Ils se plaignent quand ils n''ont pas le temps de s''exercer.', 'Si lamentano quando non hanno tempo per fare esercizio.', 'Reclamam quando não têm tempo para se exercitar.'
FROM stories s WHERE s.title = 'Curb Appeall Story 11';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 23, 'to want', 'querer', 'vouloir', 'volere', 'querer', 'They want to learn more about nutrition to stay healthy.', 'Quieren aprender más sobre nutrición para estar saludables.', 'Ils veulent en savoir plus sur la nutrition pour rester en bonne santé.', 'Vogliono imparare di più sulla nutrizione per rimanere sani.', 'Querem aprender mais sobre nutrição para se manter saudáveis.'
FROM stories s WHERE s.title = 'Curb Appeall Story 11';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 24, 'to recycle', 'reciclar', 'recycler', 'riciclare', 'reciclar', 'They recycle their water bottles after using them.', 'Reciclan sus botellas de agua después de usarlas.', 'Ils recyclent leurs bouteilles d''eau après les avoir utilisées.', 'Riciclano le loro bottiglie d''acqua dopo averle usate.', 'Reciclamos suas garrafas de água depois de usá-las.'
FROM stories s WHERE s.title = 'Curb Appeall Story 11';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 25, 'to remember', 'recordar', 'se souvenir', 'ricordare', 'lembrar', 'They remember that they need to drink water throughout the day.', 'Recuerdan que deben tomar agua durante todo el día.', 'Ils se souviennent qu''ils doivent boire de l''eau toute la journée.', 'Ricordano che devono bere acqua durante tutto il giorno.', 'Lembram que precisam beber água o dia todo.'
FROM stories s WHERE s.title = 'Curb Appeall Story 11';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 26, 'to reduce', 'reducir', 'réduire', 'ridurre', 'reduzir', 'They reduce sugar consumption to improve their health.', 'Reducen el consumo de azúcar para mejorar su salud.', 'Ils réduisent leur consommation de sucre pour améliorer leur santé.', 'Ridurranno il consumo di zucchero per migliorare la loro salute.', 'Reduzem o consumo de açúcar para melhorar sua saúde.'
FROM stories s WHERE s.title = 'Curb Appeall Story 11';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 27, 'to redo', 'rehacer', 'refaire', 'rifare', 'refazer', 'They redo their exercise routine to be healthier.', 'Rehacen su rutina de ejercicio para estar más saludables.', 'Ils refont leur routine d''exercice pour être plus sains.', 'Rifanno la loro routine di esercizi per essere più sani.', 'Refazem sua rotina de exercícios para ficarem mais saudáveis.'
FROM stories s WHERE s.title = 'Curb Appeall Story 11';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 28, 'to laugh', 'reír', 'rire', 'ridere', 'rir', 'They laugh a lot after working out together.', 'Se ríen mucho después de hacer ejercicio juntos.', 'Ils rient beaucoup après avoir fait de l''exercice ensemble.', 'Ridono molto dopo aver fatto esercizio insieme.', 'Riem muito depois de malharem juntos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 11';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 29, 'to relate, to connect', 'relacionar', 'relier', 'relazionare', 'relacionar', 'They relate healthy eating with better energy.', 'Relacionan la alimentación saludable con una mejor energía.', 'Ils relient une alimentation saine à plus d''énergie.', 'Relazionano una dieta sana con più energia.', 'Relacionam alimentação saudável com mais energia.'
FROM stories s WHERE s.title = 'Curb Appeall Story 11';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 30, 'to scold, to quarrel', 'reñir', 'gronder', 'litigare', 'brigar', 'They quarrelled because they didn’t understand the importance of good sleep.', 'Reñían porque no entendían la importancia de dormir bien.', 'Ils se disputaient parce qu''ils ne comprenaient pas l''importance d''un bon sommeil.', 'Litigavano perché non capivano l''importanza di dormire bene.', 'Brigavam porque não entendiam a importância de dormir bem.'
FROM stories s WHERE s.title = 'Curb Appeall Story 11';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 1, 'to resolve, to solve', 'resolver', 'résoudre', 'risolvere', 'resolver', 'They resolve their differences about the best workout plan.', 'Resuelven sus diferencias sobre el mejor plan de ejercicio.', 'Ils résolvent leurs différends sur le meilleur plan d''entraînement.', 'Risolvono le loro differenze sul miglior piano di allenamento.', 'Resolvem suas diferenças sobre o melhor plano de exercício.'
FROM stories s WHERE s.title = 'Curb Appeall Story 12';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 2, 'to break', 'romper', 'casser', 'rompere', 'quebrar', 'They break a rule when they don’t follow their exercise routine.', 'Rompen una regla cuando no siguen su rutina de ejercicio.', 'Ils cassent une règle lorsqu''ils ne suivent pas leur routine d''entraînement.', 'Rompono una regola quando non seguono la loro routine di esercizio.', 'Quebram uma regra quando não seguem sua rotina de exercícios.'
FROM stories s WHERE s.title = 'Curb Appeall Story 12';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 3, 'to know', 'saber', 'savoir', 'sapere', 'saber', 'They know that good hydration is key to their health.', 'Saben que una buena hidratación es clave para su salud.', 'Ils savent qu''une bonne hydratation est essentielle pour leur santé.', 'Sanno che una buona idratazione è fondamentale per la loro salute.', 'Sabem que uma boa hidratação é fundamental para a saúde deles.'
FROM stories s WHERE s.title = 'Curb Appeall Story 12';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 4, 'to go out, to leave', 'salir', 'sortir', 'uscire', 'sair', 'They go out for a walk every afternoon to stay active.', 'Salen a caminar cada tarde para mantenerse activos.', 'Ils sortent se promener chaque après-midi pour rester actifs.', 'Escono a camminare ogni pomeriggio per mantenersi attivi.', 'Saem para caminhar todas as tardes para se manterem ativos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 12';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 5, 'to save', 'salvar', 'sauver', 'salvare', 'salvar', 'They save money to buy healthy food.', 'Salvan dinero para comprar alimentos saludables.', 'Ils économisent de l''argent pour acheter des aliments sains.', 'Salvano soldi per comprare cibo sano.', 'Economizam dinheiro para comprar alimentos saudáveis.'
FROM stories s WHERE s.title = 'Curb Appeall Story 12';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 6, 'to follow', 'seguir', 'suivre', 'seguire', 'seguir', 'They follow their nutrition plan with discipline.', 'Siguen su plan de nutrición con disciplina.', 'Ils suivent leur plan nutritionnel avec discipline.', 'Seguono il loro piano nutrizionale con disciplina.', 'Seguem seu plano de nutrição com disciplina.'
FROM stories s WHERE s.title = 'Curb Appeall Story 12';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 7, 'to feel', 'sentir', 'sentir', 'sentire', 'sentir', 'They feel a lot of energy after a good meal.', 'Sienten mucha energía después de una buena comida.', 'Ils se sentent pleins d''énergie après un bon repas.', 'Si sentono pieni di energia dopo un buon pasto.', 'Sentem muita energia após uma boa refeição.'
FROM stories s WHERE s.title = 'Curb Appeall Story 12';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 8, 'to be (permanent state)', 'ser', 'être', 'essere', 'ser', 'They are happy to learn how to take care of their health.', 'Son felices de aprender a cuidar de su salud.', 'Ils sont heureux d''apprendre à prendre soin de leur santé.', 'Sono felici di imparare a prendersi cura della loro salute.', 'Eles estão felizes por aprender a cuidar da saúde deles.'
FROM stories s WHERE s.title = 'Curb Appeall Story 12';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 9, 'to have', 'tener', 'avoir', 'avere', 'ter', 'They are excited to start their health journey.', 'Tienen muchas ganas de empezar su viaje de salud.', 'Ils sont impatients de commencer leur voyage de santé.', 'Sono entusiasti di iniziare il loro viaggio di salute.', 'Estão animados para começar sua jornada de saúde.'
FROM stories s WHERE s.title = 'Curb Appeall Story 12';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 10, 'to touch', 'tocar', 'toucher', 'toccare', 'tocar', 'They play instruments to relax after training.', 'Tocan instrumentos para relajarse después de entrenar.', 'Ils jouent des instruments pour se détendre après l''entraînement.', 'Suonano strumenti per rilassarsi dopo l''allenamento.', 'Tocam instrumentos para relaxar depois do treino.'
FROM stories s WHERE s.title = 'Curb Appeall Story 12';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 11, 'to take, to drink', 'tomar', 'prendre', 'prendere', 'tomar', 'They drink water before and after exercising.', 'Toman agua antes y después de hacer ejercicio.', 'Ils boivent de l''eau avant et après l''exercice.', 'Beono acqua prima e dopo l''esercizio.', 'Bebem água antes e depois de se exercitar.'
FROM stories s WHERE s.title = 'Curb Appeall Story 12';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 12, 'to work', 'trabajar', 'travailler', 'lavorare', 'trabalhar', 'They work together to maintain their health.', 'Trabajan juntos para mantener su salud.', 'Ils travaillent ensemble pour maintenir leur santé.', 'Lavorano insieme per mantenere la loro salute.', 'Trabalham juntos para manter sua saúde.'
FROM stories s WHERE s.title = 'Curb Appeall Story 12';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 13, 'to bring', 'traer', 'apporter', 'portare', 'trazer', 'They bring healthy snacks to share with their friends.', 'Traen snacks saludables para compartir con sus amigos.', 'Ils apportent des en-cas sains à partager avec leurs amis.', 'Portano snack salutari da condividere con i loro amici.', 'Trazem lanches saudáveis para compartilhar com seus amigos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 12';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 14, 'to use', 'usar', 'utiliser', 'usare', 'usar', 'They use their phones to follow their workouts.', 'Usan sus teléfonos para seguir sus entrenamientos.', 'Ils utilisent leurs téléphones pour suivre leurs entraînements.', 'Usano i loro telefoni per seguire i loro allenamenti.', 'Usam seus telefones para seguir seus treinos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 12';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 15, 'to see', 'ver', 'voir', 'vedere', 'ver', 'They see how important it is to rest and exercise.', 'Ven lo importante que es descansar y hacer ejercicio.', 'Ils voient combien il est important de se reposer et de faire de l''exercice.', 'Vedono quanto è importante riposare e fare esercizio.', 'Veem como é importante descansar e se exercitar.'
FROM stories s WHERE s.title = 'Curb Appeall Story 12';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 16, 'to come', 'venir', 'venir', 'venire', 'vir', 'They come to visit their grandparents to teach them about nutrition.', 'Vienen a visitar a sus abuelos para enseñarles sobre nutrición.', 'Ils viennent rendre visite à leurs grands-parents pour leur enseigner la nutrition.', 'Vengono a visitare i loro nonni per insegnare loro la nutrizione.', 'Vêm visitar seus avós para ensiná-los sobre nutrição.'
FROM stories s WHERE s.title = 'Curb Appeall Story 12';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 17, 'to live', 'vivir', 'vivre', 'vivere', 'viver', 'They live in a city where people exercise every day.', 'Viven en una ciudad donde la gente hace ejercicio cada día.', 'Ils vivent dans une ville où les gens font de l''exercice tous les jours.', 'Vivono in una città dove le persone fanno esercizio ogni giorno.', 'Moram em uma cidade onde as pessoas se exercitam todos os dias.'
FROM stories s WHERE s.title = 'Curb Appeall Story 12';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 18, 'to fly', 'volar', 'voler', 'volare', 'voar', 'They flew through the sky while thinking about their well-being.', 'Volaban por el cielo mientras pensaban en su bienestar.', 'Ils volaient dans le ciel en pensant à leur bien-être.', 'Volavano nel cielo pensando al loro benessere.', 'Voavam pelo céu pensando no bem-estar deles.'
FROM stories s WHERE s.title = 'Curb Appeall Story 12';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 19, 'to vote', 'votar', 'voter', 'votare', 'votar', 'They vote for the positive changes they want to see in their lives.', 'Votan por los cambios positivos que quieren ver en su vida.', 'Ils votent pour les changements positifs qu''ils veulent voir dans leur vie.', 'Votano per i cambiamenti positivi che vogliono vedere nella loro vita.', 'Votam pelas mudanças positivas que querem ver em suas vidas.'
FROM stories s WHERE s.title = 'Curb Appeall Story 12';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 20, 'to lie down', 'yacer', 'gésir', 'giacere', 'jazer', 'They lie down on the grass after exercising.', 'Yacen en el pasto después de hacer ejercicio.', 'Ils sont allongés sur l''herbe après avoir fait de l''exercice.', 'Sono sdraiati sull''erba dopo l''esercizio.', 'Deitam-se na grama depois de se exercitar.'
FROM stories s WHERE s.title = 'Curb Appeall Story 12';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 21, 'to juggle', 'yugar', 'jongler', 'giocolare', 'malabares', 'They juggle with balls while learning to coordinate their body.', 'Yugan con pelotas mientras aprenden a coordinar su cuerpo.', 'Ils jonglent avec des balles tout en apprenant à coordonner leur corps.', 'Giocolano con le palline mentre imparano a coordinare il loro corpo.', 'Malabareiam com bolas enquanto aprendem a coordenar seus corpos.'
FROM stories s WHERE s.title = 'Curb Appeall Story 12';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 22, 'to settle (a dispute)', 'zanjar', 'trancher', 'risolvere', 'resolver', 'They settle their differences about which sports to practice.', 'Zanjan sus diferencias sobre qué deportes practicar.', 'Ils règlent leurs différends sur les sports à pratiquer.', 'Risolvono le loro divergenze su quali sport praticare.', 'Resolvem suas diferenças sobre quais esportes praticar.'
FROM stories s WHERE s.title = 'Curb Appeall Story 12';

INSERT INTO lessons (story_id, lesson_order, english_verb, spanish_verb, french_verb, italian_verb, portuguese_verb, english_sentence, spanish_sentence, french_sentence, italian_sentence, portuguese_sentence)
SELECT s.id, 23, 'to beat (with a stick)', 'zurrar', 'battre', 'picchiare', 'bater', 'They beat the ground with sticks to exercise.', 'Zurran el suelo con palos para hacer ejercicio.', 'Ils battent le sol avec des bâtons pour s''exercer.', 'Picchiano il suolo con i bastoni per fare esercizio.', 'Batem o solo com bastões para se exercitar.'
FROM stories s WHERE s.title = 'Curb Appeall Story 12';

-- Create indexes for performance with large dataset
CREATE INDEX idx_story_lessons_story_order ON story_lessons(story_id, lesson_order);
CREATE INDEX idx_user_progress_mastery ON user_progress(user_id, mastery_level);
CREATE INDEX idx_learning_sessions_recent ON learning_sessions(user_id, session_start);

-- Add constraints for data integrity
ALTER TABLE story_lessons ADD CONSTRAINT unique_story_lesson UNIQUE(story_id, lesson_order);
ALTER TABLE user_progress ADD CONSTRAINT progress_bounds CHECK (mastery_level >= 0 AND mastery_level <= 100);
