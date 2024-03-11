a = 0
m = 00
l = 0
--
while true do

--Löschanlage--

shell.run("la")


--BMA--


s = 1
h = 0
t = 0
l = 0

--variables--

--s		--Stockwerk
--a 	--Feuer-alarmstufe: 0-3: 0 nichts, 1 voralarm, 2 Feuer, 3 Vollbrand
--b 	--Brandschutztüren (1-16) (1. OG nicht verfügbar)
--l		--Löschanlage nach Stockwerk (1-16)
--m 	--ausgelößte Rauchmeldernummer 1. OG (1-16)
--n 	--Status BMA (Aktiv/Deaktiviert)
--h		--Hupe 0 = aus : 1 = Stockwerk: 2 = Gebäude
--t		--Tested nr = melder
--0     -- 1 = ohne Vorkomnisse 
--definitions--

left_red_win 			= rs.testBundledInput("left", colors.red)
--left_green_win			= rs.testBundledInput("left", colors.green)
left_magenta_win		= rs.testBundledInput("left", colors.magenta)

back_white_win 			= rs.testBundledInput("back", colors.white)
back_orange_win 		= rs.testBundledInput("back", colors.orange)
back_magenta_win  		= rs.testBundledInput("back", colors.magenta)
back_lightblue_win		= rs.testBundledInput("back", colors.lightBlue)
back_yellow_win			= rs.testBundledInput("back", colors.yellow)
back_lime_win			= rs.testBundledInput("back", colors.lime)
back_pink_win			= rs.testBundledInput("back", colors.pink)
back_grey_win			= rs.testBundledInput("back", colors.gray)
back_lightgrey_win		= rs.testBundledInput("back", colors.lightGray)
back_cyan_win			= rs.testBundledInput("back", colors.cyan)
back_purple_win			= rs.testBundledInput("back", colors.purple)
back_blue_win			= rs.testBundledInput("back", colors.blue)
back_brown_win			= rs.testBundledInput("back", colors.brown)
back_green_win			= rs.testBundledInput("back", colors.green)
back_red_win			= rs.testBundledInput("back", colors.red)
back_black_win			= rs.testBundledInput("back", colors.black)

--variable Status BMA Aktiv/Deaktiviert(n)--
 
 if left_red_win == true and a == 0 then
  term.clearLine(19)
  sleep(0.2)
  term.setCursorPos(1, 19)
  write("Status: ")
  term.setTextColor(colors.red)
  term.setCursorPos(9, 19)
  write("Deaktiviert                 ")
  term.setTextColor(colors.white)
  term.setCursorPos(1, 2)
  sleep(2)
  rs.setBundledOutput("left", colors.green, false)
  shell.run("bma_s01")
 end

 if left_red_win == false and a == 0 then
  term.clearLine(19)
  sleep(0.2)
  term.setCursorPos(1, 19)
  write("Status: ")
  term.setCursorPos(9, 19)
  term.setTextColor(colors.green)
  write("Aktiv                       ")
  term.setTextColor(colors.white)
  term.setCursorPos(1, 13)
  sleep(0.2)
 end

term.clearLine(19)
 
 --Main--
m = 0
t = 0
o = 0
a = 0
l = 0
 
  if back_white_win and back_orange_win == true or back_white_win and back_black_win == true then
    sleep(0.1)
	a = a+2     
    m = 01
   elseif back_white_win == true then
	sleep(0.1)
	a = a+1
	m = 01
   else
	sleep(0.1)
	t = 1
	m = 01
	o = 0
  end
  
  if m == 01 and a >1 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.red)
  write(m)
  term.setBackgroundColor(colors.red)
  term.setTextColor(colors.white)
  term.setCursorPos(8, 6)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(10, 6)
 elseif m == 01 and a>0 and a<2 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.orange)
  write(m)
  term.setBackgroundColor(colors.orange)
  term.setTextColor(colors.white)
  term.setCursorPos(8, 6)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(10, 6)
 end
 if t == 1 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.green)
  write(m)
  term.setBackgroundColor(colors.green)
  term.setTextColor(colors.white)
  term.setCursorPos(8, 6)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(10, 6)
 end

