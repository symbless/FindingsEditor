-- Table: public.diag_category

-- DROP TABLE public.diag_category;

CREATE TABLE public.diag_category
(
  id integer NOT NULL,
  start_no integer NOT NULL,
  end_no integer,
  name_eng character varying(50),
  name_jp character varying(50),
  bt_order smallint,
  visible boolean,
  name_ar character varying(50),
  name_bg character varying(50),
  name_hr character varying(50),
  name_cs character varying(50),
  name_da character varying(50),
  name_nl character varying(50),
  name_et character varying(50),
  name_fi character varying(50),
  name_fr character varying(50),
  name_de character varying(50),
  name_el character varying(50),
  name_he character varying(50),
  name_hu character varying(50),
  name_it character varying(50),
  name_ko character varying(50),
  name_lv character varying(50),
  name_lt character varying(50),
  name_no character varying(50),
  name_pl character varying(50),
  name_pt_br character varying(50),
  name_pt_pt character varying(50),
  name_ro character varying(50),
  name_ru character varying(50),
  name_sr character varying(50),
  name_han_s character varying(50),
  name_sk character varying(50),
  name_sl character varying(50),
  name_es character varying(50),
  name_sv character varying(50),
  name_th character varying(50),
  name_han_t character varying(50),
  name_tr character varying(50),
  name_uk character varying(50),
  CONSTRAINT diag_category_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=TRUE
);
ALTER TABLE public.diag_category
  OWNER TO postgres;
GRANT ALL ON TABLE public.diag_category TO postgres;
GRANT SELECT ON TABLE public.diag_category TO not_login_role;

insert into diag_category(
    id
    , start_no
    , end_no
    , name_eng
    , name_jp
    , bt_order
    , visible)
    values(
    1000
    , 1000
    , 1000
    , 'Laryngopharynx'
    , 'τAͺ'
    , 0
    , true
    )
    ;

insert into diag_category(
    id
    , start_no
    , end_no
    , name_eng
    , name_jp
    , bt_order
    , visible)
    values(
    1001
    , 1000
    , 1999
    , 'Laryngopharynx'
    , 'τAͺ'
    , 1
    , true
    )
    ;

insert into diag_category(
    id
    , start_no
    , end_no
    , name_eng
    , name_jp
    , bt_order
    , visible)
    values(
    2000
    , 2000
    , 2000
    , 'Esophagus'
    , 'HΉ'
    , 0
    , true
    )
    ;

insert into diag_category(
    id
    , start_no
    , end_no
    , name_eng
    , name_jp
    , bt_order
    , visible)
    values(
    2001
    , 2000
    , 2999
    , 'Inflammation'
    , 'Η'
    , 1
    , true
    )
    ;

insert into diag_category(
    id
    , start_no
    , end_no
    , name_eng
    , name_jp
    , bt_order
    , visible)
    values(
    3000
    , 3000
    , 3999
    , 'Tumor'
    , 'ξα'
    , 2
    , true
    )
    ;

insert into diag_category(
    id
    , start_no
    , end_no
    , name_eng
    , name_jp
    , bt_order
    , visible)
    values(
    4000
    , 4000
    , 4999
    , 'Other'
    , '»ΜΌ'
    , 3
    , true
    )
    ;

insert into diag_category(
    id
    , start_no
    , end_no
    , name_eng
    , name_jp
    , bt_order
    , visible)
    values(
    5000
    , 5000
    , 5000
    , 'Stomach'
    , 'έ'
    , 0
    , true
    )
    ;

insert into diag_category(
    id
    , start_no
    , end_no
    , name_eng
    , name_jp
    , bt_order
    , visible)
    values(
    5001
    , 5000
    , 5999
    , 'Inflammation'
    , 'Η'
    , 1
    , true
    )
    ;

insert into diag_category(
    id
    , start_no
    , end_no
    , name_eng
    , name_jp
    , bt_order
    , visible)
    values(
    6000
    , 6000
    , 6999
    , 'Tumor'
    , 'ξα'
    , 2
    , true
    )
    ;

insert into diag_category(
    id
    , start_no
    , end_no
    , name_eng
    , name_jp
    , bt_order
    , visible)
    values(
    7000
    , 7000
    , 7999
    , 'Other'
    , '»ΜΌ'
    , 3
    , true
    )
    ;

insert into diag_category(
    id
    , start_no
    , end_no
    , name_eng
    , name_jp
    , bt_order
    , visible)
    values(
    10000
    , 10000
    , 10000
    , 'Duodenum'
    , '\ρw°'
    , 0
    , true
    )
    ;

insert into diag_category(
    id
    , start_no
    , end_no
    , name_eng
    , name_jp
    , bt_order
    , visible)
    values(
    10001
    , 10000
    , 10999
    , 'Duodenum'
    , '\ρw°'
    , 1
    , true
    )
    ;

insert into diag_category(
    id
    , start_no
    , end_no
    , name_eng
    , name_jp
    , bt_order
    , visible)
    values(
    20000
    , 20000
    , 20999
    , 'Side View'
    , '€Ύ'
    , 2
    , true
    )
    ;

insert into diag_category(
    id
    , start_no
    , end_no
    , name_eng
    , name_jp
    , bt_order
    , visible)
    values(
    30000
    , 30000
    , 30000
    , 'Small bowel'
    , '¬°'
    , 0
    , true
    )
    ;

