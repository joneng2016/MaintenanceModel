-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;

DROP TABLE `condition_sanction`;


DROP TABLE `sanction`;


DROP TABLE `plan_goal`;


DROP TABLE `long_consequence`;


DROP TABLE `condition_relation`;


DROP TABLE `relation_role_tool`;


DROP TABLE `goal_mission`;


DROP TABLE `entity_fatality`;


DROP TABLE `plan`;


DROP TABLE `role_allocation`;


DROP TABLE `change_goal`;


DROP TABLE `relation_artefact_artefact`;


DROP TABLE `object`;


DROP TABLE `tool`;


DROP TABLE `link`;


DROP TABLE `mission`;


DROP TABLE `goal`;


DROP TABLE `compatibility`;


DROP TABLE `heritage`;


DROP TABLE `group_safety_risk`;


DROP TABLE `short_consequence`;


DROP TABLE `condition_in_that_instant`;


DROP TABLE `condition_entity`;


DROP TABLE `agent`;


DROP TABLE `artefact`;


DROP TABLE `role`;


DROP TABLE `group`;


DROP TABLE `schema`;


DROP TABLE `risk`;


DROP TABLE `group_safety`;


DROP TABLE `condition`;


DROP TABLE `entity`;



-- ************************************** `role`

CREATE TABLE `role`
(
 `name` VARCHAR(45) NOT NULL ,
 `id`   INT unsigned NOT NULL AUTO_INCREMENT ,

PRIMARY KEY (`id`)
);






-- ************************************** `group`

CREATE TABLE `group`
(
 `id`   INT unsigned NOT NULL AUTO_INCREMENT ,
 `name` VARCHAR(45) NOT NULL ,

PRIMARY KEY (`id`)
);






-- ************************************** `schema`

CREATE TABLE `schema`
(
 `id`   INT unsigned NOT NULL AUTO_INCREMENT ,
 `name` VARCHAR(45) NOT NULL ,

PRIMARY KEY (`id`)
);






-- ************************************** `risk`

CREATE TABLE `risk`
(
 `id`   INT unsigned NOT NULL AUTO_INCREMENT ,
 `name` VARCHAR(45) NOT NULL ,

PRIMARY KEY (`id`)
);






-- ************************************** `group_safety`

CREATE TABLE `group_safety`
(
 `id`          INT unsigned NOT NULL AUTO_INCREMENT ,
 `description` VARCHAR(255) NOT NULL ,
 `type`        ENUM('GROUP_GREEN','GROUP_RED','GROUP_BROWN','GROUP_YELLOW','GROUP_BLUE') NOT NULL ,

PRIMARY KEY (`id`)
);






-- ************************************** `condition`

CREATE TABLE `condition`
(
 `id`   INT unsigned NOT NULL AUTO_INCREMENT ,
 `name` VARCHAR(45) NOT NULL ,

PRIMARY KEY (`id`)
);






-- ************************************** `entity`

CREATE TABLE `entity`
(
 `id`   INT unsigned NOT NULL AUTO_INCREMENT ,
 `name` VARCHAR(45) NOT NULL ,

PRIMARY KEY (`id`)
);






-- ************************************** `link`

CREATE TABLE `link`
(
 `id`          INT unsigned NOT NULL AUTO_INCREMENT ,
 `role_one_id` INT unsigned NOT NULL ,
 `role_two_id` INT unsigned NOT NULL ,
 `group_id`    INT unsigned NOT NULL ,

PRIMARY KEY (`id`),
KEY `fkIdx_172` (`role_two_id`),
CONSTRAINT `FK_172` FOREIGN KEY `fkIdx_172` (`role_two_id`) REFERENCES `role` (`id`),
KEY `fkIdx_175` (`group_id`),
CONSTRAINT `FK_175` FOREIGN KEY `fkIdx_175` (`group_id`) REFERENCES `group` (`id`),
KEY `fkIdx_283` (`role_one_id`),
CONSTRAINT `FK_283` FOREIGN KEY `fkIdx_283` (`role_one_id`) REFERENCES `role` (`id`)
);






