CREATE SCHEMA IF NOT EXISTS DND;
DROP TABLE IF EXISTS DND.MAPPING;
CREATE TABLE IF NOT EXISTS DND.MAPPING
(
    MAPPING_ID       INT AUTO_INCREMENT PRIMARY KEY,
    ENGLISH_CATEGORY CHARACTER VARYING not null,
    FRENCH_CATEGORY  CHARACTER VARYING not null,
    IS_CHECK_BOX     BOOLEAN           not null DEFAULT FALSE,
    constraint MAPPING_UNIQUE UNIQUE (ENGLISH_CATEGORY, FRENCH_CATEGORY)
);

-- General
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY) VALUES ('CharacterName', 'CharacterName');
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY) VALUES ('CharacterName', 'CharacterName 2');
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY) VALUES ('CLASS  LEVEL', 'ClassLevel');
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY) VALUES ('BACKGROUND', 'Background');
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY) VALUES ('PLAYER NAME', 'PlayerName');
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY) VALUES ('EXPERIENCE POINTS', 'XP');
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY) VALUES ('RACE', 'Race');

-- Statistiques et jets de sauvegarde
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY) VALUES ('CHamod', 'CHAmod');
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY, IS_CHECK_BOX) VALUES ('StrProf', 'MaitriseForce', true);
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY, IS_CHECK_BOX) VALUES ('DexProf', 'MaitriseDexterite', true);
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY, IS_CHECK_BOX) VALUES ('ConProf', 'MaitriseConstitution', true);
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY, IS_CHECK_BOX) VALUES ('IntProf', 'MaitriseIntelligence', true);
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY, IS_CHECK_BOX) VALUES ('WisProf', 'MaitriseSagesse', true);
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY, IS_CHECK_BOX) VALUES ('ChaProf', 'MaitriseCharisme', true);

-- Competences
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY, IS_CHECK_BOX) VALUES ('AcrobaticsProf', 'MaitriseAcrobaties', true);
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY) VALUES ('Acrobatics', 'Acrobaties');
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY, IS_CHECK_BOX) VALUES ('ArcanaProf', 'MaitriseArcanes', true);
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY) VALUES ('Arcana', 'Arcanes');
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY, IS_CHECK_BOX) VALUES ('AthleticsProf', 'MaitriseAthletisme', true);
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY) VALUES ('Athletics', 'Athletisme');
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY, IS_CHECK_BOX) VALUES ('StealthProf', 'MaitriseDiscretion', true);
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY) VALUES ('Stealth ', 'Discretion');
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY, IS_CHECK_BOX) VALUES ('AnimalHandlingProf', 'MaitriseDressage', true);
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY) VALUES ('Animal', 'Dressage');
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY, IS_CHECK_BOX) VALUES ('SleightOfHandProf', 'MaitriseEscamotage', true);
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY) VALUES ('SleightofHand', 'Escamotage');
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY, IS_CHECK_BOX) VALUES ('HistoryProf', 'MaitriseHistoire', true);
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY) VALUES ('History', 'Histoire');
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY, IS_CHECK_BOX) VALUES ('IntimidationProf', 'MaitriseIntimidation', true);
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY) VALUES ('Intimidation', 'Intimidation');
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY, IS_CHECK_BOX) VALUES ('InvestigationProf', 'MaitriseInvestigation', true);
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY) VALUES ('Investigation', 'Investigation');
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY, IS_CHECK_BOX) VALUES ('MedicineProf', 'MaitriseMedecine', true);
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY) VALUES ('Medicine', 'Medecine');
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY, IS_CHECK_BOX) VALUES ('NatureProf', 'MaitriseNature', true);
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY) VALUES ('Nature', 'Nature');
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY, IS_CHECK_BOX) VALUES ('PerceptionProf', 'MaitrisePerception', true);
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY) VALUES ('Perception', 'Perception');
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY, IS_CHECK_BOX) VALUES ('InsightProf', 'MaitrisePerspicacite', true);
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY) VALUES ('Insight', 'Perspicacite');
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY, IS_CHECK_BOX) VALUES ('PersuasionProf', 'MaitrisePersuasion', true);
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY) VALUES ('Persuasion', 'Persuasion');
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY, IS_CHECK_BOX) VALUES ('ReligionProf', 'MaitriseReligion', true);
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY) VALUES ('Religion', 'Religion');
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY, IS_CHECK_BOX) VALUES ('PerformanceProf', 'MaitriseRepresentation', true);
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY) VALUES ('Performance', 'Representation');
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY, IS_CHECK_BOX) VALUES ('SurvivalProf', 'MaitriseSurvie', true);
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY) VALUES ('Survival', 'Survie');
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY, IS_CHECK_BOX) VALUES ('DeceptionProf', 'MaitriseTromperie', true);
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY) VALUES ('Deception', 'Tromperie');
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY, IS_CHECK_BOX) VALUES ('CustomProf1', 'CustomProf1', true);
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY, IS_CHECK_BOX) VALUES ('CustomProf2', 'CustomProf2', true);
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY, IS_CHECK_BOX) VALUES ('CustomProf3', 'CustomProf3', true);

-- Maitrises
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY) VALUES ('Passive1', 'PerceptionPassive');
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY) VALUES ('Passive2', 'PerspicacitePassive');
INSERT INTO DND.MAPPING (ENGLISH_CATEGORY, FRENCH_CATEGORY) VALUES ('Passive3', 'InvestigationPassive');