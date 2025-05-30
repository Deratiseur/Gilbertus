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
	IF ~PartyGoldGT(79999)~ THEN DO ~TakePartyGold(80000) DestroyGold(80000) SetGlobal("pxkgilber","GLOBAL",3)~ REPLY @563 GOTO deal1
END

IF ~~ THEN prix1	SAY @508
	IF ~PartyGoldGT(79999)~ THEN DO ~TakePartyGold(80000) DestroyGold(80000)~ REPLY @509 GOTO deal1
	IF ~PartyGoldGT(69999) CheckStatGT(LastTalkedToBy,12,CHR)~ THEN DO ~TakePartyGold(70000) DestroyGold(70000)~ REPLY @510 GOTO ok11
	IF ~PartyGoldGT(69999) CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY @510 GOTO nego11
	IF ~PartyGoldGT(59999) CheckStatGT(LastTalkedToBy,16,CHR)~ THEN DO ~TakePartyGold(60000) DestroyGold(60000)~ REPLY @511 GOTO ok12
	IF ~PartyGoldGT(59999) CheckStatLT(LastTalkedToBy,17,CHR)~ THEN REPLY @511 GOTO nego12
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
	IF ~PartyGoldGT(79999)~ THEN DO ~TakePartyGold(80000) DestroyGold(80000)~ REPLY @515 GOTO deal1
	IF ~~ THEN REPLY @516 EXIT
END

IF ~~ THEN nego12	SAY @518
	IF ~PartyGoldGT(79999)~ THEN DO ~TakePartyGold(80000) DestroyGold(80000)~ REPLY @519 GOTO deal1
	IF ~PartyGoldGT(74999)CheckStatGT(LastTalkedToBy,12,CHR)~ THEN DO ~TakePartyGold(75000) DestroyGold(75000)~ REPLY @520 GOTO deal1
	IF ~PartyGoldGT(74999)CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY @520 GOTO nook12
	IF ~PartyGoldGT(64999)~ THEN REPLY @521 GOTO nook11
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
	IF ~PartyGoldGT(79999)~ THEN DO ~TakePartyGold(80000) DestroyGold(80000)~ REPLY @509 GOTO deal1
	IF ~PartyGoldGT(69999) CheckStatGT(LastTalkedToBy,12,CHR)~ THEN DO ~TakePartyGold(70000) DestroyGold(70000)~ REPLY @527 GOTO ok11
	IF ~PartyGoldGT(69999) CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY @527 GOTO nego11
	IF ~PartyGoldGT(54999) CheckStatGT(LastTalkedToBy,18,CHR)~ THEN DO ~TakePartyGold(55000) DestroyGold(55000)~ REPLY @528 GOTO ok13
	IF ~PartyGoldGT(54999) CheckStatLT(LastTalkedToBy,19,CHR)~ THEN REPLY @528 GOTO nook13
	IF ~~ THEN REPLY @529 EXIT
END

IF ~~ THEN deal1	SAY @532
	IF ~~ THEN REPLY @533 DO ~SetGlobal("pxkribinn","GLOBAL",1) SetGlobal("pxkgilber","GLOBAL",1) EscapeArea()~ EXIT
	IF ~GlobalLT("pxkgilber","GLOBAL",2) PartyGoldGT(999999)~ THEN REPLY @534 DO ~SetGlobal("pxkribinn","GLOBAL",1)~ GOTO krotann
END

IF ~~ THEN krotann	SAY @535
	IF ~~ THEN REPLY @536 DO ~SetGlobal("pxkribinn","GLOBAL",1) EscapeArea()~ EXIT
	IF ~~ THEN REPLY @537 GOTO nego21
	IF ~CheckStatGT(LastTalkedToBy,13,INT)~ THEN REPLY @538 GOTO obsidienne
END

IF ~~ THEN nego21	SAY @539
	IF ~PartyGoldGT(999999)~ THEN REPLY @540 GOTO nook21
	IF ~PartyGoldGT(199999) CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @541 GOTO nego22
	IF ~PartyGoldGT(199999) CheckStatLT(LastTalkedToBy,15,CHR)~ THEN REPLY @541 GOTO nook22
	IF ~PartyGoldGT(299999) CheckStatGT(LastTalkedToBy,16,CHR)~ THEN DO ~TakePartyGold(300000) DestroyGold(300000)~ REPLY @542 GOTO ok21
	IF ~PartyGoldGT(299999) CheckStatLT(LastTalkedToBy,17,CHR)~ THEN REPLY @542 GOTO nook24
	IF ~PartyGoldGT(399999)~ THEN DO ~TakePartyGold(400000) DestroyGold(400000)~ REPLY @543 GOTO deal2
END

IF ~~ THEN obsidienne	SAY @551
	IF ~~ THEN REPLY @552 GOTO obsidienne2
END

IF ~~ THEN obsidienne2	SAY @553
	IF ~PartyGoldGT(399999)~ THEN DO ~TakePartyGold(400000) DestroyGold(400000)~ REPLY @548 GOTO deal2
	IF ~PartyGoldGT(299999) CheckStatGT(LastTalkedToBy,16,CHR)~ THEN DO ~TakePartyGold(300000) DestroyGold(300000)~ REPLY @554 GOTO ok21
	IF ~PartyGoldGT(299999) CheckStatLT(LastTalkedToBy,17,CHR)~ THEN REPLY @554 GOTO nook23
	IF ~PartyGoldGT(249999) CheckStatGT(LastTalkedToBy,15,INT) CheckStatLT(LastTalkedToBy,17,CHR)~ THEN REPLY @555 GOTO nook24
	IF ~PartyGoldGT(249999) CheckStatGT(LastTalkedToBy,15,INT) CheckStatGT(LastTalkedToBy,16,CHR)~ THEN DO ~TakePartyGold(250000) DestroyGold(250000)~ REPLY @555 GOTO ok22
END

IF ~~ THEN nego22	SAY @546
	IF ~PartyGoldGT(299999) CheckStatGT(LastTalkedToBy,16,CHR)~ THEN DO ~TakePartyGold(300000) DestroyGold(300000)~ REPLY @547 GOTO ok21
	IF ~PartyGoldGT(299999) CheckStatLT(LastTalkedToBy,17,CHR)~ THEN REPLY @547 GOTO nook23
	IF ~PartyGoldGT(399999)~ THEN DO ~TakePartyGold(400000) DestroyGold(400000)~ REPLY @548 GOTO deal2
	IF ~~ THEN REPLY @561 EXIT
END

IF ~~ THEN deal2	SAY @560
	IF ~~ THEN DO ~SetGlobal("pxkrotann","GLOBAL",1) EscapeArea()~ EXIT
END