-- ************************************** `mission`

CREATE TABLE `mission`
(
 `id`        INT unsigned NOT NULL AUTO_INCREMENT ,
 `name`      VARCHAR(45) NOT NULL ,
 `schema_id` INT unsigned NOT NULL ,

PRIMARY KEY (`id`),
KEY `fkIdx_257` (`schema_id`),
CONSTRAINT `FK_257` FOREIGN KEY `fkIdx_257` (`schema_id`) REFERENCES `schema` (`id`)
);






-- ************************************** `goal`

CREATE TABLE `goal`
(
 `id`            INT unsigned NOT NULL AUTO_INCREMENT ,
 `description`   TEXT NOT NULL ,
 `probability`   INT NOT NULL ,
 `percentual_ok` INT NOT NULL ,
 `condition_id`  INT unsigned NOT NULL ,

PRIMARY KEY (`id`),
KEY `fkIdx_209` (`condition_id`),
CONSTRAINT `FK_209` FOREIGN KEY `fkIdx_209` (`condition_id`) REFERENCES `condition` (`id`)
);






-- ************************************** `compatibility`

CREATE TABLE `compatibility`
(
 `id`          INT unsigned NOT NULL AUTO_INCREMENT ,
 `role_one_id` INT unsigned NOT NULL ,
 `role_two_id` INT unsigned NOT NULL ,
 `group_id`    INT unsigned NOT NULL ,

PRIMARY KEY (`id`),
KEY `fkIdx_195` (`role_one_id`),
CONSTRAINT `FK_195` FOREIGN KEY `fkIdx_195` (`role_one_id`) REFERENCES `role` (`id`),
KEY `fkIdx_198` (`role_two_id`),
CONSTRAINT `FK_198` FOREIGN KEY `fkIdx_198` (`role_two_id`) REFERENCES `role` (`id`),
KEY `fkIdx_201` (`group_id`),
CONSTRAINT `FK_201` FOREIGN KEY `fkIdx_201` (`group_id`) REFERENCES `group` (`id`)
);






-- ************************************** `heritage`

CREATE TABLE `heritage`
(
 `id`          INT unsigned NOT NULL AUTO_INCREMENT ,
 `role_one_id` INT unsigned NOT NULL ,
 `role_two_id` INT unsigned NOT NULL ,
 `group_id`    INT unsigned NOT NULL ,

PRIMARY KEY (`id`),
KEY `fkIdx_181` (`role_one_id`),
CONSTRAINT `FK_181` FOREIGN KEY `fkIdx_181` (`role_one_id`) REFERENCES `role` (`id`),
KEY `fkIdx_186` (`role_two_id`),
CONSTRAINT `FK_186` FOREIGN KEY `fkIdx_186` (`role_two_id`) REFERENCES `role` (`id`),
KEY `fkIdx_189` (`group_id`),
CONSTRAINT `FK_189` FOREIGN KEY `fkIdx_189` (`group_id`) REFERENCES `group` (`id`)
);






-- ************************************** `group_safety_risk`

CREATE TABLE `group_safety_risk`
(
 `id`           INT unsigned NOT NULL AUTO_INCREMENT ,
 `risk_id`      INT unsigned NOT NULL ,
 `group_safety_id` INT unsigned NOT NULL ,

PRIMARY KEY (`id`),
KEY `fkIdx_1720` (`risk_id`),
CONSTRAINT `FK_1720` FOREIGN KEY `fkIdx_1720` (`risk_id`) REFERENCES `risk` (`id`),
KEY `fkIdx_2410` (`group_safety_id`),
CONSTRAINT `FK_2410` FOREIGN KEY `fkIdx_2410` (`group_safety_id`) REFERENCES `group_safety` (`id`)
);






-- ************************************** `short_consequence`

