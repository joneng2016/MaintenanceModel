4perimission(ROLE,MISSION):-obligation(ROLE,MISSION).
isClass(MISSION):-obligation(ROLE,MISSION).

hasMission(GOAL,MISSION):-hasNameConditionMission(MISSION,NAME),hasName(CONDITION,NAME),hasCondition(GOAL,CONDITION).


hasTool(ROLE,ARTEFACTA,GOAL,NAME):- perimission(ROLE,MISSION),hasMission(GOAL,MISSION),hasCondition(GOAL,CONDITION),hasRelationArtefact(ARTEFACTA,ARTEFACTB,RELATION),hasConditionRel(NAME,RELATION),isInstanceOf(ARTEFACTA,tool),hasName(CONDITION,NAME).
hasTool(ROLE,ARTEFACTB,GOAL,NAME):- perimission(ROLE,MISSION),hasMission(GOAL,MISSION),hasCondition(GOAL,CONDITION),hasRelationArtefact(ARTEFACTA,ARTEFACTB,RELATION),hasConditionRel(NAME,RELATION),isInstanceOf(ARTEFACTB,tool).

inGoal(ROLE,GOAL) :- obligation(ROLE,MISSION),hasMission(GOAL,MISSION),hasCondition(GOAL,CONDITION),hasRelationArtefact(ARTEFACTA,ARTEFACTB,RELATION),hasConditionRel(NAME,RELATION),hasName(CONDITION,NAME),isInstanceOf(ARTEFACTA,tool).


existConditionSanction(NAME,SANCTION):- hasSanction(GOAL,SANCTION),hasCondition(GOAL,CONDITION),hasName(CONDITION,NAME).


existGoalWithNewProbability(GOAL,NEWPROBABILITY):-hasChangeGoal(LONG,NAME,NEWPROBABILITY),hasName(CONDITION,NAME),hasCondition(GOAL,CONDITION).
hasSanction(GOAL,SANCTION):-relationCondition(NAME,SANCTION),hasCondition(GOAL,CONDITION),hasName(CONDITION,NAME).
hasShortConsequence(SANCTION,SHORT):-thisShortConsequenceStopAllGoal(SHORT).


isClass(CLASS):-isInstanceOf(CLASS,INSTANCE). 
exist(RELATION):-hasRelationArtefact(ARTEFACTA,ARTEFACTB,RELATION).
isClass(RELATION):-exist(RELATION).
isRelationArtefactArtefact(ARTEFACTA,ARTEFACTB):-hasRelationArtefact(ARTEFACT0A,ARTEFACT0B,RELATION).




isClass(agent).
isClass(artefact).
isClass(change_goal).
isClass(compatibility).
isClass(condition).
isClass(condition_relation_artefact_artefact).
isClass(condition_relation_role_tool).
isClass(condition_sanction).
isClass(condition_without_relation_entity).
isClass(deontic_relation).
isClass(entity).
isClass(entity_fatality).
isClass(goal).
isClass(goal_mission).
isClass(group).
isClass(group_role).
isClass(group_safety).
isClass(group_safety_risk).
isClass(heritage).
isClass(link).
isClass(long_consequence).
isClass(mission).
isClass(object).
isClass(plan).
isClass(plan_goal).
isClass(relation_artefact_artefact).
isClass(relation_role_tool).
isClass(risk).
isClass(role).
isClass(role_allocation).
isClass(sanction).
isClass(schema).
isClass(short_consequence).
isClass(tool).
isClass(trigger_sanction).


extend(agent,entity).
extend(artefact,entity).
extend(tool,artefact).
extend(obect,artefact).


isInstanceOf(agente01,entity).
isInstanceOf(agente02,entity).
isInstanceOf(agente03,entity).
isInstanceOf(agente04,entity).
isInstanceOf(agente05,entity).
isInstanceOf(agente06,entity).
isInstanceOf(agente07,entity).
isInstanceOf(agente08,entity).
isInstanceOf(agente09,entity).
isInstanceOf(cone,entity).
isInstanceOf(fita,entity).
isInstanceOf(carretilha,entity).
isInstanceOf(corda,entity).
isInstanceOf(bastao_universal,entity).
isInstanceOf(testador_de_corrente_de_fulga,entity).
isInstanceOf(sela,entity).
isInstanceOf(colar,entity).
isInstanceOf(bastao_garra,entity).
isInstanceOf(estopo,entity).
isInstanceOf(chave_catraca,entity).
isInstanceOf(condutor,entity).
isInstanceOf(torre,entity).
isInstanceOf(isolador_de_pedestal_velho,entity).
isInstanceOf(isolador_de_pedestal_novo,entity).
isInstanceOf(conector,entity).
isInstanceOf(luva,entity).
isInstanceOf(óculos,entity).
isInstanceOf(chão,entity).
isInstanceOf(torres,entity).
isInstanceOf(cavalete,entity).
isInstanceOf(alcool_isopropilico,entity).
isInstanceOf(pano_seco,entity).
isInstanceOf(parafuso,entity).

isInstanceOf(cone,artefact).
isInstanceOf(fita,artefact).
isInstanceOf(carretilha,artefact).
isInstanceOf(corda,artefact).
isInstanceOf(bastao_universal,artefact).
isInstanceOf(testador_de_corrente_de_fulga,artefact).
isInstanceOf(sela,artefact).
isInstanceOf(colar,artefact).
isInstanceOf(bastao_garra,artefact).
isInstanceOf(estopo,artefact).
isInstanceOf(chave_catraca,artefact).
isInstanceOf(condutor,artefact).
isInstanceOf(torre,artefact).
isInstanceOf(isolador_de_pedestal_velho,artefact).
isInstanceOf(isolador_de_pedestal_novo,artefact).
isInstanceOf(conector,artefact).
isInstanceOf(luva,artefact).
isInstanceOf(óculos,artefact).
isInstanceOf(chão,artefact).
isInstanceOf(torres,entity).
isInstanceOf(cavalete,artefact).
isInstanceOf(alcool_isopropilico,artefact).
isInstanceOf(pano_seco,artefact).
isInstanceOf(parafuso,artefact).

isInstanceOf(cone,tool).
isInstanceOf(fita,tool).
isInstanceOf(carretilha,tool).
isInstanceOf(corda,tool).
isInstanceOf(bastao_universal,tool).
isInstanceOf(testador_de_corrente_de_fulga,tool).
isInstanceOf(sela,tool).
isInstanceOf(colar,tool).
isInstanceOf(bastao_garra,tool).
isInstanceOf(estopo,tool).
isInstanceOf(chave_catraca,tool).
isInstanceOf(condutor,tool).
isInstanceOf(luva,tool).
isInstanceOf(óculos,tool).

isInstanceOf(condutor,object).
isInstanceOf(torre,object).
isInstanceOf(isolador_de_pedestal_velho,object).
isInstanceOf(isolador_de_pedestal_novo,object).
isInstanceOf(conector,object).
isInstanceOf(parafuso,object).

isInstanceOf(analize_preliminar_risco,condition).
isInstanceOf(procedimentos-iniciais,condition).
isInstanceOf(sinalizacao,condition).
isInstanceOf(cavalete-condition,condition).
isInstanceOf(limpar-ferramenta,condition).
isInstanceOf(medicao-corrente-fulga-inicio-manutencao,condition).
isInstanceOf(medicao-corrente-fulga-durante-manutencao,condition).
isInstanceOf(medicao-corrente-fulga-final-operacao,condition).
isInstanceOf(posicionamento-cavalete,condition).
isInstanceOf(procedimentos-corda-manutencao-carretilha,condition).
isInstanceOf(verificar-corda-limpa,condition).
isInstanceOf(teste-impedancia-corda,condition).
isInstanceOf(rasga-corda-pedacos,condition).
isInstanceOf(interpolar-corda-bastao-universal,condition).
isInstanceOf(fixar-carretilha-corda-bastao-universal,condition).
isInstanceOf(instalar-sela-corda-lado-1,condition).
isInstanceOf(fixar-bastao-garra-colar-sela,condition).
isInstanceOf(fixar-bastao-garra-lado-1-condutor,condition).
isInstanceOf(instalar-sela-colar-coluna-lado-2,condition).
isInstanceOf(fixar-bastao-garra-invertido-lado-2,condition).
isInstanceOf(fixar-carretilha-corda-fibra-sintetica-ponta-bastao,condition).
isInstanceOf(girar-sela-erguer-bastao,condition).
isInstanceOf(enforcar-estopo-alto-isolador,condition).
isInstanceOf(conectar-corda-estopo,condition).
isInstanceOf(operacao-isolador-pedestal,condition).
isInstanceOf(bastao-universal-chave-catraca-saltar-parafusos,condition).
isInstanceOf(retirar-parafuso-cima,condition).
isInstanceOf(finalizar-troca-isolador-pedestal,condition).
isInstanceOf(tencionar-corda-estopo,condition).
isInstanceOf(tirar-parafusos-baixo-isolador-chave-catraca,condition).
isInstanceOf(passar-corda-base-isolador-chave-catraca,condition).
isInstanceOf(corda-erguer-isolador,condition).
isInstanceOf(retirar-isolador-antigo,condition).
isInstanceOf(estopo-isolador,condition).
isInstanceOf(suspender-isolador,condition).
isInstanceOf(engate-corda-guia,condition).
isInstanceOf(icar-isolador,condition).
isInstanceOf(parafusar-isolador-coluna-chave-catraca,condition).
isInstanceOf(fechar-conector-bastao-universal,condition).
isInstanceOf(desconectar-batao-garra-conector,condition).
isInstanceOf(retirar-bastao-garra,condition).
isInstanceOf(retirar-sela-colar-bastao-garra-lado-1,condition).
isInstanceOf(retirar-estopo-isolador,condition).
isInstanceOf(retirar-sela-colar-bastao-garra-lado-2,condition).
isInstanceOf(recolher-equipamento,condition).
isInstanceOf(metodo-a-distancia,condition).
isInstanceOf(supervisao,condition).
isInstanceOf(observacao,condition).
isInstanceOf(objetivo-final,condition).
isInstanceOf(etapas-metodologicas,condition).
isInstanceOf(metodo-finalizado,condition).

