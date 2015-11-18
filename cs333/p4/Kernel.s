! Name of package being compiled: Kernel
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	_P_System_PrintMemory
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_BitMap_TestBitMap
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1476
_P_Kernel_threadManager:
	.skip	41776
_P_Kernel_frameManager:
	.skip	136
	.align
! String constants
_StringConst_123:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_122:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_121:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_120:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_119:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_118:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_117:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_116:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_115:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_114:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_113:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_112:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_111:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_110:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_109:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_108:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_107:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_106:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_105:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_104:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_103:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_102:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_101:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_100:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_99:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_98:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_97:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_96:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_95:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_94:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_93:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_92:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_91:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_90:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_89:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_88:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_87:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_86:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_85:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_84:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_83:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_82:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_81:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_80:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_79:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_78:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_77:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_76:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_75:
	.word	11			! length
	.ascii	"Test Thread"
	.align
_StringConst_74:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_73:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_72:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_71:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_70:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_69:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_68:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_67:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_66:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_65:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_64:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_63:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_62:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_61:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_60:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_59:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_58:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_57:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_56:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_55:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_54:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_53:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_52:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_51:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_50:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_49:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_48:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_47:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_46:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_45:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_44:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_43:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_42:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_41:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_40:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_39:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_38:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_37:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_36:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_35:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_34:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_33:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_32:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_31:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_29:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_25:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_24:
	.word	41			! length
	.ascii	"DISK INTERRUPTS NOT EXPECTED IN PROJECT 4"
	.align
_StringConst_23:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_22:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_21:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_20:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_19:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_17:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_16:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_15:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_14:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_13:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_12:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_11:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_10:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_9:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_8:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_7:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_6:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_5:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_4:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0x1c841835,r4		! myHashVal = 478418997
	cmp	r3,r4
	be	_Label_128
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_128:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_129
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_129
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_129
_Label_129:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_1722:
	push	r0
	sub	r1,1,r1
	bne	_Label_1722
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_130 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_130  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	16,r13		! source line 16
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_1723:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1723
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_134 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_135 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_134  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   _temp_136 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_137 = _temp_136 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_137 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_1724:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1724
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_139 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_140 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_139  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_141 = _function_127_IdleFunction
	set	_function_127_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_142 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_141  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	27,r13		! source line 27
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_143
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_144
	.word	-12
	.word	4
	.word	_Label_145
	.word	-16
	.word	4
	.word	_Label_146
	.word	-20
	.word	4
	.word	_Label_147
	.word	-24
	.word	4
	.word	_Label_148
	.word	-28
	.word	4
	.word	_Label_149
	.word	-32
	.word	4
	.word	_Label_150
	.word	-36
	.word	4
	.word	_Label_151
	.word	-40
	.word	4
	.word	_Label_152
	.word	-44
	.word	4
	.word	_Label_153
	.word	-48
	.word	4
	.word	_Label_154
	.word	-52
	.word	4
	.word	_Label_155
	.word	-56
	.word	4
	.word	_Label_156
	.word	-60
	.word	4
	.word	0
_Label_143:
	.ascii	"InitializeScheduler\0"
	.align
_Label_144:
	.byte	'?'
	.ascii	"_temp_142\0"
	.align
_Label_145:
	.byte	'?'
	.ascii	"_temp_141\0"
	.align
_Label_146:
	.byte	'?'
	.ascii	"_temp_140\0"
	.align
_Label_147:
	.byte	'?'
	.ascii	"_temp_139\0"
	.align
_Label_148:
	.byte	'?'
	.ascii	"_temp_138\0"
	.align
_Label_149:
	.byte	'?'
	.ascii	"_temp_137\0"
	.align
_Label_150:
	.byte	'?'
	.ascii	"_temp_136\0"
	.align
_Label_151:
	.byte	'?'
	.ascii	"_temp_135\0"
	.align
_Label_152:
	.byte	'?'
	.ascii	"_temp_134\0"
	.align
_Label_153:
	.byte	'?'
	.ascii	"_temp_133\0"
	.align
_Label_154:
	.byte	'?'
	.ascii	"_temp_132\0"
	.align
_Label_155:
	.byte	'?'
	.ascii	"_temp_131\0"
	.align
_Label_156:
	.byte	'?'
	.ascii	"_temp_130\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_127_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_127_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_1725:
	push	r0
	sub	r1,1,r1
	bne	_Label_1725
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_157:
!	jmp	_Label_158
_Label_158:
	mov	42,r13		! source line 42
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	43,r13		! source line 43
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0IF",r10
	mov	44,r13		! source line 44
	mov	"\0\0SE",r10
!   _temp_162 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_160 else goto _Label_161
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_161
	jmp	_Label_160
_Label_160:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_163
_Label_161:
! ELSE...
	mov	47,r13		! source line 47
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_163:
! END WHILE...
	jmp	_Label_157
_Label_159:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_127_IdleFunction:
	.word	_sourceFileName
	.word	_Label_164
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_165
	.word	8
	.word	4
	.word	_Label_166
	.word	-12
	.word	4
	.word	_Label_167
	.word	-16
	.word	4
	.word	0
_Label_164:
	.ascii	"IdleFunction\0"
	.align
_Label_165:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_166:
	.byte	'?'
	.ascii	"_temp_162\0"
	.align
_Label_167:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_1726:
	push	r0
	sub	r1,1,r1
	bne	_Label_1726
	mov	54,r13		! source line 54
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_170 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_170 ) then goto _Label_169		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_169
!	jmp	_Label_168
_Label_168:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_172 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_172 [0 ] into _temp_173
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_171 = _temp_173		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_171  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_169:
! ASSIGNMENT STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_174 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_174 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	80,r13		! source line 80
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0WH",r10
_Label_175:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_179 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_178  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_178 then goto _Label_177 else goto _Label_176
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_176
	jmp	_Label_177
_Label_176:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_180 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_181 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_175
_Label_177:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_184 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_184 ) then goto _Label_183		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_183
!	jmp	_Label_182
_Label_182:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_186 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_186 [0 ] into _temp_187
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_185 = _temp_187		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_185  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	90,r13		! source line 90
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_189 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_188 = *_temp_189  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_188) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_190 = _temp_188 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_183:
! RETURN STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_191
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_192
	.word	8
	.word	4
	.word	_Label_193
	.word	-16
	.word	4
	.word	_Label_194
	.word	-20
	.word	4
	.word	_Label_195
	.word	-24
	.word	4
	.word	_Label_196
	.word	-28
	.word	4
	.word	_Label_197
	.word	-32
	.word	4
	.word	_Label_198
	.word	-36
	.word	4
	.word	_Label_199
	.word	-40
	.word	4
	.word	_Label_200
	.word	-44
	.word	4
	.word	_Label_201
	.word	-48
	.word	4
	.word	_Label_202
	.word	-52
	.word	4
	.word	_Label_203
	.word	-9
	.word	1
	.word	_Label_204
	.word	-56
	.word	4
	.word	_Label_205
	.word	-60
	.word	4
	.word	_Label_206
	.word	-64
	.word	4
	.word	_Label_207
	.word	-68
	.word	4
	.word	_Label_208
	.word	-72
	.word	4
	.word	_Label_209
	.word	-76
	.word	4
	.word	_Label_210
	.word	-80
	.word	4
	.word	0
_Label_191:
	.ascii	"Run\0"
	.align
_Label_192:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_193:
	.byte	'?'
	.ascii	"_temp_190\0"
	.align
_Label_194:
	.byte	'?'
	.ascii	"_temp_189\0"
	.align
_Label_195:
	.byte	'?'
	.ascii	"_temp_188\0"
	.align
_Label_196:
	.byte	'?'
	.ascii	"_temp_187\0"
	.align
_Label_197:
	.byte	'?'
	.ascii	"_temp_186\0"
	.align
_Label_198:
	.byte	'?'
	.ascii	"_temp_185\0"
	.align
_Label_199:
	.byte	'?'
	.ascii	"_temp_184\0"
	.align
_Label_200:
	.byte	'?'
	.ascii	"_temp_181\0"
	.align
_Label_201:
	.byte	'?'
	.ascii	"_temp_180\0"
	.align
_Label_202:
	.byte	'?'
	.ascii	"_temp_179\0"
	.align
_Label_203:
	.byte	'C'
	.ascii	"_temp_178\0"
	.align
_Label_204:
	.byte	'?'
	.ascii	"_temp_174\0"
	.align
_Label_205:
	.byte	'?'
	.ascii	"_temp_173\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_172\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_171\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_170\0"
	.align
_Label_209:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_210:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_1727:
	push	r0
	sub	r1,1,r1
	bne	_Label_1727
	mov	97,r13		! source line 97
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	104,r13		! source line 104
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_211 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_211  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_212 = _function_126_ThreadPrintShort
	set	_function_126_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_213 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_212  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_214
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_215
	.word	-12
	.word	4
	.word	_Label_216
	.word	-16
	.word	4
	.word	_Label_217
	.word	-20
	.word	4
	.word	_Label_218
	.word	-24
	.word	4
	.word	0
_Label_214:
	.ascii	"PrintReadyList\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_218:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_1728:
	push	r0
	sub	r1,1,r1
	bne	_Label_1728
	mov	112,r13		! source line 112
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	124,r13		! source line 124
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_219 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_219  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_221 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_220 = *_temp_221  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_220  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	126,r13		! source line 126
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	127,r13		! source line 127
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_222 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_222  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	128,r13		! source line 128
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	128,r13		! source line 128
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_223
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_224
	.word	-12
	.word	4
	.word	_Label_225
	.word	-16
	.word	4
	.word	_Label_226
	.word	-20
	.word	4
	.word	_Label_227
	.word	-24
	.word	4
	.word	_Label_228
	.word	-28
	.word	4
	.word	_Label_229
	.word	-32
	.word	4
	.word	0
_Label_223:
	.ascii	"ThreadStartMain\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_228:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_229:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_1729:
	push	r0
	sub	r1,1,r1
	bne	_Label_1729
	mov	133,r13		! source line 133
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	144,r13		! source line 144
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0SE",r10
!   _temp_230 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_231 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_231  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	151,r13		! source line 151
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_232
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_233
	.word	-12
	.word	4
	.word	_Label_234
	.word	-16
	.word	4
	.word	_Label_235
	.word	-20
	.word	4
	.word	0
_Label_232:
	.ascii	"ThreadFinish\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_235:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_1730:
	push	r0
	sub	r1,1,r1
	bne	_Label_1730
	mov	156,r13		! source line 156
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	164,r13		! source line 164
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	164,r13		! source line 164
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_236 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_236  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_238		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_238
!	jmp	_Label_237
_Label_237:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_239 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_239  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_241 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_240 = *_temp_241  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_240  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_238:
! CALL STATEMENT...
!   _temp_242 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_242  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_243 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_243  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_244 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_244  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_245
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_246
	.word	8
	.word	4
	.word	_Label_247
	.word	-12
	.word	4
	.word	_Label_248
	.word	-16
	.word	4
	.word	_Label_249
	.word	-20
	.word	4
	.word	_Label_250
	.word	-24
	.word	4
	.word	_Label_251
	.word	-28
	.word	4
	.word	_Label_252
	.word	-32
	.word	4
	.word	_Label_253
	.word	-36
	.word	4
	.word	_Label_254
	.word	-40
	.word	4
	.word	0
_Label_245:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_246:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_254:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_1731:
	push	r0
	sub	r1,1,r1
	bne	_Label_1731
	mov	179,r13		! source line 179
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	192,r13		! source line 192
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	193,r13		! source line 193
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_256		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_256
!	jmp	_Label_255
_Label_255:
! THEN...
	mov	195,r13		! source line 195
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_257
_Label_256:
! ELSE...
	mov	198,r13		! source line 198
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	199,r13		! source line 199
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_257:
! RETURN STATEMENT...
	mov	201,r13		! source line 201
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_258
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_259
	.word	8
	.word	4
	.word	_Label_260
	.word	-12
	.word	4
	.word	0
_Label_258:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_259:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_260:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_126_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_126_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_1732:
	push	r0
	sub	r1,1,r1
	bne	_Label_1732
	mov	724,r13		! source line 724
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	731,r13		! source line 731
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	732,r13		! source line 732
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_264		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_264
!   _temp_263 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_265
_Label_264:
!   _temp_263 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_265:
!   if _temp_263 then goto _Label_262 else goto _Label_261
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_261
	jmp	_Label_262
_Label_261:
! THEN...
	mov	733,r13		! source line 733
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_266 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_266  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	733,r13		! source line 733
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	734,r13		! source line 734
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_262:
! CALL STATEMENT...
!   _temp_267 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_267  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	736,r13		! source line 736
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_269 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_268 = *_temp_269  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_268  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	737,r13		! source line 737
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_270 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_270  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	738,r13		! source line 738
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	739,r13		! source line 739
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_279 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_278 = *_temp_279  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_273
	cmp	r1,2
	be	_Label_274
	cmp	r1,3
	be	_Label_275
	cmp	r1,4
	be	_Label_276
	cmp	r1,5
	be	_Label_277
	jmp	_Label_271
! CASE 1...
_Label_273:
! CALL STATEMENT...
!   _temp_280 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_280  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	741,r13		! source line 741
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	742,r13		! source line 742
	mov	"\0\0BR",r10
	jmp	_Label_272
! CASE 2...
_Label_274:
! CALL STATEMENT...
!   _temp_281 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_281  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	744,r13		! source line 744
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	745,r13		! source line 745
	mov	"\0\0BR",r10
	jmp	_Label_272
! CASE 3...
_Label_275:
! CALL STATEMENT...
!   _temp_282 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_282  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	747,r13		! source line 747
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	748,r13		! source line 748
	mov	"\0\0BR",r10
	jmp	_Label_272
! CASE 4...
_Label_276:
! CALL STATEMENT...
!   _temp_283 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_283  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	750,r13		! source line 750
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	751,r13		! source line 751
	mov	"\0\0BR",r10
	jmp	_Label_272
! CASE 5...
_Label_277:
! CALL STATEMENT...
!   _temp_284 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_284  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	753,r13		! source line 753
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	754,r13		! source line 754
	mov	"\0\0BR",r10
	jmp	_Label_272
! DEFAULT CASE...
_Label_271:
! CALL STATEMENT...
!   _temp_285 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_285  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	756,r13		! source line 756
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_272:
! CALL STATEMENT...
!   _temp_286 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_286  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	758,r13		! source line 758
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_287 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_287  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	759,r13		! source line 759
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_288 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_288  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	760,r13		! source line 760
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	761,r13		! source line 761
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	763,r13		! source line 763
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	763,r13		! source line 763
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	763,r13		! source line 763
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_126_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_289
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_290
	.word	8
	.word	4
	.word	_Label_291
	.word	-16
	.word	4
	.word	_Label_292
	.word	-20
	.word	4
	.word	_Label_293
	.word	-24
	.word	4
	.word	_Label_294
	.word	-28
	.word	4
	.word	_Label_295
	.word	-32
	.word	4
	.word	_Label_296
	.word	-36
	.word	4
	.word	_Label_297
	.word	-40
	.word	4
	.word	_Label_298
	.word	-44
	.word	4
	.word	_Label_299
	.word	-48
	.word	4
	.word	_Label_300
	.word	-52
	.word	4
	.word	_Label_301
	.word	-56
	.word	4
	.word	_Label_302
	.word	-60
	.word	4
	.word	_Label_303
	.word	-64
	.word	4
	.word	_Label_304
	.word	-68
	.word	4
	.word	_Label_305
	.word	-72
	.word	4
	.word	_Label_306
	.word	-76
	.word	4
	.word	_Label_307
	.word	-9
	.word	1
	.word	_Label_308
	.word	-80
	.word	4
	.word	0
_Label_289:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_290:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_307:
	.byte	'C'
	.ascii	"_temp_263\0"
	.align
_Label_308:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_125_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_125_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_1733:
	push	r0
	sub	r1,1,r1
	bne	_Label_1733
	mov	1057,r13		! source line 1057
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_309 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_309  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1061,r13		! source line 1061
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1062,r13		! source line 1062
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1062,r13		! source line 1062
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_125_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_310
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_311
	.word	8
	.word	4
	.word	_Label_312
	.word	-12
	.word	4
	.word	0
_Label_310:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_311:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	2,r1
_Label_1734:
	push	r0
	sub	r1,1,r1
	bne	_Label_1734
	mov	1067,r13		! source line 1067
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_313 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_313  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1073,r13		! source line 1073
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1073,r13		! source line 1073
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_314
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_315
	.word	8
	.word	4
	.word	_Label_316
	.word	-12
	.word	4
	.word	0
