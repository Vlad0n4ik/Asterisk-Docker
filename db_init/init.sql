USE asterisk_db;

CREATE TABLE ps_endpoints (
    id VARCHAR(40) NOT NULL,
    transport VARCHAR(40),
    aors VARCHAR(40),
    auth VARCHAR(40),
    context VARCHAR(40),
    disallow VARCHAR(40),
    allow VARCHAR(40),
    direct_media ENUM('yes','no'),
    PRIMARY KEY (id)
);

CREATE TABLE ps_auths (
    id VARCHAR(40) NOT NULL,
    auth_type ENUM('userpass'),
    password VARCHAR(80),
    username VARCHAR(80),
    PRIMARY KEY (id)
);

CREATE TABLE ps_aors (
    id VARCHAR(40) NOT NULL,
    max_contacts INTEGER,
    remove_existing ENUM('yes','no'),
    PRIMARY KEY (id)
);

INSERT INTO ps_endpoints (id, transport, aors, auth, context, disallow, allow) 
VALUES ('user1', 'transport-udp', '101', '101', 'from-internal', 'all', 'ulaw,alaw');

INSERT INTO ps_auths (id, auth_type, password, username) 
VALUES ('user1', 'userpass', '12345', '101');

INSERT INTO ps_aors (id, max_contacts, remove_existing) 
VALUES ('user1', 1, 'yes');