isInstanceOf(supervisores,group).
isInstanceOf(observadores,group).
isInstanceOf(executores,group).


isInstanceOf(plan1,plan).
isInstanceOf(plan2,plan).
isInstanceOf(plan3,plan).
isInstanceOf(plan4,plan).
isInstanceOf(plan5,plan).
isInstanceOf(plan6,plan).
isInstanceOf(plan7,plan).
isInstanceOf(plan8,plan).

hasType(plan1,sequence).
hasType(plan2,sequence).
hasType(plan3,sequence).
hasType(plan4,sequence).
hasType(plan5,sequence).
hasType(plan6,parallel).
hasType(plan7,parallel).
hasType(plan8,parallel).


hasSuperGoal(plan1,goal50).
hasSuperGoal(plan2,goal51).
hasSuperGoal(plan3,goal10).
hasSuperGoal(plan4,goal25).
hasSuperGoal(plan5,goal28).
hasSuperGoal(plan6,goal49).
hasSuperGoal(plan7,goal2).
hasSuperGoal(plan8,goal49).


isInstanceOf(missao00,mission).
isInstanceOf(missao01-01,mission).
isInstanceOf(missao01-02,mission).
isInstanceOf(missao01-03,mission).
isInstanceOf(missao01-04,mission).
isInstanceOf(missao01-05,mission).
isInstanceOf(missao01-06,mission).
isInstanceOf(missao02,mission).
isInstanceOf(missao03,mission).
isInstanceOf(missao04,mission).
isInstanceOf(missao05,mission).
isInstanceOf(missao06,mission).
isInstanceOf(missao07,mission).
isInstanceOf(missao08,mission).
isInstanceOf(missao09,mission).
isInstanceOf(missao10,mission).
isInstanceOf(missao11,mission).
isInstanceOf(missao12,mission).

isInstanceOf(schema01,schema).

hasSchema(missao0,schema01).
hasSchema(missao01-01,schema01).
hasSchema(missao01-02,schema01).
hasSchema(missao01-03,schema01).
hasSchema(missao01-04,schema01).
hasSchema(missao01-05,schema01).
hasSchema(missao01-06,schema01).
hasSchema(missao02,schema01).
hasSchema(missao03,schema01).
hasSchema(missao04,schema01).
hasSchema(missao05,schema01).
hasSchema(missao06,schema01).
hasSchema(missao07,schema01).
hasSchema(missao08,schema01).
hasSchema(missao09,schema01).
hasSchema(missao10,schema01).
hasSchema(missao11,schema01).
hasSchema(missao12,schema01).

isInstanceOf(supervisor,role).
isInstanceOf(observador,role).
isInstanceOf(executor01,role).
isInstanceOf(executor02,role).
isInstanceOf(executor03,role).
isInstanceOf(executor04,role).
isInstanceOf(executor05,role).
isInstanceOf(executor06,role).
isInstanceOf(executor07,role).

isInstanceOf(goal1,goal).
isInstanceOf(goal2,goal).
isInstanceOf(goal3,goal).
isInstanceOf(goal4,goal).
isInstanceOf(goal5,goal).
isInstanceOf(goal6,goal).
isInstanceOf(goal7,goal).
isInstanceOf(goal8,goal).
isInstanceOf(goal9,goal).
isInstanceOf(goal10,goal).
isInstanceOf(goal11,goal).
isInstanceOf(goal12,goal).
isInstanceOf(goal13,goal).
isInstanceOf(goal14,goal).
isInstanceOf(goal15,goal).
isInstanceOf(goal16,goal).
isInstanceOf(goal17,goal).
isInstanceOf(goal18,goal).
isInstanceOf(goal19,goal).
isInstanceOf(goal20,goal).
isInstanceOf(goal21,goal).
isInstanceOf(goal22,goal).
isInstanceOf(goal23,goal).
isInstanceOf(goal24,goal).
isInstanceOf(goal25,goal).
isInstanceOf(goal26,goal).
isInstanceOf(goal27,goal).
isInstanceOf(goal28,goal).
isInstanceOf(goal29,goal).
isInstanceOf(goal30,goal).
isInstanceOf(goal31,goal).
isInstanceOf(goal32,goal).
isInstanceOf(goal33,goal).
isInstanceOf(goal34,goal).
isInstanceOf(goal35,goal).
isInstanceOf(goal36,goal).
isInstanceOf(goal37,goal).
isInstanceOf(goal38,goal).
isInstanceOf(goal39,goal).
isInstanceOf(goal40,goal).
isInstanceOf(goal41,goal).
isInstanceOf(goal42,goal).
isInstanceOf(goal43,goal).
isInstanceOf(goal44,goal).
isInstanceOf(goal45,goal).
isInstanceOf(goal46,goal).
isInstanceOf(goal47,goal).
isInstanceOf(goal48,goal).
isInstanceOf(goal49,goal).
isInstanceOf(goal50,goal).
isInstanceOf(goal51,goal).


hasProbabilitiy(goal1,95).
hasProbabilitiy(goal2,95).
hasProbabilitiy(goal3,95).
hasProbabilitiy(goal4,95).
hasProbabilitiy(goal5,95).
hasProbabilitiy(goal6,95).
hasProbabilitiy(goal7,95).
hasProbabilitiy(goal8,95).
hasProbabilitiy(goal9,95).
hasProbabilitiy(goal10,95).
hasProbabilitiy(goal11,95).
hasProbabilitiy(goal12,95).
hasProbabilitiy(goal13,95).
hasProbabilitiy(goal14,95).
hasProbabilitiy(goal15,95).
hasProbabilitiy(goal16,95).
hasProbabilitiy(goal17,95).
hasProbabilitiy(goal18,95).
hasProbabilitiy(goal19,95).
hasProbabilitiy(goal20,95).
hasProbabilitiy(goal21,95).
hasProbabilitiy(goal22,95).
hasProbabilitiy(goal23,95).
hasProbabilitiy(goal24,95).
hasProbabilitiy(goal25,95).
hasProbabilitiy(goal26,95).
hasProbabilitiy(goal27,95).
hasProbabilitiy(goal28,95).
hasProbabilitiy(goal29,95).
hasProbabilitiy(goal30,95).
hasProbabilitiy(goal31,95).
hasProbabilitiy(goal32,95).
hasProbabilitiy(goal33,95).
hasProbabilitiy(goal34,95).
hasProbabilitiy(goal35,95).
hasProbabilitiy(goal36,95).
hasProbabilitiy(goal37,95).
hasProbabilitiy(goal38,95).
hasProbabilitiy(goal39,95).
hasProbabilitiy(goal40,95).
hasProbabilitiy(goal41,95).
hasProbabilitiy(goal42,95).
hasProbabilitiy(goal43,95).
hasProbabilitiy(goal44,95).
hasProbabilitiy(goal45,95).
hasProbabilitiy(goal46,95).
hasProbabilitiy(goal47,95).
hasProbabilitiy(goal48,95).
hasProbabilitiy(goal49,95).
hasProbabilitiy(goal50,95).
hasProbabilitiy(goal51,95).


isInstanceOf(condition1,condition).
isInstanceOf(condition2,condition).
isInstanceOf(condition3,condition).
isInstanceOf(condition4,condition).
isInstanceOf(condition5,condition).
isInstanceOf(condition6,condition).
isInstanceOf(condition7,condition).
isInstanceOf(condition8,condition).
isInstanceOf(condition9,condition).
isInstanceOf(condition10,condition).
isInstanceOf(condition11,condition).
isInstanceOf(condition12,condition).
isInstanceOf(condition13,condition).
isInstanceOf(condition14,condition).
isInstanceOf(condition15,condition).
isInstanceOf(condition16,condition).
isInstanceOf(condition17,condition).
isInstanceOf(condition18,condition).
isInstanceOf(condition19,condition).
isInstanceOf(condition20,condition).
isInstanceOf(condition21,condition).
isInstanceOf(condition22,condition).
isInstanceOf(condition23,condition).
isInstanceOf(condition24,condition).
isInstanceOf(condition25,condition).
isInstanceOf(condition26,condition).
isInstanceOf(condition27,condition).
isInstanceOf(condition28,condition).
isInstanceOf(condition29,condition).
isInstanceOf(condition30,condition).
isInstanceOf(condition31,condition).
isInstanceOf(condition32,condition).
isInstanceOf(condition33,condition).
isInstanceOf(condition34,condition).
isInstanceOf(condition35,condition).
isInstanceOf(condition36,condition).
isInstanceOf(condition37,condition).
isInstanceOf(condition38,condition).
isInstanceOf(condition39,condition).
isInstanceOf(condition40,condition).
isInstanceOf(condition41,condition).
isInstanceOf(condition42,condition).
isInstanceOf(condition43,condition).
isInstanceOf(condition44,condition).
isInstanceOf(condition45,condition).
isInstanceOf(condition46,condition).
isInstanceOf(condition47,condition).
isInstanceOf(condition48,condition).
isInstanceOf(condition49,condition).
isInstanceOf(condition50,condition).
isInstanceOf(condition51,condition).


