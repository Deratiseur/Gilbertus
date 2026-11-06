BEGIN Pxkgilbe

IF ~NumTimesTalkedTo(0)~ THEN presentation	SAY @501
	IF ~~ THEN REPLY @502 GOTO prix1
	IF ~~ THEN REPLY @503 GOTO semi
	IF ~~ THEN REPLY @504 EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN presentation2	SAY @562
	IF ~~ THEN EXIT
	IF ~PartyGoldGT(19999)~ THEN DO ~TakePartyGold(20000) DestroyGold(20000) SetGlobal("pxkgilber","GLOBAL",3)~ REPLY @563 GOTO deal1
END

IF ~~ THEN prix1	SAY @508
	IF ~PartyGoldGT(19999)~ THEN DO ~TakePartyGold(20000) DestroyGold(20000)~ REPLY @509 GOTO deal1
	IF ~PartyGoldGT(14999) CheckStatGT(LastTalkedToBy,12,CHR)~ THEN DO ~TakePartyGold(15000) DestroyGold(15000)~ REPLY @510 GOTO ok11
	IF ~PartyGoldGT(14999) CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY @510 GOTO nego11
	IF ~PartyGoldGT(9999) CheckStatGT(LastTalkedToBy,18,CHR)~ THEN DO ~TakePartyGold(10000) DestroyGold(10000)~ REPLY @511 GOTO ok12
	IF ~PartyGoldGT(9999) CheckStatLT(LastTalkedToBy,19,CHR)~ THEN REPLY @511 GOTO nego12
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
	IF ~PartyGoldGT(19999)~ THEN DO ~TakePartyGold(20000) DestroyGold(20000)~ REPLY @515 GOTO deal1
	IF ~~ THEN REPLY @516 EXIT
END

IF ~~ THEN nego12	SAY @518
	IF ~PartyGoldGT(19999)~ THEN DO ~TakePartyGold(20000) DestroyGold(20000)~ REPLY @519 GOTO deal1
	IF ~PartyGoldGT(17499)CheckStatGT(LastTalkedToBy,12,CHR)~ THEN DO ~TakePartyGold(17500) DestroyGold(17500)~ REPLY @520 GOTO deal1
	IF ~PartyGoldGT(17499)CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY @520 GOTO nook12
	IF ~PartyGoldGT(12499)~ THEN REPLY @521 GOTO nook11
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
	IF ~PartyGoldGT(19999)~ THEN DO ~TakePartyGold(20000) DestroyGold(20000)~ REPLY @509 GOTO deal1
	IF ~PartyGoldGT(14999) CheckStatGT(LastTalkedToBy,12,CHR)~ THEN DO ~TakePartyGold(15000) DestroyGold(15000)~ REPLY @527 GOTO ok11
	IF ~PartyGoldGT(14999) CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY @527 GOTO nego11
	IF ~PartyGoldGT(8499) CheckStatGT(LastTalkedToBy,18,CHR)~ THEN DO ~TakePartyGold(8500) DestroyGold(8500)~ REPLY @528 GOTO ok13
	IF ~PartyGoldGT(8499) CheckStatLT(LastTalkedToBy,19,CHR)~ THEN REPLY @528 GOTO nook13
	IF ~~ THEN REPLY @529 EXIT
END

IF ~~ THEN deal1	SAY @532
	IF ~~ THEN REPLY @533 DO ~SetGlobal("pxkribinn","GLOBAL",1) SetGlobal("pxkgilber","GLOBAL",1) EscapeArea()~ EXIT
	IF ~GlobalLT("pxkgilber","GLOBAL",2) PartyGoldGT(24999)~ THEN REPLY @534 DO ~SetGlobal("pxkribinn","GLOBAL",1)~ GOTO krotann
END

IF ~~ THEN krotann	SAY @535
	IF ~~ THEN REPLY @536 DO ~SetGlobal("pxkribinn","GLOBAL",1) EscapeArea()~ EXIT
	IF ~~ THEN REPLY @537 GOTO nego21
	IF ~CheckStatGT(LastTalkedToBy,13,INT)~ THEN REPLY @538 GOTO obsidienne
END

IF ~~ THEN nego21	SAY @539
	IF ~PartyGoldLT(25000)~ THEN REPLY @564 DO ~SetGlobal("pxkgilber","GLOBAL",1) EscapeArea()~ EXIT
	IF ~PartyGoldGT(24999)~ THEN REPLY @540 GOTO nook21
	IF ~PartyGoldGT(49999) CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @541 GOTO nego22
	IF ~PartyGoldGT(49999) CheckStatLT(LastTalkedToBy,15,CHR)~ THEN REPLY @541 GOTO nook22
	IF ~PartyGoldGT(74999) CheckStatGT(LastTalkedToBy,16,CHR)~ THEN DO ~TakePartyGold(75000) DestroyGold(75000)~ REPLY @542 GOTO ok21
	IF ~PartyGoldGT(74999) CheckStatLT(LastTalkedToBy,17,CHR)~ THEN REPLY @542 GOTO nook24
	IF ~PartyGoldGT(99999)~ THEN DO ~TakePartyGold(100000) DestroyGold(100000)~ REPLY @543 GOTO deal2
END

IF ~~ THEN obsidienne	SAY @551
	IF ~~ THEN REPLY @552 GOTO obsidienne2
END

IF ~~ THEN obsidienne2	SAY @553
	IF ~PartyGoldGT(99999)~ THEN DO ~TakePartyGold(100000) DestroyGold(100000)~ REPLY @548 GOTO deal2
	IF ~PartyGoldGT(74999) CheckStatGT(LastTalkedToBy,16,CHR)~ THEN DO ~TakePartyGold(75000) DestroyGold(75000)~ REPLY @554 GOTO ok21
	IF ~PartyGoldGT(74999) CheckStatLT(LastTalkedToBy,17,CHR)~ THEN REPLY @554 GOTO nook23
	IF ~PartyGoldGT(64999) CheckStatGT(LastTalkedToBy,15,INT) CheckStatLT(LastTalkedToBy,17,CHR)~ THEN REPLY @555 GOTO nook24
	IF ~PartyGoldGT(64999) CheckStatGT(LastTalkedToBy,15,INT) CheckStatGT(LastTalkedToBy,16,CHR)~ THEN DO ~TakePartyGold(65000) DestroyGold(65000)~ REPLY @555 GOTO ok22
END

IF ~~ THEN nego22	SAY @546
	IF ~PartyGoldGT(74999) CheckStatGT(LastTalkedToBy,16,CHR)~ THEN DO ~TakePartyGold(75000) DestroyGold(75000)~ REPLY @547 GOTO ok21
	IF ~PartyGoldGT(74999) CheckStatLT(LastTalkedToBy,17,CHR)~ THEN REPLY @547 GOTO nook23
	IF ~PartyGoldGT(99999)~ THEN DO ~TakePartyGold(100000) DestroyGold(100000)~ REPLY @548 GOTO deal2
	IF ~~ THEN REPLY @561 EXIT
END

IF ~~ THEN deal2	SAY @560
	IF ~~ THEN DO ~SetGlobal("pxkrotann","GLOBAL",1) EscapeArea()~ EXIT
END