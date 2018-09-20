create table if not exists artefact
(
	id int not null primary key auto_increment,
    extends_entity_id int not null, 
    constraint FK_Extend foreign key (extends_entity_id) references entity(id)
);

create table if not exists object
(
	id int not null primary key auto_increment,
    extends_artefact_id int not null, 
    constraint extends foreign key (extends_artefact_id) references artefact(id)
);

create table if not exists tool
(
	id int not null primary key auto_increment,
    extends_artefact_id int not null, 
    constraint extends_tool foreign key (extends_artefact_id) references artefact(id)
);

create table if not exists in_that_instant
(
	id int not null primary key auto_increment,
	entity_id int not null,
    constraint fk_inthatinstant_entity_id foreign key (entity_id) references entity(id),
    situation varchar(255) default null,
    position_x float default null,
    position_y float default null,
    position_z float default null
);

create table if not exists agent
(
	id int not null primary key auto_increment,
	extend_entity_id int not null,
    constraint fk_extend_agent_entity_id foreign key (extend_entity_id) references entity(id)
);


create table if not exists relation_tool_object
(
	id int not null primary key auto_increment,
    tool_id int not null, 
    constraint fk_relation_tool_object_tool foreign key (tool_id) references tool(id),
    object_id int not null, 
    constraint fk_relation_tool_object_object foreign key (object_id) references object(id)
);


create table if not exists relation_agent_tool
(
	id int not null primary key auto_increment,
    agent_id int not null, 
    constraint fk_relation_agent_tool_agent foreign key (agent_id) references tool(id),
    object_id int not null, 
    constraint fk_relation_agent_tool_tool foreign key (object_id) references object(id)
);


create table if not exists group_safety
(
	id int not null primary key auto_increment,
    type_group enum('green','red','brown','yellow','blue'),
    description_risk varchar(255) not null
);

create table if not exists short_consequence
(
	id int not null primary key auto_increment,
    description_risk_this_situation varchar(255) not null,
    fatality_condition enum('0','1','2','3','4','5','6','7','8','9','10'),
    group_safety_id int not null,
    constraint fk_risk_groupsafaty foreign key (group_safety_id) references group_safety(id)
);

create table if not exists long_consequence
(
	id int not null primary key auto_increment
);


create table if not exists sanction
(
	id int not null primary key auto_increment,
    short_consequence_id int default null,
    constraint fk_sanction_contraint_short_consequence foreign key (short_consequence_id) references short_consequence(id),
    long_consequence_id int default null,
    constraint fk_sanction_contraint_long_consequence foreign key (long_consequence_id) references long_consequence(id)
)