hasName(condition1,analize_preliminar_risco).
hasName(condition2,procedimentos-iniciais).
hasName(condition3,sinalizacao).
hasName(condition4,cavalete-condition).
hasName(condition5,limpar-ferramenta).
hasName(condition6,medicao-corrente-fulga-inicio-manutencao).
hasName(condition7,medicao-corrente-fulga-durante-manutencao).
hasName(condition8,medicao-corrente-fulga-final-operacao).
hasName(condition9,posicionamento-cavalete).
hasName(condition10,procedimentos-corda-manutencao-carretilha).
hasName(condition11,verificar-corda-limpa).
hasName(condition12,teste-impedancia-corda).
hasName(condition13,rasga-corda-pedacos).
hasName(condition14,interpolar-corda-bastao-universal).
hasName(condition15,fixar-carretilha-corda-bastao-universal).
hasName(condition16,instalar-sela-corda-lado-1).
hasName(condition17,fixar-bastao-garra-colar-sela).
hasName(condition18,fixar-bastao-garra-lado-1-condutor).
hasName(condition19,instalar-sela-colar-coluna-lado-2).
hasName(condition20,fixar-bastao-garra-invertido-lado-2).
hasName(condition21,fixar-carretilha-corda-fibra-sintetica-ponta-bastao).
hasName(condition22,girar-sela-erguer-bastao).
hasName(condition23,enforcar-estopo-alto-isolador).
hasName(condition24,conectar-corda-estopo).
hasName(condition25,operacao-isolador-pedestal).
hasName(condition26,bastao-universal-chave-catraca-saltar-parafusos).
hasName(condition27,retirar-parafuso-cima).
hasName(condition28,finalizar-troca-isolador-pedestal).
hasName(condition29,tencionar-corda-estopo).
hasName(condition30,tirar-parafusos-baixo-isolador-chave-catraca).
hasName(condition31,passar-corda-base-isolador-chave-catraca).
hasName(condition32,corda-erguer-isolador).
hasName(condition33,retirar-isolador-antigo).
hasName(condition34,estopo-isolador).
hasName(condition35,suspender-isolador).
hasName(condition36,engate-corda-guia).
hasName(condition37,icar-isolador).
hasName(condition38,parafusar-isolador-coluna-chave-catraca).
hasName(condition39,fechar-conector-bastao-universal).
hasName(condition40,desconectar-batao-garra-conector).
hasName(condition41,retirar-bastao-garra).
hasName(condition42,retirar-sela-colar-bastao-garra-lado-1).
hasName(condition43,retirar-estopo-isolador).
hasName(condition44,retirar-sela-colar-bastao-garra-lado-2).
hasName(condition45,recolher-equipamento).
hasName(condition46,metodo-a-distancia).
hasName(condition47,supervisao).
hasName(condition48,observacao).
hasName(condition49,objetivo-final).
hasName(condition50,etapas-metodologicas).
hasName(condition51,metodo-finalizado).

hasCondition(goal1,condition1).
hasCondition(goal2,condition2).
hasCondition(goal3,condition3).
hasCondition(goal4,condition4).
hasCondition(goal5,condition5).
hasCondition(goal6,condition6).
hasCondition(goal7,condition7).
hasCondition(goal8,condition8).
hasCondition(goal9,condition9).
hasCondition(goal10,condition10).
hasCondition(goal11,condition11).
hasCondition(goal12,condition12).
hasCondition(goal13,condition13).
hasCondition(goal14,condition14).
hasCondition(goal15,condition15).
hasCondition(goal16,condition16).
hasCondition(goal17,condition17).
hasCondition(goal18,condition18).
hasCondition(goal19,condition19).
hasCondition(goal20,condition20).
hasCondition(goal21,condition21).
hasCondition(goal22,condition22).
hasCondition(goal23,condition23).
hasCondition(goal24,condition24).
hasCondition(goal25,condition25).
hasCondition(goal26,condition26).
hasCondition(goal27,condition27).
hasCondition(goal28,condition28).
hasCondition(goal29,condition29).
hasCondition(goal30,condition30).
hasCondition(goal31,condition31).
hasCondition(goal32,condition32).
hasCondition(goal33,condition33).
hasCondition(goal34,condition34).
hasCondition(goal35,condition35).
hasCondition(goal36,condition36).
hasCondition(goal37,condition37).
hasCondition(goal38,condition38).
hasCondition(goal39,condition39).
hasCondition(goal40,condition40).
hasCondition(goal41,condition41).
hasCondition(goal42,condition42).
hasCondition(goal43,condition43).
hasCondition(goal44,condition44).
hasCondition(goal45,condition45).
hasCondition(goal46,condition46).
hasCondition(goal47,condition47).
hasCondition(goal48,condition48).
hasCondition(goal49,condition49).
hasCondition(goal50,condition50).
hasCondition(goal51,condition51).


hasRelationArtefact(cone,corda,relation32).
hasRelationArtefact(cone,corda,relation35).
hasRelationArtefact(fita,corda,relation38).
hasRelationArtefact(fita,corda,relation54).
hasRelationArtefact(carretilha,bastao_universal,relation27).
hasRelationArtefact(carretilha,bastao_universal,relation30).
hasRelationArtefact(corda,bastao_universal,relation44).
hasRelationArtefact(corda,sela,relation36).
hasRelationArtefact(corda,sela,relation70).
hasRelationArtefact(corda,sela,relation73).
hasRelationArtefact(corda,colar,relation33).
hasRelationArtefact(corda,colar,relation69).
hasRelationArtefact(corda,bastao_garra,relation28).
hasRelationArtefact(corda,bastao_garra,relation31).
hasRelationArtefact(corda,bastao_garra,relation40).
hasRelationArtefact(bastao_universal,bastao_garra,relation41).
hasRelationArtefact(bastao_universal,bastao_garra,relation42).
hasRelationArtefact(bastao_universal,estopo,relation45).
hasRelationArtefact(bastao_universal,estopo,relation51).
hasRelationArtefact(bastao_universal,estopo,relation58).
hasRelationArtefact(bastao_universal,chave_catraca,relation29).
hasRelationArtefact(testador_de_corrente_de_fulga,chave_catraca,relation46).
hasRelationArtefact(testador_de_corrente_de_fulga,condutor,relation39).
hasRelationArtefact(testador_de_corrente_de_fulga,condutor,relation50).
hasRelationArtefact(testador_de_corrente_de_fulga,condutor,relation67).
hasRelationArtefact(sela,isolador_de_pedestal_velho,relation53).
hasRelationArtefact(sela,isolador_de_pedestal_velho,relation55).
hasRelationArtefact(sela,isolador_de_pedestal_velho,relation56).
hasRelationArtefact(sela,isolador_de_pedestal_novo,relation43).
hasRelationArtefact(sela,isolador_de_pedestal_novo,relation57).
hasRelationArtefact(sela,isolador_de_pedestal_novo,relation59).
hasRelationArtefact(colar,isolador_de_pedestal_novo,relation60).
hasRelationArtefact(colar,isolador_de_pedestal_novo,relation63).
hasRelationArtefact(colar,isolador_de_pedestal_novo,relation64).
hasRelationArtefact(colar,isolador_de_pedestal_novo,relation66).
hasRelationArtefact(bastao_garra,isolador_de_pedestal_novo,relation72).
hasRelationArtefact(bastao_garra,conector,relation49).
hasRelationArtefact(bastao_garra,conector,relation65).
hasRelationArtefact(estopo,conector,relation68).
hasRelationArtefact(estopo,chão,relation3).
hasRelationArtefact(estopo,torres-subestacao,relation4).
hasRelationArtefact(estopo,torres-subestacao,relation37).
hasRelationArtefact(chave_catraca,torres-subestacao,relation61).
hasRelationArtefact(chave_catraca,torres-subestacao,relation62).
hasRelationArtefact(chave_catraca,torres-subestacao,relation71).
hasRelationArtefact(chave_catraca,torres-subestacao,relation74).
hasRelationArtefact(chave_catraca,cavalete,relation5).
hasRelationArtefact(condutor,cavalete,relation6).
hasRelationArtefact(condutor,cavalete,relation7).
hasRelationArtefact(torre,cavalete,relation8).
hasRelationArtefact(isolador_de_pedestal_velho,cavalete,relation9).
hasRelationArtefact(isolador_de_pedestal_novo,cavalete,relation10).
hasRelationArtefact(isolador_de_pedestal_novo,cavalete,relation11).
hasRelationArtefact(conector,cavalete,relation12).
hasRelationArtefact(conector,cavalete,relation13).
hasRelationArtefact(conector,cavalete,relation14).
hasRelationArtefact(luva,cavalete,relation15).
hasRelationArtefact(óculos,cavalete,relation16).
hasRelationArtefact(chão,cavalete,relation17).
hasRelationArtefact(torres-subestacao,cavalete,relation18).
hasRelationArtefact(alcool_isopropilico,cavalete,relation19).
hasRelationArtefact(pano_seco,cavalete,relation20).
hasRelationArtefact(pano_seco,cavalete,relation21).
hasRelationArtefact(pano_seco,cavalete,relation22).
hasRelationArtefact(parafuso,cavalete,relation23).
hasRelationArtefact(parafuso,cavalete,relation24).
hasRelationArtefact(parafuso,pano_seco,relation26).
hasRelationArtefact(parafuso,parafuso,relation47).
hasRelationArtefact(parafuso,parafuso,relation48).
hasRelationArtefact(parafuso,parafuso,relation52).

