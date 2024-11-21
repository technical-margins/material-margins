---
date: 2024-11-21
comments: true
authors:
  - Lilon
slug: ai_advent
categories:
  - Travail
  - Traduction
  - IA
---

# L'IA au travail : une révolution dans l'ordinaire

C'est drôle comme les plus grandes transformations commencent souvent par un simple *"pourrais-tu juste...?"*. Par un matin ordinaire, cette phrase apparemment anodine allait bouleverser ma façon de travailler - jusqu'à me faire repenser mon métier de rédactrice technique.

<!-- more -->

## La plongée dans le chaos

Début 2023. On me confie la tâche d'harmoniser les traductions d'un logiciel professionnel. L'idée est de *"seulement"* reprendre ce qui n'est pas traduit et standardiser le reste. À première vue, rien d'insurmontable. Je ne suis pas là pour tout refaire, juste pour ajuster, compléter, uniformiser. Une broutille, en somme, pas plus difficile que de réarranger quelques livres sur une étagère.

La réalité ? Un fichier brut sans mise en forme, sans contexte. Un patchwork linguistique où français et anglais s'entremêlent comme dans un roman expérimental - parfois cohérent, souvent approximatif, et par moments complètement surréaliste. Certaines traductions semblent passées à la moulinette d'un traducteur automatique des années 2000. Même le sens des mots utilisés dans ma langue maternelle m'échappe.

Le doute s'installe. *Pourquoi moi ?* Ma double casquette de rédactrice technique et linguiste font de moi une candidate logique. Et puis il y a ce précédent, ce stage où j'ai patiemment décortiqué des traductions techniques, armée de persévérance et de rigueur. Mais cette fois-ci, c'est différent. Pas de formation spécifique, pas d'expertise métier, juste une masse de texte aussi accueillante qu'un message d'erreur impromptu. Et, naturellement, un délai plutôt ambitieux, venant se greffer élégamment sur mes responsabilités habituelles.

Les premiers jours, j'adopte l'approche classique : méthodique, ligne par ligne, glossaire en main. Mais sans contexte, chaque champ devient une équation à multiples inconnues. Est-ce le bon terme ? Cette traduction va-t-elle créer des incohérences ailleurs dans le logiciel ? Cette masse de texte met ma patience et mon sens pratique à l'épreuve. Ce n'est plus de la rédaction technique, à peine de la traduction - juste un travail répétitif, laborieux, frustrant. Je me surprends à penser : *Un robot ferait ça tout aussi bien*.

## Une suggestion inattendue

Les tournants décisifs surgissent parfois des conversations les plus ordinaires. En exposant mes difficultés au supérieur qui m'a attribué cette tâche, sa réponse me prend au dépourvu : *"Et si tu demandais à ChatGPT de traduire ça pour toi ?"* Une suggestion lancée presque négligemment, mais loin de se vouloir une plaisanterie. Il voyait véritablement dans ce chatbot dont tout le monde parlait une solution potentielle.

De mon côté, je restais sceptique. *Quoi*, le dernier chatbot à la mode ? Pour moi, c'était un gadget, un outil amusant, mais sûrement pas adapté à une mission professionnelle. Et pourtant, je n'avais rien à perdre. Alors, j'ai décidé de tester.

Les premiers essais commencent simplement, en lui demandant de traduire quelques champs. Le résultat ? Mitigé. Certaines phrases sont précises, d'autres complètement hors sujet. Et pour l'harmonisation, le fameux chatbot ne comprend évidemment pas toujours ce qu'il faut conserver ou reformuler. Ce n'est clairement pas l'assistant idéal que j'espérais. Pourtant, quelque chose me frappe : ce n'est pas parfait, mais c'est un point de départ. Et une idée commence à germer.

ChatGPT ne serait pas mon traducteur miracle, mais pourquoi pas un outil pour automatiser les étapes les plus laborieuses ? Identifier les champs mal traduits, repérer ceux à homogénéiser... Ce qui me manquait, c'était un algorithme et surtout son application. Et soudain, je me suis mise à pianoter : *"Peux-tu coder ça pour moi ?"*

![Machine à écrire avec IA](https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/09c917d0-f5ca-4b29-a706-5e3ed5489e13/dilk84k-5ac52eb8-b77c-4daa-9288-d229b512d53e.jpg/v1/fill/w_1280,h_962,q_75,strp/evolving_creativity__an_ai_doodle_by_li__lon_dilk84k-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9OTYyIiwicGF0aCI6IlwvZlwvMDljOTE3ZDAtZjVjYS00YjI5LWE3MDYtNWUzZWQ1NDg5ZTEzXC9kaWxrODRrLTVhYzUyZWI4LWI3N2MtNGRhYS05Mjg4LWQyMjliNTEyZDUzZS5qcGciLCJ3aWR0aCI6Ijw9MTI4MCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.K_bY8dDZNEFmymZKPxri6ghFU9Ya1zMJ_ULv1IMr6MM)