CREATE TABLE `short_consequence`
(
 `id`                 INT unsigned NOT NULL AUTO_INCREMENT ,
 `fatality_condition` INT NOT NULL ,
 `risk_id`            INT unsigned NOT NULL ,

PRIMARY KEY (`id`),
KEY `fkIdx_176` (`risk_id`),
CONSTRAINT `FK_176` FOREIGN KEY `fkIdx_176` (`risk_id`) REFERENCES `risk` (`id`)
);






-- ************************************** `condition_in_that_instant`

CREATE TABLE `condition_in_that_instant`
(
 `id`           INT unsigned NOT NULL AUTO_INCREMENT ,
 `condition_id` INT unsigned NOT NULL ,

PRIMARY KEY (`id`),
KEY `fkIdx_102` (`condition_id`),
CONSTRAINT `FK_102` FOREIGN KEY `fkIdx_102` (`condition_id`) REFERENCES `condition` (`id`)
);






-- ************************************** `condition_entity`

CREATE TABLE `condition_entity`
(
 `id`           INT unsigned NOT NULL AUTO_INCREMENT ,
 `entity_id`    INT unsigned NOT NULL ,
 `condition_id` INT unsigned NOT NULL ,

PRIMARY KEY (`id`),
KEY `fkIdx_89` (`entity_id`),
CONSTRAINT `FK_89` FOREIGN KEY `fkIdx_89` (`entity_id`) REFERENCES `entity` (`id`),
KEY `fkIdx_93` (`condition_id`),
CONSTRAINT `FK_93` FOREIGN KEY `fkIdx_93` (`condition_id`) REFERENCES `condition` (`id`)
);






-- ************************************** `agent`

CREATE TABLE `agent`
(
 `id`        INT unsigned NOT NULL AUTO_INCREMENT ,
 `entity_id` INT unsigned NOT NULL ,
 `col_214`   INT NOT NULL ,

PRIMARY KEY (`id`),
KEY `fkIdx_15` (`entity_id`),
CONSTRAINT `FK_15` FOREIGN KEY `fkIdx_15` (`entity_id`) REFERENCES `entity` (`id`)
);






-- ************************************** `artefact`

CREATE TABLE `artefact`
(
 `id`        INT unsigned NOT NULL AUTO_INCREMENT ,
 `entity_id` INT unsigned NOT NULL ,

PRIMARY KEY (`id`),
KEY `fkIdx_9` (`entity_id`),
CONSTRAINT `FK_9` FOREIGN KEY `fkIdx_9` (`entity_id`) REFERENCES `entity` (`id`)
);






-- ************************************** `goal_mission`

CREATE TABLE `goal_mission`
(
 `id`         INT unsigned NOT NULL AUTO_INCREMENT ,
 `goal_id`    INT unsigned NOT NULL ,
 `mission_id` INT unsigned NOT NULL ,

PRIMARY KEY (`id`),
KEY `fkIdx_245` (`goal_id`),
CONSTRAINT `FK_245` FOREIGN KEY `fkIdx_245` (`goal_id`) REFERENCES `goal` (`id`),
KEY `fkIdx_248` (`mission_id`),
CONSTRAINT `FK_248` FOREIGN KEY `fkIdx_248` (`mission_id`) REFERENCES `mission` (`id`)
);






-- ************************************** `entity_fatality`

CREATE TABLE `entity_fatality`
(
 `id`                   INT unsigned NOT NULL AUTO_INCREMENT ,
 `short_consequence_id` INT unsigned NOT NULL ,
 `entity_id`            INT unsigned NOT NULL ,
 `type`                 ENUM('CAUSER','SUFFERER') NOT NULL ,

PRIMARY KEY (`id`),
KEY `fkIdx_234` (`short_consequence_id`),
CONSTRAINT `FK_234` FOREIGN KEY `fkIdx_234` (`short_consequence_id`) REFERENCES `short_consequence` (`id`),
KEY `fkIdx_237` (`entity_id`),
CONSTRAINT `FK_237` FOREIGN KEY `fkIdx_237` (`entity_id`) REFERENCES `entity` (`id`)
);