m = 0
t = 0

 if back_orange_win and back_white_win == true or back_orange_win and back_magenta_win == true then
    sleep(0.1)
	a = a+2    
    m = 02
   elseif back_orange_win == true then
	sleep(0.1)
	a = a+1
	m = 2
   else
    sleep(0.1)
	t = 2
	m = 02
	o = 1
  end
  
  if m == 02 and a>1 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.red)
  write(m)
  term.setBackgroundColor(colors.red)
  term.setTextColor(colors.white)
  term.setCursorPos(11, 6)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(14, 6)
 elseif m == 02 and a>0 and a<2 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.orange)
  write(m)
  term.setBackgroundColor(colors.orange)
  term.setTextColor(colors.white)
  term.setCursorPos(11, 6)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(14, 6)
 end
 if t == 2 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.green)
  write(m)
  term.setBackgroundColor(colors.green)
  term.setTextColor(colors.white)
  term.setCursorPos(11, 6)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(14, 6)
 end
  
m = 0
t = 0
 
 if back_magenta_win and back_orange_win == true or back_magenta_win and back_lightblue_win == true then
    sleep(0.1)
	a= a+2     
    m = 03
   elseif back_magenta_win == true then
	sleep(0.1)
	a = a+1
	m = 01
   else
    sleep(0.1)
	t = 3
	m = 03
	o = 1
  end
 
 if m == 03 and a>1 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.red)
  write(m)
  term.setBackgroundColor(colors.red)
  term.setTextColor(colors.white)
  term.setCursorPos(14, 6)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(17, 6)
 elseif m == 3 and a>0 and a<2 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.orange)
  write(m)
  term.setBackgroundColor(colors.orange)
  term.setTextColor(colors.white)
  term.setCursorPos(14, 6)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(17, 6)
 end
 if t == 3 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.green)
  write(m)
  term.setBackgroundColor(colors.green)
  term.setTextColor(colors.white)
  term.setCursorPos(14, 6)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(17, 6)
 end
  
m = 0
t = 0  
  
 if back_lightblue_win and back_magenta_win == true or back_lightblue_win and back_yellow_win == true then
    sleep(0.1)
	a = a+2     
    m = 04
   elseif back_lightblue_win == true then
	sleep(0.1)
	a = a+1
	m = 04
   else
    sleep(0.1)
	t = 4
	m = 04
	o = 1
  end
 
 if m == 04 and a>1 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.red)
  write(m)
  term.setBackgroundColor(colors.red)
  term.setTextColor(colors.white)
  term.setCursorPos(17, 6)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(20, 6)
 elseif m == 04 and a>0 and a<2 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.orange)
  write(m)
  term.setBackgroundColor(colors.orange)
  term.setTextColor(colors.white)
  term.setCursorPos(17, 6)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(20, 6)
 end
 if t == 4 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.green)
  write(m)
  term.setBackgroundColor(colors.green)
  term.setTextColor(colors.white)
  term.setCursorPos(17, 6)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(20, 6)
 end
 
m = 0
t = 0
 
 if back_yellow_win and back_lightblue_win == true or back_yellow_win and back_lime_win == true then
    sleep(0.1)
	a = a+2     
    m = 05
   elseif back_yellow_win == true then
	sleep(0.1)
	a = a+1
	m = 05
   else
    t = 5
	m = 05
	o = 1
  end
 
 if m == 05 and a>1 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.red)
  write(m)
  term.setBackgroundColor(colors.red)
  term.setTextColor(colors.white)
  term.setCursorPos(20, 6)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(23, 6)
 elseif m == 05 and a>0 and a<2 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.orange)
  write(m)
  term.setBackgroundColor(colors.orange)
  term.setTextColor(colors.white)
  term.setCursorPos(20, 6)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(23, 6)
 end
 if t == 5 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.green)
  write(m)
  term.setBackgroundColor(colors.green)
  term.setTextColor(colors.white)
  term.setCursorPos(20, 6)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(23, 6)
 end
 
m = 0
t = 0
 
 if back_lime_win and back_yellow_win == true or back_lime_win and back_pink_win == true then
    sleep(0.1)
	a = a+2     
    m = 06
   elseif back_lime_win == true then
	sleep(0.1)
	a = a+1
	m = 06
   else
    sleep(0.1)
	t = 6
	m = 06
	o = 1
 end
  
 if m == 06 and a>1 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.red)
  write(m)
  term.setBackgroundColor(colors.red)
  term.setTextColor(colors.white)
  term.setCursorPos(23, 6)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(26, 6)
 elseif m == 06 and a>0 and a<2 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.orange)
  write(m)
  term.setBackgroundColor(colors.orange)
  term.setTextColor(colors.white)
  term.setCursorPos(23, 6)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(26, 6)
 end
 if t == 6 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.green)
  write(m)
  term.setBackgroundColor(colors.green)
  term.setTextColor(colors.white)
  term.setCursorPos(23, 6)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(26, 6)
 end
 
