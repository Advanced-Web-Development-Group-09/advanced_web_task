BEGIN TRANSACTION;


INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '1',
    'J323636',
    'ICE',
    '9383515',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    6.68531,
    49.114065,
    '2024-07-08 23:47:00',
    '2024-07-08 23:53:00',
    '2024-07-08 23:52:00',
    '2024-07-08 23:58:00',
    5,
    1,
    'On time',
    'batch_15',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '2',
    'J500488',
    'ICE',
    '8067940',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    8.403158,
    49.827289,
    '2024-07-08 23:17:00',
    '2024-07-08 23:43:00',
    '2024-07-08 23:29:00',
    '2024-07-08 23:55:00',
    12,
    1,
    'On time',
    'batch_20',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '3',
    'J676749',
    'ICE',
    '8892645',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    7.222673,
    53.618367,
    '2024-07-08 06:20:00',
    '2024-07-08 06:47:00',
    '2024-07-08 06:32:00',
    '2024-07-08 06:59:00',
    12,
    1,
    'On time',
    'batch_10',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '4',
    'J785192',
    'RB',
    '9948686',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    12.411605,
    49.980473,
    '2024-07-08 02:04:00',
    '2024-07-08 02:07:00',
    '2024-07-08 02:09:00',
    '2024-07-08 02:12:00',
    5,
    1,
    'On time',
    'batch_5',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '5',
    'J470480',
    'RE',
    '9586641',
    'passenger',
    'Hamburg-route',
    'Hamburg Ost',
    'DE',
    'Hamburg',
    '20095',
    11.665962,
    52.298852,
    '2024-07-08 21:34:00',
    '2024-07-08 21:53:00',
    '2024-07-08 21:45:00',
    '2024-07-08 22:04:00',
    11,
    1,
    'On time',
    'batch_17',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '6',
    'J501929',
    'S',
    '9027297',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    7.847256,
    51.015916,
    '2024-07-08 01:31:00',
    '2024-07-08 01:32:00',
    '2024-07-08 01:48:00',
    '2024-07-08 01:49:00',
    17,
    1,
    'On time',
    'batch_40',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '7',
    'J184978',
    'ICE',
    '8473315',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    7.423049,
    52.398774,
    '2024-07-08 02:03:00',
    '2024-07-08 02:25:00',
    '2024-07-08 02:14:00',
    '2024-07-08 02:36:00',
    11,
    1,
    'On time',
    'batch_21',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '8',
    'J573477',
    'RE',
    '9759424',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    10.795356,
    52.907336,
    '2024-07-08 16:32:00',
    '2024-07-08 16:35:00',
    '2024-07-08 16:33:00',
    '2024-07-08 16:36:00',
    1,
    1,
    'On time',
    'batch_8',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '9',
    'J671401',
    'S',
    '9345720',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    6.548171,
    51.450008,
    '2024-07-08 06:53:00',
    '2024-07-08 07:01:00',
    '2024-07-08 06:54:00',
    '2024-07-08 07:02:00',
    1,
    1,
    'On time',
    'batch_43',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '10',
    'J973216',
    'RB',
    '9931968',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    12.49231,
    49.647749,
    '2024-07-08 04:45:00',
    '2024-07-08 04:53:00',
    '2024-07-08 05:02:00',
    '2024-07-08 05:10:00',
    17,
    1,
    'On time',
    'batch_11',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '11',
    'J822256',
    'RB',
    '8797011',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    11.715637,
    48.717766,
    '2024-07-08 08:25:00',
    '2024-07-08 08:53:00',
    '2024-07-08 08:30:00',
    '2024-07-08 08:58:00',
    5,
    1,
    'On time',
    'batch_7',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '12',
    'J169609',
    'ICE',
    '8842785',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    10.974124,
    53.878195,
    '2024-07-08 03:23:00',
    '2024-07-08 03:47:00',
    '2024-07-08 03:30:00',
    '2024-07-08 03:54:00',
    7,
    1,
    'On time',
    'batch_28',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '13',
    'J550223',
    'IC',
    '8115903',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    6.003223,
    52.336877,
    '2024-07-08 11:02:00',
    '2024-07-08 11:23:00',
    '2024-07-08 11:14:00',
    '2024-07-08 11:35:00',
    12,
    1,
    'On time',
    'batch_42',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '14',
    'J649820',
    'S',
    '8664733',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    11.794336,
    48.11548,
    '2024-07-08 20:14:00',
    '2024-07-08 20:22:00',
    '2024-07-08 20:22:00',
    '2024-07-08 20:30:00',
    8,
    1,
    'On time',
    'batch_12',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '15',
    'J538762',
    'ICE',
    '8419880',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    8.92265,
    54.809245,
    '2024-07-08 12:49:00',
    '2024-07-08 12:51:00',
    '2024-07-08 12:52:00',
    '2024-07-08 12:54:00',
    3,
    1,
    'On time',
    'batch_25',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '16',
    'J309242',
    'ICE',
    '9836226',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    8.655221,
    53.922108,
    '2024-07-08 09:20:00',
    '2024-07-08 09:27:00',
    '2024-07-08 09:28:00',
    '2024-07-08 09:35:00',
    8,
    1,
    'On time',
    'batch_23',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '17',
    'J364166',
    'RB',
    '9151744',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    9.06173,
    50.051601,
    '2024-07-08 10:15:00',
    '2024-07-08 10:20:00',
    '2024-07-08 10:24:00',
    '2024-07-08 10:29:00',
    9,
    1,
    'On time',
    'batch_16',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '18',
    'J313012',
    'S',
    '9621589',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    12.963404,
    54.279174,
    '2024-07-08 11:49:00',
    '2024-07-08 12:14:00',
    '2024-07-08 12:07:00',
    '2024-07-08 12:32:00',
    18,
    1,
    'On time',
    'batch_17',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '19',
    'J405873',
    'ICE',
    '8360577',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    7.910103,
    48.489233,
    '2024-07-08 19:47:00',
    '2024-07-08 20:07:00',
    '2024-07-08 20:04:00',
    '2024-07-08 20:24:00',
    17,
    1,
    'On time',
    'batch_7',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '20',
    'J182379',
    'S',
    '8270934',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    7.718285,
    53.710883,
    '2024-07-08 20:57:00',
    '2024-07-08 21:27:00',
    '2024-07-08 21:10:00',
    '2024-07-08 21:40:00',
    13,
    1,
    'On time',
    'batch_26',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '21',
    'J863382',
    'ICE',
    '8616416',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    12.424945,
    47.092238,
    '2024-07-08 08:14:00',
    '2024-07-08 08:23:00',
    '2024-07-08 08:20:00',
    '2024-07-08 08:29:00',
    6,
    1,
    'On time',
    'batch_24',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '22',
    'J210830',
    'RB',
    '8534790',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    12.070108,
    47.08808,
    '2024-07-08 05:28:00',
    '2024-07-08 05:46:00',
    '2024-07-08 05:28:00',
    '2024-07-08 05:46:00',
    0,
    1,
    'On time',
    'batch_9',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '23',
    'J833158',
    'RE',
    '8017615',
    'passenger',
    'Berlin-route',
    'Berlin West',
    'DE',
    'Berlin',
    '10115',
    8.511272,
    49.128363,
    '2024-07-08 01:46:00',
    '2024-07-08 02:13:00',
    '2024-07-08 01:58:00',
    '2024-07-08 02:25:00',
    12,
    1,
    'On time',
    'batch_40',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '24',
    'J746930',
    'RE',
    '9125026',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    12.670179,
    54.330551,
    '2024-07-08 12:30:00',
    '2024-07-08 12:32:00',
    '2024-07-08 12:40:00',
    '2024-07-08 12:42:00',
    10,
    1,
    'On time',
    'batch_19',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '25',
    'J958154',
    'RB',
    '9644792',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    8.933099,
    50.266684,
    '2024-07-08 22:21:00',
    '2024-07-08 22:28:00',
    '2024-07-08 22:23:00',
    '2024-07-08 22:30:00',
    2,
    1,
    'On time',
    'batch_14',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '26',
    'J723759',
    'RE',
    '9593615',
    'passenger',
    'Hamburg-route',
    'Hamburg Ost',
    'DE',
    'Hamburg',
    '20095',
    10.171091,
    49.938171,
    '2024-07-08 19:53:00',
    '2024-07-08 20:20:00',
    '2024-07-08 19:58:00',
    '2024-07-08 20:25:00',
    5,
    1,
    'On time',
    'batch_32',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '27',
    'J605673',
    'RE',
    '9838744',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    12.384858,
    49.67286,
    '2024-07-08 12:53:00',
    '2024-07-08 13:13:00',
    '2024-07-08 13:03:00',
    '2024-07-08 13:23:00',
    10,
    1,
    'On time',
    'batch_21',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '28',
    'J409668',
    'ICE',
    '9551081',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    10.923641,
    54.093721,
    '2024-07-08 08:05:00',
    '2024-07-08 08:17:00',
    '2024-07-08 08:19:00',
    '2024-07-08 08:31:00',
    14,
    1,
    'On time',
    'batch_42',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '29',
    'J494112',
    'RB',
    '8990223',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    8.005119,
    50.307668,
    '2024-07-08 22:25:00',
    '2024-07-08 22:49:00',
    '2024-07-08 22:40:00',
    '2024-07-08 23:04:00',
    15,
    1,
    'On time',
    'batch_30',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '30',
    'J136186',
    'S',
    '9722650',
    'passenger',
    'Berlin-route',
    'Berlin West',
    'DE',
    'Berlin',
    '10115',
    6.070829,
    54.889984,
    '2024-07-08 23:01:00',
    '2024-07-08 23:13:00',
    '2024-07-08 23:04:00',
    '2024-07-08 23:16:00',
    3,
    1,
    'On time',
    'batch_8',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '31',
    'J112799',
    'ICE',
    '8660893',
    'passenger',
    'Munich-route',
    'Munich West',
    'DE',
    'Munich',
    '80331',
    12.128972,
    47.681905,
    '2024-07-08 12:16:00',
    '2024-07-08 12:44:00',
    '2024-07-08 12:34:00',
    '2024-07-08 13:02:00',
    18,
    1,
    'On time',
    'batch_37',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '32',
    'J389235',
    'IC',
    '8529762',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    6.453163,
    54.108266,
    '2024-07-08 12:01:00',
    '2024-07-08 12:30:00',
    '2024-07-08 12:14:00',
    '2024-07-08 12:43:00',
    13,
    1,
    'On time',
    'batch_16',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '33',
    'J719644',
    'IC',
    '9033766',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    11.555704,
    48.219889,
    '2024-07-08 14:35:00',
    '2024-07-08 14:56:00',
    '2024-07-08 14:42:00',
    '2024-07-08 15:03:00',
    7,
    1,
    'On time',
    'batch_8',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '34',
    'J533721',
    'RB',
    '8383400',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    7.431,
    50.309083,
    '2024-07-08 12:57:00',
    '2024-07-08 13:04:00',
    '2024-07-08 12:58:00',
    '2024-07-08 13:05:00',
    1,
    1,
    'On time',
    'batch_24',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '35',
    'J566056',
    'ICE',
    '9915186',
    'passenger',
    'Berlin-route',
    'Berlin West',
    'DE',
    'Berlin',
    '10115',
    9.874751,
    53.619443,
    '2024-07-08 14:54:00',
    '2024-07-08 15:23:00',
    '2024-07-08 15:08:00',
    '2024-07-08 15:37:00',
    14,
    1,
    'On time',
    'batch_21',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '36',
    'J157915',
    'IC',
    '9888819',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    9.815479,
    51.181283,
    '2024-07-08 00:56:00',
    '2024-07-08 00:58:00',
    '2024-07-08 01:09:00',
    '2024-07-08 01:11:00',
    13,
    1,
    'On time',
    'batch_49',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '37',
    'J623681',
    'IC',
    '9617959',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    7.403195,
    52.082788,
    '2024-07-08 06:21:00',
    '2024-07-08 06:28:00',
    '2024-07-08 06:33:00',
    '2024-07-08 06:40:00',
    12,
    1,
    'On time',
    'batch_47',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '38',
    'J333787',
    'RE',
    '9038441',
    'passenger',
    'Berlin-route',
    'Berlin West',
    'DE',
    'Berlin',
    '10115',
    11.481308,
    53.330287,
    '2024-07-08 07:38:00',
    '2024-07-08 07:46:00',
    '2024-07-08 07:44:00',
    '2024-07-08 07:52:00',
    6,
    1,
    'On time',
    'batch_1',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '39',
    'J967911',
    'ICE',
    '8680348',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    12.702218,
    47.185834,
    '2024-07-08 21:01:00',
    '2024-07-08 21:14:00',
    '2024-07-08 21:15:00',
    '2024-07-08 21:28:00',
    14,
    1,
    'On time',
    'batch_49',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '40',
    'J852348',
    'S',
    '9708494',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    7.138411,
    50.656675,
    '2024-07-08 10:19:00',
    '2024-07-08 10:45:00',
    '2024-07-08 10:28:00',
    '2024-07-08 10:54:00',
    9,
    1,
    'On time',
    'batch_46',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '41',
    'J726612',
    'ICE',
    '9937277',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    7.621965,
    51.815719,
    '2024-07-08 09:14:00',
    '2024-07-08 09:34:00',
    '2024-07-08 09:17:00',
    '2024-07-08 09:37:00',
    3,
    1,
    'On time',
    'batch_44',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '42',
    'J623337',
    'S',
    '9103864',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    7.055858,
    49.724362,
    '2024-07-08 15:52:00',
    '2024-07-08 16:17:00',
    '2024-07-08 16:02:00',
    '2024-07-08 16:27:00',
    10,
    1,
    'On time',
    'batch_2',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '43',
    'J573434',
    'ICE',
    '8468800',
    'passenger',
    'Berlin-route',
    'Berlin West',
    'DE',
    'Berlin',
    '10115',
    10.007977,
    53.508835,
    '2024-07-08 03:27:00',
    '2024-07-08 03:54:00',
    '2024-07-08 03:41:00',
    '2024-07-08 04:08:00',
    14,
    1,
    'On time',
    'batch_23',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '44',
    'J276570',
    'RB',
    '9105019',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    7.100439,
    48.397343,
    '2024-07-08 10:19:00',
    '2024-07-08 10:40:00',
    '2024-07-08 10:38:00',
    '2024-07-08 10:59:00',
    19,
    1,
    'On time',
    'batch_45',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '45',
    'J607337',
    'ICE',
    '9664280',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    8.441078,
    50.380008,
    '2024-07-08 07:08:00',
    '2024-07-08 07:17:00',
    '2024-07-08 07:28:00',
    '2024-07-08 07:37:00',
    20,
    1,
    'On time',
    'batch_36',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '46',
    'J309506',
    'RB',
    '8043487',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    9.688635,
    50.467971,
    '2024-07-08 19:10:00',
    '2024-07-08 19:11:00',
    '2024-07-08 19:12:00',
    '2024-07-08 19:13:00',
    2,
    1,
    'On time',
    'batch_5',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '47',
    'J593997',
    'RE',
    '9081596',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    12.448564,
    50.919064,
    '2024-07-08 17:47:00',
    '2024-07-08 18:10:00',
    '2024-07-08 17:53:00',
    '2024-07-08 18:16:00',
    6,
    1,
    'On time',
    'batch_17',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '48',
    'J950305',
    'RE',
    '8006119',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    10.012729,
    53.718415,
    '2024-07-08 04:30:00',
    '2024-07-08 04:53:00',
    '2024-07-08 04:47:00',
    '2024-07-08 05:10:00',
    17,
    1,
    'On time',
    'batch_50',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '49',
    'J303926',
    'RE',
    '9341457',
    'passenger',
    'Hamburg-route',
    'Hamburg Ost',
    'DE',
    'Hamburg',
    '20095',
    12.203965,
    52.084753,
    '2024-07-08 08:59:00',
    '2024-07-08 09:25:00',
    '2024-07-08 09:18:00',
    '2024-07-08 09:44:00',
    19,
    1,
    'On time',
    'batch_42',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '50',
    'J263160',
    'RB',
    '8463882',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    12.753316,
    50.616372,
    '2024-07-08 21:40:00',
    '2024-07-08 22:05:00',
    '2024-07-08 21:58:00',
    '2024-07-08 22:23:00',
    18,
    1,
    'On time',
    'batch_31',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '51',
    'J399843',
    'RE',
    '8730345',
    'passenger',
    'Hamburg-route',
    'Hamburg Ost',
    'DE',
    'Hamburg',
    '20095',
    6.534703,
    48.132724,
    '2024-07-08 14:05:00',
    '2024-07-08 14:09:00',
    '2024-07-08 14:22:00',
    '2024-07-08 14:26:00',
    17,
    1,
    'On time',
    'batch_20',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '52',
    'J687529',
    'RE',
    '8391252',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    9.105655,
    52.788528,
    '2024-07-08 15:13:00',
    '2024-07-08 15:43:00',
    '2024-07-08 15:18:00',
    '2024-07-08 15:48:00',
    5,
    1,
    'On time',
    'batch_38',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '53',
    'J340253',
    'S',
    '8480276',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    6.584061,
    51.775966,
    '2024-07-08 14:32:00',
    '2024-07-08 14:44:00',
    '2024-07-08 14:32:00',
    '2024-07-08 14:44:00',
    0,
    1,
    'On time',
    'batch_29',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '54',
    'J875416',
    'ICE',
    '9887729',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    8.323167,
    53.147694,
    '2024-07-08 06:11:00',
    '2024-07-08 06:15:00',
    '2024-07-08 06:25:00',
    '2024-07-08 06:29:00',
    14,
    1,
    'On time',
    'batch_26',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '55',
    'J755562',
    'IC',
    '9238259',
    'passenger',
    'Berlin-route',
    'Berlin West',
    'DE',
    'Berlin',
    '10115',
    7.822668,
    54.531617,
    '2024-07-08 06:56:00',
    '2024-07-08 07:04:00',
    '2024-07-08 07:12:00',
    '2024-07-08 07:20:00',
    16,
    1,
    'On time',
    'batch_38',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '56',
    'J601061',
    'RE',
    '9383509',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    8.340955,
    49.185901,
    '2024-07-08 17:44:00',
    '2024-07-08 17:55:00',
    '2024-07-08 17:47:00',
    '2024-07-08 17:58:00',
    3,
    1,
    'On time',
    'batch_34',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '57',
    'J274482',
    'IC',
    '9628221',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    11.762588,
    50.261018,
    '2024-07-08 19:36:00',
    '2024-07-08 19:58:00',
    '2024-07-08 19:47:00',
    '2024-07-08 20:09:00',
    11,
    1,
    'On time',
    'batch_5',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '58',
    'J245212',
    'S',
    '8514561',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    10.912719,
    52.769597,
    '2024-07-08 14:19:00',
    '2024-07-08 14:34:00',
    '2024-07-08 14:25:00',
    '2024-07-08 14:40:00',
    6,
    1,
    'On time',
    'batch_7',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '59',
    'J779074',
    'ICE',
    '8225128',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    7.427955,
    50.261117,
    '2024-07-08 12:17:00',
    '2024-07-08 12:39:00',
    '2024-07-08 12:18:00',
    '2024-07-08 12:40:00',
    1,
    1,
    'On time',
    'batch_49',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '60',
    'J648608',
    'RB',
    '9434685',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    10.576228,
    53.554838,
    '2024-07-08 14:45:00',
    '2024-07-08 14:55:00',
    '2024-07-08 14:52:00',
    '2024-07-08 15:02:00',
    7,
    1,
    'On time',
    'batch_1',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '61',
    'J124215',
    'S',
    '8652761',
    'passenger',
    'Hamburg-route',
    'Hamburg Nord',
    'DE',
    'Hamburg',
    '20095',
    6.906625,
    53.351556,
    '2024-07-08 19:26:00',
    '2024-07-08 19:30:00',
    '2024-07-08 19:35:00',
    '2024-07-08 19:39:00',
    9,
    1,
    'On time',
    'batch_50',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '62',
    'J860966',
    'S',
    '8262212',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    8.100917,
    54.87369,
    '2024-07-08 11:30:00',
    '2024-07-08 11:39:00',
    '2024-07-08 11:36:00',
    '2024-07-08 11:45:00',
    6,
    1,
    'On time',
    'batch_20',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '63',
    'J668083',
    'RE',
    '9611177',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    8.478421,
    54.665078,
    '2024-07-08 03:26:00',
    '2024-07-08 03:32:00',
    '2024-07-08 03:39:00',
    '2024-07-08 03:45:00',
    13,
    1,
    'On time',
    'batch_38',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '64',
    'J921036',
    'ICE',
    '9279453',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    8.074644,
    50.544181,
    '2024-07-08 20:31:00',
    '2024-07-08 20:46:00',
    '2024-07-08 20:32:00',
    '2024-07-08 20:47:00',
    1,
    1,
    'On time',
    'batch_16',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '65',
    'J487519',
    'S',
    '9416151',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    10.483359,
    48.936804,
    '2024-07-08 17:38:00',
    '2024-07-08 17:40:00',
    '2024-07-08 17:47:00',
    '2024-07-08 17:49:00',
    9,
    1,
    'On time',
    'batch_46',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '66',
    'J509283',
    'IC',
    '9303902',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    11.539733,
    48.160231,
    '2024-07-08 21:01:00',
    '2024-07-08 21:30:00',
    '2024-07-08 21:07:00',
    '2024-07-08 21:36:00',
    6,
    1,
    'On time',
    'batch_47',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '67',
    'J509576',
    'RB',
    '8801949',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    8.128355,
    49.328784,
    '2024-07-08 12:35:00',
    '2024-07-08 12:42:00',
    '2024-07-08 12:53:00',
    '2024-07-08 13:00:00',
    18,
    1,
    'On time',
    'batch_43',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '68',
    'J145891',
    'RB',
    '8787064',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    9.02551,
    51.235469,
    '2024-07-08 19:37:00',
    '2024-07-08 19:49:00',
    '2024-07-08 19:37:00',
    '2024-07-08 19:49:00',
    0,
    1,
    'On time',
    'batch_6',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '69',
    'J601887',
    'IC',
    '9694984',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    11.227502,
    52.676977,
    '2024-07-08 19:41:00',
    '2024-07-08 19:48:00',
    '2024-07-08 19:43:00',
    '2024-07-08 19:50:00',
    2,
    1,
    'On time',
    'batch_49',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '70',
    'J303662',
    'RB',
    '9595208',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    8.43052,
    48.16193,
    '2024-07-08 14:40:00',
    '2024-07-08 14:57:00',
    '2024-07-08 14:40:00',
    '2024-07-08 14:57:00',
    0,
    1,
    'On time',
    'batch_43',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '71',
    'J529931',
    'RB',
    '9029803',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    10.817342,
    50.130094,
    '2024-07-08 05:48:00',
    '2024-07-08 06:17:00',
    '2024-07-08 05:51:00',
    '2024-07-08 06:20:00',
    3,
    1,
    'On time',
    'batch_23',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '72',
    'J139671',
    'IC',
    '9035541',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    6.641974,
    49.060772,
    '2024-07-08 11:12:00',
    '2024-07-08 11:20:00',
    '2024-07-08 11:30:00',
    '2024-07-08 11:38:00',
    18,
    1,
    'On time',
    'batch_23',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '73',
    'J280618',
    'ICE',
    '8357148',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    7.841889,
    51.720255,
    '2024-07-08 21:25:00',
    '2024-07-08 21:29:00',
    '2024-07-08 21:27:00',
    '2024-07-08 21:31:00',
    2,
    1,
    'On time',
    'batch_22',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '74',
    'J958847',
    'RB',
    '8425068',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    10.698253,
    51.727637,
    '2024-07-08 00:06:00',
    '2024-07-08 00:27:00',
    '2024-07-08 00:13:00',
    '2024-07-08 00:34:00',
    7,
    1,
    'On time',
    'batch_20',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '75',
    'J187072',
    'ICE',
    '9156588',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    12.36564,
    51.233292,
    '2024-07-08 17:07:00',
    '2024-07-08 17:21:00',
    '2024-07-08 17:07:00',
    '2024-07-08 17:21:00',
    0,
    1,
    'On time',
    'batch_2',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '76',
    'J754843',
    'S',
    '8313249',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    10.428809,
    48.567969,
    '2024-07-08 07:06:00',
    '2024-07-08 07:32:00',
    '2024-07-08 07:19:00',
    '2024-07-08 07:45:00',
    13,
    1,
    'On time',
    'batch_6',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '77',
    'J187969',
    'ICE',
    '9236471',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    7.257667,
    47.983824,
    '2024-07-08 23:03:00',
    '2024-07-08 23:27:00',
    '2024-07-08 23:18:00',
    '2024-07-08 23:42:00',
    15,
    1,
    'On time',
    'batch_4',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '78',
    'J585159',
    'RB',
    '9763466',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    12.404648,
    48.475935,
    '2024-07-08 19:29:00',
    '2024-07-08 19:53:00',
    '2024-07-08 19:38:00',
    '2024-07-08 20:02:00',
    9,
    1,
    'On time',
    'batch_3',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '79',
    'J203455',
    'RE',
    '9168096',
    'passenger',
    'Berlin-route',
    'Berlin West',
    'DE',
    'Berlin',
    '10115',
    7.015009,
    54.553611,
    '2024-07-08 17:34:00',
    '2024-07-08 17:42:00',
    '2024-07-08 17:47:00',
    '2024-07-08 17:55:00',
    13,
    1,
    'On time',
    'batch_11',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '80',
    'J459847',
    'RE',
    '8665686',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    8.643832,
    48.649871,
    '2024-07-08 06:19:00',
    '2024-07-08 06:26:00',
    '2024-07-08 06:20:00',
    '2024-07-08 06:27:00',
    1,
    1,
    'On time',
    'batch_33',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '81',
    'J156885',
    'RE',
    '9441612',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    7.445946,
    48.286296,
    '2024-07-08 10:20:00',
    '2024-07-08 10:38:00',
    '2024-07-08 10:39:00',
    '2024-07-08 10:57:00',
    19,
    1,
    'On time',
    'batch_50',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '82',
    'J442203',
    'IC',
    '8244656',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    10.472342,
    49.070344,
    '2024-07-08 00:02:00',
    '2024-07-08 00:22:00',
    '2024-07-08 00:18:00',
    '2024-07-08 00:38:00',
    16,
    1,
    'On time',
    'batch_22',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '83',
    'J788645',
    'S',
    '9268615',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    10.719485,
    51.245967,
    '2024-07-08 22:04:00',
    '2024-07-08 22:09:00',
    '2024-07-08 22:19:00',
    '2024-07-08 22:24:00',
    15,
    1,
    'On time',
    'batch_40',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '84',
    'J541932',
    'RB',
    '8951367',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    7.545928,
    50.323525,
    '2024-07-08 07:29:00',
    '2024-07-08 07:37:00',
    '2024-07-08 07:37:00',
    '2024-07-08 07:45:00',
    8,
    1,
    'On time',
    'batch_25',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '85',
    'J393358',
    'RE',
    '9982454',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    12.175149,
    47.409422,
    '2024-07-08 16:42:00',
    '2024-07-08 16:43:00',
    '2024-07-08 17:00:00',
    '2024-07-08 17:01:00',
    18,
    1,
    'On time',
    'batch_36',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '86',
    'J314143',
    'RB',
    '8926417',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    10.33036,
    47.229961,
    '2024-07-08 03:15:00',
    '2024-07-08 03:31:00',
    '2024-07-08 03:33:00',
    '2024-07-08 03:49:00',
    18,
    1,
    'On time',
    'batch_48',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '87',
    'J691653',
    'S',
    '8158274',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    12.069349,
    51.375474,
    '2024-07-08 00:08:00',
    '2024-07-08 00:23:00',
    '2024-07-08 00:13:00',
    '2024-07-08 00:28:00',
    5,
    1,
    'On time',
    'batch_19',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '88',
    'J467069',
    'RB',
    '9844058',
    'passenger',
    'Munich-route',
    'Munich West',
    'DE',
    'Munich',
    '80331',
    9.239046,
    51.996375,
    '2024-07-08 08:19:00',
    '2024-07-08 08:22:00',
    '2024-07-08 08:39:00',
    '2024-07-08 08:42:00',
    20,
    1,
    'On time',
    'batch_13',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '89',
    'J207859',
    'RB',
    '8767510',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    9.919496,
    50.876861,
    '2024-07-08 22:59:00',
    '2024-07-08 23:26:00',
    '2024-07-08 23:06:00',
    '2024-07-08 23:33:00',
    7,
    1,
    'On time',
    'batch_11',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '90',
    'J592616',
    'IC',
    '8106610',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    8.484451,
    47.773448,
    '2024-07-08 15:02:00',
    '2024-07-08 15:09:00',
    '2024-07-08 15:16:00',
    '2024-07-08 15:23:00',
    14,
    1,
    'On time',
    'batch_20',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '91',
    'J917946',
    'IC',
    '8178358',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    11.610561,
    47.089673,
    '2024-07-08 23:26:00',
    '2024-07-08 23:45:00',
    '2024-07-08 23:28:00',
    '2024-07-08 23:47:00',
    2,
    1,
    'On time',
    'batch_26',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '92',
    'J581211',
    'IC',
    '8985063',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    10.201225,
    53.690207,
    '2024-07-08 17:39:00',
    '2024-07-08 17:40:00',
    '2024-07-08 17:52:00',
    '2024-07-08 17:53:00',
    13,
    1,
    'On time',
    'batch_28',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '93',
    'J561294',
    'S',
    '9091093',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    8.478309,
    51.863888,
    '2024-07-08 14:49:00',
    '2024-07-08 15:17:00',
    '2024-07-08 14:53:00',
    '2024-07-08 15:21:00',
    4,
    1,
    'On time',
    'batch_25',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '94',
    'J727003',
    'IC',
    '8492879',
    'passenger',
    'Berlin-route',
    'Berlin Nord',
    'DE',
    'Berlin',
    '10115',
    11.653921,
    48.972376,
    '2024-07-08 12:02:00',
    '2024-07-08 12:05:00',
    '2024-07-08 12:22:00',
    '2024-07-08 12:25:00',
    20,
    1,
    'On time',
    'batch_31',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '95',
    'J551087',
    'S',
    '8982753',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    7.940776,
    51.110187,
    '2024-07-08 10:21:00',
    '2024-07-08 10:32:00',
    '2024-07-08 10:26:00',
    '2024-07-08 10:37:00',
    5,
    1,
    'On time',
    'batch_29',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '96',
    'J779877',
    'RB',
    '8558329',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    8.735,
    49.132186,
    '2024-07-08 15:13:00',
    '2024-07-08 15:27:00',
    '2024-07-08 15:31:00',
    '2024-07-08 15:45:00',
    18,
    1,
    'On time',
    'batch_12',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '97',
    'J168711',
    'ICE',
    '9290343',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    9.093041,
    49.963847,
    '2024-07-08 09:23:00',
    '2024-07-08 09:35:00',
    '2024-07-08 09:24:00',
    '2024-07-08 09:36:00',
    1,
    1,
    'On time',
    'batch_34',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '98',
    'J492582',
    'IC',
    '8203891',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    9.344904,
    52.62616,
    '2024-07-08 17:54:00',
    '2024-07-08 18:18:00',
    '2024-07-08 18:14:00',
    '2024-07-08 18:38:00',
    20,
    1,
    'On time',
    'batch_20',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '99',
    'J702937',
    'RE',
    '9302550',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    6.365392,
    47.361875,
    '2024-07-08 18:50:00',
    '2024-07-08 18:57:00',
    '2024-07-08 18:52:00',
    '2024-07-08 18:59:00',
    2,
    1,
    'On time',
    'batch_20',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '100',
    'J614973',
    'ICE',
    '9847432',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    7.557654,
    47.55234,
    '2024-07-08 14:01:00',
    '2024-07-08 14:08:00',
    '2024-07-08 14:09:00',
    '2024-07-08 14:16:00',
    8,
    1,
    'On time',
    'batch_13',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '101',
    'J213013',
    'S',
    '8309294',
    'passenger',
    'Hamburg-route',
    'Hamburg Ost',
    'DE',
    'Hamburg',
    '20095',
    9.617672,
    47.028769,
    '2024-07-08 15:01:00',
    '2024-07-08 15:17:00',
    '2024-07-08 15:18:00',
    '2024-07-08 15:34:00',
    17,
    1,
    'On time',
    'batch_31',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '102',
    'J724426',
    'ICE',
    '8666225',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    8.91201,
    53.826062,
    '2024-07-08 16:01:00',
    '2024-07-08 16:29:00',
    '2024-07-08 16:07:00',
    '2024-07-08 16:35:00',
    6,
    1,
    'On time',
    'batch_22',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '103',
    'J802338',
    'S',
    '9404448',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    8.204107,
    47.056421,
    '2024-07-08 15:23:00',
    '2024-07-08 15:26:00',
    '2024-07-08 15:41:00',
    '2024-07-08 15:44:00',
    18,
    1,
    'On time',
    'batch_33',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '104',
    'J117090',
    'S',
    '9076961',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    9.459775,
    54.300026,
    '2024-07-08 04:51:00',
    '2024-07-08 05:18:00',
    '2024-07-08 05:09:00',
    '2024-07-08 05:36:00',
    18,
    1,
    'On time',
    'batch_35',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '105',
    'J406635',
    'ICE',
    '8138418',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    12.070298,
    52.014972,
    '2024-07-08 02:57:00',
    '2024-07-08 03:07:00',
    '2024-07-08 03:10:00',
    '2024-07-08 03:20:00',
    13,
    1,
    'On time',
    'batch_38',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '106',
    'J343981',
    'S',
    '8698489',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    8.048787,
    51.131725,
    '2024-07-08 02:41:00',
    '2024-07-08 02:59:00',
    '2024-07-08 02:52:00',
    '2024-07-08 03:10:00',
    11,
    1,
    'On time',
    'batch_39',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '107',
    'J475545',
    'ICE',
    '8447635',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    10.633271,
    52.264343,
    '2024-07-08 14:44:00',
    '2024-07-08 15:07:00',
    '2024-07-08 14:57:00',
    '2024-07-08 15:20:00',
    13,
    1,
    'On time',
    'batch_44',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '108',
    'J520451',
    'ICE',
    '8218529',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    6.401314,
    54.461002,
    '2024-07-08 05:43:00',
    '2024-07-08 06:04:00',
    '2024-07-08 05:51:00',
    '2024-07-08 06:12:00',
    8,
    1,
    'On time',
    'batch_35',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '109',
    'J950995',
    'ICE',
    '8979276',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    9.600069,
    54.430906,
    '2024-07-08 01:59:00',
    '2024-07-08 02:20:00',
    '2024-07-08 02:07:00',
    '2024-07-08 02:28:00',
    8,
    1,
    'On time',
    'batch_22',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '110',
    'J274011',
    'IC',
    '9544818',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    11.555541,
    49.734112,
    '2024-07-08 05:08:00',
    '2024-07-08 05:21:00',
    '2024-07-08 05:24:00',
    '2024-07-08 05:37:00',
    16,
    1,
    'On time',
    'batch_27',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '111',
    'J991058',
    'ICE',
    '8549515',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    8.410435,
    49.379004,
    '2024-07-08 15:01:00',
    '2024-07-08 15:12:00',
    '2024-07-08 15:15:00',
    '2024-07-08 15:26:00',
    14,
    1,
    'On time',
    'batch_33',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '112',
    'J882815',
    'IC',
    '8662468',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    9.683366,
    54.118577,
    '2024-07-08 10:56:00',
    '2024-07-08 11:10:00',
    '2024-07-08 11:15:00',
    '2024-07-08 11:29:00',
    19,
    1,
    'On time',
    'batch_7',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '113',
    'J576520',
    'S',
    '9993096',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    7.377451,
    53.240916,
    '2024-07-08 19:44:00',
    '2024-07-08 19:46:00',
    '2024-07-08 19:51:00',
    '2024-07-08 19:53:00',
    7,
    1,
    'On time',
    'batch_3',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '114',
    'J797091',
    'IC',
    '9526807',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    8.398582,
    47.015364,
    '2024-07-08 23:52:00',
    '2024-07-09 00:20:00',
    '2024-07-09 00:04:00',
    '2024-07-09 00:32:00',
    12,
    1,
    'On time',
    'batch_13',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '115',
    'J936639',
    'RE',
    '9369714',
    'passenger',
    'Berlin-route',
    'Berlin Nord',
    'DE',
    'Berlin',
    '10115',
    7.542951,
    47.405611,
    '2024-07-08 07:07:00',
    '2024-07-08 07:08:00',
    '2024-07-08 07:14:00',
    '2024-07-08 07:15:00',
    7,
    1,
    'On time',
    'batch_13',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '116',
    'J630992',
    'RE',
    '9515038',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    9.022553,
    53.335733,
    '2024-07-08 00:47:00',
    '2024-07-08 01:07:00',
    '2024-07-08 00:54:00',
    '2024-07-08 01:14:00',
    7,
    1,
    'On time',
    'batch_24',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '117',
    'J349816',
    'ICE',
    '9256451',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    6.127132,
    50.091728,
    '2024-07-08 13:12:00',
    '2024-07-08 13:35:00',
    '2024-07-08 13:30:00',
    '2024-07-08 13:53:00',
    18,
    1,
    'On time',
    'batch_32',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '118',
    'J223284',
    'S',
    '9086108',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    10.299914,
    50.119718,
    '2024-07-08 22:15:00',
    '2024-07-08 22:38:00',
    '2024-07-08 22:28:00',
    '2024-07-08 22:51:00',
    13,
    1,
    'On time',
    'batch_31',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '119',
    'J545931',
    'RB',
    '8067762',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    10.044528,
    53.880872,
    '2024-07-08 03:51:00',
    '2024-07-08 03:58:00',
    '2024-07-08 03:53:00',
    '2024-07-08 04:00:00',
    2,
    1,
    'On time',
    'batch_40',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '120',
    'J962504',
    'RE',
    '9130321',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    9.325251,
    52.754468,
    '2024-07-08 04:47:00',
    '2024-07-08 05:00:00',
    '2024-07-08 05:05:00',
    '2024-07-08 05:18:00',
    18,
    1,
    'On time',
    'batch_39',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '121',
    'J318749',
    'ICE',
    '9890678',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    7.488763,
    49.467848,
    '2024-07-08 19:08:00',
    '2024-07-08 19:23:00',
    '2024-07-08 19:17:00',
    '2024-07-08 19:32:00',
    9,
    1,
    'On time',
    'batch_24',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '122',
    'J761347',
    'RE',
    '8605151',
    'passenger',
    'Berlin-route',
    'Berlin West',
    'DE',
    'Berlin',
    '10115',
    9.10805,
    49.089321,
    '2024-07-08 16:21:00',
    '2024-07-08 16:46:00',
    '2024-07-08 16:29:00',
    '2024-07-08 16:54:00',
    8,
    1,
    'On time',
    'batch_3',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '123',
    'J956713',
    'RB',
    '8298625',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    6.439445,
    53.048808,
    '2024-07-08 17:29:00',
    '2024-07-08 17:54:00',
    '2024-07-08 17:47:00',
    '2024-07-08 18:12:00',
    18,
    1,
    'On time',
    'batch_36',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '124',
    'J922581',
    'ICE',
    '8212936',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    12.146321,
    51.841204,
    '2024-07-08 01:42:00',
    '2024-07-08 01:46:00',
    '2024-07-08 01:49:00',
    '2024-07-08 01:53:00',
    7,
    1,
    'On time',
    'batch_10',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '125',
    'J671668',
    'RE',
    '8993243',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    11.345038,
    47.567205,
    '2024-07-08 21:36:00',
    '2024-07-08 22:05:00',
    '2024-07-08 21:44:00',
    '2024-07-08 22:13:00',
    8,
    1,
    'On time',
    'batch_30',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '126',
    'J818171',
    'RB',
    '8992306',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    8.004916,
    54.082613,
    '2024-07-08 00:31:00',
    '2024-07-08 00:46:00',
    '2024-07-08 00:42:00',
    '2024-07-08 00:57:00',
    11,
    1,
    'On time',
    'batch_41',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '127',
    'J574470',
    'RE',
    '9884244',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    11.654213,
    48.646489,
    '2024-07-08 04:27:00',
    '2024-07-08 04:51:00',
    '2024-07-08 04:29:00',
    '2024-07-08 04:53:00',
    2,
    1,
    'On time',
    'batch_47',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '128',
    'J532572',
    'RE',
    '8251751',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    8.03363,
    50.048042,
    '2024-07-08 01:15:00',
    '2024-07-08 01:44:00',
    '2024-07-08 01:15:00',
    '2024-07-08 01:44:00',
    0,
    1,
    'On time',
    'batch_15',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '129',
    'J437559',
    'IC',
    '8450982',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    8.596702,
    52.435385,
    '2024-07-08 17:03:00',
    '2024-07-08 17:12:00',
    '2024-07-08 17:21:00',
    '2024-07-08 17:30:00',
    18,
    1,
    'On time',
    'batch_5',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '130',
    'J581317',
    'IC',
    '8425703',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    10.287001,
    53.187772,
    '2024-07-08 08:29:00',
    '2024-07-08 08:39:00',
    '2024-07-08 08:45:00',
    '2024-07-08 08:55:00',
    16,
    1,
    'On time',
    'batch_40',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '131',
    'J573648',
    'IC',
    '9212014',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    12.684101,
    47.588266,
    '2024-07-08 22:45:00',
    '2024-07-08 23:01:00',
    '2024-07-08 22:54:00',
    '2024-07-08 23:10:00',
    9,
    1,
    'On time',
    'batch_21',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '132',
    'J461259',
    'RE',
    '8913824',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    8.001443,
    53.425628,
    '2024-07-08 23:59:00',
    '2024-07-09 00:13:00',
    '2024-07-09 00:16:00',
    '2024-07-09 00:30:00',
    17,
    1,
    'On time',
    'batch_7',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '133',
    'J529534',
    'RE',
    '8911966',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    8.025722,
    49.720497,
    '2024-07-08 11:33:00',
    '2024-07-08 11:47:00',
    '2024-07-08 11:47:00',
    '2024-07-08 12:01:00',
    14,
    1,
    'On time',
    'batch_36',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '134',
    'J663082',
    'IC',
    '8889614',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    10.375383,
    47.28139,
    '2024-07-08 20:39:00',
    '2024-07-08 21:04:00',
    '2024-07-08 20:41:00',
    '2024-07-08 21:06:00',
    2,
    1,
    'On time',
    'batch_47',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '135',
    'J791508',
    'RB',
    '8141206',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    8.234943,
    51.839175,
    '2024-07-08 20:28:00',
    '2024-07-08 20:38:00',
    '2024-07-08 20:43:00',
    '2024-07-08 20:53:00',
    15,
    1,
    'On time',
    'batch_1',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '136',
    'J667058',
    'RE',
    '9143509',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    8.263225,
    54.279269,
    '2024-07-08 18:59:00',
    '2024-07-08 19:11:00',
    '2024-07-08 19:16:00',
    '2024-07-08 19:28:00',
    17,
    1,
    'On time',
    'batch_45',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '137',
    'J662885',
    'RE',
    '9712488',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    6.211341,
    51.177816,
    '2024-07-08 18:47:00',
    '2024-07-08 19:17:00',
    '2024-07-08 18:55:00',
    '2024-07-08 19:25:00',
    8,
    1,
    'On time',
    'batch_37',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '138',
    'J549348',
    'ICE',
    '8280861',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    12.40408,
    47.48475,
    '2024-07-08 05:25:00',
    '2024-07-08 05:35:00',
    '2024-07-08 05:38:00',
    '2024-07-08 05:48:00',
    13,
    1,
    'On time',
    'batch_47',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '139',
    'J530139',
    'RB',
    '9600493',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    9.366029,
    53.516403,
    '2024-07-08 03:37:00',
    '2024-07-08 03:40:00',
    '2024-07-08 03:41:00',
    '2024-07-08 03:44:00',
    4,
    1,
    'On time',
    'batch_35',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '140',
    'J792334',
    'RB',
    '9798895',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    10.589625,
    47.862143,
    '2024-07-08 07:48:00',
    '2024-07-08 08:13:00',
    '2024-07-08 07:56:00',
    '2024-07-08 08:21:00',
    8,
    1,
    'On time',
    'batch_22',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '141',
    'J628423',
    'RB',
    '9432686',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    12.047346,
    53.075957,
    '2024-07-08 04:01:00',
    '2024-07-08 04:27:00',
    '2024-07-08 04:04:00',
    '2024-07-08 04:30:00',
    3,
    1,
    'On time',
    'batch_22',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '142',
    'J785494',
    'ICE',
    '8592587',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    10.209134,
    49.550709,
    '2024-07-08 01:05:00',
    '2024-07-08 01:09:00',
    '2024-07-08 01:14:00',
    '2024-07-08 01:18:00',
    9,
    1,
    'On time',
    'batch_33',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '143',
    'J498580',
    'RB',
    '9062437',
    'passenger',
    'Berlin-route',
    'Berlin West',
    'DE',
    'Berlin',
    '10115',
    12.113611,
    51.216187,
    '2024-07-08 11:14:00',
    '2024-07-08 11:20:00',
    '2024-07-08 11:21:00',
    '2024-07-08 11:27:00',
    7,
    1,
    'On time',
    'batch_31',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '144',
    'J632017',
    'S',
    '9846315',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    10.879486,
    48.494319,
    '2024-07-08 17:25:00',
    '2024-07-08 17:40:00',
    '2024-07-08 17:27:00',
    '2024-07-08 17:42:00',
    2,
    1,
    'On time',
    'batch_43',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '145',
    'J324580',
    'S',
    '9420545',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    10.30214,
    52.038057,
    '2024-07-08 17:11:00',
    '2024-07-08 17:27:00',
    '2024-07-08 17:28:00',
    '2024-07-08 17:44:00',
    17,
    1,
    'On time',
    'batch_28',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '146',
    'J394464',
    'ICE',
    '8552821',
    'passenger',
    'Hamburg-route',
    'Hamburg Ost',
    'DE',
    'Hamburg',
    '20095',
    8.80083,
    49.673512,
    '2024-07-08 03:17:00',
    '2024-07-08 03:32:00',
    '2024-07-08 03:37:00',
    '2024-07-08 03:52:00',
    20,
    1,
    'On time',
    'batch_45',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '147',
    'J326979',
    'ICE',
    '8866519',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    10.0362,
    48.439279,
    '2024-07-08 06:02:00',
    '2024-07-08 06:03:00',
    '2024-07-08 06:03:00',
    '2024-07-08 06:04:00',
    1,
    1,
    'On time',
    'batch_44',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '148',
    'J997793',
    'S',
    '9362166',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    8.711765,
    49.249627,
    '2024-07-08 23:37:00',
    '2024-07-09 00:01:00',
    '2024-07-08 23:54:00',
    '2024-07-09 00:18:00',
    17,
    1,
    'On time',
    'batch_40',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '149',
    'J921161',
    'S',
    '9274429',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    6.260241,
    48.192031,
    '2024-07-08 08:59:00',
    '2024-07-08 09:02:00',
    '2024-07-08 09:13:00',
    '2024-07-08 09:16:00',
    14,
    1,
    'On time',
    'batch_32',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '150',
    'J258259',
    'IC',
    '9253965',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    7.501188,
    51.262991,
    '2024-07-08 00:16:00',
    '2024-07-08 00:31:00',
    '2024-07-08 00:30:00',
    '2024-07-08 00:45:00',
    14,
    1,
    'On time',
    'batch_8',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '151',
    'J734140',
    'RB',
    '8663709',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    7.717405,
    47.766727,
    '2024-07-08 01:07:00',
    '2024-07-08 01:32:00',
    '2024-07-08 01:26:00',
    '2024-07-08 01:51:00',
    19,
    1,
    'On time',
    'batch_43',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '152',
    'J454067',
    'RB',
    '9196831',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    8.519498,
    50.141118,
    '2024-07-08 06:46:00',
    '2024-07-08 06:50:00',
    '2024-07-08 06:53:00',
    '2024-07-08 06:57:00',
    7,
    1,
    'On time',
    'batch_10',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '153',
    'J733860',
    'S',
    '9757933',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    7.997548,
    54.672812,
    '2024-07-08 19:09:00',
    '2024-07-08 19:17:00',
    '2024-07-08 19:28:00',
    '2024-07-08 19:36:00',
    19,
    1,
    'On time',
    'batch_4',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '154',
    'J750824',
    'IC',
    '9983812',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    9.63331,
    48.568637,
    '2024-07-08 04:08:00',
    '2024-07-08 04:35:00',
    '2024-07-08 04:12:00',
    '2024-07-08 04:39:00',
    4,
    1,
    'On time',
    'batch_9',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '155',
    'J338154',
    'RE',
    '8407195',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    6.859003,
    52.719559,
    '2024-07-08 12:37:00',
    '2024-07-08 12:44:00',
    '2024-07-08 12:39:00',
    '2024-07-08 12:46:00',
    2,
    1,
    'On time',
    'batch_47',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '156',
    'J419448',
    'RB',
    '9362409',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    9.084294,
    53.379783,
    '2024-07-08 03:27:00',
    '2024-07-08 03:53:00',
    '2024-07-08 03:31:00',
    '2024-07-08 03:57:00',
    4,
    1,
    'On time',
    'batch_33',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '157',
    'J380962',
    'RE',
    '8366632',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    8.757964,
    52.977882,
    '2024-07-08 22:53:00',
    '2024-07-08 23:00:00',
    '2024-07-08 22:53:00',
    '2024-07-08 23:00:00',
    0,
    1,
    'On time',
    'batch_6',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '158',
    'J884153',
    'ICE',
    '9318154',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    7.989932,
    52.903252,
    '2024-07-08 02:40:00',
    '2024-07-08 03:08:00',
    '2024-07-08 02:56:00',
    '2024-07-08 03:24:00',
    16,
    1,
    'On time',
    'batch_20',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '159',
    'J369826',
    'S',
    '8928820',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    11.110883,
    54.860871,
    '2024-07-08 16:06:00',
    '2024-07-08 16:07:00',
    '2024-07-08 16:25:00',
    '2024-07-08 16:26:00',
    19,
    1,
    'On time',
    'batch_43',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '160',
    'J586430',
    'S',
    '8528049',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    11.690288,
    49.662123,
    '2024-07-08 03:35:00',
    '2024-07-08 03:56:00',
    '2024-07-08 03:41:00',
    '2024-07-08 04:02:00',
    6,
    1,
    'On time',
    'batch_10',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '161',
    'J555450',
    'RE',
    '8725951',
    'passenger',
    'Berlin-route',
    'Berlin West',
    'DE',
    'Berlin',
    '10115',
    7.235178,
    48.937806,
    '2024-07-08 09:01:00',
    '2024-07-08 09:05:00',
    '2024-07-08 09:17:00',
    '2024-07-08 09:21:00',
    16,
    1,
    'On time',
    'batch_30',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '162',
    'J225608',
    'S',
    '9150279',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    12.049699,
    49.706865,
    '2024-07-08 16:31:00',
    '2024-07-08 16:33:00',
    '2024-07-08 16:37:00',
    '2024-07-08 16:39:00',
    6,
    1,
    'On time',
    'batch_4',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '163',
    'J256356',
    'S',
    '9668019',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    10.182688,
    50.288099,
    '2024-07-08 12:17:00',
    '2024-07-08 12:25:00',
    '2024-07-08 12:25:00',
    '2024-07-08 12:33:00',
    8,
    1,
    'On time',
    'batch_23',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '164',
    'J175888',
    'RE',
    '8310067',
    'passenger',
    'Berlin-route',
    'Berlin West',
    'DE',
    'Berlin',
    '10115',
    10.669132,
    50.907586,
    '2024-07-08 13:45:00',
    '2024-07-08 14:01:00',
    '2024-07-08 13:46:00',
    '2024-07-08 14:02:00',
    1,
    1,
    'On time',
    'batch_6',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '165',
    'J381720',
    'RE',
    '9321793',
    'passenger',
    'Munich-route',
    'Munich West',
    'DE',
    'Munich',
    '80331',
    7.568581,
    47.096832,
    '2024-07-08 04:51:00',
    '2024-07-08 04:59:00',
    '2024-07-08 05:06:00',
    '2024-07-08 05:14:00',
    15,
    1,
    'On time',
    'batch_1',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '166',
    'J868434',
    'S',
    '8847827',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    6.808083,
    54.145654,
    '2024-07-08 08:45:00',
    '2024-07-08 08:55:00',
    '2024-07-08 09:03:00',
    '2024-07-08 09:13:00',
    18,
    1,
    'On time',
    'batch_25',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '167',
    'J441548',
    'ICE',
    '8639724',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    9.534293,
    47.546403,
    '2024-07-08 03:40:00',
    '2024-07-08 04:10:00',
    '2024-07-08 03:58:00',
    '2024-07-08 04:28:00',
    18,
    1,
    'On time',
    'batch_21',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '168',
    'J766738',
    'S',
    '9651034',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    9.92678,
    51.927596,
    '2024-07-08 06:44:00',
    '2024-07-08 07:02:00',
    '2024-07-08 06:51:00',
    '2024-07-08 07:09:00',
    7,
    1,
    'On time',
    'batch_4',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '169',
    'J328646',
    'IC',
    '8274331',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    7.561252,
    53.624939,
    '2024-07-08 07:33:00',
    '2024-07-08 07:35:00',
    '2024-07-08 07:53:00',
    '2024-07-08 07:55:00',
    20,
    1,
    'On time',
    'batch_43',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '170',
    'J533366',
    'ICE',
    '9040259',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    8.697214,
    52.025187,
    '2024-07-08 00:06:00',
    '2024-07-08 00:31:00',
    '2024-07-08 00:22:00',
    '2024-07-08 00:47:00',
    16,
    1,
    'On time',
    'batch_9',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '171',
    'J381928',
    'RE',
    '8293958',
    'passenger',
    'Munich-route',
    'Munich Nord',
    'DE',
    'Munich',
    '80331',
    6.615742,
    48.532357,
    '2024-07-08 00:31:00',
    '2024-07-08 00:35:00',
    '2024-07-08 00:42:00',
    '2024-07-08 00:46:00',
    11,
    1,
    'On time',
    'batch_10',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '172',
    'J159750',
    'RB',
    '9448274',
    'passenger',
    'Berlin-route',
    'Berlin Nord',
    'DE',
    'Berlin',
    '10115',
    12.094618,
    52.536214,
    '2024-07-08 14:01:00',
    '2024-07-08 14:30:00',
    '2024-07-08 14:06:00',
    '2024-07-08 14:35:00',
    5,
    1,
    'On time',
    'batch_2',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '173',
    'J647079',
    'IC',
    '8665845',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    7.030175,
    51.488788,
    '2024-07-08 22:05:00',
    '2024-07-08 22:34:00',
    '2024-07-08 22:20:00',
    '2024-07-08 22:49:00',
    15,
    1,
    'On time',
    'batch_15',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '174',
    'J145833',
    'IC',
    '8463103',
    'passenger',
    'Munich-route',
    'Munich West',
    'DE',
    'Munich',
    '80331',
    11.462912,
    48.912459,
    '2024-07-08 09:53:00',
    '2024-07-08 10:03:00',
    '2024-07-08 09:58:00',
    '2024-07-08 10:08:00',
    5,
    1,
    'On time',
    'batch_46',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '175',
    'J412799',
    'ICE',
    '8489900',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    8.856684,
    51.523829,
    '2024-07-08 15:33:00',
    '2024-07-08 15:41:00',
    '2024-07-08 15:50:00',
    '2024-07-08 15:58:00',
    17,
    1,
    'On time',
    'batch_23',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '176',
    'J316696',
    'S',
    '8855535',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    6.425188,
    50.518528,
    '2024-07-08 15:25:00',
    '2024-07-08 15:46:00',
    '2024-07-08 15:29:00',
    '2024-07-08 15:50:00',
    4,
    1,
    'On time',
    'batch_46',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '177',
    'J460070',
    'RB',
    '9604924',
    'passenger',
    'Hamburg-route',
    'Hamburg Nord',
    'DE',
    'Hamburg',
    '20095',
    12.997683,
    48.286254,
    '2024-07-08 03:25:00',
    '2024-07-08 03:54:00',
    '2024-07-08 03:27:00',
    '2024-07-08 03:56:00',
    2,
    1,
    'On time',
    'batch_10',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '178',
    'J818224',
    'S',
    '9228993',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    6.968008,
    50.277787,
    '2024-07-08 21:47:00',
    '2024-07-08 21:51:00',
    '2024-07-08 21:48:00',
    '2024-07-08 21:52:00',
    1,
    1,
    'On time',
    'batch_14',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '179',
    'J617442',
    'ICE',
    '8318471',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    7.339801,
    53.659517,
    '2024-07-08 23:07:00',
    '2024-07-08 23:34:00',
    '2024-07-08 23:08:00',
    '2024-07-08 23:35:00',
    1,
    1,
    'On time',
    'batch_33',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '180',
    'J896945',
    'ICE',
    '8604377',
    'passenger',
    'Munich-route',
    'Munich Nord',
    'DE',
    'Munich',
    '80331',
    8.078881,
    52.624968,
    '2024-07-08 08:03:00',
    '2024-07-08 08:04:00',
    '2024-07-08 08:18:00',
    '2024-07-08 08:19:00',
    15,
    1,
    'On time',
    'batch_36',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '181',
    'J336887',
    'ICE',
    '9425568',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    7.170478,
    52.339564,
    '2024-07-08 14:38:00',
    '2024-07-08 14:50:00',
    '2024-07-08 14:38:00',
    '2024-07-08 14:50:00',
    0,
    1,
    'On time',
    'batch_19',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '182',
    'J708072',
    'RB',
    '9921544',
    'passenger',
    'Hamburg-route',
    'Hamburg Nord',
    'DE',
    'Hamburg',
    '20095',
    10.816401,
    49.380147,
    '2024-07-08 18:08:00',
    '2024-07-08 18:16:00',
    '2024-07-08 18:21:00',
    '2024-07-08 18:29:00',
    13,
    1,
    'On time',
    'batch_14',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '183',
    'J490729',
    'S',
    '9305106',
    'passenger',
    'Berlin-route',
    'Berlin Nord',
    'DE',
    'Berlin',
    '10115',
    8.31163,
    53.824374,
    '2024-07-08 12:02:00',
    '2024-07-08 12:14:00',
    '2024-07-08 12:08:00',
    '2024-07-08 12:20:00',
    6,
    1,
    'On time',
    'batch_14',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '184',
    'J643706',
    'S',
    '9453967',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    9.421907,
    53.159626,
    '2024-07-08 21:57:00',
    '2024-07-08 22:24:00',
    '2024-07-08 22:05:00',
    '2024-07-08 22:32:00',
    8,
    1,
    'On time',
    'batch_22',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '185',
    'J560030',
    'RE',
    '8948459',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    7.974175,
    49.967616,
    '2024-07-08 07:13:00',
    '2024-07-08 07:17:00',
    '2024-07-08 07:18:00',
    '2024-07-08 07:22:00',
    5,
    1,
    'On time',
    'batch_19',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '186',
    'J188698',
    'ICE',
    '9539662',
    'passenger',
    'Berlin-route',
    'Berlin West',
    'DE',
    'Berlin',
    '10115',
    12.337429,
    53.837512,
    '2024-07-08 05:44:00',
    '2024-07-08 06:06:00',
    '2024-07-08 05:49:00',
    '2024-07-08 06:11:00',
    5,
    1,
    'On time',
    'batch_39',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '187',
    'J671910',
    'RE',
    '9520365',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    9.146492,
    51.50405,
    '2024-07-08 23:20:00',
    '2024-07-08 23:47:00',
    '2024-07-08 23:36:00',
    '2024-07-09 00:03:00',
    16,
    1,
    'On time',
    'batch_40',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '188',
    'J336948',
    'RB',
    '8867463',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    6.980104,
    52.561424,
    '2024-07-08 11:49:00',
    '2024-07-08 12:00:00',
    '2024-07-08 11:50:00',
    '2024-07-08 12:01:00',
    1,
    1,
    'On time',
    'batch_44',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '189',
    'J323191',
    'RE',
    '8114022',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    6.214291,
    48.182049,
    '2024-07-08 08:26:00',
    '2024-07-08 08:42:00',
    '2024-07-08 08:32:00',
    '2024-07-08 08:48:00',
    6,
    1,
    'On time',
    'batch_29',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '190',
    'J520757',
    'ICE',
    '8988874',
    'passenger',
    'Hamburg-route',
    'Hamburg Nord',
    'DE',
    'Hamburg',
    '20095',
    9.76265,
    50.583854,
    '2024-07-08 22:09:00',
    '2024-07-08 22:19:00',
    '2024-07-08 22:28:00',
    '2024-07-08 22:38:00',
    19,
    1,
    'On time',
    'batch_34',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '191',
    'J994142',
    'ICE',
    '9349948',
    'passenger',
    'Hamburg-route',
    'Hamburg Ost',
    'DE',
    'Hamburg',
    '20095',
    6.140592,
    48.033505,
    '2024-07-08 21:50:00',
    '2024-07-08 22:10:00',
    '2024-07-08 21:50:00',
    '2024-07-08 22:10:00',
    0,
    1,
    'On time',
    'batch_7',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '192',
    'J934725',
    'IC',
    '8381028',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    11.973396,
    54.402712,
    '2024-07-08 13:51:00',
    '2024-07-08 13:56:00',
    '2024-07-08 13:56:00',
    '2024-07-08 14:01:00',
    5,
    1,
    'On time',
    'batch_10',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '193',
    'J310070',
    'S',
    '9342582',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    9.407464,
    52.832077,
    '2024-07-08 22:10:00',
    '2024-07-08 22:32:00',
    '2024-07-08 22:15:00',
    '2024-07-08 22:37:00',
    5,
    1,
    'On time',
    'batch_14',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '194',
    'J708900',
    'RE',
    '9801656',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    8.174753,
    51.417389,
    '2024-07-08 21:56:00',
    '2024-07-08 22:26:00',
    '2024-07-08 22:10:00',
    '2024-07-08 22:40:00',
    14,
    1,
    'On time',
    'batch_34',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '195',
    'J991711',
    'ICE',
    '8285011',
    'passenger',
    'Hamburg-route',
    'Hamburg Nord',
    'DE',
    'Hamburg',
    '20095',
    11.234149,
    50.095107,
    '2024-07-08 12:16:00',
    '2024-07-08 12:33:00',
    '2024-07-08 12:23:00',
    '2024-07-08 12:40:00',
    7,
    1,
    'On time',
    'batch_23',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '196',
    'J721702',
    'RB',
    '9902562',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    10.975129,
    52.862194,
    '2024-07-08 07:14:00',
    '2024-07-08 07:21:00',
    '2024-07-08 07:15:00',
    '2024-07-08 07:22:00',
    1,
    1,
    'On time',
    'batch_41',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '197',
    'J645237',
    'ICE',
    '9043529',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    11.894277,
    51.929747,
    '2024-07-08 04:39:00',
    '2024-07-08 04:55:00',
    '2024-07-08 04:44:00',
    '2024-07-08 05:00:00',
    5,
    1,
    'On time',
    'batch_5',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '198',
    'J584799',
    'RE',
    '9256324',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    11.118504,
    50.365731,
    '2024-07-08 12:39:00',
    '2024-07-08 12:49:00',
    '2024-07-08 12:47:00',
    '2024-07-08 12:57:00',
    8,
    1,
    'On time',
    'batch_33',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '199',
    'J771815',
    'IC',
    '8936545',
    'passenger',
    'Munich-route',
    'Munich West',
    'DE',
    'Munich',
    '80331',
    10.020684,
    49.329617,
    '2024-07-08 19:50:00',
    '2024-07-08 19:55:00',
    '2024-07-08 20:10:00',
    '2024-07-08 20:15:00',
    20,
    1,
    'On time',
    'batch_3',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '200',
    'J223345',
    'RE',
    '9256369',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    11.73077,
    53.086612,
    '2024-07-08 02:43:00',
    '2024-07-08 03:09:00',
    '2024-07-08 02:47:00',
    '2024-07-08 03:13:00',
    4,
    1,
    'On time',
    'batch_10',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '201',
    'J720170',
    'RB',
    '9714050',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    10.130307,
    52.323331,
    '2024-07-08 20:30:00',
    '2024-07-08 20:49:00',
    '2024-07-08 20:44:00',
    '2024-07-08 21:03:00',
    14,
    1,
    'On time',
    'batch_27',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '202',
    'J782639',
    'S',
    '8458824',
    'passenger',
    'Munich-route',
    'Munich West',
    'DE',
    'Munich',
    '80331',
    7.655752,
    49.806192,
    '2024-07-08 04:55:00',
    '2024-07-08 05:00:00',
    '2024-07-08 05:03:00',
    '2024-07-08 05:08:00',
    8,
    1,
    'On time',
    'batch_26',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '203',
    'J168434',
    'RE',
    '9208334',
    'passenger',
    'Munich-route',
    'Munich Nord',
    'DE',
    'Munich',
    '80331',
    11.216351,
    49.855648,
    '2024-07-08 02:49:00',
    '2024-07-08 03:14:00',
    '2024-07-08 02:55:00',
    '2024-07-08 03:20:00',
    6,
    1,
    'On time',
    'batch_33',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '204',
    'J608961',
    'IC',
    '8403656',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    8.672623,
    51.956565,
    '2024-07-08 12:19:00',
    '2024-07-08 12:23:00',
    '2024-07-08 12:29:00',
    '2024-07-08 12:33:00',
    10,
    1,
    'On time',
    'batch_4',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '205',
    'J783472',
    'ICE',
    '9958217',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    10.514652,
    50.168915,
    '2024-07-08 09:15:00',
    '2024-07-08 09:34:00',
    '2024-07-08 09:19:00',
    '2024-07-08 09:38:00',
    4,
    1,
    'On time',
    'batch_7',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '206',
    'J112709',
    'RE',
    '8595928',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    11.629094,
    54.662615,
    '2024-07-08 20:22:00',
    '2024-07-08 20:25:00',
    '2024-07-08 20:30:00',
    '2024-07-08 20:33:00',
    8,
    1,
    'On time',
    'batch_26',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '207',
    'J826819',
    'RB',
    '8908360',
    'passenger',
    'Munich-route',
    'Munich West',
    'DE',
    'Munich',
    '80331',
    9.49416,
    47.360522,
    '2024-07-08 22:52:00',
    '2024-07-08 23:22:00',
    '2024-07-08 22:56:00',
    '2024-07-08 23:26:00',
    4,
    1,
    'On time',
    'batch_29',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '208',
    'J804702',
    'IC',
    '8456232',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    7.539273,
    50.798554,
    '2024-07-08 09:47:00',
    '2024-07-08 09:51:00',
    '2024-07-08 09:58:00',
    '2024-07-08 10:02:00',
    11,
    1,
    'On time',
    'batch_25',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '209',
    'J116411',
    'RE',
    '8241365',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    12.48687,
    51.074818,
    '2024-07-08 01:28:00',
    '2024-07-08 01:29:00',
    '2024-07-08 01:40:00',
    '2024-07-08 01:41:00',
    12,
    1,
    'On time',
    'batch_8',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '210',
    'J541426',
    'S',
    '8166377',
    'passenger',
    'Munich-route',
    'Munich West',
    'DE',
    'Munich',
    '80331',
    6.238652,
    47.362231,
    '2024-07-08 07:50:00',
    '2024-07-08 08:18:00',
    '2024-07-08 08:03:00',
    '2024-07-08 08:31:00',
    13,
    1,
    'On time',
    'batch_20',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '211',
    'J422977',
    'RB',
    '8421708',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    10.345018,
    52.079442,
    '2024-07-08 04:21:00',
    '2024-07-08 04:28:00',
    '2024-07-08 04:23:00',
    '2024-07-08 04:30:00',
    2,
    1,
    'On time',
    'batch_34',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '212',
    'J706162',
    'RE',
    '9721570',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    10.309168,
    47.617729,
    '2024-07-08 15:41:00',
    '2024-07-08 15:47:00',
    '2024-07-08 15:59:00',
    '2024-07-08 16:05:00',
    18,
    1,
    'On time',
    'batch_4',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '213',
    'J277026',
    'IC',
    '9042116',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    7.985986,
    48.918282,
    '2024-07-08 05:42:00',
    '2024-07-08 06:06:00',
    '2024-07-08 05:56:00',
    '2024-07-08 06:20:00',
    14,
    1,
    'On time',
    'batch_39',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '214',
    'J688607',
    'IC',
    '9344937',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    8.895029,
    54.627549,
    '2024-07-08 07:35:00',
    '2024-07-08 07:37:00',
    '2024-07-08 07:50:00',
    '2024-07-08 07:52:00',
    15,
    1,
    'On time',
    'batch_9',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '215',
    'J502737',
    'RB',
    '8899554',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    9.994821,
    51.791764,
    '2024-07-08 04:44:00',
    '2024-07-08 05:00:00',
    '2024-07-08 05:00:00',
    '2024-07-08 05:16:00',
    16,
    1,
    'On time',
    'batch_16',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '216',
    'J536554',
    'RB',
    '8926307',
    'passenger',
    'Berlin-route',
    'Berlin Nord',
    'DE',
    'Berlin',
    '10115',
    11.342632,
    51.983201,
    '2024-07-08 12:59:00',
    '2024-07-08 13:07:00',
    '2024-07-08 13:12:00',
    '2024-07-08 13:20:00',
    13,
    1,
    'On time',
    'batch_21',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '217',
    'J238095',
    'IC',
    '9419158',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    6.152173,
    53.85822,
    '2024-07-08 07:49:00',
    '2024-07-08 07:51:00',
    '2024-07-08 08:00:00',
    '2024-07-08 08:02:00',
    11,
    1,
    'On time',
    'batch_8',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '218',
    'J155342',
    'IC',
    '8392833',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    10.531666,
    54.085116,
    '2024-07-08 16:55:00',
    '2024-07-08 17:02:00',
    '2024-07-08 17:10:00',
    '2024-07-08 17:17:00',
    15,
    1,
    'On time',
    'batch_25',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '219',
    'J866120',
    'IC',
    '9573129',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    10.376161,
    52.29612,
    '2024-07-08 21:13:00',
    '2024-07-08 21:36:00',
    '2024-07-08 21:28:00',
    '2024-07-08 21:51:00',
    15,
    1,
    'On time',
    'batch_47',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '220',
    'J915992',
    'S',
    '8634339',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    8.570166,
    51.868796,
    '2024-07-08 13:02:00',
    '2024-07-08 13:17:00',
    '2024-07-08 13:14:00',
    '2024-07-08 13:29:00',
    12,
    1,
    'On time',
    'batch_30',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '221',
    'J828598',
    'IC',
    '8009585',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    8.234127,
    51.794807,
    '2024-07-08 22:23:00',
    '2024-07-08 22:33:00',
    '2024-07-08 22:38:00',
    '2024-07-08 22:48:00',
    15,
    1,
    'On time',
    'batch_36',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '222',
    'J717032',
    'ICE',
    '8927162',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    8.857055,
    48.348967,
    '2024-07-08 01:39:00',
    '2024-07-08 01:46:00',
    '2024-07-08 01:44:00',
    '2024-07-08 01:51:00',
    5,
    1,
    'On time',
    'batch_17',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '223',
    'J401791',
    'ICE',
    '9015911',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    7.155216,
    54.34282,
    '2024-07-08 12:56:00',
    '2024-07-08 12:57:00',
    '2024-07-08 12:56:00',
    '2024-07-08 12:57:00',
    0,
    1,
    'On time',
    'batch_22',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '224',
    'J976212',
    'RB',
    '8156005',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    9.332678,
    52.452486,
    '2024-07-08 00:18:00',
    '2024-07-08 00:35:00',
    '2024-07-08 00:33:00',
    '2024-07-08 00:50:00',
    15,
    1,
    'On time',
    'batch_18',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '225',
    'J327456',
    'ICE',
    '8945628',
    'passenger',
    'Munich-route',
    'Munich Nord',
    'DE',
    'Munich',
    '80331',
    7.481466,
    53.613056,
    '2024-07-08 17:07:00',
    '2024-07-08 17:14:00',
    '2024-07-08 17:24:00',
    '2024-07-08 17:31:00',
    17,
    1,
    'On time',
    'batch_46',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '226',
    'J946836',
    'RB',
    '9858677',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    12.907431,
    52.935171,
    '2024-07-08 00:47:00',
    '2024-07-08 01:10:00',
    '2024-07-08 00:52:00',
    '2024-07-08 01:15:00',
    5,
    1,
    'On time',
    'batch_15',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '227',
    'J157581',
    'IC',
    '9472117',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    7.245514,
    47.533751,
    '2024-07-08 18:23:00',
    '2024-07-08 18:46:00',
    '2024-07-08 18:29:00',
    '2024-07-08 18:52:00',
    6,
    1,
    'On time',
    'batch_20',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '228',
    'J514053',
    'RE',
    '9979882',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    7.771142,
    50.217783,
    '2024-07-08 14:04:00',
    '2024-07-08 14:30:00',
    '2024-07-08 14:11:00',
    '2024-07-08 14:37:00',
    7,
    1,
    'On time',
    'batch_15',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '229',
    'J589878',
    'IC',
    '9859666',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    6.834935,
    51.44421,
    '2024-07-08 11:43:00',
    '2024-07-08 11:53:00',
    '2024-07-08 11:59:00',
    '2024-07-08 12:09:00',
    16,
    1,
    'On time',
    'batch_9',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '230',
    'J433482',
    'RE',
    '8058375',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    11.016134,
    49.266361,
    '2024-07-08 08:25:00',
    '2024-07-08 08:52:00',
    '2024-07-08 08:45:00',
    '2024-07-08 09:12:00',
    20,
    1,
    'On time',
    'batch_44',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '231',
    'J800699',
    'S',
    '9747095',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    9.240846,
    52.426078,
    '2024-07-08 08:52:00',
    '2024-07-08 09:21:00',
    '2024-07-08 08:59:00',
    '2024-07-08 09:28:00',
    7,
    1,
    'On time',
    'batch_15',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '232',
    'J975482',
    'S',
    '9117651',
    'passenger',
    'Berlin-route',
    'Berlin Nord',
    'DE',
    'Berlin',
    '10115',
    12.941832,
    52.949449,
    '2024-07-08 15:44:00',
    '2024-07-08 16:00:00',
    '2024-07-08 15:54:00',
    '2024-07-08 16:10:00',
    10,
    1,
    'On time',
    'batch_10',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '233',
    'J498237',
    'S',
    '9595530',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    8.012282,
    49.009328,
    '2024-07-08 04:15:00',
    '2024-07-08 04:20:00',
    '2024-07-08 04:25:00',
    '2024-07-08 04:30:00',
    10,
    1,
    'On time',
    'batch_28',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '234',
    'J609493',
    'RE',
    '9400601',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    11.369411,
    51.602984,
    '2024-07-08 00:37:00',
    '2024-07-08 00:44:00',
    '2024-07-08 00:46:00',
    '2024-07-08 00:53:00',
    9,
    1,
    'On time',
    'batch_49',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '235',
    'J518888',
    'RE',
    '8261712',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    8.913372,
    51.712695,
    '2024-07-08 04:50:00',
    '2024-07-08 05:05:00',
    '2024-07-08 05:10:00',
    '2024-07-08 05:25:00',
    20,
    1,
    'On time',
    'batch_2',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '236',
    'J466159',
    'RE',
    '9736695',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    12.751793,
    49.374387,
    '2024-07-08 17:37:00',
    '2024-07-08 17:57:00',
    '2024-07-08 17:47:00',
    '2024-07-08 18:07:00',
    10,
    1,
    'On time',
    'batch_15',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '237',
    'J285815',
    'RE',
    '9885008',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    11.316831,
    51.710514,
    '2024-07-08 11:38:00',
    '2024-07-08 12:00:00',
    '2024-07-08 11:42:00',
    '2024-07-08 12:04:00',
    4,
    1,
    'On time',
    'batch_35',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '238',
    'J326825',
    'RB',
    '9460747',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    11.29411,
    51.538974,
    '2024-07-08 12:37:00',
    '2024-07-08 12:41:00',
    '2024-07-08 12:37:00',
    '2024-07-08 12:41:00',
    0,
    1,
    'On time',
    'batch_41',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '239',
    'J933029',
    'IC',
    '8296427',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    9.68051,
    50.159811,
    '2024-07-08 08:37:00',
    '2024-07-08 09:06:00',
    '2024-07-08 08:57:00',
    '2024-07-08 09:26:00',
    20,
    1,
    'On time',
    'batch_24',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '240',
    'J868016',
    'RE',
    '8450212',
    'passenger',
    'Munich-route',
    'Munich Nord',
    'DE',
    'Munich',
    '80331',
    7.974832,
    48.768125,
    '2024-07-08 06:37:00',
    '2024-07-08 07:04:00',
    '2024-07-08 06:50:00',
    '2024-07-08 07:17:00',
    13,
    1,
    'On time',
    'batch_41',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '241',
    'J599052',
    'S',
    '9638271',
    'passenger',
    'Hamburg-route',
    'Hamburg Ost',
    'DE',
    'Hamburg',
    '20095',
    12.970462,
    54.524057,
    '2024-07-08 04:35:00',
    '2024-07-08 04:56:00',
    '2024-07-08 04:51:00',
    '2024-07-08 05:12:00',
    16,
    1,
    'On time',
    'batch_25',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '242',
    'J584530',
    'RB',
    '9683340',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    6.829025,
    49.73538,
    '2024-07-08 06:01:00',
    '2024-07-08 06:23:00',
    '2024-07-08 06:14:00',
    '2024-07-08 06:36:00',
    13,
    1,
    'On time',
    'batch_27',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '243',
    'J348862',
    'RE',
    '9933508',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    7.101373,
    54.96996,
    '2024-07-08 03:48:00',
    '2024-07-08 03:54:00',
    '2024-07-08 03:58:00',
    '2024-07-08 04:04:00',
    10,
    1,
    'On time',
    'batch_17',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '244',
    'J706034',
    'S',
    '8541921',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    9.826321,
    51.138729,
    '2024-07-08 18:48:00',
    '2024-07-08 18:55:00',
    '2024-07-08 18:49:00',
    '2024-07-08 18:56:00',
    1,
    1,
    'On time',
    'batch_15',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '245',
    'J320883',
    'S',
    '8294613',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    9.570063,
    53.812064,
    '2024-07-08 15:53:00',
    '2024-07-08 16:09:00',
    '2024-07-08 16:11:00',
    '2024-07-08 16:27:00',
    18,
    1,
    'On time',
    'batch_19',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '246',
    'J830034',
    'S',
    '9359119',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    6.405413,
    48.564219,
    '2024-07-08 13:36:00',
    '2024-07-08 13:44:00',
    '2024-07-08 13:44:00',
    '2024-07-08 13:52:00',
    8,
    1,
    'On time',
    'batch_2',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '247',
    'J844525',
    'IC',
    '9844975',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    10.765719,
    54.553256,
    '2024-07-08 10:39:00',
    '2024-07-08 10:53:00',
    '2024-07-08 10:44:00',
    '2024-07-08 10:58:00',
    5,
    1,
    'On time',
    'batch_40',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '248',
    'J340197',
    'ICE',
    '8300702',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    12.748209,
    47.746328,
    '2024-07-08 04:54:00',
    '2024-07-08 05:15:00',
    '2024-07-08 05:04:00',
    '2024-07-08 05:25:00',
    10,
    1,
    'On time',
    'batch_14',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '249',
    'J791598',
    'RB',
    '9386137',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    9.83911,
    50.968967,
    '2024-07-08 23:06:00',
    '2024-07-08 23:22:00',
    '2024-07-08 23:13:00',
    '2024-07-08 23:29:00',
    7,
    1,
    'On time',
    'batch_43',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '250',
    'J475214',
    'IC',
    '8541490',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    10.774491,
    53.023611,
    '2024-07-08 12:16:00',
    '2024-07-08 12:26:00',
    '2024-07-08 12:21:00',
    '2024-07-08 12:31:00',
    5,
    1,
    'On time',
    'batch_19',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '251',
    'J363021',
    'ICE',
    '8908026',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    6.568772,
    47.551844,
    '2024-07-08 01:53:00',
    '2024-07-08 01:56:00',
    '2024-07-08 01:55:00',
    '2024-07-08 01:58:00',
    2,
    1,
    'On time',
    'batch_30',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '252',
    'J298450',
    'RE',
    '8902720',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    12.612905,
    50.276071,
    '2024-07-08 18:42:00',
    '2024-07-08 19:06:00',
    '2024-07-08 18:48:00',
    '2024-07-08 19:12:00',
    6,
    1,
    'On time',
    'batch_1',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '253',
    'J995096',
    'S',
    '8707518',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    12.419036,
    49.534273,
    '2024-07-08 12:44:00',
    '2024-07-08 13:00:00',
    '2024-07-08 12:55:00',
    '2024-07-08 13:11:00',
    11,
    1,
    'On time',
    'batch_29',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '254',
    'J574564',
    'S',
    '8024429',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    6.331508,
    48.541084,
    '2024-07-08 20:46:00',
    '2024-07-08 20:54:00',
    '2024-07-08 20:51:00',
    '2024-07-08 20:59:00',
    5,
    1,
    'On time',
    'batch_4',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '255',
    'J946943',
    'S',
    '9357781',
    'passenger',
    'Hamburg-route',
    'Hamburg Ost',
    'DE',
    'Hamburg',
    '20095',
    9.138348,
    53.759469,
    '2024-07-08 16:45:00',
    '2024-07-08 16:58:00',
    '2024-07-08 16:54:00',
    '2024-07-08 17:07:00',
    9,
    1,
    'On time',
    'batch_19',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '256',
    'J954483',
    'S',
    '8254593',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    11.847228,
    48.611416,
    '2024-07-08 00:47:00',
    '2024-07-08 01:11:00',
    '2024-07-08 01:07:00',
    '2024-07-08 01:31:00',
    20,
    1,
    'On time',
    'batch_3',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '257',
    'J621139',
    'RE',
    '8177440',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    7.033465,
    54.498261,
    '2024-07-08 20:38:00',
    '2024-07-08 20:39:00',
    '2024-07-08 20:53:00',
    '2024-07-08 20:54:00',
    15,
    1,
    'On time',
    'batch_21',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '258',
    'J314205',
    'RB',
    '8928572',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    7.009969,
    53.943729,
    '2024-07-08 12:42:00',
    '2024-07-08 13:04:00',
    '2024-07-08 12:50:00',
    '2024-07-08 13:12:00',
    8,
    1,
    'On time',
    'batch_40',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '259',
    'J235108',
    'RE',
    '9853718',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    10.867979,
    48.328824,
    '2024-07-08 16:04:00',
    '2024-07-08 16:18:00',
    '2024-07-08 16:16:00',
    '2024-07-08 16:30:00',
    12,
    1,
    'On time',
    'batch_49',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '260',
    'J710576',
    'S',
    '9363361',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    9.531351,
    48.049822,
    '2024-07-08 00:51:00',
    '2024-07-08 01:13:00',
    '2024-07-08 01:09:00',
    '2024-07-08 01:31:00',
    18,
    1,
    'On time',
    'batch_4',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '261',
    'J430348',
    'RE',
    '9876123',
    'passenger',
    'Berlin-route',
    'Berlin West',
    'DE',
    'Berlin',
    '10115',
    8.462684,
    48.052443,
    '2024-07-08 23:01:00',
    '2024-07-08 23:13:00',
    '2024-07-08 23:13:00',
    '2024-07-08 23:25:00',
    12,
    1,
    'On time',
    'batch_34',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '262',
    'J888310',
    'RE',
    '8040624',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    7.948176,
    54.37191,
    '2024-07-08 02:47:00',
    '2024-07-08 03:12:00',
    '2024-07-08 02:59:00',
    '2024-07-08 03:24:00',
    12,
    1,
    'On time',
    'batch_1',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '263',
    'J492622',
    'RB',
    '9074907',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    7.915541,
    52.056993,
    '2024-07-08 07:36:00',
    '2024-07-08 07:52:00',
    '2024-07-08 07:41:00',
    '2024-07-08 07:57:00',
    5,
    1,
    'On time',
    'batch_36',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '264',
    'J858042',
    'S',
    '9310732',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    9.367897,
    50.823625,
    '2024-07-08 07:41:00',
    '2024-07-08 07:51:00',
    '2024-07-08 07:51:00',
    '2024-07-08 08:01:00',
    10,
    1,
    'On time',
    'batch_40',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '265',
    'J476014',
    'IC',
    '9607358',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    6.025953,
    48.905818,
    '2024-07-08 20:02:00',
    '2024-07-08 20:28:00',
    '2024-07-08 20:11:00',
    '2024-07-08 20:37:00',
    9,
    1,
    'On time',
    'batch_21',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '266',
    'J808142',
    'ICE',
    '8603347',
    'passenger',
    'Munich-route',
    'Munich Nord',
    'DE',
    'Munich',
    '80331',
    9.215009,
    52.77498,
    '2024-07-08 10:34:00',
    '2024-07-08 10:45:00',
    '2024-07-08 10:37:00',
    '2024-07-08 10:48:00',
    3,
    1,
    'On time',
    'batch_46',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '267',
    'J965934',
    'S',
    '8829475',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    12.316528,
    54.667367,
    '2024-07-08 02:34:00',
    '2024-07-08 03:01:00',
    '2024-07-08 02:54:00',
    '2024-07-08 03:21:00',
    20,
    1,
    'On time',
    'batch_16',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '268',
    'J222564',
    'IC',
    '9615253',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    6.222732,
    47.898204,
    '2024-07-08 10:13:00',
    '2024-07-08 10:23:00',
    '2024-07-08 10:31:00',
    '2024-07-08 10:41:00',
    18,
    1,
    'On time',
    'batch_22',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '269',
    'J207289',
    'S',
    '8191082',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    7.905139,
    49.586981,
    '2024-07-08 21:50:00',
    '2024-07-08 22:12:00',
    '2024-07-08 22:02:00',
    '2024-07-08 22:24:00',
    12,
    1,
    'On time',
    'batch_28',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '270',
    'J752859',
    'RE',
    '9759871',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    7.288919,
    47.014049,
    '2024-07-08 04:46:00',
    '2024-07-08 04:53:00',
    '2024-07-08 05:01:00',
    '2024-07-08 05:08:00',
    15,
    1,
    'On time',
    'batch_44',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '271',
    'J701698',
    'IC',
    '8528758',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    6.33328,
    54.940435,
    '2024-07-08 19:35:00',
    '2024-07-08 19:51:00',
    '2024-07-08 19:41:00',
    '2024-07-08 19:57:00',
    6,
    1,
    'On time',
    'batch_1',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '272',
    'J555334',
    'RB',
    '9145140',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    6.184839,
    52.771478,
    '2024-07-08 05:38:00',
    '2024-07-08 05:44:00',
    '2024-07-08 05:39:00',
    '2024-07-08 05:45:00',
    1,
    1,
    'On time',
    'batch_50',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '273',
    'J656349',
    'IC',
    '8619839',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    10.207519,
    47.777317,
    '2024-07-08 15:07:00',
    '2024-07-08 15:23:00',
    '2024-07-08 15:13:00',
    '2024-07-08 15:29:00',
    6,
    1,
    'On time',
    'batch_25',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '274',
    'J112510',
    'S',
    '9023349',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    12.028826,
    47.892571,
    '2024-07-08 03:26:00',
    '2024-07-08 03:36:00',
    '2024-07-08 03:39:00',
    '2024-07-08 03:49:00',
    13,
    1,
    'On time',
    'batch_46',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '275',
    'J337560',
    'S',
    '8633255',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    8.272242,
    48.961149,
    '2024-07-08 23:09:00',
    '2024-07-08 23:22:00',
    '2024-07-08 23:15:00',
    '2024-07-08 23:28:00',
    6,
    1,
    'On time',
    'batch_33',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '276',
    'J939789',
    'RE',
    '9468520',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    11.135214,
    54.829329,
    '2024-07-08 23:24:00',
    '2024-07-08 23:45:00',
    '2024-07-08 23:33:00',
    '2024-07-08 23:54:00',
    9,
    1,
    'On time',
    'batch_7',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '277',
    'J337815',
    'IC',
    '9184980',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    8.532267,
    52.179475,
    '2024-07-08 21:00:00',
    '2024-07-08 21:16:00',
    '2024-07-08 21:06:00',
    '2024-07-08 21:22:00',
    6,
    1,
    'On time',
    'batch_39',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '278',
    'J185032',
    'RE',
    '8534557',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    12.919535,
    51.697703,
    '2024-07-08 02:43:00',
    '2024-07-08 02:47:00',
    '2024-07-08 03:00:00',
    '2024-07-08 03:04:00',
    17,
    1,
    'On time',
    'batch_22',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '279',
    'J928150',
    'ICE',
    '9295280',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    10.493247,
    49.749327,
    '2024-07-08 14:27:00',
    '2024-07-08 14:45:00',
    '2024-07-08 14:35:00',
    '2024-07-08 14:53:00',
    8,
    1,
    'On time',
    'batch_15',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '280',
    'J325426',
    'IC',
    '8067546',
    'passenger',
    'Hamburg-route',
    'Hamburg Nord',
    'DE',
    'Hamburg',
    '20095',
    6.198158,
    52.806779,
    '2024-07-08 21:34:00',
    '2024-07-08 21:55:00',
    '2024-07-08 21:47:00',
    '2024-07-08 22:08:00',
    13,
    1,
    'On time',
    'batch_45',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '281',
    'J721671',
    'RE',
    '8627718',
    'passenger',
    'Munich-route',
    'Munich Nord',
    'DE',
    'Munich',
    '80331',
    10.094795,
    50.343351,
    '2024-07-08 05:00:00',
    '2024-07-08 05:03:00',
    '2024-07-08 05:09:00',
    '2024-07-08 05:12:00',
    9,
    1,
    'On time',
    'batch_33',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '282',
    'J677614',
    'ICE',
    '9474502',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    7.693233,
    47.307101,
    '2024-07-08 03:38:00',
    '2024-07-08 03:59:00',
    '2024-07-08 03:55:00',
    '2024-07-08 04:16:00',
    17,
    1,
    'On time',
    'batch_2',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '283',
    'J545042',
    'IC',
    '9420050',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    9.016064,
    50.234756,
    '2024-07-08 06:08:00',
    '2024-07-08 06:22:00',
    '2024-07-08 06:21:00',
    '2024-07-08 06:35:00',
    13,
    1,
    'On time',
    'batch_33',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '284',
    'J584279',
    'ICE',
    '8197153',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    9.588757,
    51.860901,
    '2024-07-08 21:08:00',
    '2024-07-08 21:22:00',
    '2024-07-08 21:15:00',
    '2024-07-08 21:29:00',
    7,
    1,
    'On time',
    'batch_50',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '285',
    'J156675',
    'IC',
    '9663081',
    'passenger',
    'Munich-route',
    'Munich West',
    'DE',
    'Munich',
    '80331',
    7.583521,
    52.803645,
    '2024-07-08 22:43:00',
    '2024-07-08 22:56:00',
    '2024-07-08 22:52:00',
    '2024-07-08 23:05:00',
    9,
    1,
    'On time',
    'batch_18',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '286',
    'J958390',
    'S',
    '8958814',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    8.567084,
    54.988754,
    '2024-07-08 05:52:00',
    '2024-07-08 06:05:00',
    '2024-07-08 06:01:00',
    '2024-07-08 06:14:00',
    9,
    1,
    'On time',
    'batch_23',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '287',
    'J798447',
    'ICE',
    '8506057',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    10.282123,
    50.75613,
    '2024-07-08 05:36:00',
    '2024-07-08 05:41:00',
    '2024-07-08 05:46:00',
    '2024-07-08 05:51:00',
    10,
    1,
    'On time',
    'batch_10',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '288',
    'J822287',
    'RE',
    '8835631',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    9.169575,
    50.992467,
    '2024-07-08 07:15:00',
    '2024-07-08 07:38:00',
    '2024-07-08 07:26:00',
    '2024-07-08 07:49:00',
    11,
    1,
    'On time',
    'batch_42',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '289',
    'J980239',
    'RE',
    '8222446',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    9.155132,
    53.106704,
    '2024-07-08 13:21:00',
    '2024-07-08 13:29:00',
    '2024-07-08 13:35:00',
    '2024-07-08 13:43:00',
    14,
    1,
    'On time',
    'batch_26',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '290',
    'J411758',
    'IC',
    '8705702',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    8.850574,
    50.996821,
    '2024-07-08 01:35:00',
    '2024-07-08 01:54:00',
    '2024-07-08 01:42:00',
    '2024-07-08 02:01:00',
    7,
    1,
    'On time',
    'batch_4',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '291',
    'J273347',
    'IC',
    '9555215',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    9.134573,
    54.963548,
    '2024-07-08 19:44:00',
    '2024-07-08 19:53:00',
    '2024-07-08 19:56:00',
    '2024-07-08 20:05:00',
    12,
    1,
    'On time',
    'batch_46',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '292',
    'J539294',
    'RE',
    '9642125',
    'passenger',
    'Berlin-route',
    'Berlin Nord',
    'DE',
    'Berlin',
    '10115',
    11.628599,
    50.945666,
    '2024-07-08 05:39:00',
    '2024-07-08 05:52:00',
    '2024-07-08 05:39:00',
    '2024-07-08 05:52:00',
    0,
    1,
    'On time',
    'batch_22',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '293',
    'J826234',
    'IC',
    '8618258',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    8.378963,
    51.493296,
    '2024-07-08 22:08:00',
    '2024-07-08 22:20:00',
    '2024-07-08 22:12:00',
    '2024-07-08 22:24:00',
    4,
    1,
    'On time',
    'batch_12',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '294',
    'J900056',
    'IC',
    '9963770',
    'passenger',
    'Munich-route',
    'Munich Nord',
    'DE',
    'Munich',
    '80331',
    12.327267,
    52.441722,
    '2024-07-08 01:44:00',
    '2024-07-08 02:14:00',
    '2024-07-08 01:54:00',
    '2024-07-08 02:24:00',
    10,
    1,
    'On time',
    'batch_35',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '295',
    'J217432',
    'S',
    '9275551',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    7.850389,
    47.577438,
    '2024-07-08 04:59:00',
    '2024-07-08 05:11:00',
    '2024-07-08 05:19:00',
    '2024-07-08 05:31:00',
    20,
    1,
    'On time',
    'batch_20',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '296',
    'J378935',
    'ICE',
    '9218930',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    11.566029,
    50.24032,
    '2024-07-08 10:51:00',
    '2024-07-08 11:14:00',
    '2024-07-08 11:07:00',
    '2024-07-08 11:30:00',
    16,
    1,
    'On time',
    'batch_20',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '297',
    'J912993',
    'S',
    '9149230',
    'passenger',
    'Munich-route',
    'Munich Nord',
    'DE',
    'Munich',
    '80331',
    11.663335,
    54.694584,
    '2024-07-08 03:24:00',
    '2024-07-08 03:25:00',
    '2024-07-08 03:40:00',
    '2024-07-08 03:41:00',
    16,
    1,
    'On time',
    'batch_9',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '298',
    'J644000',
    'RE',
    '9758348',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    11.578814,
    53.800541,
    '2024-07-08 10:37:00',
    '2024-07-08 10:48:00',
    '2024-07-08 10:49:00',
    '2024-07-08 11:00:00',
    12,
    1,
    'On time',
    'batch_23',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '299',
    'J160203',
    'RE',
    '8209279',
    'passenger',
    'Munich-route',
    'Munich Nord',
    'DE',
    'Munich',
    '80331',
    11.911724,
    47.691698,
    '2024-07-08 22:39:00',
    '2024-07-08 22:42:00',
    '2024-07-08 22:49:00',
    '2024-07-08 22:52:00',
    10,
    1,
    'On time',
    'batch_33',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '300',
    'J359650',
    'RE',
    '8786399',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    8.846943,
    51.938123,
    '2024-07-08 00:13:00',
    '2024-07-08 00:43:00',
    '2024-07-08 00:27:00',
    '2024-07-08 00:57:00',
    14,
    1,
    'On time',
    'batch_43',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '301',
    'J323763',
    'S',
    '8249991',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    9.834566,
    48.506378,
    '2024-07-08 20:07:00',
    '2024-07-08 20:32:00',
    '2024-07-08 20:09:00',
    '2024-07-08 20:34:00',
    2,
    1,
    'On time',
    'batch_50',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '302',
    'J844992',
    'RE',
    '9922952',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    6.929508,
    50.622672,
    '2024-07-08 14:34:00',
    '2024-07-08 14:37:00',
    '2024-07-08 14:48:00',
    '2024-07-08 14:51:00',
    14,
    1,
    'On time',
    'batch_22',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '303',
    'J852646',
    'RE',
    '9432639',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    10.262427,
    52.467496,
    '2024-07-08 08:25:00',
    '2024-07-08 08:38:00',
    '2024-07-08 08:42:00',
    '2024-07-08 08:55:00',
    17,
    1,
    'On time',
    'batch_25',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '304',
    'J440037',
    'IC',
    '8095628',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    12.420478,
    52.084904,
    '2024-07-08 11:55:00',
    '2024-07-08 11:58:00',
    '2024-07-08 11:55:00',
    '2024-07-08 11:58:00',
    0,
    1,
    'On time',
    'batch_4',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '305',
    'J730783',
    'RB',
    '8631681',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    8.009386,
    47.701426,
    '2024-07-08 05:53:00',
    '2024-07-08 06:16:00',
    '2024-07-08 06:07:00',
    '2024-07-08 06:30:00',
    14,
    1,
    'On time',
    'batch_6',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '306',
    'J338966',
    'S',
    '8458790',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    8.990076,
    52.046257,
    '2024-07-08 15:22:00',
    '2024-07-08 15:40:00',
    '2024-07-08 15:22:00',
    '2024-07-08 15:40:00',
    0,
    1,
    'On time',
    'batch_40',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '307',
    'J428516',
    'RB',
    '9894917',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    6.760626,
    50.249333,
    '2024-07-08 21:39:00',
    '2024-07-08 22:07:00',
    '2024-07-08 21:47:00',
    '2024-07-08 22:15:00',
    8,
    1,
    'On time',
    'batch_35',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '308',
    'J474120',
    'S',
    '9529100',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    9.804076,
    54.306425,
    '2024-07-08 17:18:00',
    '2024-07-08 17:39:00',
    '2024-07-08 17:35:00',
    '2024-07-08 17:56:00',
    17,
    1,
    'On time',
    'batch_24',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '309',
    'J789371',
    'IC',
    '9509390',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    11.386699,
    53.587849,
    '2024-07-08 16:34:00',
    '2024-07-08 17:02:00',
    '2024-07-08 16:41:00',
    '2024-07-08 17:09:00',
    7,
    1,
    'On time',
    'batch_6',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '310',
    'J681241',
    'RE',
    '8851227',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    7.87755,
    52.592304,
    '2024-07-08 11:05:00',
    '2024-07-08 11:06:00',
    '2024-07-08 11:18:00',
    '2024-07-08 11:19:00',
    13,
    1,
    'On time',
    'batch_30',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '311',
    'J829562',
    'RB',
    '8582317',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    11.395264,
    51.574851,
    '2024-07-08 22:58:00',
    '2024-07-08 23:19:00',
    '2024-07-08 23:05:00',
    '2024-07-08 23:26:00',
    7,
    1,
    'On time',
    'batch_6',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '312',
    'J859001',
    'IC',
    '8432919',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    10.572504,
    52.787739,
    '2024-07-08 21:16:00',
    '2024-07-08 21:34:00',
    '2024-07-08 21:23:00',
    '2024-07-08 21:41:00',
    7,
    1,
    'On time',
    'batch_7',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '313',
    'J772833',
    'RE',
    '9741053',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    11.572665,
    47.034105,
    '2024-07-08 09:50:00',
    '2024-07-08 10:18:00',
    '2024-07-08 10:06:00',
    '2024-07-08 10:34:00',
    16,
    1,
    'On time',
    'batch_22',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '314',
    'J135400',
    'RE',
    '8642511',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    11.754036,
    48.456814,
    '2024-07-08 04:09:00',
    '2024-07-08 04:20:00',
    '2024-07-08 04:09:00',
    '2024-07-08 04:20:00',
    0,
    1,
    'On time',
    'batch_20',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '315',
    'J592713',
    'ICE',
    '9050038',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    7.395604,
    50.482408,
    '2024-07-08 17:43:00',
    '2024-07-08 17:44:00',
    '2024-07-08 17:43:00',
    '2024-07-08 17:44:00',
    0,
    1,
    'On time',
    'batch_42',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '316',
    'J606217',
    'IC',
    '8984452',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    6.173788,
    52.371022,
    '2024-07-08 12:36:00',
    '2024-07-08 12:56:00',
    '2024-07-08 12:55:00',
    '2024-07-08 13:15:00',
    19,
    1,
    'On time',
    'batch_21',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '317',
    'J542207',
    'ICE',
    '9157029',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    11.086819,
    54.194254,
    '2024-07-08 05:29:00',
    '2024-07-08 05:30:00',
    '2024-07-08 05:35:00',
    '2024-07-08 05:36:00',
    6,
    1,
    'On time',
    'batch_36',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '318',
    'J933099',
    'S',
    '9608855',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    9.849333,
    54.18329,
    '2024-07-08 13:35:00',
    '2024-07-08 13:55:00',
    '2024-07-08 13:44:00',
    '2024-07-08 14:04:00',
    9,
    1,
    'On time',
    'batch_15',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '319',
    'J570449',
    'IC',
    '8216932',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    12.22243,
    54.536743,
    '2024-07-08 23:23:00',
    '2024-07-08 23:44:00',
    '2024-07-08 23:29:00',
    '2024-07-08 23:50:00',
    6,
    1,
    'On time',
    'batch_26',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '320',
    'J124750',
    'ICE',
    '8180271',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    6.645445,
    50.572626,
    '2024-07-08 10:13:00',
    '2024-07-08 10:24:00',
    '2024-07-08 10:27:00',
    '2024-07-08 10:38:00',
    14,
    1,
    'On time',
    'batch_17',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '321',
    'J468762',
    'ICE',
    '9865080',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    12.471762,
    52.734148,
    '2024-07-08 22:37:00',
    '2024-07-08 22:51:00',
    '2024-07-08 22:38:00',
    '2024-07-08 22:52:00',
    1,
    1,
    'On time',
    'batch_29',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '322',
    'J935666',
    'ICE',
    '8606806',
    'passenger',
    'Hamburg-route',
    'Hamburg Nord',
    'DE',
    'Hamburg',
    '20095',
    8.37785,
    52.68981,
    '2024-07-08 13:38:00',
    '2024-07-08 13:51:00',
    '2024-07-08 13:44:00',
    '2024-07-08 13:57:00',
    6,
    1,
    'On time',
    'batch_9',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '323',
    'J342643',
    'RB',
    '9578027',
    'passenger',
    'Munich-route',
    'Munich Nord',
    'DE',
    'Munich',
    '80331',
    11.8417,
    52.273446,
    '2024-07-08 12:09:00',
    '2024-07-08 12:13:00',
    '2024-07-08 12:28:00',
    '2024-07-08 12:32:00',
    19,
    1,
    'On time',
    'batch_22',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '324',
    'J925619',
    'RB',
    '9322356',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    6.514549,
    52.10149,
    '2024-07-08 12:30:00',
    '2024-07-08 13:00:00',
    '2024-07-08 12:48:00',
    '2024-07-08 13:18:00',
    18,
    1,
    'On time',
    'batch_36',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '325',
    'J904883',
    'RE',
    '8110942',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    8.355174,
    53.176123,
    '2024-07-08 22:24:00',
    '2024-07-08 22:38:00',
    '2024-07-08 22:26:00',
    '2024-07-08 22:40:00',
    2,
    1,
    'On time',
    'batch_7',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '326',
    'J500542',
    'S',
    '8456405',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    7.683126,
    47.147368,
    '2024-07-08 12:13:00',
    '2024-07-08 12:21:00',
    '2024-07-08 12:19:00',
    '2024-07-08 12:27:00',
    6,
    1,
    'On time',
    'batch_32',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '327',
    'J940144',
    'RB',
    '9828691',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    8.895794,
    49.202208,
    '2024-07-08 06:04:00',
    '2024-07-08 06:24:00',
    '2024-07-08 06:09:00',
    '2024-07-08 06:29:00',
    5,
    1,
    'On time',
    'batch_24',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '328',
    'J210403',
    'ICE',
    '9245555',
    'passenger',
    'Berlin-route',
    'Berlin West',
    'DE',
    'Berlin',
    '10115',
    11.996268,
    47.559729,
    '2024-07-08 12:59:00',
    '2024-07-08 13:19:00',
    '2024-07-08 13:06:00',
    '2024-07-08 13:26:00',
    7,
    1,
    'On time',
    'batch_48',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '329',
    'J997824',
    'IC',
    '8439678',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    12.399858,
    49.908545,
    '2024-07-08 16:13:00',
    '2024-07-08 16:25:00',
    '2024-07-08 16:25:00',
    '2024-07-08 16:37:00',
    12,
    1,
    'On time',
    'batch_27',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '330',
    'J175152',
    'RB',
    '9974224',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    10.820311,
    48.53739,
    '2024-07-08 18:04:00',
    '2024-07-08 18:18:00',
    '2024-07-08 18:11:00',
    '2024-07-08 18:25:00',
    7,
    1,
    'On time',
    'batch_15',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '331',
    'J694124',
    'IC',
    '8811673',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    9.561903,
    47.781585,
    '2024-07-08 11:22:00',
    '2024-07-08 11:51:00',
    '2024-07-08 11:38:00',
    '2024-07-08 12:07:00',
    16,
    1,
    'On time',
    'batch_45',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '332',
    'J960955',
    'RB',
    '8514907',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    12.606074,
    54.676367,
    '2024-07-08 17:05:00',
    '2024-07-08 17:12:00',
    '2024-07-08 17:18:00',
    '2024-07-08 17:25:00',
    13,
    1,
    'On time',
    'batch_49',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '333',
    'J843116',
    'S',
    '9772605',
    'passenger',
    'Berlin-route',
    'Berlin Nord',
    'DE',
    'Berlin',
    '10115',
    7.116164,
    47.304774,
    '2024-07-08 00:26:00',
    '2024-07-08 00:42:00',
    '2024-07-08 00:40:00',
    '2024-07-08 00:56:00',
    14,
    1,
    'On time',
    'batch_7',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '334',
    'J354821',
    'RB',
    '9688318',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    10.430077,
    50.191371,
    '2024-07-08 20:06:00',
    '2024-07-08 20:14:00',
    '2024-07-08 20:14:00',
    '2024-07-08 20:22:00',
    8,
    1,
    'On time',
    'batch_30',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '335',
    'J968002',
    'RE',
    '9403091',
    'passenger',
    'Berlin-route',
    'Berlin West',
    'DE',
    'Berlin',
    '10115',
    12.767886,
    54.413013,
    '2024-07-08 04:06:00',
    '2024-07-08 04:30:00',
    '2024-07-08 04:21:00',
    '2024-07-08 04:45:00',
    15,
    1,
    'On time',
    'batch_29',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '336',
    'J805776',
    'S',
    '8729154',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    6.574419,
    54.585242,
    '2024-07-08 21:51:00',
    '2024-07-08 22:18:00',
    '2024-07-08 22:07:00',
    '2024-07-08 22:34:00',
    16,
    1,
    'On time',
    'batch_7',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '337',
    'J846695',
    'S',
    '9993160',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    12.223016,
    50.161491,
    '2024-07-08 17:34:00',
    '2024-07-08 17:41:00',
    '2024-07-08 17:46:00',
    '2024-07-08 17:53:00',
    12,
    1,
    'On time',
    'batch_3',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '338',
    'J138187',
    'IC',
    '8850601',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    9.655043,
    54.963874,
    '2024-07-08 08:13:00',
    '2024-07-08 08:16:00',
    '2024-07-08 08:23:00',
    '2024-07-08 08:26:00',
    10,
    1,
    'On time',
    'batch_2',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '339',
    'J619524',
    'ICE',
    '9825133',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    11.647948,
    47.768904,
    '2024-07-08 03:59:00',
    '2024-07-08 04:01:00',
    '2024-07-08 04:16:00',
    '2024-07-08 04:18:00',
    17,
    1,
    'On time',
    'batch_24',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '340',
    'J306018',
    'IC',
    '9026278',
    'passenger',
    'Hamburg-route',
    'Hamburg Nord',
    'DE',
    'Hamburg',
    '20095',
    8.778141,
    49.886681,
    '2024-07-08 17:46:00',
    '2024-07-08 18:05:00',
    '2024-07-08 18:05:00',
    '2024-07-08 18:24:00',
    19,
    1,
    'On time',
    'batch_2',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '341',
    'J533189',
    'IC',
    '9559397',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    8.674718,
    49.642471,
    '2024-07-08 16:33:00',
    '2024-07-08 16:34:00',
    '2024-07-08 16:50:00',
    '2024-07-08 16:51:00',
    17,
    1,
    'On time',
    'batch_18',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '342',
    'J377510',
    'RE',
    '9182543',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    10.372709,
    51.148339,
    '2024-07-08 06:39:00',
    '2024-07-08 07:01:00',
    '2024-07-08 06:41:00',
    '2024-07-08 07:03:00',
    2,
    1,
    'On time',
    'batch_24',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '343',
    'J862949',
    'RB',
    '8926120',
    'passenger',
    'Hamburg-route',
    'Hamburg Nord',
    'DE',
    'Hamburg',
    '20095',
    9.056174,
    51.753359,
    '2024-07-08 21:39:00',
    '2024-07-08 22:02:00',
    '2024-07-08 21:53:00',
    '2024-07-08 22:16:00',
    14,
    1,
    'On time',
    'batch_33',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '344',
    'J951262',
    'RB',
    '8112203',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    11.854555,
    54.221538,
    '2024-07-08 05:28:00',
    '2024-07-08 05:51:00',
    '2024-07-08 05:48:00',
    '2024-07-08 06:11:00',
    20,
    1,
    'On time',
    'batch_7',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '345',
    'J247247',
    'RE',
    '8873072',
    'passenger',
    'Munich-route',
    'Munich West',
    'DE',
    'Munich',
    '80331',
    6.251535,
    54.712818,
    '2024-07-08 19:35:00',
    '2024-07-08 19:36:00',
    '2024-07-08 19:49:00',
    '2024-07-08 19:50:00',
    14,
    1,
    'On time',
    'batch_23',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '346',
    'J889417',
    'ICE',
    '8328844',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    8.343607,
    47.040732,
    '2024-07-08 08:54:00',
    '2024-07-08 09:17:00',
    '2024-07-08 09:13:00',
    '2024-07-08 09:36:00',
    19,
    1,
    'On time',
    'batch_4',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '347',
    'J788289',
    'S',
    '8812123',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    9.723683,
    53.489926,
    '2024-07-08 12:20:00',
    '2024-07-08 12:42:00',
    '2024-07-08 12:21:00',
    '2024-07-08 12:43:00',
    1,
    1,
    'On time',
    'batch_26',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '348',
    'J138532',
    'RB',
    '9397321',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    8.272918,
    52.50198,
    '2024-07-08 01:07:00',
    '2024-07-08 01:14:00',
    '2024-07-08 01:23:00',
    '2024-07-08 01:30:00',
    16,
    1,
    'On time',
    'batch_11',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '349',
    'J109185',
    'RB',
    '9853454',
    'passenger',
    'Berlin-route',
    'Berlin Nord',
    'DE',
    'Berlin',
    '10115',
    8.752808,
    49.26693,
    '2024-07-08 02:10:00',
    '2024-07-08 02:11:00',
    '2024-07-08 02:27:00',
    '2024-07-08 02:28:00',
    17,
    1,
    'On time',
    'batch_50',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '350',
    'J740670',
    'ICE',
    '9833176',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    6.257136,
    49.219387,
    '2024-07-08 15:13:00',
    '2024-07-08 15:18:00',
    '2024-07-08 15:13:00',
    '2024-07-08 15:18:00',
    0,
    1,
    'On time',
    'batch_35',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '351',
    'J771011',
    'IC',
    '9649516',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    9.999012,
    52.405167,
    '2024-07-08 20:50:00',
    '2024-07-08 21:17:00',
    '2024-07-08 21:06:00',
    '2024-07-08 21:33:00',
    16,
    1,
    'On time',
    'batch_44',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '352',
    'J557588',
    'ICE',
    '8112317',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    9.03179,
    53.927105,
    '2024-07-08 08:34:00',
    '2024-07-08 09:03:00',
    '2024-07-08 08:44:00',
    '2024-07-08 09:13:00',
    10,
    1,
    'On time',
    'batch_33',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '353',
    'J806244',
    'RB',
    '8793344',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    7.788254,
    49.90848,
    '2024-07-08 05:47:00',
    '2024-07-08 06:16:00',
    '2024-07-08 05:49:00',
    '2024-07-08 06:18:00',
    2,
    1,
    'On time',
    'batch_2',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '354',
    'J216535',
    'ICE',
    '8946611',
    'passenger',
    'Berlin-route',
    'Berlin West',
    'DE',
    'Berlin',
    '10115',
    12.428158,
    52.879136,
    '2024-07-08 17:53:00',
    '2024-07-08 18:12:00',
    '2024-07-08 18:12:00',
    '2024-07-08 18:31:00',
    19,
    1,
    'On time',
    'batch_20',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '355',
    'J280610',
    'ICE',
    '8790979',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    12.139999,
    54.603206,
    '2024-07-08 19:43:00',
    '2024-07-08 20:10:00',
    '2024-07-08 19:58:00',
    '2024-07-08 20:25:00',
    15,
    1,
    'On time',
    'batch_3',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '356',
    'J150355',
    'ICE',
    '8536554',
    'passenger',
    'Hamburg-route',
    'Hamburg Ost',
    'DE',
    'Hamburg',
    '20095',
    8.946297,
    54.247589,
    '2024-07-08 10:52:00',
    '2024-07-08 11:15:00',
    '2024-07-08 11:02:00',
    '2024-07-08 11:25:00',
    10,
    1,
    'On time',
    'batch_25',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '357',
    'J353044',
    'IC',
    '9108144',
    'passenger',
    'Berlin-route',
    'Berlin Nord',
    'DE',
    'Berlin',
    '10115',
    11.114083,
    53.586618,
    '2024-07-08 21:47:00',
    '2024-07-08 22:06:00',
    '2024-07-08 21:54:00',
    '2024-07-08 22:13:00',
    7,
    1,
    'On time',
    'batch_46',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '358',
    'J923103',
    'RE',
    '9242816',
    'passenger',
    'Munich-route',
    'Munich West',
    'DE',
    'Munich',
    '80331',
    7.451488,
    47.943793,
    '2024-07-08 02:01:00',
    '2024-07-08 02:10:00',
    '2024-07-08 02:12:00',
    '2024-07-08 02:21:00',
    11,
    1,
    'On time',
    'batch_3',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '359',
    'J313605',
    'ICE',
    '8170012',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    7.719695,
    53.287813,
    '2024-07-08 18:23:00',
    '2024-07-08 18:33:00',
    '2024-07-08 18:31:00',
    '2024-07-08 18:41:00',
    8,
    1,
    'On time',
    'batch_23',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '360',
    'J417590',
    'ICE',
    '9208072',
    'passenger',
    'Berlin-route',
    'Berlin Nord',
    'DE',
    'Berlin',
    '10115',
    11.565628,
    54.471462,
    '2024-07-08 06:12:00',
    '2024-07-08 06:23:00',
    '2024-07-08 06:17:00',
    '2024-07-08 06:28:00',
    5,
    1,
    'On time',
    'batch_37',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '361',
    'J933277',
    'ICE',
    '9880046',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    11.704293,
    47.419617,
    '2024-07-08 12:50:00',
    '2024-07-08 13:12:00',
    '2024-07-08 13:05:00',
    '2024-07-08 13:27:00',
    15,
    1,
    'On time',
    'batch_48',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '362',
    'J221543',
    'RB',
    '8704035',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    6.286135,
    51.978263,
    '2024-07-08 10:02:00',
    '2024-07-08 10:11:00',
    '2024-07-08 10:12:00',
    '2024-07-08 10:21:00',
    10,
    1,
    'On time',
    'batch_11',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '363',
    'J689633',
    'RE',
    '8078493',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    10.18312,
    48.741322,
    '2024-07-08 04:37:00',
    '2024-07-08 04:57:00',
    '2024-07-08 04:41:00',
    '2024-07-08 05:01:00',
    4,
    1,
    'On time',
    'batch_31',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '364',
    'J420258',
    'RE',
    '9386599',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    6.227781,
    50.263828,
    '2024-07-08 16:52:00',
    '2024-07-08 16:55:00',
    '2024-07-08 16:56:00',
    '2024-07-08 16:59:00',
    4,
    1,
    'On time',
    'batch_6',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '365',
    'J263378',
    'RE',
    '9578485',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    10.171859,
    52.521906,
    '2024-07-08 16:23:00',
    '2024-07-08 16:40:00',
    '2024-07-08 16:42:00',
    '2024-07-08 16:59:00',
    19,
    1,
    'On time',
    'batch_29',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '366',
    'J258651',
    'ICE',
    '8770176',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    10.996171,
    53.314695,
    '2024-07-08 18:20:00',
    '2024-07-08 18:29:00',
    '2024-07-08 18:37:00',
    '2024-07-08 18:46:00',
    17,
    1,
    'On time',
    'batch_28',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '367',
    'J472526',
    'S',
    '9306755',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    10.455121,
    54.010171,
    '2024-07-08 04:09:00',
    '2024-07-08 04:26:00',
    '2024-07-08 04:18:00',
    '2024-07-08 04:35:00',
    9,
    1,
    'On time',
    'batch_50',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '368',
    'J160023',
    'RE',
    '8446653',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    12.398366,
    49.15587,
    '2024-07-08 07:27:00',
    '2024-07-08 07:48:00',
    '2024-07-08 07:32:00',
    '2024-07-08 07:53:00',
    5,
    1,
    'On time',
    'batch_13',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '369',
    'J315153',
    'IC',
    '9936246',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    11.82276,
    53.828023,
    '2024-07-08 16:05:00',
    '2024-07-08 16:13:00',
    '2024-07-08 16:09:00',
    '2024-07-08 16:17:00',
    4,
    1,
    'On time',
    'batch_14',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '370',
    'J441205',
    'RB',
    '9735693',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    6.416438,
    51.417876,
    '2024-07-08 04:01:00',
    '2024-07-08 04:25:00',
    '2024-07-08 04:03:00',
    '2024-07-08 04:27:00',
    2,
    1,
    'On time',
    'batch_27',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '371',
    'J753545',
    'RB',
    '9089510',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    10.115959,
    50.495233,
    '2024-07-08 09:37:00',
    '2024-07-08 09:59:00',
    '2024-07-08 09:48:00',
    '2024-07-08 10:10:00',
    11,
    1,
    'On time',
    'batch_13',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '372',
    'J392060',
    'RB',
    '8476090',
    'passenger',
    'Hamburg-route',
    'Hamburg Nord',
    'DE',
    'Hamburg',
    '20095',
    11.357791,
    52.002776,
    '2024-07-08 10:31:00',
    '2024-07-08 10:54:00',
    '2024-07-08 10:47:00',
    '2024-07-08 11:10:00',
    16,
    1,
    'On time',
    'batch_34',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '373',
    'J479483',
    'S',
    '8775150',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    8.554451,
    51.373008,
    '2024-07-08 22:09:00',
    '2024-07-08 22:38:00',
    '2024-07-08 22:26:00',
    '2024-07-08 22:55:00',
    17,
    1,
    'On time',
    'batch_21',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '374',
    'J917417',
    'RB',
    '9803942',
    'passenger',
    'Munich-route',
    'Munich Nord',
    'DE',
    'Munich',
    '80331',
    9.138766,
    51.041012,
    '2024-07-08 10:56:00',
    '2024-07-08 11:08:00',
    '2024-07-08 10:59:00',
    '2024-07-08 11:11:00',
    3,
    1,
    'On time',
    'batch_8',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '375',
    'J892939',
    'IC',
    '9670354',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    10.478757,
    50.497687,
    '2024-07-08 04:07:00',
    '2024-07-08 04:23:00',
    '2024-07-08 04:09:00',
    '2024-07-08 04:25:00',
    2,
    1,
    'On time',
    'batch_45',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '376',
    'J908089',
    'IC',
    '9069939',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    10.936363,
    53.372397,
    '2024-07-08 17:36:00',
    '2024-07-08 17:57:00',
    '2024-07-08 17:53:00',
    '2024-07-08 18:14:00',
    17,
    1,
    'On time',
    'batch_40',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '377',
    'J260277',
    'RE',
    '9760940',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    6.138132,
    51.218706,
    '2024-07-08 15:00:00',
    '2024-07-08 15:17:00',
    '2024-07-08 15:00:00',
    '2024-07-08 15:17:00',
    0,
    1,
    'On time',
    'batch_34',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '378',
    'J742433',
    'IC',
    '9917472',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    7.743767,
    52.234703,
    '2024-07-08 07:02:00',
    '2024-07-08 07:29:00',
    '2024-07-08 07:20:00',
    '2024-07-08 07:47:00',
    18,
    1,
    'On time',
    'batch_49',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '379',
    'J746775',
    'RB',
    '9382141',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    11.302209,
    47.06063,
    '2024-07-08 19:57:00',
    '2024-07-08 20:12:00',
    '2024-07-08 20:03:00',
    '2024-07-08 20:18:00',
    6,
    1,
    'On time',
    'batch_35',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '380',
    'J698063',
    'IC',
    '8790957',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    6.455933,
    48.268186,
    '2024-07-08 18:54:00',
    '2024-07-08 19:02:00',
    '2024-07-08 19:04:00',
    '2024-07-08 19:12:00',
    10,
    1,
    'On time',
    'batch_31',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '381',
    'J733549',
    'RE',
    '9074135',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    7.781865,
    52.986137,
    '2024-07-08 06:13:00',
    '2024-07-08 06:40:00',
    '2024-07-08 06:13:00',
    '2024-07-08 06:40:00',
    0,
    1,
    'On time',
    'batch_6',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '382',
    'J477422',
    'IC',
    '8102929',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    7.399515,
    54.782357,
    '2024-07-08 10:20:00',
    '2024-07-08 10:45:00',
    '2024-07-08 10:35:00',
    '2024-07-08 11:00:00',
    15,
    1,
    'On time',
    'batch_39',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '383',
    'J701256',
    'IC',
    '9586760',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    10.76616,
    53.031471,
    '2024-07-08 07:33:00',
    '2024-07-08 07:42:00',
    '2024-07-08 07:49:00',
    '2024-07-08 07:58:00',
    16,
    1,
    'On time',
    'batch_32',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '384',
    'J666470',
    'ICE',
    '8748358',
    'passenger',
    'Munich-route',
    'Munich West',
    'DE',
    'Munich',
    '80331',
    6.015553,
    50.187663,
    '2024-07-08 10:12:00',
    '2024-07-08 10:30:00',
    '2024-07-08 10:24:00',
    '2024-07-08 10:42:00',
    12,
    1,
    'On time',
    'batch_50',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '385',
    'J883233',
    'IC',
    '8849817',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    12.786989,
    47.168844,
    '2024-07-08 07:31:00',
    '2024-07-08 07:33:00',
    '2024-07-08 07:37:00',
    '2024-07-08 07:39:00',
    6,
    1,
    'On time',
    'batch_30',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '386',
    'J790113',
    'ICE',
    '9637556',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    8.831396,
    54.802622,
    '2024-07-08 17:06:00',
    '2024-07-08 17:13:00',
    '2024-07-08 17:11:00',
    '2024-07-08 17:18:00',
    5,
    1,
    'On time',
    'batch_20',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '387',
    'J855199',
    'RE',
    '9447589',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    8.1496,
    49.074935,
    '2024-07-08 19:36:00',
    '2024-07-08 19:43:00',
    '2024-07-08 19:56:00',
    '2024-07-08 20:03:00',
    20,
    1,
    'On time',
    'batch_29',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '388',
    'J543187',
    'IC',
    '8989076',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    7.007983,
    54.009458,
    '2024-07-08 18:19:00',
    '2024-07-08 18:38:00',
    '2024-07-08 18:38:00',
    '2024-07-08 18:57:00',
    19,
    1,
    'On time',
    'batch_21',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '389',
    'J171092',
    'RB',
    '8109463',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    12.34934,
    49.668987,
    '2024-07-08 19:07:00',
    '2024-07-08 19:31:00',
    '2024-07-08 19:14:00',
    '2024-07-08 19:38:00',
    7,
    1,
    'On time',
    'batch_16',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '390',
    'J147532',
    'IC',
    '8505228',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    12.275863,
    51.131517,
    '2024-07-08 20:02:00',
    '2024-07-08 20:08:00',
    '2024-07-08 20:03:00',
    '2024-07-08 20:09:00',
    1,
    1,
    'On time',
    'batch_27',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '391',
    'J763762',
    'S',
    '9892472',
    'passenger',
    'Munich-route',
    'Munich Nord',
    'DE',
    'Munich',
    '80331',
    7.202293,
    49.87298,
    '2024-07-08 07:33:00',
    '2024-07-08 07:37:00',
    '2024-07-08 07:35:00',
    '2024-07-08 07:39:00',
    2,
    1,
    'On time',
    'batch_16',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '392',
    'J818353',
    'RB',
    '9726784',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    9.513947,
    50.273317,
    '2024-07-08 12:00:00',
    '2024-07-08 12:01:00',
    '2024-07-08 12:18:00',
    '2024-07-08 12:19:00',
    18,
    1,
    'On time',
    'batch_33',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '393',
    'J502565',
    'RB',
    '8889710',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    9.768539,
    54.246815,
    '2024-07-08 11:06:00',
    '2024-07-08 11:23:00',
    '2024-07-08 11:26:00',
    '2024-07-08 11:43:00',
    20,
    1,
    'On time',
    'batch_18',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '394',
    'J584226',
    'RE',
    '8379933',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    12.478399,
    48.35808,
    '2024-07-08 00:49:00',
    '2024-07-08 01:11:00',
    '2024-07-08 01:01:00',
    '2024-07-08 01:23:00',
    12,
    1,
    'On time',
    'batch_5',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '395',
    'J236319',
    'RE',
    '9478540',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    6.733847,
    47.325484,
    '2024-07-08 03:14:00',
    '2024-07-08 03:41:00',
    '2024-07-08 03:34:00',
    '2024-07-08 04:01:00',
    20,
    1,
    'On time',
    'batch_35',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '396',
    'J594399',
    'ICE',
    '9577425',
    'passenger',
    'Hamburg-route',
    'Hamburg Nord',
    'DE',
    'Hamburg',
    '20095',
    12.41902,
    49.792039,
    '2024-07-08 12:00:00',
    '2024-07-08 12:08:00',
    '2024-07-08 12:16:00',
    '2024-07-08 12:24:00',
    16,
    1,
    'On time',
    'batch_36',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '397',
    'J146067',
    'RB',
    '9936664',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    10.586149,
    50.265126,
    '2024-07-08 17:42:00',
    '2024-07-08 18:04:00',
    '2024-07-08 18:01:00',
    '2024-07-08 18:23:00',
    19,
    1,
    'On time',
    'batch_9',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '398',
    'J632238',
    'S',
    '9540019',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    7.858012,
    49.206928,
    '2024-07-08 23:47:00',
    '2024-07-08 23:49:00',
    '2024-07-08 23:48:00',
    '2024-07-08 23:50:00',
    1,
    1,
    'On time',
    'batch_49',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '399',
    'J314367',
    'RE',
    '8699355',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    10.369511,
    49.972363,
    '2024-07-08 09:00:00',
    '2024-07-08 09:07:00',
    '2024-07-08 09:02:00',
    '2024-07-08 09:09:00',
    2,
    1,
    'On time',
    'batch_34',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '400',
    'J602262',
    'RE',
    '8849237',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    7.155751,
    48.554479,
    '2024-07-08 17:06:00',
    '2024-07-08 17:10:00',
    '2024-07-08 17:10:00',
    '2024-07-08 17:14:00',
    4,
    1,
    'On time',
    'batch_10',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '401',
    'J248375',
    'RB',
    '9726963',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    12.419544,
    51.954013,
    '2024-07-08 13:13:00',
    '2024-07-08 13:30:00',
    '2024-07-08 13:14:00',
    '2024-07-08 13:31:00',
    1,
    1,
    'On time',
    'batch_34',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '402',
    'J564561',
    'RE',
    '9093441',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    7.810363,
    49.254446,
    '2024-07-08 11:08:00',
    '2024-07-08 11:36:00',
    '2024-07-08 11:26:00',
    '2024-07-08 11:54:00',
    18,
    1,
    'On time',
    'batch_44',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '403',
    'J832117',
    'ICE',
    '8996690',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    6.443618,
    48.699657,
    '2024-07-08 09:33:00',
    '2024-07-08 09:55:00',
    '2024-07-08 09:44:00',
    '2024-07-08 10:06:00',
    11,
    1,
    'On time',
    'batch_45',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '404',
    'J700679',
    'S',
    '9100367',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    11.91828,
    50.962333,
    '2024-07-08 11:20:00',
    '2024-07-08 11:45:00',
    '2024-07-08 11:26:00',
    '2024-07-08 11:51:00',
    6,
    1,
    'On time',
    'batch_4',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '405',
    'J430084',
    'IC',
    '9903283',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    10.579735,
    53.388622,
    '2024-07-08 03:07:00',
    '2024-07-08 03:33:00',
    '2024-07-08 03:24:00',
    '2024-07-08 03:50:00',
    17,
    1,
    'On time',
    'batch_22',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '406',
    'J956522',
    'IC',
    '8076197',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    7.749036,
    54.40827,
    '2024-07-08 06:10:00',
    '2024-07-08 06:15:00',
    '2024-07-08 06:26:00',
    '2024-07-08 06:31:00',
    16,
    1,
    'On time',
    'batch_25',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '407',
    'J728705',
    'S',
    '9883959',
    'passenger',
    'Munich-route',
    'Munich West',
    'DE',
    'Munich',
    '80331',
    12.384495,
    52.219993,
    '2024-07-08 21:46:00',
    '2024-07-08 21:48:00',
    '2024-07-08 22:05:00',
    '2024-07-08 22:07:00',
    19,
    1,
    'On time',
    'batch_8',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '408',
    'J744503',
    'ICE',
    '9729590',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    10.847352,
    50.358042,
    '2024-07-08 18:44:00',
    '2024-07-08 19:09:00',
    '2024-07-08 18:45:00',
    '2024-07-08 19:10:00',
    1,
    1,
    'On time',
    'batch_4',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '409',
    'J507639',
    'RE',
    '8667735',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    10.331314,
    51.071235,
    '2024-07-08 06:34:00',
    '2024-07-08 06:39:00',
    '2024-07-08 06:44:00',
    '2024-07-08 06:49:00',
    10,
    1,
    'On time',
    'batch_34',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '410',
    'J535736',
    'ICE',
    '8183045',
    'passenger',
    'Berlin-route',
    'Berlin Nord',
    'DE',
    'Berlin',
    '10115',
    11.653685,
    50.900003,
    '2024-07-08 02:47:00',
    '2024-07-08 02:49:00',
    '2024-07-08 03:05:00',
    '2024-07-08 03:07:00',
    18,
    1,
    'On time',
    'batch_21',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '411',
    'J827847',
    'RB',
    '8347388',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    10.790088,
    48.199021,
    '2024-07-08 13:50:00',
    '2024-07-08 13:55:00',
    '2024-07-08 13:56:00',
    '2024-07-08 14:01:00',
    6,
    1,
    'On time',
    'batch_37',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '412',
    'J463641',
    'RB',
    '9950158',
    'passenger',
    'Munich-route',
    'Munich West',
    'DE',
    'Munich',
    '80331',
    7.989291,
    52.3528,
    '2024-07-08 09:31:00',
    '2024-07-08 09:55:00',
    '2024-07-08 09:31:00',
    '2024-07-08 09:55:00',
    0,
    1,
    'On time',
    'batch_11',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '413',
    'J836814',
    'RB',
    '8392782',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    7.597691,
    47.351499,
    '2024-07-08 02:37:00',
    '2024-07-08 02:58:00',
    '2024-07-08 02:52:00',
    '2024-07-08 03:13:00',
    15,
    1,
    'On time',
    'batch_2',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '414',
    'J669683',
    'RB',
    '8308303',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    7.800969,
    48.256941,
    '2024-07-08 22:58:00',
    '2024-07-08 23:03:00',
    '2024-07-08 23:18:00',
    '2024-07-08 23:23:00',
    20,
    1,
    'On time',
    'batch_46',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '415',
    'J143613',
    'RB',
    '8896507',
    'passenger',
    'Hamburg-route',
    'Hamburg Ost',
    'DE',
    'Hamburg',
    '20095',
    10.907834,
    52.148397,
    '2024-07-08 17:19:00',
    '2024-07-08 17:34:00',
    '2024-07-08 17:28:00',
    '2024-07-08 17:43:00',
    9,
    1,
    'On time',
    'batch_49',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '416',
    'J610331',
    'RE',
    '8572346',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    9.725144,
    48.147184,
    '2024-07-08 20:55:00',
    '2024-07-08 21:17:00',
    '2024-07-08 21:12:00',
    '2024-07-08 21:34:00',
    17,
    1,
    'On time',
    'batch_22',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '417',
    'J457974',
    'ICE',
    '8144266',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    6.598169,
    47.658617,
    '2024-07-08 08:12:00',
    '2024-07-08 08:27:00',
    '2024-07-08 08:31:00',
    '2024-07-08 08:46:00',
    19,
    1,
    'On time',
    'batch_46',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '418',
    'J163414',
    'IC',
    '9265489',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    7.530233,
    51.086761,
    '2024-07-08 16:57:00',
    '2024-07-08 17:13:00',
    '2024-07-08 17:12:00',
    '2024-07-08 17:28:00',
    15,
    1,
    'On time',
    'batch_35',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '419',
    'J342955',
    'ICE',
    '9373541',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    10.956832,
    53.274322,
    '2024-07-08 05:25:00',
    '2024-07-08 05:35:00',
    '2024-07-08 05:28:00',
    '2024-07-08 05:38:00',
    3,
    1,
    'On time',
    'batch_40',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '420',
    'J479632',
    'ICE',
    '8746007',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    8.661008,
    49.362885,
    '2024-07-08 11:48:00',
    '2024-07-08 12:16:00',
    '2024-07-08 11:59:00',
    '2024-07-08 12:27:00',
    11,
    1,
    'On time',
    'batch_48',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '421',
    'J219956',
    'RB',
    '9955191',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    7.673098,
    48.540437,
    '2024-07-08 10:04:00',
    '2024-07-08 10:19:00',
    '2024-07-08 10:06:00',
    '2024-07-08 10:21:00',
    2,
    1,
    'On time',
    'batch_37',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '422',
    'J525695',
    'IC',
    '9311578',
    'passenger',
    'Hamburg-route',
    'Hamburg Ost',
    'DE',
    'Hamburg',
    '20095',
    7.445219,
    50.123656,
    '2024-07-08 20:34:00',
    '2024-07-08 20:44:00',
    '2024-07-08 20:37:00',
    '2024-07-08 20:47:00',
    3,
    1,
    'On time',
    'batch_7',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '423',
    'J230331',
    'S',
    '8021446',
    'passenger',
    'Berlin-route',
    'Berlin West',
    'DE',
    'Berlin',
    '10115',
    10.379642,
    54.82571,
    '2024-07-08 10:54:00',
    '2024-07-08 10:59:00',
    '2024-07-08 11:06:00',
    '2024-07-08 11:11:00',
    12,
    1,
    'On time',
    'batch_14',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '424',
    'J192844',
    'ICE',
    '8209672',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    9.06051,
    47.121512,
    '2024-07-08 13:16:00',
    '2024-07-08 13:41:00',
    '2024-07-08 13:22:00',
    '2024-07-08 13:47:00',
    6,
    1,
    'On time',
    'batch_4',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '425',
    'J601397',
    'RB',
    '9190427',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    6.596408,
    47.637226,
    '2024-07-08 00:07:00',
    '2024-07-08 00:20:00',
    '2024-07-08 00:13:00',
    '2024-07-08 00:26:00',
    6,
    1,
    'On time',
    'batch_17',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '426',
    'J979778',
    'IC',
    '9998633',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    6.954709,
    51.262279,
    '2024-07-08 02:15:00',
    '2024-07-08 02:33:00',
    '2024-07-08 02:22:00',
    '2024-07-08 02:40:00',
    7,
    1,
    'On time',
    'batch_48',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '427',
    'J174370',
    'IC',
    '9638233',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    12.164531,
    53.97772,
    '2024-07-08 15:41:00',
    '2024-07-08 15:48:00',
    '2024-07-08 15:45:00',
    '2024-07-08 15:52:00',
    4,
    1,
    'On time',
    'batch_37',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '428',
    'J622343',
    'IC',
    '8743325',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    11.424272,
    48.498412,
    '2024-07-08 14:23:00',
    '2024-07-08 14:51:00',
    '2024-07-08 14:41:00',
    '2024-07-08 15:09:00',
    18,
    1,
    'On time',
    'batch_15',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '429',
    'J505602',
    'IC',
    '9558074',
    'passenger',
    'Hamburg-route',
    'Hamburg Ost',
    'DE',
    'Hamburg',
    '20095',
    8.165973,
    53.839683,
    '2024-07-08 07:19:00',
    '2024-07-08 07:30:00',
    '2024-07-08 07:31:00',
    '2024-07-08 07:42:00',
    12,
    1,
    'On time',
    'batch_11',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '430',
    'J130184',
    'RE',
    '8131475',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    12.8755,
    54.046137,
    '2024-07-08 04:18:00',
    '2024-07-08 04:41:00',
    '2024-07-08 04:37:00',
    '2024-07-08 05:00:00',
    19,
    1,
    'On time',
    'batch_39',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '431',
    'J724884',
    'RE',
    '8514219',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    11.419793,
    51.408164,
    '2024-07-08 03:22:00',
    '2024-07-08 03:46:00',
    '2024-07-08 03:22:00',
    '2024-07-08 03:46:00',
    0,
    1,
    'On time',
    'batch_7',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '432',
    'J434597',
    'S',
    '9660794',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    7.951742,
    48.936641,
    '2024-07-08 14:59:00',
    '2024-07-08 15:06:00',
    '2024-07-08 15:10:00',
    '2024-07-08 15:17:00',
    11,
    1,
    'On time',
    'batch_44',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '433',
    'J303305',
    'S',
    '9735035',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    11.084848,
    52.431859,
    '2024-07-08 17:27:00',
    '2024-07-08 17:51:00',
    '2024-07-08 17:39:00',
    '2024-07-08 18:03:00',
    12,
    1,
    'On time',
    'batch_43',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '434',
    'J944704',
    'RB',
    '8048100',
    'passenger',
    'Hamburg-route',
    'Hamburg Nord',
    'DE',
    'Hamburg',
    '20095',
    12.747858,
    54.662813,
    '2024-07-08 10:04:00',
    '2024-07-08 10:32:00',
    '2024-07-08 10:23:00',
    '2024-07-08 10:51:00',
    19,
    1,
    'On time',
    'batch_13',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '435',
    'J581137',
    'ICE',
    '9757040',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    11.129393,
    49.193041,
    '2024-07-08 23:24:00',
    '2024-07-08 23:40:00',
    '2024-07-08 23:30:00',
    '2024-07-08 23:46:00',
    6,
    1,
    'On time',
    'batch_11',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '436',
    'J606349',
    'RB',
    '9592053',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    9.814552,
    50.939563,
    '2024-07-08 11:29:00',
    '2024-07-08 11:53:00',
    '2024-07-08 11:36:00',
    '2024-07-08 12:00:00',
    7,
    1,
    'On time',
    'batch_33',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '437',
    'J120600',
    'RB',
    '9376063',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    7.38323,
    54.31937,
    '2024-07-08 07:30:00',
    '2024-07-08 07:50:00',
    '2024-07-08 07:46:00',
    '2024-07-08 08:06:00',
    16,
    1,
    'On time',
    'batch_5',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '438',
    'J345495',
    'RE',
    '9503595',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    10.755562,
    53.329021,
    '2024-07-08 09:12:00',
    '2024-07-08 09:13:00',
    '2024-07-08 09:23:00',
    '2024-07-08 09:24:00',
    11,
    1,
    'On time',
    'batch_20',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '439',
    'J436682',
    'IC',
    '8799638',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    6.245186,
    53.939718,
    '2024-07-08 16:06:00',
    '2024-07-08 16:19:00',
    '2024-07-08 16:24:00',
    '2024-07-08 16:37:00',
    18,
    1,
    'On time',
    'batch_26',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '440',
    'J909833',
    'RB',
    '9417049',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    11.713726,
    49.420621,
    '2024-07-08 07:57:00',
    '2024-07-08 08:27:00',
    '2024-07-08 08:10:00',
    '2024-07-08 08:40:00',
    13,
    1,
    'On time',
    'batch_12',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '441',
    'J754654',
    'RB',
    '9957992',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    10.249397,
    51.939032,
    '2024-07-08 09:38:00',
    '2024-07-08 09:50:00',
    '2024-07-08 09:45:00',
    '2024-07-08 09:57:00',
    7,
    1,
    'On time',
    'batch_33',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '442',
    'J103334',
    'RE',
    '8242116',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    12.785907,
    51.688051,
    '2024-07-08 23:03:00',
    '2024-07-08 23:19:00',
    '2024-07-08 23:05:00',
    '2024-07-08 23:21:00',
    2,
    1,
    'On time',
    'batch_30',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '443',
    'J372386',
    'RE',
    '8409253',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    7.56904,
    48.908089,
    '2024-07-08 05:40:00',
    '2024-07-08 05:49:00',
    '2024-07-08 05:55:00',
    '2024-07-08 06:04:00',
    15,
    1,
    'On time',
    'batch_6',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '444',
    'J609849',
    'RE',
    '8236123',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    12.571093,
    48.930145,
    '2024-07-08 02:45:00',
    '2024-07-08 03:14:00',
    '2024-07-08 03:03:00',
    '2024-07-08 03:32:00',
    18,
    1,
    'On time',
    'batch_31',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '445',
    'J458040',
    'RE',
    '8822911',
    'passenger',
    'Hamburg-route',
    'Hamburg Nord',
    'DE',
    'Hamburg',
    '20095',
    6.742562,
    52.933293,
    '2024-07-08 00:44:00',
    '2024-07-08 01:10:00',
    '2024-07-08 00:51:00',
    '2024-07-08 01:17:00',
    7,
    1,
    'On time',
    'batch_30',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '446',
    'J800344',
    'S',
    '8646127',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    11.99739,
    52.588517,
    '2024-07-08 08:21:00',
    '2024-07-08 08:24:00',
    '2024-07-08 08:38:00',
    '2024-07-08 08:41:00',
    17,
    1,
    'On time',
    'batch_13',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '447',
    'J644826',
    'S',
    '9338928',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    10.836452,
    53.109116,
    '2024-07-08 17:35:00',
    '2024-07-08 17:52:00',
    '2024-07-08 17:47:00',
    '2024-07-08 18:04:00',
    12,
    1,
    'On time',
    'batch_49',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '448',
    'J487194',
    'IC',
    '9491060',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    7.046419,
    49.125304,
    '2024-07-08 23:14:00',
    '2024-07-08 23:21:00',
    '2024-07-08 23:23:00',
    '2024-07-08 23:30:00',
    9,
    1,
    'On time',
    'batch_24',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '449',
    'J781474',
    'IC',
    '8679626',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    12.028168,
    48.526046,
    '2024-07-08 06:26:00',
    '2024-07-08 06:52:00',
    '2024-07-08 06:27:00',
    '2024-07-08 06:53:00',
    1,
    1,
    'On time',
    'batch_44',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '450',
    'J483159',
    'S',
    '9397799',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    7.263679,
    54.481569,
    '2024-07-08 06:06:00',
    '2024-07-08 06:26:00',
    '2024-07-08 06:08:00',
    '2024-07-08 06:28:00',
    2,
    1,
    'On time',
    'batch_3',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '451',
    'J113581',
    'S',
    '9615065',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    11.358018,
    49.621178,
    '2024-07-08 07:49:00',
    '2024-07-08 08:05:00',
    '2024-07-08 07:50:00',
    '2024-07-08 08:06:00',
    1,
    1,
    'On time',
    'batch_31',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '452',
    'J967408',
    'S',
    '8322369',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    8.984308,
    54.986607,
    '2024-07-08 18:24:00',
    '2024-07-08 18:32:00',
    '2024-07-08 18:34:00',
    '2024-07-08 18:42:00',
    10,
    1,
    'On time',
    'batch_21',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '453',
    'J758229',
    'S',
    '9642682',
    'passenger',
    'Hamburg-route',
    'Hamburg Ost',
    'DE',
    'Hamburg',
    '20095',
    7.00346,
    53.157074,
    '2024-07-08 21:24:00',
    '2024-07-08 21:54:00',
    '2024-07-08 21:36:00',
    '2024-07-08 22:06:00',
    12,
    1,
    'On time',
    'batch_25',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '454',
    'J517271',
    'S',
    '9287118',
    'passenger',
    'Hamburg-route',
    'Hamburg Nord',
    'DE',
    'Hamburg',
    '20095',
    8.710732,
    54.401366,
    '2024-07-08 18:03:00',
    '2024-07-08 18:13:00',
    '2024-07-08 18:18:00',
    '2024-07-08 18:28:00',
    15,
    1,
    'On time',
    'batch_26',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '455',
    'J505038',
    'ICE',
    '9340930',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    10.347392,
    53.533801,
    '2024-07-08 20:57:00',
    '2024-07-08 21:01:00',
    '2024-07-08 21:10:00',
    '2024-07-08 21:14:00',
    13,
    1,
    'On time',
    'batch_10',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '456',
    'J365916',
    'RE',
    '9205202',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    7.655422,
    53.486401,
    '2024-07-08 02:23:00',
    '2024-07-08 02:25:00',
    '2024-07-08 02:35:00',
    '2024-07-08 02:37:00',
    12,
    1,
    'On time',
    'batch_12',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '457',
    'J731877',
    'IC',
    '8859602',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    11.19236,
    49.568076,
    '2024-07-08 16:59:00',
    '2024-07-08 17:13:00',
    '2024-07-08 17:09:00',
    '2024-07-08 17:23:00',
    10,
    1,
    'On time',
    'batch_21',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '458',
    'J337395',
    'S',
    '8272979',
    'passenger',
    'Munich-route',
    'Munich Nord',
    'DE',
    'Munich',
    '80331',
    8.796731,
    50.598492,
    '2024-07-08 19:47:00',
    '2024-07-08 20:03:00',
    '2024-07-08 19:50:00',
    '2024-07-08 20:06:00',
    3,
    1,
    'On time',
    'batch_39',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '459',
    'J265180',
    'IC',
    '9353361',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    12.598783,
    53.998944,
    '2024-07-08 17:26:00',
    '2024-07-08 17:48:00',
    '2024-07-08 17:35:00',
    '2024-07-08 17:57:00',
    9,
    1,
    'On time',
    'batch_5',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '460',
    'J252282',
    'RB',
    '9852563',
    'passenger',
    'Munich-route',
    'Munich West',
    'DE',
    'Munich',
    '80331',
    8.548689,
    54.775763,
    '2024-07-08 04:11:00',
    '2024-07-08 04:39:00',
    '2024-07-08 04:13:00',
    '2024-07-08 04:41:00',
    2,
    1,
    'On time',
    'batch_6',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '461',
    'J958985',
    'ICE',
    '8834663',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    12.081456,
    47.800673,
    '2024-07-08 23:10:00',
    '2024-07-08 23:16:00',
    '2024-07-08 23:21:00',
    '2024-07-08 23:27:00',
    11,
    1,
    'On time',
    'batch_17',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '462',
    'J573066',
    'RB',
    '8098264',
    'passenger',
    'Munich-route',
    'Munich West',
    'DE',
    'Munich',
    '80331',
    7.673206,
    48.670436,
    '2024-07-08 21:13:00',
    '2024-07-08 21:28:00',
    '2024-07-08 21:29:00',
    '2024-07-08 21:44:00',
    16,
    1,
    'On time',
    'batch_39',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '463',
    'J568033',
    'IC',
    '9188513',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    10.023757,
    52.219334,
    '2024-07-08 19:39:00',
    '2024-07-08 19:41:00',
    '2024-07-08 19:54:00',
    '2024-07-08 19:56:00',
    15,
    1,
    'On time',
    'batch_4',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '464',
    'J357759',
    'RB',
    '9032502',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    6.495598,
    47.147073,
    '2024-07-08 12:14:00',
    '2024-07-08 12:32:00',
    '2024-07-08 12:31:00',
    '2024-07-08 12:49:00',
    17,
    1,
    'On time',
    'batch_21',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '465',
    'J129043',
    'RB',
    '9480315',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    7.438837,
    54.594028,
    '2024-07-08 19:39:00',
    '2024-07-08 20:00:00',
    '2024-07-08 19:44:00',
    '2024-07-08 20:05:00',
    5,
    1,
    'On time',
    'batch_32',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '466',
    'J728263',
    'RE',
    '8297479',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    10.639347,
    48.296617,
    '2024-07-08 22:46:00',
    '2024-07-08 22:51:00',
    '2024-07-08 22:58:00',
    '2024-07-08 23:03:00',
    12,
    1,
    'On time',
    'batch_3',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '467',
    'J622283',
    'S',
    '8185403',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    12.486676,
    51.418485,
    '2024-07-08 15:39:00',
    '2024-07-08 15:52:00',
    '2024-07-08 15:44:00',
    '2024-07-08 15:57:00',
    5,
    1,
    'On time',
    'batch_18',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '468',
    'J100628',
    'ICE',
    '8041671',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    9.482454,
    47.663019,
    '2024-07-08 21:21:00',
    '2024-07-08 21:43:00',
    '2024-07-08 21:37:00',
    '2024-07-08 21:59:00',
    16,
    1,
    'On time',
    'batch_6',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '469',
    'J893889',
    'RB',
    '8468695',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    6.480477,
    47.073033,
    '2024-07-08 13:52:00',
    '2024-07-08 13:57:00',
    '2024-07-08 14:11:00',
    '2024-07-08 14:16:00',
    19,
    1,
    'On time',
    'batch_7',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '470',
    'J702321',
    'ICE',
    '8997020',
    'passenger',
    'Munich-route',
    'Munich West',
    'DE',
    'Munich',
    '80331',
    8.797518,
    52.239279,
    '2024-07-08 08:32:00',
    '2024-07-08 08:55:00',
    '2024-07-08 08:51:00',
    '2024-07-08 09:14:00',
    19,
    1,
    'On time',
    'batch_3',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '471',
    'J236829',
    'S',
    '9072497',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    11.713202,
    52.473317,
    '2024-07-08 22:36:00',
    '2024-07-08 22:54:00',
    '2024-07-08 22:38:00',
    '2024-07-08 22:56:00',
    2,
    1,
    'On time',
    'batch_49',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '472',
    'J645535',
    'IC',
    '8624314',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    7.056935,
    53.682595,
    '2024-07-08 08:24:00',
    '2024-07-08 08:47:00',
    '2024-07-08 08:36:00',
    '2024-07-08 08:59:00',
    12,
    1,
    'On time',
    'batch_19',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '473',
    'J295787',
    'IC',
    '8922032',
    'passenger',
    'Munich-route',
    'Munich Nord',
    'DE',
    'Munich',
    '80331',
    11.355812,
    52.456943,
    '2024-07-08 17:21:00',
    '2024-07-08 17:25:00',
    '2024-07-08 17:36:00',
    '2024-07-08 17:40:00',
    15,
    1,
    'On time',
    'batch_48',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '474',
    'J691109',
    'ICE',
    '8657003',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    10.912532,
    47.27022,
    '2024-07-08 06:26:00',
    '2024-07-08 06:55:00',
    '2024-07-08 06:41:00',
    '2024-07-08 07:10:00',
    15,
    1,
    'On time',
    'batch_47',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '475',
    'J718638',
    'IC',
    '8088351',
    'passenger',
    'Hamburg-route',
    'Hamburg Nord',
    'DE',
    'Hamburg',
    '20095',
    7.865036,
    52.571979,
    '2024-07-08 04:11:00',
    '2024-07-08 04:36:00',
    '2024-07-08 04:12:00',
    '2024-07-08 04:37:00',
    1,
    1,
    'On time',
    'batch_20',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '476',
    'J197297',
    'ICE',
    '8749522',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    7.058738,
    51.135869,
    '2024-07-08 18:54:00',
    '2024-07-08 18:58:00',
    '2024-07-08 19:11:00',
    '2024-07-08 19:15:00',
    17,
    1,
    'On time',
    'batch_37',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '477',
    'J650312',
    'RE',
    '9754958',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    9.504558,
    50.164036,
    '2024-07-08 10:57:00',
    '2024-07-08 11:22:00',
    '2024-07-08 11:07:00',
    '2024-07-08 11:32:00',
    10,
    1,
    'On time',
    'batch_18',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '478',
    'J950838',
    'RE',
    '8732198',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    8.911946,
    54.46844,
    '2024-07-08 03:08:00',
    '2024-07-08 03:23:00',
    '2024-07-08 03:13:00',
    '2024-07-08 03:28:00',
    5,
    1,
    'On time',
    'batch_3',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '479',
    'J821024',
    'S',
    '8103209',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    8.960381,
    49.927215,
    '2024-07-08 12:06:00',
    '2024-07-08 12:08:00',
    '2024-07-08 12:10:00',
    '2024-07-08 12:12:00',
    4,
    1,
    'On time',
    'batch_6',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '480',
    'J107399',
    'RE',
    '8821309',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    12.345377,
    48.727846,
    '2024-07-08 15:46:00',
    '2024-07-08 15:53:00',
    '2024-07-08 16:01:00',
    '2024-07-08 16:08:00',
    15,
    1,
    'On time',
    'batch_10',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '481',
    'J854390',
    'IC',
    '8397981',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    10.010958,
    47.294644,
    '2024-07-08 12:39:00',
    '2024-07-08 13:09:00',
    '2024-07-08 12:48:00',
    '2024-07-08 13:18:00',
    9,
    1,
    'On time',
    'batch_3',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '482',
    'J717712',
    'RB',
    '9777221',
    'passenger',
    'Hamburg-route',
    'Hamburg Ost',
    'DE',
    'Hamburg',
    '20095',
    10.671885,
    47.598215,
    '2024-07-08 22:30:00',
    '2024-07-08 22:51:00',
    '2024-07-08 22:33:00',
    '2024-07-08 22:54:00',
    3,
    1,
    'On time',
    'batch_2',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '483',
    'J914411',
    'S',
    '9372911',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    7.513676,
    53.744416,
    '2024-07-08 08:38:00',
    '2024-07-08 08:56:00',
    '2024-07-08 08:38:00',
    '2024-07-08 08:56:00',
    0,
    1,
    'On time',
    'batch_20',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '484',
    'J329804',
    'RB',
    '8214509',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    11.89055,
    50.643219,
    '2024-07-08 12:24:00',
    '2024-07-08 12:53:00',
    '2024-07-08 12:38:00',
    '2024-07-08 13:07:00',
    14,
    1,
    'On time',
    'batch_19',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '485',
    'J914458',
    'RE',
    '9233059',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    9.003559,
    49.264912,
    '2024-07-08 05:21:00',
    '2024-07-08 05:43:00',
    '2024-07-08 05:26:00',
    '2024-07-08 05:48:00',
    5,
    1,
    'On time',
    'batch_45',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '486',
    'J236077',
    'S',
    '9983188',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    12.901217,
    47.382792,
    '2024-07-08 14:21:00',
    '2024-07-08 14:31:00',
    '2024-07-08 14:36:00',
    '2024-07-08 14:46:00',
    15,
    1,
    'On time',
    'batch_13',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '487',
    'J273618',
    'IC',
    '9105684',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    6.049246,
    50.829019,
    '2024-07-08 15:41:00',
    '2024-07-08 15:47:00',
    '2024-07-08 15:45:00',
    '2024-07-08 15:51:00',
    4,
    1,
    'On time',
    'batch_38',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '488',
    'J786413',
    'ICE',
    '9106166',
    'passenger',
    'Munich-route',
    'Munich Nord',
    'DE',
    'Munich',
    '80331',
    12.450727,
    54.032265,
    '2024-07-08 09:56:00',
    '2024-07-08 10:25:00',
    '2024-07-08 10:00:00',
    '2024-07-08 10:29:00',
    4,
    1,
    'On time',
    'batch_22',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '489',
    'J326263',
    'ICE',
    '8587731',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    6.90598,
    48.499372,
    '2024-07-08 02:56:00',
    '2024-07-08 02:59:00',
    '2024-07-08 03:07:00',
    '2024-07-08 03:10:00',
    11,
    1,
    'On time',
    'batch_47',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '490',
    'J960216',
    'IC',
    '9204270',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    8.825652,
    52.699928,
    '2024-07-08 11:09:00',
    '2024-07-08 11:23:00',
    '2024-07-08 11:16:00',
    '2024-07-08 11:30:00',
    7,
    1,
    'On time',
    'batch_41',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '491',
    'J714629',
    'IC',
    '8118996',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    10.367416,
    51.29346,
    '2024-07-08 18:23:00',
    '2024-07-08 18:36:00',
    '2024-07-08 18:28:00',
    '2024-07-08 18:41:00',
    5,
    1,
    'On time',
    'batch_3',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '492',
    'J188628',
    'RE',
    '8943451',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    7.367578,
    52.141866,
    '2024-07-08 04:33:00',
    '2024-07-08 04:37:00',
    '2024-07-08 04:46:00',
    '2024-07-08 04:50:00',
    13,
    1,
    'On time',
    'batch_42',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '493',
    'J669273',
    'ICE',
    '9402399',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    12.91521,
    54.881774,
    '2024-07-08 15:23:00',
    '2024-07-08 15:45:00',
    '2024-07-08 15:43:00',
    '2024-07-08 16:05:00',
    20,
    1,
    'On time',
    'batch_24',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '494',
    'J604446',
    'S',
    '8223163',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    8.286585,
    50.988567,
    '2024-07-08 19:01:00',
    '2024-07-08 19:30:00',
    '2024-07-08 19:01:00',
    '2024-07-08 19:30:00',
    0,
    1,
    'On time',
    'batch_17',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '495',
    'J341772',
    'ICE',
    '9674609',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    8.849838,
    53.600614,
    '2024-07-08 13:09:00',
    '2024-07-08 13:14:00',
    '2024-07-08 13:17:00',
    '2024-07-08 13:22:00',
    8,
    1,
    'On time',
    'batch_4',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '496',
    'J457195',
    'IC',
    '9723717',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    6.810824,
    54.965057,
    '2024-07-08 14:29:00',
    '2024-07-08 14:56:00',
    '2024-07-08 14:41:00',
    '2024-07-08 15:08:00',
    12,
    1,
    'On time',
    'batch_44',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '497',
    'J843909',
    'IC',
    '8913611',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    10.298882,
    54.616541,
    '2024-07-08 01:51:00',
    '2024-07-08 01:59:00',
    '2024-07-08 01:53:00',
    '2024-07-08 02:01:00',
    2,
    1,
    'On time',
    'batch_31',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '498',
    'J933406',
    'RB',
    '8282522',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    12.347576,
    47.934737,
    '2024-07-08 12:32:00',
    '2024-07-08 12:45:00',
    '2024-07-08 12:38:00',
    '2024-07-08 12:51:00',
    6,
    1,
    'On time',
    'batch_2',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '499',
    'J977131',
    'RB',
    '9207057',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    11.546125,
    49.608745,
    '2024-07-08 12:43:00',
    '2024-07-08 12:56:00',
    '2024-07-08 12:45:00',
    '2024-07-08 12:58:00',
    2,
    1,
    'On time',
    'batch_19',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '500',
    'J372556',
    'S',
    '8630549',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    6.52658,
    51.302556,
    '2024-07-08 05:32:00',
    '2024-07-08 05:53:00',
    '2024-07-08 05:43:00',
    '2024-07-08 06:04:00',
    11,
    1,
    'On time',
    'batch_5',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '501',
    'J208274',
    'ICE',
    '8923451',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    6.332836,
    51.179034,
    '2024-07-08 05:50:00',
    '2024-07-08 06:04:00',
    '2024-07-08 05:57:00',
    '2024-07-08 06:11:00',
    7,
    1,
    'On time',
    'batch_30',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '502',
    'J853793',
    'IC',
    '9831282',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    10.335082,
    49.408979,
    '2024-07-08 05:12:00',
    '2024-07-08 05:25:00',
    '2024-07-08 05:15:00',
    '2024-07-08 05:28:00',
    3,
    1,
    'On time',
    'batch_28',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '503',
    'J689468',
    'IC',
    '9005133',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    10.937315,
    54.098203,
    '2024-07-08 20:59:00',
    '2024-07-08 21:17:00',
    '2024-07-08 21:13:00',
    '2024-07-08 21:31:00',
    14,
    1,
    'On time',
    'batch_31',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '504',
    'J744693',
    'ICE',
    '8488689',
    'passenger',
    'Munich-route',
    'Munich West',
    'DE',
    'Munich',
    '80331',
    11.478535,
    51.847055,
    '2024-07-08 12:41:00',
    '2024-07-08 13:02:00',
    '2024-07-08 12:41:00',
    '2024-07-08 13:02:00',
    0,
    1,
    'On time',
    'batch_29',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '505',
    'J621504',
    'RE',
    '8244381',
    'passenger',
    'Hamburg-route',
    'Hamburg Ost',
    'DE',
    'Hamburg',
    '20095',
    7.412276,
    49.904596,
    '2024-07-08 09:25:00',
    '2024-07-08 09:53:00',
    '2024-07-08 09:41:00',
    '2024-07-08 10:09:00',
    16,
    1,
    'On time',
    'batch_37',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '506',
    'J845469',
    'ICE',
    '8941885',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    7.419581,
    48.931555,
    '2024-07-08 02:22:00',
    '2024-07-08 02:39:00',
    '2024-07-08 02:25:00',
    '2024-07-08 02:42:00',
    3,
    1,
    'On time',
    'batch_34',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '507',
    'J511296',
    'ICE',
    '8678991',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    12.277411,
    54.908885,
    '2024-07-08 13:15:00',
    '2024-07-08 13:28:00',
    '2024-07-08 13:34:00',
    '2024-07-08 13:47:00',
    19,
    1,
    'On time',
    'batch_6',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '508',
    'J780332',
    'RE',
    '9556673',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    9.954406,
    51.872855,
    '2024-07-08 21:00:00',
    '2024-07-08 21:04:00',
    '2024-07-08 21:15:00',
    '2024-07-08 21:19:00',
    15,
    1,
    'On time',
    'batch_17',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '509',
    'J185008',
    'RE',
    '9944217',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    6.382839,
    50.820983,
    '2024-07-08 04:09:00',
    '2024-07-08 04:24:00',
    '2024-07-08 04:21:00',
    '2024-07-08 04:36:00',
    12,
    1,
    'On time',
    'batch_10',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '510',
    'J624864',
    'ICE',
    '9280643',
    'passenger',
    'Hamburg-route',
    'Hamburg Ost',
    'DE',
    'Hamburg',
    '20095',
    8.469212,
    47.459069,
    '2024-07-08 01:56:00',
    '2024-07-08 02:06:00',
    '2024-07-08 02:02:00',
    '2024-07-08 02:12:00',
    6,
    1,
    'On time',
    'batch_20',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '511',
    'J738816',
    'IC',
    '8261273',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    6.03615,
    50.04505,
    '2024-07-08 14:04:00',
    '2024-07-08 14:34:00',
    '2024-07-08 14:19:00',
    '2024-07-08 14:49:00',
    15,
    1,
    'On time',
    'batch_7',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '512',
    'J868866',
    'S',
    '9045136',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    6.131455,
    54.095998,
    '2024-07-08 15:01:00',
    '2024-07-08 15:19:00',
    '2024-07-08 15:17:00',
    '2024-07-08 15:35:00',
    16,
    1,
    'On time',
    'batch_49',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '513',
    'J153909',
    'RB',
    '9533819',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    10.467828,
    47.540466,
    '2024-07-08 12:39:00',
    '2024-07-08 13:05:00',
    '2024-07-08 12:48:00',
    '2024-07-08 13:14:00',
    9,
    1,
    'On time',
    'batch_35',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '514',
    'J121640',
    'RB',
    '8788769',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    8.751184,
    49.897608,
    '2024-07-08 06:09:00',
    '2024-07-08 06:13:00',
    '2024-07-08 06:11:00',
    '2024-07-08 06:15:00',
    2,
    1,
    'On time',
    'batch_18',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '515',
    'J414177',
    'RE',
    '8955239',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    6.255616,
    51.87519,
    '2024-07-08 02:34:00',
    '2024-07-08 02:51:00',
    '2024-07-08 02:52:00',
    '2024-07-08 03:09:00',
    18,
    1,
    'On time',
    'batch_46',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '516',
    'J119372',
    'RB',
    '8793284',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    10.455116,
    49.985507,
    '2024-07-08 05:07:00',
    '2024-07-08 05:09:00',
    '2024-07-08 05:26:00',
    '2024-07-08 05:28:00',
    19,
    1,
    'On time',
    'batch_28',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '517',
    'J688268',
    'RB',
    '9895572',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    9.367175,
    54.734267,
    '2024-07-08 19:54:00',
    '2024-07-08 20:21:00',
    '2024-07-08 19:56:00',
    '2024-07-08 20:23:00',
    2,
    1,
    'On time',
    'batch_46',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '518',
    'J883520',
    'ICE',
    '9492531',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    8.091096,
    50.287163,
    '2024-07-08 16:51:00',
    '2024-07-08 16:55:00',
    '2024-07-08 17:00:00',
    '2024-07-08 17:04:00',
    9,
    1,
    'On time',
    'batch_42',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '519',
    'J324020',
    'ICE',
    '9740596',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    10.924595,
    52.982801,
    '2024-07-08 14:18:00',
    '2024-07-08 14:48:00',
    '2024-07-08 14:20:00',
    '2024-07-08 14:50:00',
    2,
    1,
    'On time',
    'batch_31',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '520',
    'J577542',
    'RB',
    '9729340',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    6.926049,
    47.001076,
    '2024-07-08 23:42:00',
    '2024-07-09 00:05:00',
    '2024-07-08 23:55:00',
    '2024-07-09 00:18:00',
    13,
    1,
    'On time',
    'batch_47',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '521',
    'J452611',
    'RE',
    '8597100',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    10.918916,
    51.305646,
    '2024-07-08 10:48:00',
    '2024-07-08 11:12:00',
    '2024-07-08 10:53:00',
    '2024-07-08 11:17:00',
    5,
    1,
    'On time',
    'batch_17',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '522',
    'J438451',
    'IC',
    '9094331',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    11.928835,
    54.982675,
    '2024-07-08 15:20:00',
    '2024-07-08 15:43:00',
    '2024-07-08 15:38:00',
    '2024-07-08 16:01:00',
    18,
    1,
    'On time',
    'batch_11',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '523',
    'J883704',
    'RE',
    '9180634',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    12.173299,
    52.030008,
    '2024-07-08 15:50:00',
    '2024-07-08 15:57:00',
    '2024-07-08 15:58:00',
    '2024-07-08 16:05:00',
    8,
    1,
    'On time',
    'batch_36',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '524',
    'J137776',
    'ICE',
    '8938645',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    8.533985,
    53.826093,
    '2024-07-08 14:34:00',
    '2024-07-08 14:38:00',
    '2024-07-08 14:42:00',
    '2024-07-08 14:46:00',
    8,
    1,
    'On time',
    'batch_18',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '525',
    'J729500',
    'RB',
    '8944424',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    10.524678,
    54.486716,
    '2024-07-08 20:56:00',
    '2024-07-08 21:25:00',
    '2024-07-08 21:12:00',
    '2024-07-08 21:41:00',
    16,
    1,
    'On time',
    'batch_45',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '526',
    'J345196',
    'ICE',
    '8341598',
    'passenger',
    'Munich-route',
    'Munich West',
    'DE',
    'Munich',
    '80331',
    8.914715,
    51.067719,
    '2024-07-08 17:20:00',
    '2024-07-08 17:31:00',
    '2024-07-08 17:37:00',
    '2024-07-08 17:48:00',
    17,
    1,
    'On time',
    'batch_18',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '527',
    'J849550',
    'ICE',
    '9001202',
    'passenger',
    'Berlin-route',
    'Berlin Nord',
    'DE',
    'Berlin',
    '10115',
    8.115475,
    49.232996,
    '2024-07-08 02:21:00',
    '2024-07-08 02:48:00',
    '2024-07-08 02:36:00',
    '2024-07-08 03:03:00',
    15,
    1,
    'On time',
    'batch_7',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '528',
    'J777850',
    'IC',
    '8588550',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    9.949362,
    54.423253,
    '2024-07-08 19:08:00',
    '2024-07-08 19:21:00',
    '2024-07-08 19:13:00',
    '2024-07-08 19:26:00',
    5,
    1,
    'On time',
    'batch_25',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '529',
    'J536283',
    'IC',
    '9953046',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    9.591541,
    49.276866,
    '2024-07-08 23:44:00',
    '2024-07-09 00:10:00',
    '2024-07-08 23:48:00',
    '2024-07-09 00:14:00',
    4,
    1,
    'On time',
    'batch_22',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '530',
    'J988682',
    'ICE',
    '8168459',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    12.810321,
    50.041689,
    '2024-07-08 23:06:00',
    '2024-07-08 23:29:00',
    '2024-07-08 23:19:00',
    '2024-07-08 23:42:00',
    13,
    1,
    'On time',
    'batch_28',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '531',
    'J717620',
    'ICE',
    '8896806',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    9.45954,
    51.728468,
    '2024-07-08 23:37:00',
    '2024-07-08 23:54:00',
    '2024-07-08 23:49:00',
    '2024-07-09 00:06:00',
    12,
    1,
    'On time',
    'batch_30',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '532',
    'J696897',
    'ICE',
    '9959345',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    10.648824,
    48.035031,
    '2024-07-08 22:59:00',
    '2024-07-08 23:24:00',
    '2024-07-08 23:06:00',
    '2024-07-08 23:31:00',
    7,
    1,
    'On time',
    'batch_6',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '533',
    'J864017',
    'IC',
    '9901733',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    11.318293,
    47.32622,
    '2024-07-08 13:26:00',
    '2024-07-08 13:28:00',
    '2024-07-08 13:35:00',
    '2024-07-08 13:37:00',
    9,
    1,
    'On time',
    'batch_20',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '534',
    'J688184',
    'RB',
    '9610144',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    9.8032,
    49.969279,
    '2024-07-08 12:11:00',
    '2024-07-08 12:13:00',
    '2024-07-08 12:30:00',
    '2024-07-08 12:32:00',
    19,
    1,
    'On time',
    'batch_5',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '535',
    'J677584',
    'RB',
    '8380108',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    9.458313,
    47.202232,
    '2024-07-08 23:08:00',
    '2024-07-08 23:29:00',
    '2024-07-08 23:25:00',
    '2024-07-08 23:46:00',
    17,
    1,
    'On time',
    'batch_40',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '536',
    'J733554',
    'S',
    '9818886',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    8.965752,
    53.57885,
    '2024-07-08 01:14:00',
    '2024-07-08 01:33:00',
    '2024-07-08 01:27:00',
    '2024-07-08 01:46:00',
    13,
    1,
    'On time',
    'batch_35',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '537',
    'J967035',
    'IC',
    '9775310',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    7.864708,
    53.812528,
    '2024-07-08 00:31:00',
    '2024-07-08 00:58:00',
    '2024-07-08 00:31:00',
    '2024-07-08 00:58:00',
    0,
    1,
    'On time',
    'batch_46',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '538',
    'J911886',
    'S',
    '8363270',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    10.198091,
    54.045003,
    '2024-07-08 05:28:00',
    '2024-07-08 05:34:00',
    '2024-07-08 05:28:00',
    '2024-07-08 05:34:00',
    0,
    1,
    'On time',
    'batch_27',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '539',
    'J205685',
    'S',
    '8678365',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    9.102655,
    53.559981,
    '2024-07-08 23:18:00',
    '2024-07-08 23:27:00',
    '2024-07-08 23:28:00',
    '2024-07-08 23:37:00',
    10,
    1,
    'On time',
    'batch_1',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '540',
    'J322574',
    'IC',
    '8257298',
    'passenger',
    'Berlin-route',
    'Berlin West',
    'DE',
    'Berlin',
    '10115',
    11.316537,
    53.954488,
    '2024-07-08 04:05:00',
    '2024-07-08 04:09:00',
    '2024-07-08 04:09:00',
    '2024-07-08 04:13:00',
    4,
    1,
    'On time',
    'batch_43',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '541',
    'J922759',
    'RB',
    '8801375',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    8.104747,
    52.276276,
    '2024-07-08 20:38:00',
    '2024-07-08 20:57:00',
    '2024-07-08 20:42:00',
    '2024-07-08 21:01:00',
    4,
    1,
    'On time',
    'batch_1',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '542',
    'J694035',
    'ICE',
    '9760014',
    'passenger',
    'Hamburg-route',
    'Hamburg Ost',
    'DE',
    'Hamburg',
    '20095',
    6.664986,
    51.713566,
    '2024-07-08 13:55:00',
    '2024-07-08 14:17:00',
    '2024-07-08 14:01:00',
    '2024-07-08 14:23:00',
    6,
    1,
    'On time',
    'batch_24',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '543',
    'J132924',
    'ICE',
    '9412994',
    'passenger',
    'Munich-route',
    'Munich Nord',
    'DE',
    'Munich',
    '80331',
    8.688087,
    47.337913,
    '2024-07-08 06:20:00',
    '2024-07-08 06:24:00',
    '2024-07-08 06:37:00',
    '2024-07-08 06:41:00',
    17,
    1,
    'On time',
    'batch_30',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '544',
    'J197518',
    'IC',
    '8848076',
    'passenger',
    'Munich-route',
    'Munich West',
    'DE',
    'Munich',
    '80331',
    11.249726,
    54.287407,
    '2024-07-08 23:47:00',
    '2024-07-09 00:16:00',
    '2024-07-08 23:58:00',
    '2024-07-09 00:27:00',
    11,
    1,
    'On time',
    'batch_6',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '545',
    'J461748',
    'RE',
    '9992960',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    11.848992,
    52.568216,
    '2024-07-08 12:21:00',
    '2024-07-08 12:38:00',
    '2024-07-08 12:31:00',
    '2024-07-08 12:48:00',
    10,
    1,
    'On time',
    'batch_27',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '546',
    'J778632',
    'S',
    '9855448',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    12.531775,
    47.489408,
    '2024-07-08 05:21:00',
    '2024-07-08 05:22:00',
    '2024-07-08 05:40:00',
    '2024-07-08 05:41:00',
    19,
    1,
    'On time',
    'batch_27',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '547',
    'J925743',
    'RE',
    '9611536',
    'passenger',
    'Munich-route',
    'Munich Nord',
    'DE',
    'Munich',
    '80331',
    7.232211,
    49.604194,
    '2024-07-08 09:07:00',
    '2024-07-08 09:25:00',
    '2024-07-08 09:17:00',
    '2024-07-08 09:35:00',
    10,
    1,
    'On time',
    'batch_28',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '548',
    'J965183',
    'RB',
    '9227356',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    11.886398,
    49.949856,
    '2024-07-08 05:57:00',
    '2024-07-08 06:21:00',
    '2024-07-08 06:17:00',
    '2024-07-08 06:41:00',
    20,
    1,
    'On time',
    'batch_10',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '549',
    'J392604',
    'RB',
    '9660074',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    8.547024,
    49.192983,
    '2024-07-08 20:56:00',
    '2024-07-08 20:59:00',
    '2024-07-08 21:13:00',
    '2024-07-08 21:16:00',
    17,
    1,
    'On time',
    'batch_23',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '550',
    'J282612',
    'S',
    '8373742',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    11.65018,
    52.397874,
    '2024-07-08 05:40:00',
    '2024-07-08 05:51:00',
    '2024-07-08 05:57:00',
    '2024-07-08 06:08:00',
    17,
    1,
    'On time',
    'batch_31',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '551',
    'J916348',
    'ICE',
    '9416906',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    8.545242,
    49.894719,
    '2024-07-08 05:15:00',
    '2024-07-08 05:40:00',
    '2024-07-08 05:34:00',
    '2024-07-08 05:59:00',
    19,
    1,
    'On time',
    'batch_41',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '552',
    'J131486',
    'IC',
    '8485960',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    11.295694,
    53.738411,
    '2024-07-08 20:20:00',
    '2024-07-08 20:34:00',
    '2024-07-08 20:32:00',
    '2024-07-08 20:46:00',
    12,
    1,
    'On time',
    'batch_16',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '553',
    'J968870',
    'ICE',
    '8154780',
    'passenger',
    'Hamburg-route',
    'Hamburg Ost',
    'DE',
    'Hamburg',
    '20095',
    11.24514,
    52.566084,
    '2024-07-08 17:06:00',
    '2024-07-08 17:17:00',
    '2024-07-08 17:07:00',
    '2024-07-08 17:18:00',
    1,
    1,
    'On time',
    'batch_47',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '554',
    'J209544',
    'S',
    '8487743',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    10.655245,
    49.570177,
    '2024-07-08 19:50:00',
    '2024-07-08 20:04:00',
    '2024-07-08 20:05:00',
    '2024-07-08 20:19:00',
    15,
    1,
    'On time',
    'batch_25',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '555',
    'J257720',
    'RB',
    '8069668',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    7.916372,
    51.479612,
    '2024-07-08 19:24:00',
    '2024-07-08 19:53:00',
    '2024-07-08 19:40:00',
    '2024-07-08 20:09:00',
    16,
    1,
    'On time',
    'batch_30',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '556',
    'J928716',
    'RE',
    '8384198',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    6.497193,
    49.649776,
    '2024-07-08 20:51:00',
    '2024-07-08 21:16:00',
    '2024-07-08 20:58:00',
    '2024-07-08 21:23:00',
    7,
    1,
    'On time',
    'batch_22',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '557',
    'J828032',
    'RB',
    '9806558',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    7.719307,
    50.353563,
    '2024-07-08 05:45:00',
    '2024-07-08 06:04:00',
    '2024-07-08 06:03:00',
    '2024-07-08 06:22:00',
    18,
    1,
    'On time',
    'batch_46',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '558',
    'J288143',
    'S',
    '9087644',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    9.802023,
    50.950136,
    '2024-07-08 04:57:00',
    '2024-07-08 05:02:00',
    '2024-07-08 05:17:00',
    '2024-07-08 05:22:00',
    20,
    1,
    'On time',
    'batch_39',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '559',
    'J775309',
    'ICE',
    '8122809',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    10.339079,
    52.191082,
    '2024-07-08 11:14:00',
    '2024-07-08 11:37:00',
    '2024-07-08 11:30:00',
    '2024-07-08 11:53:00',
    16,
    1,
    'On time',
    'batch_17',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '560',
    'J191219',
    'S',
    '8292449',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    12.670299,
    52.681575,
    '2024-07-08 12:54:00',
    '2024-07-08 13:02:00',
    '2024-07-08 13:05:00',
    '2024-07-08 13:13:00',
    11,
    1,
    'On time',
    'batch_2',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '561',
    'J821973',
    'IC',
    '9447410',
    'passenger',
    'Berlin-route',
    'Berlin Nord',
    'DE',
    'Berlin',
    '10115',
    11.661122,
    51.429972,
    '2024-07-08 10:53:00',
    '2024-07-08 11:22:00',
    '2024-07-08 11:05:00',
    '2024-07-08 11:34:00',
    12,
    1,
    'On time',
    'batch_5',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '562',
    'J959116',
    'IC',
    '8909850',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    11.972375,
    51.930937,
    '2024-07-08 04:24:00',
    '2024-07-08 04:46:00',
    '2024-07-08 04:40:00',
    '2024-07-08 05:02:00',
    16,
    1,
    'On time',
    'batch_5',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '563',
    'J734773',
    'ICE',
    '8377181',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    7.265585,
    52.249046,
    '2024-07-08 02:43:00',
    '2024-07-08 03:02:00',
    '2024-07-08 02:55:00',
    '2024-07-08 03:14:00',
    12,
    1,
    'On time',
    'batch_33',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '564',
    'J939439',
    'S',
    '9463159',
    'passenger',
    'Berlin-route',
    'Berlin West',
    'DE',
    'Berlin',
    '10115',
    12.425748,
    50.431815,
    '2024-07-08 15:42:00',
    '2024-07-08 16:09:00',
    '2024-07-08 15:59:00',
    '2024-07-08 16:26:00',
    17,
    1,
    'On time',
    'batch_40',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '565',
    'J531897',
    'RB',
    '9988058',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    7.835033,
    49.092002,
    '2024-07-08 21:58:00',
    '2024-07-08 22:10:00',
    '2024-07-08 22:12:00',
    '2024-07-08 22:24:00',
    14,
    1,
    'On time',
    'batch_2',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '566',
    'J309765',
    'IC',
    '8592214',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    11.077762,
    51.239424,
    '2024-07-08 11:23:00',
    '2024-07-08 11:33:00',
    '2024-07-08 11:25:00',
    '2024-07-08 11:35:00',
    2,
    1,
    'On time',
    'batch_49',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '567',
    'J711510',
    'RB',
    '8381410',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    12.576399,
    52.13484,
    '2024-07-08 12:40:00',
    '2024-07-08 12:41:00',
    '2024-07-08 12:48:00',
    '2024-07-08 12:49:00',
    8,
    1,
    'On time',
    'batch_44',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '568',
    'J593480',
    'RB',
    '8245007',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    10.899395,
    48.282395,
    '2024-07-08 09:46:00',
    '2024-07-08 10:00:00',
    '2024-07-08 09:59:00',
    '2024-07-08 10:13:00',
    13,
    1,
    'On time',
    'batch_28',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '569',
    'J583447',
    'ICE',
    '9306529',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    9.130434,
    50.518327,
    '2024-07-08 11:39:00',
    '2024-07-08 11:40:00',
    '2024-07-08 11:48:00',
    '2024-07-08 11:49:00',
    9,
    1,
    'On time',
    'batch_22',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '570',
    'J356357',
    'IC',
    '9828261',
    'passenger',
    'Hamburg-route',
    'Hamburg Ost',
    'DE',
    'Hamburg',
    '20095',
    6.023665,
    50.109171,
    '2024-07-08 09:46:00',
    '2024-07-08 10:07:00',
    '2024-07-08 09:52:00',
    '2024-07-08 10:13:00',
    6,
    1,
    'On time',
    'batch_27',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '571',
    'J366114',
    'RE',
    '8000054',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    10.693114,
    47.253487,
    '2024-07-08 03:52:00',
    '2024-07-08 03:53:00',
    '2024-07-08 03:54:00',
    '2024-07-08 03:55:00',
    2,
    1,
    'On time',
    'batch_17',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '572',
    'J641476',
    'RB',
    '9576295',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    8.110325,
    50.081864,
    '2024-07-08 00:58:00',
    '2024-07-08 01:10:00',
    '2024-07-08 01:05:00',
    '2024-07-08 01:17:00',
    7,
    1,
    'On time',
    'batch_10',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '573',
    'J477612',
    'S',
    '8940500',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    10.37921,
    49.335386,
    '2024-07-08 14:30:00',
    '2024-07-08 14:35:00',
    '2024-07-08 14:48:00',
    '2024-07-08 14:53:00',
    18,
    1,
    'On time',
    'batch_33',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '574',
    'J526769',
    'RB',
    '9081718',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    9.404606,
    52.454645,
    '2024-07-08 19:36:00',
    '2024-07-08 20:00:00',
    '2024-07-08 19:45:00',
    '2024-07-08 20:09:00',
    9,
    1,
    'On time',
    'batch_45',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '575',
    'J490255',
    'RB',
    '8276995',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    11.459563,
    52.68914,
    '2024-07-08 04:57:00',
    '2024-07-08 05:27:00',
    '2024-07-08 05:11:00',
    '2024-07-08 05:41:00',
    14,
    1,
    'On time',
    'batch_18',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '576',
    'J762388',
    'ICE',
    '9211699',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    8.595047,
    54.742787,
    '2024-07-08 23:20:00',
    '2024-07-08 23:33:00',
    '2024-07-08 23:34:00',
    '2024-07-08 23:47:00',
    14,
    1,
    'On time',
    'batch_2',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '577',
    'J833219',
    'RB',
    '9877730',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    8.829888,
    54.058414,
    '2024-07-08 10:33:00',
    '2024-07-08 10:43:00',
    '2024-07-08 10:37:00',
    '2024-07-08 10:47:00',
    4,
    1,
    'On time',
    'batch_2',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '578',
    'J894987',
    'S',
    '8562198',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    6.526209,
    50.227942,
    '2024-07-08 20:22:00',
    '2024-07-08 20:28:00',
    '2024-07-08 20:25:00',
    '2024-07-08 20:31:00',
    3,
    1,
    'On time',
    'batch_25',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '579',
    'J828443',
    'ICE',
    '8524626',
    'passenger',
    'Munich-route',
    'Munich Nord',
    'DE',
    'Munich',
    '80331',
    8.199973,
    51.942038,
    '2024-07-08 20:55:00',
    '2024-07-08 21:12:00',
    '2024-07-08 21:04:00',
    '2024-07-08 21:21:00',
    9,
    1,
    'On time',
    'batch_31',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '580',
    'J932393',
    'IC',
    '8285494',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    6.412906,
    48.020221,
    '2024-07-08 17:35:00',
    '2024-07-08 17:57:00',
    '2024-07-08 17:41:00',
    '2024-07-08 18:03:00',
    6,
    1,
    'On time',
    'batch_42',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '581',
    'J748130',
    'RB',
    '9299499',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    7.690099,
    49.119755,
    '2024-07-08 23:12:00',
    '2024-07-08 23:19:00',
    '2024-07-08 23:15:00',
    '2024-07-08 23:22:00',
    3,
    1,
    'On time',
    'batch_50',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '582',
    'J736235',
    'S',
    '8410953',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    7.658785,
    50.911728,
    '2024-07-08 04:33:00',
    '2024-07-08 04:43:00',
    '2024-07-08 04:45:00',
    '2024-07-08 04:55:00',
    12,
    1,
    'On time',
    'batch_31',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '583',
    'J832875',
    'RB',
    '9284029',
    'passenger',
    'Berlin-route',
    'Berlin Nord',
    'DE',
    'Berlin',
    '10115',
    11.141666,
    50.62656,
    '2024-07-08 12:00:00',
    '2024-07-08 12:24:00',
    '2024-07-08 12:19:00',
    '2024-07-08 12:43:00',
    19,
    1,
    'On time',
    'batch_25',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '584',
    'J293256',
    'ICE',
    '8804363',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    9.191893,
    49.843311,
    '2024-07-08 07:50:00',
    '2024-07-08 08:06:00',
    '2024-07-08 08:05:00',
    '2024-07-08 08:21:00',
    15,
    1,
    'On time',
    'batch_41',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '585',
    'J136936',
    'ICE',
    '8923523',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    10.747732,
    47.139339,
    '2024-07-08 04:22:00',
    '2024-07-08 04:43:00',
    '2024-07-08 04:32:00',
    '2024-07-08 04:53:00',
    10,
    1,
    'On time',
    'batch_1',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '586',
    'J648681',
    'S',
    '8670139',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    11.665692,
    53.586167,
    '2024-07-08 14:09:00',
    '2024-07-08 14:32:00',
    '2024-07-08 14:12:00',
    '2024-07-08 14:35:00',
    3,
    1,
    'On time',
    'batch_18',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '587',
    'J519157',
    'ICE',
    '8465904',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    10.755963,
    53.647205,
    '2024-07-08 22:02:00',
    '2024-07-08 22:25:00',
    '2024-07-08 22:20:00',
    '2024-07-08 22:43:00',
    18,
    1,
    'On time',
    'batch_23',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '588',
    'J299083',
    'S',
    '9129406',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    10.013215,
    50.691989,
    '2024-07-08 02:07:00',
    '2024-07-08 02:08:00',
    '2024-07-08 02:09:00',
    '2024-07-08 02:10:00',
    2,
    1,
    'On time',
    'batch_10',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '589',
    'J571729',
    'RB',
    '9325107',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    6.27097,
    52.810796,
    '2024-07-08 07:13:00',
    '2024-07-08 07:32:00',
    '2024-07-08 07:28:00',
    '2024-07-08 07:47:00',
    15,
    1,
    'On time',
    'batch_40',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '590',
    'J761519',
    'S',
    '9798921',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    12.259612,
    53.438338,
    '2024-07-08 03:45:00',
    '2024-07-08 04:02:00',
    '2024-07-08 03:56:00',
    '2024-07-08 04:13:00',
    11,
    1,
    'On time',
    'batch_24',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '591',
    'J666041',
    'S',
    '9097726',
    'passenger',
    'Hamburg-route',
    'Hamburg Nord',
    'DE',
    'Hamburg',
    '20095',
    7.905691,
    50.645523,
    '2024-07-08 13:50:00',
    '2024-07-08 14:14:00',
    '2024-07-08 14:03:00',
    '2024-07-08 14:27:00',
    13,
    1,
    'On time',
    'batch_30',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '592',
    'J483473',
    'ICE',
    '9136535',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    12.581086,
    51.411601,
    '2024-07-08 03:47:00',
    '2024-07-08 04:00:00',
    '2024-07-08 04:05:00',
    '2024-07-08 04:18:00',
    18,
    1,
    'On time',
    'batch_4',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '593',
    'J358645',
    'RE',
    '8569443',
    'passenger',
    'Hamburg-route',
    'Hamburg Nord',
    'DE',
    'Hamburg',
    '20095',
    11.09716,
    51.187448,
    '2024-07-08 09:15:00',
    '2024-07-08 09:34:00',
    '2024-07-08 09:19:00',
    '2024-07-08 09:38:00',
    4,
    1,
    'On time',
    'batch_15',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '594',
    'J743243',
    'IC',
    '9075011',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    7.129855,
    48.332279,
    '2024-07-08 17:36:00',
    '2024-07-08 17:48:00',
    '2024-07-08 17:45:00',
    '2024-07-08 17:57:00',
    9,
    1,
    'On time',
    'batch_14',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '595',
    'J373766',
    'RB',
    '8665393',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    12.052812,
    53.479844,
    '2024-07-08 05:55:00',
    '2024-07-08 05:59:00',
    '2024-07-08 06:03:00',
    '2024-07-08 06:07:00',
    8,
    1,
    'On time',
    'batch_16',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '596',
    'J578302',
    'RB',
    '9455054',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    10.549434,
    53.127457,
    '2024-07-08 08:56:00',
    '2024-07-08 09:21:00',
    '2024-07-08 09:13:00',
    '2024-07-08 09:38:00',
    17,
    1,
    'On time',
    'batch_19',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '597',
    'J461815',
    'IC',
    '8752861',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    7.053123,
    48.129075,
    '2024-07-08 19:27:00',
    '2024-07-08 19:29:00',
    '2024-07-08 19:38:00',
    '2024-07-08 19:40:00',
    11,
    1,
    'On time',
    'batch_9',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '598',
    'J485266',
    'S',
    '8577814',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    12.011745,
    49.915621,
    '2024-07-08 19:37:00',
    '2024-07-08 19:46:00',
    '2024-07-08 19:57:00',
    '2024-07-08 20:06:00',
    20,
    1,
    'On time',
    'batch_3',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '599',
    'J266398',
    'ICE',
    '9449789',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    10.620538,
    52.254432,
    '2024-07-08 09:19:00',
    '2024-07-08 09:46:00',
    '2024-07-08 09:28:00',
    '2024-07-08 09:55:00',
    9,
    1,
    'On time',
    'batch_9',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '600',
    'J108408',
    'IC',
    '9541208',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    10.579468,
    52.337815,
    '2024-07-08 09:58:00',
    '2024-07-08 10:16:00',
    '2024-07-08 10:14:00',
    '2024-07-08 10:32:00',
    16,
    1,
    'On time',
    'batch_2',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '601',
    'J213616',
    'RE',
    '9902209',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    11.384991,
    48.710505,
    '2024-07-08 07:40:00',
    '2024-07-08 07:56:00',
    '2024-07-08 07:55:00',
    '2024-07-08 08:11:00',
    15,
    1,
    'On time',
    'batch_3',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '602',
    'J540137',
    'IC',
    '9875593',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    7.360505,
    52.48441,
    '2024-07-08 00:50:00',
    '2024-07-08 01:07:00',
    '2024-07-08 00:57:00',
    '2024-07-08 01:14:00',
    7,
    1,
    'On time',
    'batch_20',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '603',
    'J118976',
    'RE',
    '8571159',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    10.668113,
    54.44352,
    '2024-07-08 19:00:00',
    '2024-07-08 19:27:00',
    '2024-07-08 19:09:00',
    '2024-07-08 19:36:00',
    9,
    1,
    'On time',
    'batch_40',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '604',
    'J662974',
    'ICE',
    '8541712',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    6.897235,
    52.227501,
    '2024-07-08 08:04:00',
    '2024-07-08 08:12:00',
    '2024-07-08 08:22:00',
    '2024-07-08 08:30:00',
    18,
    1,
    'On time',
    'batch_13',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '605',
    'J434668',
    'RB',
    '8719729',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    12.285889,
    52.364613,
    '2024-07-08 21:16:00',
    '2024-07-08 21:18:00',
    '2024-07-08 21:33:00',
    '2024-07-08 21:35:00',
    17,
    1,
    'On time',
    'batch_26',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '606',
    'J122657',
    'S',
    '9382574',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    10.930247,
    50.767512,
    '2024-07-08 21:06:00',
    '2024-07-08 21:29:00',
    '2024-07-08 21:14:00',
    '2024-07-08 21:37:00',
    8,
    1,
    'On time',
    'batch_27',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '607',
    'J326800',
    'IC',
    '9244769',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    8.265561,
    48.39173,
    '2024-07-08 07:55:00',
    '2024-07-08 08:21:00',
    '2024-07-08 08:05:00',
    '2024-07-08 08:31:00',
    10,
    1,
    'On time',
    'batch_44',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '608',
    'J959468',
    'ICE',
    '8070081',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    9.685597,
    49.584193,
    '2024-07-08 17:22:00',
    '2024-07-08 17:24:00',
    '2024-07-08 17:42:00',
    '2024-07-08 17:44:00',
    20,
    1,
    'On time',
    'batch_16',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '609',
    'J306692',
    'ICE',
    '8057408',
    'passenger',
    'Munich-route',
    'Munich Nord',
    'DE',
    'Munich',
    '80331',
    12.270138,
    53.094891,
    '2024-07-08 13:47:00',
    '2024-07-08 14:07:00',
    '2024-07-08 13:55:00',
    '2024-07-08 14:15:00',
    8,
    1,
    'On time',
    'batch_12',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '610',
    'J746262',
    'ICE',
    '8816716',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    10.257406,
    51.477935,
    '2024-07-08 06:14:00',
    '2024-07-08 06:34:00',
    '2024-07-08 06:15:00',
    '2024-07-08 06:35:00',
    1,
    1,
    'On time',
    'batch_41',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '611',
    'J655075',
    'RE',
    '8178141',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    9.889358,
    52.940779,
    '2024-07-08 08:26:00',
    '2024-07-08 08:55:00',
    '2024-07-08 08:38:00',
    '2024-07-08 09:07:00',
    12,
    1,
    'On time',
    'batch_4',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '612',
    'J992026',
    'S',
    '9240903',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    11.797588,
    52.904675,
    '2024-07-08 06:17:00',
    '2024-07-08 06:20:00',
    '2024-07-08 06:34:00',
    '2024-07-08 06:37:00',
    17,
    1,
    'On time',
    'batch_46',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '613',
    'J246066',
    'S',
    '8730718',
    'passenger',
    'Hamburg-route',
    'Hamburg Nord',
    'DE',
    'Hamburg',
    '20095',
    10.790392,
    52.239846,
    '2024-07-08 05:38:00',
    '2024-07-08 05:39:00',
    '2024-07-08 05:39:00',
    '2024-07-08 05:40:00',
    1,
    1,
    'On time',
    'batch_46',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '614',
    'J263513',
    'RE',
    '9312987',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    8.782744,
    48.962598,
    '2024-07-08 06:06:00',
    '2024-07-08 06:30:00',
    '2024-07-08 06:10:00',
    '2024-07-08 06:34:00',
    4,
    1,
    'On time',
    'batch_37',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '615',
    'J249475',
    'IC',
    '8092824',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    8.96671,
    54.839948,
    '2024-07-08 05:58:00',
    '2024-07-08 05:59:00',
    '2024-07-08 06:17:00',
    '2024-07-08 06:18:00',
    19,
    1,
    'On time',
    'batch_1',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '616',
    'J500355',
    'IC',
    '9071133',
    'passenger',
    'Hamburg-route',
    'Hamburg Ost',
    'DE',
    'Hamburg',
    '20095',
    12.565501,
    48.952875,
    '2024-07-08 23:56:00',
    '2024-07-09 00:05:00',
    '2024-07-09 00:03:00',
    '2024-07-09 00:12:00',
    7,
    1,
    'On time',
    'batch_17',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '617',
    'J615424',
    'IC',
    '9117524',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    12.393272,
    54.66634,
    '2024-07-08 22:19:00',
    '2024-07-08 22:28:00',
    '2024-07-08 22:34:00',
    '2024-07-08 22:43:00',
    15,
    1,
    'On time',
    'batch_32',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '618',
    'J503445',
    'S',
    '9404647',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    6.973267,
    53.731846,
    '2024-07-08 10:23:00',
    '2024-07-08 10:32:00',
    '2024-07-08 10:37:00',
    '2024-07-08 10:46:00',
    14,
    1,
    'On time',
    'batch_14',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '619',
    'J527501',
    'RE',
    '9969453',
    'passenger',
    'Berlin-route',
    'Berlin Nord',
    'DE',
    'Berlin',
    '10115',
    9.648405,
    51.071702,
    '2024-07-08 10:32:00',
    '2024-07-08 10:38:00',
    '2024-07-08 10:39:00',
    '2024-07-08 10:45:00',
    7,
    1,
    'On time',
    'batch_22',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '620',
    'J992064',
    'S',
    '8983914',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    12.847692,
    54.174927,
    '2024-07-08 01:24:00',
    '2024-07-08 01:48:00',
    '2024-07-08 01:41:00',
    '2024-07-08 02:05:00',
    17,
    1,
    'On time',
    'batch_1',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '621',
    'J290309',
    'RB',
    '8734483',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    9.003628,
    51.645989,
    '2024-07-08 20:50:00',
    '2024-07-08 20:59:00',
    '2024-07-08 20:57:00',
    '2024-07-08 21:06:00',
    7,
    1,
    'On time',
    'batch_45',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '622',
    'J520518',
    'ICE',
    '8671225',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    9.076414,
    49.623331,
    '2024-07-08 20:54:00',
    '2024-07-08 20:56:00',
    '2024-07-08 21:08:00',
    '2024-07-08 21:10:00',
    14,
    1,
    'On time',
    'batch_40',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '623',
    'J387785',
    'IC',
    '9204525',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    9.856613,
    50.242914,
    '2024-07-08 09:41:00',
    '2024-07-08 09:44:00',
    '2024-07-08 09:42:00',
    '2024-07-08 09:45:00',
    1,
    1,
    'On time',
    'batch_46',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '624',
    'J752991',
    'S',
    '9201393',
    'passenger',
    'Berlin-route',
    'Berlin West',
    'DE',
    'Berlin',
    '10115',
    6.710197,
    50.34603,
    '2024-07-08 23:52:00',
    '2024-07-09 00:09:00',
    '2024-07-09 00:10:00',
    '2024-07-09 00:27:00',
    18,
    1,
    'On time',
    'batch_13',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '625',
    'J255026',
    'ICE',
    '8462619',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    11.23363,
    53.042155,
    '2024-07-08 10:07:00',
    '2024-07-08 10:31:00',
    '2024-07-08 10:11:00',
    '2024-07-08 10:35:00',
    4,
    1,
    'On time',
    'batch_39',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '626',
    'J896322',
    'IC',
    '9922024',
    'passenger',
    'Hamburg-route',
    'Hamburg Nord',
    'DE',
    'Hamburg',
    '20095',
    9.409431,
    48.874599,
    '2024-07-08 12:16:00',
    '2024-07-08 12:18:00',
    '2024-07-08 12:19:00',
    '2024-07-08 12:21:00',
    3,
    1,
    'On time',
    'batch_28',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '627',
    'J700384',
    'ICE',
    '9043987',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    6.218344,
    54.551374,
    '2024-07-08 09:24:00',
    '2024-07-08 09:34:00',
    '2024-07-08 09:31:00',
    '2024-07-08 09:41:00',
    7,
    1,
    'On time',
    'batch_25',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '628',
    'J273782',
    'ICE',
    '8938477',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    8.856834,
    54.967417,
    '2024-07-08 19:13:00',
    '2024-07-08 19:31:00',
    '2024-07-08 19:25:00',
    '2024-07-08 19:43:00',
    12,
    1,
    'On time',
    'batch_44',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '629',
    'J519037',
    'RB',
    '8918859',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    8.027002,
    51.99615,
    '2024-07-08 13:40:00',
    '2024-07-08 14:05:00',
    '2024-07-08 13:51:00',
    '2024-07-08 14:16:00',
    11,
    1,
    'On time',
    'batch_40',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '630',
    'J335819',
    'IC',
    '9081880',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    7.015044,
    47.876279,
    '2024-07-08 22:15:00',
    '2024-07-08 22:29:00',
    '2024-07-08 22:30:00',
    '2024-07-08 22:44:00',
    15,
    1,
    'On time',
    'batch_30',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '631',
    'J120606',
    'RE',
    '9003496',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    6.774767,
    52.620288,
    '2024-07-08 18:51:00',
    '2024-07-08 19:05:00',
    '2024-07-08 18:59:00',
    '2024-07-08 19:13:00',
    8,
    1,
    'On time',
    'batch_1',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '632',
    'J207425',
    'S',
    '9384143',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    6.729709,
    48.747758,
    '2024-07-08 06:09:00',
    '2024-07-08 06:29:00',
    '2024-07-08 06:26:00',
    '2024-07-08 06:46:00',
    17,
    1,
    'On time',
    'batch_11',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '633',
    'J192609',
    'RB',
    '9772476',
    'passenger',
    'Berlin-route',
    'Berlin Nord',
    'DE',
    'Berlin',
    '10115',
    6.557176,
    51.933545,
    '2024-07-08 12:31:00',
    '2024-07-08 12:39:00',
    '2024-07-08 12:36:00',
    '2024-07-08 12:44:00',
    5,
    1,
    'On time',
    'batch_25',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '634',
    'J229838',
    'S',
    '8622659',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    10.887801,
    51.406365,
    '2024-07-08 22:41:00',
    '2024-07-08 22:44:00',
    '2024-07-08 23:01:00',
    '2024-07-08 23:04:00',
    20,
    1,
    'On time',
    'batch_28',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '635',
    'J764104',
    'IC',
    '8954637',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    7.60397,
    47.779986,
    '2024-07-08 22:02:00',
    '2024-07-08 22:10:00',
    '2024-07-08 22:19:00',
    '2024-07-08 22:27:00',
    17,
    1,
    'On time',
    'batch_33',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '636',
    'J186502',
    'IC',
    '9262406',
    'passenger',
    'Hamburg-route',
    'Hamburg Ost',
    'DE',
    'Hamburg',
    '20095',
    12.373833,
    48.322929,
    '2024-07-08 04:48:00',
    '2024-07-08 05:17:00',
    '2024-07-08 05:03:00',
    '2024-07-08 05:32:00',
    15,
    1,
    'On time',
    'batch_7',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '637',
    'J231998',
    'RB',
    '9074433',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    7.789223,
    48.155204,
    '2024-07-08 05:57:00',
    '2024-07-08 06:14:00',
    '2024-07-08 06:08:00',
    '2024-07-08 06:25:00',
    11,
    1,
    'On time',
    'batch_20',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '638',
    'J616815',
    'IC',
    '9538126',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    8.20117,
    53.459954,
    '2024-07-08 22:28:00',
    '2024-07-08 22:32:00',
    '2024-07-08 22:40:00',
    '2024-07-08 22:44:00',
    12,
    1,
    'On time',
    'batch_29',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '639',
    'J562133',
    'IC',
    '8726628',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    6.693,
    54.932544,
    '2024-07-08 02:36:00',
    '2024-07-08 02:46:00',
    '2024-07-08 02:43:00',
    '2024-07-08 02:53:00',
    7,
    1,
    'On time',
    'batch_18',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '640',
    'J109695',
    'RB',
    '9523720',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    9.478952,
    47.795219,
    '2024-07-08 10:40:00',
    '2024-07-08 10:48:00',
    '2024-07-08 11:00:00',
    '2024-07-08 11:08:00',
    20,
    1,
    'On time',
    'batch_50',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '641',
    'J637610',
    'ICE',
    '8056512',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    10.418035,
    51.294614,
    '2024-07-08 23:56:00',
    '2024-07-09 00:00:00',
    '2024-07-09 00:03:00',
    '2024-07-09 00:07:00',
    7,
    1,
    'On time',
    'batch_41',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '642',
    'J946908',
    'S',
    '9885261',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    8.952115,
    51.196307,
    '2024-07-08 09:23:00',
    '2024-07-08 09:30:00',
    '2024-07-08 09:25:00',
    '2024-07-08 09:32:00',
    2,
    1,
    'On time',
    'batch_43',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '643',
    'J221039',
    'RE',
    '9718036',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    8.265268,
    48.630769,
    '2024-07-08 14:34:00',
    '2024-07-08 14:44:00',
    '2024-07-08 14:54:00',
    '2024-07-08 15:04:00',
    20,
    1,
    'On time',
    'batch_25',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '644',
    'J606915',
    'RB',
    '9250449',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    6.561452,
    49.68264,
    '2024-07-08 12:24:00',
    '2024-07-08 12:36:00',
    '2024-07-08 12:36:00',
    '2024-07-08 12:48:00',
    12,
    1,
    'On time',
    'batch_25',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '645',
    'J379118',
    'S',
    '8588522',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    8.277763,
    53.853163,
    '2024-07-08 14:45:00',
    '2024-07-08 15:15:00',
    '2024-07-08 15:02:00',
    '2024-07-08 15:32:00',
    17,
    1,
    'On time',
    'batch_21',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '646',
    'J332226',
    'S',
    '9049218',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    10.051568,
    53.937553,
    '2024-07-08 22:33:00',
    '2024-07-08 22:53:00',
    '2024-07-08 22:46:00',
    '2024-07-08 23:06:00',
    13,
    1,
    'On time',
    'batch_36',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '647',
    'J413606',
    'RE',
    '8272884',
    'passenger',
    'Berlin-route',
    'Berlin West',
    'DE',
    'Berlin',
    '10115',
    7.943049,
    49.099983,
    '2024-07-08 19:45:00',
    '2024-07-08 20:15:00',
    '2024-07-08 19:50:00',
    '2024-07-08 20:20:00',
    5,
    1,
    'On time',
    'batch_6',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '648',
    'J233865',
    'RB',
    '9863506',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    6.798414,
    54.049519,
    '2024-07-08 15:48:00',
    '2024-07-08 15:59:00',
    '2024-07-08 15:48:00',
    '2024-07-08 15:59:00',
    0,
    1,
    'On time',
    'batch_31',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '649',
    'J761917',
    'IC',
    '8606293',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    10.302806,
    47.007446,
    '2024-07-08 00:47:00',
    '2024-07-08 01:03:00',
    '2024-07-08 01:02:00',
    '2024-07-08 01:18:00',
    15,
    1,
    'On time',
    'batch_28',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '650',
    'J700057',
    'ICE',
    '8009050',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    9.48489,
    52.917773,
    '2024-07-08 22:51:00',
    '2024-07-08 23:10:00',
    '2024-07-08 23:08:00',
    '2024-07-08 23:27:00',
    17,
    1,
    'On time',
    'batch_23',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '651',
    'J302684',
    'IC',
    '8411343',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    6.30422,
    53.647155,
    '2024-07-08 19:55:00',
    '2024-07-08 20:07:00',
    '2024-07-08 20:10:00',
    '2024-07-08 20:22:00',
    15,
    1,
    'On time',
    'batch_13',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '652',
    'J647833',
    'ICE',
    '8448865',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    9.817518,
    47.405764,
    '2024-07-08 15:53:00',
    '2024-07-08 16:19:00',
    '2024-07-08 16:02:00',
    '2024-07-08 16:28:00',
    9,
    1,
    'On time',
    'batch_48',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '653',
    'J592124',
    'RB',
    '8378386',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    11.852527,
    53.104903,
    '2024-07-08 11:10:00',
    '2024-07-08 11:33:00',
    '2024-07-08 11:19:00',
    '2024-07-08 11:42:00',
    9,
    1,
    'On time',
    'batch_32',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '654',
    'J696228',
    'RE',
    '8900708',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    9.117361,
    54.181779,
    '2024-07-08 06:59:00',
    '2024-07-08 07:22:00',
    '2024-07-08 07:10:00',
    '2024-07-08 07:33:00',
    11,
    1,
    'On time',
    'batch_9',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '655',
    'J160238',
    'ICE',
    '9518002',
    'passenger',
    'Munich-route',
    'Munich West',
    'DE',
    'Munich',
    '80331',
    12.805873,
    54.95927,
    '2024-07-08 17:14:00',
    '2024-07-08 17:31:00',
    '2024-07-08 17:33:00',
    '2024-07-08 17:50:00',
    19,
    1,
    'On time',
    'batch_49',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '656',
    'J735589',
    'RE',
    '8455351',
    'passenger',
    'Hamburg-route',
    'Hamburg Nord',
    'DE',
    'Hamburg',
    '20095',
    12.743225,
    51.615206,
    '2024-07-08 09:48:00',
    '2024-07-08 10:08:00',
    '2024-07-08 09:51:00',
    '2024-07-08 10:11:00',
    3,
    1,
    'On time',
    'batch_44',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '657',
    'J465328',
    'S',
    '9387314',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    9.962068,
    50.432168,
    '2024-07-08 07:34:00',
    '2024-07-08 08:01:00',
    '2024-07-08 07:54:00',
    '2024-07-08 08:21:00',
    20,
    1,
    'On time',
    'batch_15',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '658',
    'J432305',
    'RE',
    '8754622',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    9.696762,
    49.064255,
    '2024-07-08 09:20:00',
    '2024-07-08 09:32:00',
    '2024-07-08 09:40:00',
    '2024-07-08 09:52:00',
    20,
    1,
    'On time',
    'batch_9',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '659',
    'J851818',
    'RB',
    '8630065',
    'passenger',
    'Berlin-route',
    'Berlin West',
    'DE',
    'Berlin',
    '10115',
    10.348724,
    48.06906,
    '2024-07-08 14:30:00',
    '2024-07-08 14:55:00',
    '2024-07-08 14:47:00',
    '2024-07-08 15:12:00',
    17,
    1,
    'On time',
    'batch_47',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '660',
    'J543907',
    'RB',
    '8726762',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    7.229826,
    51.899673,
    '2024-07-08 13:53:00',
    '2024-07-08 14:19:00',
    '2024-07-08 13:54:00',
    '2024-07-08 14:20:00',
    1,
    1,
    'On time',
    'batch_16',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '661',
    'J467531',
    'RB',
    '9994151',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    6.148795,
    48.608984,
    '2024-07-08 22:27:00',
    '2024-07-08 22:50:00',
    '2024-07-08 22:41:00',
    '2024-07-08 23:04:00',
    14,
    1,
    'On time',
    'batch_42',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '662',
    'J556155',
    'IC',
    '8047993',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    12.110338,
    54.32342,
    '2024-07-08 02:29:00',
    '2024-07-08 02:33:00',
    '2024-07-08 02:40:00',
    '2024-07-08 02:44:00',
    11,
    1,
    'On time',
    'batch_39',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '663',
    'J272332',
    'IC',
    '9221921',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    7.090392,
    52.490593,
    '2024-07-08 17:10:00',
    '2024-07-08 17:37:00',
    '2024-07-08 17:28:00',
    '2024-07-08 17:55:00',
    18,
    1,
    'On time',
    'batch_20',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '664',
    'J873470',
    'RE',
    '8133084',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    9.068409,
    51.028832,
    '2024-07-08 01:51:00',
    '2024-07-08 02:08:00',
    '2024-07-08 02:07:00',
    '2024-07-08 02:24:00',
    16,
    1,
    'On time',
    'batch_38',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '665',
    'J904122',
    'IC',
    '9654130',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    7.462228,
    49.408145,
    '2024-07-08 04:26:00',
    '2024-07-08 04:27:00',
    '2024-07-08 04:46:00',
    '2024-07-08 04:47:00',
    20,
    1,
    'On time',
    'batch_21',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '666',
    'J376497',
    'S',
    '9930066',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    12.718201,
    54.185461,
    '2024-07-08 17:27:00',
    '2024-07-08 17:55:00',
    '2024-07-08 17:36:00',
    '2024-07-08 18:04:00',
    9,
    1,
    'On time',
    'batch_45',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '667',
    'J411862',
    'RE',
    '8137066',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    9.142421,
    53.382768,
    '2024-07-08 20:27:00',
    '2024-07-08 20:28:00',
    '2024-07-08 20:27:00',
    '2024-07-08 20:28:00',
    0,
    1,
    'On time',
    'batch_31',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '668',
    'J169564',
    'RB',
    '9228827',
    'passenger',
    'Munich-route',
    'Munich Nord',
    'DE',
    'Munich',
    '80331',
    10.171111,
    48.993889,
    '2024-07-08 10:33:00',
    '2024-07-08 10:40:00',
    '2024-07-08 10:50:00',
    '2024-07-08 10:57:00',
    17,
    1,
    'On time',
    'batch_37',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '669',
    'J613775',
    'RB',
    '8379558',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    6.876688,
    53.863007,
    '2024-07-08 13:16:00',
    '2024-07-08 13:46:00',
    '2024-07-08 13:18:00',
    '2024-07-08 13:48:00',
    2,
    1,
    'On time',
    'batch_24',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '670',
    'J867310',
    'IC',
    '9704786',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    12.247954,
    53.085975,
    '2024-07-08 14:26:00',
    '2024-07-08 14:40:00',
    '2024-07-08 14:29:00',
    '2024-07-08 14:43:00',
    3,
    1,
    'On time',
    'batch_32',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '671',
    'J956378',
    'ICE',
    '9275013',
    'passenger',
    'Munich-route',
    'Munich West',
    'DE',
    'Munich',
    '80331',
    10.740209,
    49.633215,
    '2024-07-08 18:21:00',
    '2024-07-08 18:23:00',
    '2024-07-08 18:32:00',
    '2024-07-08 18:34:00',
    11,
    1,
    'On time',
    'batch_32',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '672',
    'J541787',
    'RB',
    '9748354',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    10.503561,
    53.804002,
    '2024-07-08 03:47:00',
    '2024-07-08 03:59:00',
    '2024-07-08 04:05:00',
    '2024-07-08 04:17:00',
    18,
    1,
    'On time',
    'batch_10',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '673',
    'J409464',
    'IC',
    '8102394',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    6.748133,
    47.776104,
    '2024-07-08 08:33:00',
    '2024-07-08 08:57:00',
    '2024-07-08 08:52:00',
    '2024-07-08 09:16:00',
    19,
    1,
    'On time',
    'batch_15',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '674',
    'J164739',
    'ICE',
    '9383489',
    'passenger',
    'Hamburg-route',
    'Hamburg Nord',
    'DE',
    'Hamburg',
    '20095',
    8.145973,
    51.010937,
    '2024-07-08 02:38:00',
    '2024-07-08 02:39:00',
    '2024-07-08 02:54:00',
    '2024-07-08 02:55:00',
    16,
    1,
    'On time',
    'batch_47',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '675',
    'J958009',
    'S',
    '9088225',
    'passenger',
    'Hamburg-route',
    'Hamburg Ost',
    'DE',
    'Hamburg',
    '20095',
    11.199038,
    52.980651,
    '2024-07-08 22:34:00',
    '2024-07-08 22:54:00',
    '2024-07-08 22:39:00',
    '2024-07-08 22:59:00',
    5,
    1,
    'On time',
    'batch_47',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '676',
    'J625644',
    'RE',
    '8609847',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    12.529877,
    52.458686,
    '2024-07-08 22:24:00',
    '2024-07-08 22:29:00',
    '2024-07-08 22:39:00',
    '2024-07-08 22:44:00',
    15,
    1,
    'On time',
    'batch_44',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '677',
    'J805291',
    'S',
    '8896675',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    10.223015,
    48.379774,
    '2024-07-08 20:20:00',
    '2024-07-08 20:23:00',
    '2024-07-08 20:35:00',
    '2024-07-08 20:38:00',
    15,
    1,
    'On time',
    'batch_27',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '678',
    'J651796',
    'RB',
    '8943179',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    11.843135,
    48.114902,
    '2024-07-08 18:54:00',
    '2024-07-08 19:12:00',
    '2024-07-08 19:00:00',
    '2024-07-08 19:18:00',
    6,
    1,
    'On time',
    'batch_39',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '679',
    'J583355',
    'RE',
    '8238632',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    6.409739,
    51.927961,
    '2024-07-08 09:29:00',
    '2024-07-08 09:46:00',
    '2024-07-08 09:29:00',
    '2024-07-08 09:46:00',
    0,
    1,
    'On time',
    'batch_47',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '680',
    'J595178',
    'RE',
    '9107450',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    9.491774,
    47.594099,
    '2024-07-08 02:30:00',
    '2024-07-08 02:58:00',
    '2024-07-08 02:47:00',
    '2024-07-08 03:15:00',
    17,
    1,
    'On time',
    'batch_29',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '681',
    'J261833',
    'ICE',
    '8098170',
    'passenger',
    'Hamburg-route',
    'Hamburg Ost',
    'DE',
    'Hamburg',
    '20095',
    11.039858,
    50.440012,
    '2024-07-08 18:48:00',
    '2024-07-08 19:12:00',
    '2024-07-08 19:03:00',
    '2024-07-08 19:27:00',
    15,
    1,
    'On time',
    'batch_42',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '682',
    'J468610',
    'S',
    '8219059',
    'passenger',
    'Hamburg-route',
    'Hamburg Nord',
    'DE',
    'Hamburg',
    '20095',
    6.469321,
    52.73829,
    '2024-07-08 08:41:00',
    '2024-07-08 08:58:00',
    '2024-07-08 08:45:00',
    '2024-07-08 09:02:00',
    4,
    1,
    'On time',
    'batch_1',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '683',
    'J822335',
    'ICE',
    '8853446',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    7.158991,
    47.072958,
    '2024-07-08 20:28:00',
    '2024-07-08 20:54:00',
    '2024-07-08 20:47:00',
    '2024-07-08 21:13:00',
    19,
    1,
    'On time',
    'batch_28',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '684',
    'J437988',
    'RB',
    '8219768',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    7.069422,
    50.768668,
    '2024-07-08 19:23:00',
    '2024-07-08 19:48:00',
    '2024-07-08 19:27:00',
    '2024-07-08 19:52:00',
    4,
    1,
    'On time',
    'batch_28',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '685',
    'J386705',
    'IC',
    '9197978',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    10.826546,
    48.61546,
    '2024-07-08 11:23:00',
    '2024-07-08 11:45:00',
    '2024-07-08 11:37:00',
    '2024-07-08 11:59:00',
    14,
    1,
    'On time',
    'batch_7',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '686',
    'J270618',
    'RB',
    '9870334',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    9.324293,
    51.745576,
    '2024-07-08 10:04:00',
    '2024-07-08 10:11:00',
    '2024-07-08 10:23:00',
    '2024-07-08 10:30:00',
    19,
    1,
    'On time',
    'batch_29',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '687',
    'J780993',
    'RB',
    '9857489',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    7.421073,
    49.758097,
    '2024-07-08 13:12:00',
    '2024-07-08 13:15:00',
    '2024-07-08 13:28:00',
    '2024-07-08 13:31:00',
    16,
    1,
    'On time',
    'batch_5',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '688',
    'J198287',
    'ICE',
    '8405059',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    12.099097,
    49.264233,
    '2024-07-08 12:43:00',
    '2024-07-08 13:06:00',
    '2024-07-08 12:44:00',
    '2024-07-08 13:07:00',
    1,
    1,
    'On time',
    'batch_25',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '689',
    'J158885',
    'RB',
    '9104865',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    7.457129,
    47.277663,
    '2024-07-08 05:31:00',
    '2024-07-08 05:59:00',
    '2024-07-08 05:49:00',
    '2024-07-08 06:17:00',
    18,
    1,
    'On time',
    'batch_19',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '690',
    'J460187',
    'S',
    '9401243',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    8.520608,
    48.292852,
    '2024-07-08 14:54:00',
    '2024-07-08 15:03:00',
    '2024-07-08 15:05:00',
    '2024-07-08 15:14:00',
    11,
    1,
    'On time',
    'batch_31',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '691',
    'J232462',
    'RE',
    '9955300',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    6.405474,
    54.262468,
    '2024-07-08 15:38:00',
    '2024-07-08 15:41:00',
    '2024-07-08 15:41:00',
    '2024-07-08 15:44:00',
    3,
    1,
    'On time',
    'batch_3',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '692',
    'J901432',
    'RB',
    '9586817',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    9.298247,
    54.825879,
    '2024-07-08 16:58:00',
    '2024-07-08 17:22:00',
    '2024-07-08 17:00:00',
    '2024-07-08 17:24:00',
    2,
    1,
    'On time',
    'batch_22',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '693',
    'J457918',
    'RE',
    '9281468',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    8.55241,
    50.853933,
    '2024-07-08 15:56:00',
    '2024-07-08 16:05:00',
    '2024-07-08 15:58:00',
    '2024-07-08 16:07:00',
    2,
    1,
    'On time',
    'batch_5',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '694',
    'J823718',
    'RB',
    '9097944',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    12.938931,
    53.500629,
    '2024-07-08 19:08:00',
    '2024-07-08 19:25:00',
    '2024-07-08 19:21:00',
    '2024-07-08 19:38:00',
    13,
    1,
    'On time',
    'batch_49',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '695',
    'J940909',
    'RE',
    '9114402',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    9.044647,
    50.239214,
    '2024-07-08 13:46:00',
    '2024-07-08 14:15:00',
    '2024-07-08 13:52:00',
    '2024-07-08 14:21:00',
    6,
    1,
    'On time',
    'batch_11',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '696',
    'J720208',
    'RE',
    '9420518',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    11.331559,
    52.08915,
    '2024-07-08 13:42:00',
    '2024-07-08 14:02:00',
    '2024-07-08 14:02:00',
    '2024-07-08 14:22:00',
    20,
    1,
    'On time',
    'batch_50',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '697',
    'J948702',
    'RE',
    '8101783',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    11.547483,
    52.268399,
    '2024-07-08 01:48:00',
    '2024-07-08 02:00:00',
    '2024-07-08 01:57:00',
    '2024-07-08 02:09:00',
    9,
    1,
    'On time',
    'batch_42',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '698',
    'J709841',
    'RE',
    '9583764',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    12.443306,
    53.250032,
    '2024-07-08 00:49:00',
    '2024-07-08 01:18:00',
    '2024-07-08 01:09:00',
    '2024-07-08 01:38:00',
    20,
    1,
    'On time',
    'batch_38',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '699',
    'J662937',
    'ICE',
    '8890460',
    'passenger',
    'Munich-route',
    'Munich West',
    'DE',
    'Munich',
    '80331',
    11.762499,
    48.15168,
    '2024-07-08 15:29:00',
    '2024-07-08 15:37:00',
    '2024-07-08 15:44:00',
    '2024-07-08 15:52:00',
    15,
    1,
    'On time',
    'batch_48',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '700',
    'J340271',
    'ICE',
    '8327234',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    12.934862,
    51.386822,
    '2024-07-08 20:15:00',
    '2024-07-08 20:45:00',
    '2024-07-08 20:17:00',
    '2024-07-08 20:47:00',
    2,
    1,
    'On time',
    'batch_31',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '701',
    'J686500',
    'ICE',
    '9904749',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    8.537046,
    51.541359,
    '2024-07-08 15:14:00',
    '2024-07-08 15:44:00',
    '2024-07-08 15:34:00',
    '2024-07-08 16:04:00',
    20,
    1,
    'On time',
    'batch_48',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '702',
    'J623393',
    'RB',
    '8171714',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    12.300597,
    48.790575,
    '2024-07-08 01:57:00',
    '2024-07-08 02:27:00',
    '2024-07-08 02:17:00',
    '2024-07-08 02:47:00',
    20,
    1,
    'On time',
    'batch_17',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '703',
    'J928681',
    'RB',
    '8652411',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    7.780216,
    54.866549,
    '2024-07-08 04:24:00',
    '2024-07-08 04:47:00',
    '2024-07-08 04:30:00',
    '2024-07-08 04:53:00',
    6,
    1,
    'On time',
    'batch_22',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '704',
    'J942401',
    'ICE',
    '9276435',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    12.443767,
    54.137062,
    '2024-07-08 03:07:00',
    '2024-07-08 03:24:00',
    '2024-07-08 03:23:00',
    '2024-07-08 03:40:00',
    16,
    1,
    'On time',
    'batch_17',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '705',
    'J420611',
    'RB',
    '8940866',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    12.311521,
    48.376096,
    '2024-07-08 01:21:00',
    '2024-07-08 01:27:00',
    '2024-07-08 01:24:00',
    '2024-07-08 01:30:00',
    3,
    1,
    'On time',
    'batch_11',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '706',
    'J188623',
    'RE',
    '9954425',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    6.652957,
    53.82072,
    '2024-07-08 18:51:00',
    '2024-07-08 19:06:00',
    '2024-07-08 18:52:00',
    '2024-07-08 19:07:00',
    1,
    1,
    'On time',
    'batch_14',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '707',
    'J244014',
    'RE',
    '8559130',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    11.975008,
    47.196922,
    '2024-07-08 01:16:00',
    '2024-07-08 01:27:00',
    '2024-07-08 01:17:00',
    '2024-07-08 01:28:00',
    1,
    1,
    'On time',
    'batch_15',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '708',
    'J961284',
    'S',
    '8768331',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    6.89497,
    49.795107,
    '2024-07-08 02:40:00',
    '2024-07-08 02:54:00',
    '2024-07-08 02:59:00',
    '2024-07-08 03:13:00',
    19,
    1,
    'On time',
    'batch_4',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '709',
    'J265048',
    'IC',
    '9675930',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    7.157666,
    48.012956,
    '2024-07-08 18:27:00',
    '2024-07-08 18:48:00',
    '2024-07-08 18:31:00',
    '2024-07-08 18:52:00',
    4,
    1,
    'On time',
    'batch_16',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '710',
    'J283533',
    'RB',
    '8294975',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    9.512977,
    49.615369,
    '2024-07-08 14:55:00',
    '2024-07-08 15:17:00',
    '2024-07-08 15:03:00',
    '2024-07-08 15:25:00',
    8,
    1,
    'On time',
    'batch_41',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '711',
    'J397315',
    'IC',
    '9366587',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    8.007691,
    47.89341,
    '2024-07-08 05:54:00',
    '2024-07-08 06:24:00',
    '2024-07-08 06:05:00',
    '2024-07-08 06:35:00',
    11,
    1,
    'On time',
    'batch_22',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '712',
    'J135875',
    'RE',
    '9563648',
    'passenger',
    'Berlin-route',
    'Berlin West',
    'DE',
    'Berlin',
    '10115',
    8.011747,
    53.214144,
    '2024-07-08 10:48:00',
    '2024-07-08 11:17:00',
    '2024-07-08 10:53:00',
    '2024-07-08 11:22:00',
    5,
    1,
    'On time',
    'batch_23',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '713',
    'J266427',
    'S',
    '9026213',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    7.851156,
    52.990624,
    '2024-07-08 21:12:00',
    '2024-07-08 21:18:00',
    '2024-07-08 21:16:00',
    '2024-07-08 21:22:00',
    4,
    1,
    'On time',
    'batch_32',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '714',
    'J117222',
    'S',
    '9722068',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    10.856933,
    47.272912,
    '2024-07-08 19:00:00',
    '2024-07-08 19:06:00',
    '2024-07-08 19:15:00',
    '2024-07-08 19:21:00',
    15,
    1,
    'On time',
    'batch_44',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '715',
    'J942077',
    'RB',
    '8933466',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    10.213511,
    48.733671,
    '2024-07-08 04:32:00',
    '2024-07-08 04:34:00',
    '2024-07-08 04:46:00',
    '2024-07-08 04:48:00',
    14,
    1,
    'On time',
    'batch_9',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '716',
    'J618400',
    'RB',
    '8407576',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    10.222523,
    52.813505,
    '2024-07-08 23:27:00',
    '2024-07-08 23:30:00',
    '2024-07-08 23:31:00',
    '2024-07-08 23:34:00',
    4,
    1,
    'On time',
    'batch_27',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '717',
    'J754394',
    'IC',
    '9417436',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    8.848291,
    47.777763,
    '2024-07-08 04:26:00',
    '2024-07-08 04:27:00',
    '2024-07-08 04:38:00',
    '2024-07-08 04:39:00',
    12,
    1,
    'On time',
    'batch_36',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '718',
    'J298981',
    'RB',
    '8478645',
    'passenger',
    'Berlin-route',
    'Berlin Nord',
    'DE',
    'Berlin',
    '10115',
    8.789731,
    50.307823,
    '2024-07-08 00:17:00',
    '2024-07-08 00:40:00',
    '2024-07-08 00:18:00',
    '2024-07-08 00:41:00',
    1,
    1,
    'On time',
    'batch_10',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '719',
    'J663540',
    'IC',
    '9118561',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    11.697515,
    54.08846,
    '2024-07-08 11:06:00',
    '2024-07-08 11:26:00',
    '2024-07-08 11:13:00',
    '2024-07-08 11:33:00',
    7,
    1,
    'On time',
    'batch_33',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '720',
    'J284201',
    'RB',
    '9619844',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    7.230491,
    50.74541,
    '2024-07-08 04:07:00',
    '2024-07-08 04:08:00',
    '2024-07-08 04:20:00',
    '2024-07-08 04:21:00',
    13,
    1,
    'On time',
    'batch_9',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '721',
    'J254373',
    'RB',
    '8840826',
    'passenger',
    'Hamburg-route',
    'Hamburg Nord',
    'DE',
    'Hamburg',
    '20095',
    6.402425,
    52.111433,
    '2024-07-08 14:23:00',
    '2024-07-08 14:42:00',
    '2024-07-08 14:26:00',
    '2024-07-08 14:45:00',
    3,
    1,
    'On time',
    'batch_44',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '722',
    'J741088',
    'IC',
    '8128102',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    12.529006,
    50.860717,
    '2024-07-08 04:51:00',
    '2024-07-08 05:09:00',
    '2024-07-08 05:04:00',
    '2024-07-08 05:22:00',
    13,
    1,
    'On time',
    'batch_46',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '723',
    'J938344',
    'RB',
    '9861052',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    7.268066,
    48.260446,
    '2024-07-08 03:00:00',
    '2024-07-08 03:10:00',
    '2024-07-08 03:05:00',
    '2024-07-08 03:15:00',
    5,
    1,
    'On time',
    'batch_4',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '724',
    'J390514',
    'RB',
    '8312679',
    'passenger',
    'Munich-route',
    'Munich Nord',
    'DE',
    'Munich',
    '80331',
    9.748108,
    49.992437,
    '2024-07-08 07:35:00',
    '2024-07-08 07:43:00',
    '2024-07-08 07:53:00',
    '2024-07-08 08:01:00',
    18,
    1,
    'On time',
    'batch_49',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '725',
    'J632394',
    'ICE',
    '8361754',
    'passenger',
    'Munich-route',
    'Munich Nord',
    'DE',
    'Munich',
    '80331',
    11.338642,
    51.962928,
    '2024-07-08 11:35:00',
    '2024-07-08 11:53:00',
    '2024-07-08 11:45:00',
    '2024-07-08 12:03:00',
    10,
    1,
    'On time',
    'batch_37',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '726',
    'J194750',
    'IC',
    '8212199',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    7.871836,
    52.0323,
    '2024-07-08 09:07:00',
    '2024-07-08 09:21:00',
    '2024-07-08 09:21:00',
    '2024-07-08 09:35:00',
    14,
    1,
    'On time',
    'batch_11',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '727',
    'J782575',
    'IC',
    '9084051',
    'passenger',
    'Berlin-route',
    'Berlin Nord',
    'DE',
    'Berlin',
    '10115',
    10.259819,
    51.361512,
    '2024-07-08 01:43:00',
    '2024-07-08 01:47:00',
    '2024-07-08 01:57:00',
    '2024-07-08 02:01:00',
    14,
    1,
    'On time',
    'batch_40',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '728',
    'J572455',
    'RE',
    '9893910',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    12.657176,
    48.756256,
    '2024-07-08 16:41:00',
    '2024-07-08 16:42:00',
    '2024-07-08 16:51:00',
    '2024-07-08 16:52:00',
    10,
    1,
    'On time',
    'batch_47',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '729',
    'J304766',
    'S',
    '8736044',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    12.077463,
    50.236717,
    '2024-07-08 08:30:00',
    '2024-07-08 08:50:00',
    '2024-07-08 08:37:00',
    '2024-07-08 08:57:00',
    7,
    1,
    'On time',
    'batch_30',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '730',
    'J481767',
    'S',
    '8850451',
    'passenger',
    'Berlin-route',
    'Berlin Nord',
    'DE',
    'Berlin',
    '10115',
    6.742812,
    52.612532,
    '2024-07-08 14:49:00',
    '2024-07-08 15:10:00',
    '2024-07-08 14:50:00',
    '2024-07-08 15:11:00',
    1,
    1,
    'On time',
    'batch_15',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '731',
    'J598468',
    'ICE',
    '8834100',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    9.913849,
    48.756555,
    '2024-07-08 21:35:00',
    '2024-07-08 22:00:00',
    '2024-07-08 21:43:00',
    '2024-07-08 22:08:00',
    8,
    1,
    'On time',
    'batch_6',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '732',
    'J383396',
    'ICE',
    '9250328',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    8.824516,
    50.717238,
    '2024-07-08 01:31:00',
    '2024-07-08 01:57:00',
    '2024-07-08 01:48:00',
    '2024-07-08 02:14:00',
    17,
    1,
    'On time',
    'batch_33',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '733',
    'J739847',
    'S',
    '8029625',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    9.89154,
    54.473569,
    '2024-07-08 11:24:00',
    '2024-07-08 11:53:00',
    '2024-07-08 11:28:00',
    '2024-07-08 11:57:00',
    4,
    1,
    'On time',
    'batch_12',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '734',
    'J497180',
    'IC',
    '9336140',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    12.881466,
    51.631279,
    '2024-07-08 23:02:00',
    '2024-07-08 23:29:00',
    '2024-07-08 23:02:00',
    '2024-07-08 23:29:00',
    0,
    1,
    'On time',
    'batch_45',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '735',
    'J925442',
    'S',
    '8256678',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    10.022876,
    49.762059,
    '2024-07-08 23:35:00',
    '2024-07-08 23:56:00',
    '2024-07-08 23:50:00',
    '2024-07-09 00:11:00',
    15,
    1,
    'On time',
    'batch_4',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '736',
    'J588704',
    'IC',
    '8916446',
    'passenger',
    'Berlin-route',
    'Berlin Nord',
    'DE',
    'Berlin',
    '10115',
    9.132502,
    52.764445,
    '2024-07-08 21:12:00',
    '2024-07-08 21:36:00',
    '2024-07-08 21:17:00',
    '2024-07-08 21:41:00',
    5,
    1,
    'On time',
    'batch_40',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '737',
    'J137403',
    'S',
    '8251842',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    9.753755,
    49.175208,
    '2024-07-08 20:03:00',
    '2024-07-08 20:25:00',
    '2024-07-08 20:21:00',
    '2024-07-08 20:43:00',
    18,
    1,
    'On time',
    'batch_1',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '738',
    'J997176',
    'RE',
    '9982978',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    6.566199,
    51.938746,
    '2024-07-08 16:05:00',
    '2024-07-08 16:17:00',
    '2024-07-08 16:14:00',
    '2024-07-08 16:26:00',
    9,
    1,
    'On time',
    'batch_43',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '739',
    'J303158',
    'RE',
    '9828088',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    8.64705,
    49.031567,
    '2024-07-08 12:07:00',
    '2024-07-08 12:30:00',
    '2024-07-08 12:16:00',
    '2024-07-08 12:39:00',
    9,
    1,
    'On time',
    'batch_38',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '740',
    'J717603',
    'RB',
    '8583569',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    12.450997,
    50.457931,
    '2024-07-08 03:06:00',
    '2024-07-08 03:24:00',
    '2024-07-08 03:10:00',
    '2024-07-08 03:28:00',
    4,
    1,
    'On time',
    'batch_4',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '741',
    'J691058',
    'RB',
    '9081779',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    12.342692,
    47.055863,
    '2024-07-08 11:54:00',
    '2024-07-08 12:02:00',
    '2024-07-08 12:06:00',
    '2024-07-08 12:14:00',
    12,
    1,
    'On time',
    'batch_30',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '742',
    'J210498',
    'S',
    '8275628',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    6.1712,
    48.93635,
    '2024-07-08 10:55:00',
    '2024-07-08 11:06:00',
    '2024-07-08 10:57:00',
    '2024-07-08 11:08:00',
    2,
    1,
    'On time',
    'batch_43',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '743',
    'J291378',
    'S',
    '9305946',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    8.580961,
    51.873783,
    '2024-07-08 15:34:00',
    '2024-07-08 15:50:00',
    '2024-07-08 15:41:00',
    '2024-07-08 15:57:00',
    7,
    1,
    'On time',
    'batch_27',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '744',
    'J893416',
    'RB',
    '9986928',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    12.228332,
    47.649962,
    '2024-07-08 22:27:00',
    '2024-07-08 22:28:00',
    '2024-07-08 22:39:00',
    '2024-07-08 22:40:00',
    12,
    1,
    'On time',
    'batch_17',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '745',
    'J986200',
    'RE',
    '9376558',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    10.78541,
    50.692763,
    '2024-07-08 00:46:00',
    '2024-07-08 00:48:00',
    '2024-07-08 00:52:00',
    '2024-07-08 00:54:00',
    6,
    1,
    'On time',
    'batch_27',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '746',
    'J872936',
    'S',
    '8529681',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    9.693249,
    52.038297,
    '2024-07-08 02:31:00',
    '2024-07-08 02:55:00',
    '2024-07-08 02:33:00',
    '2024-07-08 02:57:00',
    2,
    1,
    'On time',
    'batch_2',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '747',
    'J369918',
    'S',
    '9832972',
    'passenger',
    'Berlin-route',
    'Berlin West',
    'DE',
    'Berlin',
    '10115',
    9.780122,
    48.826876,
    '2024-07-08 00:23:00',
    '2024-07-08 00:38:00',
    '2024-07-08 00:35:00',
    '2024-07-08 00:50:00',
    12,
    1,
    'On time',
    'batch_24',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '748',
    'J735876',
    'ICE',
    '9309885',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    12.352605,
    49.372991,
    '2024-07-08 12:25:00',
    '2024-07-08 12:54:00',
    '2024-07-08 12:42:00',
    '2024-07-08 13:11:00',
    17,
    1,
    'On time',
    'batch_23',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '749',
    'J410399',
    'RE',
    '8596609',
    'passenger',
    'Berlin-route',
    'Berlin West',
    'DE',
    'Berlin',
    '10115',
    8.048969,
    50.579491,
    '2024-07-08 18:56:00',
    '2024-07-08 19:08:00',
    '2024-07-08 19:15:00',
    '2024-07-08 19:27:00',
    19,
    1,
    'On time',
    'batch_8',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '750',
    'J598367',
    'RB',
    '9987755',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    8.672951,
    50.16282,
    '2024-07-08 22:23:00',
    '2024-07-08 22:32:00',
    '2024-07-08 22:36:00',
    '2024-07-08 22:45:00',
    13,
    1,
    'On time',
    'batch_39',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '751',
    'J645298',
    'S',
    '9875528',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    11.654938,
    52.391516,
    '2024-07-08 10:25:00',
    '2024-07-08 10:47:00',
    '2024-07-08 10:31:00',
    '2024-07-08 10:53:00',
    6,
    1,
    'On time',
    'batch_9',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '752',
    'J916889',
    'ICE',
    '9776819',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    8.124114,
    48.97577,
    '2024-07-08 14:39:00',
    '2024-07-08 15:01:00',
    '2024-07-08 14:42:00',
    '2024-07-08 15:04:00',
    3,
    1,
    'On time',
    'batch_46',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '753',
    'J970443',
    'IC',
    '9585735',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    9.240211,
    51.890418,
    '2024-07-08 18:24:00',
    '2024-07-08 18:38:00',
    '2024-07-08 18:27:00',
    '2024-07-08 18:41:00',
    3,
    1,
    'On time',
    'batch_29',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '754',
    'J491154',
    'RE',
    '8345244',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    12.244938,
    49.388456,
    '2024-07-08 19:54:00',
    '2024-07-08 20:19:00',
    '2024-07-08 20:06:00',
    '2024-07-08 20:31:00',
    12,
    1,
    'On time',
    'batch_36',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '755',
    'J405378',
    'S',
    '8108679',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    8.274013,
    53.121249,
    '2024-07-08 14:59:00',
    '2024-07-08 15:18:00',
    '2024-07-08 14:59:00',
    '2024-07-08 15:18:00',
    0,
    1,
    'On time',
    'batch_41',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '756',
    'J962394',
    'ICE',
    '9225219',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    10.848892,
    53.166484,
    '2024-07-08 15:39:00',
    '2024-07-08 15:43:00',
    '2024-07-08 15:41:00',
    '2024-07-08 15:45:00',
    2,
    1,
    'On time',
    'batch_20',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '757',
    'J864656',
    'RE',
    '8381593',
    'passenger',
    'Hamburg-route',
    'Hamburg Nord',
    'DE',
    'Hamburg',
    '20095',
    7.566238,
    48.379186,
    '2024-07-08 17:47:00',
    '2024-07-08 17:55:00',
    '2024-07-08 18:00:00',
    '2024-07-08 18:08:00',
    13,
    1,
    'On time',
    'batch_1',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '758',
    'J596247',
    'ICE',
    '9263947',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    11.012763,
    54.712877,
    '2024-07-08 01:46:00',
    '2024-07-08 01:47:00',
    '2024-07-08 01:55:00',
    '2024-07-08 01:56:00',
    9,
    1,
    'On time',
    'batch_28',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '759',
    'J869742',
    'IC',
    '8307143',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    9.378097,
    53.180654,
    '2024-07-08 09:28:00',
    '2024-07-08 09:50:00',
    '2024-07-08 09:41:00',
    '2024-07-08 10:03:00',
    13,
    1,
    'On time',
    'batch_43',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '760',
    'J334972',
    'ICE',
    '8193079',
    'passenger',
    'Hamburg-route',
    'Hamburg Ost',
    'DE',
    'Hamburg',
    '20095',
    10.590182,
    54.262216,
    '2024-07-08 06:14:00',
    '2024-07-08 06:27:00',
    '2024-07-08 06:14:00',
    '2024-07-08 06:27:00',
    0,
    1,
    'On time',
    'batch_1',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '761',
    'J773760',
    'S',
    '9676663',
    'passenger',
    'Munich-route',
    'Munich West',
    'DE',
    'Munich',
    '80331',
    7.160206,
    47.956854,
    '2024-07-08 00:16:00',
    '2024-07-08 00:44:00',
    '2024-07-08 00:20:00',
    '2024-07-08 00:48:00',
    4,
    1,
    'On time',
    'batch_37',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '762',
    'J133212',
    'IC',
    '9078146',
    'passenger',
    'Hamburg-route',
    'Hamburg Ost',
    'DE',
    'Hamburg',
    '20095',
    9.289748,
    48.88009,
    '2024-07-08 17:07:00',
    '2024-07-08 17:23:00',
    '2024-07-08 17:26:00',
    '2024-07-08 17:42:00',
    19,
    1,
    'On time',
    'batch_26',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '763',
    'J314985',
    'RB',
    '9254745',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    11.069854,
    51.391764,
    '2024-07-08 07:17:00',
    '2024-07-08 07:46:00',
    '2024-07-08 07:23:00',
    '2024-07-08 07:52:00',
    6,
    1,
    'On time',
    'batch_42',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '764',
    'J301109',
    'IC',
    '9174324',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    6.704976,
    49.890684,
    '2024-07-08 22:47:00',
    '2024-07-08 23:02:00',
    '2024-07-08 23:07:00',
    '2024-07-08 23:22:00',
    20,
    1,
    'On time',
    'batch_31',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '765',
    'J278915',
    'RE',
    '8607644',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    10.093753,
    50.530697,
    '2024-07-08 17:39:00',
    '2024-07-08 17:50:00',
    '2024-07-08 17:53:00',
    '2024-07-08 18:04:00',
    14,
    1,
    'On time',
    'batch_6',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '766',
    'J910103',
    'ICE',
    '9889130',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    9.425799,
    52.797726,
    '2024-07-08 06:48:00',
    '2024-07-08 07:06:00',
    '2024-07-08 07:08:00',
    '2024-07-08 07:26:00',
    20,
    1,
    'On time',
    'batch_48',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '767',
    'J110109',
    'S',
    '8920360',
    'passenger',
    'Munich-route',
    'Munich Nord',
    'DE',
    'Munich',
    '80331',
    12.575459,
    54.328582,
    '2024-07-08 12:39:00',
    '2024-07-08 12:54:00',
    '2024-07-08 12:59:00',
    '2024-07-08 13:14:00',
    20,
    1,
    'On time',
    'batch_30',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '768',
    'J312511',
    'S',
    '8023296',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    10.152144,
    54.652573,
    '2024-07-08 07:50:00',
    '2024-07-08 08:03:00',
    '2024-07-08 08:08:00',
    '2024-07-08 08:21:00',
    18,
    1,
    'On time',
    'batch_37',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '769',
    'J884895',
    'S',
    '9342131',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    8.246867,
    50.55972,
    '2024-07-08 12:58:00',
    '2024-07-08 12:59:00',
    '2024-07-08 13:05:00',
    '2024-07-08 13:06:00',
    7,
    1,
    'On time',
    'batch_6',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '770',
    'J702853',
    'ICE',
    '8848358',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    11.499327,
    49.517467,
    '2024-07-08 21:38:00',
    '2024-07-08 22:06:00',
    '2024-07-08 21:38:00',
    '2024-07-08 22:06:00',
    0,
    1,
    'On time',
    'batch_47',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '771',
    'J883885',
    'RE',
    '9930960',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    12.457288,
    53.8872,
    '2024-07-08 03:29:00',
    '2024-07-08 03:46:00',
    '2024-07-08 03:47:00',
    '2024-07-08 04:04:00',
    18,
    1,
    'On time',
    'batch_13',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '772',
    'J702063',
    'ICE',
    '9546448',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    11.187869,
    52.751386,
    '2024-07-08 01:00:00',
    '2024-07-08 01:25:00',
    '2024-07-08 01:17:00',
    '2024-07-08 01:42:00',
    17,
    1,
    'On time',
    'batch_48',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '773',
    'J530355',
    'RB',
    '8948756',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    6.560602,
    47.685749,
    '2024-07-08 18:37:00',
    '2024-07-08 19:01:00',
    '2024-07-08 18:53:00',
    '2024-07-08 19:17:00',
    16,
    1,
    'On time',
    'batch_4',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '774',
    'J797422',
    'RE',
    '9550915',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    10.883269,
    53.789264,
    '2024-07-08 01:02:00',
    '2024-07-08 01:14:00',
    '2024-07-08 01:12:00',
    '2024-07-08 01:24:00',
    10,
    1,
    'On time',
    'batch_48',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '775',
    'J676913',
    'RE',
    '8301769',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    6.715777,
    47.109503,
    '2024-07-08 02:54:00',
    '2024-07-08 03:02:00',
    '2024-07-08 02:54:00',
    '2024-07-08 03:02:00',
    0,
    1,
    'On time',
    'batch_28',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '776',
    'J875308',
    'ICE',
    '8770940',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    7.173304,
    49.64396,
    '2024-07-08 09:01:00',
    '2024-07-08 09:31:00',
    '2024-07-08 09:14:00',
    '2024-07-08 09:44:00',
    13,
    1,
    'On time',
    'batch_22',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '777',
    'J187050',
    'S',
    '9992857',
    'passenger',
    'Berlin-route',
    'Berlin West',
    'DE',
    'Berlin',
    '10115',
    6.275315,
    47.000788,
    '2024-07-08 03:13:00',
    '2024-07-08 03:38:00',
    '2024-07-08 03:23:00',
    '2024-07-08 03:48:00',
    10,
    1,
    'On time',
    'batch_26',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '778',
    'J603266',
    'S',
    '8300145',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    10.848725,
    51.771561,
    '2024-07-08 16:56:00',
    '2024-07-08 17:05:00',
    '2024-07-08 17:13:00',
    '2024-07-08 17:22:00',
    17,
    1,
    'On time',
    'batch_33',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '779',
    'J446492',
    'RB',
    '9389299',
    'passenger',
    'Munich-route',
    'Munich Nord',
    'DE',
    'Munich',
    '80331',
    9.726819,
    47.401038,
    '2024-07-08 19:39:00',
    '2024-07-08 20:06:00',
    '2024-07-08 19:47:00',
    '2024-07-08 20:14:00',
    8,
    1,
    'On time',
    'batch_1',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '780',
    'J312682',
    'RE',
    '9592447',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    10.009603,
    51.281982,
    '2024-07-08 08:34:00',
    '2024-07-08 08:35:00',
    '2024-07-08 08:49:00',
    '2024-07-08 08:50:00',
    15,
    1,
    'On time',
    'batch_33',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '781',
    'J405575',
    'ICE',
    '9299972',
    'passenger',
    'Hamburg-route',
    'Hamburg Ost',
    'DE',
    'Hamburg',
    '20095',
    12.655463,
    54.326022,
    '2024-07-08 13:41:00',
    '2024-07-08 14:09:00',
    '2024-07-08 13:45:00',
    '2024-07-08 14:13:00',
    4,
    1,
    'On time',
    'batch_10',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '782',
    'J817178',
    'IC',
    '8755132',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    12.28817,
    52.18198,
    '2024-07-08 13:35:00',
    '2024-07-08 13:36:00',
    '2024-07-08 13:37:00',
    '2024-07-08 13:38:00',
    2,
    1,
    'On time',
    'batch_18',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '783',
    'J150963',
    'S',
    '8744257',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    7.223907,
    49.352653,
    '2024-07-08 18:16:00',
    '2024-07-08 18:33:00',
    '2024-07-08 18:33:00',
    '2024-07-08 18:50:00',
    17,
    1,
    'On time',
    'batch_15',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '784',
    'J499589',
    'ICE',
    '9086675',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    10.189202,
    52.347201,
    '2024-07-08 00:43:00',
    '2024-07-08 00:51:00',
    '2024-07-08 01:00:00',
    '2024-07-08 01:08:00',
    17,
    1,
    'On time',
    'batch_39',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '785',
    'J412028',
    'S',
    '9989030',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    6.699397,
    50.47471,
    '2024-07-08 23:06:00',
    '2024-07-08 23:15:00',
    '2024-07-08 23:13:00',
    '2024-07-08 23:22:00',
    7,
    1,
    'On time',
    'batch_32',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '786',
    'J765344',
    'RE',
    '8617690',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    7.481783,
    48.81479,
    '2024-07-08 00:46:00',
    '2024-07-08 01:06:00',
    '2024-07-08 00:47:00',
    '2024-07-08 01:07:00',
    1,
    1,
    'On time',
    'batch_22',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '787',
    'J801665',
    'S',
    '9559970',
    'passenger',
    'Berlin-route',
    'Berlin Nord',
    'DE',
    'Berlin',
    '10115',
    10.188472,
    49.159208,
    '2024-07-08 01:39:00',
    '2024-07-08 02:05:00',
    '2024-07-08 01:47:00',
    '2024-07-08 02:13:00',
    8,
    1,
    'On time',
    'batch_47',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '788',
    'J379862',
    'RE',
    '9457519',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    12.516145,
    53.115114,
    '2024-07-08 08:40:00',
    '2024-07-08 08:47:00',
    '2024-07-08 08:56:00',
    '2024-07-08 09:03:00',
    16,
    1,
    'On time',
    'batch_27',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '789',
    'J156691',
    'RE',
    '8821790',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    12.675028,
    49.166859,
    '2024-07-08 11:27:00',
    '2024-07-08 11:49:00',
    '2024-07-08 11:35:00',
    '2024-07-08 11:57:00',
    8,
    1,
    'On time',
    'batch_17',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '790',
    'J741644',
    'RE',
    '8806666',
    'passenger',
    'Munich-route',
    'Munich Nord',
    'DE',
    'Munich',
    '80331',
    8.272519,
    48.209141,
    '2024-07-08 07:10:00',
    '2024-07-08 07:26:00',
    '2024-07-08 07:22:00',
    '2024-07-08 07:38:00',
    12,
    1,
    'On time',
    'batch_4',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '791',
    'J972931',
    'IC',
    '9668654',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    6.70573,
    53.076691,
    '2024-07-08 02:55:00',
    '2024-07-08 02:59:00',
    '2024-07-08 03:15:00',
    '2024-07-08 03:19:00',
    20,
    1,
    'On time',
    'batch_46',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '792',
    'J957504',
    'ICE',
    '8825254',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    9.741024,
    52.673205,
    '2024-07-08 09:32:00',
    '2024-07-08 09:35:00',
    '2024-07-08 09:49:00',
    '2024-07-08 09:52:00',
    17,
    1,
    'On time',
    'batch_21',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '793',
    'J235589',
    'ICE',
    '9902138',
    'passenger',
    'Hamburg-route',
    'Hamburg Ost',
    'DE',
    'Hamburg',
    '20095',
    8.136799,
    49.135866,
    '2024-07-08 22:55:00',
    '2024-07-08 23:16:00',
    '2024-07-08 23:03:00',
    '2024-07-08 23:24:00',
    8,
    1,
    'On time',
    'batch_7',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '794',
    'J288145',
    'ICE',
    '9990927',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    6.956731,
    52.788529,
    '2024-07-08 13:00:00',
    '2024-07-08 13:30:00',
    '2024-07-08 13:18:00',
    '2024-07-08 13:48:00',
    18,
    1,
    'On time',
    'batch_11',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '795',
    'J602183',
    'ICE',
    '9481230',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    9.425521,
    54.951058,
    '2024-07-08 00:37:00',
    '2024-07-08 00:46:00',
    '2024-07-08 00:55:00',
    '2024-07-08 01:04:00',
    18,
    1,
    'On time',
    'batch_13',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '796',
    'J658625',
    'RB',
    '8034957',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    6.095684,
    53.681592,
    '2024-07-08 00:26:00',
    '2024-07-08 00:47:00',
    '2024-07-08 00:27:00',
    '2024-07-08 00:48:00',
    1,
    1,
    'On time',
    'batch_7',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '797',
    'J478164',
    'IC',
    '8848742',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    10.702862,
    48.827866,
    '2024-07-08 11:11:00',
    '2024-07-08 11:29:00',
    '2024-07-08 11:17:00',
    '2024-07-08 11:35:00',
    6,
    1,
    'On time',
    'batch_20',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '798',
    'J830287',
    'S',
    '9295089',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    9.080267,
    54.890423,
    '2024-07-08 03:08:00',
    '2024-07-08 03:24:00',
    '2024-07-08 03:08:00',
    '2024-07-08 03:24:00',
    0,
    1,
    'On time',
    'batch_49',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '799',
    'J163992',
    'ICE',
    '9955650',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    9.049469,
    48.900919,
    '2024-07-08 08:50:00',
    '2024-07-08 09:05:00',
    '2024-07-08 09:06:00',
    '2024-07-08 09:21:00',
    16,
    1,
    'On time',
    'batch_32',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '800',
    'J827275',
    'S',
    '8840429',
    'passenger',
    'Berlin-route',
    'Berlin Nord',
    'DE',
    'Berlin',
    '10115',
    8.873807,
    51.265923,
    '2024-07-08 15:50:00',
    '2024-07-08 15:57:00',
    '2024-07-08 15:52:00',
    '2024-07-08 15:59:00',
    2,
    1,
    'On time',
    'batch_31',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '801',
    'J636347',
    'RB',
    '9762336',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    6.578114,
    52.686053,
    '2024-07-08 23:10:00',
    '2024-07-08 23:14:00',
    '2024-07-08 23:25:00',
    '2024-07-08 23:29:00',
    15,
    1,
    'On time',
    'batch_10',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '802',
    'J745802',
    'S',
    '8519370',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    7.766794,
    51.418113,
    '2024-07-08 11:35:00',
    '2024-07-08 12:02:00',
    '2024-07-08 11:44:00',
    '2024-07-08 12:11:00',
    9,
    1,
    'On time',
    'batch_27',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '803',
    'J871006',
    'IC',
    '8609199',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    8.376105,
    54.231482,
    '2024-07-08 09:26:00',
    '2024-07-08 09:27:00',
    '2024-07-08 09:30:00',
    '2024-07-08 09:31:00',
    4,
    1,
    'On time',
    'batch_36',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '804',
    'J667341',
    'IC',
    '8935298',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    7.994069,
    54.256179,
    '2024-07-08 00:59:00',
    '2024-07-08 01:03:00',
    '2024-07-08 01:10:00',
    '2024-07-08 01:14:00',
    11,
    1,
    'On time',
    'batch_32',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '805',
    'J485349',
    'RB',
    '8106694',
    'passenger',
    'Hamburg-route',
    'Hamburg Nord',
    'DE',
    'Hamburg',
    '20095',
    8.329611,
    50.048455,
    '2024-07-08 23:24:00',
    '2024-07-08 23:38:00',
    '2024-07-08 23:39:00',
    '2024-07-08 23:53:00',
    15,
    1,
    'On time',
    'batch_7',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '806',
    'J581489',
    'S',
    '9053873',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    9.287581,
    53.45281,
    '2024-07-08 06:34:00',
    '2024-07-08 07:02:00',
    '2024-07-08 06:50:00',
    '2024-07-08 07:18:00',
    16,
    1,
    'On time',
    'batch_27',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '807',
    'J797147',
    'RB',
    '9781440',
    'passenger',
    'Berlin-route',
    'Berlin Nord',
    'DE',
    'Berlin',
    '10115',
    7.056318,
    54.417031,
    '2024-07-08 20:32:00',
    '2024-07-08 20:40:00',
    '2024-07-08 20:36:00',
    '2024-07-08 20:44:00',
    4,
    1,
    'On time',
    'batch_17',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '808',
    'J257172',
    'S',
    '9864212',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    6.110062,
    51.052313,
    '2024-07-08 19:26:00',
    '2024-07-08 19:41:00',
    '2024-07-08 19:43:00',
    '2024-07-08 19:58:00',
    17,
    1,
    'On time',
    'batch_50',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '809',
    'J590109',
    'RE',
    '8766843',
    'passenger',
    'Munich-route',
    'Munich West',
    'DE',
    'Munich',
    '80331',
    12.31701,
    53.063604,
    '2024-07-08 15:27:00',
    '2024-07-08 15:48:00',
    '2024-07-08 15:29:00',
    '2024-07-08 15:50:00',
    2,
    1,
    'On time',
    'batch_38',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '810',
    'J681560',
    'S',
    '9738703',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    6.665457,
    52.575079,
    '2024-07-08 16:32:00',
    '2024-07-08 16:44:00',
    '2024-07-08 16:44:00',
    '2024-07-08 16:56:00',
    12,
    1,
    'On time',
    'batch_1',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '811',
    'J818653',
    'S',
    '9408896',
    'passenger',
    'Munich-route',
    'Munich Nord',
    'DE',
    'Munich',
    '80331',
    7.630817,
    48.181359,
    '2024-07-08 01:17:00',
    '2024-07-08 01:27:00',
    '2024-07-08 01:30:00',
    '2024-07-08 01:40:00',
    13,
    1,
    'On time',
    'batch_29',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '812',
    'J886074',
    'IC',
    '8456198',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    7.924159,
    50.207142,
    '2024-07-08 05:19:00',
    '2024-07-08 05:23:00',
    '2024-07-08 05:36:00',
    '2024-07-08 05:40:00',
    17,
    1,
    'On time',
    'batch_22',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '813',
    'J666152',
    'RE',
    '8138684',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    7.393887,
    49.265014,
    '2024-07-08 22:11:00',
    '2024-07-08 22:20:00',
    '2024-07-08 22:26:00',
    '2024-07-08 22:35:00',
    15,
    1,
    'On time',
    'batch_45',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '814',
    'J909281',
    'IC',
    '9978932',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    7.320267,
    53.296399,
    '2024-07-08 20:05:00',
    '2024-07-08 20:23:00',
    '2024-07-08 20:20:00',
    '2024-07-08 20:38:00',
    15,
    1,
    'On time',
    'batch_48',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '815',
    'J182577',
    'S',
    '9087923',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    10.897702,
    48.162179,
    '2024-07-08 04:17:00',
    '2024-07-08 04:34:00',
    '2024-07-08 04:30:00',
    '2024-07-08 04:47:00',
    13,
    1,
    'On time',
    'batch_9',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '816',
    'J627928',
    'RB',
    '8957600',
    'passenger',
    'Munich-route',
    'Munich West',
    'DE',
    'Munich',
    '80331',
    11.55501,
    52.368696,
    '2024-07-08 16:48:00',
    '2024-07-08 17:11:00',
    '2024-07-08 17:03:00',
    '2024-07-08 17:26:00',
    15,
    1,
    'On time',
    'batch_28',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '817',
    'J615999',
    'RB',
    '9877597',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    11.246033,
    48.336075,
    '2024-07-08 12:39:00',
    '2024-07-08 12:59:00',
    '2024-07-08 12:56:00',
    '2024-07-08 13:16:00',
    17,
    1,
    'On time',
    'batch_2',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '818',
    'J567948',
    'IC',
    '8493607',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    8.811427,
    50.876646,
    '2024-07-08 06:03:00',
    '2024-07-08 06:28:00',
    '2024-07-08 06:23:00',
    '2024-07-08 06:48:00',
    20,
    1,
    'On time',
    'batch_47',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '819',
    'J599744',
    'IC',
    '9643346',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    11.967245,
    47.404545,
    '2024-07-08 15:50:00',
    '2024-07-08 16:02:00',
    '2024-07-08 15:53:00',
    '2024-07-08 16:05:00',
    3,
    1,
    'On time',
    'batch_9',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '820',
    'J189268',
    'RE',
    '9627640',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    7.442951,
    52.77867,
    '2024-07-08 01:15:00',
    '2024-07-08 01:45:00',
    '2024-07-08 01:16:00',
    '2024-07-08 01:46:00',
    1,
    1,
    'On time',
    'batch_27',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '821',
    'J152002',
    'IC',
    '8138824',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    6.455403,
    50.487168,
    '2024-07-08 20:52:00',
    '2024-07-08 21:21:00',
    '2024-07-08 20:54:00',
    '2024-07-08 21:23:00',
    2,
    1,
    'On time',
    'batch_37',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '822',
    'J856578',
    'RE',
    '9294387',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    7.130886,
    48.992812,
    '2024-07-08 14:47:00',
    '2024-07-08 15:07:00',
    '2024-07-08 15:06:00',
    '2024-07-08 15:26:00',
    19,
    1,
    'On time',
    'batch_41',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '823',
    'J877015',
    'IC',
    '8955372',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    11.920354,
    50.18598,
    '2024-07-08 03:58:00',
    '2024-07-08 04:15:00',
    '2024-07-08 04:08:00',
    '2024-07-08 04:25:00',
    10,
    1,
    'On time',
    'batch_38',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '824',
    'J208629',
    'ICE',
    '8946202',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    10.840209,
    48.373923,
    '2024-07-08 02:36:00',
    '2024-07-08 03:00:00',
    '2024-07-08 02:54:00',
    '2024-07-08 03:18:00',
    18,
    1,
    'On time',
    'batch_26',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '825',
    'J210059',
    'RE',
    '9780940',
    'passenger',
    'Munich-route',
    'Munich West',
    'DE',
    'Munich',
    '80331',
    11.377052,
    49.576805,
    '2024-07-08 15:47:00',
    '2024-07-08 15:52:00',
    '2024-07-08 16:04:00',
    '2024-07-08 16:09:00',
    17,
    1,
    'On time',
    'batch_33',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '826',
    'J786883',
    'RB',
    '8053629',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    7.121232,
    48.356119,
    '2024-07-08 06:43:00',
    '2024-07-08 06:45:00',
    '2024-07-08 06:59:00',
    '2024-07-08 07:01:00',
    16,
    1,
    'On time',
    'batch_11',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '827',
    'J212138',
    'IC',
    '8140536',
    'passenger',
    'Berlin-route',
    'Berlin West',
    'DE',
    'Berlin',
    '10115',
    10.930608,
    51.374959,
    '2024-07-08 02:34:00',
    '2024-07-08 02:42:00',
    '2024-07-08 02:44:00',
    '2024-07-08 02:52:00',
    10,
    1,
    'On time',
    'batch_37',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '828',
    'J555637',
    'IC',
    '8280726',
    'passenger',
    'Berlin-route',
    'Berlin Nord',
    'DE',
    'Berlin',
    '10115',
    6.070026,
    51.731801,
    '2024-07-08 16:40:00',
    '2024-07-08 16:46:00',
    '2024-07-08 16:43:00',
    '2024-07-08 16:49:00',
    3,
    1,
    'On time',
    'batch_50',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '829',
    'J563135',
    'IC',
    '9457081',
    'passenger',
    'Munich-route',
    'Munich Nord',
    'DE',
    'Munich',
    '80331',
    8.466563,
    49.491721,
    '2024-07-08 07:55:00',
    '2024-07-08 08:25:00',
    '2024-07-08 08:13:00',
    '2024-07-08 08:43:00',
    18,
    1,
    'On time',
    'batch_19',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '830',
    'J502583',
    'S',
    '9414501',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    11.716756,
    49.58145,
    '2024-07-08 19:32:00',
    '2024-07-08 19:47:00',
    '2024-07-08 19:44:00',
    '2024-07-08 19:59:00',
    12,
    1,
    'On time',
    'batch_27',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '831',
    'J686744',
    'IC',
    '8565726',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    8.425418,
    47.061065,
    '2024-07-08 16:19:00',
    '2024-07-08 16:20:00',
    '2024-07-08 16:22:00',
    '2024-07-08 16:23:00',
    3,
    1,
    'On time',
    'batch_13',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '832',
    'J998457',
    'RB',
    '8501624',
    'passenger',
    'Munich-route',
    'Munich West',
    'DE',
    'Munich',
    '80331',
    10.268151,
    54.147782,
    '2024-07-08 05:10:00',
    '2024-07-08 05:23:00',
    '2024-07-08 05:10:00',
    '2024-07-08 05:23:00',
    0,
    1,
    'On time',
    'batch_14',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '833',
    'J639627',
    'S',
    '9050396',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    10.218531,
    48.872053,
    '2024-07-08 05:06:00',
    '2024-07-08 05:29:00',
    '2024-07-08 05:07:00',
    '2024-07-08 05:30:00',
    1,
    1,
    'On time',
    'batch_24',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '834',
    'J794240',
    'S',
    '9333631',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    8.236127,
    50.404662,
    '2024-07-08 01:26:00',
    '2024-07-08 01:47:00',
    '2024-07-08 01:27:00',
    '2024-07-08 01:48:00',
    1,
    1,
    'On time',
    'batch_22',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '835',
    'J896697',
    'ICE',
    '9484227',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    9.54105,
    49.393368,
    '2024-07-08 02:17:00',
    '2024-07-08 02:29:00',
    '2024-07-08 02:18:00',
    '2024-07-08 02:30:00',
    1,
    1,
    'On time',
    'batch_44',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '836',
    'J367814',
    'ICE',
    '9111690',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    7.254585,
    52.277798,
    '2024-07-08 18:54:00',
    '2024-07-08 19:08:00',
    '2024-07-08 19:13:00',
    '2024-07-08 19:27:00',
    19,
    1,
    'On time',
    'batch_37',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '837',
    'J526115',
    'RE',
    '8842410',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    11.482869,
    51.817152,
    '2024-07-08 02:04:00',
    '2024-07-08 02:09:00',
    '2024-07-08 02:14:00',
    '2024-07-08 02:19:00',
    10,
    1,
    'On time',
    'batch_7',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '838',
    'J667568',
    'S',
    '8538424',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    12.204419,
    51.11363,
    '2024-07-08 13:38:00',
    '2024-07-08 13:42:00',
    '2024-07-08 13:58:00',
    '2024-07-08 14:02:00',
    20,
    1,
    'On time',
    'batch_6',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '839',
    'J917123',
    'RB',
    '9044113',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    6.299014,
    54.089533,
    '2024-07-08 22:10:00',
    '2024-07-08 22:24:00',
    '2024-07-08 22:28:00',
    '2024-07-08 22:42:00',
    18,
    1,
    'On time',
    'batch_27',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '840',
    'J831801',
    'S',
    '8451709',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    7.051544,
    54.587721,
    '2024-07-08 06:14:00',
    '2024-07-08 06:41:00',
    '2024-07-08 06:30:00',
    '2024-07-08 06:57:00',
    16,
    1,
    'On time',
    'batch_12',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '841',
    'J688155',
    'ICE',
    '8446512',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    7.769795,
    50.640854,
    '2024-07-08 18:44:00',
    '2024-07-08 18:52:00',
    '2024-07-08 18:46:00',
    '2024-07-08 18:54:00',
    2,
    1,
    'On time',
    'batch_13',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '842',
    'J963138',
    'IC',
    '8689519',
    'passenger',
    'Munich-route',
    'Munich West',
    'DE',
    'Munich',
    '80331',
    10.905291,
    52.545302,
    '2024-07-08 23:42:00',
    '2024-07-09 00:08:00',
    '2024-07-09 00:01:00',
    '2024-07-09 00:27:00',
    19,
    1,
    'On time',
    'batch_23',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '843',
    'J799239',
    'RE',
    '9466611',
    'passenger',
    'Berlin-route',
    'Berlin West',
    'DE',
    'Berlin',
    '10115',
    9.677253,
    51.097573,
    '2024-07-08 01:39:00',
    '2024-07-08 01:43:00',
    '2024-07-08 01:47:00',
    '2024-07-08 01:51:00',
    8,
    1,
    'On time',
    'batch_8',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '844',
    'J365446',
    'S',
    '9253297',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    7.25051,
    54.081999,
    '2024-07-08 06:41:00',
    '2024-07-08 06:53:00',
    '2024-07-08 06:53:00',
    '2024-07-08 07:05:00',
    12,
    1,
    'On time',
    'batch_2',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '845',
    'J962911',
    'RB',
    '8008993',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    7.972945,
    48.174018,
    '2024-07-08 17:30:00',
    '2024-07-08 17:46:00',
    '2024-07-08 17:48:00',
    '2024-07-08 18:04:00',
    18,
    1,
    'On time',
    'batch_3',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '846',
    'J726857',
    'IC',
    '9264358',
    'passenger',
    'Hamburg-route',
    'Hamburg Nord',
    'DE',
    'Hamburg',
    '20095',
    11.564656,
    51.938532,
    '2024-07-08 10:35:00',
    '2024-07-08 10:38:00',
    '2024-07-08 10:44:00',
    '2024-07-08 10:47:00',
    9,
    1,
    'On time',
    'batch_26',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '847',
    'J672865',
    'RB',
    '9550107',
    'passenger',
    'Berlin-route',
    'Berlin Nord',
    'DE',
    'Berlin',
    '10115',
    10.106772,
    51.195973,
    '2024-07-08 15:45:00',
    '2024-07-08 16:01:00',
    '2024-07-08 15:53:00',
    '2024-07-08 16:09:00',
    8,
    1,
    'On time',
    'batch_31',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '848',
    'J681320',
    'RB',
    '8403068',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    8.320722,
    50.18845,
    '2024-07-08 10:12:00',
    '2024-07-08 10:28:00',
    '2024-07-08 10:25:00',
    '2024-07-08 10:41:00',
    13,
    1,
    'On time',
    'batch_43',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '849',
    'J873577',
    'IC',
    '9686346',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    8.932793,
    47.871329,
    '2024-07-08 04:14:00',
    '2024-07-08 04:17:00',
    '2024-07-08 04:31:00',
    '2024-07-08 04:34:00',
    17,
    1,
    'On time',
    'batch_6',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '850',
    'J591051',
    'IC',
    '8647509',
    'passenger',
    'Munich-route',
    'Munich West',
    'DE',
    'Munich',
    '80331',
    8.585112,
    49.359812,
    '2024-07-08 00:17:00',
    '2024-07-08 00:35:00',
    '2024-07-08 00:23:00',
    '2024-07-08 00:41:00',
    6,
    1,
    'On time',
    'batch_10',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '851',
    'J939314',
    'ICE',
    '8853330',
    'passenger',
    'Berlin-route',
    'Berlin Nord',
    'DE',
    'Berlin',
    '10115',
    8.077287,
    47.940724,
    '2024-07-08 02:39:00',
    '2024-07-08 02:58:00',
    '2024-07-08 02:46:00',
    '2024-07-08 03:05:00',
    7,
    1,
    'On time',
    'batch_47',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '852',
    'J599299',
    'RE',
    '9712308',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    6.120078,
    47.81773,
    '2024-07-08 21:18:00',
    '2024-07-08 21:22:00',
    '2024-07-08 21:32:00',
    '2024-07-08 21:36:00',
    14,
    1,
    'On time',
    'batch_39',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '853',
    'J826423',
    'ICE',
    '9704277',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    11.248841,
    51.44766,
    '2024-07-08 03:22:00',
    '2024-07-08 03:50:00',
    '2024-07-08 03:26:00',
    '2024-07-08 03:54:00',
    4,
    1,
    'On time',
    'batch_13',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '854',
    'J399783',
    'ICE',
    '9771871',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    12.457223,
    51.698734,
    '2024-07-08 11:06:00',
    '2024-07-08 11:25:00',
    '2024-07-08 11:14:00',
    '2024-07-08 11:33:00',
    8,
    1,
    'On time',
    'batch_47',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '855',
    'J570212',
    'IC',
    '9678686',
    'passenger',
    'Munich-route',
    'Munich West',
    'DE',
    'Munich',
    '80331',
    8.002026,
    52.827823,
    '2024-07-08 13:08:00',
    '2024-07-08 13:25:00',
    '2024-07-08 13:20:00',
    '2024-07-08 13:37:00',
    12,
    1,
    'On time',
    'batch_47',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '856',
    'J171631',
    'ICE',
    '9869737',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    7.986111,
    53.016381,
    '2024-07-08 05:11:00',
    '2024-07-08 05:30:00',
    '2024-07-08 05:31:00',
    '2024-07-08 05:50:00',
    20,
    1,
    'On time',
    'batch_21',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '857',
    'J755861',
    'ICE',
    '8417036',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    10.807938,
    51.616215,
    '2024-07-08 20:02:00',
    '2024-07-08 20:13:00',
    '2024-07-08 20:18:00',
    '2024-07-08 20:29:00',
    16,
    1,
    'On time',
    'batch_30',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '858',
    'J980673',
    'RB',
    '9208794',
    'passenger',
    'Munich-route',
    'Munich Nord',
    'DE',
    'Munich',
    '80331',
    10.658895,
    52.408877,
    '2024-07-08 00:21:00',
    '2024-07-08 00:48:00',
    '2024-07-08 00:33:00',
    '2024-07-08 01:00:00',
    12,
    1,
    'On time',
    'batch_40',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '859',
    'J801550',
    'RE',
    '9465741',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    9.709676,
    47.690214,
    '2024-07-08 11:51:00',
    '2024-07-08 12:00:00',
    '2024-07-08 12:07:00',
    '2024-07-08 12:16:00',
    16,
    1,
    'On time',
    'batch_17',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '860',
    'J572048',
    'RB',
    '9225765',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    9.127014,
    54.578027,
    '2024-07-08 23:12:00',
    '2024-07-08 23:14:00',
    '2024-07-08 23:12:00',
    '2024-07-08 23:14:00',
    0,
    1,
    'On time',
    'batch_46',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '861',
    'J212481',
    'RE',
    '8923073',
    'passenger',
    'Berlin-route',
    'Berlin Nord',
    'DE',
    'Berlin',
    '10115',
    9.331595,
    53.317065,
    '2024-07-08 10:07:00',
    '2024-07-08 10:11:00',
    '2024-07-08 10:20:00',
    '2024-07-08 10:24:00',
    13,
    1,
    'On time',
    'batch_33',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '862',
    'J981795',
    'RE',
    '8481550',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    6.620405,
    51.542675,
    '2024-07-08 05:54:00',
    '2024-07-08 06:04:00',
    '2024-07-08 06:05:00',
    '2024-07-08 06:15:00',
    11,
    1,
    'On time',
    'batch_4',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '863',
    'J540479',
    'RB',
    '9604159',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    7.858531,
    52.869034,
    '2024-07-08 04:06:00',
    '2024-07-08 04:32:00',
    '2024-07-08 04:08:00',
    '2024-07-08 04:34:00',
    2,
    1,
    'On time',
    'batch_15',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '864',
    'J204169',
    'IC',
    '9978986',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    12.187683,
    52.545827,
    '2024-07-08 09:45:00',
    '2024-07-08 10:06:00',
    '2024-07-08 09:52:00',
    '2024-07-08 10:13:00',
    7,
    1,
    'On time',
    'batch_9',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '865',
    'J743811',
    'RE',
    '9546076',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    7.992742,
    52.862256,
    '2024-07-08 18:02:00',
    '2024-07-08 18:31:00',
    '2024-07-08 18:11:00',
    '2024-07-08 18:40:00',
    9,
    1,
    'On time',
    'batch_33',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '866',
    'J270867',
    'ICE',
    '8019124',
    'passenger',
    'Munich-route',
    'Munich West',
    'DE',
    'Munich',
    '80331',
    11.865677,
    50.684682,
    '2024-07-08 12:03:00',
    '2024-07-08 12:09:00',
    '2024-07-08 12:12:00',
    '2024-07-08 12:18:00',
    9,
    1,
    'On time',
    'batch_20',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '867',
    'J498496',
    'RE',
    '8960748',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    12.531354,
    47.15347,
    '2024-07-08 16:07:00',
    '2024-07-08 16:25:00',
    '2024-07-08 16:26:00',
    '2024-07-08 16:44:00',
    19,
    1,
    'On time',
    'batch_46',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '868',
    'J413941',
    'RB',
    '9082055',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    10.999923,
    53.867551,
    '2024-07-08 15:33:00',
    '2024-07-08 15:35:00',
    '2024-07-08 15:47:00',
    '2024-07-08 15:49:00',
    14,
    1,
    'On time',
    'batch_13',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '869',
    'J344418',
    'RB',
    '9310398',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    7.802401,
    48.170052,
    '2024-07-08 00:07:00',
    '2024-07-08 00:35:00',
    '2024-07-08 00:23:00',
    '2024-07-08 00:51:00',
    16,
    1,
    'On time',
    'batch_45',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '870',
    'J128778',
    'ICE',
    '9478388',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    8.835178,
    50.342645,
    '2024-07-08 12:43:00',
    '2024-07-08 12:46:00',
    '2024-07-08 13:01:00',
    '2024-07-08 13:04:00',
    18,
    1,
    'On time',
    'batch_11',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '871',
    'J602426',
    'RB',
    '8714231',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    11.248169,
    52.445994,
    '2024-07-08 19:29:00',
    '2024-07-08 19:39:00',
    '2024-07-08 19:45:00',
    '2024-07-08 19:55:00',
    16,
    1,
    'On time',
    'batch_26',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '872',
    'J144166',
    'RE',
    '9482757',
    'passenger',
    'Hamburg-route',
    'Hamburg Nord',
    'DE',
    'Hamburg',
    '20095',
    6.32786,
    53.26785,
    '2024-07-08 19:11:00',
    '2024-07-08 19:26:00',
    '2024-07-08 19:21:00',
    '2024-07-08 19:36:00',
    10,
    1,
    'On time',
    'batch_17',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '873',
    'J225927',
    'S',
    '9259599',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    7.654149,
    51.996761,
    '2024-07-08 00:37:00',
    '2024-07-08 00:44:00',
    '2024-07-08 00:43:00',
    '2024-07-08 00:50:00',
    6,
    1,
    'On time',
    'batch_15',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '874',
    'J243430',
    'RE',
    '8337630',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    6.559252,
    52.774005,
    '2024-07-08 01:18:00',
    '2024-07-08 01:43:00',
    '2024-07-08 01:24:00',
    '2024-07-08 01:49:00',
    6,
    1,
    'On time',
    'batch_19',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '875',
    'J973083',
    'S',
    '9782255',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    7.438444,
    52.567879,
    '2024-07-08 20:11:00',
    '2024-07-08 20:14:00',
    '2024-07-08 20:23:00',
    '2024-07-08 20:26:00',
    12,
    1,
    'On time',
    'batch_9',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '876',
    'J141415',
    'RB',
    '8740499',
    'passenger',
    'Hamburg-route',
    'Hamburg Nord',
    'DE',
    'Hamburg',
    '20095',
    8.333991,
    50.812473,
    '2024-07-08 06:51:00',
    '2024-07-08 06:58:00',
    '2024-07-08 07:08:00',
    '2024-07-08 07:15:00',
    17,
    1,
    'On time',
    'batch_8',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '877',
    'J200266',
    'ICE',
    '8566042',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    12.26949,
    49.886768,
    '2024-07-08 17:00:00',
    '2024-07-08 17:29:00',
    '2024-07-08 17:14:00',
    '2024-07-08 17:43:00',
    14,
    1,
    'On time',
    'batch_43',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '878',
    'J850298',
    'IC',
    '8336383',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    11.710888,
    51.033756,
    '2024-07-08 03:31:00',
    '2024-07-08 03:34:00',
    '2024-07-08 03:35:00',
    '2024-07-08 03:38:00',
    4,
    1,
    'On time',
    'batch_45',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '879',
    'J350009',
    'IC',
    '9260479',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    8.351221,
    49.195,
    '2024-07-08 20:00:00',
    '2024-07-08 20:09:00',
    '2024-07-08 20:10:00',
    '2024-07-08 20:19:00',
    10,
    1,
    'On time',
    'batch_9',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '880',
    'J144472',
    'IC',
    '9095507',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    6.931194,
    53.889557,
    '2024-07-08 03:14:00',
    '2024-07-08 03:33:00',
    '2024-07-08 03:29:00',
    '2024-07-08 03:48:00',
    15,
    1,
    'On time',
    'batch_11',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '881',
    'J873224',
    'RE',
    '9485039',
    'passenger',
    'Berlin-route',
    'Berlin Nord',
    'DE',
    'Berlin',
    '10115',
    11.526107,
    49.880837,
    '2024-07-08 10:24:00',
    '2024-07-08 10:51:00',
    '2024-07-08 10:41:00',
    '2024-07-08 11:08:00',
    17,
    1,
    'On time',
    'batch_12',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '882',
    'J329770',
    'IC',
    '9928153',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    12.23816,
    53.787511,
    '2024-07-08 23:44:00',
    '2024-07-08 23:45:00',
    '2024-07-08 23:51:00',
    '2024-07-08 23:52:00',
    7,
    1,
    'On time',
    'batch_42',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '883',
    'J829071',
    'RE',
    '9681105',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    10.588054,
    47.461006,
    '2024-07-08 18:25:00',
    '2024-07-08 18:54:00',
    '2024-07-08 18:31:00',
    '2024-07-08 19:00:00',
    6,
    1,
    'On time',
    'batch_25',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '884',
    'J215820',
    'RB',
    '9624964',
    'passenger',
    'Hamburg-route',
    'Hamburg Nord',
    'DE',
    'Hamburg',
    '20095',
    8.319974,
    48.563017,
    '2024-07-08 13:30:00',
    '2024-07-08 13:35:00',
    '2024-07-08 13:40:00',
    '2024-07-08 13:45:00',
    10,
    1,
    'On time',
    'batch_33',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '885',
    'J463378',
    'S',
    '9220031',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    9.82371,
    54.005609,
    '2024-07-08 13:18:00',
    '2024-07-08 13:43:00',
    '2024-07-08 13:18:00',
    '2024-07-08 13:43:00',
    0,
    1,
    'On time',
    'batch_31',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '886',
    'J162307',
    'S',
    '9225180',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    10.425013,
    48.037607,
    '2024-07-08 20:19:00',
    '2024-07-08 20:31:00',
    '2024-07-08 20:33:00',
    '2024-07-08 20:45:00',
    14,
    1,
    'On time',
    'batch_11',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '887',
    'J409313',
    'RE',
    '8983683',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    11.968741,
    48.367585,
    '2024-07-08 07:52:00',
    '2024-07-08 07:59:00',
    '2024-07-08 08:05:00',
    '2024-07-08 08:12:00',
    13,
    1,
    'On time',
    'batch_35',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '888',
    'J761283',
    'RE',
    '9701396',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    11.569789,
    49.491101,
    '2024-07-08 12:51:00',
    '2024-07-08 13:00:00',
    '2024-07-08 13:06:00',
    '2024-07-08 13:15:00',
    15,
    1,
    'On time',
    'batch_47',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '889',
    'J862557',
    'RE',
    '9664802',
    'passenger',
    'Berlin-route',
    'Berlin Nord',
    'DE',
    'Berlin',
    '10115',
    11.327115,
    54.314733,
    '2024-07-08 13:23:00',
    '2024-07-08 13:32:00',
    '2024-07-08 13:30:00',
    '2024-07-08 13:39:00',
    7,
    1,
    'On time',
    'batch_3',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '890',
    'J355895',
    'ICE',
    '9987173',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    6.618563,
    53.383358,
    '2024-07-08 20:29:00',
    '2024-07-08 20:55:00',
    '2024-07-08 20:37:00',
    '2024-07-08 21:03:00',
    8,
    1,
    'On time',
    'batch_43',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '891',
    'J364470',
    'RB',
    '8901656',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    7.896896,
    54.176447,
    '2024-07-08 00:41:00',
    '2024-07-08 01:01:00',
    '2024-07-08 00:44:00',
    '2024-07-08 01:04:00',
    3,
    1,
    'On time',
    'batch_29',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '892',
    'J818621',
    'RB',
    '9387526',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    10.583113,
    49.265443,
    '2024-07-08 05:52:00',
    '2024-07-08 06:06:00',
    '2024-07-08 05:58:00',
    '2024-07-08 06:12:00',
    6,
    1,
    'On time',
    'batch_25',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '893',
    'J276186',
    'S',
    '8046192',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    8.079409,
    54.935933,
    '2024-07-08 19:09:00',
    '2024-07-08 19:26:00',
    '2024-07-08 19:11:00',
    '2024-07-08 19:28:00',
    2,
    1,
    'On time',
    'batch_34',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '894',
    'J524392',
    'IC',
    '8218557',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    10.811709,
    48.417046,
    '2024-07-08 07:38:00',
    '2024-07-08 07:41:00',
    '2024-07-08 07:39:00',
    '2024-07-08 07:42:00',
    1,
    1,
    'On time',
    'batch_42',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '895',
    'J753962',
    'RE',
    '9457540',
    'passenger',
    'Munich-route',
    'Munich West',
    'DE',
    'Munich',
    '80331',
    7.370647,
    49.252075,
    '2024-07-08 18:56:00',
    '2024-07-08 19:09:00',
    '2024-07-08 18:58:00',
    '2024-07-08 19:11:00',
    2,
    1,
    'On time',
    'batch_32',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '896',
    'J442896',
    'IC',
    '8780329',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    12.141805,
    47.65176,
    '2024-07-08 18:06:00',
    '2024-07-08 18:22:00',
    '2024-07-08 18:11:00',
    '2024-07-08 18:27:00',
    5,
    1,
    'On time',
    'batch_49',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '897',
    'J511274',
    'IC',
    '8562186',
    'passenger',
    'Berlin-route',
    'Berlin Nord',
    'DE',
    'Berlin',
    '10115',
    11.26625,
    50.527313,
    '2024-07-08 05:52:00',
    '2024-07-08 06:06:00',
    '2024-07-08 06:09:00',
    '2024-07-08 06:23:00',
    17,
    1,
    'On time',
    'batch_18',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '898',
    'J610426',
    'IC',
    '8592874',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    12.569378,
    54.453383,
    '2024-07-08 07:07:00',
    '2024-07-08 07:26:00',
    '2024-07-08 07:18:00',
    '2024-07-08 07:37:00',
    11,
    1,
    'On time',
    'batch_38',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '899',
    'J379388',
    'IC',
    '8638828',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    9.758521,
    47.021607,
    '2024-07-08 06:29:00',
    '2024-07-08 06:39:00',
    '2024-07-08 06:41:00',
    '2024-07-08 06:51:00',
    12,
    1,
    'On time',
    'batch_24',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '900',
    'J810806',
    'ICE',
    '9031485',
    'passenger',
    'Berlin-route',
    'Berlin Süd',
    'DE',
    'Berlin',
    '10115',
    6.505923,
    50.644806,
    '2024-07-08 21:38:00',
    '2024-07-08 21:58:00',
    '2024-07-08 21:54:00',
    '2024-07-08 22:14:00',
    16,
    1,
    'On time',
    'batch_7',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '901',
    'J850516',
    'IC',
    '9828811',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    12.911802,
    48.971457,
    '2024-07-08 03:40:00',
    '2024-07-08 03:42:00',
    '2024-07-08 04:00:00',
    '2024-07-08 04:02:00',
    20,
    1,
    'On time',
    'batch_6',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '902',
    'J359713',
    'S',
    '8789142',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    6.173746,
    53.611163,
    '2024-07-08 09:27:00',
    '2024-07-08 09:41:00',
    '2024-07-08 09:47:00',
    '2024-07-08 10:01:00',
    20,
    1,
    'On time',
    'batch_8',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '903',
    'J549633',
    'RB',
    '9706583',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    8.735072,
    50.349802,
    '2024-07-08 21:00:00',
    '2024-07-08 21:14:00',
    '2024-07-08 21:06:00',
    '2024-07-08 21:20:00',
    6,
    1,
    'On time',
    'batch_15',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '904',
    'J275856',
    'ICE',
    '9864918',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    10.251072,
    51.375573,
    '2024-07-08 00:04:00',
    '2024-07-08 00:30:00',
    '2024-07-08 00:08:00',
    '2024-07-08 00:34:00',
    4,
    1,
    'On time',
    'batch_38',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '905',
    'J622457',
    'IC',
    '8444310',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    8.185881,
    47.886969,
    '2024-07-08 12:28:00',
    '2024-07-08 12:41:00',
    '2024-07-08 12:41:00',
    '2024-07-08 12:54:00',
    13,
    1,
    'On time',
    'batch_29',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '906',
    'J527294',
    'S',
    '8260224',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Süd',
    'DE',
    'Frankfurt',
    '60311',
    7.67304,
    48.176658,
    '2024-07-08 05:07:00',
    '2024-07-08 05:15:00',
    '2024-07-08 05:08:00',
    '2024-07-08 05:16:00',
    1,
    1,
    'On time',
    'batch_5',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '907',
    'J459695',
    'RB',
    '8319767',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    11.751734,
    47.998519,
    '2024-07-08 19:16:00',
    '2024-07-08 19:28:00',
    '2024-07-08 19:26:00',
    '2024-07-08 19:38:00',
    10,
    1,
    'On time',
    'batch_30',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '908',
    'J784719',
    'S',
    '8610508',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    8.221017,
    48.895989,
    '2024-07-08 09:52:00',
    '2024-07-08 10:17:00',
    '2024-07-08 10:08:00',
    '2024-07-08 10:33:00',
    16,
    1,
    'On time',
    'batch_2',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '909',
    'J465470',
    'S',
    '9773171',
    'passenger',
    'Munich-route',
    'Munich Nord',
    'DE',
    'Munich',
    '80331',
    12.751595,
    54.427249,
    '2024-07-08 08:39:00',
    '2024-07-08 09:02:00',
    '2024-07-08 08:41:00',
    '2024-07-08 09:04:00',
    2,
    1,
    'On time',
    'batch_43',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '910',
    'J446605',
    'ICE',
    '9707380',
    'passenger',
    'Munich-route',
    'Munich Nord',
    'DE',
    'Munich',
    '80331',
    8.294723,
    53.400584,
    '2024-07-08 15:11:00',
    '2024-07-08 15:28:00',
    '2024-07-08 15:12:00',
    '2024-07-08 15:29:00',
    1,
    1,
    'On time',
    'batch_46',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '911',
    'J467905',
    'ICE',
    '9791105',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    8.357224,
    53.868338,
    '2024-07-08 12:35:00',
    '2024-07-08 12:55:00',
    '2024-07-08 12:49:00',
    '2024-07-08 13:09:00',
    14,
    1,
    'On time',
    'batch_17',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '912',
    'J348827',
    'RE',
    '8707552',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    9.129408,
    48.520947,
    '2024-07-08 12:31:00',
    '2024-07-08 12:39:00',
    '2024-07-08 12:40:00',
    '2024-07-08 12:48:00',
    9,
    1,
    'On time',
    'batch_5',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '913',
    'J891905',
    'RE',
    '9296043',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    12.644997,
    51.988278,
    '2024-07-08 15:14:00',
    '2024-07-08 15:23:00',
    '2024-07-08 15:26:00',
    '2024-07-08 15:35:00',
    12,
    1,
    'On time',
    'batch_36',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '914',
    'J716506',
    'IC',
    '9009693',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    12.82693,
    49.312975,
    '2024-07-08 08:09:00',
    '2024-07-08 08:24:00',
    '2024-07-08 08:24:00',
    '2024-07-08 08:39:00',
    15,
    1,
    'On time',
    'batch_9',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '915',
    'J601857',
    'ICE',
    '8842289',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    10.29776,
    49.015111,
    '2024-07-08 16:38:00',
    '2024-07-08 16:48:00',
    '2024-07-08 16:52:00',
    '2024-07-08 17:02:00',
    14,
    1,
    'On time',
    'batch_8',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '916',
    'J498544',
    'ICE',
    '9260074',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    9.219508,
    52.430249,
    '2024-07-08 16:48:00',
    '2024-07-08 16:58:00',
    '2024-07-08 16:57:00',
    '2024-07-08 17:07:00',
    9,
    1,
    'On time',
    'batch_8',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '917',
    'J599867',
    'S',
    '9433849',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    9.649387,
    50.278655,
    '2024-07-08 09:31:00',
    '2024-07-08 09:55:00',
    '2024-07-08 09:41:00',
    '2024-07-08 10:05:00',
    10,
    1,
    'On time',
    'batch_49',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '918',
    'J703727',
    'RE',
    '9320529',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    7.343977,
    50.572827,
    '2024-07-08 15:08:00',
    '2024-07-08 15:38:00',
    '2024-07-08 15:22:00',
    '2024-07-08 15:52:00',
    14,
    1,
    'On time',
    'batch_47',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '919',
    'J131034',
    'RE',
    '8861374',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    8.430311,
    53.928584,
    '2024-07-08 22:54:00',
    '2024-07-08 23:13:00',
    '2024-07-08 23:00:00',
    '2024-07-08 23:19:00',
    6,
    1,
    'On time',
    'batch_26',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '920',
    'J426670',
    'IC',
    '8026738',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    10.023166,
    52.60676,
    '2024-07-08 13:19:00',
    '2024-07-08 13:48:00',
    '2024-07-08 13:26:00',
    '2024-07-08 13:55:00',
    7,
    1,
    'On time',
    'batch_43',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '921',
    'J692156',
    'ICE',
    '9466081',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    9.070329,
    48.90073,
    '2024-07-08 17:54:00',
    '2024-07-08 17:55:00',
    '2024-07-08 17:58:00',
    '2024-07-08 17:59:00',
    4,
    1,
    'On time',
    'batch_30',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '922',
    'J451323',
    'IC',
    '8308377',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    7.460647,
    54.499025,
    '2024-07-08 17:50:00',
    '2024-07-08 18:04:00',
    '2024-07-08 18:04:00',
    '2024-07-08 18:18:00',
    14,
    1,
    'On time',
    'batch_50',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '923',
    'J360956',
    'IC',
    '9224352',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    9.865027,
    54.679449,
    '2024-07-08 10:49:00',
    '2024-07-08 11:10:00',
    '2024-07-08 11:05:00',
    '2024-07-08 11:26:00',
    16,
    1,
    'On time',
    'batch_45',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '924',
    'J120983',
    'S',
    '8950084',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    9.327744,
    54.310016,
    '2024-07-08 03:47:00',
    '2024-07-08 03:58:00',
    '2024-07-08 04:01:00',
    '2024-07-08 04:12:00',
    14,
    1,
    'On time',
    'batch_12',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '925',
    'J480096',
    'ICE',
    '9153064',
    'passenger',
    'Munich-route',
    'Munich Nord',
    'DE',
    'Munich',
    '80331',
    11.453088,
    50.002569,
    '2024-07-08 16:50:00',
    '2024-07-08 16:56:00',
    '2024-07-08 17:09:00',
    '2024-07-08 17:15:00',
    19,
    1,
    'On time',
    'batch_50',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '926',
    'J766862',
    'S',
    '8902983',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    9.619006,
    49.975171,
    '2024-07-08 16:42:00',
    '2024-07-08 16:46:00',
    '2024-07-08 16:50:00',
    '2024-07-08 16:54:00',
    8,
    1,
    'On time',
    'batch_12',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '927',
    'J648143',
    'IC',
    '9821319',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    11.108376,
    53.057244,
    '2024-07-08 05:14:00',
    '2024-07-08 05:27:00',
    '2024-07-08 05:20:00',
    '2024-07-08 05:33:00',
    6,
    1,
    'On time',
    'batch_28',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '928',
    'J946427',
    'ICE',
    '9781326',
    'passenger',
    'Hamburg-route',
    'Hamburg Nord',
    'DE',
    'Hamburg',
    '20095',
    10.646607,
    50.504179,
    '2024-07-08 06:11:00',
    '2024-07-08 06:35:00',
    '2024-07-08 06:16:00',
    '2024-07-08 06:40:00',
    5,
    1,
    'On time',
    'batch_41',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '929',
    'J460681',
    'RE',
    '9845879',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    11.497587,
    54.505962,
    '2024-07-08 20:07:00',
    '2024-07-08 20:24:00',
    '2024-07-08 20:08:00',
    '2024-07-08 20:25:00',
    1,
    1,
    'On time',
    'batch_27',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '930',
    'J752397',
    'S',
    '8110939',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    6.988285,
    49.835691,
    '2024-07-08 16:50:00',
    '2024-07-08 17:11:00',
    '2024-07-08 16:54:00',
    '2024-07-08 17:15:00',
    4,
    1,
    'On time',
    'batch_40',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '931',
    'J446334',
    'ICE',
    '8662175',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    10.912725,
    53.685043,
    '2024-07-08 15:21:00',
    '2024-07-08 15:26:00',
    '2024-07-08 15:24:00',
    '2024-07-08 15:29:00',
    3,
    1,
    'On time',
    'batch_6',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '932',
    'J437786',
    'S',
    '8923101',
    'passenger',
    'Berlin-route',
    'Berlin Nord',
    'DE',
    'Berlin',
    '10115',
    12.306379,
    49.394647,
    '2024-07-08 07:44:00',
    '2024-07-08 07:59:00',
    '2024-07-08 07:48:00',
    '2024-07-08 08:03:00',
    4,
    1,
    'On time',
    'batch_2',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '933',
    'J336685',
    'RE',
    '8133880',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    12.942034,
    49.579302,
    '2024-07-08 16:37:00',
    '2024-07-08 16:51:00',
    '2024-07-08 16:46:00',
    '2024-07-08 17:00:00',
    9,
    1,
    'On time',
    'batch_19',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '934',
    'J346338',
    'IC',
    '9823332',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    6.175548,
    53.466292,
    '2024-07-08 11:10:00',
    '2024-07-08 11:27:00',
    '2024-07-08 11:11:00',
    '2024-07-08 11:28:00',
    1,
    1,
    'On time',
    'batch_25',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '935',
    'J300910',
    'RB',
    '8774302',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    12.696056,
    53.411179,
    '2024-07-08 20:24:00',
    '2024-07-08 20:32:00',
    '2024-07-08 20:42:00',
    '2024-07-08 20:50:00',
    18,
    1,
    'On time',
    'batch_14',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '936',
    'J591358',
    'IC',
    '9628041',
    'passenger',
    'Munich-route',
    'Munich West',
    'DE',
    'Munich',
    '80331',
    10.258225,
    51.68501,
    '2024-07-08 05:18:00',
    '2024-07-08 05:28:00',
    '2024-07-08 05:34:00',
    '2024-07-08 05:44:00',
    16,
    1,
    'On time',
    'batch_43',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '937',
    'J384321',
    'ICE',
    '9531851',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    12.871194,
    54.201316,
    '2024-07-08 23:07:00',
    '2024-07-08 23:24:00',
    '2024-07-08 23:27:00',
    '2024-07-08 23:44:00',
    20,
    1,
    'On time',
    'batch_20',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '938',
    'J731235',
    'ICE',
    '8397041',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    7.265599,
    50.584579,
    '2024-07-08 17:46:00',
    '2024-07-08 17:56:00',
    '2024-07-08 17:46:00',
    '2024-07-08 17:56:00',
    0,
    1,
    'On time',
    'batch_13',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '939',
    'J616710',
    'S',
    '9268442',
    'passenger',
    'Hamburg-route',
    'Hamburg Ost',
    'DE',
    'Hamburg',
    '20095',
    8.24627,
    47.121554,
    '2024-07-08 20:14:00',
    '2024-07-08 20:18:00',
    '2024-07-08 20:19:00',
    '2024-07-08 20:23:00',
    5,
    1,
    'On time',
    'batch_22',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '940',
    'J122955',
    'RB',
    '8802781',
    'passenger',
    'Hamburg-route',
    'Hamburg Ost',
    'DE',
    'Hamburg',
    '20095',
    12.250154,
    48.078022,
    '2024-07-08 23:27:00',
    '2024-07-08 23:33:00',
    '2024-07-08 23:42:00',
    '2024-07-08 23:48:00',
    15,
    1,
    'On time',
    'batch_42',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '941',
    'J729159',
    'RB',
    '9027610',
    'passenger',
    'Hamburg-route',
    'Hamburg Nord',
    'DE',
    'Hamburg',
    '20095',
    9.345066,
    49.688328,
    '2024-07-08 03:54:00',
    '2024-07-08 04:24:00',
    '2024-07-08 04:10:00',
    '2024-07-08 04:40:00',
    16,
    1,
    'On time',
    'batch_45',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '942',
    'J412057',
    'IC',
    '8253216',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    12.156084,
    47.929376,
    '2024-07-08 13:48:00',
    '2024-07-08 13:56:00',
    '2024-07-08 14:00:00',
    '2024-07-08 14:08:00',
    12,
    1,
    'On time',
    'batch_26',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '943',
    'J192216',
    'RE',
    '8265271',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    7.959702,
    49.986314,
    '2024-07-08 13:13:00',
    '2024-07-08 13:36:00',
    '2024-07-08 13:33:00',
    '2024-07-08 13:56:00',
    20,
    1,
    'On time',
    'batch_18',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '944',
    'J711363',
    'S',
    '8538704',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    11.345368,
    49.261773,
    '2024-07-08 17:18:00',
    '2024-07-08 17:45:00',
    '2024-07-08 17:23:00',
    '2024-07-08 17:50:00',
    5,
    1,
    'On time',
    'batch_24',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '945',
    'J590693',
    'RB',
    '9841357',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    10.402809,
    49.249536,
    '2024-07-08 21:44:00',
    '2024-07-08 22:01:00',
    '2024-07-08 21:45:00',
    '2024-07-08 22:02:00',
    1,
    1,
    'On time',
    'batch_44',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '946',
    'J159037',
    'RE',
    '9324321',
    'passenger',
    'Berlin-route',
    'Berlin Nord',
    'DE',
    'Berlin',
    '10115',
    11.357177,
    54.532543,
    '2024-07-08 04:43:00',
    '2024-07-08 04:49:00',
    '2024-07-08 04:47:00',
    '2024-07-08 04:53:00',
    4,
    1,
    'On time',
    'batch_1',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '947',
    'J606954',
    'RE',
    '8153120',
    'passenger',
    'Munich-route',
    'Munich Nord',
    'DE',
    'Munich',
    '80331',
    12.36765,
    51.634834,
    '2024-07-08 20:57:00',
    '2024-07-08 21:13:00',
    '2024-07-08 21:00:00',
    '2024-07-08 21:16:00',
    3,
    1,
    'On time',
    'batch_30',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '948',
    'J575950',
    'IC',
    '8090178',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    8.165211,
    53.018925,
    '2024-07-08 14:20:00',
    '2024-07-08 14:30:00',
    '2024-07-08 14:26:00',
    '2024-07-08 14:36:00',
    6,
    1,
    'On time',
    'batch_36',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '949',
    'J871926',
    'ICE',
    '8729448',
    'passenger',
    'Hamburg-route',
    'Hamburg Ost',
    'DE',
    'Hamburg',
    '20095',
    10.375533,
    54.763651,
    '2024-07-08 13:47:00',
    '2024-07-08 14:08:00',
    '2024-07-08 13:55:00',
    '2024-07-08 14:16:00',
    8,
    1,
    'On time',
    'batch_8',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '950',
    'J758018',
    'RB',
    '9973898',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    7.545644,
    50.417935,
    '2024-07-08 14:54:00',
    '2024-07-08 15:02:00',
    '2024-07-08 14:56:00',
    '2024-07-08 15:04:00',
    2,
    1,
    'On time',
    'batch_26',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '951',
    'J980870',
    'S',
    '9072619',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    12.098795,
    49.718198,
    '2024-07-08 23:46:00',
    '2024-07-09 00:04:00',
    '2024-07-08 23:58:00',
    '2024-07-09 00:16:00',
    12,
    1,
    'On time',
    'batch_17',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '952',
    'J303490',
    'IC',
    '9692623',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    11.378744,
    53.75435,
    '2024-07-08 01:45:00',
    '2024-07-08 02:11:00',
    '2024-07-08 02:01:00',
    '2024-07-08 02:27:00',
    16,
    1,
    'On time',
    'batch_41',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '953',
    'J227149',
    'S',
    '8281089',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    9.273431,
    48.635031,
    '2024-07-08 09:36:00',
    '2024-07-08 09:37:00',
    '2024-07-08 09:44:00',
    '2024-07-08 09:45:00',
    8,
    1,
    'On time',
    'batch_47',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '954',
    'J860208',
    'IC',
    '8503965',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    7.100829,
    51.744981,
    '2024-07-08 23:41:00',
    '2024-07-08 23:47:00',
    '2024-07-08 23:53:00',
    '2024-07-08 23:59:00',
    12,
    1,
    'On time',
    'batch_35',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '955',
    'J825208',
    'RE',
    '8935027',
    'passenger',
    'Hamburg-route',
    'Hamburg Ost',
    'DE',
    'Hamburg',
    '20095',
    7.396758,
    49.025061,
    '2024-07-08 13:33:00',
    '2024-07-08 13:44:00',
    '2024-07-08 13:52:00',
    '2024-07-08 14:03:00',
    19,
    1,
    'On time',
    'batch_36',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '956',
    'J549196',
    'S',
    '9799753',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    8.250029,
    47.722311,
    '2024-07-08 21:50:00',
    '2024-07-08 21:55:00',
    '2024-07-08 21:54:00',
    '2024-07-08 21:59:00',
    4,
    1,
    'On time',
    'batch_16',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '957',
    'J872826',
    'RE',
    '9349711',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    9.504981,
    47.56299,
    '2024-07-08 04:07:00',
    '2024-07-08 04:19:00',
    '2024-07-08 04:09:00',
    '2024-07-08 04:21:00',
    2,
    1,
    'On time',
    'batch_39',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '958',
    'J242564',
    'RB',
    '9700547',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    11.708554,
    47.628047,
    '2024-07-08 06:11:00',
    '2024-07-08 06:24:00',
    '2024-07-08 06:17:00',
    '2024-07-08 06:30:00',
    6,
    1,
    'On time',
    'batch_6',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '959',
    'J904419',
    'S',
    '9143483',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    9.032129,
    51.603265,
    '2024-07-08 16:22:00',
    '2024-07-08 16:23:00',
    '2024-07-08 16:24:00',
    '2024-07-08 16:25:00',
    2,
    1,
    'On time',
    'batch_33',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '960',
    'J207788',
    'S',
    '8770738',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    11.465275,
    51.28121,
    '2024-07-08 16:52:00',
    '2024-07-08 17:12:00',
    '2024-07-08 16:54:00',
    '2024-07-08 17:14:00',
    2,
    1,
    'On time',
    'batch_22',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '961',
    'J670950',
    'RB',
    '9695015',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    12.182576,
    51.36623,
    '2024-07-08 02:04:00',
    '2024-07-08 02:26:00',
    '2024-07-08 02:05:00',
    '2024-07-08 02:27:00',
    1,
    1,
    'On time',
    'batch_42',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '962',
    'J428809',
    'S',
    '9327363',
    'passenger',
    'Berlin-route',
    'Berlin Ost',
    'DE',
    'Berlin',
    '10115',
    9.72955,
    53.454536,
    '2024-07-08 16:16:00',
    '2024-07-08 16:46:00',
    '2024-07-08 16:29:00',
    '2024-07-08 16:59:00',
    13,
    1,
    'On time',
    'batch_27',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '963',
    'J709694',
    'RB',
    '8015306',
    'passenger',
    'Berlin-route',
    'Berlin Nord',
    'DE',
    'Berlin',
    '10115',
    7.862641,
    48.704937,
    '2024-07-08 19:05:00',
    '2024-07-08 19:19:00',
    '2024-07-08 19:07:00',
    '2024-07-08 19:21:00',
    2,
    1,
    'On time',
    'batch_26',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '964',
    'J552464',
    'ICE',
    '9936741',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    8.032437,
    52.693877,
    '2024-07-08 07:49:00',
    '2024-07-08 08:12:00',
    '2024-07-08 08:01:00',
    '2024-07-08 08:24:00',
    12,
    1,
    'On time',
    'batch_5',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '965',
    'J250828',
    'S',
    '9568290',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    11.610058,
    52.803751,
    '2024-07-08 02:33:00',
    '2024-07-08 02:51:00',
    '2024-07-08 02:43:00',
    '2024-07-08 03:01:00',
    10,
    1,
    'On time',
    'batch_25',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '966',
    'J337664',
    'IC',
    '9884037',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    9.925122,
    49.555241,
    '2024-07-08 22:19:00',
    '2024-07-08 22:25:00',
    '2024-07-08 22:19:00',
    '2024-07-08 22:25:00',
    0,
    1,
    'On time',
    'batch_24',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '967',
    'J901505',
    'ICE',
    '9114621',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    11.437317,
    51.69143,
    '2024-07-08 12:31:00',
    '2024-07-08 13:00:00',
    '2024-07-08 12:51:00',
    '2024-07-08 13:20:00',
    20,
    1,
    'On time',
    'batch_48',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '968',
    'J198864',
    'S',
    '9281034',
    'passenger',
    'Hamburg-route',
    'Hamburg Süd',
    'DE',
    'Hamburg',
    '20095',
    9.281705,
    48.938171,
    '2024-07-08 14:13:00',
    '2024-07-08 14:19:00',
    '2024-07-08 14:21:00',
    '2024-07-08 14:27:00',
    8,
    1,
    'On time',
    'batch_3',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '969',
    'J701434',
    'S',
    '8902132',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    10.330543,
    48.42345,
    '2024-07-08 01:45:00',
    '2024-07-08 01:51:00',
    '2024-07-08 01:57:00',
    '2024-07-08 02:03:00',
    12,
    1,
    'On time',
    'batch_19',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '970',
    'J181788',
    'ICE',
    '9704826',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    6.956835,
    49.270249,
    '2024-07-08 18:20:00',
    '2024-07-08 18:37:00',
    '2024-07-08 18:30:00',
    '2024-07-08 18:47:00',
    10,
    1,
    'On time',
    'batch_5',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '971',
    'J846232',
    'S',
    '9231107',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    10.562961,
    49.912891,
    '2024-07-08 02:00:00',
    '2024-07-08 02:21:00',
    '2024-07-08 02:15:00',
    '2024-07-08 02:36:00',
    15,
    1,
    'On time',
    'batch_34',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '972',
    'J627143',
    'RB',
    '9765342',
    'passenger',
    'Munich-route',
    'Munich Hbf',
    'DE',
    'Munich',
    '80331',
    12.971817,
    49.910076,
    '2024-07-08 07:13:00',
    '2024-07-08 07:25:00',
    '2024-07-08 07:21:00',
    '2024-07-08 07:33:00',
    8,
    1,
    'On time',
    'batch_6',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '973',
    'J114136',
    'S',
    '8300657',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    12.966294,
    51.221448,
    '2024-07-08 13:12:00',
    '2024-07-08 13:17:00',
    '2024-07-08 13:32:00',
    '2024-07-08 13:37:00',
    20,
    1,
    'On time',
    'batch_33',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '974',
    'J899361',
    'ICE',
    '9730894',
    'passenger',
    'Hamburg-route',
    'Hamburg West',
    'DE',
    'Hamburg',
    '20095',
    8.378375,
    49.401728,
    '2024-07-08 00:48:00',
    '2024-07-08 00:52:00',
    '2024-07-08 00:49:00',
    '2024-07-08 00:53:00',
    1,
    1,
    'On time',
    'batch_42',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '975',
    'J240324',
    'RB',
    '9445316',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    10.510075,
    47.908048,
    '2024-07-08 11:17:00',
    '2024-07-08 11:42:00',
    '2024-07-08 11:26:00',
    '2024-07-08 11:51:00',
    9,
    1,
    'On time',
    'batch_26',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '976',
    'J118231',
    'ICE',
    '9609441',
    'passenger',
    'Hamburg-route',
    'Hamburg Ost',
    'DE',
    'Hamburg',
    '20095',
    12.324375,
    49.284072,
    '2024-07-08 17:11:00',
    '2024-07-08 17:21:00',
    '2024-07-08 17:16:00',
    '2024-07-08 17:26:00',
    5,
    1,
    'On time',
    'batch_4',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '977',
    'J160439',
    'IC',
    '8662337',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    10.333812,
    54.88637,
    '2024-07-08 07:19:00',
    '2024-07-08 07:38:00',
    '2024-07-08 07:31:00',
    '2024-07-08 07:50:00',
    12,
    1,
    'On time',
    'batch_44',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '978',
    'J345081',
    'RE',
    '8667481',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    10.676858,
    54.345774,
    '2024-07-08 10:31:00',
    '2024-07-08 10:55:00',
    '2024-07-08 10:37:00',
    '2024-07-08 11:01:00',
    6,
    1,
    'On time',
    'batch_2',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '979',
    'J522402',
    'RB',
    '9369748',
    'passenger',
    'Frankfurt-route',
    'Frankfurt West',
    'DE',
    'Frankfurt',
    '60311',
    6.81295,
    53.483682,
    '2024-07-08 21:51:00',
    '2024-07-08 21:59:00',
    '2024-07-08 22:11:00',
    '2024-07-08 22:19:00',
    20,
    1,
    'On time',
    'batch_3',
    'user_10'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '980',
    'J963788',
    'IC',
    '9314655',
    'passenger',
    'Munich-route',
    'Munich Süd',
    'DE',
    'Munich',
    '80331',
    8.191716,
    48.818641,
    '2024-07-08 00:09:00',
    '2024-07-08 00:12:00',
    '2024-07-08 00:09:00',
    '2024-07-08 00:12:00',
    0,
    1,
    'On time',
    'batch_4',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '981',
    'J471819',
    'RB',
    '9697396',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    7.024237,
    51.917102,
    '2024-07-08 14:38:00',
    '2024-07-08 14:44:00',
    '2024-07-08 14:56:00',
    '2024-07-08 15:02:00',
    18,
    1,
    'On time',
    'batch_28',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '982',
    'J221703',
    'ICE',
    '9687795',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    6.072309,
    53.837447,
    '2024-07-08 12:07:00',
    '2024-07-08 12:27:00',
    '2024-07-08 12:07:00',
    '2024-07-08 12:27:00',
    0,
    1,
    'On time',
    'batch_40',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '983',
    'J411865',
    'IC',
    '8717361',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Nord',
    'DE',
    'Frankfurt',
    '60311',
    8.976798,
    51.145409,
    '2024-07-08 22:53:00',
    '2024-07-08 22:59:00',
    '2024-07-08 22:53:00',
    '2024-07-08 22:59:00',
    0,
    1,
    'On time',
    'batch_27',
    'user_7'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '984',
    'J380101',
    'ICE',
    '8664168',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    10.676742,
    50.914531,
    '2024-07-08 03:31:00',
    '2024-07-08 03:48:00',
    '2024-07-08 03:35:00',
    '2024-07-08 03:52:00',
    4,
    1,
    'On time',
    'batch_33',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '985',
    'J652086',
    'IC',
    '8707843',
    'passenger',
    'Cologne-route',
    'Cologne Süd',
    'DE',
    'Cologne',
    '50667',
    7.844664,
    51.697659,
    '2024-07-08 14:56:00',
    '2024-07-08 15:23:00',
    '2024-07-08 15:03:00',
    '2024-07-08 15:30:00',
    7,
    1,
    'On time',
    'batch_46',
    'user_3'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '986',
    'J613290',
    'S',
    '9910389',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    11.154207,
    51.585867,
    '2024-07-08 04:05:00',
    '2024-07-08 04:35:00',
    '2024-07-08 04:05:00',
    '2024-07-08 04:35:00',
    0,
    1,
    'On time',
    'batch_18',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '987',
    'J104543',
    'IC',
    '9634104',
    'passenger',
    'Hamburg-route',
    'Hamburg Nord',
    'DE',
    'Hamburg',
    '20095',
    12.954206,
    50.840317,
    '2024-07-08 14:24:00',
    '2024-07-08 14:37:00',
    '2024-07-08 14:25:00',
    '2024-07-08 14:38:00',
    1,
    1,
    'On time',
    'batch_30',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '988',
    'J165788',
    'ICE',
    '9273691',
    'passenger',
    'Munich-route',
    'Munich West',
    'DE',
    'Munich',
    '80331',
    10.598246,
    54.854567,
    '2024-07-08 06:48:00',
    '2024-07-08 06:50:00',
    '2024-07-08 07:03:00',
    '2024-07-08 07:05:00',
    15,
    1,
    'On time',
    'batch_29',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '989',
    'J941702',
    'IC',
    '9721165',
    'passenger',
    'Cologne-route',
    'Cologne Nord',
    'DE',
    'Cologne',
    '50667',
    12.941027,
    54.636767,
    '2024-07-08 17:19:00',
    '2024-07-08 17:20:00',
    '2024-07-08 17:25:00',
    '2024-07-08 17:26:00',
    6,
    1,
    'On time',
    'batch_43',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '990',
    'J380963',
    'IC',
    '9524252',
    'passenger',
    'Cologne-route',
    'Cologne Hbf',
    'DE',
    'Cologne',
    '50667',
    10.571427,
    48.141062,
    '2024-07-08 23:32:00',
    '2024-07-09 00:01:00',
    '2024-07-08 23:37:00',
    '2024-07-09 00:06:00',
    5,
    1,
    'On time',
    'batch_41',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '991',
    'J282990',
    'RE',
    '8064443',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    8.491574,
    48.597433,
    '2024-07-08 05:25:00',
    '2024-07-08 05:40:00',
    '2024-07-08 05:45:00',
    '2024-07-08 06:00:00',
    20,
    1,
    'On time',
    'batch_33',
    'user_8'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '992',
    'J630578',
    'RB',
    '9326407',
    'passenger',
    'Cologne-route',
    'Cologne West',
    'DE',
    'Cologne',
    '50667',
    11.820641,
    53.484308,
    '2024-07-08 20:16:00',
    '2024-07-08 20:42:00',
    '2024-07-08 20:18:00',
    '2024-07-08 20:44:00',
    2,
    1,
    'On time',
    'batch_9',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '993',
    'J142352',
    'IC',
    '8369079',
    'passenger',
    'Munich-route',
    'Munich Ost',
    'DE',
    'Munich',
    '80331',
    6.364558,
    52.513372,
    '2024-07-08 14:25:00',
    '2024-07-08 14:39:00',
    '2024-07-08 14:30:00',
    '2024-07-08 14:44:00',
    5,
    1,
    'On time',
    'batch_30',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '994',
    'J368659',
    'RB',
    '8974259',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    7.162081,
    51.965169,
    '2024-07-08 08:41:00',
    '2024-07-08 08:49:00',
    '2024-07-08 08:52:00',
    '2024-07-08 09:00:00',
    11,
    1,
    'On time',
    'batch_33',
    'user_4'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '995',
    'J939042',
    'RB',
    '8869123',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Hbf',
    'DE',
    'Frankfurt',
    '60311',
    12.358421,
    48.413316,
    '2024-07-08 18:22:00',
    '2024-07-08 18:50:00',
    '2024-07-08 18:37:00',
    '2024-07-08 19:05:00',
    15,
    1,
    'On time',
    'batch_12',
    'user_1'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '996',
    'J375261',
    'IC',
    '8327627',
    'passenger',
    'Berlin-route',
    'Berlin Hbf',
    'DE',
    'Berlin',
    '10115',
    11.897417,
    48.568694,
    '2024-07-08 23:38:00',
    '2024-07-08 23:58:00',
    '2024-07-08 23:47:00',
    '2024-07-09 00:07:00',
    9,
    1,
    'On time',
    'batch_48',
    'user_6'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '997',
    'J274016',
    'RB',
    '9982981',
    'passenger',
    'Hamburg-route',
    'Hamburg Hbf',
    'DE',
    'Hamburg',
    '20095',
    8.908971,
    53.979183,
    '2024-07-08 15:55:00',
    '2024-07-08 16:16:00',
    '2024-07-08 16:10:00',
    '2024-07-08 16:31:00',
    15,
    1,
    'On time',
    'batch_6',
    'user_5'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '998',
    'J693742',
    'RB',
    '9756497',
    'passenger',
    'Hamburg-route',
    'Hamburg Nord',
    'DE',
    'Hamburg',
    '20095',
    7.670039,
    51.334283,
    '2024-07-08 08:54:00',
    '2024-07-08 08:58:00',
    '2024-07-08 09:14:00',
    '2024-07-08 09:18:00',
    20,
    1,
    'On time',
    'batch_9',
    'user_9'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '999',
    'J261987',
    'IC',
    '9593217',
    'passenger',
    'Frankfurt-route',
    'Frankfurt Ost',
    'DE',
    'Frankfurt',
    '60311',
    7.898131,
    49.006741,
    '2024-07-08 08:44:00',
    '2024-07-08 09:14:00',
    '2024-07-08 08:53:00',
    '2024-07-08 09:23:00',
    9,
    1,
    'On time',
    'batch_28',
    'user_2'
);

INSERT INTO trains (
    id, journey_id, line, eva_nr, category, path, station, state, city, zip_code,
    longitude, latitude, arrival_plan, departure_plan, arrival_change, departure_change,
    delay_m, delay_check, info, upload_batch, uploader_id
) VALUES (
    '1000',
    'J537111',
    'RB',
    '8787888',
    'passenger',
    'Cologne-route',
    'Cologne Ost',
    'DE',
    'Cologne',
    '50667',
    12.134632,
    49.949041,
    '2024-07-08 00:24:00',
    '2024-07-08 00:53:00',
    '2024-07-08 00:33:00',
    '2024-07-08 01:02:00',
    9,
    1,
    'On time',
    'batch_8',
    'user_10'
);

COMMIT;