SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Ubuntu 15.1-1.pgdg20.04+1)
-- Dumped by pg_dump version 15.5 (Ubuntu 15.5-1.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--



--
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."countries_id_seq"', 1, false);


--
-- Name: employees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."employees_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;

insert into public.countries (name,iso2,iso3,local_name,continent) values
  ('Bonaire, Sint Eustatius and Saba','BQ','BES',null,null),
  ('Curaçao','CW','CUW',null,null),
  ('Guernsey','GG','GGY',null,null),
  ('Isle of Man','IM','IMN',null,null),
  ('Jersey','JE','JEY',null,null),
  ('Åland Islands','AX','ALA',null,null),
  ('Montenegro','ME','MNE',null,null),
  ('Saint Barthélemy','BL','BLM',null,null),
  ('Saint Martin (French part)','MF','MAF',null,null),
  ('Serbia','RS','SRB',null,null),
  ('Sint Maarten (Dutch part)','SX','SXM',null,null),
  ('South Sudan','SS','SSD',null,null),
  ('Timor-Leste','TL','TLS',null,null),
  ('American Samoa','as','ASM','Amerika Samoa','Oceania'),
  ('Andorra','AD','AND','Andorra','Europe'),
  ('Angola','AO','AGO','Angola','Africa'),
  ('Anguilla','AI','AIA','Anguilla','North America'),
  ('Antarctica','AQ','ATA','','Antarctica'),
  ('Antigua and Barbuda','AG','ATG','Antigua and Barbuda','North America'),
  ('Argentina','AR','ARG','Argentina','South America'),
  ('Armenia','AM','ARM','Hajastan','Asia'),
  ('Aruba','AW','ABW','Aruba','North America'),
  ('Australia','AU','AUS','Australia','Oceania'),
  ('Austria','AT','AUT','Österreich','Europe'),
  ('Azerbaijan','AZ','AZE','Azerbaijan','Asia'),
  ('Bahamas','BS','BHS','The Bahamas','North America'),
  ('Bahrain','BH','BHR','Al-Bahrayn','Asia'),
  ('Bangladesh','BD','BGD','Bangladesh','Asia'),
  ('Barbados','BB','BRB','Barbados','North America'),
  ('Belarus','BY','BLR','Belarus','Europe'),
  ('Belgium','BE','BEL','Belgium/Belgique','Europe'),
  ('Belize','BZ','BLZ','Belize','North America'),
  ('Benin','BJ','BEN','Benin','Africa'),
  ('Bermuda','BM','BMU','Bermuda','North America'),
  ('Bhutan','BT','BTN','Druk-Yul','Asia'),
  ('Bolivia','BO','BOL','Bolivia','South America'),
  ('Bosnia and Herzegovina','BA','BIH','Bosna i Hercegovina','Europe'),
  ('Botswana','BW','BWA','Botswana','Africa'),
  ('Bouvet Island','BV','BVT','Bouvet Island','Antarctica'),
  ('Brazil','BR','BRA','Brasil','South America'),
  ('British Indian Ocean Territory','IO','IOT','British Indian Ocean Territory','Africa'),
  ('Brunei Darussalam','BN','BRN','Brunei Darussalam','Asia'),
  ('Bulgaria','BG','BGR','Balgarija','Europe'),
  ('Burkina Faso','BF','BFA','Burkina Faso','Africa'),
  ('Burundi','BI','BDI','Burundi/Uburundi','Africa'),
  ('Cambodia','KH','KHM','Cambodia','Asia'),
  ('Cameroon','CM','CMR','Cameroun/Cameroon','Africa'),
  ('Canada','CA','CAN','Canada','North America'),
  ('Cape Verde','CV','CPV','Cabo Verde','Africa'),
  ('Cayman Islands','KY','CYM','Cayman Islands','North America'),
  ('Central African Republic','CF','CAF','Centrafrique','Africa'),
  ('Chad','TD','TCD','Tchad/Tshad','Africa'),
  ('Chile','CL','CHL','Chile','South America'),
  ('China','CN','CHN','Zhongquo','Asia'),
  ('Christmas Island','CX','CXR','Christmas Island','Oceania'),
  ('Cocos (Keeling) Islands','CC','CCK','Cocos (Keeling) Islands','Oceania'),
  ('Colombia','CO','COL','Colombia','South America'),
  ('Comoros','KM','COM','Komori/Comores','Africa'),
  ('Congo','CG','COG','Congo','Africa'),
  ('Congo, the Democratic Republic of the','CD','COD','Republique Democratique du Congo','Africa'),
  ('Cook Islands','CK','COK','The Cook Islands','Oceania'),
  ('Costa Rica','CR','CRI','Costa Rica','North America'),
  ('Cote DIvoire','CI','CIV','Côte dIvoire','Africa'),
  ('Croatia','HR','HRV','Hrvatska','Europe'),
  ('Cuba','CU','CUB','Cuba','North America'),
  ('Cyprus','CY','CYP','Cyprus','Asia'),
  ('Czech Republic','CZ','CZE','Czech','Europe'),
  ('Denmark','DK','DNK','Danmark','Europe'),
  ('Djibouti','DJ','DJI','Djibouti/Jibuti','Africa'),
  ('Dominica','DM','DMA','Dominica','North America'),
  ('Dominican Republic','DO','DOM','Republica Dominicana','North America'),
  ('Ecuador','EC','ECU','Ecuador','South America'),
  ('Egypt','EG','EGY','Misr','Africa'),
  ('El Salvador','SV','SLV','El Salvador','North America'),
  ('Equatorial Guinea','GQ','GNQ','Guinea Ecuatorial','Africa'),
  ('Eritrea','ER','ERI','Ertra','Africa'),
  ('Estonia','EE','EST','Eesti','Europe'),
  ('Ethiopia','ET','ETH','Yeityopiya','Africa'),
  ('Falkland Islands (Malvinas)','FK','FLK','Falkland Islands','South America'),
  ('Faroe Islands','FO','FRO','Faroe Islands','Europe'),
  ('Fiji','FJ','FJI','Fiji Islands','Oceania'),
  ('Finland','FI','FIN','Suomi','Europe'),
  ('France','FR','FRA','France','Europe'),
  ('French Guiana','GF','GUF','Guyane francaise','South America'),
  ('French Polynesia','PF','PYF','Polynésie française','Oceania'),
  ('French Southern Territories','TF','ATF','Terres australes françaises','Antarctica'),
  ('Gabon','GA','GAB','Le Gabon','Africa'),
  ('Gambia','GM','GMB','The Gambia','Africa'),
  ('Georgia','GE','GEO','Sakartvelo','Asia'),
  ('Germany','DE','DEU','Deutschland','Europe'),
  ('Ghana','GH','GHA','Ghana','Africa'),
  ('Gibraltar','GI','GIB','Gibraltar','Europe'),
  ('Greece','GR','GRC','Greece','Europe'),
  ('Greenland','GL','GRL','Kalaallit Nunaat','North America'),
  ('Grenada','GD','GRD','Grenada','North America'),
  ('Guadeloupe','GP','GLP','Guadeloupe','North America'),
  ('Guam','GU','GUM','Guam','Oceania'),
  ('Guatemala','GT','GTM','Guatemala','North America'),
  ('Guinea','GN','GIN','Guinea','Africa'),
  ('Guinea-Bissau','GW','GNB','Guinea-Bissau','Africa'),
  ('Guyana','GY','GUY','Guyana','South America'),
  ('Haiti','HT','HTI','Haiti/Dayti','North America'),
  ('Heard Island and Mcdonald Islands','HM','HMD','Heard and McDonald Islands','Antarctica'),
  ('Holy See (Vatican City State)','VA','VAT','Santa Sede/Città del Vaticano','Europe'),
  ('Honduras','HN','HND','Honduras','North America'),
  ('Hong Kong','HK','HKG','Xianggang/Hong Kong','Asia'),
  ('Hungary','HU','HUN','Hungary','Europe'),
  ('Iceland','IS','ISL','Iceland','Europe'),
  ('India','IN','IND','Bharat/India','Asia'),
  ('Indonesia','ID','IDN','Indonesia','Asia'),
  ('Iran, Islamic Republic of','IR','IRN','Iran','Asia'),
  ('Iraq','IQ','IRQ','Al-Irāq','Asia'),
  ('Ireland','IE','IRL','Ireland','Europe'),
  ('Israel','IL','ISR','Yisrael','Asia'),
  ('Italy','IT','ITA','Italia','Europe'),
  ('Jamaica','JM','JAM','Jamaica','North America'),
  ('Japan','JP','JPN','Nihon/Nippon','Asia'),
  ('Jordan','JO','JOR','Al-Urdunn','Asia'),
  ('Kazakhstan','KZ','KAZ','Qazaqstan','Asia'),
  ('Kenya','KE','KEN','Kenya','Africa'),
  ('Kiribati','KI','KIR','Kiribati','Oceania'),
  ('Korea, Democratic People''s Republic of','KP','PRK','Choson Minjujuui Inmin Konghwaguk (Bukhan)','Asia'),
  ('Korea, Republic of','KR','KOR','Taehan-minguk (Namhan)','Asia'),
  ('Kuwait','KW','KWT','Al-Kuwayt','Asia'),
  ('Kyrgyzstan','KG','KGZ','Kyrgyzstan','Asia'),
  ('Lao People''s Democratic Republic','LA','LAO','Lao','Asia'),
  ('Latvia','LV','LVA','Latvija','Europe'),
  ('Lebanon','LB','LBN','Lubnan','Asia'),
  ('Lesotho','LS','LSO','Lesotho','Africa'),
  ('Liberia','LR','LBR','Liberia','Africa'),
  ('Libya','LY','LBY','Libiya','Africa'),
  ('Liechtenstein','LI','LIE','Liechtenstein','Europe'),
  ('Lithuania','LT','LTU','Lietuva','Europe'),
  ('Luxembourg','LU','LUX','Luxembourg','Europe'),
  ('Macao','MO','MAC','Macau/Aomen','Asia'),
  ('Macedonia, the Former Yugoslav Republic of','MK','MKD','Makedonija','Europe'),
  ('Madagascar','MG','MDG','Madagasikara/Madagascar','Africa'),
  ('Malawi','MW','MWI','Malawi','Africa'),
  ('Malaysia','MY','MYS','Malaysia','Asia'),
  ('Maldives','MV','MDV','Dhivehi Raajje/Maldives','Asia'),
  ('Mali','ML','MLI','Mali','Africa'),
  ('Malta','MT','MLT','Malta','Europe'),
  ('Marshall Islands','MH','MHL','Marshall Islands/Majol','Oceania'),
  ('Martinique','MQ','MTQ','Martinique','North America'),
  ('Mauritania','MR','MRT','Muritaniya/Mauritanie','Africa'),
  ('Mauritius','MU','MUS','Mauritius','Africa'),
  ('Mayotte','YT','MYT','Mayotte','Africa'),
  ('Mexico','MX','MEX','Mexico','North America'),
  ('Micronesia, Federated States of','FM','FSM','Micronesia','Oceania'),
  ('Moldova, Republic of','MD','MDA','Moldova','Europe'),
  ('Monaco','MC','MCO','Monaco','Europe'),
  ('Mongolia','MN','MNG','Mongol Uls','Asia'),
  ('Albania','AL','ALB','Republika e Shqipërisë','Europe'),
  ('Montserrat','MS','MSR','Montserrat','North America'),
  ('Morocco','MA','MAR','Al-Maghrib','Africa'),
  ('Mozambique','MZ','MOZ','Mozambique','Africa'),
  ('Myanmar','MM','MMR','Myanma Pye','Asia'),
  ('Namibia','NA','NAM','Namibia','Africa'),
  ('Nauru','NR','NRU','Naoero/Nauru','Oceania'),
  ('Nepal','NP','NPL','Nepal','Asia'),
  ('Netherlands','NL','NLD','Nederland','Europe'),
  ('New Caledonia','NC','NCL','Nouvelle-Calédonie','Oceania'),
  ('New Zealand','NZ','NZL','New Zealand/Aotearoa','Oceania'),
  ('Nicaragua','NI','NIC','Nicaragua','North America'),
  ('Niger','NE','NER','Niger','Africa'),
  ('Nigeria','NG','NGA','Nigeria','Africa'),
  ('Niue','NU','NIU','Niue','Oceania'),
  ('Norfolk Island','NF','NFK','Norfolk Island','Oceania'),
  ('Northern Mariana Islands','MP','MNP','Northern Mariana Islands','Oceania'),
  ('Norway','NO','NOR','Norge','Europe'),
  ('Oman','OM','OMN','Oman','Asia'),
  ('Pakistan','PK','PAK','Pakistan','Asia'),
  ('Palau','PW','PLW','Belau/Palau','Oceania'),
  ('Palestine, State of','PS','PSE','Filastin','Asia'),
  ('Panama','PA','PAN','República de Panamá','North America'),
  ('Papua New Guinea','PG','PNG','Papua New Guinea/Papua Niugini','Oceania'),
  ('Paraguay','PY','PRY','Paraguay','South America'),
  ('Peru','PE','PER','Perú/Piruw','South America'),
  ('Philippines','PH','PHL','Pilipinas','Asia'),
  ('Pitcairn','PN','PCN','Pitcairn','Oceania'),
  ('Poland','PL','POL','Polska','Europe'),
  ('Portugal','PT','PRT','Portugal','Europe'),
  ('Puerto Rico','PR','PRI','Puerto Rico','North America'),
  ('Qatar','QA','QAT','Qatar','Asia'),
  ('Reunion','RE','REU','Reunion','Africa'),
  ('Romania','RO','ROM','Romania','Europe'),
  ('Russian Federation','RU','RUS','Rossija','Europe'),
  ('Rwanda','RW','RWA','Rwanda/Urwanda','Africa'),
  ('Saint Helena, Ascension and Tristan da Cunha','SH','SHN','Saint Helena','Africa'),
  ('Saint Kitts and Nevis','KN','KNA','Saint Kitts and Nevis','North America'),
  ('Saint Lucia','LC','LCA','Saint Lucia','North America'),
  ('Saint Pierre and Miquelon','PM','SPM','Saint-Pierre-et-Miquelon','North America'),
  ('Saint Vincent and the Grenadines','VC','VCT','Saint Vincent and the Grenadines','North America'),
  ('Samoa','WS','WSM','Samoa','Oceania'),
  ('San Marino','SM','SMR','San Marino','Europe'),
  ('Sao Tome and Principe','ST','STP','São Tomé e Príncipe','Africa'),
  ('Saudi Arabia','SA','SAU','Al-Mamlaka al-Arabiya as-Saudiya','Asia'),
  ('Senegal','SN','SEN','Sénégal/Sounougal','Africa'),
  ('Seychelles','SC','SYC','Sesel/Seychelles','Africa'),
  ('Sierra Leone','SL','SLE','Sierra Leone','Africa'),
  ('Singapore','SG','SGP','Singapore/Singapura/Xinjiapo/Singapur','Asia'),
  ('Slovakia','SK','SVK','Slovensko','Europe'),
  ('Slovenia','SI','SVN','Slovenija','Europe'),
  ('Solomon Islands','SB','SLB','Solomon Islands','Oceania'),
  ('Somalia','SO','SOM','Soomaaliya','Africa'),
  ('South Africa','ZA','ZAF','South Africa','Africa'),
  ('South Georgia and the South Sandwich Islands','GS','SGS','South Georgia and the South Sandwich Islands','Antarctica'),
  ('Spain','ES','ESP','España','Europe'),
  ('Sri Lanka','LK','LKA','Sri Lanka/Ilankai','Asia'),
  ('Sudan','SD','SDN','As-Sudan','Africa'),
  ('Suriname','SR','SUR','Suriname','South America'),
  ('Svalbard and Jan Mayen','SJ','SJM','Svalbard og Jan Mayen','Europe'),
  ('Swaziland','SZ','SWZ','kaNgwane','Africa'),
  ('Sweden','SE','SWE','Sverige','Europe'),
  ('Switzerland','CH','CHE','Schweiz/Suisse/Svizzera/Svizra','Europe'),
  ('Syrian Arab Republic','SY','SYR','Suriya','Asia'),
  ('Taiwan (Province of China)','TW','TWN','Tai-wan','Asia'),
  ('Tajikistan','TJ','TJK','Tajikistan','Asia'),
  ('Tanzania, United Republic of','TZ','TZA','Tanzania','Africa'),
  ('Thailand','TH','THA','Prathet Thai','Asia'),
  ('Togo','TG','TGO','Togo','Africa'),
  ('Tokelau','TK','TKL','Tokelau','Oceania'),
  ('Tonga','TO','TON','Tonga','Oceania'),
  ('Trinidad and Tobago','TT','TTO','Trinidad and Tobago','North America'),
  ('Tunisia','TN','TUN','Tunis/Tunisie','Africa'),
  ('Turkey','TR','TUR','Türkiye','Asia'),
  ('Turkmenistan','TM','TKM','Türkmenistan','Asia'),
  ('Turks and Caicos Islands','TC','TCA','The Turks and Caicos Islands','North America'),
  ('Tuvalu','TV','TUV','Tuvalu','Oceania'),
  ('Uganda','UG','UGA','Uganda','Africa'),
  ('Ukraine','UA','UKR','Ukrajina','Europe'),
  ('United Arab Emirates','AE','ARE','Al-Amirat al-Arabiya al-Muttahida','Asia'),
  ('United Kingdom','GB','GBR','United Kingdom','Europe'),
  ('United States','US','USA','United States','North America'),
  ('United States Minor Outlying Islands','UM','UMI','United States Minor Outlying Islands','Oceania'),
  ('Uruguay','UY','URY','Uruguay','South America'),
  ('Uzbekistan','UZ','UZB','Uzbekiston','Asia'),
  ('Vanuatu','VU','VUT','Vanuatu','Oceania'),
  ('Venezuela','VE','VEN','Venezuela','South America'),
  ('Viet Nam','VN','VNM','Viet Nam','Asia'),
  ('Virgin Islands (British)','VG','VGB','British Virgin Islands','North America'),
  ('Virgin Islands (U.S.)','VI','VIR','Virgin Islands of the United States','North America'),
  ('Wallis and Futuna','WF','WLF','Wallis-et-Futuna','Oceania'),
  ('Western Sahara','EH','ESH','As-Sahrawiya','Africa'),
  ('Yemen','YE','YEM','Al-Yaman','Asia'),
  ('Zambia','ZM','ZMB','Zambia','Africa'),
  ('Zimbabwe','ZW','ZWE','Zimbabwe','Africa'),
  ('Afghanistan','AF','AFG','Afganistan/Afqanestan','Asia'),
  ('Algeria','DZ','DZA','Al-Jazair/Algerie','Africa');

  insert into
public.employees (name, email, department)
values
('Erlich Bachman', 'eric@yopmail.com', 'DP1'),
('Richard Hendricks', 'Richard@yopmail.com', 'DP1'),
('Monica Hall', 'Monica@yopmail.com', 'DP1');
