create table verbs
(
    id   int auto_increment
        primary key,
    col2 text not null,
    constraint verbs_col2_uindex
        unique (col2) using hash,
    constraint verbs_id_uindex
        unique (id)
);

INSERT INTO mixedmessages.verbs (id, col2) VALUES (1, 'driving');
INSERT INTO mixedmessages.verbs (id, col2) VALUES (2, 'talking to');
INSERT INTO mixedmessages.verbs (id, col2) VALUES (3, 'singing to');
INSERT INTO mixedmessages.verbs (id, col2) VALUES (4, 'running away from');
INSERT INTO mixedmessages.verbs (id, col2) VALUES (5, 'loving');
INSERT INTO mixedmessages.verbs (id, col2) VALUES (6, 'jumping on');
INSERT INTO mixedmessages.verbs (id, col2) VALUES (7, 'avoiding');
INSERT INTO mixedmessages.verbs (id, col2) VALUES (8, 'walking towards');
INSERT INTO mixedmessages.verbs (id, col2) VALUES (9, 'screaming at');
INSERT INTO mixedmessages.verbs (id, col2) VALUES (10, 'digging a hole to');
INSERT INTO mixedmessages.verbs (id, col2) VALUES (11, 'apologizing to');
INSERT INTO mixedmessages.verbs (id, col2) VALUES (12, 'crawling towards');
INSERT INTO mixedmessages.verbs (id, col2) VALUES (13, 'painting on');
INSERT INTO mixedmessages.verbs (id, col2) VALUES (14, 'trying to understand');
INSERT INTO mixedmessages.verbs (id, col2) VALUES (15, 'talking about');
INSERT INTO mixedmessages.verbs (id, col2) VALUES (16, 'singing about');
INSERT INTO mixedmessages.verbs (id, col2) VALUES (17, 'eyeballing');
INSERT INTO mixedmessages.verbs (id, col2) VALUES (18, 'eating with');
INSERT INTO mixedmessages.verbs (id, col2) VALUES (19, 'bullshitting');
INSERT INTO mixedmessages.verbs (id, col2) VALUES (20, 'defining');
INSERT INTO mixedmessages.verbs (id, col2) VALUES (21, 'drinking with');
INSERT INTO mixedmessages.verbs (id, col2) VALUES (22, 'meditating on');
INSERT INTO mixedmessages.verbs (id, col2) VALUES (23, 'meditating with');
INSERT INTO mixedmessages.verbs (id, col2) VALUES (24, 'smelling');
INSERT INTO mixedmessages.verbs (id, col2) VALUES (25, 'swimming with');
INSERT INTO mixedmessages.verbs (id, col2) VALUES (26, 'playing with');
INSERT INTO mixedmessages.verbs (id, col2) VALUES (27, 'flying over');
INSERT INTO mixedmessages.verbs (id, col2) VALUES (28, 'reading');
