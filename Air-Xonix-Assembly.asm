.model small
.stack 100h
.data

game_name db 'A  I  R      X  O  N  I  X$'
textEnter byte "Press enter to continue...",'$'
enterName byte "Enter the name of the user with .",'$'
userInputName db 200
sizee dw 0
str3 db 10,13,"$"
emptyBox db  "--------------------------------$"
emptySideL db ">>>>>>$"
emptySideR DB "<<<<<<$"

StartGame db 'S T A R T  G A M E$'
SelectLevel db 'S E L E C T  L E V E L$'
Highscore db ' H I G H S C O R E$'
Information db 'I N F O R M A T I O N$'
Options db ' O P T I O N S$'
Exitt db ' E X I T$'

selectLevelText db 'S E L E C T  L E V E L$'
Level db 'STAGE$'
one db '1$'
two db '2$'
; hovering
stageOne_Button db 10000011b
stageTwo_Button db 00000011b
;cursor db 1

optionsText db 'O P T I O N S$'

; for hovering options wala page
ControlSettingsButton db 10000011b
GraphicSettingsButton db 00000011b
AccessibilityButton db 00000011b
AccountSettingsButton db 00000011b
CreditsButton db 00000011b
HelpsupportButton db 00000011b

; text on boxes
Control db 'C O N T R O L$'
Graphic db 'G R A P H I C S$'
Settings db 'S E T T I N G S$'
Accessibility db ' U S A B I L I T Y$'
Account db 'A C C O U N T$'
Game db 'G A M E$'

Credits db 'C R E D I T S$'
creditsText db 'C R E D I T S $'
textutext1 db "Introducing Aiman, Maheen, and Talha - $"
textutext2 db "the masterminds behind Air Xonix,$"
textutext3 db "the game that's got us all hooked!$"
textutext4 db "These three have combined their love for gaming,$" 
textutext5 db "coding, and witty banter to create a game that's more addictive $"
textutext6 db "than caffeine, chocolate, and even TikTok (okay, maybe not TikTok).$" 
textutext7 db "They may not have questionable haircuts,$"
textutext8 db "but they sure know how to make us laugh while we play!$"

Helpsupport db 'S U P P O R T$'

;===================================================                * HIGHSCORE KA DATA *          ==============================================================

hsText db 'H I G H      S C O R E$'
player db "Player Name : $"
hs db "High Score  : $"

;===================================================                * RULES/INSTRUCTIONS KA DATA *          ==============================================================

rulesText db 'R U L E S$'
doubleline db '==============================$'
arrow db '>>>$'
rule1 db 'The playing field will be displayed as a grid of squares, & the                 player will start in the center of the grid. $'
rule2 db 'The player must cut off parts of the playing field by moving the                spaceship around the grid and drawing lines.$'
rule3 db 'The lines will become walls that block the enemies and reduce                   the size of the playing field.$' 
rule4 db 'As the player cuts off more of the playing field, power-ups &                   bonuses will be revealed.$'
rule5 db 'If the player spaceship is hit by an enemy bullet or collides                   with an enemy spaceship they will lose a life.$'
rule6 db 'The player must cut off at least half of the playing field to                   progress to the next level.$'



;===================================================                * FOR HOVERING MAIN MENU BUTTONS *          ==============================================================

StartGameButton db 10000011b
SelectLevelButton db 00000011b
HighscoreButton db 00000011b
InformationButton db 00000011b
OptionsButton db 00000011b
ExittButton db 00000011b
cursor db 1

;===================================================                * LEVEL OVER KA DATA *          ==============================================================
 
win_display db 'Y O U  W O N !$'
loss_display db 'Y O U  L O S T !$'
game_name2 db '<< A I R   X O N I X  >>$'
win_status db 1
textEnter2 db 'Press enter to continue to main menu...$'
currScoretext db "Your Score: $"

wid word 0
hgt word 0

;------------------------------------------------------------------------------------------------------------------------------------------------------------;
;                                                                    *GAME K CHARACTERS INITIALISED*                                                                       ;
;------------------------------------------------------------------------------------------------------------------------------------------------------------;

Urankhatola_sprite  db 0000,0000,0000,0000,0000,0000,0000,0000,0015,0015,0000,0000,0000,0000,0000,0000,0000,0000
					db 0000,0000,0000,0000,0000,0000,0000,0015,0007,0007,0015,0000,0000,0000,0000,0000,0000,0000
					db 0000,0000,0000,0000,0000,0000,0015,0007,0007,0007,0007,0015,0000,0000,0000,0000,0000,0000
					db 0000,0000,0000,0000,0000,0001,0001,0001,0001,0001,0001,0001,0001,0000,0000,0000,0000,0000
					db 0000,0000,0000,0000,0001,0001,0009,0009,0009,0009,0009,0009,0001,0001,0000,0000,0000,0000
					db 0000,0000,0000,0001,0001,0009,0009,0009,0009,0009,0009,0009,0009,0001,0001,0000,0000,0000
					db 0000,0000,0001,0001,0009,0009,0009,0009,0009,0009,0009,0009,0009,0009,0001,0001,0000,0000
					db 0000,0001,0001,0009,0009,0009,0009,0008,0008,0008,0008,0009,0009,0009,0009,0001,0001,0000
					db 0001,0001,0009,0009,0009,0009,0008,0008,0015,0015,0008,0008,0009,0009,0009,0009,0001,0001
					db 0001,0009,0009,0009,0009,0008,0008,0015,0015,0015,0015,0008,0008,0009,0009,0009,0009,0001
					db 0001,0009,0009,0009,0009,0008,0008,0015,0015,0015,0015,0008,0008,0009,0009,0009,0009,0001
					db 0001,0009,0009,0009,0009,0008,0008,0015,0015,0015,0015,0008,0008,0009,0009,0009,0009,0001
					db 0001,0009,0009,0009,0009,0009,0008,0008,0015,0015,0008,0008,0009,0009,0009,0009,0009,0001
					db 0001,0009,0009,0009,0009,0009,0009,0008,0008,0008,0008,0009,0009,0009,0009,0009,0009,0001
					db 0001,0001,0009,0009,0009,0009,0009,0009,0009,0009,0009,0009,0009,0009,0009,0009,0001,0001
					db 0000,0001,0001,0009,0009,0009,0009,0009,0009,0009,0009,0009,0009,0009,0009,0001,0001,0000
					db 0000,0000,0001,0001,0009,0009,0009,0009,0009,0009,0009,0009,0009,0009,0001,0001,0000,0000
					db 0000,0000,0000,0001,0001,0009,0009,0009,0009,0009,0009,0009,0009,0001,0001,0000,0000,0000
					db 0000,0000,0000,0000,0001,0001,0009,0009,0009,0009,0009,0009,0001,0001,0000,0000,0000,0000
					db 0000,0000,0000,0000,0000,0001,0001,0009,0009,0009,0009,0001,0001,0000,0000,0000,0000,0000
					db 0000,0000,0001,0001,0001,0001,0001,0001,0001,0001,0001,0001,0001,0001,0001,0001,0000,0000
					db 0000,0000,0001,0001,0001,0001,0000,0000,0007,0007,0000,0000,0001,0001,0001,0001,0000,0000
					db 0000,0000,0001,0001,0000,0000,0000,0008,0008,0008,0008,0000,0000,0000,0001,0001,0000,0000
					db 0000,0000,0001,0001,0000,0000,0008,0008,0008,0008,0008,0008,0000,0000,0001,0001,0000,0000
					db 0000,0000,0001,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0001,0000,0000  
					db 0000,0000,0001,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0001,0000,0000

Urankhatola_spriteX word 73                                
Urankhatola_spriteY word 136                           
Urankhatola_spriteSteps word 42                            
Urankhatola_spriteDelayCounter word 3
Urankhatola_spritekill db 0
Urankhatola_spriteFlag db 0   


; this will be bonus
chimichanga db 0000, 0000, 0000, 0000, 0000, 043, 043, 043, 043, 043, 043, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
			db 0000, 0000, 0000, 043, 043, 043, 043, 043, 043, 043, 006, 043, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
			db 0000, 0000, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
			db 0000, 043, 043, 043, 043, 006, 043, 043, 043, 043, 043, 043, 043, 043, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
			db 0000, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
			db 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
			db 006, 043, 043, 043, 043, 006, 043, 043, 006, 043, 043, 043, 043, 043, 043, 043, 043,0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
			db 006, 006, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 006, 043, 043, 043, 043, 0000, 0000, 0000, 0000, 0000, 0000, 0000
			db 043, 043, 006, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 0000, 0000, 0000, 0000, 0000, 0000
			db 043, 006, 043, 006, 006, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 0000, 0000, 0000, 0000, 0000
			db 0000, 043, 043, 043, 043, 006, 006, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 0000, 0000, 0000, 0000
			db 0000, 0000, 043, 043, 043, 043, 043, 006, 006, 006, 043, 043, 006, 043, 043, 043, 043, 006, 043, 043, 043, 043, 0000, 0000, 0000
			db 0000, 0000, 0000, 043, 043, 043, 043, 043, 043, 043, 006, 006, 006, 006, 006, 006, 043, 004, 012, 002, 012, 010, 014, 0000, 0000
			db 0000, 0000, 0000, 0000, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 043, 004, 010, 002, 002, 014, 014, 015, 010, 0000
			db 0000, 0000, 0000, 0000, 0000, 043, 043, 043, 006, 043, 043, 043, 043, 043, 006, 043, 002, 014, 007, 014, 014, 015, 010, 000, 000
			db 0000, 0000, 0000, 0000, 0000, 0000, 043, 043, 043, 043, 043, 043, 043, 043, 043, 010, 010, 012, 004, 014, 014, 015, 010, 000, 043
			db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 043, 043, 043, 043, 006, 043, 043, 010, 004, 012, 002, 014, 014, 015, 002, 000, 000, 043
			db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 043, 043, 043, 043, 043, 043, 002, 010, 014, 002, 014, 015, 002, 000, 000, 043, 0000
			db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 043, 043, 043, 043, 043, 010, 014, 014, 015, 010, 002, 006, 000, 043, 0000, 0000
			db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 043, 043, 043, 043, 010, 010, 014, 002, 006, 000, 000, 043, 0000, 0000, 0000
			db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 043, 043, 043, 002, 002, 002, 006, 000, 000, 043, 0000, 0000, 0000, 0000
			db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 043, 043, 043, 006, 000, 000, 043, 043, 0000, 0000, 0000, 0000, 0000
			db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 043, 043, 043, 043, 0000, 0000, 0000, 0000, 0000, 0000, 0000