hasConditionRel(sinalizacao,relation4).
hasConditionRel(posicionamento-cavalete,relation5).
hasConditionRel(posicionamento-cavalete,relation6).
hasConditionRel(posicionamento-cavalete,relation7).
hasConditionRel(posicionamento-cavalete,relation8).
hasConditionRel(posicionamento-cavalete,relation9).
hasConditionRel(posicionamento-cavalete,relation10).
hasConditionRel(posicionamento-cavalete,relation11).
hasConditionRel(posicionamento-cavalete,relation12).
hasConditionRel(posicionamento-cavalete,relation13).
hasConditionRel(posicionamento-cavalete,relation14).
hasConditionRel(posicionamento-cavalete,relation15).
hasConditionRel(posicionamento-cavalete,relation16).
hasConditionRel(posicionamento-cavalete,relation17).
hasConditionRel(posicionamento-cavalete,relation18).
hasConditionRel(posicionamento-cavalete,relation19).
hasConditionRel(posicionamento-cavalete,relation20).
hasConditionRel(posicionamento-cavalete,relation21).
hasConditionRel(posicionamento-cavalete,relation22).
hasConditionRel(posicionamento-cavalete,relation23).
hasConditionRel(posicionamento-cavalete,relation24).
hasConditionRel(limpar-ferramenta,relation26).
hasConditionRel(limpar-ferramenta,relation27).
hasConditionRel(limpar-ferramenta,relation28).
hasConditionRel(limpar-ferramenta,relation29).
hasConditionRel(medicao-corrente-fulga-inicio-manutencao,relation27).
hasConditionRel(medicao-corrente-fulga-inicio-manutencao,relation28).
hasConditionRel(medicao-corrente-fulga-durante-manutencao,relation27).
hasConditionRel(medicao-corrente-fulga-durante-manutencao,relation28).
hasConditionRel(medicao-corrente-fulga-final-operacao,relation27).
hasConditionRel(medicao-corrente-fulga-final-operacao,relation28).
hasConditionRel(teste-impedancia-corda,relation32).
hasConditionRel(interpolar-corda-bastao-universal,relation33).
hasConditionRel(fixar-carretilha-corda-bastao-universal,relation35).
hasConditionRel(instalar-sela-corda-lado-1,relation36).
hasConditionRel(instalar-sela-corda-lado-1,relation37).
hasConditionRel(fixar-bastao-garra-colar-sela,relation38).
hasConditionRel(fixar-bastao-garra-lado-1-condutor,relation39).
hasConditionRel(instalar-sela-colar-coluna-lado-2,relation38).
hasConditionRel(fixar-bastao-garra-invertido-lado-2,relation39).
hasConditionRel(fixar-carretilha-corda-fibra-sintetica-ponta-bastao,relation40).
hasConditionRel(girar-sela-erguer-bastao,relation42).
hasConditionRel(enforcar-estopo-alto-isolador,relation43).
hasConditionRel(conectar-corda-estopo,relation44).
hasConditionRel(conectar-corda-estopo,relation45).
hasConditionRel(bastao-universal-chave-catraca-saltar-parafusos,relation46).
hasConditionRel(bastao-universal-chave-catraca-saltar-parafusos,relation47).
hasConditionRel(retirar-parafuso-cima,relation48).
hasConditionRel(retirar-parafuso-cima,relation49).
hasConditionRel(retirar-parafuso-cima,relation50).
hasConditionRel(tencionar-corda-estopo,relation51).
hasConditionRel(tirar-parafusos-baixo-isolador-chave-catraca,relation52).
hasConditionRel(tirar-parafusos-baixo-isolador-chave-catraca,relation53).
hasConditionRel(passar-corda-base-isolador-chave-catraca,relation54).
hasConditionRel(passar-corda-base-isolador-chave-catraca,relation55).
hasConditionRel(corda-erguer-isolador,relation56).
hasConditionRel(estopo-isolador,relation57).
hasConditionRel(estopo-isolador,relation58).
hasConditionRel(suspender-isolador,relation59).
hasConditionRel(engate-corda-guia,relation60).
hasConditionRel(parafusar-isolador-coluna-chave-catraca,relation61).
hasConditionRel(parafusar-isolador-coluna-chave-catraca,relation62).
hasConditionRel(parafusar-isolador-coluna-chave-catraca,relation63).
hasConditionRel(fechar-conector-bastao-universal,relation64).
hasConditionRel(fechar-conector-bastao-universal,relation65).
hasConditionRel(fechar-conector-bastao-universal,relation66).
hasConditionRel(desconectar-batao-garra-conector,relation67).
hasConditionRel(desconectar-batao-garra-conector,relation68).
hasConditionRel(retirar-bastao-garra,relation69).
hasConditionRel(retirar-sela-colar-bastao-garra-lado-1,relation70).
hasConditionRel(retirar-sela-colar-bastao-garra-lado-1,relation71).
hasConditionRel(retirar-estopo-isolador,relation72).
hasConditionRel(retirar-sela-colar-bastao-garra-lado-2,relation73).
hasConditionRel(retirar-sela-colar-bastao-garra-lado-2,relation74).



allocation(agente01,supervisor).
allocation(agente02,observador).
allocation(agente03,executor01).
allocation(agente04,executor02).
allocation(agente05,executor03).
allocation(agente06,executor04).
allocation(agente07,executor05).
allocation(agente08,executor06).
allocation(agente09,executor07).

existGroupSafaty(ruido,group_green).
existGroupSafaty(vibracao,group_green).
existGroupSafaty(radiacao_ionizante,group_green).
existGroupSafaty(radiacao_nao_ionizante,group_green).
existGroupSafaty(frio,group_green).
existGroupSafaty(calor,group_green).
existGroupSafaty(pressao_anormal,group_green).
existGroupSafaty(umidade,group_green).
existGroupSafaty(poeira,group_red).
existGroupSafaty(fumo,group_red).
existGroupSafaty(neblina,group_red).
existGroupSafaty(gas,group_red).
existGroupSafaty(vapor,group_red).
existGroupSafaty(substancia_composta_ou_produtos_quimicos_gerais,group_red).
existGroupSafaty(risco_ergonimico,group_yellow).
existGroupSafaty(esforco_fisico_intenso,group_yellow).
existGroupSafaty(levantamento_transporte_manual_peso,group_yellow).
existGroupSafaty(controle_rigido_produtividade,group_yellow).
existGroupSafaty(imposicao_ritmo_excessivo,group_yellow).
existGroupSafaty(trabalho_em_turno_e_noturno,group_yellow).
existGroupSafaty(jornada_de_trabalho_prolongadas,group_yellow).
existGroupSafaty(monotonia_e_repetitividade,group_yellow).
existGroupSafaty(outras_situacoes_causadoras_estresse_fisico_psiquico,group_yellow).
existGroupSafaty(virus,group_brown).
existGroupSafaty(bacteria,group_brown).
existGroupSafaty(fungos,group_brown).
existGroupSafaty(parasitas,group_brown).
existGroupSafaty(bacilos,group_brown).
existGroupSafaty(riscos_de_acidentes,group_blue).
existGroupSafaty(arranjo_fisico_inadequado,group_blue).
existGroupSafaty(maquinas_equipamentos_sem_protecao,group_blue).
existGroupSafaty(iluminacao_inadequada,group_blue).
existGroupSafaty(eletricidade,group_blue).
existGroupSafaty(probabilidade_incendio_explosao,group_blue).
existGroupSafaty(armazenamento_inadequado,group_blue).
existGroupSafaty(animais_peconhentos,group_blue).
existGroupSafaty(outras_situacoes_de_risco_que_poderao_gerar_acidentes_fatais,group_blue).


