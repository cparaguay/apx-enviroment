var fecha = new Date();
db.createUser(
    {
      user: "keikurono",
      pwd: "123456",
      roles: [
        { role: "readWrite", db: "BMG_PCTD_HIRING_PROPENSITY_EVENT" },
        {role: "userAdmin" , db:"BMG_PCTD_HIRING_PROPENSITY_EVENT"}
      ]
    }
  );

  db.createCollection("c_pctd_hiring_event");

  db.c_pctd_hiring_event.insert({

    "process_type": "PC",
    "state_id": "Activo",
    "personal_id": "77777775",
    "personal_type": "L",
    "hiring_prpnsy_event_history": [
      {
        "hiring_prpnsy_stage_id": null,
        "hiring_prpnsy_stage_type": "Plantemiento",
        "event_id": "E0030",
        "event_type": "Inicio de la propuesta",
        "hiring_prpnsy_event_regis_desc": {
          "proposal_str": {
            "proposal_id": "35",
            "user_id": "P025490",
            "user_name": "LUIS ALBERTO FLORES CHAVEZ",
            "territory_id": "PE",
            "branch_id": "0212",
            "is_signed": false,
            "creation_date": fecha
          },
          "customer_str": {
            "document_type": "L",
            "document_number": "77777775",
            "is_new": true
          },
          "list_result": [
            {
              "verdict_type": "SUCCESS"
            }
          ]
        },
        "hiring_prpnsy_channel_id": "PC",
        "hiring_prpnsy_attempts_number": "9f60e13c-f43b-430a-9269-08a14ee0fe88",
        "creation_date": fecha,
        "creation_user_id": "P025490"
      },
      {
        "hiring_prpnsy_stage_id": null,
        "hiring_prpnsy_stage_type": "Plantemiento",
        "event_id": "E0032",
        "event_type": "Configuracion de producto",
        "hiring_prpnsy_event_regis_desc": {
          "proposal_str": {
            "user_id": "p025490",
            "is_signed": false,
            "creation_date": fecha,
            "origin": "OFICINA"
          },
          "list_product_ars": [
            {
              "name": "PLD",
              "sub_product_str": {
                "description": "Prestamo libre disponibilidad"
              }
            }
          ],
          "list_result": [
            {
              "verdict_type": "ERROR",
              "list_reason": [
                {
                  "verdict_reason_id": "PPGS00000004",
                  "verdict_reason_desc": "null"
                }
              ]
            }
          ]
        },
        "hiring_prpnsy_channel_id": "PC",
        "hiring_prpnsy_attempts_number": "9f60e13c-f43b-430a-9269-08a14ee0fe88",
        "creation_date": fecha,
        "creation_user_id": "p025490"
      }
    ],
    "hiring_prpnsy_business_id": "9f60e13c-f43b-430a-9269-08a14ee0fe88",
    "creation_date": fecha,
    "creation_user_id": "P025490",
    "user_audit_id": null,
    "audit_date": fecha

});