;spce ship array 
ship    DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  0
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  1
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  2
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  3
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  4
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  5
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  6
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  7
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  8
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  9
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 10
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 11
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 12
        DB 00h,00h,08h,08h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 13
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 14
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,08h,08h,00h,00h     ; 15
        DB 00h,00h,00h,00h,08h,07h,08h,00h,00h,00h,00h,00h,00h,00h,00h     ; 16
        DB 00h,00h,00h,00h,00h,00h,00h,00h,05h,08h,08h,08h,05h,00h,00h     ; 17
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,07h     ; 18
        DB 07h,03h,00h,00h,00h,00h,00h,00h,08h,08h,00h,00h,00h,00h,00h     ; 19
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,05h,07h,0Fh,07h     ; 20
        DB 05h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 21
        DB 00h,00h,08h,08h,00h,00h,00h,00h,00h,04h,04h,04h,04h,04h,00h     ; 22
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,05h     ; 23
        DB 08h,07h,08h,05h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 24
        DB 00h,00h,00h,00h,04h,04h,04h,04h,04h,00h,00h,00h,04h,04h,06h     ; 25
        DB 06h,04h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 26
        DB 00h,05h,05h,05h,05h,05h,05h,05h,00h,00h,00h,00h,00h,00h,00h     ; 27
        DB 00h,00h,00h,00h,00h,00h,00h,04h,06h,06h,04h,04h,00h,00h,00h     ; 28
        DB 04h,06h,06h,06h,04h,00h,00h,00h,00h,00h,00h,00h,00h,00h,05h     ; 29
        DB 06h,06h,05h,05h,05h,08h,03h,03h,03h,05h,05h,00h,05h,06h,06h     ; 30
        DB 05h,00h,00h,00h,00h,00h,00h,00h,00h,00h,04h,06h,06h,06h,04h     ; 31
        DB 00h,00h,00h,04h,06h,06h,06h,04h,00h,00h,00h,00h,00h,00h,00h     ; 32
        DB 00h,05h,06h,06h,06h,06h,05h,05h,03h,03h,03h,03h,03h,05h,05h     ; 33
        DB 06h,06h,06h,06h,05h,00h,00h,00h,00h,00h,00h,00h,00h,04h,06h     ; 34
        DB 06h,06h,04h,00h,00h,00h,04h,04h,08h,06h,04h,00h,00h,00h,00h     ; 35
        DB 00h,00h,00h,00h,05h,06h,06h,06h,06h,05h,05h,09h,09h,09h,09h     ; 36
        DB 09h,05h,05h,06h,06h,06h,06h,05h,00h,00h,00h,00h,00h,00h,00h     ; 37
        DB 00h,04h,06h,06h,04h,04h,00h,00h,00h,08h,04h,07h,08h,08h,08h     ; 38
        DB 00h,00h,00h,00h,00h,00h,05h,06h,06h,06h,06h,06h,06h,05h,09h     ; 39
        DB 09h,09h,09h,09h,05h,06h,06h,06h,06h,06h,06h,00h,00h,00h,00h     ; 40
        DB 00h,00h,00h,08h,04h,08h,07h,04h,04h,00h,00h,00h,08h,08h,08h     ; 41
        DB 08h,07h,08h,08h,00h,00h,00h,00h,00h,00h,06h,0Eh,0Eh,0Eh,0Eh     ; 42
        DB 06h,00h,01h,01h,01h,01h,01h,05h,06h,0Eh,0Eh,0Eh,0Eh,06h,00h     ; 43
        DB 00h,00h,00h,00h,03h,08h,08h,07h,08h,08h,08h,08h,00h,00h,00h     ; 44
        DB 07h,07h,07h,0Fh,0Fh,08h,08h,08h,08h,08h,00h,00h,00h,06h,07h     ; 45
        DB 07h,07h,06h,06h,05h,05h,05h,05h,05h,05h,05h,06h,06h,07h,07h     ; 46
        DB 07h,06h,00h,00h,08h,08h,08h,08h,08h,08h,07h,0Fh,07h,07h,08h     ; 47
        DB 00h,00h,00h,07h,07h,07h,0Fh,0Fh,08h,08h,08h,08h,08h,08h,01h     ; 48
        DB 00h,05h,07h,0Fh,0Fh,07h,05h,08h,05h,05h,05h,05h,05h,08h,05h     ; 49
        DB 07h,0Fh,0Fh,07h,05h,08h,08h,08h,08h,08h,08h,08h,08h,0Fh,0Fh     ; 50
        DB 07h,07h,08h,00h,00h,00h,07h,07h,07h,07h,07h,00h,00h,00h,08h     ; 51
        DB 08h,07h,08h,08h,08h,08h,08h,08h,05h,01h,08h,05h,05h,05h,05h     ; 52
        DB 05h,08h,09h,05h,08h,08h,08h,08h,08h,08h,08h,08h,08h,00h,00h     ; 53
        DB 03h,07h,07h,07h,07h,08h,00h,00h,00h,08h,08h,08h,07h,08h,00h     ; 54
        DB 00h,00h,00h,00h,08h,08h,08h,08h,08h,05h,05h,05h,01h,05h,05h     ; 55
        DB 05h,05h,05h,05h,05h,01h,05h,05h,05h,08h,08h,08h,08h,08h,00h     ; 56
        DB 00h,00h,00h,00h,07h,07h,08h,08h,08h,00h,00h,00h,08h,08h,08h     ; 57
        DB 08h,08h,00h,00h,00h,00h,00h,08h,00h,00h,08h,08h,05h,05h,05h     ; 58
        DB 05h,05h,05h,04h,05h,04h,05h,05h,08h,05h,05h,05h,08h,08h,00h     ; 59
        DB 00h,08h,00h,00h,00h,00h,00h,08h,08h,08h,08h,08h,00h,00h,00h     ; 60
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,08h,00h,00h,00h,05h     ; 61
        DB 05h,05h,05h,05h,05h,05h,04h,04h,04h,05h,05h,08h,05h,05h,05h     ; 62
        DB 01h,00h,00h,00h,08h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 63
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,07h,00h     ; 64
        DB 00h,00h,05h,05h,05h,05h,04h,05h,05h,04h,04h,04h,05h,05h,08h     ; 65
        DB 05h,05h,05h,05h,00h,00h,00h,08h,00h,00h,00h,00h,00h,00h,00h     ; 66
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 67
        DB 00h,08h,04h,00h,00h,05h,05h,04h,05h,04h,05h,05h,04h,00h,04h     ; 68
        DB 05h,05h,08h,05h,00h,05h,05h,00h,00h,04h,08h,00h,00h,00h,00h     ; 69
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 70
        DB 00h,00h,00h,06h,06h,06h,00h,00h,05h,04h,04h,05h,04h,00h,05h     ; 71
        DB 00h,01h,04h,05h,00h,08h,05h,04h,04h,05h,00h,00h,06h,06h,06h     ; 72
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 73
        DB 00h,00h,00h,00h,00h,00h,08h,06h,06h,04h,00h,00h,00h,04h,04h     ; 74
        DB 06h,00h,05h,00h,01h,00h,05h,04h,08h,04h,00h,00h,00h,00h,04h     ; 75
        DB 06h,06h,08h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 76
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,07h,06h,06h,08h,08h,08h     ; 77
        DB 04h,00h,04h,06h,00h,05h,04h,01h,05h,05h,00h,07h,04h,00h,04h     ; 78
        DB 08h,08h,06h,06h,06h,08h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 79
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,04h,00h     ; 80
        DB 08h,08h,08h,08h,05h,04h,06h,04h,04h,04h,04h,04h,04h,04h,06h     ; 81
        DB 04h,08h,08h,08h,08h,08h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 82
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 83
        DB 00h,04h,00h,07h,08h,07h,07h,08h,04h,06h,04h,08h,05h,05h,05h     ; 84
        DB 08h,04h,06h,04h,08h,07h,07h,08h,07h,00h,04h,00h,00h,00h,00h     ; 85
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 86
        DB 00h,00h,00h,00h,00h,00h,05h,05h,08h,07h,08h,04h,06h,05h,03h     ; 87
        DB 05h,0Dh,05h,08h,05h,06h,04h,07h,07h,08h,05h,05h,00h,00h,00h     ; 88
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 89
        DB 00h,0Eh,00h,00h,0Fh,0Fh,0Fh,0Fh,08h,05h,05h,05h,04h,04h,06h     ; 90
        DB 04h,09h,09h,05h,0Dh,05h,09h,09h,04h,06h,04h,04h,05h,05h,05h     ; 91
        DB 07h,0Fh,0Fh,0Fh,0Eh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 92
        DB 00h,00h,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,08h,08h,08h,08h,05h,05h,05h     ; 93
        DB 04h,04h,06h,05h,09h,09h,05h,0Dh,05h,09h,09h,04h,06h,04h,05h     ; 94
        DB 05h,05h,05h,08h,08h,08h,08h,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,00h,00h     ; 95
        DB 00h,00h,00h,00h,0Fh,0Fh,08h,00h,06h,08h,08h,08h,08h,08h,08h     ; 96
        DB 08h,05h,05h,04h,07h,07h,05h,08h,08h,05h,0Dh,05h,08h,08h,05h     ; 97
        DB 07h,07h,05h,05h,05h,07h,08h,08h,08h,08h,08h,08h,08h,00h,08h     ; 98
        DB 0Fh,0Eh,00h,00h,00h,00h,0Fh,0Fh,08h,01h,00h,00h,01h,06h,00h     ; 99
        DB 00h,00h,05h,08h,05h,05h,07h,07h,07h,05h,07h,07h,05h,0Dh,05h     ;100
        DB 07h,07h,05h,07h,07h,07h,05h,05h,08h,01h,00h,00h,00h,04h,01h     ;101
        DB 00h,00h,01h,08h,0Fh,0Fh,00h,00h,00h,0Fh,08h,01h,01h,00h,00h     ;102
        DB 00h,05h,05h,05h,09h,05h,08h,05h,07h,07h,07h,07h,05h,07h,07h     ;103
        DB 05h,05h,05h,07h,08h,05h,07h,07h,07h,07h,05h,08h,05h,09h,05h     ;104
        DB 05h,05h,00h,00h,00h,01h,01h,08h,0Fh,00h,00h,00h,0Fh,08h,05h     ;105
        DB 05h,01h,00h,05h,05h,08h,09h,09h,05h,08h,08h,08h,08h,08h,08h     ;106
        DB 05h,05h,05h,05h,05h,05h,05h,05h,05h,08h,08h,08h,08h,05h,08h     ;107
        DB 05h,09h,09h,08h,05h,05h,05h,01h,05h,05h,06h,0Fh,00h,00h,00h     ;108
        DB 0Fh,08h,05h,0Dh,01h,00h,00h,00h,08h,09h,05h,08h,08h,06h,0Ch     ;109
        DB 0Ch,0Ch,05h,05h,05h,08h,08h,08h,08h,08h,05h,05h,06h,0Ch,0Ch     ;110
        DB 0Ch,08h,07h,08h,05h,09h,08h,00h,00h,00h,00h,0Dh,0Dh,06h,0Fh     ;111
        DB 00h,00h,00h,0Fh,08h,05h,0Dh,00h,08h,05h,01h,08h,05h,04h,08h     ;112
        DB 08h,06h,0Ch,0Ch,0Ch,0Ch,0Ch,08h,08h,0Bh,0Bh,08h,08h,06h,0Ch     ;113
        DB 0Ch,0Ch,0Ch,0Ch,08h,07h,08h,04h,05h,08h,00h,05h,05h,00h,0Dh     ;114
        DB 0Dh,08h,0Fh,00h,00h,00h,0Fh,08h,05h,05h,00h,08h,09h,01h,04h     ;115
        DB 04h,04h,05h,05h,05h,05h,05h,08h,08h,08h,08h,05h,05h,08h,05h     ;116
        DB 05h,08h,08h,08h,08h,05h,05h,05h,05h,05h,04h,04h,04h,05h,09h     ;117
        DB 07h,00h,05h,05h,08h,0Fh,00h,00h,00h,0Fh,07h,07h,07h,08h,0Dh     ;118
        DB 05h,08h,08h,08h,08h,08h,08h,08h,08h,08h,08h,06h,06h,08h,05h     ;119
        DB 05h,05h,08h,05h,06h,06h,08h,08h,08h,08h,08h,08h,08h,08h,08h     ;120
        DB 08h,08h,05h,0Dh,08h,07h,08h,07h,0Fh,00h,00h,00h,00h,0Fh,0Fh     ;121
        DB 07h,08h,09h,05h,08h,07h,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,07h,07h,07h     ;122
        DB 08h,05h,05h,08h,0Bh,08h,05h,05h,08h,07h,07h,07h,0Fh,0Fh,0Fh     ;123
        DB 0Fh,0Fh,0Fh,07h,08h,05h,05h,08h,07h,0Fh,0Eh,00h,00h,00h,00h     ;124
        DB 00h,00h,0Fh,08h,08h,09h,08h,07h,0Fh,0Fh,00h,00h,00h,00h,00h     ;125
        DB 00h,00h,00h,00h,00h,00h,05h,05h,05h,00h,00h,00h,0Eh,0Eh,0Eh     ;126
        DB 0Eh,0Eh,0Eh,0Eh,0Eh,0Fh,0Fh,07h,08h,09h,08h,08h,0Fh,00h,00h     ;127
        DB 00h,00h,00h,00h,00h,0Fh,08h,0Dh,05h,08h,0Fh,0Fh,00h,00h,00h     ;128
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;129
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,08h,05h,0Dh,08h     ;130
        DB 0Fh,00h,00h,00h,00h,00h,00h,0Fh,0Fh,08h,09h,01h,0Fh,0Fh,00h     ;131
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;132
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh     ;133
        DB 01h,09h,08h,0Fh,0Fh,00h,00h,00h,00h,00h,0Fh,07h,05h,05h,08h     ;134
        DB 0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;135
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;136
        DB 00h,00h,0Fh,08h,05h,05h,07h,0Fh,00h,00h,00h,00h,00h,0Fh,08h     ;137
        DB 05h,05h,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;138
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;139
        DB 00h,00h,00h,00h,00h,0Fh,0Fh,05h,05h,08h,0Fh,00h,00h,00h,00h     ;140
        DB 0Eh,0Fh,08h,05h,07h,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;141
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;142
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,07h,05h,08h,0Fh,0Fh     ;143
        DB 00h,00h,00h,0Eh,0Fh,05h,08h,0Fh,0Fh,00h,00h,00h,00h,00h,00h     ;144
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;145
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Eh,0Fh,08h     ;146
        DB 05h,0Fh,0Eh,00h,00h,00h,0Fh,08h,05h,07h,0Fh,00h,00h,00h,00h     ;147
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;148
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;149
        DB 00h,0Fh,07h,05h,08h,0Fh,00h,00h,00h,0Fh,06h,08h,0Fh,0Eh,00h     ;150
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;151
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;152
        DB 00h,00h,00h,00h,0Eh,0Fh,08h,06h,0Fh,00h,00h,00h,0Fh,06h,0Fh     ;153
        DB 0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;154
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;155
        DB 00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,06h,0Fh,00h,00h,00h     ;156
        DB 0Fh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;157
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;158
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Fh     ;159

        shipX dw 50  ; x coordinate for the ship
        shipY dw 10  ; y coordinate for the ship

 killer DB 0Fh,08h,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  0
        DB 00h,00h,08h,08h,0Eh,08h,08h,00h,00h,00h,00h,00h,00h,00h,00h     ;  1
        DB 00h,00h,00h,00h,00h,0Eh,08h,07h,00h,08h,05h,07h,00h,00h,00h     ;  2
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,08h,05h,0Fh,00h,0Fh,05h     ;  3
        DB 08h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,05h,08h     ;  4
        DB 0Fh,00h,07h,08h,08h,08h,08h,08h,08h,08h,08h,05h,08h,08h,08h     ;  5
        DB 08h,08h,05h,08h,0Eh,0Fh,05h,05h,05h,05h,08h,05h,08h,08h,08h     ;  6
        DB 08h,06h,08h,08h,05h,05h,05h,05h,08h,0Fh,05h,05h,05h,05h,08h     ;  7
        DB 08h,08h,05h,05h,05h,05h,08h,08h,05h,05h,00h,05h,08h,00h,08h     ;  8
        DB 00h,05h,04h,08h,05h,07h,08h,05h,08h,08h,08h,05h,05h,04h,00h     ;  9
        DB 05h,07h,00h,0Eh,0Fh,0Fh,08h,05h,05h,06h,08h,05h,05h,06h,05h     ; 10
        DB 05h,08h,08h,0Fh,0Fh,00h,00h,00h,00h,00h,00h,08h,08h,08h,06h     ; 11
        DB 05h,05h,06h,08h,08h,00h,00h,00h,00h,00h,00h,00h,00h,00h,06h     ; 12
        DB 06h,04h,04h,04h,01h,04h,06h,04h,04h,06h,06h,00h,00h,00h,00h     ; 13
        DB 00h,00h,00h,08h,06h,05h,05h,05h,04h,05h,05h,05h,05h,06h,00h     ; 14
        DB 00h,00h,00h,08h,08h,08h,00h,08h,08h,08h,05h,05h,05h,05h,05h     ; 15
        DB 05h,08h,08h,00h,08h,08h,08h,08h,07h,07h,08h,08h,08h,08h,08h     ; 16
        DB 05h,05h,05h,08h,08h,08h,08h,08h,08h,07h,07h,08h,08h,08h,08h     ; 17
        DB 03h,00h,06h,0Eh,06h,01h,01h,06h,0Eh,06h,00h,03h,08h,07h,08h     ; 18
        DB 04h,06h,06h,00h,00h,00h,06h,06h,05h,09h,03h,04h,06h,06h,00h     ; 19
        DB 00h,00h,06h,04h,04h,06h,04h,00h,00h,00h,04h,04h,05h,08h,05h     ; 20
        DB 05h,06h,04h,00h,00h,04h,06h,04h,00h,08h,08h,00h,00h,00h,00h     ; 21
        DB 00h,05h,07h,08h,00h,00h,00h,00h,00h,00h,08h,04h,00h,08h,08h     ; 22
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,08h     ; 23
        DB 00h

        killerX dw 10
        killerY dw 20