_Label_314:
	.ascii	"ProcessFinish\0"
	.align
_Label_315:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_1735:
	push	r0
	sub	r1,1,r1
	bne	_Label_1735
	mov	1568,r13		! source line 1568
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1578,r13		! source line 1578
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1580,r13		! source line 1580
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1581,r13		! source line 1581
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1581,r13		! source line 1581
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_317
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_317:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	2,r1
_Label_1736:
	push	r0
	sub	r1,1,r1
	bne	_Label_1736
	mov	1586,r13		! source line 1586
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_318 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_318  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1596,r13		! source line 1596
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1596,r13		! source line 1596
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_319
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_320
	.word	-12
	.word	4
	.word	0
_Label_319:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	1608,r13		! source line 1608
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1617,r13		! source line 1617
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1617,r13		! source line 1617
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_321
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_321:
	.ascii	"SerialInterruptHandler\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_1737:
	push	r0
	sub	r1,1,r1
	bne	_Label_1737
	mov	1622,r13		! source line 1622
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1628,r13		! source line 1628
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_322 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_322  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1629,r13		! source line 1629
	mov	"\0\0CA",r10
	call	_function_124_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1629,r13		! source line 1629
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_323
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_324
	.word	-12
	.word	4
	.word	0
_Label_323:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1738:
	push	r0
	sub	r1,1,r1
	bne	_Label_1738
	mov	1634,r13		! source line 1634
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1640,r13		! source line 1640
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_325 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_325  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1641,r13		! source line 1641
	mov	"\0\0CA",r10
	call	_function_124_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1641,r13		! source line 1641
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_326
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_327
	.word	-12
	.word	4
	.word	0
_Label_326:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1739:
	push	r0
	sub	r1,1,r1
	bne	_Label_1739
	mov	1646,r13		! source line 1646
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1652,r13		! source line 1652
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_328 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_328  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1653,r13		! source line 1653
	mov	"\0\0CA",r10
	call	_function_124_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1653,r13		! source line 1653
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_329
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_330
	.word	-12
	.word	4
	.word	0
_Label_329:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1740:
	push	r0
	sub	r1,1,r1
	bne	_Label_1740
	mov	1658,r13		! source line 1658
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1664,r13		! source line 1664
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_331 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_331  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1665,r13		! source line 1665
	mov	"\0\0CA",r10
	call	_function_124_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1665,r13		! source line 1665
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_332
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_333
	.word	-12
	.word	4
	.word	0
_Label_332:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1741:
	push	r0
	sub	r1,1,r1
	bne	_Label_1741
	mov	1670,r13		! source line 1670
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1676,r13		! source line 1676
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_334 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_334  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1677,r13		! source line 1677
	mov	"\0\0CA",r10
	call	_function_124_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1677,r13		! source line 1677
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_335
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_336
	.word	-12
	.word	4
	.word	0
_Label_335:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_1742:
	push	r0
	sub	r1,1,r1
	bne	_Label_1742
	mov	1682,r13		! source line 1682
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1688,r13		! source line 1688
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_337 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_337  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1689,r13		! source line 1689
	mov	"\0\0CA",r10
	call	_function_124_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1689,r13		! source line 1689
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_338
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_339
	.word	-12
	.word	4
	.word	0
_Label_338:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1743:
	push	r0
	sub	r1,1,r1
	bne	_Label_1743
	mov	1694,r13		! source line 1694
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1700,r13		! source line 1700
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_340 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_340  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1701,r13		! source line 1701
	mov	"\0\0CA",r10
	call	_function_124_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1701,r13		! source line 1701
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_341
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_342
	.word	-12
	.word	4
	.word	0
_Label_341:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_342:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_124_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_124_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_1744:
	push	r0
	sub	r1,1,r1
	bne	_Label_1744
	mov	1706,r13		! source line 1706
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_343 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_343  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1711,r13		! source line 1711
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1712,r13		! source line 1712
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_344 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_344  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1713,r13		! source line 1713
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1716,r13		! source line 1716
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_348 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_347 = *_temp_348  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_347 == 0 then goto _Label_346		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_346
!	jmp	_Label_345
_Label_345:
! THEN...
	mov	1717,r13		! source line 1717
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1717,r13		! source line 1717
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_350 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_349 = *_temp_350  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_349) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_351
_Label_346:
! ELSE...
	mov	1719,r13		! source line 1719
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_352 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_352  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1719,r13		! source line 1719
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_351:
! SEND STATEMENT...
	mov	1721,r13		! source line 1721
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1727,r13		! source line 1727
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1727,r13		! source line 1727
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_124_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_353
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_354
	.word	8
	.word	4
	.word	_Label_355
	.word	-12
	.word	4
	.word	_Label_356
	.word	-16
	.word	4
	.word	_Label_357
	.word	-20
	.word	4
	.word	_Label_358
	.word	-24
	.word	4
	.word	_Label_359
	.word	-28
	.word	4
	.word	_Label_360
	.word	-32
	.word	4
	.word	_Label_361
	.word	-36
	.word	4
	.word	0
_Label_353:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_354:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_1745:
	push	r0
	sub	r1,1,r1
	bne	_Label_1745
	mov	1732,r13		! source line 1732
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1739,r13		! source line 1739
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1753,r13		! source line 1753
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_1746
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_362
_Label_1746:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_362
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_362
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_376,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_376:
	jmp	_Label_368	! 1:	
	jmp	_Label_375	! 2:	
	jmp	_Label_365	! 3:	
	jmp	_Label_364	! 4:	
	jmp	_Label_367	! 5:	
	jmp	_Label_366	! 6:	
	jmp	_Label_369	! 7:	
	jmp	_Label_370	! 8:	
	jmp	_Label_371	! 9:	
	jmp	_Label_372	! 10:	
	jmp	_Label_373	! 11:	
	jmp	_Label_374	! 12:	
! CASE 4...
_Label_364:
! RETURN STATEMENT...
	mov	1755,r13		! source line 1755
	mov	"\0\0RE",r10
!   Call the function
	mov	1755,r13		! source line 1755
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_377  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_377  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_365:
! CALL STATEMENT...
!   Call the function
	mov	1757,r13		! source line 1757
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1758,r13		! source line 1758
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_366:
! RETURN STATEMENT...
	mov	1760,r13		! source line 1760
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1760,r13		! source line 1760
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_378  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_378  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_367:
! RETURN STATEMENT...
	mov	1762,r13		! source line 1762
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1762,r13		! source line 1762
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_379  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_379  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_368:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1764,r13		! source line 1764
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1765,r13		! source line 1765
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_369:
! RETURN STATEMENT...
	mov	1767,r13		! source line 1767
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1767,r13		! source line 1767
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_380  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_380  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_370:
! RETURN STATEMENT...
	mov	1769,r13		! source line 1769
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1769,r13		! source line 1769
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_381  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_381  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_371:
! RETURN STATEMENT...
	mov	1771,r13		! source line 1771
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1771,r13		! source line 1771
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_382  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_382  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_372:
! RETURN STATEMENT...
	mov	1773,r13		! source line 1773
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1773,r13		! source line 1773
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_383  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_383  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_373:
! RETURN STATEMENT...
	mov	1775,r13		! source line 1775
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1775,r13		! source line 1775
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_384  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_384  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_374:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1777,r13		! source line 1777
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1778,r13		! source line 1778
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_375:
! CALL STATEMENT...
!   Call the function
	mov	1780,r13		! source line 1780
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1781,r13		! source line 1781
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_362:
! CALL STATEMENT...
!   _temp_385 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_385  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1783,r13		! source line 1783
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1784,r13		! source line 1784
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1785,r13		! source line 1785
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_386 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_386  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1786,r13		! source line 1786
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_363:
! RETURN STATEMENT...
	mov	1788,r13		! source line 1788
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_387
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_388
	.word	8
	.word	4
	.word	_Label_389
	.word	12
	.word	4
	.word	_Label_390
	.word	16
	.word	4
	.word	_Label_391
	.word	20
	.word	4
	.word	_Label_392
	.word	24
	.word	4
	.word	_Label_393
	.word	-12
	.word	4
	.word	_Label_394
	.word	-16
	.word	4
	.word	_Label_395
	.word	-20
	.word	4
	.word	_Label_396
	.word	-24
	.word	4
	.word	_Label_397
	.word	-28
	.word	4
	.word	_Label_398
	.word	-32
	.word	4
	.word	_Label_399
	.word	-36
	.word	4
	.word	_Label_400
	.word	-40
	.word	4
	.word	_Label_401
	.word	-44
	.word	4
	.word	_Label_402
	.word	-48
	.word	4
	.word	0
_Label_387:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_388:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_389:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_390:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_391:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_392:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	1793,r13		! source line 1793
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1793,r13		! source line 1793
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_403
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_404
	.word	8
	.word	4
	.word	0
_Label_403:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_404:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	1799,r13		! source line 1799
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1799,r13		! source line 1799
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_405
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_405:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	1805,r13		! source line 1805
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1805,r13		! source line 1805
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_406
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_406:
	.ascii	"Handle_Sys_Yield\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	1811,r13		! source line 1811
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1813,r13		! source line 1813
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_407
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_407:
	.ascii	"Handle_Sys_Fork\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	1818,r13		! source line 1818
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1820,r13		! source line 1820
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_408
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_409
	.word	8
	.word	4
	.word	0
_Label_408:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_409:
	.byte	'I'
	.ascii	"processID\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	1825,r13		! source line 1825
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1827,r13		! source line 1827
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_410
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_411
	.word	8
	.word	4
	.word	0
_Label_410:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_411:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	1832,r13		! source line 1832
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1834,r13		! source line 1834
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_412
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_413
	.word	8
	.word	4
	.word	0
_Label_412:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_413:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	1839,r13		! source line 1839
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1841,r13		! source line 1841
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_414
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_415
	.word	8
	.word	4
	.word	0
_Label_414:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_415:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	1846,r13		! source line 1846
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1848,r13		! source line 1848
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_416
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_417
	.word	8
	.word	4
	.word	_Label_418
	.word	12
	.word	4
	.word	_Label_419
	.word	16
	.word	4
	.word	0
_Label_416:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_417:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_418:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_419:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	1853,r13		! source line 1853
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1855,r13		! source line 1855
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_420
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_421
	.word	8
	.word	4
	.word	_Label_422
	.word	12
	.word	4
	.word	_Label_423
	.word	16
	.word	4
	.word	0
_Label_420:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_421:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_422:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_423:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	1860,r13		! source line 1860
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1862,r13		! source line 1862
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_424
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_425
	.word	8
	.word	4
	.word	_Label_426
	.word	12
	.word	4
	.word	0
_Label_424:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_425:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_426:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	1867,r13		! source line 1867
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1867,r13		! source line 1867
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_427
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_428
	.word	8
	.word	4
	.word	0
_Label_427:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_428:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_429
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_429:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_430
	.word	_sourceFileName
	.word	124		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_430:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_1747:
	push	r0
	sub	r1,1,r1
	bne	_Label_1747
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_432		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_432
!	jmp	_Label_431
_Label_431:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_433 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_433  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	232,r13		! source line 232
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_432:
! ASSIGNMENT STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_435
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_436
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_437
	.word	12
	.word	4
	.word	_Label_438
	.word	-12
	.word	4
	.word	_Label_439
	.word	-16
	.word	4
	.word	0
_Label_435:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_436:
	.ascii	"Pself\0"
	.align
_Label_437:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_1748:
	push	r0
	sub	r1,1,r1
	bne	_Label_1748
	mov	240,r13		! source line 240
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_441		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_441
!	jmp	_Label_440
_Label_440:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_442 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_442  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	246,r13		! source line 246
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_441:
! ASSIGNMENT STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_444		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_444
!	jmp	_Label_443
_Label_443:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_445 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_446 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_446 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_447 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_444:
! ASSIGNMENT STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	254,r13		! source line 254
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_448
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_449
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_450
	.word	-12
	.word	4
	.word	_Label_451
	.word	-16
	.word	4
	.word	_Label_452
	.word	-20
	.word	4
	.word	_Label_453
	.word	-24
	.word	4
	.word	_Label_454
	.word	-28
	.word	4
	.word	_Label_455
	.word	-32
	.word	4
	.word	0
_Label_448:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_449:
	.ascii	"Pself\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_454:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_455:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_1749:
	push	r0
	sub	r1,1,r1
	bne	_Label_1749
	mov	259,r13		! source line 259
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	262,r13		! source line 262
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_457		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_457
!	jmp	_Label_456
_Label_456:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_458 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_458  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	264,r13		! source line 264
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_457:
! ASSIGNMENT STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_460		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_460
!	jmp	_Label_459
_Label_459:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_461 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_460:
! ASSIGNMENT STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	271,r13		! source line 271
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_462
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_463
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_464
	.word	-12
	.word	4
	.word	_Label_465
	.word	-16
	.word	4
	.word	_Label_466
	.word	-20
	.word	4
	.word	0
_Label_462:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_463:
	.ascii	"Pself\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_461\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_466:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_467
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_467:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_468
	.word	_sourceFileName
	.word	137		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_468:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_1750:
	push	r0
	sub	r1,1,r1
	bne	_Label_1750
	mov	294,r13		! source line 294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_470
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_471
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_472
	.word	-12
	.word	4
	.word	0
_Label_470:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_471:
	.ascii	"Pself\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_469\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_1751:
	push	r0
	sub	r1,1,r1
	bne	_Label_1751
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_474		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_474
!	jmp	_Label_473
_Label_473:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_475 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_475  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	304,r13		! source line 304
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_474:
! ASSIGNMENT STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	306,r13		! source line 306
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_479		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_479
!   _temp_478 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_480
_Label_479:
!   _temp_478 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_480:
!   if _temp_478 then goto _Label_477 else goto _Label_476
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_476
	jmp	_Label_477
_Label_476:
! THEN...
	mov	308,r13		! source line 308
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_481
_Label_477:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_482 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_481:
! ASSIGNMENT STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	313,r13		! source line 313
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_483
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_484
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_485
	.word	-16
	.word	4
	.word	_Label_486
	.word	-9
	.word	1
	.word	_Label_487
	.word	-20
	.word	4
	.word	_Label_488
	.word	-24
	.word	4
	.word	0
_Label_483:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_484:
	.ascii	"Pself\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_482\0"
	.align
_Label_486:
	.byte	'C'
	.ascii	"_temp_478\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_475\0"
	.align
_Label_488:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_1752:
	push	r0
	sub	r1,1,r1
	bne	_Label_1752
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_490		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_490
!	jmp	_Label_489
_Label_489:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_491 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_491  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	323,r13		! source line 323
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_490:
! ASSIGNMENT STATEMENT...
	mov	325,r13		! source line 325
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	325,r13		! source line 325
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0AS",r10
	mov	326,r13		! source line 326
	mov	"\0\0SE",r10
!   _temp_492 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_494		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_494
!	jmp	_Label_493
_Label_493:
! THEN...
	mov	328,r13		! source line 328
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_495 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_495 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_496 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_497
_Label_494:
! ELSE...
	mov	332,r13		! source line 332
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_497:
! ASSIGNMENT STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	334,r13		! source line 334
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_498
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_499
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_500
	.word	-12
	.word	4
	.word	_Label_501
	.word	-16
	.word	4
	.word	_Label_502
	.word	-20
	.word	4
	.word	_Label_503
	.word	-24
	.word	4
	.word	_Label_504
	.word	-28
	.word	4
	.word	_Label_505
	.word	-32
	.word	4
	.word	0
_Label_498:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_499:
	.ascii	"Pself\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_496\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_492\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_491\0"
	.align
_Label_504:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_505:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_1753:
	push	r0
	sub	r1,1,r1
	bne	_Label_1753
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_508		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_508
!	jmp	_Label_507
_Label_507:
!   _temp_506 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_509
_Label_508:
!   _temp_506 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_509:
!   ReturnResult: _temp_506  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_510
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_511
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_512
	.word	-9
	.word	1
	.word	0
_Label_510:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_511:
	.ascii	"Pself\0"
	.align
_Label_512:
	.byte	'C'
	.ascii	"_temp_506\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_513
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_513:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_514
	.word	_sourceFileName
	.word	151		! line number
	.word	96		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_514:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	10,r1
_Label_1754:
	push	r0
	sub	r1,1,r1
	bne	_Label_1754
	mov	380,r13		! source line 380
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: sema = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,44,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   sema = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+44]
! SEND STATEMENT...
	mov	382,r13		! source line 382
	mov	"\0\0SE",r10