m = 0
t = 0
  
 if back_pink_win and back_lime_win == true or back_pink_win and back_grey_win == true then
    sleep(0.1)
	a = a+2     
    m = 07
   elseif back_pink_win == true then
	sleep(0.1)
	a = 1
	m = 07
   else
    t = 7
	m = 07
	o = 1
  end
	
 if m == 07 and a>1 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.red)
  write(m)
  term.setBackgroundColor(colors.red)
  term.setTextColor(colors.white)
  term.setCursorPos(26, 6)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(29, 6)
 elseif m == 07 and a>0 and a<2 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.orange)
  write(m)
  term.setBackgroundColor(colors.orange)
  term.setTextColor(colors.white)
  term.setCursorPos(26, 6)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(29, 6)
 end
 if t == 7 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.green)
  write(m)
  term.setBackgroundColor(colors.green)
  term.setTextColor(colors.white)
  term.setCursorPos(26, 6)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(29, 6)
 end

m = 0
t = 0 
	
 if back_grey_win and back_pink_win == true or back_grey_win and back_lightgrey_win == true then
    sleep(0.1)
	a = a+2     
    m = 08
   elseif back_grey_win == true then
	sleep(0.1)
	a = a+1
	m = 08
   else
    sleep(0.1)
	t = 8
	m = 08
	o = 1
  end
  
 if m == 08 and a>1 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.red)
  write(m)
  term.setBackgroundColor(colors.red)
  term.setTextColor(colors.white)
  term.setCursorPos(29, 6)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(32, 6)
 elseif m == 08 and a>0 and a<2 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.orange)
  write(m)
  term.setBackgroundColor(colors.orange)
  term.setTextColor(colors.white)
  term.setCursorPos(29, 6)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(32, 6)
 end
 if t == 8 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.green)
  write(m)
  term.setBackgroundColor(colors.green)
  term.setTextColor(colors.white)
  term.setCursorPos(29, 6)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(32, 6)
 end
 
m = 0
t = 0
  
 if back_lightgrey_win and back_grey_win == true or back_lightgrey_win and back_cyan_win == true then
    sleep(0.1)
	a = a+2     
    m = 09
   elseif back_lightgrey_win == true then
	sleep(0.1)
	a = a+1
	m = 09
   else
    sleep(0.1)
	t = 9
	m = 09
	o = 1
  end
 
 if m == 09 and a>1 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.red)
  write(m)
  term.setBackgroundColor(colors.red)
  term.setTextColor(colors.white)
  term.setCursorPos(8, 8)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(11, 8)
 elseif m == 09 and a>0 and a<2 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.orange)
  write(m)
  term.setBackgroundColor(colors.orange)
  term.setTextColor(colors.white)
  term.setCursorPos(8, 8)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(11, 8)
 end
 if t == 9 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.green)
  write(m)
  term.setBackgroundColor(colors.green)
  term.setTextColor(colors.white)
  term.setCursorPos(8, 8)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(11, 8)
 end
 
m = 0
t = 0
 
 if back_cyan_win and back_lightgrey_win == true or back_cyan_win and back_purple_win == true then
    sleep(0.1)
	a = a+2     
    m = 10
   elseif back_cyan_win == true then
	sleep(0.1)
	a = a+1
	m = 10
   else
    sleep(0.1)
	t = 10
	m = 10
	o = 1
  end
  
 if m == 10 and a>1 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.red)
  write(t)
  term.setBackgroundColor(colors.red)
  term.setTextColor(colors.white)
  term.setCursorPos(11, 8)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(14, 8)
 elseif m == 10 and a>0 and a<2 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.orange)
  write(t)
  term.setBackgroundColor(colors.orange)
  term.setTextColor(colors.white)
  term.setCursorPos(11, 8)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(14, 8)
 end
 if t == 10 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.green)
  write(t)
  term.setBackgroundColor(colors.green)
  term.setTextColor(colors.white)
  term.setCursorPos(11, 8)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(14, 8)
 end
 