bullet  db 0009,0009,0009,0009,0009,0009,0009,0009,0009,0009,0009,0009
		db 0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004
		db 0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004
		db 0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004
		db 0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004
		db 0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004
		db 0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004
		db 0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004
		db 0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004
		db 0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004
		db 0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004
		db 0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004
		db 0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004
		db 0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004
		db 0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004
		db 0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004
		db 0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004
		db 0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004
		db 0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004,0004

    bulletX word 50
	bulletY word 100
	bulletTimer word 120
	bulletTouch byte 0


modok   db 0009, 0009,0009,0009,0009,0009,0009,000,000,000,000,000,000,000,000,000,000,000,0009,0009,0009,0009,0009,0009,0009,0009
		db 0009, 0009,0009,0009,0009,0009,000,006,006,006,006,006,006,006,006,006,006,006,000,0009,0009,0009,0009,0009,0009,0009
		db 0009, 0009,0009,0009,0009,000,006,006,006,006,006,006,006,006,006,006,006,006,006,000,0009,0009,0009,0009,0009,0009
		db 0009, 0009,0009,0009,0009,000,006,006,006,006,056,056,035,035,056,006,006,006,006,000,0009,0009,0009,0009,0009,0009
		db 0009, 0009,0009,0009,000,044,056,056,035,056,012,012,012,012,004,056,056,035,056,044,000,0009,0009,0009,0009,0009
		db 0009, 0009,0009,0009,000,044,056,056,035,056,012,012,012,012,004,056,056,035,056,044,000,0009,0009,0009,0009,0009
		db 0009, 0009,0009,000,000,044,056,056,035,056,012,012,012,012,004,056,056,035,056,044,000,000,0009,0009,0009,0009
		db 0009, 0009,0009,000,006,006,056,065,065,065,056,056,035,035,056,065,065,065,056,006,006,006,000,0009,0009,0009
		db 0009, 0009,0009,000,000,044,006,065,065,065,065,065,065,065,065,065,065,065,006,044,044,000,000,0009,0009,0009
		db 0009, 0009,0009,000,006,006,006,064,064,064,064,065,065,065,064,064,064,064,006,043,043,043,000,0009,0009,0009
		db 0009, 0009,0009,000,000,044,006,064,007,015,064,065,064,064,065,015,007,064,006,044,044,000,000,0009,0009,0009
		db 0009, 0009,0009,0009,000,044,006,064,064,064,064,065,064,065,064,064,064,064,006,044,044,000,0009,0009,0009,0009
		db 0009, 0009,0009,0009,000,044,044,006,065,065,015,007,015,007,015,065,065,006,044,044,044,000,0009,0009,0009,0009
		db 0009, 0009,0009,000,043,044,044,006,065,007,015,007,015,007,015,007,065,006,044,044,044,044,000,0009,0009,0009
		db 0009, 0009,0009,000,035,043,044,006,065,064,064,064,064,064,064,064,065,006,044,044,044,035,000,0009,0009,0009
		db 0009, 0009,000,035,056,044,043,043,006,006,006,044,044,044,006,006,006,044,044,043,056,035,035,000,0009,0009
		db 0009, 000,056,044,056,044,044,044,043,043,043,000,002,000,044,044,044,043,043,043,035,035,044,035,000,0009
		db 0009, 000,056,044,056,044,044,044,043,043,043,000,002,000,044,044,044,043,043,043,035,035,044,035,000,0009
		db 0009, 000,043,044,043,043,044,035,035,056,044,044,044,044,044,035,035,035,044,044,043,043,044,043,000,0009
		db 0009, 0009,000,000,043,044,035,035,056,035,043,043,043,043,043,035,035,035,035,043,043,044,000,000,0009,0009
		db 0009, 0009,0009,000,000,000,035,035,056,035,044,044,044,044,044,035,035,056,035,000,000,000,000,0009,0009,0009
		db 0009, 0009,0009,0009,0009,000,056,056,006,006,006,006,006,006,006,006,006,006,056,056,000,0009,0009,0009,0009,0009
		db 0009, 0009,0009,0009,0009,0009,000,056,056,000,043,043,043,043,043,056,056,000,0009,0009,0009,0009,0009,0009,0009,0009
		db 0009, 0009,0009,0009,0009,0009,0009,000,056,000,000,000,043,043,043,000,056,000,0009,0009,0009,0009,0009,0009,0009,0009
		db 0009, 0009,0009,0009,0009,0009,0009,000,000,000,000,000,043,043,043,000,000,000,0009,0009,0009,0009,0009,0009,0009,0009
		db 0009, 0009,0009,0009,0009,0009,0009,0009,000,012,012,014,014,014,012,012,000,0009,0009,0009,0009,0009,0009,0009,0009,0009
		db 0009, 0009,0009,0009,0009,0009,0009,0009,0009,012,012,014,014,014,012,012,0009,0009,0009,0009,0009,0009,0009,0009,0009,0009
		db 0009, 0009,0009,0009,0009,0009,0009,0009,0009,0009,012,014,014,014,012,0009,0009,0009,0009,0009,0009,0009,0009,0009,0009,0009
		db 0009, 0009,0009,0009,0009,0009,0009,0009,0009,0009,012,014,014,014,012,0009,0009,0009,0009,0009,0009,0009,0009,0009,0009,0009
		db 0009, 0009,0009,0009,0009,0009,0009,0009,0009,0009,012,012,014,012,012,0009,0009,0009,0009,0009,0009,0009,0009,0009,0009,0009
		db 0009, 0009,0009,0009,0009,0009,0009,0009,0009,0009,0009,012,014,012,0009,0009,0009,0009,0009,0009,0009,0009,0009,0009,0009,0009
		db 0009, 0009,0009,0009,0009,0009,0009,0009,0009,0009,0009,0009,012,0009,0009,0009,0009,0009,0009,0009,0009,0009,0009,0009,0009,0009

    modokX word 0
	modokY word 10
	modokSteps word 270
	modokFlag byte 0

;----------------------------------------------------------------------------------------------------------------------------------------------------------------;
;                                                          Co-ordinates & Loop counters of all the objects                                                       ;
;----------------------------------------------------------------------------------------------------------------------------------------------------------------;

xStart word 13      
yStart word 40 

enemyX word 73                                
enemyY word 136                           
enemySteps word 42                            
enemyDelayCounter word 3
enemykill db 0
enemyFlag db 0   

filename_name DB "namez.txt", 0

playerScore dw 0000
filescore DB "score.txt", 0
filescore_str db 4 dup('$') ; buffer for converting integer to string
buffer_scorecomp db 4 dup('$') ;buffer to read score from file and compare to set new highscore
buffer_scorecomp1 db 4 dup('$') ;buffer to read score for highscore page only


handle dw ?

error_msg db "EROOR!$"

; STAGE 1 KAY VARIABLES HAIN YEH SAB

urankatola db '#$'
urantashtari db 'O$'
emptyspace db ' $'
uranbonus db 03h
uranbonus1 db 02h
uranbonus2 db 06h
uky db 1h
ukx db 0h
uty db 21
utx db 75
uby db 13
ubx db 37
uby1 db 5
ubx1 db 16
uby2 db 19
ubx2 db 60
old_uty db 22
old_utx db 74
last_move db 2h
;lives db 1h

; TIMER
gametime db 60h
pehla_var dd 0
dusra_var dd 0
subz dd 0


currentLevel byte 1
lives byte 3h
currentScore dw 0h

units db ?
tens db ?
hunds db ?


textLevel byte " Level:  ",'$'
textLives byte "Lives:   ",'$'
textScore byte "Score:   ",'$'
textTime byte "Time:   ",'$'

; STAGE 1 KAY SAB VARIABLES KI DECLARATION YAHA KHATAM HOTI HAI


;============================================================================================================================================================;
;---------------------------------------------------------->>>>>>>CODE SEGMENT STARTS<<<<<<-------------------------------------------------------------;                                                                                                                                           ;
;============================================================================================================================================================;

.code
jmp main


; FILE HANDLING 
filehandle_name proc

;mov cx, sixteen_sizee

mov si,offset userInputName

bahar_jao:
mov ax,[si]
cmp ax,'.'
jmp bhag
inc si
inc sizee
jmp bahar_jao


bhag:

MOV AH, 3CH
LEA DX,filename_name
MOV CL, 1
INT 21H
MOV HANDLE, AX

mov bx, HANDLE
mov DX,offset userInputName
mov cx,6
;mov cx,sizee

MOV AH, 40h
INT 21H

ret
filehandle_name endp

;<---------------SCORE KI FIL HANDLING WALA PROC------------------------------------>

itoa proc
    push ax
    push bx
    push cx
    push dx
    push di

    xor cx, cx      ; clear cx
    cmp ax, 0       ; check if ax is negative
    jge itoa1       ; if not, skip the negation step
    neg ax          ; negate the value of ax
    mov byte ptr [di], '-'
    inc di
  itoa1:
    mov cx, 0       ; clear cx
    itoa2:
      xor dx, dx    ; clear dx
      div bx        ; divide ax by bx
      push dx       ; save the remainder
      inc cx        ; increment the count of digits
      cmp ax, 0     ; check if ax is zero
      jne itoa2     ; if not, repeat the division
    itoa3:
      pop dx        ; retrieve a digit
      add dl, '0'   ; convert to ASCII
      mov byte ptr [di], dl ; store the digit
      inc di        ; increment the pointer
      loop itoa3    ; repeat for all digits
    mov byte ptr [di], '$'  ; null-terminate the string

    pop di
    pop dx
    pop cx
    pop bx
    pop ax
    ret
  itoa endp


filehandle_score proc

 ; open the file for writing
    mov ah, 3ch     ; DOS function to create or open a file
    mov cx, 0       ; access mode 0 = write-only
    lea dx, filescore ; load the filename into dx
    int 21h         ; call DOS

    ; save the file handle for later use
    mov handle, ax

    ; convert the integer to a string
    mov ax, currentScore
    mov bx, 10      ; base 10
    mov di, offset filescore_str
    call itoa

    ; write the string to the file
    mov ah, 40h         ; DOS function to write to a file
    mov bx, handle ; load the file handle into bx
    mov cx, 3          ; number of bytes to write
    lea dx, filescore_str ; load the string into dx
    int 21h             ; call DOS

    ; close the file
    mov ah, 3eh         ; DOS function to close a file
    mov bx, handle ; load the file handle into bx
    int 21h             ; call DOS


ret
filehandle_score endp


; FILE HANDLING END


check_colour proc
	push ax
    push bx
    push cx
    push dx

	mov ah,02h ;moving cursor to uk
	mov bh, 0
	mov dh,uty ; y-axis
	mov dl,utx ; x-axis
	int 10h

	mov ah,08h
	mov bh, 00h ;reading background colour
	int 10H ; Ah = COLOR
	cmp ah, 00110000b
	je colour_blue
	cmp ah, 00000000b
	jne colour_black
	je return_colour

	colour_blue:
		mov ah,6 
		mov al,0 ;character for the box
		mov bh,00110000b ;color selection
		mov cl,utx ; CL and CH registers specify the row and column of the upper left corner of the box
		mov ch,uty
		mov dh,uty ;DH and DL registers specify the row and column of the lower right corner of the box.
		mov dl,utx
		int 10h

		mov ah,02h
		mov bh, 0
		mov dh,uty ; y-axis
		mov dl,utx ; x-axis
		int 10h

		lea dx, emptyspace
		mov ah, 9
		int 21h
		jmp return_colour

	colour_black:
		;mov ah,6 
		;mov al,0 ;character for the box
		;mov bh,00000000b ;color selection
		;mov cl,utx ; CL and CH registers specify the row and column of the upper left corner of the box
		;mov ch,uty
		;mov dh,uty ;DH and DL registers specify the row and column of the lower right corner of the box.
		;mov dl,utx
		;int 10h

		mov ah,02h
		mov bh, 0
		mov dh,uty ; y-axis
		mov dl,utx ; x-axis
		int 10h
		
		lea dx, emptyspace
		mov ah, 9
		int 21h
		jmp return_colour


	return_colour:
	pop dx
    pop cx
    pop bx
    pop ax

ret
check_colour endp

delayz proc
	
mov ah, 00
int 1Ah
mov bx, dx
    
delay_mein_jump:
	int 1Ah
	sub dx, bx
	cmp dl, 3                                                      
	jl delay_mein_jump    

ret 
delayz endp


drawText proc

;----------------------------------------------------------------------------------->>>>>>>>>>>>>>> 
; PRINTING LEVEL KA TEXT 
;----------------------------------------------------------------------------------->>>>>>>>>>>>>>>
;mov dx,0
mov ah,02h
mov bh,0
mov dh,0 ; y-axis
mov dl,35 ; x-axis
int 10h

lea dx, textLevel
mov ah, 9
int 21h

;mov dx,0
mov ah,02h
mov bh,0
mov dh,0 ; y-axis
mov dl,43 ; x-axis
int 10h

mov dl, currentLevel
add dl,48
mov dh,0
mov ah, 02
int 21h

;----------------------------------------------------------------------------------->>>>>>>>>>>>>>> 
; PRINTING LIVES KA TEXT 
;----------------------------------------------------------------------------------->>>>>>>>>>>>>>>
mov dx,0
mov ah,02h
mov bh,0
mov dh,0 ; y-axis
mov dl,2 ; x-axis
int 10h

lea dx, textLives
mov ah, 9
int 21h

mov ah,02h
mov bh,0
mov dh,0 ; y-axis
mov dl,9 ; x-axis
int 10h

mov dl, lives
add dl,48
mov dh,0
mov ah, 02
int 21h

;----------------------------------------------------------------------------------->>>>>>>>>>>>>>> 
; PRINTING SCORE KA TEXT 
;----------------------------------------------------------------------------------->>>>>>>>>>>>>>>
mov dx,0
mov ah,02h
mov bh,0
mov dh,24 ; y-axis
mov dl,60 ; x-axis
int 10h

lea dx, textScore
mov ah, 9
int 21h

mov ah,02h
mov bh,0
mov dh,24 ; y-axis
mov dl,67 ; x-axis
int 10h


mov ax,currentScore
mov bl,10
div bl

mov units, ah
mov dx, ax

mov ah, 0
mov bl,10
div bl
mov tens, ah

mov dx, ax
mov ah, 0
mov bl,10
div bl
mov hunds, ah

