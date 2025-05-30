BEGIN Pxkribin

IF ~GlobalTimerNotExpired("potion","LOCALS")~ THEN BEGIN Locked SAY @115
	IF ~~ THEN EXIT
END

IF ~!GlobalTimerNotExpired("potion","LOCALS")~ THEN BEGIN welcome SAY @101
	IF ~!HaveSpell(INQUIS_TRUE_SIGHT) Global("pxkribinn","GLOBAL",1)~ THEN  REPLY @113	DO
		~DisplayStringHead(Myself,@121)
		MakeGlobal()
		ChangeEnemyAlly(Myself,FAMILIAR)
		AddFamiliar()
		SetGlobal("pxkribinn","GLOBAL",2)
		ReallyForceSpellRES("pxflvisi",Myself)~ EXIT
	IF ~HaveSpell(INQUIS_TRUE_SIGHT) Global("pxkrotann","GLOBAL",1)~ THEN  REPLY @113	DO
		~DisplayStringHead(Myself,@121)
		MakeGlobal()
		ChangeEnemyAlly(Myself,FAMILIAR)
		AddFamiliar()
		SetGlobal("pxkrotann","GLOBAL",2)
		ReallyForceSpellRES("pxflvisi",Myself)~ EXIT
	IF ~NumItemsPartyGT("POTN08",0)~ THEN  REPLY @108	DO
      ~TakePartyItemNum("POTN08",1)
	  DestroyItem("POTN08")
	  CreateItem("POTN08",1,0,0)
	  UseItem("POTN08",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2dsoi",0)~ THEN  REPLY @329	DO
      ~TakePartyItemNum("pxl2dsoi",1)
	  DestroyItem("pxl2dsoi")
	  CreateItem("pxl2dsoi",1,0,0)
	  UseItem("pxl2dsoi",Myself)~ EXIT
	IF ~NumItemsPartyGT("POTN52",0)~ THEN  REPLY @152	DO
      ~TakePartyItemNum("POTN52",1)
	  DestroyItem("POTN52")
	  CreateItem("POTN52",1,0,0)
	  UseItem("POTN52",Myself)~ EXIT
	IF ~NumItemsPartyGT("POTN55",0)~ THEN  REPLY @155	DO
      ~TakePartyItemNum("POTN55",1)
	  DestroyItem("POTN55")
	  CreateItem("POTN55",1,0,0)
	  UseItem("POTN55",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2dso2",0)~ THEN  REPLY @301	DO
      ~TakePartyItemNum("pxl2dso2",1)
	  DestroyItem("pxl2dso2")
	  CreateItem("pxl2dso2",1,0,0)
	  UseItem("pxl2dso2",Myself)~ EXIT
	IF ~NumItemsPartyGT("POTN42",0)~ THEN  REPLY @142	DO
      ~TakePartyItemNum("POTN42",1)
	  DestroyItem("POTN42")
	  SetGlobalTimer("potion","LOCALS",90)
	  CreateItem("POTN42",1,0,0)
	  UseItem("POTN42",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2dlar",0)~ THEN  REPLY @313	DO
      ~TakePartyItemNum("pxl2dlar",1)
	  DestroyItem("pxl2dlar")
	  CreateItem("pxl2dlar",1,0,0)
	  UseItem("pxl2dlar",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxpasoin",0)~ THEN  REPLY @314	DO
      ~TakePartyItemNum("pxpasoin",1)
	  DestroyItem("pxpasoin")
	  CreateItem("pxpasoin",1,0,0)
	  UseItem("pxpasoin",Myself)~ EXIT
	IF ~NumItemsPartyGT("potx08",0)~ THEN  REPLY @408	DO
      ~TakePartyItemNum("potx08",1)
	  DestroyItem("potx08")
	  CreateItem("potx08",1,0,0)
	  UseItem("potx08",Myself)~ EXIT	
	IF ~NumItemsPartyGT("POTN44",0)~ THEN  REPLY @144	DO
      ~TakePartyItemNum("POTN44",1)
	  DestroyItem("POTN44")
	  SetGlobalTimer("potion","LOCALS",300)
	  CreateItem("POTN44",1,0,0)
	  UseItem("POTN44",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2df19",0)~ THEN  REPLY @330	DO
      ~TakePartyItemNum("pxl2df19",1)
	  DestroyItem("pxl2df19")
	  SetGlobalTimer("potion","LOCALS",300)
	  CreateItem("pxl2df19",1,0,0)
	  UseItem("pxl2df19",Myself)~ EXIT
	IF ~NumItemsPartyGT("POTN03",0)~ THEN  REPLY @103	DO
      ~TakePartyItemNum("POTN03",1)
	  DestroyItem("POTN03")
	  SetGlobalTimer("potion","LOCALS",300)
	  CreateItem("POTN03",1,0,0)
	  UseItem("POTN03",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2df20",0)~ THEN  REPLY @331	DO
      ~TakePartyItemNum("pxl2df20",1)
	  DestroyItem("pxl2df20")
	  SetGlobalTimer("potion","LOCALS",300)
	  CreateItem("pxl2df20",1,0,0)
	  UseItem("pxl2df20",Myself)~ EXIT
	IF ~NumItemsPartyGT("POTN12",0)~ THEN  REPLY @112	DO
      ~TakePartyItemNum("POTN12",1)
	  DestroyItem("POTN12")
	  SetGlobalTimer("potion","LOCALS",300)
	  CreateItem("POTN12",1,0,0)
	  UseItem("POTN12",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2df21",0)~ THEN  REPLY @332	DO
      ~TakePartyItemNum("pxl2df21",1)
	  DestroyItem("pxl2df21")
	  SetGlobalTimer("potion","LOCALS",300)
	  CreateItem("pxl2df21",1,0,0)
	  UseItem("pxl2df21",Myself)~ EXIT
	IF ~NumItemsPartyGT("POTN04",0)~ THEN  REPLY @104	DO
      ~TakePartyItemNum("POTN04",1)
	  DestroyItem("POTN04")
	  SetGlobalTimer("potion","LOCALS",300)
	  CreateItem("POTN04",1,0,0)
	  UseItem("POTN04",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2df22",0)~ THEN  REPLY @332	DO
      ~TakePartyItemNum("pxl2df22",1)
	  DestroyItem("pxl2df22")
	  SetGlobalTimer("potion","LOCALS",300)
	  CreateItem("pxl2df22",1,0,0)
	  UseItem("pxl2df22",Myself)~ EXIT
	IF ~NumItemsPartyGT("POTN05",0)~ THEN  REPLY @105	DO
      ~TakePartyItemNum("POTN05",1)
	  DestroyItem("POTN05")
	  SetGlobalTimer("potion","LOCALS",300)
	  CreateItem("POTN05",1,0,0)
	  UseItem("POTN05",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2df23",0)~ THEN  REPLY @334	DO
      ~TakePartyItemNum("pxl2df23",1)
	  DestroyItem("pxl2df23")
	  SetGlobalTimer("potion","LOCALS",300)
	  CreateItem("pxl2df23",1,0,0)
	  UseItem("pxl2df23",Myself)~ EXIT
	IF ~NumItemsPartyGT("POTN06",0)~ THEN  REPLY @106	DO
      ~TakePartyItemNum("POTN06",1)
	  DestroyItem("POTN06")
	  SetGlobalTimer("potion","LOCALS",300)
	  CreateItem("POTN06",1,0,0)
	  UseItem("POTN06",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2df24",0)~ THEN  REPLY @335	DO
      ~TakePartyItemNum("pxl2df24",1)
	  DestroyItem("pxl2df24")
	  SetGlobalTimer("potion","LOCALS",300)
	  CreateItem("pxl2df24",1,0,0)
	  UseItem("pxl2df24",Myself)~ EXIT
	IF ~NumItemsPartyGT("POTN07",0)~ THEN  REPLY @107	DO
      ~TakePartyItemNum("POTN07",1)
	  DestroyItem("POTN07")
	  SetGlobalTimer("potion","LOCALS",300)
	  CreateItem("POTN07",1,0,0)
	  UseItem("POTN07",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2df25",0)~ THEN  REPLY @317	DO
      ~TakePartyItemNum("pxl2df25",1)
	  DestroyItem("pxl2df25")
	  SetGlobalTimer("potion","LOCALS",300)
	  CreateItem("pxl2df25",1,0,0)
	  UseItem("pxl2df25",Myself)~ EXIT
	IF ~NumItemsPartyGT("POTN16",0)~ THEN  REPLY @116	DO
      ~TakePartyItemNum("POTN16",1)
	  DestroyItem("POTN16")
	  SetGlobalTimer("potion","LOCALS",3600)
	  CreateItem("POTN16",1,0,0)
	  UseItem("POTN16",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2ech1",0)~ THEN  REPLY @202	DO
      ~TakePartyItemNum("pxl2ech1",1)
	  DestroyItem("pxl2ech1")
	  SetGlobalTimer("potion","LOCALS",150)
	  CreateItem("pxl2ech1",1,0,0)
	  UseItem("pxl2ech1",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2ech2",0)~ THEN  REPLY @203	DO
      ~TakePartyItemNum("pxl2ech2",1)
	  DestroyItem("pxl2ech2")
	  SetGlobalTimer("potion","LOCALS",150)
	  CreateItem("pxl2ech2",1,0,0)
	  UseItem("pxl2ech2",Myself)~ EXIT
	IF ~NumItemsPartyGT("POTN09",0)~ THEN  REPLY @109	DO
      ~TakePartyItemNum("POTN09",1)
	  DestroyItem("POTN09")
	  SetGlobalTimer("potion","LOCALS",300)
	  CreateItem("POTN09",1,0,0)
	  UseItem("POTN09",Myself)~ EXIT
	IF ~NumItemsPartyGT("POTN41",0)~ THEN  REPLY @141	DO
      ~TakePartyItemNum("POTN41",1)
	  DestroyItem("POTN41")
	  SetGlobalTimer("potion","LOCALS",120)
	  CreateItem("POTN41",1,0,0)
	  UseItem("POTN41",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2tord",0)~ THEN  REPLY @210	DO
      ~TakePartyItemNum("pxl2tord",1)
	  DestroyItem("pxl2tord")
	  SetGlobalTimer("potion","LOCALS",300)
	  CreateItem("pxl2tord",1,0,0)
	  UseItem("pxl2tord",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2dcbs",0)~ THEN  REPLY @324	DO
      ~TakePartyItemNum("pxl2dcbs",1)
	  DestroyItem("pxl2dcbs")
	  SetGlobalTimer("potion","LOCALS",300)
	  CreateItem("pxl2dcbs",1,0,0)
	  UseItem("pxl2dcbs",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxpmhero",0)~ THEN  REPLY @316	DO
      ~TakePartyItemNum("pxpmhero",1)
	  DestroyItem("pxpmhero")
	  SetGlobalTimer("potion","LOCALS",300)
	  CreateItem("pxpmhero",1,0,0)
	  UseItem("pxpmhero",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2dvis",0)~ THEN  REPLY @325	DO
      ~TakePartyItemNum("pxl2dvis",1)
	  DestroyItem("pxl2dvis")
	  SetGlobalTimer("potion","LOCALS",150)
	  CreateItem("pxl2dvis",1,0,0)
	  UseItem("pxl2dvis",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2dhat",0)~ THEN  REPLY @306	DO
      ~TakePartyItemNum("pxl2dhat",1)
	  DestroyItem("pxl2dhat")
	  SetGlobalTimer("potion","LOCALS",90)
	  CreateItem("pxl2dhat",1,0,0)
	  UseItem("pxl2dhat",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2dvit",0)~ THEN  REPLY @319	DO
      ~TakePartyItemNum("pxl2dvit",1)
	  DestroyItem("pxl2dvit")
	  SetGlobalTimer("potion","LOCALS",15)
	  CreateItem("pxl2dvit",1,0,0)
	  UseItem("pxl2dvit",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2ppyr",0)~ THEN  REPLY @201	DO
      ~TakePartyItemNum("pxl2ppyr",1)
	  DestroyItem("pxl2ppyr")
	  SetGlobalTimer("potion","LOCALS",60)
	  CreateItem("pxl2ppyr",1,0,0)
	  UseItem("pxl2ppyr",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2vorp",0)~ THEN  REPLY @209	DO
      ~TakePartyItemNum("pxl2vorp",1)
	  DestroyItem("pxl2vorp")
	  SetGlobalTimer("potion","LOCALS",90)
	  CreateItem("pxl2vorp",1,0,0)
	  UseItem("pxl2vorp",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2demo",0)~ THEN  REPLY @327	DO
      ~TakePartyItemNum("pxl2demo",1)
	  DestroyItem("pxl2demo")
	  SetGlobalTimer("potion","LOCALS",90)
	  CreateItem("pxl2demo",1,0,0)
	  UseItem("pxl2demo",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2dpui",0)~ THEN  REPLY @318	DO
      ~TakePartyItemNum("pxl2dpui",1)
	  DestroyItem("pxl2dpui")
	  SetGlobalTimer("potion","LOCALS",150)
	  CreateItem("pxl2dpui",1,0,0)
	  UseItem("pxl2dpui",Myself)~ EXIT
	IF ~NumItemsPartyGT("POTN19",0)~ THEN  REPLY @119	DO
      ~TakePartyItemNum("POTN19",1)
	  DestroyItem("POTN19")
	  SetGlobalTimer("potion","LOCALS",450)
	  CreateItem("POTN19",1,0,0)
	  UseItem("POTN19",Myself)~ EXIT
	IF ~NumItemsPartyGT("POTN28",0)~ THEN  REPLY @128	DO
      ~TakePartyItemNum("POTN28",1)
	  DestroyItem("POTN28")
	  SetGlobalTimer("potion","LOCALS",450)
	  CreateItem("POTN28",1,0,0)
	  UseItem("POTN28",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxparevi",0)~ THEN  REPLY @315	DO
      ~TakePartyItemNum("pxparevi",1)
	  DestroyItem("pxparevi")
	  SetGlobalTimer("potion","LOCALS",300)
	  CreateItem("pxparevi",1,0,0)
	  UseItem("pxparevi",Myself)~ EXIT 
	IF ~NumItemsPartyGT("pxl2dvig",0)~ THEN  REPLY @305	DO
      ~TakePartyItemNum("pxl2dvig",1)
	  DestroyItem("pxl2dvig")
	  SetGlobalTimer("potion","LOCALS",150)
	  CreateItem("pxl2dvig",1,0,0)
	  UseItem("pxl2dvig",Myself)~ EXIT  
	IF ~NumItemsPartyGT("POTN02",0)~ THEN  REPLY @102	DO
      ~TakePartyItemNum("POTN02",1)
	  DestroyItem("POTN02")
	  SetGlobalTimer("potion","LOCALS",300)
	  CreateItem("POTN02",1,0,0)
	  UseItem("POTN02",Myself)~ EXIT
	IF ~NumItemsPartyGT("POTN22",0)~ THEN  REPLY @122	DO
      ~TakePartyItemNum("POTN22",1)
	  DestroyItem("POTN22")
	  SetGlobalTimer("potion","LOCALS",300)
	  CreateItem("POTN22",1,0,0)
	  UseItem("POTN22",Myself)~ EXIT
	IF ~NumItemsPartyGT("POTN31",0)~ THEN  REPLY @131	DO
      ~TakePartyItemNum("POTN31",1)
	  DestroyItem("POTN31")
	  SetGlobalTimer("potion","LOCALS",300)
	  CreateItem("POTN31",1,0,0)
	  UseItem("POTN31",Myself)~ EXIT
	IF ~NumItemsPartyGT("POTN18",0)~ THEN  REPLY @118	DO
      ~TakePartyItemNum("POTN18",1)
	  DestroyItem("POTN18")
	  SetGlobalTimer("potion","LOCALS",300)
	  CreateItem("POTN18",1,0,0)
	  UseItem("POTN18",Myself)~ EXIT
	IF ~NumItemsPartyGT("POTN10",0)~ THEN  REPLY @110	DO
      ~TakePartyItemNum("POTN10",1)
	  DestroyItem("POTN10")
	  CreateItem("POTN10",1,0,0)
	  UseItem("POTN10",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2invm",0)~ THEN  REPLY @204	DO
      ~TakePartyItemNum("pxl2invm",1)
	  DestroyItem("pxl2invm")
	  SetGlobalTimer("potion","LOCALS",180)
	  CreateItem("pxl2invm",1,0,0)
	  UseItem("pxl2invm",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2invm",0)~ THEN  REPLY @204	DO
      ~TakePartyItemNum("pxl2invm",1)
	  DestroyItem("pxl2invm")
	  SetGlobalTimer("potion","LOCALS",180)
	  CreateItem("pxl2invm",1,0,0)
	  UseItem("pxl2invm",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2dcam",0)~ THEN  REPLY @322	DO
      ~TakePartyItemNum("pxl2dcam",1)
	  DestroyItem("pxl2dcam")
	  SetGlobalTimer("potion","LOCALS",60)
	  CreateItem("pxl2dcam",1,0,0)
	  UseItem("pxl2dcam",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2visi",0)~ THEN  REPLY @211	DO
      ~TakePartyItemNum("pxl2visi",1)
	  DestroyItem("pxl2visi")
	  SetGlobalTimer("potion","LOCALS",180)
	  CreateItem("pxl2visi",1,0,0)
	  UseItem("pxl2visi",Myself)~ EXIT
	IF ~NumItemsPartyGT("POTN38",0)~ THEN  REPLY @138	DO
      ~TakePartyItemNum("POTN38",1)
	  DestroyItem("POTN38")
	  SetGlobalTimer("potion","LOCALS",300)
	  CreateItem("POTN38",1,0,0)
	  UseItem("POTN38",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2dcon",0)~ THEN  REPLY @302	DO
      ~TakePartyItemNum("pxl2dcon",1)
	  DestroyItem("pxl2dcon")
	  SetGlobalTimer("potion","LOCALS",300)
	  CreateItem("pxl2dcon",1,0,0)
	  UseItem("pxl2dcon",Myself)~ EXIT
	IF ~NumItemsPartyGT("POTN33",0)~ THEN  REPLY @133	DO
      ~TakePartyItemNum("POTN33",1)
	  DestroyItem("POTN33")
	  SetGlobalTimer("potion","LOCALS",15)
	  CreateItem("POTN33",1,0,0)
	  UseItem("POTN33",Myself)~ EXIT
	IF ~NumItemsPartyGT("POTN34",0)~ THEN  REPLY @134	DO
      ~TakePartyItemNum("POTN34",1)
	  DestroyItem("POTN34")
	  SetGlobalTimer("potion","LOCALS",300)
	  CreateItem("POTN34",1,0,0)
	  UseItem("POTN34",Myself)~ EXIT
	IF ~NumItemsPartyGT("POTN35",0)~ THEN  REPLY @135	DO
      ~TakePartyItemNum("POTN35",1)
	  DestroyItem("POTN35")
	  SetGlobalTimer("potion","LOCALS",90)
	  CreateItem("POTN35",1,0,0)
	  UseItem("POTN35",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2dfee",0)~ THEN  REPLY @304	DO
      ~TakePartyItemNum("pxl2dfee",1)
	  DestroyItem("pxl2dfee")
	  SetGlobalTimer("potion","LOCALS",9)
	  CreateItem("pxl2dfee",1,0,0)
	  UseItem("pxl2dfee",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2ddban",0)~ THEN  REPLY @328	DO
      ~TakePartyItemNum("pxl2ddban",1)
	  DestroyItem("pxl2ddban")
	  SetGlobalTimer("potion","LOCALS",150)
	  CreateItem("pxl2ddban",1,0,0)
	  UseItem("pxl2ddban",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2refl",0)~ THEN  REPLY @208	DO
      ~TakePartyItemNum("pxl2refl",1)
	  DestroyItem("pxl2refl")
	  SetGlobalTimer("potion","LOCALS",300)
	  CreateItem("pxl2refl",1,0,0)
	  UseItem("pxl2refl",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2dref",0)~ THEN  REPLY @321	DO
      ~TakePartyItemNum("pxl2dref",1)
	  DestroyItem("pxl2dref")
	  SetGlobalTimer("potion","LOCALS",150)
	  CreateItem("pxl2dref",1,0,0)
	  UseItem("pxl2dref",Myself)~ EXIT
	IF ~NumItemsPartyGT("POTN24",0)~ THEN  REPLY @124	DO
      ~TakePartyItemNum("POTN24",1)
	  DestroyItem("POTN24")
	  SetGlobalTimer("potion","LOCALS",150)
	  CreateItem("POTN24",1,0,0)
	  UseItem("POTN24",Myself)~ EXIT
	IF ~NumItemsPartyGT("POTN46",0)~ THEN  REPLY @146	DO
      ~TakePartyItemNum("POTN46",1)
	  DestroyItem("POTN46")
	  SetGlobalTimer("potion","LOCALS",150)
	  CreateItem("POTN46",1,0,0)
	  UseItem("POTN46",Myself)~ EXIT
	IF ~NumItemsPartyGT("POTN11",0)~ THEN  REPLY @111	DO
      ~TakePartyItemNum("POTN11",1)
	  DestroyItem("POTN11")
	  SetGlobalTimer("potion","LOCALS",150)
	  CreateItem("POTN11",1,0,0)
	  UseItem("POTN11",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2dinv",0)~ THEN  REPLY @336	DO
      ~TakePartyItemNum("pxl2dinv",1)
	  DestroyItem("pxl2dinv")
	  SetGlobalTimer("potion","LOCALS",150)
	  CreateItem("pxl2dinv",1,0,0)
	  UseItem("pxl2dinv1",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2dfor",0)~ THEN  REPLY @312	DO
      ~TakePartyItemNum("pxl2dfor",1)
	  DestroyItem("pxl2dfor")
	  SetGlobalTimer("potion","LOCALS",150)
	  CreateItem("pxl2dfor",1,0,0)
	  UseItem("pxl2dfor",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2feer",0)~ THEN  REPLY @207	DO
      ~TakePartyItemNum("pxl2feer",1)
	  DestroyItem("pxl2feer")
	  SetGlobalTimer("potion","LOCALS",300)
	  CreateItem("pxl2feer",1,0,0)
	  UseItem("pxl2feer",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2dcob",0)~ THEN  REPLY @326	DO
      ~TakePartyItemNum("pxl2dcob",1)
	  DestroyItem("pxl2dcob")
	  SetGlobalTimer("potion","LOCALS",300)
	  CreateItem("pxl2dcob",1,0,0)
	  UseItem("pxl2dcob",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2ddup",0)~ THEN  REPLY @310	DO
      ~TakePartyItemNum("pxl2ddup",1)
	  DestroyItem("pxl2ddup")
	  SetGlobalTimer("potion","LOCALS",150)
	  CreateItem("pxl2ddup",1,0,0)
	  UseItem("pxl2ddup",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2ddua",0)~ THEN  REPLY @311	DO
      ~TakePartyItemNum("pxl2ddua",1)
	  DestroyItem("pxl2ddua")
	  SetGlobalTimer("potion","LOCALS",150)
	  CreateItem("pxl2ddua",1,0,0)
	  UseItem("pxl2ddua",Myself)~ EXIT
	IF ~NumItemsPartyGT("POTN45",0)~ THEN  REPLY @145	DO
      ~TakePartyItemNum("POTN45",1)
	  DestroyItem("POTN45")
	  SetGlobalTimer("potion","LOCALS",300)
	  CreateItem("POTN45",1,0,0)
	  UseItem("POTN45",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2bonn",0)~ THEN  REPLY @205	DO
      ~TakePartyItemNum("pxl2bonn",1)
	  DestroyItem("pxl2bonn")
	  SetGlobalTimer("potion","LOCALS",120)
	  CreateItem("pxl2bonn",1,0,0)
	  UseItem("pxl2bonn",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2dluk",0)~ THEN  REPLY @320	DO
      ~TakePartyItemNum("pxl2dluk",1)
	  DestroyItem("pxl2dluk")
	  SetGlobalTimer("potion","LOCALS",120)
	  CreateItem("pxl2dluk",1,0,0)
	  UseItem("pxl2dluk",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2dese",0)~ THEN  REPLY @205	DO
      ~TakePartyItemNum("pxl2dese",1)
	  DestroyItem("pxl2dese")
	  CreateItem("pxl2dese",1,0,0)
	  UseItem("pxl2dese",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2dcer",0)~ THEN  REPLY @303	DO
      ~TakePartyItemNum("pxl2dcer",1)
	  DestroyItem("pxl2dcer")
	  SetGlobalTimer("potion","LOCALS",60)
	  CreateItem("pxl2dcer",1,0,0)
	  UseItem("pxl2dcer",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2drep",0)~ THEN  REPLY @307	DO
      ~TakePartyItemNum("pxl2drep",1)
	  DestroyItem("pxl2drep")
	  SetGlobalTimer("potion","LOCALS",150)
	  CreateItem("pxl2drep",1,0,0)
	  UseItem("pxl2drep",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2ddiv",0)~ THEN  REPLY @309	DO
      ~TakePartyItemNum("pxl2ddiv",1)
	  DestroyItem("pxl2ddiv")
	  SetGlobalTimer("potion","LOCALS",300)
	  CreateItem("pxl2ddiv",1,0,0)
	  UseItem("pxl2ddiv",Myself)~ EXIT
	IF ~NumItemsPartyGT("pxl2dcoe",0)~ THEN  REPLY @323	DO
      ~TakePartyItemNum("pxl2dcoe",1)
	  DestroyItem("pxl2dcoe")
	  SetGlobalTimer("potion","LOCALS",60)
	  CreateItem("pxl2dcoe",1,0,0)
	  UseItem("pxl2dcoe",Myself)~ EXIT
	IF ~NumItemsPartyGT("potx01",0)~ THEN  REPLY @401	DO
      ~TakePartyItemNum("potx01",1)
	  DestroyItem("potx01")
	  SetGlobalTimer("potion","LOCALS",450)
	  CreateItem("potx01",1,0,0)
	  UseItem("potx01",Myself)~ EXIT
	IF ~NumItemsPartyGT("potx03",0)~ THEN  REPLY @403	DO
      ~TakePartyItemNum("potx03",1)
	  DestroyItem("potx03")
	  SetGlobalTimer("potion","LOCALS",450)
	  CreateItem("potx01",3,0,0)
	  UseItem("potx03",Myself)~ EXIT
	IF ~NumItemsPartyGT("potx04",0)~ THEN  REPLY @404	DO
      ~TakePartyItemNum("potx04",1)
	  DestroyItem("potx04")
	  SetGlobalTimer("potion","LOCALS",450)
	  CreateItem("potx04",1,0,0)
	  UseItem("potx04",Myself)~ EXIT
	IF ~NumItemsPartyGT("potx06",0)~ THEN  REPLY @406	DO
      ~TakePartyItemNum("potx06",1)
	  DestroyItem("potx06")
	  SetGlobalTimer("potion","LOCALS",450)
	  CreateItem("potx06",1,0,0)
	  UseItem("potx06",Myself)~ EXIT
	IF ~NumItemsPartyGT("potx07",0)~ THEN  REPLY @407	DO
      ~TakePartyItemNum("potx07",1)
	  DestroyItem("potx07")
	  SetGlobalTimer("potion","LOCALS",150)
	  CreateItem("potx07",1,0,0)
	  UseItem("potx07",Myself)~ EXIT
	IF ~~ THEN REPLY @117 EXIT
END