-- ************************************** `plan`

CREATE TABLE `plan`
(
 `id`            INT unsigned NOT NULL AUTO_INCREMENT ,
 `name_plan`     VARCHAR(255) NOT NULL ,
 `type`          ENUM('SEQUENCE','PARALLEL','CHOICE') NOT NULL ,
 `goal_super_id` INT unsigned NOT NULL ,

PRIMARY KEY (`id`),
KEY `fkIdx_232` (`goal_super_id`),
CONSTRAINT `FK_232` FOREIGN KEY `fkIdx_232` (`goal_super_id`) REFERENCES `goal` (`id`)
);






-- ************************************** `role_allocation`

CREATE TABLE `role_allocation`
(
 `id`       INT unsigned NOT NULL AUTO_INCREMENT ,
 `role_id`  INT unsigned NOT NULL ,
 `agent_id` INT unsigned NOT NULL ,

PRIMARY KEY (`id`),
KEY `fkIdx_208` (`role_id`),
CONSTRAINT `FK_208` FOREIGN KEY `fkIdx_208` (`role_id`) REFERENCES `role` (`id`),
KEY `fkIdx_215` (`agent_id`),
CONSTRAINT `FK_215` FOREIGN KEY `fkIdx_215` (`agent_id`) REFERENCES `agent` (`id`)
);






-- ************************************** `change_goal`

CREATE TABLE `change_goal`
(
 `id`          INT unsigned NOT NULL AUTO_INCREMENT ,
 `probability` INT NOT NULL ,
 `goal_id`     INT unsigned NOT NULL ,

PRIMARY KEY (`id`),
KEY `fkIdx_203` (`goal_id`),
CONSTRAINT `FK_203` FOREIGN KEY `fkIdx_203` (`goal_id`) REFERENCES `goal` (`id`)
);






-- ************************************** `relation_artefact_artefact`

CREATE TABLE `relation_artefact_artefact`
(
 `id`                INT unsigned NOT NULL AUTO_INCREMENT ,
 `type_of_relation`  VARCHAR(45) NOT NULL ,
 `artefact_first_id` INT unsigned NOT NULL ,
 `artefact_two_id`   INT unsigned NOT NULL ,

PRIMARY KEY (`id`),
KEY `fkIdx_105` (`artefact_first_id`),
CONSTRAINT `FK_105` FOREIGN KEY `fkIdx_105` (`artefact_first_id`) REFERENCES `artefact` (`id`),
KEY `fkIdx_108` (`artefact_two_id`),
CONSTRAINT `FK_108` FOREIGN KEY `fkIdx_108` (`artefact_two_id`) REFERENCES `artefact` (`id`)
);






-- ************************************** `object`

CREATE TABLE `object`
(
 `id`          INT unsigned NOT NULL AUTO_INCREMENT ,
 `artefact_id` INT unsigned NOT NULL ,

PRIMARY KEY (`id`),
KEY `fkIdx_30` (`artefact_id`),
CONSTRAINT `FK_30` FOREIGN KEY `fkIdx_30` (`artefact_id`) REFERENCES `artefact` (`id`)
);






-- ************************************** `tool`

CREATE TABLE `tool`
(
 `id`          INT unsigned NOT NULL AUTO_INCREMENT ,
 `artefact_id` INT unsigned NOT NULL ,

PRIMARY KEY (`id`),
KEY `fkIdx_21` (`artefact_id`),
CONSTRAINT `FK_21` FOREIGN KEY `fkIdx_21` (`artefact_id`) REFERENCES `artefact` (`id`)
);






-- ************************************** `plan_goal`