mov dl,' '
mov ah,2
int 21h

mov dl, hunds
add dl,48
mov ah,2
int 21h

mov dl, tens
add dl,48
mov ah,2
int 21h

mov dl, units
add dl, 48
mov ah,2
int 21h

;----------------------------------------------------------------------------------->>>>>>>>>>>>>>> 
; PRINTING TIME KA TEXT 
;----------------------------------------------------------------------------------->>>>>>>>>>>>>>>
;mov dx,0
mov ah,02h
mov bh,0
mov dh,0 ; y-axis
mov dl,65 ; x-axis
int 10h

lea dx, textTime
mov ah, 9
int 21h	

ret
drawText endp


AllGameLogic proc
	starter:

	;drawing BG box
	mov ah,6 
	mov al,0 ;character for the box
	mov bh,00110000b ;color selection
	mov cl,0 ; CL and CH registers specify the row and column of the upper left corner of the box
	mov ch,0
	mov dh,25 ;DH and DL registers specify the row and column of the lower right corner of the box.
	mov dl,80
	int 10h

	;drawing the inside box(black one)
	mov ah,6 
	mov al,0 ;character for the box
	mov bh,00000100b ;color selection
	mov cl,1 ; CL and CH registers specify the row and column of the upper left corner of the box
	mov ch,1
	mov dh,23 ;DH and DL registers specify the row and column of the lower right corner of the box.
	mov dl,78
	int 10h

	;changing cursor location for uranbonus
	mov ah,02h
	mov bh, 0
	mov dh,uby ; y-axis
	mov dl,ubx ; x-axis
	int 10h

	mov dh, 0
	mov dl, uranbonus
	mov ah, 02
	int 21h

	;changing cursor location for uranbonus
	mov ah,02h
	mov bh, 0
	mov dh,uby1 ; y-axis
	mov dl,ubx1 ; x-axis
	int 10h

	mov dh, 0
	mov dl, uranbonus1
	mov ah, 02
	int 21h

	;changing cursor location for uranbonus
	mov ah,02h
	mov bh, 0
	mov dh,uby2 ; y-axis
	mov dl,ubx2 ; x-axis
	int 10h

	mov dh, 0
	mov dl, uranbonus2
	mov ah, 02
	int 21h

	mainer:

	cmp currentScore, 900
	jg LevelOver

	call drawText

	;changing colour of urankatola background
	mov ah,6 
	mov al,0 ;character for the box
	mov bh,00110000b ;color selection
	mov cl,ukx ; CL and CH registers specify the row and column of the upper left corner of the box
	mov ch,uky
	mov dh,uky ;DH and DL registers specify the row and column of the lower right corner of the box.
	mov dl,ukx
	int 10h


	;changing cursor location for urankatola
	mov ah,02h
	mov bh, 0
	mov dh,uky ; y-axis
	mov dl,ukx ; x-axis
	int 10h

	lea dx, urankatola
	mov ah, 9
	int 21h

	;changing cursor location for urantashtari
	mov ah,02h
	mov bh, 0
	mov dh,uty ; y-axis
	mov dl,utx ; x-axis
	int 10h

	lea dx, urantashtari
	mov ah, 9
	int 21h

	;checking for bonus gain
	bonus_check2:
	mov al, uky
	cmp al, uby2
	je same_bonus_y2
	jne bonus_check1

	same_bonus_y2:
		mov al, ukx
		cmp al, ubx2
		je score_increase
		jne bonus_check1

	;checking for bonus gain
	bonus_check1:
	mov al, uky
	cmp al, uby1
	je same_bonus_y1
	jne bonus_check

	same_bonus_y1:
		mov al, ukx
		cmp al, ubx1
		je score_increase
		jne bonus_check

	;checking for bonus gain
	bonus_check:
	mov al, uky
	cmp al, uby
	je same_bonus_y
	jne coll_left

	same_bonus_y:
		mov al, ukx
		cmp al, ubx
		je score_increase
		jne coll_left

	score_increase:
	mov ax, currentScore
	add ax, 100
	mov currentScore, ax


	;checking for collision detection
	coll_left:
	mov al, ukx
	dec al
	cmp al, utx
	je same_x

	coll_right:
	mov al, ukx
	inc al
	cmp al, utx
	je same_x

	coll_up:
	mov al, uky
	dec al
	cmp al, uty
	je same_y


	coll_down:
	mov al, uky
	inc al
	cmp al, uty
	je same_y
	jne read_right

	same_y:
		mov al, ukx
		cmp al, utx
		je lives_check
		jne read_right

	same_x:
		mov al, uky
		cmp al, uty
		je lives_check
		jne read_right

	lives_check:
	mov al, lives
	cmp al, 0h
	je LevelOver
	dec al
	mov lives, al


	read_right: ;checking right box
		mov ah,02h ;moving cursor to the left of uk
		mov bh, 0
		mov dh,uty ; y-axis
		mov dl,utx ; x-axis
		inc dl
		int 10h

		mov ah,08h
		mov bh, 00h
		int 10H ; Ah = COLOR
		cmp ah, 00110000b
		je enable_right

	read_left:
		mov ah,02h ;moving cursor to the left of uk
		mov bh, 0
		mov dh,uty ; y-axis
		mov dl,utx ; x-axis
		dec dl
		int 10h

		mov ah,08h
		mov bh, 00h ;reading background colour
		int 10H ; Ah = COLOR
		inc dl
		;dec dh
		cmp ah, 00110000b
		je enable_left

	read_up:
		mov ah,02h ;moving cursor to the left of uk
		mov bh, 0
		mov dh,uty ; y-axis
		mov dl,utx ; x-axis
		dec dh
		int 10h

		mov ah,08h
		mov bh, 00h ;reading background colour
		int 10H ; Ah = COLOR
		cmp ah, 00110000b
		je enable_up

	read_down:
		mov ah,02h ;moving cursor to the left of uk
		mov bh, 0
		mov dh,uty ; y-axis
		mov dl,utx ; x-axis
		inc dh
		int 10h

		mov ah,08h
		mov bh, 00h ;reading background colour
		int 10H ; Ah = COLOR
		inc dh
		cmp ah, 00110000b
		je enable_down


	cmp last_move, 0h
	je move_sw
	cmp last_move, 1h
	je move_nw
	cmp last_move, 2h
	je move_se
	cmp last_move, 3h
	je move_ne

	enable_right:
		cmp ch, old_uty
		jg move_sw
		jl move_nw

	enable_left:
		mov ch, uty
		cmp ch, old_uty
		jl move_ne
		jg move_se

	enable_up:
		mov cl, utx
		cmp cl, old_utx
		jl move_sw
		jg move_se

	enable_down: 
		mov cl, utx
		cmp cl, old_utx
		jl move_nw
		jg move_ne

	move_sw:
	mov last_move, 0h
	mov cl, utx
	mov ch, uty
	mov old_uty, ch
	mov old_utx, cl
	call check_colour
	dec cl
	inc ch
	mov utx, cl
	mov uty, ch
	;printing ut at new location
	mov ah,02h
	mov bh, 0
	mov dh,uty ; y-axis
	mov dl,utx ; x-axis
	int 10h
	lea dx, urantashtari
	mov ah, 9
	int 21h
	jmp endinput

	move_nw:
	mov last_move, 1h
	mov cl, utx
	mov ch, uty
	mov old_uty, ch
	mov old_utx, cl
	call check_colour
	dec cl
	dec ch
	mov utx, cl
	mov uty, ch
	;printing ut at new location
	mov ah,02h
	mov bh, 0
	mov dh,ch ; y-axis
	mov dl,cl ; x-axis
	int 10h
	lea dx, urantashtari
	mov ah, 9
	int 21h
	jmp endinput

	move_se:
	mov last_move, 2h
	mov cl, utx
	mov ch, uty
	mov old_uty, ch
	mov old_utx, cl
	call check_colour
	inc cl
	inc ch
	mov utx, cl
	mov uty, ch
	;printing ut at new location
	mov ah,02h
	mov bh, 0
	mov dh,ch ; y-axis
	mov dl,cl ; x-axis
	int 10h
	lea dx, urantashtari
	mov ah, 9
	int 21h
	jmp endinput

	move_ne:
	mov last_move, 3h
	mov cl, utx
	mov ch, uty
	mov old_uty, ch
	mov old_utx, cl
	call check_colour
	inc cl
	dec ch
	mov utx, cl
	mov uty, ch
	;printing ut at new location
	mov ah,02h
	mov bh, 0
	mov dh,ch ; y-axis
	mov dl,cl ; x-axis
	int 10h
	lea dx, urantashtari
	mov ah, 9
	int 21h
	jmp endinput
	


	mov dx,0
	;mov last_move, 3h


	endinput:
	mov ah, 7
	int 21h
	cmp al, 'w'
	je move_up
	cmp al, 's'
	je move_down
	cmp al, 'a'
	je move_left
	cmp al, 'd'
	je move_right
	jne endinput
	jmp endinput


	move_up:
	mov ax, currentScore
	inc ax
	mov currentScore, ax

	mov ah,02h ;moving cursor to uk
	mov bh, 0
	mov dh,uky ; y-axis
	mov dl,ukx ; x-axis
	int 10h
	lea dx, emptyspace
	mov ah, 9
	int 21h

	mov al, uky
	dec al
	cmp al, -1
	je mainer
	mov uky, al
	jmp mainer


	move_down:
	mov ax, currentScore
	inc ax
	mov currentScore, ax

	mov ah,02h ;moving cursor to uk
	mov bh, 0
	mov dh,uky ; y-axis
	mov dl,ukx ; x-axis
	int 10h
	lea dx, emptyspace
	mov ah, 9
	int 21h

	mov al, uky
	inc al
	cmp al, 25
	je mainer
	mov uky, al
	jmp mainer


	move_left:
	mov ax, currentScore
	inc ax
	mov currentScore, ax

	mov ah,02h ;moving cursor to uk
	mov bh, 0
	mov dh,uky ; y-axis
	mov dl,ukx ; x-axis
	int 10h
	lea dx, emptyspace
	mov ah, 9
	int 21h

	mov al, ukx
	dec al
	cmp al, -1
	je mainer
	mov ukx, al
	jmp mainer


	move_right:
	mov ax, currentScore
	inc ax
	mov currentScore, ax

	mov ah,02h ;moving cursor to uk
	mov bh, 0
	mov dh,uky ; y-axis
	mov dl,ukx ; x-axis
	int 10h
	lea dx, emptyspace
	mov ah, 9
	int 21h

	mov al, ukx
	inc al
	cmp al, 80
	je mainer
	mov ukx, al
	jmp mainer

ret
AllGameLogic endp


;------------------------------------------------------------------------------------------------------------------------------------------------------------;
;                                                                    *MAIN PROCEDURE*                                                                       ;
;------------------------------------------------------------------------------------------------------------------------------------------------------------;

main proc
mov ax, @data
mov ds, ax

;------------------------------------------------------------------------------------------------------------------------------------------------------------;
;                                                                    DRAWING BACKGROUND BOX                                                                      ;
;------------------------------------------------------------------------------------------------------------------------------------------------------------;

mov ah,6 
mov al,0 ;character for the box
mov bh,00110000b ;color selection
mov cl,0 ; CL and CH registers specify the row and column of the upper left corner of the box
mov ch,0
mov dh,90 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,90
int 10h

call MainPage

mov ah,4ch
int 21h
main endp
;===================================================             **** MAIN ENDS HERE ****            ========================================================


;----------- WIN WALA PROCEDURE AUR TEXT ------------------------------;
Win proc
lea dx,win_display
mov ah, 9
int 21h
ret
Win endp

;----------- LOST WALA PROCEDURE AUR TEXT ------------------------------;
lost proc
lea dx,loss_display
mov ah, 9
int 21h
ret
lost endp

;<IS PROC KO ABHI KAHI CALL NAE KIA, ISKO TAB CALL KAREINGAY JAB GAME WALI SCREEN BANEGI, SO GAME OVER KI CONDITION KAY BAAD YEH WALA PROC CALL HOGA>


;------------------------------------------------------------------------------------------------------------------------------------------------------------;
;                                                                    *LEVEL OVER PAGE CODE*                                                                       ;
;------------------------------------------------------------------------------------------------------------------------------------------------------------;

LevelOver proc

MOV AH, 06H ; set clear screen function
    MOV AL, 00H ; clear the screen
    ;MOV BH, 07H ; set attribute (white on black)
    MOV CX, 0 ; set upper left corner of screen
    MOV DX, 184FH ; set lower right corner of screen
    INT 10H ; call BIOS video services

;----------------------------------------------------------------------------------------------------------------------------------------------------------;
;                                                                 DRAWING BACKGROUND BOX                                                                   ;
;----------------------------------------------------------------------------------------------------------------------------------------------------------;

mov ah,6 
mov al,0 ;character for the box
mov bh,00110000b ;color selection
mov cl,0 ; CL and CH registers specify the row and column of the upper left corner of the box
mov ch,0
mov dh,26 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,80
int 10h

;===================================================               * AIR XONIX TEXT *          ==============================================================

mov ah,02h
mov bh,0
mov dh,5h ; y-axis
mov dl,1Bh ; x-axis
int 10h

lea dx, game_name2
mov ah, 9
int 21h

;===================================================               * WIN/LOSE STATUS PRINT KARANA *          ==============================================================

mov ah,02h
mov bh,0
mov dh,7h ; y-axis
mov dl,17h ; x-axis
int 10h

lea dx, emptyBox
mov ah, 9
int 21h

mov ah,02h
mov bh,0
mov dh,0Ah ; y-axis
mov dl,20h ; x-axis
int 10h

cmp win_status, 01
je Win_Label
jne Lost_label
;jmp Lost_label

Win_Label:
call Win

jmp score_display

Lost_label:
call lost

;===================================================               * SCORE DISPLAY FUNCTION *          ==============================================================

score_display:
mov dx,0
mov ah,02h
mov bh,0
mov dh,0Eh ; y-axis
mov dl,25 ; x-axis
int 10h

lea dx,currScoretext
mov ah, 9
int 21h


mov ah,02h
mov bh,0
mov dh,14 ; y-axis
mov dl,37 ; x-axis
int 10h

mov ax,currentScore
mov bl,10
div bl
mov units, ah
mov dx, ax

mov ah, 0
mov bl,10
div bl
mov tens, ah