hasNameConditionMission(missao0,analize_preliminar_risco).
hasNameConditionMission(missao01-01,sinalizacao).
hasNameConditionMission(missao01-02,cavalete-condition).
hasNameConditionMission(missao01-03,limpar-ferramenta).
hasNameConditionMission(missao01-04,medicao-corrente-fulga-inicio-manutencao).
hasNameConditionMission(missao01-05,posicionamento-cavalete).
hasNameConditionMission(missao01-06,medicao-corrente-fulga-durante-manutencao).
hasNameConditionMission(missao02,procedimentos-corda-manutencao-carretilha).
hasNameConditionMission(missao02,verificar-corda-limpa).
hasNameConditionMission(missao03,rasga-corda-pedacos).
hasNameConditionMission(missao03,interpolar-corda-bastao-universal).
hasNameConditionMission(missao03,fixar-carretilha-corda-bastao-universal).
hasNameConditionMission(missao03,instalar-sela-corda-lado-1).
hasNameConditionMission(missao03,fixar-bastao-garra-colar-sela).
hasNameConditionMission(missao03,fixar-bastao-garra-lado-1-condutor).
hasNameConditionMission(missao03,instalar-sela-colar-coluna-lado-2).
hasNameConditionMission(missao03,fixar-bastao-garra-invertido-lado-2).
hasNameConditionMission(missao03,fixar-carretilha-corda-fibra-sintetica-ponta-bastao).
hasNameConditionMission(missao03,girar-sela-erguer-bastao).

hasNameConditionMission(missao04,conectar-corda-estopo).
hasNameConditionMission(missao04,enforcar-estopo-alto-isolador).
hasNameConditionMission(missao04,conectar-corda-estopo).
hasNameConditionMission(missao04,bastao-universal-chave-catraca-saltar-parafusos).
hasNameConditionMission(missao04,retirar-parafuso-cima).
hasNameConditionMission(missao04,tencionar-corda-estopo).
hasNameConditionMission(missao04,tirar-parafusos-baixo-isolador-chave-catraca).

hasNameConditionMission(missao05,passar-corda-base-isolador-chave-catraca).
hasNameConditionMission(missao05,corda-erguer-isolador).
hasNameConditionMission(missao05,retirar-isolador-antigo).
hasNameConditionMission(missao05,estopo-isolador).

hasNameConditionMission(missao06,suspender-isolador).
hasNameConditionMission(missao06,engate-corda-guia).

hasNameConditionMission(missao07,icar-isolador).
hasNameConditionMission(missao07,parafusar-isolador-coluna-chave-catraca).
hasNameConditionMission(missao07,fechar-conector-bastao-universal).

hasNameConditionMission(missao08,desconectar-batao-garra-conector).
hasNameConditionMission(missao08,retirar-sela-colar-bastao-garra-lado-1).
hasNameConditionMission(missao08,retirar-estopo-isolador).
hasNameConditionMission(missao08,retirar-sela-colar-bastao-garra-lado-2).
hasNameConditionMission(missao08,recolher-equipamento).
hasNameConditionMission(missao08,medicao-corrente-fulga-final-operacao).

hasNameConditionMission(missao09,procedimentos-iniciais).
hasNameConditionMission(missao09,procedimentos-corda-manutencao-carretilha).
hasNameConditionMission(missao09,operacao-isolador-pedestal).
hasNameConditionMission(missao09,finalizar-troca-isolador-pedestal).

hasNameConditionMission(missao10,supervisao).
hasNameConditionMission(missao11,observacao).




hasPlanSuper(goal1,plan1).
hasPlanSuper(goal2,plan1).
hasPlanSuper(goal3,plan7).
hasPlanSuper(goal4,plan7).
hasPlanSuper(goal5,plan7).
hasPlanSuper(goal6,plan7).
hasPlanSuper(goal7,plan8).
hasPlanSuper(goal8,plan5).
hasPlanSuper(goal9,plan1).
hasPlanSuper(goal10,plan3).
hasPlanSuper(goal12,plan3).
hasPlanSuper(goal13,plan3).
hasPlanSuper(goal14,plan3).
hasPlanSuper(goal15,plan3).
hasPlanSuper(goal16,plan3).
hasPlanSuper(goal17,plan3).
hasPlanSuper(goal18,plan3).
hasPlanSuper(goal19,plan3).
hasPlanSuper(goal20,plan3).
hasPlanSuper(goal21,plan3).
hasPlanSuper(goal22,plan3).
hasPlanSuper(goal23,plan3).
hasPlanSuper(goal84,plan3).
hasPlanSuper(goal25,plan2).
hasPlanSuper(goal25,plan1).
hasPlanSuper(goal26,plan4).
hasPlanSuper(goal27,plan4).
hasPlanSuper(goal29,plan5).
hasPlanSuper(goal30,plan5).
hasPlanSuper(goal31,plan5).
hasPlanSuper(goal32,plan5).
hasPlanSuper(goal33,plan5).
hasPlanSuper(goal34,plan5).
hasPlanSuper(goal35,plan5).
hasPlanSuper(goal36,plan5).
hasPlanSuper(goal37,plan5).
hasPlanSuper(goal38,plan5).
hasPlanSuper(goal39,plan5).
hasPlanSuper(goal40,plan5).
hasPlanSuper(goal41,plan5).
hasPlanSuper(goal42,plan5).
hasPlanSuper(goal43,plan5).
hasPlanSuper(goal44,plan5).
hasPlanSuper(goal45,plan5).
hasPlanSuper(goal46,plan2).
hasPlanSuper(goal47,plan6).
hasPlanSuper(goal48,plan6).
hasPlanSuper(goal50,plan8).
hasPlanSuper(goal51,plan6).

obligation(supervisor,missao10).
obligation(observador,missao11).
obligation(executor01,missao01-01).
obligation(executor01,missao02).
obligation(executor01,missao03).
obligation(executor01,missao07).
obligation(executor01,missao08).
obligation(executor01,missao09).
obligation(executor02,missao00).
obligation(executor02,missao01-01).
obligation(executor02,missao01-06).
obligation(executor02,missao02).
obligation(executor02,missao03).
obligation(executor02,missao07).
obligation(executor02,missao08).
obligation(executor02,missao09).
obligation(executor03,missao00).
obligation(executor03,missao01-01).
obligation(executor03,missao01-06).
obligation(executor03,missao02).
obligation(executor03,missao03).
obligation(executor03,missao04).
obligation(executor03,missao05).
obligation(executor03,missao08).
obligation(executor03,missao09).
obligation(executor04,missao00).
obligation(executor04,missao01-02).
obligation(executor04,missao02).
obligation(executor04,missao03).
obligation(executor04,missao04).
obligation(executor04,missao05).
obligation(executor04,missao08).
obligation(executor04,missao09).
obligation(executor05,missao00).
obligation(executor05,missao01-03).
obligation(executor05,missao02).
obligation(executor05,missao04).
obligation(executor05,missao05).
obligation(executor05,missao08).
obligation(executor05,missao09).
obligation(executor06,missao00).
obligation(executor06,missao01-04).
obligation(executor06,missao02).
obligation(executor06,missao06).
obligation(executor06,missao07).
obligation(executor06,missao08).
obligation(executor06,missao09).
obligation(executor07,missao00).
obligation(executor07,missao01-05).
obligation(executor07,missao02).
obligation(executor07,missao06).
obligation(executor07,missao07).
obligation(executor07,missao08).
obligation(executor07,missao09).




allGoalHasNewProbabilityMinus(long01,analize_preliminar_risco,75)·
hasLongConsequence(sanction01,long01).
relationCondition(analize_preliminar_risco,sanction01).
hasTrigger(sanction01,null).

hasChangeGoal(long02,teste-impedancia-corda,50).
hasChangeGoal(long02,limpar-ferramenta,50).
hasChangeGoal(long02,fixar-bastao-garra-colar-sela,50).
hasChangeGoal(long02,fixar-bastao-garra-lado-1-condutor,50).
hasChangeGoal(long02,fixar-bastao-garra-invertido-lado-2,50).
hasChangeGoal(long02,fixar-carretilha-corda-fibra-sintetica-ponta-bastao,50).
riskIsAssociateWith(short01,risco_ergonimico,baixa_fatalidade).
riskIsAssociateWith(short01,radiacao_nao_ionizante,baixa_fatalidade).
riskIsAssociateWith(short01,levantamento_transporte_manual_peso,baixa_fatalidade).
hasLongConsequence(sanction02,long02).
hasShortConsequence(sanction02,short01).
relationCondition(cavalete-condition,sanction02).
hasTrigger(sanction02,sanction41).
hasTrigger(sanction02,sanction42).

allGoalHasNewProbabilityMinus(long03,procedimentos-iniciais,75).
hasLongConsequence(sanction03,long03).
relationCondition(procedimentos-iniciais,sanction03).
hasTrigger(sanction03,sanction41).
hasTrigger(sanction03,sanction42).
hasTriggerThatIsNotSanction(sanction02,demais-profissionais-nao-atentarem).



