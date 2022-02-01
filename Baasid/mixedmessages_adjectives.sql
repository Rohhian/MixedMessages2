create table adjectives
(
    id   int auto_increment
        primary key,
    col2 text not null,
    constraint adjectives_col2_uindex
        unique (col2) using hash,
    constraint adjectives_id_uindex
        unique (id)
);

INSERT INTO mixedmessages.adjectives (id, col2) VALUES (1, 'red');
INSERT INTO mixedmessages.adjectives (id, col2) VALUES (2, 'green');
INSERT INTO mixedmessages.adjectives (id, col2) VALUES (3, 'violet');
INSERT INTO mixedmessages.adjectives (id, col2) VALUES (4, 'blue');
INSERT INTO mixedmessages.adjectives (id, col2) VALUES (5, 'yellow');
INSERT INTO mixedmessages.adjectives (id, col2) VALUES (6, 'angry');
INSERT INTO mixedmessages.adjectives (id, col2) VALUES (7, 'friendly');
INSERT INTO mixedmessages.adjectives (id, col2) VALUES (8, 'heavy');
INSERT INTO mixedmessages.adjectives (id, col2) VALUES (9, 'lightweight');
INSERT INTO mixedmessages.adjectives (id, col2) VALUES (10, 'fat');
INSERT INTO mixedmessages.adjectives (id, col2) VALUES (11, 'skinny');
INSERT INTO mixedmessages.adjectives (id, col2) VALUES (12, 'shitty');
INSERT INTO mixedmessages.adjectives (id, col2) VALUES (13, 'amazing');
INSERT INTO mixedmessages.adjectives (id, col2) VALUES (14, 'sleepy');
INSERT INTO mixedmessages.adjectives (id, col2) VALUES (15, 'sexy');
INSERT INTO mixedmessages.adjectives (id, col2) VALUES (16, 'drunk');
INSERT INTO mixedmessages.adjectives (id, col2) VALUES (17, 'sad');
INSERT INTO mixedmessages.adjectives (id, col2) VALUES (18, 'happy');
INSERT INTO mixedmessages.adjectives (id, col2) VALUES (19, 'fabulous');
INSERT INTO mixedmessages.adjectives (id, col2) VALUES (20, 'unimaginative');
INSERT INTO mixedmessages.adjectives (id, col2) VALUES (21, 'unbelievable');
INSERT INTO mixedmessages.adjectives (id, col2) VALUES (22, 'unhappy');
INSERT INTO mixedmessages.adjectives (id, col2) VALUES (23, 'normal');
INSERT INTO mixedmessages.adjectives (id, col2) VALUES (24, 'crazy');
INSERT INTO mixedmessages.adjectives (id, col2) VALUES (25, 'bipolar');
INSERT INTO mixedmessages.adjectives (id, col2) VALUES (26, 'honest');
INSERT INTO mixedmessages.adjectives (id, col2) VALUES (27, 'fearless');
INSERT INTO mixedmessages.adjectives (id, col2) VALUES (28, 'fantastic');
INSERT INTO mixedmessages.adjectives (id, col2) VALUES (29, 'smelly');
INSERT INTO mixedmessages.adjectives (id, col2) VALUES (30, 'poor');
INSERT INTO mixedmessages.adjectives (id, col2) VALUES (31, 'rich');
INSERT INTO mixedmessages.adjectives (id, col2) VALUES (32, 'beautiful');
INSERT INTO mixedmessages.adjectives (id, col2) VALUES (33, 'ugly');
