code Main

  -- OS Class: Project 3
  --
  -- <Matthew Popescu>
  --

-----------------------------  Main  ---------------------------------

  function main ()
	InitializeScheduler()      
	--SleepingBarber()	
	GamingParlor()
	--FatalError ("Need to implement")
    endFunction


-------------SLEEPING BARBER PROBLEM---------------

	var
		barberShop: barbShop = new barbShop
		waiting: int = 0
		CHAIRS: int = 5
		printLock: Mutex = new Mutex
		m_lock: Mutex = new Mutex
		semCust: Semaphore = new Semaphore
		semBarber: Semaphore = new Semaphore
		Customers: array [11] of Thread = new array of Thread{11 of new Thread}
	
	function SleepingBarber()
		m_lock.Init()
		printLock.Init()
		semCust.Init(0)
		semBarber.Init(1)


		Customers[10].Init("barber")
		Customers[10].Fork(Barber, 10)

		Customers[0].Init("A")
		Customers[0].Fork(Customer, 0)

		Customers[1].Init("B")
		Customers[1].Fork(Customer, 1)

		Customers[2].Init("C")
		Customers[2].Fork(Customer, 2)

		Customers[3].Init("D")
		Customers[3].Fork(Customer, 3)

		Customers[4].Init("E")
		Customers[4].Fork(Customer, 4)

		Customers[5].Init("F")
		Customers[5].Fork(Customer, 5)

		Customers[6].Init("G")
		Customers[6].Fork(Customer, 6)

		Customers[7].Init("H")
		Customers[7].Fork(Customer, 7)

		Customers[8].Init("I")
		Customers[8].Fork(Customer, 8)

		Customers[9].Init("J")
		Customers[9].Fork(Customer, 9)
		
		ThreadFinish()
	endFunction

	function Barber(p: int)
		while (true)
			semCust.Down()
			m_lock.Lock()
			waiting = waiting -1
			semBarber.Up()
			m_lock.Unlock()
			barberShop.CutHair()
		endWhile
	endFunction

	function Customer(p: int)
		
		m_lock.Lock()
		barberShop.printStatus()
		if (waiting < CHAIRS)
			semCust.Up()
			waiting = waiting +1
			m_lock.Unlock()
			
			semBarber.Down()
			barberShop.get_haircut()
			printLock.Lock()
			print(currentThread.name)
			print(" finished, and left the shop.\n")
			printLock.Unlock()
		else
			printLock.Lock()
			print(currentThread.name)
			print(" didn't get a haircut.\n")
			printLock.Unlock()
			m_lock.Unlock()
		endIf
	endFunction


	class barbShop
		superclass Object
		methods
			get_haircut()
			CutHair()
			printStatus()
	endClass

	behavior barbShop
		method get_haircut()
			printLock.Lock()
			print(currentThread.name)
			print(" is getting a haircut.\n")
			printLock.Unlock()
			--currentThread.Yield()
		endMethod

		method CutHair()
			var
				i: int
			print("            barber is cutting hair\n")
			for i = 0 to 5
			currentThread.Yield()
			endFor
		endMethod

		method printStatus()
			printLock.Lock()	
			print("There are ")
			printInt(waiting)
			print(" people waiting...\n")
			printLock.Unlock()	
		endMethod
	endBehavior

---------------GAMING PARLOR---------------

var
	RISK: int = 5
	MONOPOLY: int = 2
	PICTIONARY: int = 1
	BACKGAMMON: int = 4

	pLock: Mutex = new Mutex
	Gamers: array [8] of Thread = new array of Thread{8 of new Thread}
	mon: GameMonitor = new GameMonitor
	gameLock: Mutex = new Mutex
	con: Condition = new Condition
	con2: Condition = new Condition
	--con2 will assist with the queue of waiting requests
function GamingParlor()
	pLock.Init()
	gameLock.Init()
	con.Init()
	con2.Init()
	mon.Init()

	Gamers[0].Init("A")
	Gamers[0].Fork(GAME, BACKGAMMON)

	Gamers[1].Init("B")
	Gamers[1].Fork(GAME, BACKGAMMON)
	
	Gamers[2].Init("C")
	Gamers[2].Fork(GAME, RISK)
	
	Gamers[3].Init("D")
	Gamers[3].Fork(GAME, RISK)
	
	Gamers[4].Init("E")
	Gamers[4].Fork(GAME, MONOPOLY)

	Gamers[5].Init("F")
	Gamers[5].Fork(GAME, MONOPOLY)

	Gamers[6].Init("G")
	Gamers[6].Fork(GAME, PICTIONARY)

	Gamers[7].Init("H")
	Gamers[7].Fork(GAME, PICTIONARY)

	ThreadFinish()
endFunction

function GAME(p: int)
	var
		i: int
	for i = 0 to 4
		mon.Request(p)
		currentThread.Yield()
		currentThread.Yield()
		currentThread.Yield()
		currentThread.Yield()

		mon.Return(p)
	endFor
endFunction



	class GameMonitor
		superclass Object
		fields
			n: int
			ReqList: List[RequestList]
			DICE: int
		methods
			Init()
			Request(p: int)
			Return(p: int)
			printRequest(p: int)
			printReturn(p: int)
			printDice()
			printProceed(p: int)
	endClass

	behavior GameMonitor
		method Init()
			n = 0 
			DICE = 8
			ReqList = new List[RequestList]
		endMethod

		method Request(p: int)
			--var
			--	n: int = 0
			gameLock.Lock()
			mon.printRequest(p)
			mon.printDice()
			
			--while p > DICE
			--	con2.Wait(&gameLock)
			--endWhile

			n = n+1

			if  n > 1
				--n = new RequestList
				--n.Init(p)
				--mon.ReqList.AddToEnd(&n)
				con.Wait(&gameLock)
			endIf

			while DICE < p
				con2.Wait(&gameLock)
			endWhile

			DICE = DICE - p
			n = n -1
			mon.printProceed(p)
			mon.printDice()
			con.Signal(&gameLock)
			
			gameLock.Unlock()
			
		endMethod

		method Return(p: int)
			--var
			--	n: ptr to RequestList
			gameLock.Lock()
			mon.printReturn(p)
			DICE = DICE + p
			mon.printDice()
			--if mon.ReqList.IsEmpty() == true
				--con.Signal(&gameLock)		
			--else  
			--	n = mon.ReqList.Remove()
			--	if n.val > DICE
			--		mon.ReqList.AddToFront(n)
			--	else
			--		con.Signal(&gameLock)
			--	endIf
			--endIf
			con2.Signal(&gameLock)


			gameLock.Unlock()

		endMethod
	
		method printProceed(p: int)
			pLock.Lock()
			print(currentThread.name)
			print(" proceeds with ")
			printInt(p)
			nl()
			pLock.Unlock()
		endMethod

		method printRequest(p: int)
			pLock.Lock()
			print(currentThread.name)
			print(" requests ")
			printInt(p)
			nl()
			pLock.Unlock()
		endMethod		

		method printReturn(p: int)
			pLock.Lock()
			print(currentThread.name)
			print(" releases and adds back ")
			printInt(p)
			nl()
			pLock.Unlock()
		endMethod

		method printDice()
		pLock.Lock()
		print("-------------------------------Number of dice now available: ")
		printInt(DICE)
		nl()
		pLock.Unlock()
		endMethod
	endBehavior


	class RequestList
		superclass Listable
		fields
			val: int
		methods
			Init(p: int)
	
	endClass

	behavior RequestList
		method Init(p: int)
			val = p
		endMethod
	
	endBehavior
endCode
