hasChangeGoal(long05,medicao-corrente-fulga-inicio-manutencao,70).
hasChangeGoal(long05,medicao-corrente-fulga-durante-manutencao,70).
hasChangeGoal(long05,medicao-corrente-fulga-final-operacao,70).
hasChangeGoal(long05,fixar-carretilha-corda-bastao-universal,50).
hasChangeGoal(long05,fixar-bastao-garra-lado-1-condutor,50).
hasChangeGoal(long05,fixar-carretilha-corda-fibra-sintetica-ponta-bastao,50).
hasChangeGoal(long05,girar-sela-erguer-bastao,34).
hasChangeGoal(long05,bastao-universal-chave-catraca-saltar-parafusos,30).
hasChangeGoal(long05,tirar-parafusos-baixo-isolador-chave-catraca,30).
hasChangeGoal(long05,corda-erguer-isolador,20).
hasChangeGoal(long05,retirar-isolador-antigo,30).
hasChangeGoal(long05,suspender-isolador,30).
hasChangeGoal(long05,icar-isolador,30).
hasChangeGoal(long05,tencionar-corda-estopo,15).
hasChangeGoal(long05,parafusar-isolador-coluna-chave-catraca,35).
hasChangeGoal(long05,fechar-conector-bastao-universal,40).
hasChangeGoal(long05,desconectar-batao-garra-conector,15).
hasChangeGoal(long05,retirar-bastao-garra,15).
hasChangeGoal(long05,desconectar-batao-garra-conector,30).
hasLongConsequence(sanction05,long05).
relationCondition(limpar-ferramenta,sanction05).
hasTrigger(sanction05,sanction41).
hasTrigger(sanction05,sanction42).


hasChangeGoal(long06,medicao-corrente-fulga-durante-manutencao,70).
hasChangeGoal(long06,medicao-corrente-fulga-final-operacao,70).
hasChangeGoal(long06,fixar-carretilha-corda-bastao-universal,50).
hasChangeGoal(long06,fixar-bastao-garra-lado-1-condutor,50).
hasChangeGoal(long06,bastao-universal-chave-catraca-saltar-parafusos,30).
hasChangeGoal(long06,tirar-parafusos-baixo-isolador-chave-catraca,30).
hasChangeGoal(long06,corda-erguer-isolador,20).
hasChangeGoal(long06,corda-erguer-isolador,20).
hasChangeGoal(long06,retirar-isolador-antigo,30).
hasChangeGoal(long06,suspender-isolador,30).
hasChangeGoal(long06,icar-isolador,30).
hasChangeGoal(long06,parafusar-isolador-coluna-chave-catraca,35).
hasChangeGoal(long06,fechar-conector-bastao-universal,40).
hasChangeGoal(long06,desconectar-batao-garra-conector,15).
hasChangeGoal(long06,retirar-bastao-garra,15).
hasLongConsequence(sanction06,long06).
relationCondition(medicao-corrente-fulga-inicio-manutencao,sanction06).
hasChangeGoal(long06,medicao-corrente-fulga-final-operacao,50).
hasLongConsequence(sanction06,long06).
relationCondition(medicao-corrente-fulga-durante-manutencao,sanction06).
relationCondition(limpar-ferramenta,sanction05).
hasTrigger(sanction06,sanction41).
hasTrigger(sanction06,sanction42).
hasTriggerThatIsNotSanction(sanction06,equipamento-ausente).


relationCondition(verificar-corda-limpa,sanction07).
hasLongConsequence(sanction07,long07).
hasChangeGoal(long07,fixar-carretilha-corda-bastao-universal,50).
hasChangeGoal(long07,fixar-bastao-garra-lado-1-condutor,50).
hasChangeGoal(long07,bastao-universal-chave-catraca-saltar-parafusos,30).
hasChangeGoal(long07,tirar-parafusos-baixo-isolador-chave-catraca,30).
hasChangeGoal(long07,corda-erguer-isolador,20).
hasChangeGoal(long07,corda-erguer-isolador,20).
hasChangeGoal(long07,retirar-isolador-antigo,30).
hasChangeGoal(long07,suspender-isolador,30).
hasChangeGoal(long07,icar-isolador,30).
hasChangeGoal(long07,parafusar-isolador-coluna-chave-catraca,35).
hasChangeGoal(long07,fechar-conector-bastao-universal,40).
hasChangeGoal(long07,desconectar-batao-garra-conector,15).
hasChangeGoal(long07,retirar-bastao-garra,15).
hasTrigger(sanction07,sanction41).
hasTrigger(sanction07,sanction42).
hasTriggerThatIsNotSanction(sanction07,equipamento-ausente).


relationCondition(teste-impedancia-corda,sanction08).
hasChangeGoal(long08,corda-erguer-isolador,20).
hasChangeGoal(long08,corda-erguer-isolador,20).
hasChangeGoal(long08,retirar-isolador-antigo,30).
hasChangeGoal(long08,suspender-isolador,30).
hasChangeGoal(long08,icar-isolador,30).
hasChangeGoal(long08,girar-sela-erguer-bastao,34).
hasLongConsequence(sanction08,long08).
hasTrigger(sanction08,sanction41).
hasTrigger(sanction08,sanction42).
hasTriggerThatIsNotSanction(sanction08,equipamento-ausente).


relationCondition(rasga-corda-pedacos,sanction09).
hasChangeGoal(long09,interpolar-corda-bastao-universal,0).
hasChangeGoal(long09,corda-erguer-isolador,20).
hasChangeGoal(long09,corda-erguer-isolador,20).
hasChangeGoal(long09,retirar-isolador-antigo,30).
hasChangeGoal(long09,suspender-isolador,30).
hasChangeGoal(long09,icar-isolador,30).
hasChangeGoal(long09,girar-sela-erguer-bastao,34).
hasLongConsequence(sanction09,long09).
hasTrigger(sanction09,sanction41).
hasTrigger(sanction09,sanction42).
hasTriggerThatIsNotSanction(sanction09,equipamento-ausente).


relationCondition(interpolar-corda-bastao-universal,sanction10).
hasChangeGoal(long10,corda-erguer-isolador,20).
hasChangeGoal(long10,corda-erguer-isolador,20).
hasChangeGoal(long10,retirar-isolador-antigo,30).
hasChangeGoal(long10,suspender-isolador,30).
hasChangeGoal(long10,icar-isolador,30).
hasChangeGoal(long10,girar-sela-erguer-bastao,34).
hasLongConsequence(sanction10,long10).
hasTrigger(sanction09,sanction41).
hasTrigger(sanction10,sanction41).
hasTrigger(sanction10,sanction42).
hasTriggerThatIsNotSanction(sanction10,equipamento-ausente).

relationCondition(fixar-carretilha-corda-bastao-universal,sanction11).
hasChangeGoal(long11,fixar-bastao-garra-lado-1-condutor,50).
hasChangeGoal(long11,bastao-universal-chave-catraca-saltar-parafusos,30).
hasChangeGoal(long11,tirar-parafusos-baixo-isolador-chave-catraca,30).
hasChangeGoal(long11,corda-erguer-isolador,20).
hasChangeGoal(long11,corda-erguer-isolador,20).
hasChangeGoal(long11,retirar-isolador-antigo,30).
hasChangeGoal(long11,suspender-isolador,30).
hasChangeGoal(long11,icar-isolador,30).
hasChangeGoal(long11,parafusar-isolador-coluna-chave-catraca,35).
hasChangeGoal(long11,fechar-conector-bastao-universal,40).
hasChangeGoal(long11,desconectar-batao-garra-conector,15).
hasChangeGoal(long11,retirar-bastao-garra,15).
hasLongConsequence(sanction11,long11).
hasShortConsequence(sanction11,short30)
riskIsAssociateWith(short30,levantamento_transporte_manual_peso,baixa_fatalidade).
riskIsAssociateWith(short30,esforco_fisico_intenso,baixa_fatalidade).
riskIsAssociateWith(short30,radiacao_nao_ionizante).
riskIsAssociateWith(short30,risco_ergonimico,baixa_fatalidade).
riskIsAssociateWith(short30,animais_peconhentos,media_fatalidade).
riskIsAssociateWith(short30,eletricidade,fatalidade_elevada).




relationCondition(instalar-sela-corda-lado-1,sanction12).
hasChangeGoal(long12,fixar-carretilha-corda-fibra-sintetica-ponta-bastao,50).
hasChangeGoal(long12,girar-sela-erguer-bastao,34).
hasChangeGoal(long12,bastao-universal-chave-catraca-saltar-parafusos,30).
hasChangeGoal(long12,tirar-parafusos-baixo-isolador-chave-catraca,30).
hasChangeGoal(long12,corda-erguer-isolador,20).
hasChangeGoal(long12,retirar-isolador-antigo,30).
hasChangeGoal(long12,suspender-isolador,30).
hasChangeGoal(long12,tencionar-corda-estopo,15).
hasChangeGoal(long12,parafusar-isolador-coluna-chave-catraca,35).
hasChangeGoal(long12,fechar-conector-bastao-universal,40).
hasChangeGoal(long12,desconectar-batao-garra-conector,15).
hasChangeGoal(long12,retirar-bastao-garra,15).
hasChangeGoal(long12,desconectar-batao-garra-conector,30).
hasLongConsequence(sanction12,long12).
hasShortConsequence(sanction12,short31)
riskIsAssociateWith(short31,levantamento_transporte_manual_peso,baixa_fatalidade).
riskIsAssociateWith(short31,esforco_fisico_intenso,baixa_fatalidade).
riskIsAssociateWith(short31,radiacao_nao_ionizante).
riskIsAssociateWith(short31,risco_ergonimico,baixa_fatalidade).
riskIsAssociateWith(short31,animais_peconhentos,media_fatalidade).
riskIsAssociateWith(short31,eletricidade,fatalidade_elevada).


