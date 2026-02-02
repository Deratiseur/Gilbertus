/*APPEND JANJ
IF~~ THEN BEGIN pxkri1
SAY @505
END
END

APPEND JAHEIRAJ
IF~~ THEN BEGIN pxkri2
SAY @506	
IF~~ THEN EXTERN Pxkgilbe presentation
END
END

APPEND VICONJ
IF~~ THEN BEGIN pxkri3
SAY @507
END
END
*/
BEGIN Pxkgilbe

IF ~NumTimesTalkedTo(0)~ THEN presentation	SAY @501
	//IF ~IsValidForPartyDialog("Jan")~ THEN EXTERN ~JANJ~ pxkri1
	//IF ~IsValidForPartyDialog("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ pxkri2
	//IF ~IsValidForPartyDialog("Viconia")~ THEN EXTERN ~VICONJ~ pxkri3
	IF ~~ THEN REPLY @502 GOTO prix1
	IF ~~ THEN REPLY @503 GOTO semi
	IF ~~ THEN REPLY @504 EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN presentation2	SAY @562
	IF ~~ THEN EXIT
	IF ~PartyGoldGT(39999)~ THEN DO ~TakePartyGold(40000) DestroyGold(40000) SetGlobal("pxkgilber","GLOBAL",3)~ REPLY @563 GOTO deal1
END

IF ~~ THEN prix1	SAY @508
	IF ~PartyGoldGT(39999)~ THEN DO ~TakePartyGold(40000) DestroyGold(40000)~ REPLY @509 GOTO deal1
	IF ~PartyGoldGT(29999) CheckStatGT(LastTalkedToBy,12,CHR)~ THEN DO ~TakePartyGold(30000) DestroyGold(30000)~ REPLY @510 GOTO ok11
	IF ~PartyGoldGT(29999) CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY @510 GOTO nego11
	IF ~PartyGoldGT(19999) CheckStatGT(LastTalkedToBy,18,CHR)~ THEN DO ~TakePartyGold(20000) DestroyGold(20000)~ REPLY @511 GOTO ok12
	IF ~PartyGoldGT(19999) CheckStatLT(LastTalkedToBy,19,CHR)~ THEN REPLY @511 GOTO nego12
	IF ~~ THEN REPLY @512 EXIT
END

IF ~~ THEN ok11	SAY @513
	IF ~~ THEN GOTO deal1
END

IF ~~ THEN ok12	SAY @517
	IF ~~ THEN GOTO deal1
END

IF ~~ THEN ok13	SAY @530
	IF ~~ THEN GOTO deal1
END

IF ~~ THEN ok21	SAY @550
	IF ~~ THEN GOTO deal2
END

IF ~~ THEN ok22	SAY @557
	IF ~~ THEN REPLY @558 GOTO deal2
END

IF ~~ THEN nego11	SAY @514
	IF ~PartyGoldGT(39999)~ THEN DO ~TakePartyGold(40000) DestroyGold(40000)~ REPLY @515 GOTO deal1
	IF ~~ THEN REPLY @516 EXIT
END

IF ~~ THEN nego12	SAY @518
	IF ~PartyGoldGT(39999)~ THEN DO ~TakePartyGold(40000) DestroyGold(40000)~ REPLY @519 GOTO deal1
	IF ~PartyGoldGT(34999)CheckStatGT(LastTalkedToBy,12,CHR)~ THEN DO ~TakePartyGold(35000) DestroyGold(35000)~ REPLY @520 GOTO deal1
	IF ~PartyGoldGT(34999)CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY @520 GOTO nook12
	IF ~PartyGoldGT(24999)~ THEN REPLY @521 GOTO nook11
	IF ~~ THEN REPLY @522 EXIT
END

IF ~~ THEN nook11	SAY @525
	IF ~~ THEN EXIT
END

IF ~~ THEN nook12	SAY @524
	IF ~~ THEN EXIT
END

IF ~~ THEN nook13	SAY @531
	IF ~~ THEN EXIT
END

IF ~~ THEN nook21	SAY @544
	IF ~~ THEN DO ~SetGlobal("pxkgilber","GLOBAL",1) EscapeArea()~ EXIT
END

IF ~~ THEN nook22	SAY @545
	IF ~~ THEN DO ~SetGlobal("pxkgilber","GLOBAL",1) EscapeArea()~ EXIT
END

IF ~~ THEN nook23	SAY @549
	IF ~~ THEN DO ~SetGlobal("pxkgilber","GLOBAL",1) EscapeArea()~ EXIT
END

IF ~~ THEN nook24	SAY @556
	IF ~~ THEN DO ~SetGlobal("pxkgilber","GLOBAL",1) EscapeArea()~ EXIT
END