## Un partenariat improvisé

Je formule ma demande avec précision. Je sais exactement ce dont j'ai besoin : un script capable d'identifier les champs en français, de les comparer au glossaire existant, et de proposer des traductions via une API comme DeepL. Le fait que je ne maîtrise pas les langages de programmation n'est pas un obstacle - mon objectif est clair.

Les premières réponses de ChatGPT sont prometteuses, mais imparfaites. Entre les erreurs techniques et les concepts à approfondir, je passe mes weekends à explorer des forums, à comprendre des concepts de programmation, à affiner mes requêtes. Mais progressivement, comme une photo qui se développe, le script prend forme. Ce n'est pas un chef-d'œuvre d'élégance, mais il fait exactement ce dont j'ai besoin.

## Un tournant dans mon quotidien

Et soudain, la magie opère. Ce qui ressemblait à une montagne de travail devient une dune soufflée par les vents. Mon script, cette création née d'une collaboration inattendue avec l'IA, transforme des semaines de travail en quelques heures d'exécution. Je me retrouve avec du temps - cette ressource si précieuse - et surtout avec une révélation : si ça fonctionne pour la traduction, pourquoi pas pour d'autres aspects de mon travail ?

L'expérimentation devient une seconde nature. L'IA devient un outil pour reformuler des passages complexes, structurer des idées, explorer des concepts techniques. Ce n'est plus juste un assistant de traduction, c'est devenu un amplificateur de possibilités. Chaque nouvelle utilisation ouvre la voie à d'autres applications potentielles.

Le véritable changement n'est pas dans l'efficacité retrouvée. Il est dans cette sensation d'avoir repoussé mes limites. Moi qui considérais la programmation comme un territoire étranger, je me surprends à concevoir des solutions d'automatisation, à imaginer des workflows plus efficaces. C'est comme si j'avais découvert une nouvelle dimension de mon métier.

## Les nouveaux horizons de mon métier

Cette expérience m'a appris que collaborer avec l'IA demande une approche particulière. Ce n'est pas tant déléguer que dialoguer - il faut apprendre à poser les bonnes questions, à interpréter les réponses, à affiner les résultats. C'est un équilibre subtil entre directive claire et expérimentation.

Le plus fascinant, c'est que cette relation évolue constamment. Chaque jour apporte son lot de découvertes et de possibilités. Mon travail n'est pas devenu plus simple - il s'est transformé. Les tâches répétitives s'automatisent, laissant place à des défis plus complexes, plus créatifs. Là où je passais des heures à harmoniser des traductions, je peux maintenant me concentrer sur l'amélioration de la documentation, sur la cohérence globale, sur l'expérience utilisateur.

Bien sûr, il y a ces moments de doute qui surgissent au détour d'un échange qui me rappelle que je dialogue avec une machine. Et si cet outil devenait trop performant ? Si quelqu'un avec des compétences techniques plus avancées automatisait l'ensemble de mes tâches ? Pour l'instant, la complexité et la spécificité de notre documentation me protègent. Mais je sais que cette situation n'est pas éternelle.

C'est là tout le paradoxe. L'IA peut nous libérer des tâches répétitives, mais elle ne rend pas le travail plus facile : elle crée de nouvelles attentes, de nouveaux horizons à explorer. Plus je peux en faire grâce à elle, plus on attend de moi. Ce n'est pas l'IA qui rend mes journées moins chargées ; elle les transforme, les enrichit, mais les prolonge aussi.

L'IA est un instrument incroyable, mais elle exige que nous restions en mouvement, que nous acceptions de continuer à apprendre et à nous adapter. Comme on l'entend souvent : "Ce n'est pas l'IA qui prendra votre poste, mais quelqu'un qui sait l'utiliser..." Et j'ajouterais "... mieux que vous." Cette réalité, qui a sa part d'angoisse et de vertige, est devenue une source de motivation.

Car au final, l'IA reste un outil qui dépend de notre capacité à l'orienter, à l'alimenter, à donner du sens à ses résultats. Elle amplifie nos compétences mais ne remplace pas notre jugement, notre compréhension du contexte, notre capacité à voir au-delà des données brutes.

Mon métier évolue, se transforme, s'enrichit de nouvelles dimensions. Dans ce paysage en mutation, l'adaptabilité devient aussi importante que l'expertise technique. Et peut-être que la prochaine fois qu'on me confiera un projet apparemment simple, je saurai que c'est une nouvelle opportunité d'innovation qui se présente.