m = 0
t = 0
  
 if back_purple_win and back_cyan_win == true or back_purple_win and back_blue_win == true then
    sleep(0.1)
	a = a+2     
    m = 11
   elseif back_purple_win == true then
	sleep(0.1)
	a = a+1
	m = 11
   else
    sleep(0.1)
	t = 11
	m = 11
	o = 1
  end
  
 if m == 11 and a>1 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.red)
  write(m)
  term.setBackgroundColor(colors.red)
  term.setTextColor(colors.white)
  term.setCursorPos(14, 8)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(17, 8)
 elseif m == 11 and a>0 and a<2 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.orange)
  write(m)
  term.setBackgroundColor(colors.orange)
  term.setTextColor(colors.white)
  term.setCursorPos(14, 8)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(17, 8)
 end
 if t == 11 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.green)
  write(m)
  term.setBackgroundColor(colors.green)
  term.setTextColor(colors.white)
  term.setCursorPos(14, 8)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(17, 8)
 end
 
m = 0
t = 0

 if back_blue_win and back_purple_win == true or back_blue_win and back_brown_win == true then
    sleep(0.1)
	a = a+2     
    m = 12
   elseif back_blue_win == true then
	sleep(0.1)
	a = a+1
	m = 12
   else
    sleep(0.1)
	t = 12
	m = 12
	o = 1
  end
  
 if m == 12 and a>1 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.red)
  write(m)
  term.setBackgroundColor(colors.red)
  term.setTextColor(colors.white)
  term.setCursorPos(17, 8)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(20, 8)
 elseif m == 12 and a>0 and a<2 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.orange)
  write(m)
  term.setBackgroundColor(colors.orange)
  term.setTextColor(colors.white)
  term.setCursorPos(17, 8)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(20, 8)
 end
 if t == 12 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.green)
  write(m)
  term.setBackgroundColor(colors.green)
  term.setTextColor(colors.white)
  term.setCursorPos(17, 8)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(20, 8)
 end
 
m = 0
t = 0
 
 if back_brown_win and back_blue_win == true or back_brown_win and back_green_win == true then
    sleep(0.1)
	a = a+2     
    m = 13
   elseif back_brown_win == true then
	sleep(0.1)
	a = a+1
	m = 13
   else
    sleep(0.1)
	t = 13
	m = 13
	o = 1
  end
  
 if m == 13 and a>1 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.red)
  write(m)
  term.setBackgroundColor(colors.red)
  term.setTextColor(colors.white)
  term.setCursorPos(20, 8)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(23, 8)
 elseif m == 13 and a>0 and a<2 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.orange)
  write(m)
  term.setBackgroundColor(colors.orange)
  term.setTextColor(colors.white)
  term.setCursorPos(20, 8)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(23, 8)
 end
 if t == 13 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.green)
  write(m)
  term.setBackgroundColor(colors.green)
  term.setTextColor(colors.white)
  term.setCursorPos(20, 8)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(23, 8)
 end
 
m = 0
t = 0
 
 if back_green_win and back_brown_win == true or back_green_win and back_red_win == true then
    sleep(0.1)
	a = a+2     
    m = 14
   elseif back_green_win == true then
	sleep(0.1)
	a = a+1
	m = 14
   else
    sleep(0.1)
	t = 14
	m = 14
	o = 1
  end
  
 if m == 14 and a>1 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.red)
  write(m)
  term.setBackgroundColor(colors.red)
  term.setTextColor(colors.white)
  term.setCursorPos(23, 8)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(26, 8)
 elseif m == 14 and a>0 and a<2 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.orange)
  write(m)
  term.setBackgroundColor(colors.orange)
  term.setTextColor(colors.white)
  term.setCursorPos(23, 8)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(26, 8)
 end
 if t == 14 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.green)
  write(m)
  term.setBackgroundColor(colors.green)
  term.setTextColor(colors.white)
  term.setCursorPos(23, 8)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(26, 8)
 end
 