!   _temp_516 = &sema
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	383,r13		! source line 383
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: semaNext = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,24,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   semaNext = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! SEND STATEMENT...
	mov	384,r13		! source line 384
	mov	"\0\0SE",r10
!   _temp_518 = &semaNext
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	385,r13		! source line 385
	mov	"\0\0AS",r10
!   c = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+64]
! ASSIGNMENT STATEMENT...
	mov	386,r13		! source line 386
	mov	"\0\0AS",r10
!   nextC = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	387,r13		! source line 387
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,84,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	389,r13		! source line 389
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads2 = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,72,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads2 = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	390,r13		! source line 390
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: mLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   mLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	391,r13		! source line 391
	mov	"\0\0SE",r10
!   _temp_522 = &mLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	391,r13		! source line 391
	mov	"\0\0RE",r10
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_523
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_524
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_525
	.word	-12
	.word	4
	.word	_Label_526
	.word	-16
	.word	4
	.word	_Label_527
	.word	-20
	.word	4
	.word	_Label_528
	.word	-24
	.word	4
	.word	_Label_529
	.word	-28
	.word	4
	.word	_Label_530
	.word	-32
	.word	4
	.word	_Label_531
	.word	-36
	.word	4
	.word	_Label_532
	.word	-40
	.word	4
	.word	0
_Label_523:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_524:
	.ascii	"Pself\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_521\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_519\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_518\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_517\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_516\0"
	.align
_Label_532:
	.byte	'?'
	.ascii	"_temp_515\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_1755:
	push	r0
	sub	r1,1,r1
	bne	_Label_1755
	mov	396,r13		! source line 396
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0IF",r10
	mov	399,r13		! source line 399
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_535  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_535 then goto _Label_534 else goto _Label_533
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_533
	jmp	_Label_534
_Label_533:
! THEN...
	mov	400,r13		! source line 400
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_536 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_536  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	400,r13		! source line 400
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_534:
! ASSIGNMENT STATEMENT...
	mov	402,r13		! source line 402
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	402,r13		! source line 402
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	403,r13		! source line 403
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	404,r13		! source line 404
	mov	"\0\0SE",r10
!   _temp_537 = &waitingThreads
	load	[r14+8],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	405,r13		! source line 405
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	406,r13		! source line 406
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	407,r13		! source line 407
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	407,r13		! source line 407
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	407,r13		! source line 407
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_538
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_539
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_540
	.word	12
	.word	4
	.word	_Label_541
	.word	-16
	.word	4
	.word	_Label_542
	.word	-20
	.word	4
	.word	_Label_543
	.word	-9
	.word	1
	.word	_Label_544
	.word	-24
	.word	4
	.word	0
_Label_538:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_539:
	.ascii	"Pself\0"
	.align
_Label_540:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_541:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
_Label_543:
	.byte	'C'
	.ascii	"_temp_535\0"
	.align
_Label_544:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_1756:
	push	r0
	sub	r1,1,r1
	bne	_Label_1756
	mov	459,r13		! source line 459
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0IF",r10
	mov	463,r13		! source line 463
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_547  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_547 then goto _Label_546 else goto _Label_545
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_545
	jmp	_Label_546
_Label_545:
! THEN...
	mov	464,r13		! source line 464
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_548 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_548  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	464,r13		! source line 464
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_546:
! ASSIGNMENT STATEMENT...
	mov	466,r13		! source line 466
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	466,r13		! source line 466
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	467,r13		! source line 467
	mov	"\0\0AS",r10
	mov	467,r13		! source line 467
	mov	"\0\0SE",r10
!   _temp_549 = &waitingThreads
	load	[r14+8],r1
	add	r1,84,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	468,r13		! source line 468
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_551		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_551
!	jmp	_Label_550
_Label_550:
! THEN...
	mov	469,r13		! source line 469
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	469,r13		! source line 469
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_552 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_552 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	470,r13		! source line 470
	mov	"\0\0SE",r10
!   _temp_553 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToFront
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! END IF...
_Label_551:
! ASSIGNMENT STATEMENT...
	mov	472,r13		! source line 472
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	472,r13		! source line 472
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! SEND STATEMENT...
	mov	473,r13		! source line 473
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	473,r13		! source line 473
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_554
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_555
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_556
	.word	12
	.word	4
	.word	_Label_557
	.word	-16
	.word	4
	.word	_Label_558
	.word	-20
	.word	4
	.word	_Label_559
	.word	-24
	.word	4
	.word	_Label_560
	.word	-28
	.word	4
	.word	_Label_561
	.word	-9
	.word	1
	.word	_Label_562
	.word	-32
	.word	4
	.word	_Label_563
	.word	-36
	.word	4
	.word	0
_Label_554:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_555:
	.ascii	"Pself\0"
	.align
_Label_556:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_557:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_561:
	.byte	'C'
	.ascii	"_temp_547\0"
	.align
_Label_562:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_563:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_1757:
	push	r0
	sub	r1,1,r1
	bne	_Label_1757
	mov	504,r13		! source line 504
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0IF",r10
	mov	508,r13		! source line 508
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_566  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_566 then goto _Label_565 else goto _Label_564
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_564
	jmp	_Label_565
_Label_564:
! THEN...
	mov	509,r13		! source line 509
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_567 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_567  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	509,r13		! source line 509
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_565:
! ASSIGNMENT STATEMENT...
	mov	511,r13		! source line 511
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	511,r13		! source line 511
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	512,r13		! source line 512
	mov	"\0\0WH",r10
_Label_568:
!	jmp	_Label_569
_Label_569:
	mov	512,r13		! source line 512
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	513,r13		! source line 513
	mov	"\0\0AS",r10
	mov	513,r13		! source line 513
	mov	"\0\0SE",r10
!   _temp_571 = &waitingThreads
	load	[r14+8],r1
	add	r1,84,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	514,r13		! source line 514
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_572
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_572
	jmp	_Label_573
_Label_572:
! THEN...
	mov	515,r13		! source line 515
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	515,r13		! source line 515
	mov	"\0\0BR",r10
	jmp	_Label_570
! END IF...
_Label_573:
! ASSIGNMENT STATEMENT...
	mov	517,r13		! source line 517
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_574 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_574 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	518,r13		! source line 518
	mov	"\0\0SE",r10
!   _temp_575 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_568
_Label_570:
! ASSIGNMENT STATEMENT...
	mov	520,r13		! source line 520
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	520,r13		! source line 520
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	520,r13		! source line 520
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_576
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_577
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_578
	.word	12
	.word	4
	.word	_Label_579
	.word	-16
	.word	4
	.word	_Label_580
	.word	-20
	.word	4
	.word	_Label_581
	.word	-24
	.word	4
	.word	_Label_582
	.word	-28
	.word	4
	.word	_Label_583
	.word	-9
	.word	1
	.word	_Label_584
	.word	-32
	.word	4
	.word	_Label_585
	.word	-36
	.word	4
	.word	0
_Label_576:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_577:
	.ascii	"Pself\0"
	.align
_Label_578:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_583:
	.byte	'C'
	.ascii	"_temp_566\0"
	.align
_Label_584:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_585:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_586
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_586:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_587
	.word	_sourceFileName
	.word	170		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_587:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_1758:
	push	r0
	sub	r1,1,r1
	bne	_Label_1758
	mov	531,r13		! source line 531
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	536,r13		! source line 536
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	537,r13		! source line 537
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	539,r13		! source line 539
	mov	"\0\0AS",r10
!   _temp_588 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_588) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_588 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	540,r13		! source line 540
	mov	"\0\0AS",r10
!   _temp_589 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_589 [0 ] into _temp_590
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Data Move: *_temp_590 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	541,r13		! source line 541
	mov	"\0\0AS",r10
!   _temp_591 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_591 [999 ] into _temp_592
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-172]
!   Data Move: *_temp_592 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	542,r13		! source line 542
	mov	"\0\0AS",r10
!   _temp_593 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_593 [999 ] into _temp_594
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-164]
!   stackTop = _temp_594		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	543,r13		! source line 543
	mov	"\0\0AS",r10
!   _temp_595 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_597 = &_temp_596
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_597 = _temp_597 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_599:
!   Data Move: *_temp_597 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_597 = _temp_597 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_598 = _temp_598 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_598) then goto _Label_599
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_599
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_600 = &_temp_596
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_1759
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1759:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_595 = *_temp_600  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_1760:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1760
! ASSIGNMENT STATEMENT...
	mov	544,r13		! source line 544
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	545,r13		! source line 545
	mov	"\0\0AS",r10
!   _temp_601 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_603 = &_temp_602
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_603 = _temp_603 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_605:
!   Data Move: *_temp_603 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_603 = _temp_603 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_604 = _temp_604 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_604) then goto _Label_605
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_605
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_606 = &_temp_602
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_1761
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1761:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_601 = *_temp_606  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_1762:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1762
! RETURN STATEMENT...
	mov	545,r13		! source line 545
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_607
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_608
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_609
	.word	12
	.word	4
	.word	_Label_610
	.word	-12
	.word	4
	.word	_Label_611
	.word	-16
	.word	4
	.word	_Label_612
	.word	-20
	.word	4
	.word	_Label_613
	.word	-84
	.word	64
	.word	_Label_614
	.word	-88
	.word	4
	.word	_Label_615
	.word	-92
	.word	4
	.word	_Label_616
	.word	-96
	.word	4
	.word	_Label_617
	.word	-100
	.word	4
	.word	_Label_618
	.word	-156
	.word	56
	.word	_Label_619
	.word	-160
	.word	4
	.word	_Label_620
	.word	-164
	.word	4
	.word	_Label_621
	.word	-168
	.word	4
	.word	_Label_622
	.word	-172
	.word	4
	.word	_Label_623
	.word	-176
	.word	4
	.word	_Label_624
	.word	-180
	.word	4
	.word	_Label_625
	.word	-184
	.word	4
	.word	_Label_626
	.word	-188
	.word	4
	.word	0
_Label_607:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_608:
	.ascii	"Pself\0"
	.align
_Label_609:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_613:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_615:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_623:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_624:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_625:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_626:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_1763:
	push	r0
	sub	r1,1,r1
	bne	_Label_1763
	mov	550,r13		! source line 550
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	561,r13		! source line 561
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	561,r13		! source line 561
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	563,r13		! source line 563
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	564,r13		! source line 564
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	565,r13		! source line 565
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	566,r13		! source line 566
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_627 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_627  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	567,r13		! source line 567
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	568,r13		! source line 568
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_629 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_628  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	569,r13		! source line 569
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_630
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_631
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_632
	.word	12
	.word	4
	.word	_Label_633
	.word	16
	.word	4
	.word	_Label_634
	.word	-12
	.word	4
	.word	_Label_635
	.word	-16
	.word	4
	.word	_Label_636
	.word	-20
	.word	4
	.word	_Label_637
	.word	-24
	.word	4
	.word	_Label_638
	.word	-28
	.word	4
	.word	0
_Label_630:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_631:
	.ascii	"Pself\0"
	.align
_Label_632:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_633:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_637:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_638:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_1764:
	push	r0
	sub	r1,1,r1
	bne	_Label_1764
	mov	574,r13		! source line 574
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	590,r13		! source line 590
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_641 == _P_Kernel_currentThread then goto _Label_640		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_640
!	jmp	_Label_639
_Label_639:
! THEN...
	mov	591,r13		! source line 591
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_642 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_642  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	591,r13		! source line 591
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_640:
! ASSIGNMENT STATEMENT...
	mov	593,r13		! source line 593
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	597,r13		! source line 597
	mov	"\0\0AS",r10
	mov	597,r13		! source line 597
	mov	"\0\0SE",r10
!   _temp_643 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	598,r13		! source line 598
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_645		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_645
!	jmp	_Label_644
_Label_644:
! THEN...
	mov	602,r13		! source line 602
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	602,r13		! source line 602
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_647		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_647
!	jmp	_Label_646
_Label_646:
! THEN...
	mov	603,r13		! source line 603
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_648 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_648  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	603,r13		! source line 603
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_647:
! ASSIGNMENT STATEMENT...
	mov	605,r13		! source line 605
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	606,r13		! source line 606
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_650 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_649  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	607,r13		! source line 607
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_645:
! ASSIGNMENT STATEMENT...
	mov	609,r13		! source line 609
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	609,r13		! source line 609
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	609,r13		! source line 609
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_651
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_652
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_653
	.word	-12
	.word	4
	.word	_Label_654
	.word	-16
	.word	4
	.word	_Label_655
	.word	-20
	.word	4
	.word	_Label_656
	.word	-24
	.word	4
	.word	_Label_657
	.word	-28
	.word	4
	.word	_Label_658
	.word	-32
	.word	4
	.word	_Label_659
	.word	-36
	.word	4
	.word	_Label_660
	.word	-40
	.word	4
	.word	_Label_661
	.word	-44
	.word	4
	.word	0
_Label_651:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_652:
	.ascii	"Pself\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_659:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_660:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_661:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_1765:
	push	r0
	sub	r1,1,r1
	bne	_Label_1765
	mov	614,r13		! source line 614
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	626,r13		! source line 626
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_663		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_663
!	jmp	_Label_662
_Label_662:
! THEN...
	mov	627,r13		! source line 627
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_664 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_664  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	627,r13		! source line 627
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_663:
! IF STATEMENT...
	mov	630,r13		! source line 630
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_667 == _P_Kernel_currentThread then goto _Label_666		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_666
!	jmp	_Label_665
_Label_665:
! THEN...
	mov	631,r13		! source line 631
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_668 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_668  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	631,r13		! source line 631
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_666:
! ASSIGNMENT STATEMENT...
	mov	636,r13		! source line 636
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	637,r13		! source line 637
	mov	"\0\0AS",r10
	mov	637,r13		! source line 637
	mov	"\0\0SE",r10
!   _temp_669 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	638,r13		! source line 638
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_670
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_670
	jmp	_Label_671
_Label_670:
! THEN...
	mov	639,r13		! source line 639
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_672 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_672  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	639,r13		! source line 639
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_671:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	641,r13		! source line 641
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	641,r13		! source line 641
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_673
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_674
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_675
	.word	-12
	.word	4
	.word	_Label_676
	.word	-16
	.word	4
	.word	_Label_677
	.word	-20
	.word	4
	.word	_Label_678
	.word	-24
	.word	4
	.word	_Label_679
	.word	-28
	.word	4
	.word	_Label_680
	.word	-32
	.word	4
	.word	0
_Label_673:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_674:
	.ascii	"Pself\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_680:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_1766:
	push	r0
	sub	r1,1,r1
	bne	_Label_1766
	mov	646,r13		! source line 646
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	652,r13		! source line 652
	mov	"\0\0IF",r10
!   _temp_684 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_684 [0 ] into _temp_685
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_683 = *_temp_685  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_683 == 606348324 then goto _Label_682		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_682
!	jmp	_Label_681
_Label_681:
! THEN...
	mov	653,r13		! source line 653
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_686 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_686  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	653,r13		! source line 653
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_687
_Label_682:
! ELSE...
	mov	654,r13		! source line 654
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	654,r13		! source line 654
	mov	"\0\0IF",r10
!   _temp_691 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_691 [999 ] into _temp_692
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_690 = *_temp_692  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_690 == 606348324 then goto _Label_689		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_689
!	jmp	_Label_688
_Label_688:
! THEN...
	mov	655,r13		! source line 655
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_693 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_693  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	655,r13		! source line 655
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_689:
! END IF...
_Label_687:
! RETURN STATEMENT...
	mov	652,r13		! source line 652
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_694
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_695
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_696
	.word	-12
	.word	4
	.word	_Label_697
	.word	-16
	.word	4
	.word	_Label_698
	.word	-20
	.word	4
	.word	_Label_699
	.word	-24
	.word	4
	.word	_Label_700
	.word	-28
	.word	4
	.word	_Label_701
	.word	-32
	.word	4
	.word	_Label_702
	.word	-36
	.word	4
	.word	_Label_703
	.word	-40
	.word	4
	.word	0