mov dx, ax
mov ah, 0
mov bl,10
div bl
mov hunds, ah



mov dh,0
mov dl,hunds
add dl,48
mov ah,02h
int 21h

mov dl,tens
add dl,48
mov ah,02h
int 21h

mov dl,units
add dl,48
mov ah,02h
int 21h

mov ah,02h
mov bh,0
mov dh,13h ; y-axis
mov dl,15h ; x-axis
int 10h

lea dx,textEnter2
mov ah, 09h
int 21h

; YAHA HIGHSCORE WALI LOGIC
; ABHI WAPIS DALTI HU ISKO CHALA RAE THI MEIN

; open file
mov ah, 3dh ; open file function
mov al, 0 ; read-only mode
lea dx, filescore
int 21h ; call DOS interrupt to open file
jc error ; jump to error if file not found
mov bx, ax ; save file handle

;read file
mov ah, 3fh ; read file function
mov cx, 3 ; read up to 4 bytes
lea dx, buffer_scorecomp
mov ah, 3fh
int 21h ; call DOS interrupt to read file
jc error ; jump to error if error occurs

mov dh, 0
mov si, 0
    
mov bx, offset buffer_scorecomp ;Point to array
mov dl, [bx+si] ;Placing value
cmp hunds, dl
jg writer_higher
je comp_tens
jl file_close

comp_tens:
inc si
mov bx, offset buffer_scorecomp ;Point to array
mov dl, [bx+si]
cmp dl, tens
jge comp_uns
jl file_close

comp_uns:
inc si
mov bx, offset buffer_scorecomp ;Point to array
mov dl, [bx+si]
cmp dl, units
jge writer_higher
jl file_close


    
;close file
file_close:
mov ah, 3eh 
mov bx, ax 
int 21h 

writer_higher: ;writes the new highscore and name in file
mov ah, 3eh ;closes the previous file which was used to read the score
mov bx, ax 
int 21h 
call filehandle_name ;writes the name of new high scorer to the file
call filehandle_score ;writes the score of new high scorer to the file    
jmp endinputt
    
error:
    mov ah, 9h ; print error message
    lea dx, error_msg
    int 21h ; call DOS interrupt to print to console
    

;----------- JUMP TO MAIN MENU ------------------------------;
endinputt:
mov ah, 1
int 21h
cmp al,13
je MainMenuka_aik_Label
jmp endinputt

MainMenuka_aik_Label:

call MainMenu

ret
LevelOver endp
;===================================================             **** LEVEL OVER ENDS HERE ****            ========================================================


;------------------------------------------------------------------------------------------------------------------------------------------------------------;
;                                                                    *GAME WALI SCREEN STARTS*                                                               ;
;------------------------------------------------------------------------------------------------------------------------------------------------------------;


GameStart proc

MOV AH, 06H ; set clear screen function
    MOV AL, 00H ; clear the screen
    ;MOV BH, 07H ; set attribute (white on black)
    MOV CX, 0 ; set upper left corner of screen
    MOV DX, 184FH ; set lower right corner of screen
    INT 10H ; call BIOS video services


;----------------------------------------------------------------------------------------------------------------------------------------------------------;
;                                                                 DRAWING BACKGROUND BOX                                                                   ;
;----------------------------------------------------------------------------------------------------------------------------------------------------------;

mov ah,6 
mov al,0 ;character for the box
mov bh,00110000b ;color selection
mov cl,0 ; CL and CH registers specify the row and column of the upper left corner of the box
mov ch,0
mov dh,90 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,90
int 10h



;----------- BUHT SARI FUNCTION CALLS CONFUSE HOANY KI ZAROORAT NAHI HAI ------------------------------;

;call urankatola
;call drawEnemy
;call drawChimi
;call drawUranKhatola
;call drawBullet
;call drawModok

mov ah,01
int 21h

ret
GameStart endp

;===================================================                * GAME WALI SCREEN ENDS *          ==============================================================



;------------------------------------------------------------------------------------------------------------------------------------------------------------;
;                                                                    *SELECT LEVEL WALA CODE*                                                                       ;
;------------------------------------------------------------------------------------------------------------------------------------------------------------;


SelectLevel_proc proc
endinput2:

MOV AH, 06H ; set clear screen function
    MOV AL, 00H ; clear the screen
    ;MOV BH, 07H ; set attribute (white on black)
    MOV CX, 0 ; set upper left corner of screen
    MOV DX, 184FH ; set lower right corner of screen
    INT 10H ; call BIOS video services


;------------------------------------------------------------------------------------------------------------------------------------------------------------;
;                                                                    *DRAWING BACKGROUND BOX*                                                                       ;
;------------------------------------------------------------------------------------------------------------------------------------------------------------;

mov ah,6 
mov al,0 ;character for the box
mov bh,00110000b ;color selection
mov cl,0 ; CL and CH registers specify the row and column of the upper left corner of the box
mov ch,0
mov dh,90 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,90
int 10h


;===================================================                * AIR XONIX TEXT *          ==============================================================

mov ah,02h
mov bh,0
mov dh,2h ; y-axis
mov dl,1Bh ; x-axis
int 10h

lea dx, game_name
mov ah, 9
int 21h

;----------- dabba color change k liyay ------------------------------;
mov ah,6 
mov al,0 ;character for the box
mov bh, 00111111b ;color selection
mov cl,25 ;moves box towards left
mov ch,3 ; moves box down
mov dh,3 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,54  ; Length of box
int 10h

mov ah,02h
mov bh,0
mov dh,3h ; y-axis
mov dl,19h ; x-axis
int 10h

lea dx, doubleline
mov ah, 9
int 21h

;===================================================             ** select lvl wala text **            ========================================================

mov ah,02h
mov bh,0
mov dh,07h ; y-axis
mov dl,29 ; x-axis
int 10h

lea dx,selectLevelText
mov ah, 9
int 21h

;----------- dabba color change k liyay ------------------------------;
mov ah,6 
mov al,0 ;character for the box
mov bh, 10111111b ;color selection
mov cl,20 ;moves box towards left
mov ch,5 ; moves box down
mov dh,5 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,27 ; Length of box
int 10h

mov ah,02h
mov bh,0
mov dh,07h ; y-axis
mov dl,20 ; x-axis
int 10h


lea dx, emptySideL
mov ah, 9
int 21h

;----------- dabba color change k liyay ------------------------------;
mov ah,6 
mov al,0 ;character for the box
mov bh, 10111111b ;color selection
mov cl,53 ;moves box towards left
mov ch,5 ; moves box down
mov dh,5 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,63  ; Length of box
int 10h

mov ah,02h
mov bh,0
mov dh,07h ; y-axis
mov dl,54 ; x-axis
int 10h

lea dx, emptySideR
mov ah, 9
int 21h

;===================================================                * LEVEL1 TEXT *          ==============================================================

mov ah,6 
mov al,0 ;character for the box
mov bh,stageOne_Button ;color selection
mov cl,27 ;moves box towards left
mov ch,10 ; moves box down
mov dh,13 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,37 ; Length of box
int 10h

;----------- MOVE CURSOR ------------------------------;
mov dx,0
mov ah,02h
mov bh,0h
mov dh,11 ; y-axis
mov dl,28 ; x-axis
int 10h 

;----------- STAGEE TEXT ON THE BOX ------------------------------;
mov si, offset Level
mov ah,02h
mov bh,0
mov dh,11 ; y-axis
mov dl,30 ; x-axis
int 10h

lea dx, Level
mov ah, 9
int 21h

;--------------------------->>>>>>>>>>> NOW PRINTING 1 BELOW STAGE IN SAME BOX <<<<<<<<<<<<<----------------------------------;
;--------------------------->>>>>>>>>>>move cursor to level 1 text wala box <<<<<<<<<<<------------------------------;

mov dx,0
mov ah,02h
mov bh,0h
mov dh,12 ; y-axis
mov dl,30 ; x-axis
int 10h 

;----------- STAGEE TEXT ON THE BOX ------------------------------;
mov si, offset Level
mov ah,02h
mov bh,0
mov dh,12 ; y-axis
mov dl,32 ; x-axis
int 10h

lea dx, one
mov ah, 9
int 21h

;--------------------------->>>>>>>>>>> DOING SAME THING FOR LEVEL 2 <<<<<<<<<<<<<----------------------------------;

;--------------------------->>>>>>>>>>> MAKING BOX FOR LEVEL 2 WALA BOX <<<<<<<<<<<------------------------------;
mov ah,6 
mov al,0 ;character for the box
mov bh,stageTwo_Button ;color selection
mov cl,40 ;moves box towards left
mov ch,10 ; moves box down
mov dh,13 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,50 ; Length of box
int 10h

;--------------------------->>>>>>>>>>>move cursor to level 2 text wala box <<<<<<<<<<<------------------------------;
mov dx,0
mov ah,02h
mov bh,0h
mov dh,11 ; y-axis
mov dl,42 ; x-axis
int 10h 

; stagee text on its box
mov si, offset Level
mov ah,02h
mov bh,0
mov dh,11 ; y-axis
mov dl,43 ; x-axis
int 10h

lea dx, Level
mov ah, 9
int 21h

; NOW PRINTING 1 BELOW STAGE IN SAME BOX
; move cursor to level 1 text wala box
mov dx,0
mov ah,02h
mov bh,0h
mov dh,12 ; y-axis
mov dl,43 ; x-axis
int 10h 

;------------------ stagee text on its box ------------------------------;
mov si, offset Level
mov ah,02h
mov bh,0
mov dh,12 ; y-axis
mov dl,45 ; x-axis
int 10h

lea dx, two
mov ah, 9
int 21h

;---------------------- ENTER TO CONTINUE WALA CODE -----------------------;
mov ah,02h
mov bh,0
mov dh,26 ; y-axis
mov dh,26 ; y-axis
mov dl,15h ; x-axis
int 10h

lea dx,textEnter2
mov ah, 09h
int 21h

;===============================================        *****   TAKING USER INPUT   *****      ====================================================

mov ax,0
mov ah,01h 
int 21h

cmp al,'a'
je left_a

cmp al,'d'
je right_d

cmp al,13
je enter_press
jmp ex

left_a:
cmp cursor,1
je ex

cmp cursor,2
je isaam
jmp ex
isaam:

dec cursor
jmp ex


right_d:
cmp cursor,2
je ex

cmp cursor,1
je isaam1
jmp ex
isaam1:

inc cursor
jmp ex

;===============================================        *****   ENTER PRESS WALA CODE    *****      ====================================================

enter_press:

cmp cursor,01
je LevelOneStart_Label

cmp cursor,02
je LevelTwoStart_Label

jmp Skip


LevelOneStart_Label:
call AllGameLogic
jmp Skip

LevelTwoStart_Label:
;call Level Two Start wala proc
ret
jmp Skip

ex:
mov stageOne_Button, 00000011b
mov stageTwo_Button, 00000011b

cmp cursor,1
je LevelOneStartLabel

cmp cursor,2
je LevelTwoStartLabel


LevelOneStartLabel:
mov stageOne_Button, 10000011b
jmp Skip

LevelTwoStartLabel:
mov stageTwo_Button, 10000011b
jmp Skip

Skip:
jmp endinput2

MainMenu2:
ret

SelectLevel_proc endp

;===============================================        *****   SELECT LEVEL ENDS HERE  *****      ====================================================



;------------------------------------------------------------------------------------------------------------------------------------------------------------;
;                                                          ****HIGHSCORE WALA CODE STARTS HERE******                                                               ;
;------------------------------------------------------------------------------------------------------------------------------------------------------------;

HighscoreProc proc

;===================================================                * CLEAR SCREEN FUNCTION *          ==============================================================

MOV AH, 06H ; set clear screen function
    MOV AL, 00H ; clear the screen
    ;MOV BH, 07H ; set attribute (white on black)
    MOV CX, 0 ; set upper left corner of screen
    MOV DX, 184FH ; set lower right corner of screen
    INT 10H ; call BIOS video services

;----------------------------------------------------------------------------------------------------------------------------------------------------------;
;                                                                 DRAWING BACKGROUND BOX                                                                   ;
;----------------------------------------------------------------------------------------------------------------------------------------------------------;

mov ah,6 
mov al,0 ;character for the box
mov bh,00110000b ;color selection
mov cl,0 ; CL and CH registers specify the row and column of the upper left corner of the box
mov ch,0
mov dh,90 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,90
int 10h

;===================================================                * AIR XONIX TEXT *          ==============================================================

mov ah,02h
mov bh,0
mov dh,4 ; y-axis
mov dl,1Bh ; x-axis
int 10h

lea dx, game_name
mov ah, 9
int 21h

;----------- dabba color change k liyay ------------------------------;
mov ah,6 
mov al,0 ;character for the box
mov bh, 00111111b ;color selection
mov cl,25 ;moves box towards left
mov ch,5; moves box down
mov dh,5 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,54  ; Length of box
int 10h

mov ah,02h
mov bh,0
mov dh,5 ; y-axis
mov dl,19h ; x-axis
int 10h


lea dx, doubleline
mov ah, 9
int 21h


;===================================================             ** High Score wala text **            ========================================================

mov ah,02h
mov bh,0
mov dh,07h ; y-axis
mov dl,29 ; x-axis
int 10h

lea dx, hsText
mov ah, 9
int 21h

;----------- dabba color change k liyay ------------------------------;
mov ah,6 
mov al,0 ;character for the box
mov bh, 10111111b ;color selection
mov cl,18 ;moves box towards left
mov ch,7 ; moves box down
mov dh,7 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,26 ; Length of box
int 10h

mov ah,02h
mov bh,0
mov dh,07h ; y-axis
mov dl,20 ; x-axis
int 10h


lea dx, emptySideL
mov ah, 9
int 21h

;----------- dabba color change k liyay ------------------------------;
mov ah,6 
mov al,0 ;character for the box
mov bh, 10111111b ;color selection
mov cl,53 ;moves box towards left
mov ch,7 ; moves box down
mov dh,7 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,60  ; Length of box
int 10h

mov ah,02h
mov bh,0
mov dh,07h ; y-axis
mov dl,53 ; x-axis
int 10h


lea dx, emptySideR
mov ah, 9
int 21h

;===================================================             **hs  wala text **            ========================================================

;Player name
mov ah,02h
mov bh,0
mov dh,12 ; y-axis
mov dl,19h ; x-axis
int 10h

lea dx, player
mov ah, 9
int 21h

; player ka naam yaha