insert into diag_category(
    id
    , start_no
    , end_no
    , name_eng
    , name_jp
    , bt_order
    , visible)
    values(
    30001
    , 30000
    , 39999
    , 'Small bowel'
    , '¬°'
    , 1
    , true
    )
    ;

insert into diag_category(
    id
    , start_no
    , end_no
    , name_eng
    , name_jp
    , bt_order
    , visible)
    values(
    40000
    , 40000
    , 40000
    , 'Colon'
    , 'ε°'
    , 0
    , true
    )
    ;

insert into diag_category(
    id
    , start_no
    , end_no
    , name_eng
    , name_jp
    , bt_order
    , visible)
    values(
    40001
    , 40000
    , 49999
    , 'Inflammation'
    , 'Η'
    , 1
    , true
    )
    ;

insert into diag_category(
    id
    , start_no
    , end_no
    , name_eng
    , name_jp
    , bt_order
    , visible)
    values(
    50000
    , 50000
    , 59999
    , 'Tumor'
    , 'ξα'
    , 2
    , true
    )
    ;

insert into diag_category(
    id
    , start_no
    , end_no
    , name_eng
    , name_jp
    , bt_order
    , visible)
    values(
    60000
    , 60000
    , 69999
    , 'Other'
    , '»ΜΌ'
    , 3
    , true
    )
    ;

insert into diag_category(
    id
    , start_no
    , end_no
    , name_eng
    , name_jp
    , bt_order
    , visible)
    values(
    70000
    , 70000
    , 70000
    , 'Anus'
    , 'γθε'
    , 0
    , true
    )
    ;

insert into diag_category(
    id
    , start_no
    , end_no
    , name_eng
    , name_jp
    , bt_order
    , visible)
    values(
    70001
    , 70000
    , 79999
    , 'Anus'
    , 'γθε'
    , 1
    , true
    )
    ;

insert into diag_category(
    id
    , start_no
    , end_no
    , name_eng
    , name_jp
    , bt_order
    , visible)
    values(
    100000
    , 100000
    , 100000
    , 'Procedure'
    , 'θZ'
    , 0
    , true
    )
    ;

insert into diag_category(
    id
    , start_no
    , end_no
    , name_eng
    , name_jp
    , bt_order
    , visible)
    values(
    100001
    , 100000
    , 109999
    , 'Procedure'
    , 'θZ'
    , 1
    , true
    )
    ;

insert into diag_category(
    id
    , start_no
    , end_no
    , name_eng
    , name_jp
    , bt_order
    , visible)
    values(
    200000
    , 200000
    , 200000
    , 'Study'
    , '€'
    , 0
    , true
    )
    ;

insert into diag_category(
    id
    , start_no
    , end_no
    , name_eng
    , name_jp
    , bt_order
    , visible)
    values(
    200001
    , 200000
    , 299999
    , 'Study'
    , '€'
    , 1
    , true
    )
    ;

insert into diag_category(
    id
    , start_no
    , end_no
    , name_eng
    , name_jp
    , bt_order
    , visible)
    values(
    300000
    , 300000
    , 300000
    , 'Broncho'
    , 'CΗxΎ'
    , 0
    , true
    )
    ;

insert into diag_category(
    id
    , start_no
    , end_no
    , name_eng
    , name_jp
    , bt_order
    , visible)
    values(
    300001
    , 300000
    , 399999
    , 'Broncho'
    , 'CΗxΎ'
    , 1
    , true
    )
    ;

insert into diag_category(
    id
    , start_no
    , end_no
    , name_eng
    , name_jp
    , bt_order
    , visible)
    values(
    1000000
    , 1000000
    , 1000000
    , 'Abdomen'
    , ' '
    , 0
    , true
    )
    ;

insert into diag_category(
    id
    , start_no
    , end_no
    , name_eng
    , name_jp
    , bt_order
    , visible)
    values(
    1010000
    , 1010001
    , 1019999
    , 'Gallbladder'
    , '_X'
    , 1
    , true
    )
    ;

insert into diag_category(
    id
    , start_no
    , end_no
    , name_eng
    , name_jp
    , bt_order
    , visible)
    values(
    1020000
    , 1020001
    , 1029999
    , 'Extrahepatic bile duct'
    , 'ΜO_Η'
    , 2
    , true
    )
    ;

insert into diag_category(
    id
    , start_no
    , end_no
    , name_eng
    , name_jp
    , bt_order
    , visible)
    values(
    1030000
    , 1030001
    , 1039999
    , 'Liver'
    , 'Μ'
    , 3
    , true
    )
    ;

insert into diag_category(
    id
    , start_no
    , end_no
    , name_eng
    , name_jp
    , bt_order
    , visible)
    values(
    1040000
    , 1040001
    , 1049999
    , 'Spleen'
    , 'δB'
    , 1
    , true
    )
    ;

insert into diag_category(
    id
    , start_no
    , end_no
    , name_eng
    , name_jp
    , bt_order
    , visible)
    values(
    1050000
    , 1050001
    , 1059999
    , 'Pancreas'
    , 'δX'
    , 2
    , true
    )
    ;

insert into diag_category(
    id
    , start_no
    , end_no
    , name_eng
    , name_jp
    , bt_order
    , visible)
    values(
    1060000
    , 1060001
    , 1069999
    , 'Kidney'
    , 't'
    , 3
    , true
    )
    ;