_Label_694:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_695:
	.ascii	"Pself\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_1767:
	push	r0
	sub	r1,1,r1
	bne	_Label_1767
	mov	661,r13		! source line 661
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	667,r13		! source line 667
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_704 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_704  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	668,r13		! source line 668
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_705 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_705  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_706  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	671,r13		! source line 671
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_707 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_707  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	672,r13		! source line 672
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_708 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_708  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	673,r13		! source line 673
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	674,r13		! source line 674
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_713 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_714 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_713  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_709:
!   Perform the FOR-LOOP termination test
!   if i > _temp_714 then goto _Label_712		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_712
_Label_710:
	mov	674,r13		! source line 674
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_715 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_715  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_716 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_716  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_717 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_717  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_719 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_719 [i ] into _temp_720
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   Data Move: _temp_718 = *_temp_720  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_718  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	678,r13		! source line 678
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_721 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_721  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	679,r13		! source line 679
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_723 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_723 [i ] into _temp_724
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Data Move: _temp_722 = *_temp_724  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_722  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	680,r13		! source line 680
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_725 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_725  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	681,r13		! source line 681
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_711:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_709
! END FOR
_Label_712:
! CALL STATEMENT...
!   _temp_726 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-116]
!   _temp_727 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_726  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_727  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	683,r13		! source line 683
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_728 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-108]
!   _temp_730 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_730 [0 ] into _temp_731
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   _temp_729 = _temp_731		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_728  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_729  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	684,r13		! source line 684
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	685,r13		! source line 685
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_734
	cmp	r1,2
	be	_Label_735
	cmp	r1,3
	be	_Label_736
	cmp	r1,4
	be	_Label_737
	cmp	r1,5
	be	_Label_738
	jmp	_Label_732
! CASE 1...
_Label_734:
! CALL STATEMENT...
!   _temp_739 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_739  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	687,r13		! source line 687
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	688,r13		! source line 688
	mov	"\0\0BR",r10
	jmp	_Label_733
! CASE 2...
_Label_735:
! CALL STATEMENT...
!   _temp_740 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_740  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	690,r13		! source line 690
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	691,r13		! source line 691
	mov	"\0\0BR",r10
	jmp	_Label_733
! CASE 3...
_Label_736:
! CALL STATEMENT...
!   _temp_741 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_741  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	693,r13		! source line 693
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	694,r13		! source line 694
	mov	"\0\0BR",r10
	jmp	_Label_733
! CASE 4...
_Label_737:
! CALL STATEMENT...
!   _temp_742 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_742  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	696,r13		! source line 696
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	697,r13		! source line 697
	mov	"\0\0BR",r10
	jmp	_Label_733
! CASE 5...
_Label_738:
! CALL STATEMENT...
!   _temp_743 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_743  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	699,r13		! source line 699
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	700,r13		! source line 700
	mov	"\0\0BR",r10
	jmp	_Label_733
! DEFAULT CASE...
_Label_732:
! CALL STATEMENT...
!   _temp_744 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_744  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	702,r13		! source line 702
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_733:
! CALL STATEMENT...
!   _temp_745 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_745  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	704,r13		! source line 704
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	705,r13		! source line 705
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	706,r13		! source line 706
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_746 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_746  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	707,r13		! source line 707
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	708,r13		! source line 708
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_751 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_752 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_751  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_747:
!   Perform the FOR-LOOP termination test
!   if i > _temp_752 then goto _Label_750		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_750
_Label_748:
	mov	708,r13		! source line 708
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_753 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_753  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	709,r13		! source line 709
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_754 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_754  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	710,r13		! source line 710
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_755 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_755  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	711,r13		! source line 711
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_757 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_757 [i ] into _temp_758
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_756 = *_temp_758  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_756  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	712,r13		! source line 712
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_759 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_759  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	713,r13		! source line 713
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_761 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_761 [i ] into _temp_762
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_760 = *_temp_762  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_760  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	714,r13		! source line 714
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_763 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_763  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	715,r13		! source line 715
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_749:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_747
! END FOR
_Label_750:
! ASSIGNMENT STATEMENT...
	mov	717,r13		! source line 717
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	717,r13		! source line 717
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	717,r13		! source line 717
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_764
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_765
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_766
	.word	-12
	.word	4
	.word	_Label_767
	.word	-16
	.word	4
	.word	_Label_768
	.word	-20
	.word	4
	.word	_Label_769
	.word	-24
	.word	4
	.word	_Label_770
	.word	-28
	.word	4
	.word	_Label_771
	.word	-32
	.word	4
	.word	_Label_772
	.word	-36
	.word	4
	.word	_Label_773
	.word	-40
	.word	4
	.word	_Label_774
	.word	-44
	.word	4
	.word	_Label_775
	.word	-48
	.word	4
	.word	_Label_776
	.word	-52
	.word	4
	.word	_Label_777
	.word	-56
	.word	4
	.word	_Label_778
	.word	-60
	.word	4
	.word	_Label_779
	.word	-64
	.word	4
	.word	_Label_780
	.word	-68
	.word	4
	.word	_Label_781
	.word	-72
	.word	4
	.word	_Label_782
	.word	-76
	.word	4
	.word	_Label_783
	.word	-80
	.word	4
	.word	_Label_784
	.word	-84
	.word	4
	.word	_Label_785
	.word	-88
	.word	4
	.word	_Label_786
	.word	-92
	.word	4
	.word	_Label_787
	.word	-96
	.word	4
	.word	_Label_788
	.word	-100
	.word	4
	.word	_Label_789
	.word	-104
	.word	4
	.word	_Label_790
	.word	-108
	.word	4
	.word	_Label_791
	.word	-112
	.word	4
	.word	_Label_792
	.word	-116
	.word	4
	.word	_Label_793
	.word	-120
	.word	4
	.word	_Label_794
	.word	-124
	.word	4
	.word	_Label_795
	.word	-128
	.word	4
	.word	_Label_796
	.word	-132
	.word	4
	.word	_Label_797
	.word	-136
	.word	4
	.word	_Label_798
	.word	-140
	.word	4
	.word	_Label_799
	.word	-144
	.word	4
	.word	_Label_800
	.word	-148
	.word	4
	.word	_Label_801
	.word	-152
	.word	4
	.word	_Label_802
	.word	-156
	.word	4
	.word	_Label_803
	.word	-160
	.word	4
	.word	_Label_804
	.word	-164
	.word	4
	.word	_Label_805
	.word	-168
	.word	4
	.word	_Label_806
	.word	-172
	.word	4
	.word	_Label_807
	.word	-176
	.word	4
	.word	_Label_808
	.word	-180
	.word	4
	.word	_Label_809
	.word	-184
	.word	4
	.word	_Label_810
	.word	-188
	.word	4
	.word	_Label_811
	.word	-192
	.word	4
	.word	_Label_812
	.word	-196
	.word	4
	.word	0
_Label_764:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_765:
	.ascii	"Pself\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_763\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_762\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_761\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_760\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_759\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_758\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_781:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_782:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_783:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_784:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_790:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_795:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_718\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_708\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_707\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_706\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_705\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_704\0"
	.align
_Label_811:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_812:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_813
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_813:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_814
	.word	_sourceFileName
	.word	197		! line number
	.word	41776		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_814:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	11478,r1
_Label_1768:
	push	r0
	sub	r1,1,r1
	bne	_Label_1768
	mov	772,r13		! source line 772
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_815 = _StringConst_74
	set	_StringConst_74,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_815  sizeInBytes=4
	set	-45908,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	779,r13		! source line 779
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	781,r13		! source line 781
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: ThreadLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   ThreadLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	782,r13		! source line 782
	mov	"\0\0SE",r10
!   _temp_817 = &ThreadLock
	load	[r14+8],r1
	add	r1,4,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   Send message Init
	set	-45900,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	783,r13		! source line 783
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: ThreadFree = zeros  (sizeInBytes=96)
	load	[r14+8],r4
	add	r4,24,r4
	mov	24,r3
_Label_1769:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1769
!   ThreadFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! SEND STATEMENT...
	mov	784,r13		! source line 784
	mov	"\0\0SE",r10
!   _temp_819 = &ThreadFree
	load	[r14+8],r1
	add	r1,24,r1
	set	-45892,r2
	store	r1,[r14+r2]
!   Send message Init
	set	-45892,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	786,r13		! source line 786
	mov	"\0\0AS",r10
!   _temp_820 = &threadTable
	load	[r14+8],r1
	add	r1,120,r1
	set	-45888,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_822 = &_temp_821
	set	-45884,r1
	add	r14,r1,r1
	store	r1,[r14+-4240]
!   _temp_822 = _temp_822 + 4
	load	[r14+-4240],r1
	add	r1,4,r1
	store	r1,[r14+-4240]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_824 = zeros  (sizeInBytes=4164)
	add	r14,-4232,r4
	mov	1041,r3
_Label_1770:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1770
!   _temp_824 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4232]
	mov	10,r1
	store	r1,[r14+-4236]
_Label_826:
!   Data Move: *_temp_822 = _temp_824  (sizeInBytes=4164)
	add	r14,-4232,r5
	load	[r14+-4240],r4
	mov	1041,r3
_Label_1771:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1771
!   _temp_822 = _temp_822 + 4164
	load	[r14+-4240],r1
	add	r1,4164,r1
	store	r1,[r14+-4240]
!   _temp_823 = _temp_823 + -1
	load	[r14+-4236],r1
	add	r1,-1,r1
	store	r1,[r14+-4236]
!   if intNotZero (_temp_823) then goto _Label_826
	load	[r14+-4236],r1
	cmp	r1,r0
	bne	_Label_826
!   Initialize the array size...
	mov	10,r1
	set	-45884,r2
	store	r1,[r14+r2]
!   _temp_827 = &_temp_821
	set	-45884,r1
	add	r14,r1,r1
	store	r1,[r14+-64]
!   make sure array has size 10
	set	-45888,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1772
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1772:
!   make sure array has size 10
	load	[r14+-64],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_820 = *_temp_827  (sizeInBytes=41644)
	load	[r14+-64],r5
	set	-45888,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_1773:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1773
! ASSIGNMENT STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41764,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41764,r2
	store	r1,[r11+r2]
! FOR STATEMENT...
	mov	790,r13		! source line 790
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_833 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_834 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_833  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_829:
!   Perform the FOR-LOOP termination test
!   if i > _temp_834 then goto _Label_832		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_832
_Label_830:
	mov	790,r13		! source line 790
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0SE",r10
!   _temp_835 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-48]
!   _temp_836 = &threadTable
	load	[r14+8],r1
	add	r1,120,r1
	store	r1,[r14+-44]
!   Move address of _temp_836 [i ] into _temp_837
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_835  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	792,r13		! source line 792
	mov	"\0\0AS",r10
!   _temp_838 = &threadTable
	load	[r14+8],r1
	add	r1,120,r1
	store	r1,[r14+-36]
!   Move address of _temp_838 [i ] into _temp_839
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_840 = _temp_839 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_840 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0SE",r10
!   _temp_842 = &threadTable
	load	[r14+8],r1
	add	r1,120,r1
	store	r1,[r14+-20]
!   Move address of _temp_842 [i ] into _temp_843
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_841 = _temp_843		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_844 = &freeList
	set	41764,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_841  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_831:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_829
! END FOR
_Label_832:
! RETURN STATEMENT...
	mov	790,r13		! source line 790
	mov	"\0\0RE",r10
	set	45916,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_845
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
	.word	_Label_846
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_847
	.word	-12
	.word	4
	.word	_Label_848
	.word	-16
	.word	4
	.word	_Label_849
	.word	-20
	.word	4
	.word	_Label_850
	.word	-24
	.word	4
	.word	_Label_851
	.word	-28
	.word	4
	.word	_Label_852
	.word	-32
	.word	4
	.word	_Label_853
	.word	-36
	.word	4
	.word	_Label_854
	.word	-40
	.word	4
	.word	_Label_855
	.word	-44
	.word	4
	.word	_Label_856
	.word	-48
	.word	4
	.word	_Label_857
	.word	-52
	.word	4
	.word	_Label_858
	.word	-56
	.word	4
	.word	_Label_859
	.word	-60
	.word	4
	.word	_Label_860
	.word	-64
	.word	4
	.word	_Label_861
	.word	-68
	.word	4
	.word	_Label_862
	.word	-4232
	.word	4164
	.word	_Label_863
	.word	-4236
	.word	4
	.word	_Label_864
	.word	-4240
	.word	4
	.word	_Label_865
	.word	-45884
	.word	41644
	.word	_Label_866
	.word	-45888
	.word	4
	.word	_Label_867
	.word	-45892
	.word	4
	.word	_Label_868
	.word	-45896
	.word	4
	.word	_Label_869
	.word	-45900
	.word	4
	.word	_Label_870
	.word	-45904
	.word	4
	.word	_Label_871
	.word	-45908
	.word	4
	.word	_Label_872
	.word	-45912
	.word	4
	.word	0
_Label_845:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_846:
	.ascii	"Pself\0"
	.align
_Label_847:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_849:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_850:
	.byte	'?'
	.ascii	"_temp_841\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_840\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_839\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_821\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_818\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_870:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_871:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_872:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_1774:
	push	r0
	sub	r1,1,r1
	bne	_Label_1774
	mov	800,r13		! source line 800
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	807,r13		! source line 807
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	807,r13		! source line 807
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_873 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_873  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	808,r13		! source line 808
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	809,r13		! source line 809
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_878 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_879 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_878  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_874:
!   Perform the FOR-LOOP termination test
!   if i > _temp_879 then goto _Label_877		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_877
_Label_875:
	mov	809,r13		! source line 809
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_880 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_880  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	810,r13		! source line 810
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	811,r13		! source line 811
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_881 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_881  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	812,r13		! source line 812
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_883 = &threadTable
	load	[r14+8],r1
	add	r1,120,r1
	store	r1,[r14+-28]
!   Move address of _temp_883 [i ] into _temp_884
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_882 = _temp_884		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_882  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	813,r13		! source line 813
	mov	"\0\0CA",r10
	call	_function_126_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_876:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_874
! END FOR
_Label_877:
! CALL STATEMENT...
!   _temp_885 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_885  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	815,r13		! source line 815
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	816,r13		! source line 816
	mov	"\0\0SE",r10
!   _temp_886 = _function_125_PrintObjectAddr
	set	_function_125_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_887 = &freeList
	set	41764,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_886  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	817,r13		! source line 817
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	818,r13		! source line 818
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	818,r13		! source line 818
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	818,r13		! source line 818
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_888
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_889
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_890
	.word	-12
	.word	4
	.word	_Label_891
	.word	-16
	.word	4
	.word	_Label_892
	.word	-20
	.word	4
	.word	_Label_893
	.word	-24
	.word	4
	.word	_Label_894
	.word	-28
	.word	4
	.word	_Label_895
	.word	-32
	.word	4
	.word	_Label_896
	.word	-36
	.word	4
	.word	_Label_897
	.word	-40
	.word	4
	.word	_Label_898
	.word	-44
	.word	4
	.word	_Label_899
	.word	-48
	.word	4
	.word	_Label_900
	.word	-52
	.word	4
	.word	_Label_901
	.word	-56
	.word	4
	.word	_Label_902
	.word	-60
	.word	4
	.word	0
_Label_888:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_889:
	.ascii	"Pself\0"
	.align
_Label_890:
	.byte	'?'
	.ascii	"_temp_887\0"
	.align
_Label_891:
	.byte	'?'
	.ascii	"_temp_886\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_885\0"
	.align
_Label_893:
	.byte	'?'
	.ascii	"_temp_884\0"
	.align
_Label_894:
	.byte	'?'
	.ascii	"_temp_883\0"
	.align
_Label_895:
	.byte	'?'
	.ascii	"_temp_882\0"
	.align
_Label_896:
	.byte	'?'
	.ascii	"_temp_881\0"
	.align
_Label_897:
	.byte	'?'
	.ascii	"_temp_880\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_879\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_878\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_901:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_902:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	11,r1
_Label_1775:
	push	r0
	sub	r1,1,r1
	bne	_Label_1775
	mov	823,r13		! source line 823
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	831,r13		! source line 831
	mov	"\0\0SE",r10
!   _temp_903 = &ThreadLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	834,r13		! source line 834
	mov	"\0\0WH",r10
_Label_904:
	mov	834,r13		! source line 834
	mov	"\0\0SE",r10
!   _temp_908 = &freeList
	set	41764,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_907  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_909 = _temp_907 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_909 then goto _Label_906 else goto _Label_905
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_905
	jmp	_Label_906
_Label_905:
	mov	834,r13		! source line 834
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	835,r13		! source line 835
	mov	"\0\0SE",r10
!   _temp_910 = &ThreadLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   _temp_911 = &ThreadFree
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_910  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_904
_Label_906:
! ASSIGNMENT STATEMENT...
	mov	838,r13		! source line 838
	mov	"\0\0AS",r10
	mov	838,r13		! source line 838
	mov	"\0\0SE",r10
