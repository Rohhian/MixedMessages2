create table apikeys
(
    id     int auto_increment
        primary key,
    apikey text not null,
    constraint apikeys_id_uindex
        unique (id),
    constraint apikeys_key_uindex
        unique (apikey) using hash
);

INSERT INTO mixedmessages.apikeys (id, apikey) VALUES (1, 'd6f56cedf610268e3dd337059d69cc1b');