relationCondition(fixar-bastao-garra-colar-sela,sanction13).
thisShortConsequenceStopAllGoal(short02).
hasShortConsequence(sanction13,short02).
riskIsAssociateWith(short02,levantamento_transporte_manual_peso,baixa_fatalidade).
riskIsAssociateWith(short02,esforco_fisico_intenso,baixa_fatalidade).
riskIsAssociateWith(short02,radiacao_nao_ionizante).
riskIsAssociateWith(short02,risco_ergonimico,baixa_fatalidade).
riskIsAssociateWith(short02,animais_peconhentos,media_fatalidade).
riskIsAssociateWith(short02,eletricidade,fatalidade_elevada).


relationCondition(instalar-sela-colar-coluna-lado-2,sanction14).
thisShortConsequenceStopAllGoal(short03).
hasShortConsequence(sanction14,short03).
riskIsAssociateWith(short03,levantamento_transporte_manual_peso,baixa_fatalidade).
riskIsAssociateWith(short03,esforco_fisico_intenso,baixa_fatalidade).
riskIsAssociateWith(short03,radiacao_nao_ionizante).
riskIsAssociateWith(short03,risco_ergonimico,baixa_fatalidade).
riskIsAssociateWith(short03,animais_peconhentos,media_fatalidade).
riskIsAssociateWith(short03,eletricidade,fatalidade_elevada).


relationCondition(fixar-bastao-garra-invertido-lado-2,sanction15).
thisShortConsequenceStopAllGoal(short04).
hasShortConsequence(sanction15,short04).
riskIsAssociateWith(short04,levantamento_transporte_manual_peso,baixa_fatalidade).
riskIsAssociateWith(short04,esforco_fisico_intenso,baixa_fatalidade).
riskIsAssociateWith(short04,radiacao_nao_ionizante).
riskIsAssociateWith(short04,risco_ergonimico,baixa_fatalidade).
riskIsAssociateWith(short04,animais_peconhentos,media_fatalidade).
riskIsAssociateWith(short04,eletricidade,fatalidade_elevada).


relationCondition(fixar-carretilha-corda-fibra-sintetica-ponta-bastao,sanction16).
thisShortConsequenceStopAllGoal(short05).
hasShortConsequence(sanction16,short05).
riskIsAssociateWith(short05,levantamento_transporte_manual_peso,baixa_fatalidade).
riskIsAssociateWith(short05,esforco_fisico_intenso,baixa_fatalidade).
riskIsAssociateWith(short05,radiacao_nao_ionizante).
riskIsAssociateWith(short05,risco_ergonimico,baixa_fatalidade).
riskIsAssociateWith(short05,animais_peconhentos,media_fatalidade).
riskIsAssociateWith(short05,eletricidade,fatalidade_elevada).



relationCondition(girar-sela-erguer-bastao,sanction17).
thisShortConsequenceStopAllGoal(short06).
hasShortConsequence(sanction17,short06).
riskIsAssociateWith(short06,levantamento_transporte_manual_peso,baixa_fatalidade).
riskIsAssociateWith(short06,esforco_fisico_intenso,baixa_fatalidade).
riskIsAssociateWith(short06,radiacao_nao_ionizante).
riskIsAssociateWith(short06,risco_ergonimico,baixa_fatalidade).
riskIsAssociateWith(short06,animais_peconhentos,media_fatalidade).
riskIsAssociateWith(short06,eletricidade,fatalidade_elevada).


relationCondition(enforcar-estopo-alto-isolador,sanction18).
thisShortConsequenceStopAllGoal(short07).
hasShortConsequence(sanction18,short07).
riskIsAssociateWith(short07,levantamento_transporte_manual_peso,baixa_fatalidade).
riskIsAssociateWith(short07,esforco_fisico_intenso,baixa_fatalidade).
riskIsAssociateWith(short07,radiacao_nao_ionizante).
riskIsAssociateWith(short07,risco_ergonimico,baixa_fatalidade).
riskIsAssociateWith(short07,animais_peconhentos,media_fatalidade).
riskIsAssociateWith(short07,eletricidade,fatalidade_elevada).


relationCondition(conectar-corda-estopo,sanction19).
thisShortConsequenceStopAllGoal(short08).
hasShortConsequence(sanction19,short08).
riskIsAssociateWith(short08,levantamento_transporte_manual_peso,baixa_fatalidade).
riskIsAssociateWith(short08,esforco_fisico_intenso,baixa_fatalidade).
riskIsAssociateWith(short08,radiacao_nao_ionizante).
riskIsAssociateWith(short08,risco_ergonimico,baixa_fatalidade).
riskIsAssociateWith(short08,animais_peconhentos,media_fatalidade).
riskIsAssociateWith(short08,eletricidade,fatalidade_elevada).


relationCondition(operacao-isolador-pedestal,sanction20).
thisShortConsequenceStopAllGoal(short09).
hasShortConsequence(sanction20,short09).
riskIsAssociateWith(short09,levantamento_transporte_manual_peso,baixa_fatalidade).
riskIsAssociateWith(short09,esforco_fisico_intenso,baixa_fatalidade).
riskIsAssociateWith(short09,radiacao_nao_ionizante).
riskIsAssociateWith(short09,risco_ergonimico,baixa_fatalidade).
riskIsAssociateWith(short09,animais_peconhentos,media_fatalidade).
riskIsAssociateWith(short09,eletricidade,fatalidade_elevada).

relationCondition(bastao-universal-chave-catraca-saltar-parafusos,sanction21).
thisShortConsequenceStopAllGoal(short10).
hasShortConsequence(sanction21,short10).
riskIsAssociateWith(short10,levantamento_transporte_manual_peso,baixa_fatalidade).
riskIsAssociateWith(short10,esforco_fisico_intenso,baixa_fatalidade).
riskIsAssociateWith(short10,radiacao_nao_ionizante).
riskIsAssociateWith(short10,risco_ergonimico,baixa_fatalidade).
riskIsAssociateWith(short10,animais_peconhentos,media_fatalidade).
riskIsAssociateWith(short10,eletricidade,fatalidade_elevada).



relationCondition(retirar-parafuso-cima,sanction22).
thisShortConsequenceStopAllGoal(short11).
hasShortConsequence(sanction22,short11).
riskIsAssociateWith(short11,levantamento_transporte_manual_peso,baixa_fatalidade).
riskIsAssociateWith(short11,esforco_fisico_intenso,baixa_fatalidade).
riskIsAssociateWith(short11,radiacao_nao_ionizante).
riskIsAssociateWith(short11,risco_ergonimico,baixa_fatalidade).
riskIsAssociateWith(short11,animais_peconhentos,media_fatalidade).
riskIsAssociateWith(short11,eletricidade,fatalidade_elevada).


allGoalHasNewProbabilityMinus(long04,sinalizacao,75).
hasLongConsequence(sanction04,long04).
relationCondition(procedimentos-iniciais,sanction04).
relationCondition(tencionar-corda-estopo,sanction23).
thisShortConsequenceStopAllGoal(short12).
hasShortConsequence(sanction23,short12).
riskIsAssociateWith(short12,levantamento_transporte_manual_peso,baixa_fatalidade).
riskIsAssociateWith(short12,esforco_fisico_intenso,baixa_fatalidade).
riskIsAssociateWith(short12,radiacao_nao_ionizante).
riskIsAssociateWith(short12,risco_ergonimico,baixa_fatalidade).
riskIsAssociateWith(short12,animais_peconhentos,media_fatalidade).
riskIsAssociateWith(short12,eletricidade,fatalidade_elevada).


relationCondition(tirar-parafusos-baixo-isolador-chave-catraca,sanction25).
thisShortConsequenceStopAllGoal(short13).
hasShortConsequence(sanction25,short13).
riskIsAssociateWith(short13,levantamento_transporte_manual_peso,baixa_fatalidade).
riskIsAssociateWith(short13,esforco_fisico_intenso,baixa_fatalidade).
riskIsAssociateWith(short13,radiacao_nao_ionizante).
riskIsAssociateWith(short13,risco_ergonimico,baixa_fatalidade).
riskIsAssociateWith(short13,animais_peconhentos,media_fatalidade).
riskIsAssociateWith(short13,eletricidade,fatalidade_elevada).


relationCondition(passar-corda-base-isolador-chave-catraca,sanction26).
thisShortConsequenceStopAllGoal(short14).
hasShortConsequence(sanction26,short14).
riskIsAssociateWith(short14,levantamento_transporte_manual_peso,baixa_fatalidade).
riskIsAssociateWith(short14,esforco_fisico_intenso,baixa_fatalidade).
riskIsAssociateWith(short14,radiacao_nao_ionizante).
riskIsAssociateWith(short14,risco_ergonimico,baixa_fatalidade).
riskIsAssociateWith(short14,animais_peconhentos,media_fatalidade).
riskIsAssociateWith(short14,eletricidade,fatalidade_elevada).