!   _temp_912 = &freeList
	set	41764,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	839,r13		! source line 839
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_913 = t + 76
	load	[r14+-44],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_913 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	840,r13		! source line 840
	mov	"\0\0SE",r10
!   _temp_914 = &ThreadLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	841,r13		! source line 841
	mov	"\0\0RE",r10
!   ReturnResult: t  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_915
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_916
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_917
	.word	-16
	.word	4
	.word	_Label_918
	.word	-20
	.word	4
	.word	_Label_919
	.word	-24
	.word	4
	.word	_Label_920
	.word	-28
	.word	4
	.word	_Label_921
	.word	-32
	.word	4
	.word	_Label_922
	.word	-9
	.word	1
	.word	_Label_923
	.word	-36
	.word	4
	.word	_Label_924
	.word	-10
	.word	1
	.word	_Label_925
	.word	-40
	.word	4
	.word	_Label_926
	.word	-44
	.word	4
	.word	0
_Label_915:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_916:
	.ascii	"Pself\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_914\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_913\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_922:
	.byte	'C'
	.ascii	"_temp_909\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_908\0"
	.align
_Label_924:
	.byte	'C'
	.ascii	"_temp_907\0"
	.align
_Label_925:
	.byte	'?'
	.ascii	"_temp_903\0"
	.align
_Label_926:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	8,r1
_Label_1776:
	push	r0
	sub	r1,1,r1
	bne	_Label_1776
	mov	846,r13		! source line 846
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	851,r13		! source line 851
	mov	"\0\0SE",r10
!   _temp_927 = &ThreadLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	852,r13		! source line 852
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_928 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_928 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	853,r13		! source line 853
	mov	"\0\0SE",r10
!   _temp_929 = &freeList
	set	41764,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	854,r13		! source line 854
	mov	"\0\0SE",r10
!   _temp_930 = &ThreadLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_931 = &ThreadFree
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_930  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	856,r13		! source line 856
	mov	"\0\0SE",r10
!   _temp_932 = &ThreadLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	856,r13		! source line 856
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_933
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_934
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_935
	.word	12
	.word	4
	.word	_Label_936
	.word	-12
	.word	4
	.word	_Label_937
	.word	-16
	.word	4
	.word	_Label_938
	.word	-20
	.word	4
	.word	_Label_939
	.word	-24
	.word	4
	.word	_Label_940
	.word	-28
	.word	4
	.word	_Label_941
	.word	-32
	.word	4
	.word	0
_Label_933:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_934:
	.ascii	"Pself\0"
	.align
_Label_935:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_940:
	.byte	'?'
	.ascii	"_temp_928\0"
	.align
_Label_941:
	.byte	'?'
	.ascii	"_temp_927\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_942
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_942:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_943
	.word	_sourceFileName
	.word	218		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_943:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	3,r1
_Label_1777:
	push	r0
	sub	r1,1,r1
	bne	_Label_1777
	mov	869,r13		! source line 869
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	870,r13		! source line 870
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	871,r13		! source line 871
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	872,r13		! source line 872
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_1778:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1778
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	873,r13		! source line 873
	mov	"\0\0SE",r10
!   _temp_945 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	873,r13		! source line 873
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_946
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_947
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_948
	.word	-12
	.word	4
	.word	_Label_949
	.word	-16
	.word	4
	.word	0
_Label_946:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_947:
	.ascii	"Pself\0"
	.align
_Label_948:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_949:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	4,r1
_Label_1779:
	push	r0
	sub	r1,1,r1
	bne	_Label_1779
	mov	883,r13		! source line 883
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	888,r13		! source line 888
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_950) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	889,r13		! source line 889
	mov	"\0\0SE",r10
!   _temp_951 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_952 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_952  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	890,r13		! source line 890
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	891,r13		! source line 891
	mov	"\0\0CA",r10
	call	_function_126_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	901,r13		! source line 901
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	901,r13		! source line 901
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_953
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_954
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_955
	.word	-12
	.word	4
	.word	_Label_956
	.word	-16
	.word	4
	.word	_Label_957
	.word	-20
	.word	4
	.word	0
_Label_953:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_954:
	.ascii	"Pself\0"
	.align
_Label_955:
	.byte	'?'
	.ascii	"_temp_952\0"
	.align
_Label_956:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_957:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_1780:
	push	r0
	sub	r1,1,r1
	bne	_Label_1780
	mov	906,r13		! source line 906
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_958 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_958  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	910,r13		! source line 910
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_959  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	911,r13		! source line 911
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_960 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_960  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	912,r13		! source line 912
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	913,r13		! source line 913
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_961 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_961  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	914,r13		! source line 914
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	915,r13		! source line 915
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_963		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_963
!	jmp	_Label_962
_Label_962:
! THEN...
	mov	916,r13		! source line 916
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_964 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_964  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	916,r13		! source line 916
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_965
_Label_963:
! ELSE...
	mov	917,r13		! source line 917
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	917,r13		! source line 917
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_967		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_967
!	jmp	_Label_966
_Label_966:
! THEN...
	mov	918,r13		! source line 918
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_968 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_968  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	918,r13		! source line 918
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_969
_Label_967:
! ELSE...
	mov	919,r13		! source line 919
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	919,r13		! source line 919
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_971		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_971
!	jmp	_Label_970
_Label_970:
! THEN...
	mov	920,r13		! source line 920
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_972 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_972  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	920,r13		! source line 920
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_973
_Label_971:
! ELSE...
	mov	922,r13		! source line 922
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_974 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_974  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	922,r13		! source line 922
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_973:
! END IF...
_Label_969:
! END IF...
_Label_965:
! CALL STATEMENT...
!   _temp_975 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_975  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	924,r13		! source line 924
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	925,r13		! source line 925
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_976 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_976  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	926,r13		! source line 926
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	927,r13		! source line 927
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	928,r13		! source line 928
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_977
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_978
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_979
	.word	-12
	.word	4
	.word	_Label_980
	.word	-16
	.word	4
	.word	_Label_981
	.word	-20
	.word	4
	.word	_Label_982
	.word	-24
	.word	4
	.word	_Label_983
	.word	-28
	.word	4
	.word	_Label_984
	.word	-32
	.word	4
	.word	_Label_985
	.word	-36
	.word	4
	.word	_Label_986
	.word	-40
	.word	4
	.word	_Label_987
	.word	-44
	.word	4
	.word	_Label_988
	.word	-48
	.word	4
	.word	0
_Label_977:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_978:
	.ascii	"Pself\0"
	.align
_Label_979:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_980:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_981:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
_Label_982:
	.byte	'?'
	.ascii	"_temp_972\0"
	.align
_Label_983:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
_Label_984:
	.byte	'?'
	.ascii	"_temp_964\0"
	.align
_Label_985:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_986:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_987:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_988:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_989
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_989:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_990
	.word	_sourceFileName
	.word	238		! line number
	.word	1476		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_990:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	368,r1
_Label_1781:
	push	r0
	sub	r1,1,r1
	bne	_Label_1781
	mov	939,r13		! source line 939
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	946,r13		! source line 946
	mov	"\0\0AS",r10
!   _temp_991 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1468]
!   NEW ARRAY Constructor...
!   _temp_993 = &_temp_992
	add	r14,-1464,r1
	store	r1,[r14+-220]
!   _temp_993 = _temp_993 + 4
	load	[r14+-220],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_995 = zeros  (sizeInBytes=124)
	add	r14,-212,r4
	mov	31,r3
_Label_1782:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1782
!   _temp_995 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-212]
	mov	10,r1
	store	r1,[r14+-216]
_Label_997:
!   Data Move: *_temp_993 = _temp_995  (sizeInBytes=124)
	add	r14,-212,r5
	load	[r14+-220],r4
	mov	31,r3
_Label_1783:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1783
!   _temp_993 = _temp_993 + 124
	load	[r14+-220],r1
	add	r1,124,r1
	store	r1,[r14+-220]
!   _temp_994 = _temp_994 + -1
	load	[r14+-216],r1
	add	r1,-1,r1
	store	r1,[r14+-216]
!   if intNotZero (_temp_994) then goto _Label_997
	load	[r14+-216],r1
	cmp	r1,r0
	bne	_Label_997
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1464]
!   _temp_998 = &_temp_992
	add	r14,-1464,r1
	store	r1,[r14+-84]
!   make sure array has size 10
	load	[r14+-1468],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1784
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1784:
!   make sure array has size 10
	load	[r14+-84],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_991 = *_temp_998  (sizeInBytes=1244)
	load	[r14+-84],r5
	load	[r14+-1468],r4
	mov	311,r3
_Label_1785:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1785
! ASSIGNMENT STATEMENT...
	mov	948,r13		! source line 948
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1248,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1248]
! ASSIGNMENT STATEMENT...
	mov	949,r13		! source line 949
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=96)
	load	[r14+8],r4
	add	r4,1268,r4
	mov	24,r3
_Label_1786:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1786
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! ASSIGNMENT STATEMENT...
	mov	950,r13		! source line 950
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=96)
	load	[r14+8],r4
	add	r4,1376,r4
	mov	24,r3
_Label_1787:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1787
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1376]
! SEND STATEMENT...
	mov	952,r13		! source line 952
	mov	"\0\0SE",r10
!   _temp_1002 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-68]
!   Send message Init
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	953,r13		! source line 953
	mov	"\0\0SE",r10
!   _temp_1003 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	954,r13		! source line 954
	mov	"\0\0SE",r10
!   _temp_1004 = &aProcessDied
	load	[r14+8],r1
	add	r1,1376,r1
	store	r1,[r14+-60]
!   Send message Init
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	956,r13		! source line 956
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1364,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1364]
! FOR STATEMENT...
	mov	958,r13		! source line 958
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1010 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1011 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1010  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1472]
_Label_1006:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1011 then goto _Label_1009		
	load	[r14+-1472],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1009
_Label_1007:
	mov	958,r13		! source line 958
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0SE",r10
!   _temp_1012 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1012 [i ] into _temp_1013
!     make sure index expr is >= 0
	load	[r14+-1472],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	960,r13		! source line 960
	mov	"\0\0AS",r10
!   _temp_1014 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1014 [i ] into _temp_1015
!     make sure index expr is >= 0
	load	[r14+-1472],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1016 = _temp_1015 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1016 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	961,r13		! source line 961
	mov	"\0\0SE",r10
!   _temp_1018 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1018 [i ] into _temp_1019
!     make sure index expr is >= 0
	load	[r14+-1472],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1017 = _temp_1019		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1020 = &freeList
	load	[r14+8],r1
	add	r1,1364,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1017  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1008:
!   i = i + 1
	load	[r14+-1472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1472]
	jmp	_Label_1006
! END FOR
_Label_1009:
! ASSIGNMENT STATEMENT...
	mov	964,r13		! source line 964
	mov	"\0\0AS",r10
!   nextPid = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+1472]
! RETURN STATEMENT...
	mov	964,r13		! source line 964
	mov	"\0\0RE",r10
	add	r15,1476,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1021
	.word	4		! total size of parameters
	.word	1472		! frame size = 1472
	.word	_Label_1022
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1023
	.word	-12
	.word	4
	.word	_Label_1024
	.word	-16
	.word	4
	.word	_Label_1025
	.word	-20
	.word	4
	.word	_Label_1026
	.word	-24
	.word	4
	.word	_Label_1027
	.word	-28
	.word	4
	.word	_Label_1028
	.word	-32
	.word	4
	.word	_Label_1029
	.word	-36
	.word	4
	.word	_Label_1030
	.word	-40
	.word	4
	.word	_Label_1031
	.word	-44
	.word	4
	.word	_Label_1032
	.word	-48
	.word	4
	.word	_Label_1033
	.word	-52
	.word	4
	.word	_Label_1034
	.word	-56
	.word	4
	.word	_Label_1035
	.word	-60
	.word	4
	.word	_Label_1036
	.word	-64
	.word	4
	.word	_Label_1037
	.word	-68
	.word	4
	.word	_Label_1038
	.word	-72
	.word	4
	.word	_Label_1039
	.word	-76
	.word	4
	.word	_Label_1040
	.word	-80
	.word	4
	.word	_Label_1041
	.word	-84
	.word	4
	.word	_Label_1042
	.word	-88
	.word	4
	.word	_Label_1043
	.word	-212
	.word	124
	.word	_Label_1044
	.word	-216
	.word	4
	.word	_Label_1045
	.word	-220
	.word	4
	.word	_Label_1046
	.word	-1464
	.word	1244
	.word	_Label_1047
	.word	-1468
	.word	4
	.word	_Label_1048
	.word	-1472
	.word	4
	.word	0
_Label_1021:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1022:
	.ascii	"Pself\0"
	.align
_Label_1023:
	.byte	'?'
	.ascii	"_temp_1020\0"
	.align
_Label_1024:
	.byte	'?'
	.ascii	"_temp_1019\0"
	.align
_Label_1025:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1026:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1027:
	.byte	'?'
	.ascii	"_temp_1016\0"
	.align
_Label_1028:
	.byte	'?'
	.ascii	"_temp_1015\0"
	.align
_Label_1029:
	.byte	'?'
	.ascii	"_temp_1014\0"
	.align
_Label_1030:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1031:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1032:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1033:
	.byte	'?'
	.ascii	"_temp_1010\0"
	.align
_Label_1034:
	.byte	'?'
	.ascii	"_temp_1005\0"
	.align
_Label_1035:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1036:
	.byte	'?'
	.ascii	"_temp_1003\0"
	.align
_Label_1037:
	.byte	'?'
	.ascii	"_temp_1002\0"
	.align
_Label_1038:
	.byte	'?'
	.ascii	"_temp_1001\0"
	.align
_Label_1039:
	.byte	'?'
	.ascii	"_temp_1000\0"
	.align
_Label_1040:
	.byte	'?'
	.ascii	"_temp_999\0"
	.align
_Label_1041:
	.byte	'?'
	.ascii	"_temp_998\0"
	.align
_Label_1042:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1043:
	.byte	'?'
	.ascii	"_temp_995\0"
	.align
_Label_1044:
	.byte	'?'
	.ascii	"_temp_994\0"
	.align
_Label_1045:
	.byte	'?'
	.ascii	"_temp_993\0"
	.align
_Label_1046:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_1047:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_1048:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_1788:
	push	r0
	sub	r1,1,r1
	bne	_Label_1788
	mov	969,r13		! source line 969
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	976,r13		! source line 976
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	976,r13		! source line 976
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1049 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1049  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	977,r13		! source line 977
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	978,r13		! source line 978
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1054 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1055 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1054  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1050:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1055 then goto _Label_1053		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1053
_Label_1051:
	mov	978,r13		! source line 978
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1056 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1056  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	979,r13		! source line 979
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	980,r13		! source line 980
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1057 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1057  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	981,r13		! source line 981
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	982,r13		! source line 982
	mov	"\0\0SE",r10
!   _temp_1058 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1058 [i ] into _temp_1059
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1052:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1050
! END FOR
_Label_1053:
! CALL STATEMENT...
!   _temp_1060 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1060  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	984,r13		! source line 984
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	985,r13		! source line 985
	mov	"\0\0SE",r10
!   _temp_1061 = _function_125_PrintObjectAddr
	set	_function_125_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1062 = &freeList
	load	[r14+8],r1
	add	r1,1364,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1061  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	986,r13		! source line 986
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	987,r13		! source line 987
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	987,r13		! source line 987
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	987,r13		! source line 987
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_1063
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1064
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1065
	.word	-12
	.word	4
	.word	_Label_1066
	.word	-16
	.word	4
	.word	_Label_1067
	.word	-20
	.word	4
	.word	_Label_1068
	.word	-24
	.word	4
	.word	_Label_1069
	.word	-28
	.word	4
	.word	_Label_1070
	.word	-32
	.word	4
	.word	_Label_1071
	.word	-36
	.word	4
	.word	_Label_1072
	.word	-40
	.word	4
	.word	_Label_1073
	.word	-44
	.word	4
	.word	_Label_1074
	.word	-48
	.word	4
	.word	_Label_1075
	.word	-52
	.word	4
	.word	_Label_1076
	.word	-56
	.word	4
	.word	0
_Label_1063:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1064:
	.ascii	"Pself\0"
	.align
_Label_1065:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1066:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1067:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1068:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1069:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1070:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1071:
	.byte	'?'
	.ascii	"_temp_1056\0"
	.align
