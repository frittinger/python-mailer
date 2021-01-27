CREATE TABLE obj.queue_table
(
    id integer NOT NULL DEFAULT nextval('obj.queue_table_id_seq'::regclass),
    mail_to character varying COLLATE pg_catalog."default" NOT NULL,
    reply_to character varying COLLATE pg_catalog."default" NOT NULL,
    subject character varying COLLATE pg_catalog."default" NOT NULL,
    data character varying COLLATE pg_catalog."default" NOT NULL,
    data_type integer,
    created_at timestamp without time zone NOT NULL,
    processed_at timestamp without time zone,
    CONSTRAINT queue_table_pkey PRIMARY KEY (id)
)

    TABLESPACE pg_default;

INSERT INTO obj.queue_table(mail_to, reply_to, subject, data, data_type, created_at, processed_at) VALUES ('frank@schnegg.net', 'frank@schnegg.net', 'Mail Subject 1', 'Mail data 1', 0, NOW(), NULL);
INSERT INTO obj.queue_table(mail_to, reply_to, subject, data, data_type, created_at, processed_at) VALUES ('frank@schnegg.net', 'frank@schnegg.net', 'Mail Subject 2', 'Mail data 2', 0, NOW(), NULL);
INSERT INTO obj.queue_table(mail_to, reply_to, subject, data, data_type, created_at, processed_at) VALUES ('frank@schnegg.net', 'frank@schnegg.net', 'Mail Subject 3', 'Mail data 3', 0, NOW(), NULL);
INSERT INTO obj.queue_table(mail_to, reply_to, subject, data, data_type, created_at, processed_at) VALUES ('frank@schnegg.net', 'frank@schnegg.net', 'Mail Subject 3', 'Mail data 3', 0, NOW(), NULL);