mov ah,02h
mov bh,0
mov dh,12 ; y-axis
mov dl,39 ; x-axis
int 10h

lea dx, userInputName
mov ah, 9
int 21h


mov ah,02h
mov bh,0
mov dh,12 ; y-axis
mov dl,45 ; x-axis
int 10h

mov ah,6 
mov al,0 ;character for the box
mov bh, 00110000b ;color selection
mov cl,45 ;moves box towards left
mov ch,11; moves box down
mov dh,13 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,80  ; Length of box
int 10h

; highscore result prompt

mov ah,02h
mov bh,0
mov dh,15 ; y-axis
mov dl,19h ; x-axis
int 10h

lea dx, hs
mov ah, 9
int 21h


mov ah, 3dh ; open file function
mov al, 0 ; read-only mode
lea dx, filescore
int 21h ; call DOS interrupt to open file
mov bx, ax ; save file handle

;read file
mov ah, 3fh ; read file function
mov cx, 3 ; read up to 4 bytes
lea dx, buffer_scorecomp1
mov ah, 3fh
int 21h ; call DOS interrupt to read file
    
lea dx, offset buffer_scorecomp1
mov ah, 9
int 21h



;----------------------------------------------------------------------------------------------------------------------------------------------------------;
;                                                                *ENTER TO CONTINUE WALA CODE*                                                                  ;
;----------------------------------------------------------------------------------------------------------------------------------------------------------;

mov ah,02h
mov bh,0
mov dh,26 ; y-axis
mov dh,26 ; y-axis
mov dl,15h ; x-axis
int 10h

lea dx,textEnter2
mov ah, 09h
int 21h

endinput3:
mov ah, 1
int 21h
cmp al, 13
je MainMenu3
jmp endinput3

MainMenu3:
ret 

HighscoreProc endp
;----------------------------------------- HIGHSCORE PROC ENDS HERE --------------------------------;


; INFO PROC STARTING HERE 


;------------------------------------------------------------------------------------------------------------------------------------------------------------;
;                                                                    INFO PAGE CODE                                                                       ;
;------------------------------------------------------------------------------------------------------------------------------------------------------------;


;===================================================                * AIR XONIX TEXT *          ==============================================================

rules proc

MOV AH, 06H ; set clear screen function
    MOV AL, 00H ; clear the screen
    ;MOV BH, 07H ; set attribute (white on black)
    MOV CX, 0 ; set upper left corner of screen
    MOV DX, 184FH ; set lower right corner of screen
    INT 10H ; call BIOS video services

;----------------------------------------------------------------------------------------------------------------------------------------------------------;
;                                                                 DRAWING BACKGROUND BOX                                                                   ;
;----------------------------------------------------------------------------------------------------------------------------------------------------------;

mov ah,6 
mov al,0 ;character for the box
mov bh,00110000b ;color selection
mov cl,0 ; CL and CH registers specify the row and column of the upper left corner of the box
mov ch,0
mov dh,90 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,90
int 10h

mov ah,02h
mov bh,0
mov dh,2h ; y-axis
mov dl,1Bh ; x-axis
int 10h

lea dx, game_name
mov ah, 9
int 21h

;----------- dabba color change k liyay ------------------------------;
mov ah,6 
mov al,0 ;character for the box
mov bh, 00111111b ;color selection
mov cl,25 ;moves box towards left
mov ch,3 ; moves box down
mov dh,3 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,54  ; Length of box
int 10h

mov ah,02h
mov bh,0
mov dh,3h ; y-axis
mov dl,19h ; x-axis
int 10h


lea dx, doubleline
mov ah, 9
int 21h
  
;===================================================             ** Rules wala text **            ========================================================

mov ah,02h
mov bh,0
mov dh,05h ; y-axis
mov dl,24h ; x-axis
int 10h

lea dx,rulesText
mov ah, 9
int 21h

;----------- dabba color change k liyay ------------------------------;
mov ah,6 
mov al,0 ;character for the box
mov bh, 10111111b ;color selection
mov cl,24 ;moves box towards left
mov ch,5 ; moves box down
mov dh,5 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,30 ; Length of box
int 10h

mov ah,02h
mov bh,0
mov dh,05h ; y-axis
mov dl,19h ; x-axis
int 10h


lea dx, emptySideL
mov ah, 9
int 21h

;----------- dabba color change k liyay ------------------------------;
mov ah,6 
mov al,0 ;character for the box
mov bh, 10111111b ;color selection
mov cl,48 ;moves box towards left
mov ch,5 ; moves box down
mov dh,5 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,54  ; Length of box
int 10h

mov ah,02h
mov bh,0
mov dh,05h ; y-axis
mov dl,31h ; x-axis
int 10h


lea dx, emptySideR
mov ah, 9
int 21h

;===============================================             **   FILLED BOX KHAALI    **        ====================================================

mov ah,6 
mov al,0 ;character for the box
mov bh, 10111111b ;color selection
mov cl,2 ;moves box towards left
mov ch,7 ; moves box down
mov dh,7 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,7 ; Length of box
int 10h

mov ah,6 
mov al,0 ;character for the box
mov bh, 10111111b;color selection
mov cl,2 ;moves box towards left
mov ch,10 ; moves box down
mov dh,10 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,7 ; Length of box
int 10h

mov ah,6 
mov al,0 ;character for the box
mov bh, 10111111b;color selection
mov cl,2 ;moves box towards left
mov ch,13 ; moves box down
mov dh,13 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,7 ; Length of box
int 10h

mov ah,6 
mov al,0 ;character for the box
mov bh, 10111111b;color selection
mov cl,2 ;moves box towards left
mov ch,16 ; moves box down
mov dh,16 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,7 ; Length of box
int 10h

mov ah,6 
mov al,0 ;character for the box
mov bh, 10111111b;color selection
mov cl,2 ;moves box towards left
mov ch,19 ; moves box down
mov dh,19 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,7 ; Length of box
int 10h

mov ah,6 
mov al,0 ;character for the box
mov bh, 10111111b;color selection
mov cl,2 ;moves box towards left
mov ch,22 ; moves box down
mov dh,22 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,7 ; Length of box
int 10h

;===============================================             **    ARROWS WALA CODE    **        ====================================================
mov ah,02h
mov bh,0
mov dh,7 ; y-axis
mov dl,5 ; x-axis
int 10h

lea dx, arrow
mov ah, 9
int 21h

mov ah,02h
mov bh,0
mov dh,10 ; y-axis
mov dl,5 ; x-axis
int 10h

lea dx, arrow
mov ah, 9
int 21h

mov ah,02h
mov bh,0
mov dh,13 ; y-axis
mov dl,5 ; x-axis
int 10h

lea dx, arrow
mov ah, 9
int 21h

mov ah,02h
mov bh,0
mov dh,16 ; y-axis
mov dl,5 ; x-axis
int 10h

lea dx, arrow
mov ah, 9
int 21h


mov ah,02h
mov bh,0
mov dh,19 ; y-axis
mov dl,5 ; x-axis
int 10h

lea dx, arrow
mov ah, 9
int 21h

mov ah,02h
mov bh,0
mov dh,22 ; y-axis
mov dl,5 ; x-axis
int 10h

lea dx, arrow
mov ah, 9
int 21h

;===============================================        **   ALL RULES ARE DISPLAYED HERE    **      ====================================================
mov ah,02h
mov bh,0
mov dh,7 ; y-axis
mov dl,9 ; x-axis
int 10h

lea dx, rule1
mov ah, 9
int 21h

mov ah,02h
mov bh,0
mov dh,10 ; y-axis
mov dl,9 ; x-axis
int 10h

lea dx, rule2
mov ah, 9
int 21h

mov ah,02h
mov bh,0
mov dh,13 ; y-axis
mov dl,9 ; x-axis
int 10h

lea dx, rule3
mov ah, 9
int 21h

mov ah,02h
mov bh,0
mov dh,16 ; y-axis
mov dl,9 ; x-axis
int 10h

lea dx, rule4
mov ah, 9
int 21h

mov ah,02h
mov bh,0
mov dh,19 ; y-axis
mov dl,9 ; x-axis
int 10h

lea dx, rule5
mov ah, 9
int 21h

mov ah,02h
mov bh,0
mov dh,22 ; y-axis
mov dl,9 ; x-axis
int 10h

lea dx, rule6
mov ah, 9
int 21h

;------------------------------ ENTER TO CONTINUE WALA CODE -------------------------------;
mov ah,02h
mov bh,0
mov dh,26 ; y-axis
mov dh,26 ; y-axis
mov dl,15h ; x-axis
int 10h

lea dx,textEnter2
mov ah, 09h
int 21h

endinput4:
mov ah, 1
int 21h
cmp al, 13
je MainMenu4
jmp endinput4

MainMenu4:
ret

rules endp

;INFO PROC ENDING HERE


CreditsPageProc proc

;------------------------------------------------------------------------------------------------------------------------------------------------------------;
;                                                                    credits PAGE CODE                                                                       ;
;------------------------------------------------------------------------------------------------------------------------------------------------------------;

MOV AH, 06H ; set clear screen function
    MOV AL, 00H ; clear the screen
    MOV BH, 07H ; set attribute (white on black)
    MOV CX, 0 ; set upper left corner of screen
    MOV DX, 184FH ; set lower right corner of screen
    INT 10H ; call BIOS video services

;----------------------------------------------------------------------------------------------------------------------------------------------------------;
;                                                                 DRAWING BACKGROUND BOX                                                                   ;
;----------------------------------------------------------------------------------------------------------------------------------------------------------;

mov ah,6 
mov al,0 ;character for the box
mov bh,00110000b ;color selection
mov cl,0 ; CL and CH registers specify the row and column of the upper left corner of the box
mov ch,0
mov dh,90 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,90
int 10h

;===================================================                * AIR XONIX TEXT *          ==============================================================

mov ah,02h
mov bh,0
mov dh,2h ; y-axis
mov dl,1Bh ; x-axis
int 10h

lea dx, game_name
mov ah, 9
int 21h

;----------- dabba color change k liyay ------------------------------;
mov ah,6 
mov al,0 ;character for the box
mov bh, 00111111b ;color selection
mov cl,25 ;moves box towards left
mov ch,3 ; moves box down
mov dh,3 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,54  ; Length of box
int 10h

mov ah,02h
mov bh,0
mov dh,3h ; y-axis
mov dl,19h ; x-axis
int 10h


lea dx, doubleline
mov ah, 9
int 21h
  
;===================================================             ** credits wala text **            ========================================================

mov ah,02h
mov bh,0
mov dh,05h ; y-axis
mov dl,21h ; x-axis
int 10h

lea dx, creditsText
mov ah, 9
int 21h

;----------- dabba color change k liyay ------------------------------;
mov ah,6 
mov al,0 ;character for the box
mov bh, 10111111b ;color selection
mov cl,24 ;moves box towards left
mov ch,5 ; moves box down
mov dh,5 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,30 ; Length of box
int 10h

mov ah,02h
mov bh,0
mov dh,05h ; y-axis
mov dl,19h ; x-axis
int 10h


lea dx, emptySideL
mov ah, 9
int 21h

;----------- dabba color change k liyay ------------------------------;
mov ah,6 
mov al,0 ;character for the box
mov bh, 10111111b ;color selection
mov cl,48 ;moves box towards left
mov ch,5 ; moves box down
mov dh,5 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,54  ; Length of box
int 10h

mov ah,02h
mov bh,0
mov dh,05h ; y-axis
mov dl,31h ; x-axis
int 10h


lea dx, emptySideR
mov ah, 9
int 21h

;===================================================             ** Credits wala text **            ========================================================


mov ah,02h
mov bh,0
mov dh,08 ; y-axis
mov dl,21 ; x-axis
int 10h


lea dx, textutext1
mov ah, 9
int 21h

mov ah,02h
mov bh,0
mov dh,10 ; y-axis
mov dl,23 ; x-axis
int 10h

lea dx, textutext2
mov ah, 9
int 21h

mov ah,02h
mov bh,0
mov dh,12 ; y-axis
mov dl,23 ; x-axis
int 10h

lea dx, textutext3
mov ah, 9
int 21h

mov ah,02h
mov bh,0
mov dh,14 ; y-axis
mov dl,16 ; x-axis
int 10h

lea dx, textutext4
mov ah, 9
int 21h

mov ah,02h
mov bh,0
mov dh,16 ; y-axis
mov dl,8 ; x-axis
int 10h

lea dx, textutext5
mov ah, 9
int 21h

mov ah,02h
mov bh,0
mov dh,18 ; y-axis
mov dl,6 ; x-axis
int 10h

lea dx, textutext6
mov ah, 9
int 21h

mov ah,02h
mov bh,0
mov dh,20 ; y-axis
mov dl,19 ; x-axis
int 10h

lea dx, textutext7
mov ah, 9
int 21h

mov ah,02h
mov bh,0
mov dh,22 ; y-axis
mov dl,12 ; x-axis
int 10h

lea dx, textutext8
mov ah, 9
int 21h

;===================================================           * ENTER TO CONTINUE WALA CODE  *          ==============================================================

mov ah,6 
mov al,0 ;character for the box
mov bh, 10111111b ;color selection
mov cl,20   ;moves box towards left
mov ch,24 ; moves box down
mov dh,25 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,60 ; Length of box
int 10h

mov ah,02h
mov bh,0
mov dh,24 ; y-axis
mov dl,22 ; x-axis
int 10h

lea dx,textEnter2
mov ah, 09h
int 21h

endinput6:
mov ah, 1
int 21h
cmp al, 13
je MainMenu6
jmp endinput6

MainMenu6:
ret
CreditsPageProc endp

;------------------------------------------------------------------------------------------------------------------------------------------------------------;
;                                                                    options PAGE CODE                                                                       ;
;------------------------------------------------------------------------------------------------------------------------------------------------------------;

OptionsPageProc proc

;===================================================                * AIR XONIX TEXT *          ==============================================================

 MainMenu5_start:

MOV AH, 06H ; set clear screen function
    MOV AL, 00H ; clear the screen
    ;MOV BH, 07H ; set attribute (white on black)
    MOV CX, 0 ; set upper left corner of screen
    MOV DX, 184FH ; set lower right corner of screen
    INT 10H ; call BIOS video services


;drawing BG box
mov ah,6 
mov al,0 ;character for the box
mov bh,00110000b ;color selection
mov cl,0 ; CL and CH registers specify the row and column of the upper left corner of the box
mov ch,0
mov dh,90 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,90
int 10h