_Label_1072:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1073:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1074:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1075:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1076:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_1789:
	push	r0
	sub	r1,1,r1
	bne	_Label_1789
	mov	992,r13		! source line 992
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	999,r13		! source line 999
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	999,r13		! source line 999
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1077 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1077  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1000,r13		! source line 1000
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1001,r13		! source line 1001
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1082 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1083 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1082  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1078:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1083 then goto _Label_1081		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1081
_Label_1079:
	mov	1001,r13		! source line 1001
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1084 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1084  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1002,r13		! source line 1002
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1003,r13		! source line 1003
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	1004,r13		! source line 1004
	mov	"\0\0SE",r10
!   _temp_1085 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1085 [i ] into _temp_1086
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1080:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1078
! END FOR
_Label_1081:
! CALL STATEMENT...
!   _temp_1087 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1087  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1006,r13		! source line 1006
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1007,r13		! source line 1007
	mov	"\0\0SE",r10
!   _temp_1088 = _function_125_PrintObjectAddr
	set	_function_125_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1089 = &freeList
	load	[r14+8],r1
	add	r1,1364,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1088  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1008,r13		! source line 1008
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1009,r13		! source line 1009
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1009,r13		! source line 1009
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	1009,r13		! source line 1009
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_1090
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1091
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1092
	.word	-12
	.word	4
	.word	_Label_1093
	.word	-16
	.word	4
	.word	_Label_1094
	.word	-20
	.word	4
	.word	_Label_1095
	.word	-24
	.word	4
	.word	_Label_1096
	.word	-28
	.word	4
	.word	_Label_1097
	.word	-32
	.word	4
	.word	_Label_1098
	.word	-36
	.word	4
	.word	_Label_1099
	.word	-40
	.word	4
	.word	_Label_1100
	.word	-44
	.word	4
	.word	_Label_1101
	.word	-48
	.word	4
	.word	_Label_1102
	.word	-52
	.word	4
	.word	0
_Label_1090:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1091:
	.ascii	"Pself\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1085\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1098:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1099:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1101:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1102:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	12,r1
_Label_1790:
	push	r0
	sub	r1,1,r1
	bne	_Label_1790
	mov	1014,r13		! source line 1014
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1022,r13		! source line 1022
	mov	"\0\0SE",r10
!   _temp_1103 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1024,r13		! source line 1024
	mov	"\0\0WH",r10
_Label_1104:
	mov	1024,r13		! source line 1024
	mov	"\0\0SE",r10
!   _temp_1108 = &freeList
	load	[r14+8],r1
	add	r1,1364,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1107  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1109 = _temp_1107 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1109 then goto _Label_1106 else goto _Label_1105
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1105
	jmp	_Label_1106
_Label_1105:
	mov	1024,r13		! source line 1024
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1025,r13		! source line 1025
	mov	"\0\0SE",r10
!   _temp_1110 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-36]
!   _temp_1111 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1110  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1104
_Label_1106:
! ASSIGNMENT STATEMENT...
	mov	1028,r13		! source line 1028
	mov	"\0\0AS",r10
	mov	1028,r13		! source line 1028
	mov	"\0\0SE",r10
!   _temp_1112 = &freeList
	load	[r14+8],r1
	add	r1,1364,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=p  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1029,r13		! source line 1029
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1113 = p + 20
	load	[r14+-48],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1113 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1030,r13		! source line 1030
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1114 = p + 12
	load	[r14+-48],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1114 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1472],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1032,r13		! source line 1032
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1472],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1472]
! SEND STATEMENT...
	mov	1033,r13		! source line 1033
	mov	"\0\0SE",r10
!   _temp_1115 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1034,r13		! source line 1034
	mov	"\0\0RE",r10
!   ReturnResult: p  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1116
	.word	4		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1117
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1118
	.word	-16
	.word	4
	.word	_Label_1119
	.word	-20
	.word	4
	.word	_Label_1120
	.word	-24
	.word	4
	.word	_Label_1121
	.word	-28
	.word	4
	.word	_Label_1122
	.word	-32
	.word	4
	.word	_Label_1123
	.word	-36
	.word	4
	.word	_Label_1124
	.word	-9
	.word	1
	.word	_Label_1125
	.word	-40
	.word	4
	.word	_Label_1126
	.word	-10
	.word	1
	.word	_Label_1127
	.word	-44
	.word	4
	.word	_Label_1128
	.word	-48
	.word	4
	.word	0
_Label_1116:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1117:
	.ascii	"Pself\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1114\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1113\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1124:
	.byte	'C'
	.ascii	"_temp_1109\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1126:
	.byte	'C'
	.ascii	"_temp_1107\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1128:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	8,r1
_Label_1791:
	push	r0
	sub	r1,1,r1
	bne	_Label_1791
	mov	1039,r13		! source line 1039
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1044,r13		! source line 1044
	mov	"\0\0SE",r10
!   _temp_1129 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1045,r13		! source line 1045
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1130 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1130 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1046,r13		! source line 1046
	mov	"\0\0SE",r10
!   _temp_1131 = &freeList
	load	[r14+8],r1
	add	r1,1364,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1048,r13		! source line 1048
	mov	"\0\0SE",r10
!   _temp_1132 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1133 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1132  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1049,r13		! source line 1049
	mov	"\0\0SE",r10
!   _temp_1134 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1049,r13		! source line 1049
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1135
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1136
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1137
	.word	12
	.word	4
	.word	_Label_1138
	.word	-12
	.word	4
	.word	_Label_1139
	.word	-16
	.word	4
	.word	_Label_1140
	.word	-20
	.word	4
	.word	_Label_1141
	.word	-24
	.word	4
	.word	_Label_1142
	.word	-28
	.word	4
	.word	_Label_1143
	.word	-32
	.word	4
	.word	0
_Label_1135:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1136:
	.ascii	"Pself\0"
	.align
_Label_1137:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1138:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1139:
	.byte	'?'
	.ascii	"_temp_1133\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1141:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1142:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1144
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1144:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1145
	.word	_sourceFileName
	.word	261		! line number
	.word	136		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1145:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	14,r1
_Label_1792:
	push	r0
	sub	r1,1,r1
	bne	_Label_1792
	mov	1082,r13		! source line 1082
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1146 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1146  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1088,r13		! source line 1088
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1089,r13		! source line 1089
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1090,r13		! source line 1090
	mov	"\0\0SE",r10
!   _temp_1148 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=27  sizeInBytes=4
	mov	27,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1091,r13		! source line 1091
	mov	"\0\0AS",r10
!   numberFreeFrames = 27		(4 bytes)
	mov	27,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1092,r13		! source line 1092
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1093,r13		! source line 1093
	mov	"\0\0SE",r10
!   _temp_1150 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1094,r13		! source line 1094
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=96)
	load	[r14+8],r4
	add	r4,40,r4
	mov	24,r3
_Label_1793:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1793
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1095,r13		! source line 1095
	mov	"\0\0SE",r10
!   _temp_1152 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1101,r13		! source line 1101
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1157 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1158 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1157  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1153:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1158 then goto _Label_1156		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1156
_Label_1154:
	mov	1101,r13		! source line 1101
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1104,r13		! source line 1104
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1161 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1161) then goto _Label_1160
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1160
!	jmp	_Label_1159
_Label_1159:
! THEN...
	mov	1105,r13		! source line 1105
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1162 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1162  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1105,r13		! source line 1105
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1160:
!   Increment the FOR-LOOP index variable and jump back
_Label_1155:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1153
! END FOR
_Label_1156:
! RETURN STATEMENT...
	mov	1101,r13		! source line 1101
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_1163
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1164
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1165
	.word	-12
	.word	4
	.word	_Label_1166
	.word	-16
	.word	4
	.word	_Label_1167
	.word	-20
	.word	4
	.word	_Label_1168
	.word	-24
	.word	4
	.word	_Label_1169
	.word	-28
	.word	4
	.word	_Label_1170
	.word	-32
	.word	4
	.word	_Label_1171
	.word	-36
	.word	4
	.word	_Label_1172
	.word	-40
	.word	4
	.word	_Label_1173
	.word	-44
	.word	4
	.word	_Label_1174
	.word	-48
	.word	4
	.word	_Label_1175
	.word	-52
	.word	4
	.word	_Label_1176
	.word	-56
	.word	4
	.word	0
_Label_1163:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1164:
	.ascii	"Pself\0"
	.align
_Label_1165:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1166:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1157\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1152\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1151\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1149\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1176:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_1794:
	push	r0
	sub	r1,1,r1
	bne	_Label_1794
	mov	1112,r13		! source line 1112
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1116,r13		! source line 1116
	mov	"\0\0SE",r10
!   _temp_1177 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1178 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1178  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1117,r13		! source line 1117
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1179 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1179  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1118,r13		! source line 1118
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1180 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1180  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1119,r13		! source line 1119
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1120,r13		! source line 1120
	mov	"\0\0SE",r10
!   _temp_1181 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1121,r13		! source line 1121
	mov	"\0\0SE",r10
!   _temp_1182 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1121,r13		! source line 1121
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_1183
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1184
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1185
	.word	-12
	.word	4
	.word	_Label_1186
	.word	-16
	.word	4
	.word	_Label_1187
	.word	-20
	.word	4
	.word	_Label_1188
	.word	-24
	.word	4
	.word	_Label_1189
	.word	-28
	.word	4
	.word	_Label_1190
	.word	-32
	.word	4
	.word	0
_Label_1183:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1184:
	.ascii	"Pself\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_1795:
	push	r0
	sub	r1,1,r1
	bne	_Label_1795
	mov	1126,r13		! source line 1126
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1134,r13		! source line 1134
	mov	"\0\0SE",r10
!   _temp_1191 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1137,r13		! source line 1137
	mov	"\0\0WH",r10
_Label_1192:
!   if numberFreeFrames >= 1 then goto _Label_1194		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1194
!	jmp	_Label_1193
_Label_1193:
	mov	1137,r13		! source line 1137
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1138,r13		! source line 1138
	mov	"\0\0SE",r10
!   _temp_1195 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1196 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1195  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1192
_Label_1194:
! ASSIGNMENT STATEMENT...
	mov	1142,r13		! source line 1142
	mov	"\0\0AS",r10
	mov	1142,r13		! source line 1142
	mov	"\0\0SE",r10
!   _temp_1197 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1143,r13		! source line 1143
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1146,r13		! source line 1146
	mov	"\0\0SE",r10
!   _temp_1198 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1149,r13		! source line 1149
	mov	"\0\0AS",r10
!   _temp_1199 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1199		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1151,r13		! source line 1151
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_1200
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1201
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1202
	.word	-12
	.word	4
	.word	_Label_1203
	.word	-16
	.word	4
	.word	_Label_1204
	.word	-20
	.word	4
	.word	_Label_1205
	.word	-24
	.word	4
	.word	_Label_1206
	.word	-28
	.word	4
	.word	_Label_1207
	.word	-32
	.word	4
	.word	_Label_1208
	.word	-36
	.word	4
	.word	_Label_1209
	.word	-40
	.word	4
	.word	0
_Label_1200:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1201:
	.ascii	"Pself\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1208:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1209:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	15,r1
_Label_1796:
	push	r0
	sub	r1,1,r1
	bne	_Label_1796
	mov	1156,r13		! source line 1156
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1161,r13		! source line 1161
	mov	"\0\0SE",r10
!   _temp_1210 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1164,r13		! source line 1164
	mov	"\0\0WH",r10
_Label_1211:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1213		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1213
!	jmp	_Label_1212
_Label_1212:
	mov	1164,r13		! source line 1164
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1165,r13		! source line 1165
	mov	"\0\0SE",r10
!   _temp_1214 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1215 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1214  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1211
_Label_1213:
! FOR STATEMENT...
	mov	1169,r13		! source line 1169
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1220 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1221 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1220  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_1216:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1221 then goto _Label_1219		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1219
_Label_1217:
	mov	1169,r13		! source line 1169
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1170,r13		! source line 1170
	mov	"\0\0AS",r10
	mov	1170,r13		! source line 1170
	mov	"\0\0SE",r10
!   _temp_1222 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message FindZeroAndSet
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=freeFrame  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	1171,r13		! source line 1171
	mov	"\0\0AS",r10
!   _temp_1223 = freeFrame * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_1223		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1173,r13		! source line 1173
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=frameAddr  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1218:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1216
! END FOR
_Label_1219:
! ASSIGNMENT STATEMENT...
	mov	1176,r13		! source line 1176
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - numFramesNeeded		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1177,r13		! source line 1177
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1224 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1224 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1179,r13		! source line 1179
	mov	"\0\0SE",r10
!   _temp_1225 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1179,r13		! source line 1179
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1226
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1227
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1228
	.word	12
	.word	4
	.word	_Label_1229
	.word	16
	.word	4
	.word	_Label_1230
	.word	-12
	.word	4
	.word	_Label_1231
	.word	-16
	.word	4
	.word	_Label_1232
	.word	-20
	.word	4
	.word	_Label_1233
	.word	-24
	.word	4
	.word	_Label_1234
	.word	-28
	.word	4
	.word	_Label_1235
	.word	-32
	.word	4
	.word	_Label_1236
	.word	-36
	.word	4
	.word	_Label_1237
	.word	-40
	.word	4
	.word	_Label_1238
	.word	-44
	.word	4
	.word	_Label_1239
	.word	-48
	.word	4
	.word	_Label_1240
	.word	-52
	.word	4
	.word	_Label_1241
	.word	-56
	.word	4
	.word	0
_Label_1226:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1227:
	.ascii	"Pself\0"
	.align
_Label_1228:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1229:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1215\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1210\0"
	.align
_Label_1239:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1240:
	.byte	'I'
	.ascii	"freeFrame\0"
	.align
_Label_1241:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	15,r1
_Label_1797:
	push	r0
	sub	r1,1,r1
	bne	_Label_1797
	mov	1185,r13		! source line 1185
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1192,r13		! source line 1192
	mov	"\0\0SE",r10
!   _temp_1242 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1193,r13		! source line 1193
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1243 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: numReturn = *_temp_1243  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-60]
! FOR STATEMENT...
	mov	1194,r13		! source line 1194
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1248 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1249 = numReturn - 1		(int)
	load	[r14+-60],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1248  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-48]
_Label_1244:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1249 then goto _Label_1247		
	load	[r14+-48],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1247
_Label_1245:
	mov	1194,r13		! source line 1194
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1195,r13		! source line 1195
	mov	"\0\0AS",r10
	mov	1195,r13		! source line 1195
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	1196,r13		! source line 1196
	mov	"\0\0AS",r10
!   _temp_1250 = addr - 1048576		(int)
	load	[r14+-52],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   bitNumber = _temp_1250 div 8192		(int)
	load	[r14+-28],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1197,r13		! source line 1197
	mov	"\0\0SE",r10
!   _temp_1251 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=bitNumber  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1246:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1244
! END FOR
_Label_1247:
! ASSIGNMENT STATEMENT...
	mov	1200,r13		! source line 1200
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames + numReturn		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-60],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1202,r13		! source line 1202
	mov	"\0\0SE",r10
!   _temp_1252 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1253 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1252  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	1204,r13		! source line 1204
	mov	"\0\0SE",r10
!   _temp_1254 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1204,r13		! source line 1204
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_1255
	.word	8		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1256
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1257
	.word	12
	.word	4
	.word	_Label_1258
	.word	-12
	.word	4
	.word	_Label_1259
	.word	-16
	.word	4
	.word	_Label_1260
	.word	-20
	.word	4
	.word	_Label_1261
	.word	-24
	.word	4
	.word	_Label_1262
	.word	-28
	.word	4
	.word	_Label_1263
	.word	-32
	.word	4
	.word	_Label_1264
	.word	-36
	.word	4
	.word	_Label_1265
	.word	-40
	.word	4
	.word	_Label_1266
	.word	-44
	.word	4
	.word	_Label_1267
	.word	-48
	.word	4
	.word	_Label_1268
	.word	-52
	.word	4
	.word	_Label_1269
	.word	-56
	.word	4
	.word	_Label_1270
	.word	-60
	.word	4
	.word	0
_Label_1255:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1256:
	.ascii	"Pself\0"
	.align
_Label_1257:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
_Label_1267:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1268:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_1269:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
_Label_1270:
	.byte	'I'
	.ascii	"numReturn\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1271
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_1271:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1272
	.word	_sourceFileName
	.word	280		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1272:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_1798:
	push	r0
	sub	r1,1,r1
	bne	_Label_1798
	mov	1216,r13		! source line 1216
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1220,r13		! source line 1220
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1221,r13		! source line 1221
	mov	"\0\0AS",r10
