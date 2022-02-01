create table nouns
(
    id   int auto_increment
        primary key,
    col2 text not null,
    constraint nouns_col1_uindex
        unique (col2) using hash,
    constraint nouns_id_uindex
        unique (id)
);

INSERT INTO mixedmessages.nouns (id, col2) VALUES (1, 'car');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (2, 'plane');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (3, 'cat');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (4, 'dog');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (5, 'house');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (6, 'bike');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (7, 'road');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (8, 'man');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (9, 'woman');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (10, 'child');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (11, 'friend');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (12, 'enemy');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (13, 'student');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (14, 'teacher');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (15, 'politician');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (16, 'gangsta');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (17, 'doctor');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (18, 'chemist');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (19, 'developer');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (20, 'wallet');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (21, 'dancer');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (22, 'pilot');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (23, 'priest');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (24, 'biker');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (25, 'book');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (26, 'monkey');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (27, 'bird');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (28, 'bullshitter');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (29, 'variable');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (30, 'yogi');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (31, 'fan');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (32, 'businessman');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (33, 'soldier');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (34, 'skunk');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (35, 'businesswoman');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (36, 'poor');
INSERT INTO mixedmessages.nouns (id, col2) VALUES (37, 'rich');