relationCondition(corda-erguer-isolador,sanction27).
thisShortConsequenceStopAllGoal(short15).
hasShortConsequence(sanction27,short15).
riskIsAssociateWith(short15,levantamento_transporte_manual_peso,baixa_fatalidade).
riskIsAssociateWith(short15,esforco_fisico_intenso,baixa_fatalidade).
riskIsAssociateWith(short15,radiacao_nao_ionizante).
riskIsAssociateWith(short15,risco_ergonimico,baixa_fatalidade).
riskIsAssociateWith(short15,animais_peconhentos,media_fatalidade).
riskIsAssociateWith(short15,eletricidade,fatalidade_elevada).


relationCondition(retirar-isolador-antigo,sanction28).
thisShortConsequenceStopAllGoal(short16).
hasShortConsequence(sanction28,short16).
riskIsAssociateWith(short16,levantamento_transporte_manual_peso,baixa_fatalidade).
riskIsAssociateWith(short16,esforco_fisico_intenso,baixa_fatalidade).
riskIsAssociateWith(short16,radiacao_nao_ionizante).
riskIsAssociateWith(short16,risco_ergonimico,baixa_fatalidade).
riskIsAssociateWith(short16,animais_peconhentos,media_fatalidade).
riskIsAssociateWith(short16,eletricidade,fatalidade_elevada).


relationCondition(estopo-isolador,sanction29).
thisShortConsequenceStopAllGoal(short17).
hasShortConsequence(sanction29,short17).
riskIsAssociateWith(short17,levantamento_transporte_manual_peso,baixa_fatalidade).
riskIsAssociateWith(short17,esforco_fisico_intenso,baixa_fatalidade).
riskIsAssociateWith(short17,radiacao_nao_ionizante).
riskIsAssociateWith(short17,risco_ergonimico,baixa_fatalidade).
riskIsAssociateWith(short17,animais_peconhentos,media_fatalidade).
riskIsAssociateWith(short17,eletricidade,fatalidade_elevada).


relationCondition(suspender-isolador,sanction30).
thisShortConsequenceStopAllGoal(short18).
hasShortConsequence(sanction30,short18).
riskIsAssociateWith(short18,levantamento_transporte_manual_peso,baixa_fatalidade).
riskIsAssociateWith(short18,esforco_fisico_intenso,baixa_fatalidade).
riskIsAssociateWith(short18,radiacao_nao_ionizante).
riskIsAssociateWith(short18,risco_ergonimico,baixa_fatalidade).
riskIsAssociateWith(short18,animais_peconhentos,media_fatalidade).
riskIsAssociateWith(short18,eletricidade,fatalidade_elevada).


relationCondition(engate-corda-guia,sanction31).
thisShortConsequenceStopAllGoal(short19).
hasShortConsequence(sanction31,short19).
riskIsAssociateWith(short19,levantamento_transporte_manual_peso,baixa_fatalidade).
riskIsAssociateWith(short19,esforco_fisico_intenso,baixa_fatalidade).
riskIsAssociateWith(short19,radiacao_nao_ionizante).
riskIsAssociateWith(short19,risco_ergonimico,baixa_fatalidade).
riskIsAssociateWith(short19,animais_peconhentos,media_fatalidade).
riskIsAssociateWith(short19,eletricidade,fatalidade_elevada).


relationCondition(icar-isolador,sanction32).
thisShortConsequenceStopAllGoal(short20).
hasShortConsequence(sanction32,short20).
riskIsAssociateWith(short20,levantamento_transporte_manual_peso,baixa_fatalidade).
riskIsAssociateWith(short20,esforco_fisico_intenso,baixa_fatalidade).
riskIsAssociateWith(short20,radiacao_nao_ionizante).
riskIsAssociateWith(short20,risco_ergonimico,baixa_fatalidade).
riskIsAssociateWith(short20,animais_peconhentos,media_fatalidade).
riskIsAssociateWith(short20,eletricidade,fatalidade_elevada).


relationCondition(parafusar-isolador-coluna-chave-catraca,sanction33).
thisShortConsequenceStopAllGoal(short21).
hasShortConsequence(sanction33,short21).
riskIsAssociateWith(short21,levantamento_transporte_manual_peso,baixa_fatalidade).
riskIsAssociateWith(short21,esforco_fisico_intenso,baixa_fatalidade).
riskIsAssociateWith(short21,radiacao_nao_ionizante).
riskIsAssociateWith(short21,risco_ergonimico,baixa_fatalidade).
riskIsAssociateWith(short21,animais_peconhentos,media_fatalidade).
riskIsAssociateWith(short21,eletricidade,fatalidade_elevada).


relationCondition(fechar-conector-bastao-universal,sanction34).
thisShortConsequenceStopAllGoal(short22).
hasShortConsequence(sanction34,short22).
riskIsAssociateWith(short22,levantamento_transporte_manual_peso,baixa_fatalidade).
riskIsAssociateWith(short22,esforco_fisico_intenso,baixa_fatalidade).
riskIsAssociateWith(short22,radiacao_nao_ionizante).
riskIsAssociateWith(short22,risco_ergonimico,baixa_fatalidade).
riskIsAssociateWith(short22,animais_peconhentos,media_fatalidade).
riskIsAssociateWith(short22,eletricidade,fatalidade_elevada).


relationCondition(desconectar-batao-garra-conector,sanction35).
thisShortConsequenceStopAllGoal(short23).
hasShortConsequence(sanction35,short23).
riskIsAssociateWith(short23,levantamento_transporte_manual_peso,baixa_fatalidade).
riskIsAssociateWith(short23,esforco_fisico_intenso,baixa_fatalidade).
riskIsAssociateWith(short23,radiacao_nao_ionizante).
riskIsAssociateWith(short23,risco_ergonimico,baixa_fatalidade).
riskIsAssociateWith(short23,animais_peconhentos,media_fatalidade).
riskIsAssociateWith(short23,eletricidade,fatalidade_elevada).


relationCondition(retirar-bastao-garra,sanction36).
thisShortConsequenceStopAllGoal(short24).
hasShortConsequence(sanction36,short24).
riskIsAssociateWith(short24,levantamento_transporte_manual_peso,baixa_fatalidade).
riskIsAssociateWith(short24,esforco_fisico_intenso,baixa_fatalidade).
riskIsAssociateWith(short24,radiacao_nao_ionizante).
riskIsAssociateWith(short24,risco_ergonimico,baixa_fatalidade).
riskIsAssociateWith(short24,animais_peconhentos,media_fatalidade).
riskIsAssociateWith(short24,eletricidade,fatalidade_elevada).


relationCondition(retirar-sela-colar-bastao-garra-lado-1,sanction37).
thisShortConsequenceStopAllGoal(short25).
hasShortConsequence(sanction37,short25).
riskIsAssociateWith(short25,levantamento_transporte_manual_peso,baixa_fatalidade).
riskIsAssociateWith(short25,esforco_fisico_intenso,baixa_fatalidade).
riskIsAssociateWith(short25,radiacao_nao_ionizante).
riskIsAssociateWith(short25,risco_ergonimico,baixa_fatalidade).
riskIsAssociateWith(short25,animais_peconhentos,media_fatalidade).
riskIsAssociateWith(short25,eletricidade,fatalidade_elevada).


relationCondition(retirar-estopo-isolador,sanction38).
thisShortConsequenceStopAllGoal(short26).
hasShortConsequence(sanction38,short26).
riskIsAssociateWith(short26,levantamento_transporte_manual_peso,baixa_fatalidade).
riskIsAssociateWith(short26,esforco_fisico_intenso,baixa_fatalidade).
riskIsAssociateWith(short26,radiacao_nao_ionizante).
riskIsAssociateWith(short26,risco_ergonimico,baixa_fatalidade).
riskIsAssociateWith(short26,animais_peconhentos,media_fatalidade).
riskIsAssociateWith(short26,eletricidade,fatalidade_elevada).


relationCondition(retirar-sela-colar-bastao-garra-lado-2,sanction39).
thisShortConsequenceStopAllGoal(short27).
hasShortConsequence(sanction39,short27).
riskIsAssociateWith(short27,levantamento_transporte_manual_peso,baixa_fatalidade).
riskIsAssociateWith(short27,esforco_fisico_intenso,baixa_fatalidade).
riskIsAssociateWith(short27,radiacao_nao_ionizante).
riskIsAssociateWith(short27,risco_ergonimico,baixa_fatalidade).
riskIsAssociateWith(short27,animais_peconhentos,media_fatalidade).
riskIsAssociateWith(short27,eletricidade,fatalidade_elevada).


relationCondition(recolher-equipamento,sanction40).
thisShortConsequenceStopAllGoal(short28).
hasShortConsequence(sanction40,short28).
riskIsAssociateWith(short28,levantamento_transporte_manual_peso,baixa_fatalidade).
riskIsAssociateWith(short28,esforco_fisico_intenso,baixa_fatalidade).
riskIsAssociateWith(short28,radiacao_nao_ionizante).
riskIsAssociateWith(short28,risco_ergonimico,baixa_fatalidade).
riskIsAssociateWith(short28,animais_peconhentos,media_fatalidade).


allGoalHasNewProbabilityMinus(long13,supervisao,50).
hasLongConsequence(sanction41,long13).
relationCondition(supervisao,sanction41).


allGoalHasNewProbabilityMinus(long14,observacao,50).
hasLongConsequence(sanction42,long14).
relationCondition(observacao,sanction42).