!   _temp_1273 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1275 = &_temp_1274
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1275 = _temp_1275 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1277:
!   Data Move: *_temp_1275 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1275 = _temp_1275 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1276 = _temp_1276 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1276) then goto _Label_1277
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1277
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1278 = &_temp_1274
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_1799
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1799:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1273 = *_temp_1278  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_1800:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1800
! RETURN STATEMENT...
	mov	1221,r13		! source line 1221
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_1279
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1280
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1281
	.word	-12
	.word	4
	.word	_Label_1282
	.word	-16
	.word	4
	.word	_Label_1283
	.word	-20
	.word	4
	.word	_Label_1284
	.word	-104
	.word	84
	.word	_Label_1285
	.word	-108
	.word	4
	.word	0
_Label_1279:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1280:
	.ascii	"Pself\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_1801:
	push	r0
	sub	r1,1,r1
	bne	_Label_1801
	mov	1226,r13		! source line 1226
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1286 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1286  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1231,r13		! source line 1231
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1287 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1287  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1232,r13		! source line 1232
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1233,r13		! source line 1233
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1292 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1293 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1292  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1288:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1293 then goto _Label_1291		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1291
_Label_1289:
	mov	1233,r13		! source line 1233
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1294 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1294  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1234,r13		! source line 1234
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1296 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1296 [i ] into _temp_1297
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   _temp_1295 = _temp_1297		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1295  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1235,r13		! source line 1235
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1298 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1298  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1236,r13		! source line 1236
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1300 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1300 [i ] into _temp_1301
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Data Move: _temp_1299 = *_temp_1301  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1299  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1237,r13		! source line 1237
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1302 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1302  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1238,r13		! source line 1238
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1303 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1303  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1239,r13		! source line 1239
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1304 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1304  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1240,r13		! source line 1240
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1241,r13		! source line 1241
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1306) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1305  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1305  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1241,r13		! source line 1241
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1307 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1307  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1242,r13		! source line 1242
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1243,r13		! source line 1243
	mov	"\0\0IF",r10
	mov	1243,r13		! source line 1243
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1311) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1310  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1310) then goto _Label_1309
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1309
!	jmp	_Label_1308
_Label_1308:
! THEN...
	mov	1244,r13		! source line 1244
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1244,r13		! source line 1244
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1313) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1312  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1312  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1244,r13		! source line 1244
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1314
_Label_1309:
! ELSE...
	mov	1246,r13		! source line 1246
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1315 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1315  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1246,r13		! source line 1246
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1314:
! CALL STATEMENT...
!   _temp_1316 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1316  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1248,r13		! source line 1248
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1249,r13		! source line 1249
	mov	"\0\0IF",r10
	mov	1249,r13		! source line 1249
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1319) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_1317 else goto _Label_1318
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1318
	jmp	_Label_1317
_Label_1317:
! THEN...
	mov	1250,r13		! source line 1250
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1320 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1320  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1250,r13		! source line 1250
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1321
_Label_1318:
! ELSE...
	mov	1252,r13		! source line 1252
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1322 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1322  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1252,r13		! source line 1252
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1321:
! CALL STATEMENT...
!   _temp_1323 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1323  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1254,r13		! source line 1254
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1255,r13		! source line 1255
	mov	"\0\0IF",r10
	mov	1255,r13		! source line 1255
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1326) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_1324 else goto _Label_1325
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1325
	jmp	_Label_1324
_Label_1324:
! THEN...
	mov	1256,r13		! source line 1256
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1327 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1327  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1256,r13		! source line 1256
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1328
_Label_1325:
! ELSE...
	mov	1258,r13		! source line 1258
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1329 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1329  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1258,r13		! source line 1258
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1328:
! CALL STATEMENT...
!   _temp_1330 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1330  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1260,r13		! source line 1260
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1261,r13		! source line 1261
	mov	"\0\0IF",r10
	mov	1261,r13		! source line 1261
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1333) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_1331 else goto _Label_1332
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1332
	jmp	_Label_1331
_Label_1331:
! THEN...
	mov	1262,r13		! source line 1262
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1334 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1334  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1262,r13		! source line 1262
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1335
_Label_1332:
! ELSE...
	mov	1264,r13		! source line 1264
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1336 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1336  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1264,r13		! source line 1264
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1335:
! CALL STATEMENT...
!   _temp_1337 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1337  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1266,r13		! source line 1266
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1267,r13		! source line 1267
	mov	"\0\0IF",r10
	mov	1267,r13		! source line 1267
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1340) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_1338 else goto _Label_1339
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1339
	jmp	_Label_1338
_Label_1338:
! THEN...
	mov	1268,r13		! source line 1268
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1341 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1341  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1268,r13		! source line 1268
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1342
_Label_1339:
! ELSE...
	mov	1270,r13		! source line 1270
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1343 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1343  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1270,r13		! source line 1270
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1342:
! CALL STATEMENT...
!   Call the function
	mov	1272,r13		! source line 1272
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1290:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1288
! END FOR
_Label_1291:
! RETURN STATEMENT...
	mov	1233,r13		! source line 1233
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_1344
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1345
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1346
	.word	-12
	.word	4
	.word	_Label_1347
	.word	-16
	.word	4
	.word	_Label_1348
	.word	-20
	.word	4
	.word	_Label_1349
	.word	-24
	.word	4
	.word	_Label_1350
	.word	-28
	.word	4
	.word	_Label_1351
	.word	-32
	.word	4
	.word	_Label_1352
	.word	-36
	.word	4
	.word	_Label_1353
	.word	-40
	.word	4
	.word	_Label_1354
	.word	-44
	.word	4
	.word	_Label_1355
	.word	-48
	.word	4
	.word	_Label_1356
	.word	-52
	.word	4
	.word	_Label_1357
	.word	-56
	.word	4
	.word	_Label_1358
	.word	-60
	.word	4
	.word	_Label_1359
	.word	-64
	.word	4
	.word	_Label_1360
	.word	-68
	.word	4
	.word	_Label_1361
	.word	-72
	.word	4
	.word	_Label_1362
	.word	-76
	.word	4
	.word	_Label_1363
	.word	-80
	.word	4
	.word	_Label_1364
	.word	-84
	.word	4
	.word	_Label_1365
	.word	-88
	.word	4
	.word	_Label_1366
	.word	-92
	.word	4
	.word	_Label_1367
	.word	-96
	.word	4
	.word	_Label_1368
	.word	-100
	.word	4
	.word	_Label_1369
	.word	-104
	.word	4
	.word	_Label_1370
	.word	-108
	.word	4
	.word	_Label_1371
	.word	-112
	.word	4
	.word	_Label_1372
	.word	-116
	.word	4
	.word	_Label_1373
	.word	-120
	.word	4
	.word	_Label_1374
	.word	-124
	.word	4
	.word	_Label_1375
	.word	-128
	.word	4
	.word	_Label_1376
	.word	-132
	.word	4
	.word	_Label_1377
	.word	-136
	.word	4
	.word	_Label_1378
	.word	-140
	.word	4
	.word	_Label_1379
	.word	-144
	.word	4
	.word	_Label_1380
	.word	-148
	.word	4
	.word	_Label_1381
	.word	-152
	.word	4
	.word	_Label_1382
	.word	-156
	.word	4
	.word	_Label_1383
	.word	-160
	.word	4
	.word	_Label_1384
	.word	-164
	.word	4
	.word	_Label_1385
	.word	-168
	.word	4
	.word	0
_Label_1344:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1345:
	.ascii	"Pself\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1336\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1326\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1323\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1287\0"
	.align
_Label_1384:
	.byte	'?'
	.ascii	"_temp_1286\0"
	.align
_Label_1385:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_1802:
	push	r0
	sub	r1,1,r1
	bne	_Label_1802
	mov	1278,r13		! source line 1278
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1283,r13		! source line 1283
	mov	"\0\0RE",r10
!   _temp_1388 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1388 [entry ] into _temp_1389
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1387 = *_temp_1389  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1386 = _temp_1387 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1386  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_1390
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1391
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1392
	.word	12
	.word	4
	.word	_Label_1393
	.word	-12
	.word	4
	.word	_Label_1394
	.word	-16
	.word	4
	.word	_Label_1395
	.word	-20
	.word	4
	.word	_Label_1396
	.word	-24
	.word	4
	.word	0
_Label_1390:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1391:
	.ascii	"Pself\0"
	.align
_Label_1392:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_1803:
	push	r0
	sub	r1,1,r1
	bne	_Label_1803
	mov	1288,r13		! source line 1288
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1292,r13		! source line 1292
	mov	"\0\0RE",r10
!   _temp_1399 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1399 [entry ] into _temp_1400
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1398 = *_temp_1400  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1397 = _temp_1398 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1397  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_1401
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1402
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1403
	.word	12
	.word	4
	.word	_Label_1404
	.word	-12
	.word	4
	.word	_Label_1405
	.word	-16
	.word	4
	.word	_Label_1406
	.word	-20
	.word	4
	.word	_Label_1407
	.word	-24
	.word	4
	.word	0
_Label_1401:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1402:
	.ascii	"Pself\0"
	.align
_Label_1403:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1400\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1399\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_1804:
	push	r0
	sub	r1,1,r1
	bne	_Label_1804
	mov	1297,r13		! source line 1297
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1302,r13		! source line 1302
	mov	"\0\0AS",r10
!   _temp_1408 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1408 [entry ] into _temp_1409
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1413 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1413 [entry ] into _temp_1414
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1412 = *_temp_1414  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1411 = _temp_1412 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1410 = _temp_1411 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1409 = _temp_1410  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1302,r13		! source line 1302
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_1415
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1416
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1417
	.word	12
	.word	4
	.word	_Label_1418
	.word	16
	.word	4
	.word	_Label_1419
	.word	-12
	.word	4
	.word	_Label_1420
	.word	-16
	.word	4
	.word	_Label_1421
	.word	-20
	.word	4
	.word	_Label_1422
	.word	-24
	.word	4
	.word	_Label_1423
	.word	-28
	.word	4
	.word	_Label_1424
	.word	-32
	.word	4
	.word	_Label_1425
	.word	-36
	.word	4
	.word	0
_Label_1415:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1416:
	.ascii	"Pself\0"
	.align
_Label_1417:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1418:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1419:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1420:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_1805:
	push	r0
	sub	r1,1,r1
	bne	_Label_1805
	mov	1307,r13		! source line 1307
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1311,r13		! source line 1311
	mov	"\0\0RE",r10
!   _temp_1429 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1429 [entry ] into _temp_1430
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1428 = *_temp_1430  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1427 = _temp_1428 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1427) then goto _Label_1431
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1431
!   _temp_1426 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1432
_Label_1431:
!   _temp_1426 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1432:
!   ReturnResult: _temp_1426  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_1433
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1434
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1435
	.word	12
	.word	4
	.word	_Label_1436
	.word	-16
	.word	4
	.word	_Label_1437
	.word	-20
	.word	4
	.word	_Label_1438
	.word	-24
	.word	4
	.word	_Label_1439
	.word	-28
	.word	4
	.word	_Label_1440
	.word	-9
	.word	1
	.word	0
_Label_1433:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1434:
	.ascii	"Pself\0"
	.align
_Label_1435:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1440:
	.byte	'C'
	.ascii	"_temp_1426\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_1806:
	push	r0
	sub	r1,1,r1
	bne	_Label_1806
	mov	1316,r13		! source line 1316
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1320,r13		! source line 1320
	mov	"\0\0RE",r10
!   _temp_1444 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1444 [entry ] into _temp_1445
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1443 = *_temp_1445  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1442 = _temp_1443 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1442) then goto _Label_1446
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1446
!   _temp_1441 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1447
_Label_1446:
!   _temp_1441 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1447:
!   ReturnResult: _temp_1441  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_1448
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1449
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1450
	.word	12
	.word	4
	.word	_Label_1451
	.word	-16
	.word	4
	.word	_Label_1452
	.word	-20
	.word	4
	.word	_Label_1453
	.word	-24
	.word	4
	.word	_Label_1454
	.word	-28
	.word	4
	.word	_Label_1455
	.word	-9
	.word	1
	.word	0
_Label_1448:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1449:
	.ascii	"Pself\0"
	.align
_Label_1450:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1455:
	.byte	'C'
	.ascii	"_temp_1441\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_1807:
	push	r0
	sub	r1,1,r1
	bne	_Label_1807
	mov	1325,r13		! source line 1325
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1329,r13		! source line 1329
	mov	"\0\0RE",r10
!   _temp_1459 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1459 [entry ] into _temp_1460
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1458 = *_temp_1460  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1457 = _temp_1458 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1457) then goto _Label_1461
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1461
!   _temp_1456 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1462
_Label_1461:
!   _temp_1456 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1462:
!   ReturnResult: _temp_1456  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_1463
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1464
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1465
	.word	12
	.word	4
	.word	_Label_1466
	.word	-16
	.word	4
	.word	_Label_1467
	.word	-20
	.word	4
	.word	_Label_1468
	.word	-24
	.word	4
	.word	_Label_1469
	.word	-28
	.word	4
	.word	_Label_1470
	.word	-9
	.word	1
	.word	0
_Label_1463:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1464:
	.ascii	"Pself\0"
	.align
_Label_1465:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1470:
	.byte	'C'
	.ascii	"_temp_1456\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_1808:
	push	r0
	sub	r1,1,r1
	bne	_Label_1808
	mov	1334,r13		! source line 1334
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1338,r13		! source line 1338
	mov	"\0\0RE",r10
!   _temp_1474 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1474 [entry ] into _temp_1475
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1473 = *_temp_1475  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1472 = _temp_1473 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1472) then goto _Label_1476
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1476
!   _temp_1471 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1477
_Label_1476:
!   _temp_1471 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1477:
!   ReturnResult: _temp_1471  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_1478
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1479
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1480
	.word	12
	.word	4
	.word	_Label_1481
	.word	-16
	.word	4
	.word	_Label_1482
	.word	-20
	.word	4
	.word	_Label_1483
	.word	-24
	.word	4
	.word	_Label_1484
	.word	-28
	.word	4
	.word	_Label_1485
	.word	-9
	.word	1
	.word	0
_Label_1478:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1479:
	.ascii	"Pself\0"
	.align
_Label_1480:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1485:
	.byte	'C'
	.ascii	"_temp_1471\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_1809:
	push	r0
	sub	r1,1,r1
	bne	_Label_1809
	mov	1343,r13		! source line 1343
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1347,r13		! source line 1347
	mov	"\0\0AS",r10
!   _temp_1486 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1486 [entry ] into _temp_1487
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1490 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1490 [entry ] into _temp_1491
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1489 = *_temp_1491  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1488 = _temp_1489 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1487 = _temp_1488  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1347,r13		! source line 1347
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_1492
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1493
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1494
	.word	12
	.word	4
	.word	_Label_1495
	.word	-12
	.word	4
	.word	_Label_1496
	.word	-16
	.word	4
	.word	_Label_1497
	.word	-20
	.word	4
	.word	_Label_1498
	.word	-24
	.word	4
	.word	_Label_1499
	.word	-28
	.word	4
	.word	_Label_1500
	.word	-32
	.word	4
	.word	0
_Label_1492:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1493:
	.ascii	"Pself\0"
	.align
_Label_1494:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1490\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1499:
	.byte	'?'
	.ascii	"_temp_1487\0"
	.align
_Label_1500:
	.byte	'?'
	.ascii	"_temp_1486\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_1810:
	push	r0
	sub	r1,1,r1
	bne	_Label_1810
	mov	1352,r13		! source line 1352
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1356,r13		! source line 1356
	mov	"\0\0AS",r10
!   _temp_1501 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1501 [entry ] into _temp_1502
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1505 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1505 [entry ] into _temp_1506
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1504 = *_temp_1506  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1503 = _temp_1504 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1502 = _temp_1503  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1356,r13		! source line 1356
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_1507
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1508
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1509
	.word	12
	.word	4
	.word	_Label_1510
	.word	-12
	.word	4
	.word	_Label_1511
	.word	-16
	.word	4
	.word	_Label_1512
	.word	-20
	.word	4
	.word	_Label_1513
	.word	-24
	.word	4
	.word	_Label_1514
	.word	-28
	.word	4
	.word	_Label_1515
	.word	-32
	.word	4
	.word	0
_Label_1507:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1508:
	.ascii	"Pself\0"
	.align