IF ~~ THEN semi	SAY @526
	IF ~PartyGoldGT(39999)~ THEN DO ~TakePartyGold(40000) DestroyGold(40000)~ REPLY @509 GOTO deal1
	IF ~PartyGoldGT(29999) CheckStatGT(LastTalkedToBy,12,CHR)~ THEN DO ~TakePartyGold(30000) DestroyGold(30000)~ REPLY @527 GOTO ok11
	IF ~PartyGoldGT(29999) CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY @527 GOTO nego11
	IF ~PartyGoldGT(16999) CheckStatGT(LastTalkedToBy,18,CHR)~ THEN DO ~TakePartyGold(17000) DestroyGold(17000)~ REPLY @528 GOTO ok13
	IF ~PartyGoldGT(16999) CheckStatLT(LastTalkedToBy,19,CHR)~ THEN REPLY @528 GOTO nook13
	IF ~~ THEN REPLY @529 EXIT
END

IF ~~ THEN deal1	SAY @532
	IF ~~ THEN REPLY @533 DO ~SetGlobal("pxkribinn","GLOBAL",1) SetGlobal("pxkgilber","GLOBAL",1) EscapeArea()~ EXIT
	IF ~GlobalLT("pxkgilber","GLOBAL",2)~ THEN REPLY @534 DO ~SetGlobal("pxkribinn","GLOBAL",1)~ GOTO krotann
END

IF ~~ THEN krotann	SAY @535
	IF ~~ THEN REPLY @536 DO ~SetGlobal("pxkribinn","GLOBAL",1) EscapeArea()~ EXIT
	IF ~~ THEN REPLY @537 GOTO nego21
	IF ~CheckStatGT(LastTalkedToBy,13,INT)~ THEN REPLY @538 GOTO obsidienne
END

IF ~~ THEN nego21	SAY @539
	IF ~PartyGoldLT(50000)~ THEN REPLY @564 DO ~SetGlobal("pxkgilber","GLOBAL",1) EscapeArea()~ EXIT
	IF ~PartyGoldGT(49999)~ THEN REPLY @540 GOTO nook21
	IF ~PartyGoldGT(99999) CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @541 GOTO nego22
	IF ~PartyGoldGT(99999) CheckStatLT(LastTalkedToBy,15,CHR)~ THEN REPLY @541 GOTO nook22
	IF ~PartyGoldGT(149999) CheckStatGT(LastTalkedToBy,16,CHR)~ THEN DO ~TakePartyGold(300000) DestroyGold(300000)~ REPLY @542 GOTO ok21
	IF ~PartyGoldGT(149999) CheckStatLT(LastTalkedToBy,17,CHR)~ THEN REPLY @542 GOTO nook24
	IF ~PartyGoldGT(199999)~ THEN DO ~TakePartyGold(200000) DestroyGold(200000)~ REPLY @543 GOTO deal2
END

IF ~~ THEN obsidienne	SAY @551
	IF ~~ THEN REPLY @552 GOTO obsidienne2
END

IF ~~ THEN obsidienne2	SAY @553
	IF ~PartyGoldGT(199999)~ THEN DO ~TakePartyGold(200000) DestroyGold(200000)~ REPLY @548 GOTO deal2
	IF ~PartyGoldGT(149999) CheckStatGT(LastTalkedToBy,16,CHR)~ THEN DO ~TakePartyGold(150000) DestroyGold(150000)~ REPLY @554 GOTO ok21
	IF ~PartyGoldGT(149999) CheckStatLT(LastTalkedToBy,17,CHR)~ THEN REPLY @554 GOTO nook23
	IF ~PartyGoldGT(129999) CheckStatGT(LastTalkedToBy,15,INT) CheckStatLT(LastTalkedToBy,17,CHR)~ THEN REPLY @555 GOTO nook24
	IF ~PartyGoldGT(129999) CheckStatGT(LastTalkedToBy,15,INT) CheckStatGT(LastTalkedToBy,16,CHR)~ THEN DO ~TakePartyGold(130000) DestroyGold(130000)~ REPLY @555 GOTO ok22
END

IF ~~ THEN nego22	SAY @546
	IF ~PartyGoldGT(149999) CheckStatGT(LastTalkedToBy,16,CHR)~ THEN DO ~TakePartyGold(150000) DestroyGold(150000)~ REPLY @547 GOTO ok21
	IF ~PartyGoldGT(149999) CheckStatLT(LastTalkedToBy,17,CHR)~ THEN REPLY @547 GOTO nook23
	IF ~PartyGoldGT(199999)~ THEN DO ~TakePartyGold(200000) DestroyGold(200000)~ REPLY @548 GOTO deal2
	IF ~~ THEN REPLY @561 EXIT
END

IF ~~ THEN deal2	SAY @560
	IF ~~ THEN DO ~SetGlobal("pxkrotann","GLOBAL",1) EscapeArea()~ EXIT
END