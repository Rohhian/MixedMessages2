create table who
(
    id   int auto_increment
        primary key,
    col2 text not null,
    constraint who_col2_uindex
        unique (col2) using hash,
    constraint who_id_uindex
        unique (id)
);

INSERT INTO mixedmessages.who (id, col2) VALUES (1, 'Your');
INSERT INTO mixedmessages.who (id, col2) VALUES (2, 'His');
INSERT INTO mixedmessages.who (id, col2) VALUES (3, 'Her');
INSERT INTO mixedmessages.who (id, col2) VALUES (4, 'Their');
INSERT INTO mixedmessages.who (id, col2) VALUES (5, 'Our');