CREATE TABLE `plan_goal`
(
 `id`          INT unsigned NOT NULL AUTO_INCREMENT ,
 `goal_sub_id` INT unsigned NOT NULL ,
 `plan_id`     INT unsigned NOT NULL ,
 `id_1`        INT unsigned NOT NULL ,

PRIMARY KEY (`id`),
KEY `fkIdx_221` (`id_1`),
CONSTRAINT `FK_221` FOREIGN KEY `fkIdx_221` (`id_1`) REFERENCES `goal` (`id`),
KEY `fkIdx_224` (`goal_sub_id`),
CONSTRAINT `FK_224` FOREIGN KEY `fkIdx_224` (`goal_sub_id`) REFERENCES `goal` (`id`),
KEY `fkIdx_227` (`plan_id`),
CONSTRAINT `FK_227` FOREIGN KEY `fkIdx_227` (`plan_id`) REFERENCES `plan` (`id`)
);






-- ************************************** `long_consequence`

CREATE TABLE `long_consequence`
(
 `id`          INT unsigned NOT NULL AUTO_INCREMENT ,
 `change_goal` INT unsigned NOT NULL ,

PRIMARY KEY (`id`),
KEY `fkIdx_197` (`change_goal`),
CONSTRAINT `FK_197` FOREIGN KEY `fkIdx_197` (`change_goal`) REFERENCES `change_goal` (`id`)
);






-- ************************************** `condition_relation`

CREATE TABLE `condition_relation`
(
 `id`           INT unsigned NOT NULL AUTO_INCREMENT ,
 `condition_id` INT unsigned NOT NULL ,
 `relation_id`  INT unsigned NOT NULL ,

PRIMARY KEY (`id`),
KEY `fkIdx_114` (`condition_id`),
CONSTRAINT `FK_114` FOREIGN KEY `fkIdx_114` (`condition_id`) REFERENCES `condition` (`id`),
KEY `fkIdx_117` (`relation_id`),
CONSTRAINT `FK_117` FOREIGN KEY `fkIdx_117` (`relation_id`) REFERENCES `relation_artefact_artefact` (`id`)
);






-- ************************************** `relation_role_tool`

CREATE TABLE `relation_role_tool`
(
 `id`               INT unsigned zerofill NOT NULL AUTO_INCREMENT ,
 `tool_id`          INT unsigned NOT NULL ,
 `role_id`          INT unsigned NOT NULL ,

PRIMARY KEY (`id`),
KEY `fkIdx_2210` (`tool_id`),
CONSTRAINT `FK_2210` FOREIGN KEY `fkIdx_2210` (`tool_id`) REFERENCES `tool` (`id`),
KEY `fkIdx_2240` (`role_id`),
CONSTRAINT `FK_2240` FOREIGN KEY `fkIdx_2240` (`role_id`) REFERENCES `role` (`id`)
);






-- ************************************** `sanction`

CREATE TABLE `sanction`
(
 `id`                   INT unsigned NOT NULL AUTO_INCREMENT ,
 `short_consequence_id` INT unsigned ,
 `long_consequence_id`  INT unsigned ,

PRIMARY KEY (`id`),
KEY `fkIdx_163` (`short_consequence_id`),
CONSTRAINT `FK_163` FOREIGN KEY `fkIdx_163` (`short_consequence_id`) REFERENCES `short_consequence` (`id`),
KEY `fkIdx_190` (`long_consequence_id`),
CONSTRAINT `FK_190` FOREIGN KEY `fkIdx_190` (`long_consequence_id`) REFERENCES `long_consequence` (`id`)
);






-- ************************************** `condition_sanction`

CREATE TABLE `condition_sanction`
(
 `id`           INT unsigned NOT NULL AUTO_INCREMENT ,
 `condition_id` INT unsigned NOT NULL ,
 `sanction_id`  INT unsigned NOT NULL ,

PRIMARY KEY (`id`),
KEY `fkIdx_150` (`condition_id`),
CONSTRAINT `FK_150` FOREIGN KEY `fkIdx_150` (`condition_id`) REFERENCES `condition` (`id`),
KEY `fkIdx_184` (`sanction_id`),
CONSTRAINT `FK_184` FOREIGN KEY `fkIdx_184` (`sanction_id`) REFERENCES `sanction` (`id`)
);