mov ah,02h
mov bh,0
mov dh,2h ; y-axis
mov dl,1Bh ; x-axis
int 10h

lea dx, game_name
mov ah, 9
int 21h

;----------- dabba color change k liyay ------------------------------;
mov ah,6 
mov al,0 ;character for the box
mov bh, 00111111b ;color selection
mov cl,25 ;moves box towards left
mov ch,3 ; moves box down
mov dh,3 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,54  ; Length of box
int 10h

mov ah,02h
mov bh,0
mov dh,3h ; y-axis
mov dl,19h ; x-axis
int 10h


lea dx, doubleline
mov ah, 9
int 21h
  
;===================================================             ** Options wala text **            ========================================================

mov ah,02h
mov bh,0
mov dh,05h ; y-axis
mov dl,22h ; x-axis
int 10h

lea dx, optionsText
mov ah, 9
int 21h

;----------- dabba color change k liyay ------------------------------;
mov ah,6 
mov al,0 ;character for the box
mov bh, 10111111b ;color selection
mov cl,24 ;moves box towards left
mov ch,5 ; moves box down
mov dh,5 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,30 ; Length of box
int 10h

mov ah,02h
mov bh,0
mov dh,05h ; y-axis
mov dl,19h ; x-axis
int 10h


lea dx, emptySideL
mov ah, 9
int 21h

;----------- dabba color change k liyay ------------------------------;
mov ah,6 
mov al,0 ;character for the box
mov bh, 10111111b ;color selection
mov cl,48 ;moves box towards left
mov ch,5 ; moves box down
mov dh,5 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,54  ; Length of box
int 10h

mov ah,02h
mov bh,0
mov dh,05h ; y-axis
mov dl,31h ; x-axis
int 10h


lea dx, emptySideR
mov ah, 9
int 21h

;<ABHI MEIN YAHA CODING KRRHI HOUN INCASE I FORGET>

mov ah,6 
mov al,0 ;character for the box
mov bh,ControlSettingsButton ;color selection
mov cl,15 ;moves box towards left
mov ch,7 ; moves box down
mov dh,10 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,38; Length of box
int 10h

;----------------------------------->>>>>>>>>>>>>>>> move cursor to ControlSettingsButton text wala box <<<<<<<<<-------------------------------------------------------;
mov dx,0
mov ah,02h
mov bh,0h
mov dh,7 ; y-axis
mov dl,16 ; x-axis
int 10h

;------------------------------------->>>>>>>>>>>>>>>> Control text on its box <<<<<<<<<<<<<<<<<---------------------------------------------------------;
mov si, offset Control
mov ah,02h
mov bh,0
mov dh,8 ; y-axis
mov dl,21 ; x-axis
int 10h

lea dx, Control
mov ah, 9
int 21h

;------------------------------------->>>>>>>>>>>>>>>> Settings text on same box <<<<<<<<<<<<<<<<<---------------------------------------------------------;
mov si, offset Settings
mov ah,02h
mov bh,0
mov dh,9 ; y-axis
mov dl,20 ; x-axis
int 10h

lea dx, Settings
mov ah, 9
int 21h



;GraphicSettings
;===================================================         * GraphicSettings TEXT *          ==============================================================

mov ah,6 
mov al,0 ;character for the box
mov bh,GraphicSettingsButton ;color selection
mov cl,42 ;moves box towards left
mov ch,7 ; moves box down
mov dh,10 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,65 ; Length of box
int 10h

; move cursor to graphic settings text wala box
mov dx,0
mov ah,02h
mov bh,0h
mov dh,8 ; y-axis
mov dl,42 ; x-axis
int 10h

; GraphicSettings text on its box
mov si, offset Graphic
mov ah,02h
mov bh,0
mov dh,8 ; y-axis
mov dl,47 ; x-axis
int 10h

lea dx, Graphic
mov ah, 9
int 21h

; Settings text on its box
mov si, offset Settings
mov ah,02h
mov bh,0
mov dh,9 ; y-axis
mov dl,47 ; x-axis
int 10h

lea dx, Settings
mov ah, 9
int 21h

;AccessibilityButton
;===================================================                * Accessibility TEXT *          ==============================================================

mov ah,6 
mov al,0 ;character for the box
mov bh,AccessibilityButton ;color selection
mov cl,15 ;moves box towards left
mov ch,12 ; moves box down
mov dh,15 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,38 ; Length of box
int 10h

; move cursor to Accessibility text wala box
mov dx,0
mov ah,02h
mov bh,0h
mov dh,13 ; y-axis
mov dl,18 ; x-axis
int 10h 

; Accessibility text on its box
mov si, offset Accessibility
mov ah,02h
mov bh,0
mov dh,13 ; y-axis
mov dl,18 ; x-axis
int 10h

lea dx, Accessibility
mov ah, 9
int 21h

; Settings text on its box
mov si, offset Settings
mov ah,02h
mov bh,0
mov dh,14 ; y-axis
mov dl,19 ; x-axis
int 10h

lea dx, Settings
mov ah, 9
int 21h

; AccountSettings
;===================================================                * AccountSettings TEXT *          ==============================================================

mov ah,6 
mov al,0 ;character for the box
mov bh,AccountSettingsButton ;color selection
mov cl,42 ;moves box towards left
mov ch,12 ; moves box down
mov dh,15 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,65 ; Length of box
int 10h

; move cursor to graphic settings text wala box
mov dx,0
mov ah,02h
mov bh,0h
mov dh,13 ; y-axis
mov dl,42 ; x-axis
int 10h

; Account  text on its box
mov si, offset Account
mov ah,02h
mov bh,0
mov dh,13 ; y-axis
mov dl,48 ; x-axis
int 10h

lea dx, Account
mov ah, 9
int 21h

;  Settings text on its box
mov si, offset Settings
mov ah,02h
mov bh,0
mov dh,14 ; y-axis
mov dl,47 ; x-axis
int 10h

lea dx, Settings
mov ah, 9
int 21h


;Credits
;===================================================                * Credits TEXT *          ==============================================================

mov ah,6 
mov al,0 ;character for the box
mov bh,CreditsButton ;color selection
mov cl,15 ;moves box towards left
mov ch,17 ; moves box down
mov dh,20 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,38 ; Length of box
int 10h

; move cursor to Credits text wala box
mov dx,0
mov ah,02h
mov bh,0h
mov dh,19 ; y-axis
mov dl,20 ; x-axis
int 10h 

; Game text on its box
mov si, offset Game
mov ah,02h
mov bh,0
mov dh,18 ; y-axis
mov dl,24 ; x-axis
int 10h

lea dx, Game
mov ah, 9
int 21h

; Credits text on its box
mov si, offset Credits
mov ah,02h
mov bh,0
mov dh,19 ; y-axis
mov dl,21 ; x-axis
int 10h

lea dx, Credits
mov ah, 9
int 21h


; ;Help&support
;===================================================                * Help&support TEXT *          ==============================================================

mov ah,6 
mov al,0 ;character for the box
mov bh,HelpsupportButton ;color selection
mov cl,42 ;moves box towards left
mov ch,17 ; moves box down
mov dh,20 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,65 ; Length of box
int 10h

; move cursor to support text wala box
mov dx,0
mov ah,02h
mov bh,0h
mov dh,18 ; y-axis
mov dl,28 ; x-axis
int 10h

; Game text on its box
mov si, offset Game
mov ah,02h
mov bh,0
mov dh,18 ; y-axis
mov dl,51 ; x-axis
int 10h

lea dx, Game
mov ah, 9
int 21h

; support text on its box
mov si, offset Helpsupport
mov ah,02h
mov bh,0
mov dh,19 ; y-axis
mov dl,48 ; x-axis
int 10h

lea dx, Helpsupport
mov ah, 9
int 21h

;===================================================           * E TO CONTINUE WALA CODE  *          ==============================================================

mov ah,6 
mov al,0 ;character for the box
mov bh, 10111111b ;color selection
mov cl,20   ;moves box towards left
mov ch,22 ; moves box down
mov dh,25 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,60 ; Length of box
int 10h

mov ah,02h
mov bh,0
mov dh,23 ; y-axis
mov dl,22 ; x-axis
int 10h

lea dx,textEnter2
mov ah, 09h
int 21h

;--------------------------------------------------------------------------------------------------------------------------------------------------------------
;===================================================                * TAKE USER INPUT *          ==============================================================
;--------------------------------------------------------------------------------------------------------------------------------------------------------------

; move cursor to Exit text wala box
mov dx,0
mov ah,02h
mov bh,0h
mov dh,25 ; y-axis
mov dl,0 ; x-axis
int 10h

mov ah,01h 
int 21h
cmp al,'w'
je up_w2

cmp al,'s'
je down_s2

cmp al,13
je enter_done2

cmp al, 'e'
je MainMenu5

jmp endd2

;------------------ UP WALA CODE -----------------------------;
up_w2:
cmp cursor,1
je endd2
dec cursor
jmp endd2

;-------------- DOWN WALA CODE ------------------------------;
down_s2:
cmp cursor,6
je endd2
inc cursor
jmp endd2

;----------- ENTER TO CONTINUE ------------------------------;
;----------- DIFFERENT JMPS ON OPTIONS MENU PAGE ------------------------------;

enter_done2:

cmp cursor,03
je Credits_Label

;cmp cursor,6
;je foundz2

;jmp SkipLabel2

;----------- MENU SE SELECT KI HUI CHEEZ PER JUMP KARNAY K LIYAY ------------------------------;

Credits_Label:
call CreditsPageProc

;foundz2:
;ret

;===================================================             **** BUTTONS AUR UNN K HASEEN COLORS ****            ========================================================

endd2:
mov ControlSettingsButton, 00000011b
mov GraphicSettingsButton, 00000011b
mov AccessibilityButton, 00000011b
mov AccountSettingsButton, 00000011b
mov CreditsButton,00000011b
mov HelpsupportButton, 00000011b

cmp cursor,1
je ControlSettingsLabel

cmp cursor,2
je GraphicSettingsLabel

cmp cursor,3
je AccessibilityLabel

cmp cursor,4
je AccountSettingsLabel

cmp cursor,5
je CreditsButtonLabel

cmp cursor,6
je HelpsupportButtonLabel


ControlSettingsLabel:
mov ControlSettingsButton, 10000011b
jmp SkipLabel2

GraphicSettingsLabel:
mov GraphicSettingsButton, 10000011b
jmp SkipLabel2

AccessibilityLabel:
mov AccessibilityButton, 10000011b
jmp SkipLabel2

AccountSettingsLabel:
mov AccountSettingsButton, 10000011b
jmp SkipLabel2

CreditsButtonLabel:
mov CreditsButton,10000011b
jmp SkipLabel2

HelpsupportButtonLabel:
mov HelpsupportButton, 10000011b
jmp SkipLabel2

SkipLabel2:
jmp MainMenu5_start


MainMenu5:
mov cursor,5

mov ControlSettingsButton,10000011b
mov GraphicSettingsButton, 00000011b
mov AccessibilityButton, 00000011b
mov AccountSettingsButton, 00000011b
mov CreditsButton, 00000011b
mov HelpsupportButton, 00000011b

ret
OptionsPageProc endp

;===================================================                * OPTIONS PAGE ENDS HERE *          ==============================================================


;<-------------------------------------------------------------------->


;------------------------------------------------------------------------------------------------------------------------------------------------------------;
;                                                                    MAIN MENU CODE                                                                       ;
;------------------------------------------------------------------------------------------------------------------------------------------------------------;

MainMenu proc

MainMenuLabel:

MOV AH, 06H ; set clear screen function
    MOV AL, 00H ; clear the screen
    MOV BH, 07H ; set attribute (white on black)
    MOV CX, 0 ; set upper left corner of screen
    MOV DX, 184FH ; set lower right corner of screen
    INT 10H ; call BIOS video services

;----------------------------------------------------------------------------------------------------------------------------------------------------------;
;                                                                 DRAWING BACKGROUND BOX                                                                   ;
;----------------------------------------------------------------------------------------------------------------------------------------------------------;

mov ah,6 
mov al,0 ;character for the box
mov bh,00110000b ;color selection
mov cl,0 ; CL and CH registers specify the row and column of the upper left corner of the box
mov ch,0
mov dh,90 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,90
int 10h

;===================================================                * AIR XONIX TEXT *          ==============================================================

mov ah,02h
mov bh,0
mov dh,1 ; y-axis
mov dl,27 ; x-axis
int 10h

lea dx, game_name
mov ah, 9
int 21h

;===================================================             * CHARACTERS POSITIONING *          ==============================================================

;mov ah,0h
;mov al,13h
;int 10h

; change curson pos
;mov dx,0
;mov ah,02h
;mov bh,0h
;mov dh,6 ; y-axis
;mov dl,2 ; x-axis
;int 10h

;call drawUrankhatola_sprite

;Text Mode On
;mov ah,00h
;mov al,03h
;int 10h

;-------------------------------------->>>>>>>>>>>>>>>>>>>>> Make box for start game text <<<<<<<<<<<<<<-------------------------------------------------------;
mov ah,6 
mov al,0 ;character for the box
mov bh,StartGameButton ;color selection
mov cl,26 ;moves box towards left
mov ch,3 ; moves box down
mov dh,5 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,53 ; Length of box
int 10h

;------------------------------------->>>>>>>>>>>>>>>> move cursor to  start game text wala box <<<<<<<<<<<<<<<-------------------------------------------------;
mov dx,0
mov ah,02h
mov bh,0h
mov dh,4 ; y-axis
mov dl,27 ; x-axis
int 10h

;------------------------------------->>>>>>>>>>>>>>>>> start game text on its box <<<<<<<<<<<<----------------------------------------------------------------;
mov si, offset StartGame
mov ah,02h
mov bh,0
mov dh,4 ; y-axis
mov dl,31 ; x-axis
int 10h

lea dx, StartGame
mov ah, 9
int 21h


;------------------------------------>>>>>>>>>>>>>>> Make box for Select Level text <<<<<<<<<<<----------------------------------------------------------------;
mov ah,6 
mov al,0 ;character for the box
mov bh,SelectLevelButton ;color selection
mov cl,26 ;moves box towards left
mov ch,7 ; moves box down
mov dh,9 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,53 ; Length of box
int 10h