m = 0
t = 0
  
 if back_red_win and back_green_win == true or back_red_win and back_black_win == true then
    sleep(0.1)
	a = a+2     
    m = 15
   elseif back_red_win == true then
	sleep(0.1)
	a = a+1
	m = 15
   else
    sleep(0.1)
	t = 15
	m = 15
	o = 1
  end
  
 if m == 15 and a>1 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.red)
  write(m)
  term.setBackgroundColor(colors.red)
  term.setTextColor(colors.white)
  term.setCursorPos(26, 8)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(29, 8)
 elseif m == 15 and a>0 and a<2 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.orange)
  write(m)
  term.setBackgroundColor(colors.orange)
  term.setTextColor(colors.white)
  term.setCursorPos(26, 8)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(29, 8)
 end
 if t == 15 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.green)
  write(m)
  term.setBackgroundColor(colors.green)
  term.setTextColor(colors.white)
  term.setCursorPos(26, 8)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(29, 8)
 end
 
m = 0
t = 0

 if back_black_win and back_red_win == true or back_black_win and back_white_win == true then
    sleep(0.1)
	a = a+2     
    m = 16
   elseif back_black_win == true then
	sleep(0.1)
	a = a+1
	m = 16
   else
    sleep(0.1)
	t = 16
	m = 16
	o = 1
  end
 
 if m == 16 and a>1 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.red)
  write(m)
  term.setBackgroundColor(colors.red)
  term.setTextColor(colors.white)
  term.setCursorPos(29, 8)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(42, 19)
  write("  ")
  term.setCursorPos(1, 19)
 elseif m == 16 and a>0 and a<2 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.orange)
  write(m)
  term.setBackgroundColor(colors.orange)
  term.setTextColor(colors.white)
  term.setCursorPos(29, 8)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(42, 19)
  write("  ")
  term.setCursorPos(1, 19)
 end
 if t == 16 then
  term.setCursorPos(42, 19)
  term.setTextColor(colors.green)
  write(m)
  term.setBackgroundColor(colors.green)
  term.setTextColor(colors.white)
  term.setCursorPos(29, 8)
  write(m)
  sleep(0.1)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.white)
  term.setCursorPos(42, 19)
  write("  ")
  term.setCursorPos(1, 19)
 end
 
-- Gesamtalarm --

if left_magenta_win == true then
 a = 8
elseif left_magenta_win == false then
 sleep(0.2)
end

--GUI--

sleep(0.5)
term.setCursorPos(1, 1)
term.setTextColor(colors.white)
write("Brandmelde Anlage Stockwerk ")
write(s)
sleep(1)
 
  
l = 0
 
 if a>7 then
  term.setCursorPos(40, 19)
  term.setTextColor(colors.magenta)
  write("3")
  term.setCursorPos(39, 1)
  write("!!Großbrand!!")
  term.setTextColor(colors.white)
  term.setCursorPos(1, 2)
  rs.setBundledOutput("left", colors.pink, true)
  rs.setBundledOutput("right", colors.black, true)
  h = 2
  l = 2
 else
  sleep(0.2)
 end
 
 if a<7 and a>3 then
   rs.setBundledOutput("left", colors.pink, true)
   term.setCursorPos(40, 19)
   term.setTextColor(colors.red)
   write("2")
   term.setCursorPos(39, 1)
   write("        Feuer")
   term.setTextColor(colors.white)
   term.setCursorPos(1, 2)
   rs.setBundledOutput("right", colors.white, true)
   h = 1
   l = 1
  else
   sleep(1)
  end
 
 
 if a<3 and a>0 then
   term.setCursorPos(40, 19)
   term.setTextColor(colors.yellow)
   write("1")
   term.setTextColor(colors.orange)
   term.setCursorPos(39, 1)
   write("     Voralarm")
   term.setCursorPos(1, 2)
   rs.setBundledOutput("left", colors.yellow, true)
   term.setTextColor(colors.white)
  else
   sleep(0.2)
  end
 
 if a == 0 then
  term.setCursorPos(40, 19)
  term.setTextColor(colors.green)
  write("0")
  term.setCursorPos(39, 1)
  write("      testing")
  term.setTextColor(colors.white)
  term.setCursorPos(1, 2)
  rs.setBundledOutput("left", colors.green, true)
  sleep(0.2)
  l = 0
 else
 sleep(0.2)
 end
 
m = 0
t = 0

--hupe--
 
 if h == 1 then
  rs.setBundledOutput("left", colors.lime, true)
 elseif h == 2 then
  rs.setBundledOutput("left", colors.pink, true)
 end
 
-- loop --
end



 
 
 
 
 
 