_Label_1509:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1512:
	.byte	'?'
	.ascii	"_temp_1504\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1503\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_1811:
	push	r0
	sub	r1,1,r1
	bne	_Label_1811
	mov	1361,r13		! source line 1361
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1365,r13		! source line 1365
	mov	"\0\0AS",r10
!   _temp_1516 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1516 [entry ] into _temp_1517
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1520 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1520 [entry ] into _temp_1521
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1519 = *_temp_1521  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1518 = _temp_1519 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1517 = _temp_1518  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1365,r13		! source line 1365
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_1522
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1523
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1524
	.word	12
	.word	4
	.word	_Label_1525
	.word	-12
	.word	4
	.word	_Label_1526
	.word	-16
	.word	4
	.word	_Label_1527
	.word	-20
	.word	4
	.word	_Label_1528
	.word	-24
	.word	4
	.word	_Label_1529
	.word	-28
	.word	4
	.word	_Label_1530
	.word	-32
	.word	4
	.word	0
_Label_1522:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1523:
	.ascii	"Pself\0"
	.align
_Label_1524:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1519\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1516\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_1812:
	push	r0
	sub	r1,1,r1
	bne	_Label_1812
	mov	1370,r13		! source line 1370
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1374,r13		! source line 1374
	mov	"\0\0AS",r10
!   _temp_1531 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1531 [entry ] into _temp_1532
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1535 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1535 [entry ] into _temp_1536
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1534 = *_temp_1536  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1533 = _temp_1534 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1532 = _temp_1533  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1374,r13		! source line 1374
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_1537
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1538
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1539
	.word	12
	.word	4
	.word	_Label_1540
	.word	-12
	.word	4
	.word	_Label_1541
	.word	-16
	.word	4
	.word	_Label_1542
	.word	-20
	.word	4
	.word	_Label_1543
	.word	-24
	.word	4
	.word	_Label_1544
	.word	-28
	.word	4
	.word	_Label_1545
	.word	-32
	.word	4
	.word	0
_Label_1537:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1538:
	.ascii	"Pself\0"
	.align
_Label_1539:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1534\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_1813:
	push	r0
	sub	r1,1,r1
	bne	_Label_1813
	mov	1379,r13		! source line 1379
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1383,r13		! source line 1383
	mov	"\0\0AS",r10
!   _temp_1546 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1546 [entry ] into _temp_1547
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1550 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1550 [entry ] into _temp_1551
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1549 = *_temp_1551  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1548 = _temp_1549 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1547 = _temp_1548  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1383,r13		! source line 1383
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_1552
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1553
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1554
	.word	12
	.word	4
	.word	_Label_1555
	.word	-12
	.word	4
	.word	_Label_1556
	.word	-16
	.word	4
	.word	_Label_1557
	.word	-20
	.word	4
	.word	_Label_1558
	.word	-24
	.word	4
	.word	_Label_1559
	.word	-28
	.word	4
	.word	_Label_1560
	.word	-32
	.word	4
	.word	0
_Label_1552:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1553:
	.ascii	"Pself\0"
	.align
_Label_1554:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_1814:
	push	r0
	sub	r1,1,r1
	bne	_Label_1814
	mov	1388,r13		! source line 1388
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1392,r13		! source line 1392
	mov	"\0\0AS",r10
!   _temp_1561 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1561 [entry ] into _temp_1562
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1565 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1565 [entry ] into _temp_1566
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1564 = *_temp_1566  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1563 = _temp_1564 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1562 = _temp_1563  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1392,r13		! source line 1392
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_1567
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1568
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1569
	.word	12
	.word	4
	.word	_Label_1570
	.word	-12
	.word	4
	.word	_Label_1571
	.word	-16
	.word	4
	.word	_Label_1572
	.word	-20
	.word	4
	.word	_Label_1573
	.word	-24
	.word	4
	.word	_Label_1574
	.word	-28
	.word	4
	.word	_Label_1575
	.word	-32
	.word	4
	.word	0
_Label_1567:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1568:
	.ascii	"Pself\0"
	.align
_Label_1569:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1566\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1565\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1564\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1563\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1562\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1561\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_1815:
	push	r0
	sub	r1,1,r1
	bne	_Label_1815
	mov	1397,r13		! source line 1397
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1401,r13		! source line 1401
	mov	"\0\0AS",r10
!   _temp_1576 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1576 [entry ] into _temp_1577
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1580 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1580 [entry ] into _temp_1581
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1579 = *_temp_1581  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1578 = _temp_1579 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1577 = _temp_1578  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1401,r13		! source line 1401
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_1582
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1583
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1584
	.word	12
	.word	4
	.word	_Label_1585
	.word	-12
	.word	4
	.word	_Label_1586
	.word	-16
	.word	4
	.word	_Label_1587
	.word	-20
	.word	4
	.word	_Label_1588
	.word	-24
	.word	4
	.word	_Label_1589
	.word	-28
	.word	4
	.word	_Label_1590
	.word	-32
	.word	4
	.word	0
_Label_1582:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1583:
	.ascii	"Pself\0"
	.align
_Label_1584:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1581\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1580\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1579\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1578\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1577\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1576\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_1816:
	push	r0
	sub	r1,1,r1
	bne	_Label_1816
	mov	1406,r13		! source line 1406
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1410,r13		! source line 1410
	mov	"\0\0AS",r10
!   _temp_1591 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1591 [entry ] into _temp_1592
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1595 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1595 [entry ] into _temp_1596
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1594 = *_temp_1596  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1593 = _temp_1594 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1592 = _temp_1593  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1410,r13		! source line 1410
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_1597
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1598
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1599
	.word	12
	.word	4
	.word	_Label_1600
	.word	-12
	.word	4
	.word	_Label_1601
	.word	-16
	.word	4
	.word	_Label_1602
	.word	-20
	.word	4
	.word	_Label_1603
	.word	-24
	.word	4
	.word	_Label_1604
	.word	-28
	.word	4
	.word	_Label_1605
	.word	-32
	.word	4
	.word	0
_Label_1597:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1598:
	.ascii	"Pself\0"
	.align
_Label_1599:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1595\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1594\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1593\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1592\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1591\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_1817:
	push	r0
	sub	r1,1,r1
	bne	_Label_1817
	mov	1415,r13		! source line 1415
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1607 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1607 [0 ] into _temp_1608
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1606 = _temp_1608		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1609 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1606  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1609  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1421,r13		! source line 1421
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1421,r13		! source line 1421
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_1610
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1611
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1612
	.word	-12
	.word	4
	.word	_Label_1613
	.word	-16
	.word	4
	.word	_Label_1614
	.word	-20
	.word	4
	.word	_Label_1615
	.word	-24
	.word	4
	.word	0
_Label_1610:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1611:
	.ascii	"Pself\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1609\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1608\0"
	.align
_Label_1614:
	.byte	'?'
	.ascii	"_temp_1607\0"
	.align
_Label_1615:
	.byte	'?'
	.ascii	"_temp_1606\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_1818:
	push	r0
	sub	r1,1,r1
	bne	_Label_1818
	mov	1426,r13		! source line 1426
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1441,r13		! source line 1441
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1616
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1616
	jmp	_Label_1617
_Label_1616:
! THEN...
	mov	1442,r13		! source line 1442
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1618
_Label_1617:
! ELSE...
	mov	1443,r13		! source line 1443
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1443,r13		! source line 1443
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1620		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1620
!	jmp	_Label_1619
_Label_1619:
! THEN...
	mov	1444,r13		! source line 1444
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1444,r13		! source line 1444
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1620:
! END IF...
_Label_1618:
! ASSIGNMENT STATEMENT...
	mov	1446,r13		! source line 1446
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1447,r13		! source line 1447
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1450,r13		! source line 1450
	mov	"\0\0WH",r10
_Label_1621:
!	jmp	_Label_1622
_Label_1622:
	mov	1450,r13		! source line 1450
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1451,r13		! source line 1451
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1625		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1625
!	jmp	_Label_1624
_Label_1624:
! THEN...
	mov	1452,r13		! source line 1452
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1626 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1626  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1452,r13		! source line 1452
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1453,r13		! source line 1453
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1625:
! IF STATEMENT...
	mov	1455,r13		! source line 1455
	mov	"\0\0IF",r10
	mov	1455,r13		! source line 1455
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1630) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1629  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1629 then goto _Label_1628 else goto _Label_1627
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1627
	jmp	_Label_1628
_Label_1627:
! THEN...
	mov	1456,r13		! source line 1456
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1631 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1631  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1456,r13		! source line 1456
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1457,r13		! source line 1457
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1628:
! ASSIGNMENT STATEMENT...
	mov	1459,r13		! source line 1459
	mov	"\0\0AS",r10
	mov	1459,r13		! source line 1459
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1633) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1632  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1632 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1461,r13		! source line 1461
	mov	"\0\0WH",r10
_Label_1634:
!   if offset >= 8192 then goto _Label_1636		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1636
!	jmp	_Label_1635
_Label_1635:
	mov	1461,r13		! source line 1461
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1464,r13		! source line 1464
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1637 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_1637  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1465,r13		! source line 1465
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1466,r13		! source line 1466
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1467,r13		! source line 1467
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1468,r13		! source line 1468
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1469,r13		! source line 1469
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1639		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1639
!	jmp	_Label_1638
_Label_1638:
! THEN...
	mov	1470,r13		! source line 1470
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1470,r13		! source line 1470
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1639:
! END WHILE...
	jmp	_Label_1634
_Label_1636:
! ASSIGNMENT STATEMENT...
	mov	1473,r13		! source line 1473
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1474,r13		! source line 1474
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_1621
_Label_1623:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_1640
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1641
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1642
	.word	12
	.word	4
	.word	_Label_1643
	.word	16
	.word	4
	.word	_Label_1644
	.word	20
	.word	4
	.word	_Label_1645
	.word	-9
	.word	1
	.word	_Label_1646
	.word	-16
	.word	4
	.word	_Label_1647
	.word	-20
	.word	4
	.word	_Label_1648
	.word	-24
	.word	4
	.word	_Label_1649
	.word	-28
	.word	4
	.word	_Label_1650
	.word	-10
	.word	1
	.word	_Label_1651
	.word	-32
	.word	4
	.word	_Label_1652
	.word	-36
	.word	4
	.word	_Label_1653
	.word	-40
	.word	4
	.word	_Label_1654
	.word	-44
	.word	4
	.word	_Label_1655
	.word	-48
	.word	4
	.word	0
_Label_1640:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_1641:
	.ascii	"Pself\0"
	.align
_Label_1642:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1643:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1644:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1645:
	.byte	'C'
	.ascii	"_temp_1637\0"
	.align
_Label_1646:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1650:
	.byte	'C'
	.ascii	"_temp_1629\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1652:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1653:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1654:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1655:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_1819:
	push	r0
	sub	r1,1,r1
	bne	_Label_1819
	mov	1480,r13		! source line 1480
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1491,r13		! source line 1491
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1656
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1656
	jmp	_Label_1657
_Label_1656:
! THEN...
	mov	1492,r13		! source line 1492
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1492,r13		! source line 1492
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1658
_Label_1657:
! ELSE...
	mov	1493,r13		! source line 1493
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1493,r13		! source line 1493
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1660		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1660
!	jmp	_Label_1659
_Label_1659:
! THEN...
	mov	1494,r13		! source line 1494
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1494,r13		! source line 1494
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1660:
! END IF...
_Label_1658:
! ASSIGNMENT STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1497,r13		! source line 1497
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1498,r13		! source line 1498
	mov	"\0\0WH",r10
_Label_1661:
!	jmp	_Label_1662
_Label_1662:
	mov	1498,r13		! source line 1498
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1499,r13		! source line 1499
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1667		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1667
	jmp	_Label_1664
_Label_1667:
	mov	1500,r13		! source line 1500
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1669) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1668  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1668 then goto _Label_1666 else goto _Label_1664
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1664
	jmp	_Label_1666
_Label_1666:
	mov	1501,r13		! source line 1501
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1671) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1670  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1670 then goto _Label_1665 else goto _Label_1664
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1664
	jmp	_Label_1665
_Label_1664:
! THEN...
	mov	1502,r13		! source line 1502
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1502,r13		! source line 1502
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1665:
! ASSIGNMENT STATEMENT...
	mov	1504,r13		! source line 1504
	mov	"\0\0AS",r10
	mov	1504,r13		! source line 1504
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1673) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1672  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_1672 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1505,r13		! source line 1505
	mov	"\0\0WH",r10
_Label_1674:
!   if offset >= 8192 then goto _Label_1676		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1676
!	jmp	_Label_1675
_Label_1675:
	mov	1505,r13		! source line 1505
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1506,r13		! source line 1506
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1677 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_1677  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1507,r13		! source line 1507
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1508,r13		! source line 1508
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1509,r13		! source line 1509
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1510,r13		! source line 1510
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1511,r13		! source line 1511
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1679		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1679
!	jmp	_Label_1678
_Label_1678:
! THEN...
	mov	1512,r13		! source line 1512
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1512,r13		! source line 1512
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1679:
! END WHILE...
	jmp	_Label_1674
_Label_1676:
! ASSIGNMENT STATEMENT...
	mov	1515,r13		! source line 1515
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1516,r13		! source line 1516
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_1661
_Label_1663:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_1680
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1681
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1682
	.word	12
	.word	4
	.word	_Label_1683
	.word	16
	.word	4
	.word	_Label_1684
	.word	20
	.word	4
	.word	_Label_1685
	.word	-9
	.word	1
	.word	_Label_1686
	.word	-16
	.word	4
	.word	_Label_1687
	.word	-20
	.word	4
	.word	_Label_1688
	.word	-24
	.word	4
	.word	_Label_1689
	.word	-10
	.word	1
	.word	_Label_1690
	.word	-28
	.word	4
	.word	_Label_1691
	.word	-11
	.word	1
	.word	_Label_1692
	.word	-32
	.word	4
	.word	_Label_1693
	.word	-36
	.word	4
	.word	_Label_1694
	.word	-40
	.word	4
	.word	_Label_1695
	.word	-44
	.word	4
	.word	0
_Label_1680:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_1681:
	.ascii	"Pself\0"
	.align
_Label_1682:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1683:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1684:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1685:
	.byte	'C'
	.ascii	"_temp_1677\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1672\0"
	.align
_Label_1688:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1689:
	.byte	'C'
	.ascii	"_temp_1670\0"
	.align
_Label_1690:
	.byte	'?'
	.ascii	"_temp_1669\0"
	.align
_Label_1691:
	.byte	'C'
	.ascii	"_temp_1668\0"
	.align
_Label_1692:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1693:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1694:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1695:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_1820:
	push	r0
	sub	r1,1,r1
	bne	_Label_1820
	mov	1522,r13		! source line 1522
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1546,r13		! source line 1546
	mov	"\0\0IF",r10
	mov	1546,r13		! source line 1546
	mov	"\0\0SE",r10
!   _temp_1699 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1700) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1699  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_1698  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_1698 >= 4 then goto _Label_1697		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1697
!	jmp	_Label_1696
_Label_1696:
! THEN...
	mov	1549,r13		! source line 1549
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1549,r13		! source line 1549
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1697:
! IF STATEMENT...
	mov	1553,r13		! source line 1553
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_1702		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1702
!	jmp	_Label_1701
_Label_1701:
! THEN...
	mov	1554,r13		! source line 1554
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1554,r13		! source line 1554
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1702:
! ASSIGNMENT STATEMENT...
	mov	1557,r13		! source line 1557
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1559,r13		! source line 1559
	mov	"\0\0RE",r10
	mov	1559,r13		! source line 1559
	mov	"\0\0SE",r10
!   _temp_1705 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_1704 = _temp_1705 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_1706 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_1707) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1704  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1706  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_1703  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_1703  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_1708
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1709
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1710
	.word	12
	.word	4
	.word	_Label_1711
	.word	16
	.word	4
	.word	_Label_1712
	.word	20
	.word	4
	.word	_Label_1713
	.word	-12
	.word	4
	.word	_Label_1714
	.word	-16
	.word	4
	.word	_Label_1715
	.word	-20
	.word	4
	.word	_Label_1716
	.word	-24
	.word	4
	.word	_Label_1717
	.word	-28
	.word	4
	.word	_Label_1718
	.word	-32
	.word	4
	.word	_Label_1719
	.word	-36
	.word	4
	.word	_Label_1720
	.word	-40
	.word	4
	.word	_Label_1721
	.word	-44
	.word	4
	.word	0
_Label_1708:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_1709:
	.ascii	"Pself\0"
	.align
_Label_1710:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_1711:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1712:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1719:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
_Label_1720:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1721:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