;----------------------------------->>>>>>>>>>>>>>>> move cursor to Select Level text wala box <<<<<<<<<-------------------------------------------------------;
mov dx,0
mov ah,02h
mov bh,0h
mov dh,8 ; y-axis
mov dl,25 ; x-axis
int 10h

;------------------------------------->>>>>>>>>>>>>>>> Select Level text on its box <<<<<<<<<<<<<<<<<---------------------------------------------------------;
mov si, offset SelectLevel
mov ah,02h
mov bh,0
mov dh,8 ; y-axis
mov dl,29 ; x-axis
int 10h

lea dx, SelectLevel
mov ah, 9
int 21h

;Highscore
;===================================================                * HIGHSCORE TEXT *          ==============================================================

mov ah,6 
mov al,0 ;character for the box
mov bh,HighscoreButton ;color selection
mov cl,26 ;moves box towards left
mov ch,11 ; moves box down
mov dh,13 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,53 ; Length of box
int 10h

; move cursor to Highscore text wala box
mov dx,0
mov ah,02h
mov bh,0h
mov dh,12 ; y-axis
mov dl,28 ; x-axis
int 10h

; Highscore text on its box
mov si, offset Highscore
mov ah,02h
mov bh,0
mov dh,12 ; y-axis
mov dl,31 ; x-axis
int 10h

lea dx, Highscore
mov ah, 9
int 21h


;Information
;===================================================                * INFORMATION TEXT *          ==============================================================

mov ah,6 
mov al,0 ;character for the box
mov bh,InformationButton ;color selection
mov cl,26 ;moves box towards left
mov ch,15 ; moves box down
mov dh,17 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,53 ; Length of box
int 10h

; move cursor to Information text wala box
mov dx,0
mov ah,02h
mov bh,0h
mov dh,16 ; y-axis
mov dl,28 ; x-axis
int 10h 

; Information text on its box
mov si, offset Information
mov ah,02h
mov bh,0
mov dh,16 ; y-axis
mov dl,29 ; x-axis
int 10h

lea dx, Information
mov ah, 9
int 21h

; Options
;===================================================                * OPTIONS TEXT *          ==============================================================

mov ah,6 
mov al,0 ;character for the box
mov bh,OptionsButton ;color selection
mov cl,26 ;moves box towards left
mov ch,19 ; moves box down
mov dh,21 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,53 ; Length of box
int 10h

; move cursor to Options text wala box
mov dx,0
mov ah,02h
mov bh,0h
mov dh,20 ; y-axis
mov dl,28 ; x-axis
int 10h

; Options text on its box
mov si, offset Options
mov ah,02h
mov bh,0
mov dh,20 ; y-axis
mov dl,33 ; x-axis
int 10h

lea dx, Options
mov ah, 9
int 21h

; Exit button
;===================================================                * EXIT TEXT *          ==============================================================

mov ah,6 
mov al,0 ;character for the box
mov bh,ExittButton ;color selection
mov cl,26 ;moves box towards left
mov ch,23 ; moves box down
mov dh,25 ;DH and DL registers specify the row and column of the lower right corner of the box.
mov dl,53 ; Length of box
int 10h

; move cursor to Exit text wala box
mov dx,0
mov ah,02h
mov bh,0h
mov dh,24 ; y-axis
mov dl,28 ; x-axis
int 10h

; Exit text on its box
mov si, offset Exitt
mov ah,02h
mov bh,0
mov dh,24 ; y-axis
mov dl,35 ; x-axis
int 10h

lea dx, Exitt
mov ah, 9
int 21h

;--------------------------------------------------------------------------------------------------------------------------------------------------------------
;===================================================                * TAKE USER INPUT *          ==============================================================
;--------------------------------------------------------------------------------------------------------------------------------------------------------------
mov ah,01h 
int 21h
cmp al,'w'
je up_w

cmp al,'s'
je down_s

cmp al,13
je enter_done
jmp endd

;----------- UP WALA CODE ------------------------------;
up_w:
cmp cursor,1
je endd
dec cursor
jmp endd

;----------- DOWN WALA CODE ------------------------------;
down_s:
cmp cursor,6
je endd
inc cursor
jmp endd

;----------- ENTER TO CONTINUE ------------------------------;
;----------- DIFFERENT JMPS ON MAIN MENU PAGE ------------------------------;

enter_done:

cmp cursor,01
je StartGaming_Label

cmp cursor,02
je SelectLevel_Label

cmp cursor,03
je HighscorePage_Label

cmp cursor,4
je rules_info_Label

cmp cursor,5
je OptionsPage_Label

cmp cursor,6
je foundz

jmp SkipLabel

;----------- MENU SE SELECT KI HUI CHEEZ PER JUMP KARNAY K LIYAY ------------------------------;

StartGaming_Label:
;call GameStart
call AllGameLogic
jmp SkipLabel


SelectLevel_Label:
call SelectLevel_proc
jmp SkipLabel

HighscorePage_Label:
call HighscoreProc
jmp SkipLabel

rules_info_Label:
call rules
jmp SkipLabel


OptionsPage_Label:
mov cursor,1
call OptionsPageProc
jmp SkipLabel


foundz:
ret

;===================================================             **** BUTTONS AUR UNN K HASEEN COLORS ****            ========================================================

endd:
mov StartGameButton, 00000011b
mov SelectLevelButton, 00000011b
mov HighscoreButton, 00000011b
mov InformationButton, 00000011b
mov OptionsButton,00000011b
mov ExittButton, 00000011b

cmp cursor,1
je StartGameLabel

cmp cursor,2
je SelectLevelLabel

cmp cursor,3
je HighscoreLabel

cmp cursor,4
je InformationLabel

cmp cursor,5
je OptionsLabel

cmp cursor,6
je ExittLabel


StartGameLabel:
mov StartGameButton, 10000011b
jmp SkipLabel

SelectLevelLabel:
mov SelectLevelButton, 10000011b
jmp SkipLabel

HighscoreLabel:
mov HighscoreButton, 10000011b
jmp SkipLabel

InformationLabel:
mov InformationButton, 10000011b
jmp SkipLabel

OptionsLabel:
mov OptionsButton,10000011b
jmp SkipLabel

ExittLabel:
mov ExittButton, 10000011b
jmp SkipLabel

SkipLabel:
jmp MainMenuLabel

ret
MainMenu endp

;===================================================             **** MAIN MENU ENDS HERE ****            ========================================================



;------------------------------------------------------------------------------------------------------------------------------------------------------------;
;                                                                    *MAIN PAGE WALA CODE*                                                                       ;
;------------------------------------------------------------------------------------------------------------------------------------------------------------;

MainPage proc

;===================================================                * AIR XONIX TEXT *          ==============================================================
 
mov ah,02h
mov bh,0
mov dh,7h ; y-axis
mov dl,1Bh ; x-axis
int 10h

lea dx, game_name
mov ah, 9
int 21h

;===================================================                * ENTER TO CONTINUE  *          ==============================================================

mov ah,02h
mov bh,0
mov dh,0Ah ; y-axis
mov dl,1Bh ; x-axis
int 10h

lea dx,textEnter
mov ah, 9
int 21h

enterCode:
		mov ah, 1
		int 21h
		cmp al, 13
		jne enterCode

;===================================================             **** Enter Name wala text ****            ========================================================

mov ah,02h
mov bh,0
mov dh,0Ch ; y-axis
mov dl,18h ; x-axis
int 10h

lea dx,enterName
mov ah, 9
int 21h

;===================================================             **** BOX FOR ENTERING NAME ****            ========================================================

mov ah,02h
mov bh,0
mov dh,0Eh ; y-axis
mov dl,18h ; x-axis
int 10h

lea dx,emptyBox
mov ah, 9
int 21h

mov ah,02h
mov bh,0
mov dh,0Fh ; y-axis
mov dl,18h ; x-axis
int 10h

lea dx,emptySideL
mov ah, 9
int 21h

mov ah,02h
mov bh,0
mov dh,0Fh ; y-axis
mov dl,32h ; x-axis
int 10h

lea dx,emptySideR
mov ah, 9
int 21h

mov ah,02h
mov bh,0
mov dh,10h ; y-axis
mov dl,18h ; x-axis
int 10h

lea dx,emptyBox
mov ah, 9
int 21h
;===================================================             **** ENTER NAME ENDS HERE ****            ========================================================



;---------------------------------- move cursor to input name wala box ---------------------------;
mov dx,0
mov ah,02h
mov bh,0h
mov dh,15 ; y-axis
mov dl,31 ; x-axis
int 10h

;--------------------------------- take input string -------------------------------------;
mov dx, offset userInputName
mov si,0
input:
mov ah,01h 
int 21h
cmp al,'.'
je mainnmenHELP
mov [userInputName+si],al
inc si
jmp input

;-------------------------------- get length of the input string -------------------------;
mov si,offset userInputName
mov cl, 0
mov ch, 0
sub si, 2 ; adjust pointer to ignore carriage return and line feed characters
cld ; clear the direction flag to increment si
repne scasb ; scan the buffer until end of string
not cx ; complement cx to get the length of the string
dec cx ; decrement cx to ignore the null terminator

;-------------------------------- store the length of the input string ---------------------;
mov sizee, cx
ret
MainPage endp
;===================================================             **** MAIN PAGE ENDS HERE ****            ========================================================




;------------------------------------------------------------------------------------------------------------------------------------------------------------;
;                                                                    *CALLING MAIN MENU*                                                                       ;
;------------------------------------------------------------------------------------------------------------------------------------------------------------;

mainnmenHELP:

call MainMenu


;===================================================                * DRAW PIXEL WALA CODE *          ==============================================================

drawPixel proc
	loopO word 2
	mov cx,loopO
	drawPixO:
		push xStart
		push cx
		mov cx,2
		drawPixI:
			push cx
			mov ah,0ch
			mov al,[si]
			mov cx, xStart
			mov dx,yStart
			int 10h
			pop cx
			inc xStart
		loop drawPixI
		pop cx
		pop xStart
		inc yStart
	loop drawPixO
	ret 
	drawPixel endp

;===================================================                * DRAWING MODOK WALA CODE *          ==============================================================

drawModok proc
mov ah,0h
mov al,13h
int 10h
	push bx
	mov bx, modokY
	mov yStart, bx
	mov bx, modokX
	mov xStart, bx
	pop bx

	push wid
	mov wid, 32
	push hgt
	mov hgt,26
	mov cx,wid
	mov si, offset modok
	drawModokO: 
		push cx
		push xStart
		mov cx, hgt
		drawModokI:
			push cx
			push xStart
			push yStart
  			call drawPixel
			pop yStart
			pop xStart

			pop cx
			add si,1
			add xStart,2
			loop drawModokI
		pop xStart
		pop cx
		add yStart,2
	loop drawModokO
	pop wid
	pop hgt
    mov ah,1
    int 21h
	ret
	drawModok endp

;===================================================                * DRAW BULLET WALA CODE *          ==============================================================

drawBullet proc
mov ah,0h
mov al,13h
int 10h
push bx
mov bx, bulletY
mov yStart, bx
mov bx, bulletX
mov xStart, bx
pop bx

push wid
mov wid,19
push hgt
mov hgt,12
mov cx,wid ;make the bullet by first outer loop of width then inner loop of heigth 
mov si, offset bullet
drawBulletO: 
	push cx
	push xStart
	mov cx, hgt
	drawBulletI:
		push cx

		push xStart
		push yStart
  		call drawPixel
		pop yStart
		pop xStart

		pop cx
		add si,1
		add xStart,1
		loop drawBulletI
	pop xStart
	pop cx
	add yStart,1
loop drawBulletO
pop wid
pop hgt
mov ah,1
int 21h
ret
drawBullet endp

;===================================================                * URAN KATOLA BANANY KA CODE *          ==============================================================

drawUranKhatola proc
    mov ah,0h
    mov al,13h
    int 10h

    push bx
    mov bx,killerY
    mov killerY, bx
    mov bx,killerX
    mov killerX,bx
    pop bx

    push wid
    mov wid, 19
    push hgt
    mov hgt, 18
    mov cx,wid
    mov si, offset killer
    drawkillerO: 
	    push cx
	    push killerX
	    mov cx, hgt
	    drawkillerI:
		    push cx

		    push killerX
		    push killerY
  		    call drawPixel
		    pop killerY
		    pop killerX

		    pop cx
		    add si, 1
		    add killerY, 1
		    loop drawkillerI
	    pop killerX
	    pop cx
	    add killerY, 1
    loop drawkillerO

    pop wid
    pop hgt
	mov ah,1
    int 21h
    ret
drawUranKhatola endp

;===================================================                * CHIMI BANA RAHAY HAIN HUEHUEHUE *          ==============================================================

drawChimi proc
	mov ah,0h
	mov al,13h
	int 10h
	mov yStart,50
	mov xStart,13

	push wid
	mov wid,23
	push hgt
	mov hgt,25
	mov cx,wid
	mov si, offset chimichanga

	drawChimiO: 
		push cx
		push xStart
		mov cx, hgt
		drawChimiI:
			push cx

			push xStart
			push yStart
  			call drawPixel
			pop yStart
			pop xStart

			pop cx
			add si,1
			add xStart,1
			loop drawChimiI
		pop xStart
		pop cx
		add yStart,1
	loop drawChimiO
	pop wid
	pop hgt
	mov ah,1
    int 21h
	ret
drawChimi endp


;===================================================                * ENEMY BANANAY KA CODE *          ==============================================================

drawUrankhatola_sprite proc
    mov ah,0h
    mov al,13h
    int 10h

    push bx
    mov bx,Urankhatola_spriteY
    mov yStart, bx
    mov bx,Urankhatola_spriteX
    mov xStart,bx
    pop bx

    push wid
    mov wid, 26
    push hgt
    mov hgt, 18
    mov cx,wid
    mov si, offset Urankhatola_sprite
    drawUrankhatola_spriteO: 
	    push cx
	    push xStart
	    mov cx, hgt
	    drawUrankhatola_spriteI:
		    push cx

		    push xStart
		    push yStart
  		    call drawPixel
		    pop yStart
		    pop xStart

		    pop cx
		    add si, 1
		    add xStart, 1
		    loop drawUrankhatola_spriteI
	    pop xStart
	    pop cx
	    add yStart, 1
    loop drawUrankhatola_spriteO

    pop wid
    pop hgt
	mov ah,1
    int 21h
    ret
drawUrankhatola_sprite endp




mov ah,4ch
int 21h

end main