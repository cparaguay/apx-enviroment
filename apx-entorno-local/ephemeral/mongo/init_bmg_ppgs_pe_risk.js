 db.createUser(
    {
      user: "keikurono",
      pwd: "123456",
      roles: [
        { role: "readWrite", db: "BMG_PPGS_PE_RISK" },
        {role: "userAdmin" , db:"BMG_PPGS_PE_RISK"}
      ]
    }
  );


  db.createCollection("c_ppgs_risk_users");

  //INSERTANDO 5 REGISTROS
  //Tests postman: 16, 18, 19
  // 25.- BANK.TERRITORIAL Y PERFIL_RIESGO - 5 RESULTADOS
  
  db.c_ppgs_risk_users.insert({
      name  : "Edwin Pomayay Yaranga",
      user_id : "P018543",
      employee_functional_profile_id : "PUC044_0006",
      main_territory_id : "7001",
      record_status_type : "1",
      creation_user_id : "document_title",
      creation_date : "document_title",
      user_audit_id : "document_title",
      audit_date : "document_title"
  
  });
  
  db.c_ppgs_risk_users.insert({
      name  : "Noel Flores Villanueva",
      user_id : "P025522",
      employee_functional_profile_id : "PUC044_0006",
      main_territory_id : "7001",
      record_status_type : "1",
      creation_user_id : "document_title",
      creation_date : "document_title",
      user_audit_id : "document_title",
      audit_date : "document_title"
  
  });
  
  db.c_ppgs_risk_users.insert({
      name  : "Jose Leonarda Canales Barrenechea",
      user_id : "XP62520",
      employee_functional_profile_id : "PUC044_0006",
      main_territory_id : "7001",
      record_status_type : "1",
      creation_user_id : "document_title",
      creation_date : "document_title",
      user_audit_id : "document_title",
      audit_date : "document_title"
  
  });
  
  db.c_ppgs_risk_users.insert({
      name  : "Ximena Chavez",
      user_id : "P029529",
      employee_functional_profile_id : "PUC044_0006",
      main_territory_id : "7001",
      record_status_type : "1",
      creation_user_id : "document_title",
      creation_date : "document_title",
      user_audit_id : "document_title",
      audit_date : "document_title"
  
  });
  
  db.c_ppgs_risk_users.insert({
      name  : "Javier Jose Pizarro Ipanaquename",
      user_id : "P029686",
      employee_functional_profile_id : "PUC044_0006",
      main_territory_id : "7001",
      record_status_type : "1",
      creation_user_id : "document_title",
      creation_date : "document_title",
      user_audit_id : "document_title",
      audit_date : "document_title"
  
  });

  db.c_ppgs_risk_users.insert({
    name  : "David Loyola Bartra",
    user_id : "P025933",
    employee_functional_profile_id : "PUC044_0006",
    main_territory_id : "7001",
    record_status_type : "0",
    creation_user_id : "document_title",
    creation_date : "document_title",
    user_audit_id : "document_title",
    audit_date : "document_title"

});
  
   //INSERTANDO 2 REGISTROS
  //Tests postman: 22.- PERFIL_RIESGO, BRANCH.ID Y BANK.TERRITORIAL - 2 RESULTADOS
  db.c_ppgs_risk_users.insert({
      name  : "Nestor Leonardo Segura Rojas",
      user_id : "P029642",
      employee_functional_profile_id : "PUC044_0005",
      main_territory_id : "7002",
      record_status_type : "1",
      creation_user_id : "document_title",
      creation_date : "document_title",
      user_audit_id : "document_title",
      audit_date : "document_title"
  
  });
  
  db.c_ppgs_risk_users.insert({
      name  : "Fernando Alexander Tito Vallejos",
      user_id : "XP62412",
      employee_functional_profile_id : "PUC044_0005",
      main_territory_id : "7002",
      record_status_type : "1",
      creation_user_id : "document_title",
      creation_date : "document_title",
      user_audit_id : "document_title",
      audit_date : "document_title"
  
  });
  
   //INSERTANDO 1 REGISTROS
  //Tests postman: 23.- PERFIL_RIESGO, ROLE.ID Y BANK.TERRITORIAL - 1 RESULTADOS
  db.c_ppgs_risk_users.insert({
      name  : "Cristhian Dante Paraguay H.",
      user_id : "XP92870",
      employee_functional_profile_id : "PUC044_0004",
      main_territory_id : "7003",
      record_status_type : "1",
      creation_user_id : "document_title",
      creation_date : "document_title",
      user_audit_id : "document_title",
      audit_date : "document_title"
  
  });
  
  // 3 RESULTADOS 24.- PERFIL_RIESGO , BRANCH.ID, ROLE.ID Y BANK.TERRITORIAL - 3 RESULTADOS
  db.c_ppgs_risk_users.insert({
      name  : "Cluny Judith Rojas Barraza",
      user_id : "XP97216",
      employee_functional_profile_id : "PUC044_0003",
      main_territory_id : "7004",
      record_status_type : "1",
      creation_user_id : "document_title",
      creation_date : "document_title",
      user_audit_id : "document_title",
      audit_date : "document_title"
  
  });
  
  db.c_ppgs_risk_users.insert({
      name  : "Renzo Felipe Villavisencio Villanueva",
      user_id : "P026025",
      employee_functional_profile_id : "PUC044_0003",
      main_territory_id : "7004",
      record_status_type : "1",
      creation_user_id : "document_title",
      creation_date : "document_title",
      user_audit_id : "document_title",
      audit_date : "document_title"
  
  });
  
  db.c_ppgs_risk_users.insert({
      name  : "Edgar Gustavo Bajalqui Carrasco",
      user_id : "XP62415",
      employee_functional_profile_id : "PUC044_0003",
      main_territory_id : "7004",
      record_status_type : "1",
      creation_user_id : "document_title",
      creation_date : "document_title",
      user_audit_id : "document_title",
      audit_date : "document_title"
  
  });