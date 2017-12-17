SET IDENTITY_INSERT [TypePlanCadre] ON
GO
INSERT [dbo].[TypePlanCadre] ([idType], [nom]) VALUES (1, 'Spécifique')
INSERT [dbo].[TypePlanCadre] ([idType], [nom]) VALUES (2, 'Générale')
INSERT [dbo].[TypePlanCadre] ([idType], [nom]) VALUES (3, 'Contributif')
SET IDENTITY_INSERT [TypePlanCadre] OFF
GO

SET IDENTITY_INSERT [PlanCadre] ON
GO
INSERT [dbo].[PlanCadre] ([idPlanCadre], [numeroCours], [titreCours], [nbHeureTheorie], [nbHeurePratique], [nbHeureDevoir], [PrealableAbs], [PrealableRel], [indicationPedago], [environnementPhys], [ressource], [idProgramme], [idType]) VALUES (1, N'420-JAC-JQ', N'Informatique et technologie', 1, 2, 1, NULL, NULL,
N'Ce cours de première session permettra à l''élève de se familiariser avec le monde de l’informatique et aux fonctions de travail.  Plus précisément, il vise à rendre l''élève capable de faire un choix éclairé quant à l''orientation de sa carrière.  De plus, il permettra un tour d''horizon des outils de base nécessaires au travail de l''élève en informatique.',
N'Laboratoire d''exploitation (un poste de travail par élève).
Branchement Internet.
Suite bureautique.',
N'Sites Web :
• http://www.technocompetences.qc.ca
• http://www.directioninformatique.com
• http://www.w3schools.com
• http://siteduzero.com', 1, 1)
GO
SET IDENTITY_INSERT [PlanCadre] OFF
GO
SET IDENTITY_INSERT [PlanCadreElement] ON
GO
INSERT [dbo].[PlanCadreElement] ([idPlanCadreElement], [idPlanCadre], [idElement],[elementsConnaissance],[activiteApprentissage]) VALUES (1, 1, 1,
N'Vision d’ensemble du monde de l’informatique :
'+CHAR(9)+'• place actuelle de l’informatique dans la socièté;
'+CHAR(9)+'• influences sur les entreprises;
'+CHAR(9)+'• influences sur les gens;
'+CHAR(9)+'• évolution technologique (rappel historique, situation actuelle, tendance).

Type d''emplois :
'+CHAR(9)+'•  analyse;
'+CHAR(9)+'•  programmation;
'+CHAR(9)+'•  gestion de réseau;
'+CHAR(9)+'•  soutien technique;
'+CHAR(9)+'•  autres profils d''emplois.

Particuliarités de chaque type d''emploi :
'+CHAR(9)+'•  possibilités et conditions d''exercices;
'+CHAR(9)+'•  pratique professionnel;
'+CHAR(9)+'•  rôles;
'+CHAR(9)+'•  responsabilités;
'+CHAR(9)+'•  organisation de travail.

Catégories d''entreprises :
'+CHAR(9)+'•  grande entreprise;
'+CHAR(9)+'•  PME;
'+CHAR(9)+'•  firmes de service.

Environnement informatique sur le marché.
Environnement informatique au Cégep de Jonquière.',
N'• À partir de sources identifiées en classe, lire sur es fonctions de travail pour en identifier les différentes conditions d''exercices.
• Assister à des conférences et visiter des entreprises du domaine de l''informatique')
GO
INSERT [dbo].[PlanCadreElement] ([idPlanCadreElement], [idPlanCadre], [idElement]) VALUES (2, 1, 2)
GO
INSERT [dbo].[PlanCadreElement] ([idPlanCadreElement], [idPlanCadre], [idElement]) VALUES (3, 1, 3)
GO
INSERT [dbo].[PlanCadreElement] ([idPlanCadreElement], [idPlanCadre], [idElement]) VALUES (4, 1, 4)
GO
INSERT [dbo].[PlanCadreElement] ([idPlanCadreElement], [idPlanCadre], [idElement]) VALUES (5, 1, 53)
GO
INSERT [dbo].[PlanCadreElement] ([idPlanCadreElement], [idPlanCadre], [idElement]) VALUES (6, 1, 54)
GO
INSERT [dbo].[PlanCadreElement] ([idPlanCadreElement], [idPlanCadre], [idElement]) VALUES (7, 1, 55)
GO
INSERT [dbo].[PlanCadreElement] ([idPlanCadreElement], [idPlanCadre], [idElement]) VALUES (8, 1, 56)
GO
INSERT [dbo].[PlanCadreElement] ([idPlanCadreElement], [idPlanCadre], [idElement]) VALUES (9, 1, 57)
GO
INSERT [dbo].[PlanCadreElement] ([idPlanCadreElement], [idPlanCadre], [idElement]) VALUES (10, 1, 58)
GO
SET IDENTITY_INSERT [PlanCadreElement] OFF
GO
SET IDENTITY_INSERT [PlanCadreEnonce] ON
GO
INSERT [dbo].[PlanCadreEnonce] ([idPlanCadreEnonce], [idPlanCadre], [idCompetence], [ponderationEnHeure]) VALUES (1, 1, 1, 20)
GO
INSERT [dbo].[PlanCadreEnonce] ([idPlanCadreEnonce], [idPlanCadre], [idCompetence], [ponderationEnHeure]) VALUES (2, 1, 12, 15)
GO
SET IDENTITY_INSERT [PlanCadreEnonce] OFF
GO