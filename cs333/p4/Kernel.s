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
_StringConst_122:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_121:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_120:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_119:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_118:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_117:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_116:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_115:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_114:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_113:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_112:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_111:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_110:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_109:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_108:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_107:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_106:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_105:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_104:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_103:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_102:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_101:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_100:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_99:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_98:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_97:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_96:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_95:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_94:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_93:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_92:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_91:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_90:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_89:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_88:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_87:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_86:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_85:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_84:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_83:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_82:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_81:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_80:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_79:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_78:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_77:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_76:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_75:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_74:
	.word	11			! length
	.ascii	"Test Thread"
	.align
_StringConst_73:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_72:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_71:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_70:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_69:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_68:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_67:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_66:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_65:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_64:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_63:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_62:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_61:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_60:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_59:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_58:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_57:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_56:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_55:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_54:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_53:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_52:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_51:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_50:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_49:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_48:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_47:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_46:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_45:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_44:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_43:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_42:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
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
	be	_Label_127
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
_Label_127:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_128
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_128
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_128
_Label_128:
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
_Label_1720:
	push	r0
	sub	r1,1,r1
	bne	_Label_1720
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_129 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_129  sizeInBytes=4
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
_Label_1721:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1721
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_133 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_134 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_133  sizeInBytes=4
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
!   _temp_135 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_136 = _temp_135 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_136 = 3  (sizeInBytes=4)
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
_Label_1722:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1722
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_138 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_139 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_138  sizeInBytes=4
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
!   _temp_140 = _function_126_IdleFunction
	set	_function_126_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_141 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_140  sizeInBytes=4
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
	.word	_Label_142
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_143
	.word	-12
	.word	4
	.word	_Label_144
	.word	-16
	.word	4
	.word	_Label_145
	.word	-20
	.word	4
	.word	_Label_146
	.word	-24
	.word	4
	.word	_Label_147
	.word	-28
	.word	4
	.word	_Label_148
	.word	-32
	.word	4
	.word	_Label_149
	.word	-36
	.word	4
	.word	_Label_150
	.word	-40
	.word	4
	.word	_Label_151
	.word	-44
	.word	4
	.word	_Label_152
	.word	-48
	.word	4
	.word	_Label_153
	.word	-52
	.word	4
	.word	_Label_154
	.word	-56
	.word	4
	.word	_Label_155
	.word	-60
	.word	4
	.word	0
_Label_142:
	.ascii	"InitializeScheduler\0"
	.align
_Label_143:
	.byte	'?'
	.ascii	"_temp_141\0"
	.align
_Label_144:
	.byte	'?'
	.ascii	"_temp_140\0"
	.align
_Label_145:
	.byte	'?'
	.ascii	"_temp_139\0"
	.align
_Label_146:
	.byte	'?'
	.ascii	"_temp_138\0"
	.align
_Label_147:
	.byte	'?'
	.ascii	"_temp_137\0"
	.align
_Label_148:
	.byte	'?'
	.ascii	"_temp_136\0"
	.align
_Label_149:
	.byte	'?'
	.ascii	"_temp_135\0"
	.align
_Label_150:
	.byte	'?'
	.ascii	"_temp_134\0"
	.align
_Label_151:
	.byte	'?'
	.ascii	"_temp_133\0"
	.align
_Label_152:
	.byte	'?'
	.ascii	"_temp_132\0"
	.align
_Label_153:
	.byte	'?'
	.ascii	"_temp_131\0"
	.align
_Label_154:
	.byte	'?'
	.ascii	"_temp_130\0"
	.align
_Label_155:
	.byte	'?'
	.ascii	"_temp_129\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_126_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_126_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_1723:
	push	r0
	sub	r1,1,r1
	bne	_Label_1723
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_156:
!	jmp	_Label_157
_Label_157:
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
!   _temp_161 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_159 else goto _Label_160
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_160
	jmp	_Label_159
_Label_159:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_162
_Label_160:
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
_Label_162:
! END WHILE...
	jmp	_Label_156
_Label_158:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_126_IdleFunction:
	.word	_sourceFileName
	.word	_Label_163
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_164
	.word	8
	.word	4
	.word	_Label_165
	.word	-12
	.word	4
	.word	_Label_166
	.word	-16
	.word	4
	.word	0
_Label_163:
	.ascii	"IdleFunction\0"
	.align
_Label_164:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_165:
	.byte	'?'
	.ascii	"_temp_161\0"
	.align
_Label_166:
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
_Label_1724:
	push	r0
	sub	r1,1,r1
	bne	_Label_1724
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
!   _temp_169 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_169 ) then goto _Label_168		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_168
!	jmp	_Label_167
_Label_167:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_171 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_171 [0 ] into _temp_172
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
!   _temp_170 = _temp_172		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_170  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_168:
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
!   _temp_173 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_173 = 3  (sizeInBytes=4)
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
_Label_174:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_178 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_177  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_177 then goto _Label_176 else goto _Label_175
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_175
	jmp	_Label_176
_Label_175:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_179 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_180 = &_P_Kernel_threadManager
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
	jmp	_Label_174
_Label_176:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_183 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_183 ) then goto _Label_182		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_182
!	jmp	_Label_181
_Label_181:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_185 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_185 [0 ] into _temp_186
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
!   _temp_184 = _temp_186		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_184  sizeInBytes=4
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
!   _temp_188 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_187 = *_temp_188  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_187) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_189 = _temp_187 + 32
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
_Label_182:
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
	.word	_Label_190
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_191
	.word	8
	.word	4
	.word	_Label_192
	.word	-16
	.word	4
	.word	_Label_193
	.word	-20
	.word	4
	.word	_Label_194
	.word	-24
	.word	4
	.word	_Label_195
	.word	-28
	.word	4
	.word	_Label_196
	.word	-32
	.word	4
	.word	_Label_197
	.word	-36
	.word	4
	.word	_Label_198
	.word	-40
	.word	4
	.word	_Label_199
	.word	-44
	.word	4
	.word	_Label_200
	.word	-48
	.word	4
	.word	_Label_201
	.word	-52
	.word	4
	.word	_Label_202
	.word	-9
	.word	1
	.word	_Label_203
	.word	-56
	.word	4
	.word	_Label_204
	.word	-60
	.word	4
	.word	_Label_205
	.word	-64
	.word	4
	.word	_Label_206
	.word	-68
	.word	4
	.word	_Label_207
	.word	-72
	.word	4
	.word	_Label_208
	.word	-76
	.word	4
	.word	_Label_209
	.word	-80
	.word	4
	.word	0
_Label_190:
	.ascii	"Run\0"
	.align
_Label_191:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_192:
	.byte	'?'
	.ascii	"_temp_189\0"
	.align
_Label_193:
	.byte	'?'
	.ascii	"_temp_188\0"
	.align
_Label_194:
	.byte	'?'
	.ascii	"_temp_187\0"
	.align
_Label_195:
	.byte	'?'
	.ascii	"_temp_186\0"
	.align
_Label_196:
	.byte	'?'
	.ascii	"_temp_185\0"
	.align
_Label_197:
	.byte	'?'
	.ascii	"_temp_184\0"
	.align
_Label_198:
	.byte	'?'
	.ascii	"_temp_183\0"
	.align
_Label_199:
	.byte	'?'
	.ascii	"_temp_180\0"
	.align
_Label_200:
	.byte	'?'
	.ascii	"_temp_179\0"
	.align
_Label_201:
	.byte	'?'
	.ascii	"_temp_178\0"
	.align
_Label_202:
	.byte	'C'
	.ascii	"_temp_177\0"
	.align
_Label_203:
	.byte	'?'
	.ascii	"_temp_173\0"
	.align
_Label_204:
	.byte	'?'
	.ascii	"_temp_172\0"
	.align
_Label_205:
	.byte	'?'
	.ascii	"_temp_171\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_170\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_169\0"
	.align
_Label_208:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_209:
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
_Label_1725:
	push	r0
	sub	r1,1,r1
	bne	_Label_1725
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
!   _temp_210 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_210  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_211 = _function_125_ThreadPrintShort
	set	_function_125_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_212 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_211  sizeInBytes=4
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
	.word	_Label_213
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_214
	.word	-12
	.word	4
	.word	_Label_215
	.word	-16
	.word	4
	.word	_Label_216
	.word	-20
	.word	4
	.word	_Label_217
	.word	-24
	.word	4
	.word	0
_Label_213:
	.ascii	"PrintReadyList\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_217:
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
_Label_1726:
	push	r0
	sub	r1,1,r1
	bne	_Label_1726
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
!   _temp_218 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_218  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_220 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_219 = *_temp_220  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_219  sizeInBytes=4
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
!   _temp_221 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_221  sizeInBytes=4
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
	.word	_Label_222
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_223
	.word	-12
	.word	4
	.word	_Label_224
	.word	-16
	.word	4
	.word	_Label_225
	.word	-20
	.word	4
	.word	_Label_226
	.word	-24
	.word	4
	.word	_Label_227
	.word	-28
	.word	4
	.word	_Label_228
	.word	-32
	.word	4
	.word	0
_Label_222:
	.ascii	"ThreadStartMain\0"
	.align
_Label_223:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_227:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_228:
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
_Label_1727:
	push	r0
	sub	r1,1,r1
	bne	_Label_1727
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
!   _temp_229 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_230 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_230  sizeInBytes=4
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
	.word	_Label_231
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_232
	.word	-12
	.word	4
	.word	_Label_233
	.word	-16
	.word	4
	.word	_Label_234
	.word	-20
	.word	4
	.word	0
_Label_231:
	.ascii	"ThreadFinish\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_234:
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
_Label_1728:
	push	r0
	sub	r1,1,r1
	bne	_Label_1728
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
!   _temp_235 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_235  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_237		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_237
!	jmp	_Label_236
_Label_236:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_238 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_238  sizeInBytes=4
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
!   _temp_240 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_239 = *_temp_240  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_239  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_237:
! CALL STATEMENT...
!   _temp_241 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_241  sizeInBytes=4
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
!   _temp_242 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_242  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_243 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_243  sizeInBytes=4
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
	.word	_Label_244
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_245
	.word	8
	.word	4
	.word	_Label_246
	.word	-12
	.word	4
	.word	_Label_247
	.word	-16
	.word	4
	.word	_Label_248
	.word	-20
	.word	4
	.word	_Label_249
	.word	-24
	.word	4
	.word	_Label_250
	.word	-28
	.word	4
	.word	_Label_251
	.word	-32
	.word	4
	.word	_Label_252
	.word	-36
	.word	4
	.word	_Label_253
	.word	-40
	.word	4
	.word	0
_Label_244:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_245:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
_Label_253:
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
_Label_1729:
	push	r0
	sub	r1,1,r1
	bne	_Label_1729
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
!   if newStatus != 1 then goto _Label_255		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_255
!	jmp	_Label_254
_Label_254:
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
	jmp	_Label_256
_Label_255:
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
_Label_256:
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
	.word	_Label_257
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_258
	.word	8
	.word	4
	.word	_Label_259
	.word	-12
	.word	4
	.word	0
_Label_257:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_258:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_259:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_125_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_125_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_1730:
	push	r0
	sub	r1,1,r1
	bne	_Label_1730
	mov	747,r13		! source line 747
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	754,r13		! source line 754
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	755,r13		! source line 755
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_263		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_263
!   _temp_262 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_264
_Label_263:
!   _temp_262 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_264:
!   if _temp_262 then goto _Label_261 else goto _Label_260
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_260
	jmp	_Label_261
_Label_260:
! THEN...
	mov	756,r13		! source line 756
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_265 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_265  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	756,r13		! source line 756
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	757,r13		! source line 757
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_261:
! CALL STATEMENT...
!   _temp_266 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_266  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	759,r13		! source line 759
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_268 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_267 = *_temp_268  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_267  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	760,r13		! source line 760
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_269 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_269  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	761,r13		! source line 761
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	762,r13		! source line 762
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_278 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_277 = *_temp_278  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_272
	cmp	r1,2
	be	_Label_273
	cmp	r1,3
	be	_Label_274
	cmp	r1,4
	be	_Label_275
	cmp	r1,5
	be	_Label_276
	jmp	_Label_270
! CASE 1...
_Label_272:
! CALL STATEMENT...
!   _temp_279 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_279  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	764,r13		! source line 764
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	765,r13		! source line 765
	mov	"\0\0BR",r10
	jmp	_Label_271
! CASE 2...
_Label_273:
! CALL STATEMENT...
!   _temp_280 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_280  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	767,r13		! source line 767
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	768,r13		! source line 768
	mov	"\0\0BR",r10
	jmp	_Label_271
! CASE 3...
_Label_274:
! CALL STATEMENT...
!   _temp_281 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_281  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	770,r13		! source line 770
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	771,r13		! source line 771
	mov	"\0\0BR",r10
	jmp	_Label_271
! CASE 4...
_Label_275:
! CALL STATEMENT...
!   _temp_282 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_282  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	773,r13		! source line 773
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	774,r13		! source line 774
	mov	"\0\0BR",r10
	jmp	_Label_271
! CASE 5...
_Label_276:
! CALL STATEMENT...
!   _temp_283 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_283  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	776,r13		! source line 776
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	777,r13		! source line 777
	mov	"\0\0BR",r10
	jmp	_Label_271
! DEFAULT CASE...
_Label_270:
! CALL STATEMENT...
!   _temp_284 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_284  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	779,r13		! source line 779
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_271:
! CALL STATEMENT...
!   _temp_285 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_285  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	781,r13		! source line 781
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_286 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_286  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	782,r13		! source line 782
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_287 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_287  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	783,r13		! source line 783
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	784,r13		! source line 784
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	786,r13		! source line 786
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	786,r13		! source line 786
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	786,r13		! source line 786
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_125_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_288
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_289
	.word	8
	.word	4
	.word	_Label_290
	.word	-16
	.word	4
	.word	_Label_291
	.word	-20
	.word	4
	.word	_Label_292
	.word	-24
	.word	4
	.word	_Label_293
	.word	-28
	.word	4
	.word	_Label_294
	.word	-32
	.word	4
	.word	_Label_295
	.word	-36
	.word	4
	.word	_Label_296
	.word	-40
	.word	4
	.word	_Label_297
	.word	-44
	.word	4
	.word	_Label_298
	.word	-48
	.word	4
	.word	_Label_299
	.word	-52
	.word	4
	.word	_Label_300
	.word	-56
	.word	4
	.word	_Label_301
	.word	-60
	.word	4
	.word	_Label_302
	.word	-64
	.word	4
	.word	_Label_303
	.word	-68
	.word	4
	.word	_Label_304
	.word	-72
	.word	4
	.word	_Label_305
	.word	-76
	.word	4
	.word	_Label_306
	.word	-9
	.word	1
	.word	_Label_307
	.word	-80
	.word	4
	.word	0
_Label_288:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_289:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_306:
	.byte	'C'
	.ascii	"_temp_262\0"
	.align
_Label_307:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_124_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_124_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_1731:
	push	r0
	sub	r1,1,r1
	bne	_Label_1731
	mov	1080,r13		! source line 1080
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_308 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_308  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1084,r13		! source line 1084
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1085,r13		! source line 1085
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1085,r13		! source line 1085
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_124_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_309
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_310
	.word	8
	.word	4
	.word	_Label_311
	.word	-12
	.word	4
	.word	0
_Label_309:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_310:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_308\0"
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
_Label_1732:
	push	r0
	sub	r1,1,r1
	bne	_Label_1732
	mov	1090,r13		! source line 1090
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_312 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_312  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1096,r13		! source line 1096
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1096,r13		! source line 1096
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
	.word	_Label_313
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_314
	.word	8
	.word	4
	.word	_Label_315
	.word	-12
	.word	4
	.word	0
_Label_313:
	.ascii	"ProcessFinish\0"
	.align
_Label_314:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_312\0"
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
_Label_1733:
	push	r0
	sub	r1,1,r1
	bne	_Label_1733
	mov	1593,r13		! source line 1593
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1603,r13		! source line 1603
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1605,r13		! source line 1605
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
	mov	1606,r13		! source line 1606
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1606,r13		! source line 1606
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
	.word	_Label_316
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_316:
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
_Label_1734:
	push	r0
	sub	r1,1,r1
	bne	_Label_1734
	mov	1612,r13		! source line 1612
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_317 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_317  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1622,r13		! source line 1622
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1622,r13		! source line 1622
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
	.word	_Label_318
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_319
	.word	-12
	.word	4
	.word	0
_Label_318:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_317\0"
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
	mov	1634,r13		! source line 1634
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1643,r13		! source line 1643
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1643,r13		! source line 1643
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
	.word	_Label_320
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_320:
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
_Label_1735:
	push	r0
	sub	r1,1,r1
	bne	_Label_1735
	mov	1648,r13		! source line 1648
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1654,r13		! source line 1654
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_321 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_321  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1655,r13		! source line 1655
	mov	"\0\0CA",r10
	call	_function_123_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1655,r13		! source line 1655
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
	.word	_Label_322
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_323
	.word	-12
	.word	4
	.word	0
_Label_322:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_321\0"
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
_Label_1736:
	push	r0
	sub	r1,1,r1
	bne	_Label_1736
	mov	1660,r13		! source line 1660
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1666,r13		! source line 1666
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_324 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_324  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1667,r13		! source line 1667
	mov	"\0\0CA",r10
	call	_function_123_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1667,r13		! source line 1667
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
	.word	_Label_325
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_326
	.word	-12
	.word	4
	.word	0
_Label_325:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_324\0"
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
_Label_1737:
	push	r0
	sub	r1,1,r1
	bne	_Label_1737
	mov	1672,r13		! source line 1672
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1678,r13		! source line 1678
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_327 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_327  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1679,r13		! source line 1679
	mov	"\0\0CA",r10
	call	_function_123_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1679,r13		! source line 1679
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
	.word	_Label_328
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_329
	.word	-12
	.word	4
	.word	0
_Label_328:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_327\0"
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
_Label_1738:
	push	r0
	sub	r1,1,r1
	bne	_Label_1738
	mov	1684,r13		! source line 1684
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1690,r13		! source line 1690
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_330 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_330  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1691,r13		! source line 1691
	mov	"\0\0CA",r10
	call	_function_123_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1691,r13		! source line 1691
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
	.word	_Label_331
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_332
	.word	-12
	.word	4
	.word	0
_Label_331:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_330\0"
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
_Label_1739:
	push	r0
	sub	r1,1,r1
	bne	_Label_1739
	mov	1696,r13		! source line 1696
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1702,r13		! source line 1702
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_333 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_333  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1703,r13		! source line 1703
	mov	"\0\0CA",r10
	call	_function_123_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1703,r13		! source line 1703
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
	.word	_Label_334
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_335
	.word	-12
	.word	4
	.word	0
_Label_334:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_333\0"
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
_Label_1740:
	push	r0
	sub	r1,1,r1
	bne	_Label_1740
	mov	1708,r13		! source line 1708
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1714,r13		! source line 1714
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_336 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_336  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1715,r13		! source line 1715
	mov	"\0\0CA",r10
	call	_function_123_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1715,r13		! source line 1715
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
	.word	_Label_337
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_338
	.word	-12
	.word	4
	.word	0
_Label_337:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_336\0"
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
_Label_1741:
	push	r0
	sub	r1,1,r1
	bne	_Label_1741
	mov	1720,r13		! source line 1720
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1726,r13		! source line 1726
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_339 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_339  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1727,r13		! source line 1727
	mov	"\0\0CA",r10
	call	_function_123_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1727,r13		! source line 1727
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
	.word	_Label_340
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_341
	.word	-12
	.word	4
	.word	0
_Label_340:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_123_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_123_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_1742:
	push	r0
	sub	r1,1,r1
	bne	_Label_1742
	mov	1732,r13		! source line 1732
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_342 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_342  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1737,r13		! source line 1737
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1738,r13		! source line 1738
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_343 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_343  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1739,r13		! source line 1739
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1742,r13		! source line 1742
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_347 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_346 = *_temp_347  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_346 == 0 then goto _Label_345		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_345
!	jmp	_Label_344
_Label_344:
! THEN...
	mov	1743,r13		! source line 1743
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1743,r13		! source line 1743
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_349 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_348 = *_temp_349  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_348) then goto _runtimeErrorNullPointer
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
	jmp	_Label_350
_Label_345:
! ELSE...
	mov	1745,r13		! source line 1745
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_351 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_351  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1745,r13		! source line 1745
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_350:
! SEND STATEMENT...
	mov	1747,r13		! source line 1747
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
	mov	1753,r13		! source line 1753
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1753,r13		! source line 1753
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_123_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_352
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_353
	.word	8
	.word	4
	.word	_Label_354
	.word	-12
	.word	4
	.word	_Label_355
	.word	-16
	.word	4
	.word	_Label_356
	.word	-20
	.word	4
	.word	_Label_357
	.word	-24
	.word	4
	.word	_Label_358
	.word	-28
	.word	4
	.word	_Label_359
	.word	-32
	.word	4
	.word	_Label_360
	.word	-36
	.word	4
	.word	0
_Label_352:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_353:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_342\0"
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
_Label_1743:
	push	r0
	sub	r1,1,r1
	bne	_Label_1743
	mov	1758,r13		! source line 1758
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1765,r13		! source line 1765
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1779,r13		! source line 1779
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_1744
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_361
_Label_1744:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_361
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_361
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_375,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_375:
	jmp	_Label_367	! 1:	
	jmp	_Label_374	! 2:	
	jmp	_Label_364	! 3:	
	jmp	_Label_363	! 4:	
	jmp	_Label_366	! 5:	
	jmp	_Label_365	! 6:	
	jmp	_Label_368	! 7:	
	jmp	_Label_369	! 8:	
	jmp	_Label_370	! 9:	
	jmp	_Label_371	! 10:	
	jmp	_Label_372	! 11:	
	jmp	_Label_373	! 12:	
! CASE 4...
_Label_363:
! RETURN STATEMENT...
	mov	1781,r13		! source line 1781
	mov	"\0\0RE",r10
!   Call the function
	mov	1781,r13		! source line 1781
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_376  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_376  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_364:
! CALL STATEMENT...
!   Call the function
	mov	1783,r13		! source line 1783
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1784,r13		! source line 1784
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_365:
! RETURN STATEMENT...
	mov	1786,r13		! source line 1786
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1786,r13		! source line 1786
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_377  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_377  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_366:
! RETURN STATEMENT...
	mov	1788,r13		! source line 1788
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1788,r13		! source line 1788
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_378  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_378  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_367:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1790,r13		! source line 1790
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1791,r13		! source line 1791
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_368:
! RETURN STATEMENT...
	mov	1793,r13		! source line 1793
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1793,r13		! source line 1793
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_379  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_379  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_369:
! RETURN STATEMENT...
	mov	1795,r13		! source line 1795
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1795,r13		! source line 1795
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_380  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_380  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_370:
! RETURN STATEMENT...
	mov	1797,r13		! source line 1797
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
	mov	1797,r13		! source line 1797
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_381  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_381  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_371:
! RETURN STATEMENT...
	mov	1799,r13		! source line 1799
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
	mov	1799,r13		! source line 1799
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_382  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_382  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_372:
! RETURN STATEMENT...
	mov	1801,r13		! source line 1801
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1801,r13		! source line 1801
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_383  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_383  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_373:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1803,r13		! source line 1803
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1804,r13		! source line 1804
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_374:
! CALL STATEMENT...
!   Call the function
	mov	1806,r13		! source line 1806
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1807,r13		! source line 1807
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_361:
! CALL STATEMENT...
!   _temp_384 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_384  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1809,r13		! source line 1809
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1810,r13		! source line 1810
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1811,r13		! source line 1811
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_385 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_385  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1812,r13		! source line 1812
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_362:
! RETURN STATEMENT...
	mov	1814,r13		! source line 1814
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
	.word	_Label_386
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_387
	.word	8
	.word	4
	.word	_Label_388
	.word	12
	.word	4
	.word	_Label_389
	.word	16
	.word	4
	.word	_Label_390
	.word	20
	.word	4
	.word	_Label_391
	.word	24
	.word	4
	.word	_Label_392
	.word	-12
	.word	4
	.word	_Label_393
	.word	-16
	.word	4
	.word	_Label_394
	.word	-20
	.word	4
	.word	_Label_395
	.word	-24
	.word	4
	.word	_Label_396
	.word	-28
	.word	4
	.word	_Label_397
	.word	-32
	.word	4
	.word	_Label_398
	.word	-36
	.word	4
	.word	_Label_399
	.word	-40
	.word	4
	.word	_Label_400
	.word	-44
	.word	4
	.word	_Label_401
	.word	-48
	.word	4
	.word	0
_Label_386:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_387:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_388:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_389:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_390:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_391:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_392:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_376\0"
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
	mov	1819,r13		! source line 1819
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1819,r13		! source line 1819
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
	.word	_Label_402
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_403
	.word	8
	.word	4
	.word	0
_Label_402:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_403:
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
	mov	1825,r13		! source line 1825
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1825,r13		! source line 1825
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
	.word	_Label_404
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_404:
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
	mov	1831,r13		! source line 1831
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1831,r13		! source line 1831
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
	.word	_Label_405
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_405:
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
	mov	1837,r13		! source line 1837
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1839,r13		! source line 1839
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
	.word	_Label_406
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_406:
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
	mov	1844,r13		! source line 1844
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1846,r13		! source line 1846
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
	.word	_Label_407
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_408
	.word	8
	.word	4
	.word	0
_Label_407:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_408:
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
	mov	1851,r13		! source line 1851
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1853,r13		! source line 1853
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
	.word	_Label_409
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_410
	.word	8
	.word	4
	.word	0
_Label_409:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_410:
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
	mov	1858,r13		! source line 1858
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1860,r13		! source line 1860
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
	.word	_Label_411
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_412
	.word	8
	.word	4
	.word	0
_Label_411:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_412:
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
	mov	1865,r13		! source line 1865
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1867,r13		! source line 1867
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
	.word	_Label_413
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_414
	.word	8
	.word	4
	.word	0
_Label_413:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_414:
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
	mov	1872,r13		! source line 1872
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1874,r13		! source line 1874
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
	.word	_Label_415
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_416
	.word	8
	.word	4
	.word	_Label_417
	.word	12
	.word	4
	.word	_Label_418
	.word	16
	.word	4
	.word	0
_Label_415:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_416:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_417:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_418:
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
	mov	1879,r13		! source line 1879
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1881,r13		! source line 1881
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
	.word	_Label_419
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_420
	.word	8
	.word	4
	.word	_Label_421
	.word	12
	.word	4
	.word	_Label_422
	.word	16
	.word	4
	.word	0
_Label_419:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_420:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_421:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_422:
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
	mov	1886,r13		! source line 1886
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1888,r13		! source line 1888
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
	.word	_Label_423
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_424
	.word	8
	.word	4
	.word	_Label_425
	.word	12
	.word	4
	.word	0
_Label_423:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_424:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_425:
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
	mov	1893,r13		! source line 1893
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1893,r13		! source line 1893
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
	.word	_Label_426
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_427
	.word	8
	.word	4
	.word	0
_Label_426:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_427:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_428
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_428:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_429
	.word	_sourceFileName
	.word	125		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_429:
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
_Label_1745:
	push	r0
	sub	r1,1,r1
	bne	_Label_1745
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_431		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_431
!	jmp	_Label_430
_Label_430:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_432 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_432  sizeInBytes=4
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
_Label_431:
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
	.word	_Label_434
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_435
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_436
	.word	12
	.word	4
	.word	_Label_437
	.word	-12
	.word	4
	.word	_Label_438
	.word	-16
	.word	4
	.word	0
_Label_434:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_435:
	.ascii	"Pself\0"
	.align
_Label_436:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_432\0"
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
_Label_1746:
	push	r0
	sub	r1,1,r1
	bne	_Label_1746
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
!   if count != 2147483647 then goto _Label_440		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_440
!	jmp	_Label_439
_Label_439:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_441 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_441  sizeInBytes=4
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
_Label_440:
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
!   if count > 0 then goto _Label_443		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_443
!	jmp	_Label_442
_Label_442:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_444 = &waitingThreads
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
!   _temp_445 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_445 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_446 = &_P_Kernel_readyList
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
_Label_443:
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
	.word	_Label_447
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_448
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_449
	.word	-12
	.word	4
	.word	_Label_450
	.word	-16
	.word	4
	.word	_Label_451
	.word	-20
	.word	4
	.word	_Label_452
	.word	-24
	.word	4
	.word	_Label_453
	.word	-28
	.word	4
	.word	_Label_454
	.word	-32
	.word	4
	.word	0
_Label_447:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_448:
	.ascii	"Pself\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_453:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_454:
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
_Label_1747:
	push	r0
	sub	r1,1,r1
	bne	_Label_1747
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
!   if count != -2147483648 then goto _Label_456		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_456
!	jmp	_Label_455
_Label_455:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_457 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_457  sizeInBytes=4
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
_Label_456:
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
!   if count >= 0 then goto _Label_459		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_459
!	jmp	_Label_458
_Label_458:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_460 = &waitingThreads
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
_Label_459:
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
	.word	_Label_461
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_462
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_463
	.word	-12
	.word	4
	.word	_Label_464
	.word	-16
	.word	4
	.word	_Label_465
	.word	-20
	.word	4
	.word	0
_Label_461:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_462:
	.ascii	"Pself\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_465:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_466
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_466:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_467
	.word	_sourceFileName
	.word	138		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_467:
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
_Label_1748:
	push	r0
	sub	r1,1,r1
	bne	_Label_1748
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
	.word	_Label_469
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_470
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_471
	.word	-12
	.word	4
	.word	0
_Label_469:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_470:
	.ascii	"Pself\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_468\0"
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
_Label_1749:
	push	r0
	sub	r1,1,r1
	bne	_Label_1749
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_473		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_473
!	jmp	_Label_472
_Label_472:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_474 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_474  sizeInBytes=4
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
_Label_473:
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
!   if heldBy == 0 then goto _Label_478		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_478
!   _temp_477 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_479
_Label_478:
!   _temp_477 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_479:
!   if _temp_477 then goto _Label_476 else goto _Label_475
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_475
	jmp	_Label_476
_Label_475:
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
	jmp	_Label_480
_Label_476:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_481 = &waitingThreads
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
_Label_480:
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
	.word	_Label_482
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_483
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_484
	.word	-16
	.word	4
	.word	_Label_485
	.word	-9
	.word	1
	.word	_Label_486
	.word	-20
	.word	4
	.word	_Label_487
	.word	-24
	.word	4
	.word	0
_Label_482:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_483:
	.ascii	"Pself\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_481\0"
	.align
_Label_485:
	.byte	'C'
	.ascii	"_temp_477\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_474\0"
	.align
_Label_487:
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
_Label_1750:
	push	r0
	sub	r1,1,r1
	bne	_Label_1750
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_489		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_489
!	jmp	_Label_488
_Label_488:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_490 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_490  sizeInBytes=4
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
_Label_489:
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
!   _temp_491 = &waitingThreads
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
!   if t == 0 then goto _Label_493		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_493
!	jmp	_Label_492
_Label_492:
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
!   _temp_494 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_494 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_495 = &_P_Kernel_readyList
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
	jmp	_Label_496
_Label_493:
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
_Label_496:
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
	.word	_Label_497
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_498
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_499
	.word	-12
	.word	4
	.word	_Label_500
	.word	-16
	.word	4
	.word	_Label_501
	.word	-20
	.word	4
	.word	_Label_502
	.word	-24
	.word	4
	.word	_Label_503
	.word	-28
	.word	4
	.word	_Label_504
	.word	-32
	.word	4
	.word	0
_Label_497:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_498:
	.ascii	"Pself\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_494\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_491\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_490\0"
	.align
_Label_503:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_504:
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
_Label_1751:
	push	r0
	sub	r1,1,r1
	bne	_Label_1751
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_507		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_507
!	jmp	_Label_506
_Label_506:
!   _temp_505 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_508
_Label_507:
!   _temp_505 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_508:
!   ReturnResult: _temp_505  (sizeInBytes=1)
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
	.word	_Label_509
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_510
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_511
	.word	-9
	.word	1
	.word	0
_Label_509:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_510:
	.ascii	"Pself\0"
	.align
_Label_511:
	.byte	'C'
	.ascii	"_temp_505\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_512
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_512:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_513
	.word	_sourceFileName
	.word	152		! line number
	.word	96		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_513:
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
_Label_1752:
	push	r0
	sub	r1,1,r1
	bne	_Label_1752
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
!   _temp_515 = &sema
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
!   _temp_517 = &semaNext
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
!   _temp_521 = &mLock
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
	.word	_Label_522
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_523
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_524
	.word	-12
	.word	4
	.word	_Label_525
	.word	-16
	.word	4
	.word	_Label_526
	.word	-20
	.word	4
	.word	_Label_527
	.word	-24
	.word	4
	.word	_Label_528
	.word	-28
	.word	4
	.word	_Label_529
	.word	-32
	.word	4
	.word	_Label_530
	.word	-36
	.word	4
	.word	_Label_531
	.word	-40
	.word	4
	.word	0
_Label_522:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_523:
	.ascii	"Pself\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_521\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_519\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_518\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_517\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_516\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_515\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_514\0"
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
	mov	5,r1
_Label_1753:
	push	r0
	sub	r1,1,r1
	bne	_Label_1753
	mov	439,r13		! source line 439
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	444,r13		! source line 444
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	444,r13		! source line 444
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	447,r13		! source line 447
	mov	"\0\0SE",r10
!   _temp_532 = &waitingThreads
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
	mov	449,r13		! source line 449
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
	mov	451,r13		! source line 451
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
! ASSIGNMENT STATEMENT...
	mov	454,r13		! source line 454
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	454,r13		! source line 454
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0IF",r10
	mov	457,r13		! source line 457
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
	storeb	r1,[r14+-10]
!   _temp_536 = _temp_535 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_536 then goto _Label_534 else goto _Label_533
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_533
	jmp	_Label_534
_Label_533:
! THEN...
	mov	458,r13		! source line 458
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	458,r13		! source line 458
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
! END IF...
_Label_534:
! RETURN STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_537
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_538
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_539
	.word	12
	.word	4
	.word	_Label_540
	.word	-9
	.word	1
	.word	_Label_541
	.word	-10
	.word	1
	.word	_Label_542
	.word	-16
	.word	4
	.word	_Label_543
	.word	-20
	.word	4
	.word	0
_Label_537:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_538:
	.ascii	"Pself\0"
	.align
_Label_539:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_540:
	.byte	'C'
	.ascii	"_temp_536\0"
	.align
_Label_541:
	.byte	'C'
	.ascii	"_temp_535\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_543:
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
	mov	10,r1
_Label_1754:
	push	r0
	sub	r1,1,r1
	bne	_Label_1754
	mov	489,r13		! source line 489
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	494,r13		! source line 494
	mov	"\0\0IF",r10
	mov	494,r13		! source line 494
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
!   Retrieve Result: targetName=_temp_546  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_546 then goto _Label_545 else goto _Label_544
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_544
	jmp	_Label_545
_Label_544:
! THEN...
	mov	495,r13		! source line 495
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_547 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_547  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	495,r13		! source line 495
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_545:
! ASSIGNMENT STATEMENT...
	mov	498,r13		! source line 498
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	498,r13		! source line 498
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	499,r13		! source line 499
	mov	"\0\0AS",r10
	mov	499,r13		! source line 499
	mov	"\0\0SE",r10
!   _temp_548 = &waitingThreads
	load	[r14+8],r1
	add	r1,84,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! IF STATEMENT...
	mov	501,r13		! source line 501
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_550		(int)
	load	[r14+-40],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_550
!	jmp	_Label_549
_Label_549:
! THEN...
	mov	503,r13		! source line 503
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	503,r13		! source line 503
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_551 = t + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_551 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	504,r13		! source line 504
	mov	"\0\0AS",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_552 = mutex + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_552 = t  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	505,r13		! source line 505
	mov	"\0\0SE",r10
!   _temp_553 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToFront
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	506,r13		! source line 506
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	506,r13		! source line 506
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=t  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	511,r13		! source line 511
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
	jmp	_Label_554
_Label_550:
! ELSE...
	mov	513,r13		! source line 513
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	513,r13		! source line 513
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
! END IF...
_Label_554:
! ASSIGNMENT STATEMENT...
	mov	516,r13		! source line 516
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	516,r13		! source line 516
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! SEND STATEMENT...
	mov	518,r13		! source line 518
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
! SEND STATEMENT...
	mov	519,r13		! source line 519
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
! RETURN STATEMENT...
	mov	519,r13		! source line 519
	mov	"\0\0RE",r10
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_555
	.word	8		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_556
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_557
	.word	12
	.word	4
	.word	_Label_558
	.word	-16
	.word	4
	.word	_Label_559
	.word	-20
	.word	4
	.word	_Label_560
	.word	-24
	.word	4
	.word	_Label_561
	.word	-28
	.word	4
	.word	_Label_562
	.word	-32
	.word	4
	.word	_Label_563
	.word	-9
	.word	1
	.word	_Label_564
	.word	-36
	.word	4
	.word	_Label_565
	.word	-40
	.word	4
	.word	0
_Label_555:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_556:
	.ascii	"Pself\0"
	.align
_Label_557:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_561:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_562:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
_Label_563:
	.byte	'C'
	.ascii	"_temp_546\0"
	.align
_Label_564:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_565:
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
_Label_1755:
	push	r0
	sub	r1,1,r1
	bne	_Label_1755
	mov	525,r13		! source line 525
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	529,r13		! source line 529
	mov	"\0\0IF",r10
	mov	529,r13		! source line 529
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
!   Retrieve Result: targetName=_temp_568  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_568 then goto _Label_567 else goto _Label_566
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_566
	jmp	_Label_567
_Label_566:
! THEN...
	mov	530,r13		! source line 530
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_569 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_569  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	530,r13		! source line 530
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_567:
! ASSIGNMENT STATEMENT...
	mov	532,r13		! source line 532
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	532,r13		! source line 532
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	533,r13		! source line 533
	mov	"\0\0WH",r10
_Label_570:
!	jmp	_Label_571
_Label_571:
	mov	533,r13		! source line 533
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	534,r13		! source line 534
	mov	"\0\0AS",r10
	mov	534,r13		! source line 534
	mov	"\0\0SE",r10
!   _temp_573 = &waitingThreads
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
	mov	535,r13		! source line 535
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_574
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_574
	jmp	_Label_575
_Label_574:
! THEN...
	mov	536,r13		! source line 536
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	536,r13		! source line 536
	mov	"\0\0BR",r10
	jmp	_Label_572
! END IF...
_Label_575:
! ASSIGNMENT STATEMENT...
	mov	538,r13		! source line 538
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_576 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_576 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	540,r13		! source line 540
	mov	"\0\0SE",r10
!   _temp_577 = &_P_Kernel_readyList
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
	jmp	_Label_570
_Label_572:
! ASSIGNMENT STATEMENT...
	mov	543,r13		! source line 543
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	543,r13		! source line 543
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	543,r13		! source line 543
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
	.word	_Label_578
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_579
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_580
	.word	12
	.word	4
	.word	_Label_581
	.word	-16
	.word	4
	.word	_Label_582
	.word	-20
	.word	4
	.word	_Label_583
	.word	-24
	.word	4
	.word	_Label_584
	.word	-28
	.word	4
	.word	_Label_585
	.word	-9
	.word	1
	.word	_Label_586
	.word	-32
	.word	4
	.word	_Label_587
	.word	-36
	.word	4
	.word	0
_Label_578:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_579:
	.ascii	"Pself\0"
	.align
_Label_580:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_585:
	.byte	'C'
	.ascii	"_temp_568\0"
	.align
_Label_586:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_587:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_588
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
_Label_588:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_589
	.word	_sourceFileName
	.word	171		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_589:
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
_Label_1756:
	push	r0
	sub	r1,1,r1
	bne	_Label_1756
	mov	554,r13		! source line 554
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	559,r13		! source line 559
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	560,r13		! source line 560
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	562,r13		! source line 562
	mov	"\0\0AS",r10
!   _temp_590 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_590) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_590 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	563,r13		! source line 563
	mov	"\0\0AS",r10
!   _temp_591 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_591 [0 ] into _temp_592
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
!   Data Move: *_temp_592 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	564,r13		! source line 564
	mov	"\0\0AS",r10
!   _temp_593 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_593 [999 ] into _temp_594
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
!   Data Move: *_temp_594 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	565,r13		! source line 565
	mov	"\0\0AS",r10
!   _temp_595 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_595 [999 ] into _temp_596
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
!   stackTop = _temp_596		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	566,r13		! source line 566
	mov	"\0\0AS",r10
!   _temp_597 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_599 = &_temp_598
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_599 = _temp_599 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_601:
!   Data Move: *_temp_599 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_599 = _temp_599 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_600 = _temp_600 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_600) then goto _Label_601
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_601
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_602 = &_temp_598
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_1757
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1757:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_597 = *_temp_602  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_1758:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1758
! ASSIGNMENT STATEMENT...
	mov	567,r13		! source line 567
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	568,r13		! source line 568
	mov	"\0\0AS",r10
!   _temp_603 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_605 = &_temp_604
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_605 = _temp_605 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_607:
!   Data Move: *_temp_605 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_605 = _temp_605 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_606 = _temp_606 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_606) then goto _Label_607
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_607
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_608 = &_temp_604
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_1759
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1759:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_603 = *_temp_608  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_1760:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1760
! RETURN STATEMENT...
	mov	568,r13		! source line 568
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
	.word	_Label_609
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_610
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_611
	.word	12
	.word	4
	.word	_Label_612
	.word	-12
	.word	4
	.word	_Label_613
	.word	-16
	.word	4
	.word	_Label_614
	.word	-20
	.word	4
	.word	_Label_615
	.word	-84
	.word	64
	.word	_Label_616
	.word	-88
	.word	4
	.word	_Label_617
	.word	-92
	.word	4
	.word	_Label_618
	.word	-96
	.word	4
	.word	_Label_619
	.word	-100
	.word	4
	.word	_Label_620
	.word	-156
	.word	56
	.word	_Label_621
	.word	-160
	.word	4
	.word	_Label_622
	.word	-164
	.word	4
	.word	_Label_623
	.word	-168
	.word	4
	.word	_Label_624
	.word	-172
	.word	4
	.word	_Label_625
	.word	-176
	.word	4
	.word	_Label_626
	.word	-180
	.word	4
	.word	_Label_627
	.word	-184
	.word	4
	.word	_Label_628
	.word	-188
	.word	4
	.word	0
_Label_609:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_610:
	.ascii	"Pself\0"
	.align
_Label_611:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_613:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_615:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_623:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_624:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_625:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_626:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_627:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_628:
	.byte	'?'
	.ascii	"_temp_590\0"
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
_Label_1761:
	push	r0
	sub	r1,1,r1
	bne	_Label_1761
	mov	573,r13		! source line 573
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	584,r13		! source line 584
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	584,r13		! source line 584
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	586,r13		! source line 586
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	587,r13		! source line 587
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	588,r13		! source line 588
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
	mov	589,r13		! source line 589
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_629 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_629  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	590,r13		! source line 590
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	591,r13		! source line 591
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_631 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_630  sizeInBytes=4
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
	mov	592,r13		! source line 592
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	592,r13		! source line 592
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
	.word	_Label_632
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_633
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_634
	.word	12
	.word	4
	.word	_Label_635
	.word	16
	.word	4
	.word	_Label_636
	.word	-12
	.word	4
	.word	_Label_637
	.word	-16
	.word	4
	.word	_Label_638
	.word	-20
	.word	4
	.word	_Label_639
	.word	-24
	.word	4
	.word	_Label_640
	.word	-28
	.word	4
	.word	0
_Label_632:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_633:
	.ascii	"Pself\0"
	.align
_Label_634:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_635:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_639:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_640:
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
_Label_1762:
	push	r0
	sub	r1,1,r1
	bne	_Label_1762
	mov	597,r13		! source line 597
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	613,r13		! source line 613
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_643 == _P_Kernel_currentThread then goto _Label_642		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_642
!	jmp	_Label_641
_Label_641:
! THEN...
	mov	614,r13		! source line 614
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_644 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_644  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	614,r13		! source line 614
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_642:
! ASSIGNMENT STATEMENT...
	mov	616,r13		! source line 616
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	616,r13		! source line 616
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	620,r13		! source line 620
	mov	"\0\0AS",r10
	mov	620,r13		! source line 620
	mov	"\0\0SE",r10
!   _temp_645 = &_P_Kernel_readyList
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
	mov	621,r13		! source line 621
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_647		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_647
!	jmp	_Label_646
_Label_646:
! THEN...
	mov	625,r13		! source line 625
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	625,r13		! source line 625
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_649		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_649
!	jmp	_Label_648
_Label_648:
! THEN...
	mov	626,r13		! source line 626
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_650 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_650  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	626,r13		! source line 626
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_649:
! ASSIGNMENT STATEMENT...
	mov	628,r13		! source line 628
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	629,r13		! source line 629
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_652 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_651  sizeInBytes=4
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
	mov	630,r13		! source line 630
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_647:
! ASSIGNMENT STATEMENT...
	mov	632,r13		! source line 632
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	632,r13		! source line 632
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
	.word	_Label_653
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_654
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_655
	.word	-12
	.word	4
	.word	_Label_656
	.word	-16
	.word	4
	.word	_Label_657
	.word	-20
	.word	4
	.word	_Label_658
	.word	-24
	.word	4
	.word	_Label_659
	.word	-28
	.word	4
	.word	_Label_660
	.word	-32
	.word	4
	.word	_Label_661
	.word	-36
	.word	4
	.word	_Label_662
	.word	-40
	.word	4
	.word	_Label_663
	.word	-44
	.word	4
	.word	0
_Label_653:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_654:
	.ascii	"Pself\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_661:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_662:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_663:
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
_Label_1763:
	push	r0
	sub	r1,1,r1
	bne	_Label_1763
	mov	637,r13		! source line 637
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	649,r13		! source line 649
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_665		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_665
!	jmp	_Label_664
_Label_664:
! THEN...
	mov	650,r13		! source line 650
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_666 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_666  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	650,r13		! source line 650
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_665:
! IF STATEMENT...
	mov	653,r13		! source line 653
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_669 == _P_Kernel_currentThread then goto _Label_668		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_668
!	jmp	_Label_667
_Label_667:
! THEN...
	mov	654,r13		! source line 654
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_670 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_670  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	654,r13		! source line 654
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_668:
! ASSIGNMENT STATEMENT...
	mov	659,r13		! source line 659
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	660,r13		! source line 660
	mov	"\0\0AS",r10
	mov	660,r13		! source line 660
	mov	"\0\0SE",r10
!   _temp_671 = &_P_Kernel_readyList
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
	mov	661,r13		! source line 661
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_672
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_672
	jmp	_Label_673
_Label_672:
! THEN...
	mov	662,r13		! source line 662
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_674 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_674  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	662,r13		! source line 662
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_673:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	664,r13		! source line 664
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
	.word	_Label_675
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_676
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_677
	.word	-12
	.word	4
	.word	_Label_678
	.word	-16
	.word	4
	.word	_Label_679
	.word	-20
	.word	4
	.word	_Label_680
	.word	-24
	.word	4
	.word	_Label_681
	.word	-28
	.word	4
	.word	_Label_682
	.word	-32
	.word	4
	.word	0
_Label_675:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_676:
	.ascii	"Pself\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_682:
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
_Label_1764:
	push	r0
	sub	r1,1,r1
	bne	_Label_1764
	mov	669,r13		! source line 669
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	675,r13		! source line 675
	mov	"\0\0IF",r10
!   _temp_686 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_686 [0 ] into _temp_687
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
!   Data Move: _temp_685 = *_temp_687  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_685 == 606348324 then goto _Label_684		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_684
!	jmp	_Label_683
_Label_683:
! THEN...
	mov	676,r13		! source line 676
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_688 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_688  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	676,r13		! source line 676
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_689
_Label_684:
! ELSE...
	mov	677,r13		! source line 677
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	677,r13		! source line 677
	mov	"\0\0IF",r10
!   _temp_693 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_693 [999 ] into _temp_694
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
!   Data Move: _temp_692 = *_temp_694  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_692 == 606348324 then goto _Label_691		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_691
!	jmp	_Label_690
_Label_690:
! THEN...
	mov	678,r13		! source line 678
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_695 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_695  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	678,r13		! source line 678
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_691:
! END IF...
_Label_689:
! RETURN STATEMENT...
	mov	675,r13		! source line 675
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
	.word	_Label_696
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_697
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_698
	.word	-12
	.word	4
	.word	_Label_699
	.word	-16
	.word	4
	.word	_Label_700
	.word	-20
	.word	4
	.word	_Label_701
	.word	-24
	.word	4
	.word	_Label_702
	.word	-28
	.word	4
	.word	_Label_703
	.word	-32
	.word	4
	.word	_Label_704
	.word	-36
	.word	4
	.word	_Label_705
	.word	-40
	.word	4
	.word	0
_Label_696:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_697:
	.ascii	"Pself\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_695\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_694\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_685\0"
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
_Label_1765:
	push	r0
	sub	r1,1,r1
	bne	_Label_1765
	mov	684,r13		! source line 684
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	690,r13		! source line 690
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	690,r13		! source line 690
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_706 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_706  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	691,r13		! source line 691
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	692,r13		! source line 692
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_707 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_707  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	693,r13		! source line 693
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_708  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	694,r13		! source line 694
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_709 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_709  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	695,r13		! source line 695
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_710 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_710  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	696,r13		! source line 696
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	697,r13		! source line 697
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_715 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_716 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_715  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_711:
!   Perform the FOR-LOOP termination test
!   if i > _temp_716 then goto _Label_714		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_714
_Label_712:
	mov	697,r13		! source line 697
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_717 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_717  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	698,r13		! source line 698
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_718 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_718  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	699,r13		! source line 699
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_719 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_719  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	700,r13		! source line 700
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_721 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_721 [i ] into _temp_722
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
!   Data Move: _temp_720 = *_temp_722  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_720  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	701,r13		! source line 701
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_723 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_723  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	702,r13		! source line 702
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_725 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_725 [i ] into _temp_726
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
!   Data Move: _temp_724 = *_temp_726  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_724  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	703,r13		! source line 703
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_727 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_727  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	704,r13		! source line 704
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_713:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_711
! END FOR
_Label_714:
! CALL STATEMENT...
!   _temp_728 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-116]
!   _temp_729 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_728  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_729  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	706,r13		! source line 706
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_730 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-108]
!   _temp_732 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_732 [0 ] into _temp_733
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
!   _temp_731 = _temp_733		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_730  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_731  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	707,r13		! source line 707
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	708,r13		! source line 708
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_736
	cmp	r1,2
	be	_Label_737
	cmp	r1,3
	be	_Label_738
	cmp	r1,4
	be	_Label_739
	cmp	r1,5
	be	_Label_740
	jmp	_Label_734
! CASE 1...
_Label_736:
! CALL STATEMENT...
!   _temp_741 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_741  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	710,r13		! source line 710
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	711,r13		! source line 711
	mov	"\0\0BR",r10
	jmp	_Label_735
! CASE 2...
_Label_737:
! CALL STATEMENT...
!   _temp_742 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_742  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	713,r13		! source line 713
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	714,r13		! source line 714
	mov	"\0\0BR",r10
	jmp	_Label_735
! CASE 3...
_Label_738:
! CALL STATEMENT...
!   _temp_743 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_743  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	716,r13		! source line 716
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	717,r13		! source line 717
	mov	"\0\0BR",r10
	jmp	_Label_735
! CASE 4...
_Label_739:
! CALL STATEMENT...
!   _temp_744 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_744  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	719,r13		! source line 719
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	720,r13		! source line 720
	mov	"\0\0BR",r10
	jmp	_Label_735
! CASE 5...
_Label_740:
! CALL STATEMENT...
!   _temp_745 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_745  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	722,r13		! source line 722
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	723,r13		! source line 723
	mov	"\0\0BR",r10
	jmp	_Label_735
! DEFAULT CASE...
_Label_734:
! CALL STATEMENT...
!   _temp_746 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_746  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	725,r13		! source line 725
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_735:
! CALL STATEMENT...
!   _temp_747 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_747  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	727,r13		! source line 727
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	728,r13		! source line 728
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	729,r13		! source line 729
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_748 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_748  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	730,r13		! source line 730
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	731,r13		! source line 731
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_753 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_754 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_753  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_749:
!   Perform the FOR-LOOP termination test
!   if i > _temp_754 then goto _Label_752		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_752
_Label_750:
	mov	731,r13		! source line 731
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_755 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_755  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	732,r13		! source line 732
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_756 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_756  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	733,r13		! source line 733
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_757 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_757  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	734,r13		! source line 734
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_759 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_759 [i ] into _temp_760
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
!   Data Move: _temp_758 = *_temp_760  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_758  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	735,r13		! source line 735
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_761 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_761  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	736,r13		! source line 736
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_763 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_763 [i ] into _temp_764
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
!   Data Move: _temp_762 = *_temp_764  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_762  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	737,r13		! source line 737
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_765 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_765  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	738,r13		! source line 738
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_751:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_749
! END FOR
_Label_752:
! ASSIGNMENT STATEMENT...
	mov	740,r13		! source line 740
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	740,r13		! source line 740
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	740,r13		! source line 740
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
	.word	_Label_766
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_767
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_768
	.word	-12
	.word	4
	.word	_Label_769
	.word	-16
	.word	4
	.word	_Label_770
	.word	-20
	.word	4
	.word	_Label_771
	.word	-24
	.word	4
	.word	_Label_772
	.word	-28
	.word	4
	.word	_Label_773
	.word	-32
	.word	4
	.word	_Label_774
	.word	-36
	.word	4
	.word	_Label_775
	.word	-40
	.word	4
	.word	_Label_776
	.word	-44
	.word	4
	.word	_Label_777
	.word	-48
	.word	4
	.word	_Label_778
	.word	-52
	.word	4
	.word	_Label_779
	.word	-56
	.word	4
	.word	_Label_780
	.word	-60
	.word	4
	.word	_Label_781
	.word	-64
	.word	4
	.word	_Label_782
	.word	-68
	.word	4
	.word	_Label_783
	.word	-72
	.word	4
	.word	_Label_784
	.word	-76
	.word	4
	.word	_Label_785
	.word	-80
	.word	4
	.word	_Label_786
	.word	-84
	.word	4
	.word	_Label_787
	.word	-88
	.word	4
	.word	_Label_788
	.word	-92
	.word	4
	.word	_Label_789
	.word	-96
	.word	4
	.word	_Label_790
	.word	-100
	.word	4
	.word	_Label_791
	.word	-104
	.word	4
	.word	_Label_792
	.word	-108
	.word	4
	.word	_Label_793
	.word	-112
	.word	4
	.word	_Label_794
	.word	-116
	.word	4
	.word	_Label_795
	.word	-120
	.word	4
	.word	_Label_796
	.word	-124
	.word	4
	.word	_Label_797
	.word	-128
	.word	4
	.word	_Label_798
	.word	-132
	.word	4
	.word	_Label_799
	.word	-136
	.word	4
	.word	_Label_800
	.word	-140
	.word	4
	.word	_Label_801
	.word	-144
	.word	4
	.word	_Label_802
	.word	-148
	.word	4
	.word	_Label_803
	.word	-152
	.word	4
	.word	_Label_804
	.word	-156
	.word	4
	.word	_Label_805
	.word	-160
	.word	4
	.word	_Label_806
	.word	-164
	.word	4
	.word	_Label_807
	.word	-168
	.word	4
	.word	_Label_808
	.word	-172
	.word	4
	.word	_Label_809
	.word	-176
	.word	4
	.word	_Label_810
	.word	-180
	.word	4
	.word	_Label_811
	.word	-184
	.word	4
	.word	_Label_812
	.word	-188
	.word	4
	.word	_Label_813
	.word	-192
	.word	4
	.word	_Label_814
	.word	-196
	.word	4
	.word	0
_Label_766:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_767:
	.ascii	"Pself\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_765\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_764\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_763\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_762\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_761\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_760\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_759\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_758\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_781:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_782:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_783:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_784:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_790:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_795:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_718\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_710\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_709\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_708\0"
	.align
_Label_811:
	.byte	'?'
	.ascii	"_temp_707\0"
	.align
_Label_812:
	.byte	'?'
	.ascii	"_temp_706\0"
	.align
_Label_813:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_814:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_815
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_815:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_816
	.word	_sourceFileName
	.word	198		! line number
	.word	41776		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_816:
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
_Label_1766:
	push	r0
	sub	r1,1,r1
	bne	_Label_1766
	mov	795,r13		! source line 795
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_817 = _StringConst_73
	set	_StringConst_73,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_817  sizeInBytes=4
	set	-45908,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	802,r13		! source line 802
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	804,r13		! source line 804
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
	mov	805,r13		! source line 805
	mov	"\0\0SE",r10
!   _temp_819 = &ThreadLock
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
	mov	806,r13		! source line 806
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: ThreadFree = zeros  (sizeInBytes=96)
	load	[r14+8],r4
	add	r4,24,r4
	mov	24,r3
_Label_1767:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1767
!   ThreadFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! SEND STATEMENT...
	mov	807,r13		! source line 807
	mov	"\0\0SE",r10
!   _temp_821 = &ThreadFree
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
	mov	809,r13		! source line 809
	mov	"\0\0AS",r10
!   _temp_822 = &threadTable
	load	[r14+8],r1
	add	r1,120,r1
	set	-45888,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_824 = &_temp_823
	set	-45884,r1
	add	r14,r1,r1
	store	r1,[r14+-4240]
!   _temp_824 = _temp_824 + 4
	load	[r14+-4240],r1
	add	r1,4,r1
	store	r1,[r14+-4240]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_826 = zeros  (sizeInBytes=4164)
	add	r14,-4232,r4
	mov	1041,r3
_Label_1768:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1768
!   _temp_826 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4232]
	mov	10,r1
	store	r1,[r14+-4236]
_Label_828:
!   Data Move: *_temp_824 = _temp_826  (sizeInBytes=4164)
	add	r14,-4232,r5
	load	[r14+-4240],r4
	mov	1041,r3
_Label_1769:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1769
!   _temp_824 = _temp_824 + 4164
	load	[r14+-4240],r1
	add	r1,4164,r1
	store	r1,[r14+-4240]
!   _temp_825 = _temp_825 + -1
	load	[r14+-4236],r1
	add	r1,-1,r1
	store	r1,[r14+-4236]
!   if intNotZero (_temp_825) then goto _Label_828
	load	[r14+-4236],r1
	cmp	r1,r0
	bne	_Label_828
!   Initialize the array size...
	mov	10,r1
	set	-45884,r2
	store	r1,[r14+r2]
!   _temp_829 = &_temp_823
	set	-45884,r1
	add	r14,r1,r1
	store	r1,[r14+-64]
!   make sure array has size 10
	set	-45888,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1770
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1770:
!   make sure array has size 10
	load	[r14+-64],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_822 = *_temp_829  (sizeInBytes=41644)
	load	[r14+-64],r5
	set	-45888,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_1771:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1771
! ASSIGNMENT STATEMENT...
	mov	810,r13		! source line 810
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
	mov	813,r13		! source line 813
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_835 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_836 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_835  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_831:
!   Perform the FOR-LOOP termination test
!   if i > _temp_836 then goto _Label_834		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_834
_Label_832:
	mov	813,r13		! source line 813
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	814,r13		! source line 814
	mov	"\0\0SE",r10
!   _temp_837 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-48]
!   _temp_838 = &threadTable
	load	[r14+8],r1
	add	r1,120,r1
	store	r1,[r14+-44]
!   Move address of _temp_838 [i ] into _temp_839
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
!   Prepare Argument: offset=12  value=_temp_837  sizeInBytes=4
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
	mov	815,r13		! source line 815
	mov	"\0\0AS",r10
!   _temp_840 = &threadTable
	load	[r14+8],r1
	add	r1,120,r1
	store	r1,[r14+-36]
!   Move address of _temp_840 [i ] into _temp_841
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
!   _temp_842 = _temp_841 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_842 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	816,r13		! source line 816
	mov	"\0\0SE",r10
!   _temp_844 = &threadTable
	load	[r14+8],r1
	add	r1,120,r1
	store	r1,[r14+-20]
!   Move address of _temp_844 [i ] into _temp_845
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
!   _temp_843 = _temp_845		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_846 = &freeList
	set	41764,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_843  sizeInBytes=4
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
_Label_833:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_831
! END FOR
_Label_834:
! RETURN STATEMENT...
	mov	813,r13		! source line 813
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
	.word	_Label_847
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
	.word	_Label_848
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_849
	.word	-12
	.word	4
	.word	_Label_850
	.word	-16
	.word	4
	.word	_Label_851
	.word	-20
	.word	4
	.word	_Label_852
	.word	-24
	.word	4
	.word	_Label_853
	.word	-28
	.word	4
	.word	_Label_854
	.word	-32
	.word	4
	.word	_Label_855
	.word	-36
	.word	4
	.word	_Label_856
	.word	-40
	.word	4
	.word	_Label_857
	.word	-44
	.word	4
	.word	_Label_858
	.word	-48
	.word	4
	.word	_Label_859
	.word	-52
	.word	4
	.word	_Label_860
	.word	-56
	.word	4
	.word	_Label_861
	.word	-60
	.word	4
	.word	_Label_862
	.word	-64
	.word	4
	.word	_Label_863
	.word	-68
	.word	4
	.word	_Label_864
	.word	-4232
	.word	4164
	.word	_Label_865
	.word	-4236
	.word	4
	.word	_Label_866
	.word	-4240
	.word	4
	.word	_Label_867
	.word	-45884
	.word	41644
	.word	_Label_868
	.word	-45888
	.word	4
	.word	_Label_869
	.word	-45892
	.word	4
	.word	_Label_870
	.word	-45896
	.word	4
	.word	_Label_871
	.word	-45900
	.word	4
	.word	_Label_872
	.word	-45904
	.word	4
	.word	_Label_873
	.word	-45908
	.word	4
	.word	_Label_874
	.word	-45912
	.word	4
	.word	0
_Label_847:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_848:
	.ascii	"Pself\0"
	.align
_Label_849:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_850:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_841\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_840\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_839\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_821\0"
	.align
_Label_870:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
_Label_871:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_872:
	.byte	'?'
	.ascii	"_temp_818\0"
	.align
_Label_873:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_874:
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
_Label_1772:
	push	r0
	sub	r1,1,r1
	bne	_Label_1772
	mov	823,r13		! source line 823
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	830,r13		! source line 830
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	830,r13		! source line 830
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_875 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_875  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	831,r13		! source line 831
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	832,r13		! source line 832
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_880 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_881 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_880  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_876:
!   Perform the FOR-LOOP termination test
!   if i > _temp_881 then goto _Label_879		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_879
_Label_877:
	mov	832,r13		! source line 832
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_882 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_882  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	833,r13		! source line 833
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	834,r13		! source line 834
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_883 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_883  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	835,r13		! source line 835
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_885 = &threadTable
	load	[r14+8],r1
	add	r1,120,r1
	store	r1,[r14+-28]
!   Move address of _temp_885 [i ] into _temp_886
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
!   _temp_884 = _temp_886		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_884  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	836,r13		! source line 836
	mov	"\0\0CA",r10
	call	_function_125_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_878:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_876
! END FOR
_Label_879:
! CALL STATEMENT...
!   _temp_887 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_887  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	838,r13		! source line 838
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	839,r13		! source line 839
	mov	"\0\0SE",r10
!   _temp_888 = _function_124_PrintObjectAddr
	set	_function_124_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_889 = &freeList
	set	41764,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_888  sizeInBytes=4
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
	mov	840,r13		! source line 840
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	841,r13		! source line 841
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	841,r13		! source line 841
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	841,r13		! source line 841
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
	.word	_Label_890
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_891
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_892
	.word	-12
	.word	4
	.word	_Label_893
	.word	-16
	.word	4
	.word	_Label_894
	.word	-20
	.word	4
	.word	_Label_895
	.word	-24
	.word	4
	.word	_Label_896
	.word	-28
	.word	4
	.word	_Label_897
	.word	-32
	.word	4
	.word	_Label_898
	.word	-36
	.word	4
	.word	_Label_899
	.word	-40
	.word	4
	.word	_Label_900
	.word	-44
	.word	4
	.word	_Label_901
	.word	-48
	.word	4
	.word	_Label_902
	.word	-52
	.word	4
	.word	_Label_903
	.word	-56
	.word	4
	.word	_Label_904
	.word	-60
	.word	4
	.word	0
_Label_890:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_891:
	.ascii	"Pself\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_889\0"
	.align
_Label_893:
	.byte	'?'
	.ascii	"_temp_888\0"
	.align
_Label_894:
	.byte	'?'
	.ascii	"_temp_887\0"
	.align
_Label_895:
	.byte	'?'
	.ascii	"_temp_886\0"
	.align
_Label_896:
	.byte	'?'
	.ascii	"_temp_885\0"
	.align
_Label_897:
	.byte	'?'
	.ascii	"_temp_884\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_883\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_882\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_881\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_880\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_903:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_904:
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
_Label_1773:
	push	r0
	sub	r1,1,r1
	bne	_Label_1773
	mov	846,r13		! source line 846
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	854,r13		! source line 854
	mov	"\0\0SE",r10
!   _temp_905 = &ThreadLock
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
! IF STATEMENT...
	mov	857,r13		! source line 857
	mov	"\0\0IF",r10
	mov	857,r13		! source line 857
	mov	"\0\0SE",r10
!   _temp_909 = &freeList
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
!   Retrieve Result: targetName=_temp_908  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_910 = _temp_908 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_910 then goto _Label_907 else goto _Label_906
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_906
	jmp	_Label_907
_Label_906:
! THEN...
	mov	858,r13		! source line 858
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	858,r13		! source line 858
	mov	"\0\0SE",r10
!   _temp_911 = &ThreadLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   _temp_912 = &ThreadFree
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_911  sizeInBytes=4
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
! END IF...
_Label_907:
! ASSIGNMENT STATEMENT...
	mov	861,r13		! source line 861
	mov	"\0\0AS",r10
	mov	861,r13		! source line 861
	mov	"\0\0SE",r10
!   _temp_913 = &freeList
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
	mov	862,r13		! source line 862
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_914 = t + 76
	load	[r14+-44],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_914 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	863,r13		! source line 863
	mov	"\0\0SE",r10
!   _temp_915 = &ThreadLock
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
	mov	864,r13		! source line 864
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
	.word	_Label_916
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_917
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_918
	.word	-16
	.word	4
	.word	_Label_919
	.word	-20
	.word	4
	.word	_Label_920
	.word	-24
	.word	4
	.word	_Label_921
	.word	-28
	.word	4
	.word	_Label_922
	.word	-32
	.word	4
	.word	_Label_923
	.word	-9
	.word	1
	.word	_Label_924
	.word	-36
	.word	4
	.word	_Label_925
	.word	-10
	.word	1
	.word	_Label_926
	.word	-40
	.word	4
	.word	_Label_927
	.word	-44
	.word	4
	.word	0
_Label_916:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_917:
	.ascii	"Pself\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_915\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_914\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_913\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_923:
	.byte	'C'
	.ascii	"_temp_910\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
_Label_925:
	.byte	'C'
	.ascii	"_temp_908\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_905\0"
	.align
_Label_927:
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
_Label_1774:
	push	r0
	sub	r1,1,r1
	bne	_Label_1774
	mov	869,r13		! source line 869
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	874,r13		! source line 874
	mov	"\0\0SE",r10
!   _temp_928 = &ThreadLock
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
	mov	875,r13		! source line 875
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_929 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_929 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	876,r13		! source line 876
	mov	"\0\0SE",r10
!   _temp_930 = &freeList
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
	mov	877,r13		! source line 877
	mov	"\0\0SE",r10
!   _temp_931 = &ThreadLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_932 = &ThreadFree
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_931  sizeInBytes=4
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
	mov	879,r13		! source line 879
	mov	"\0\0SE",r10
!   _temp_933 = &ThreadLock
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
	mov	879,r13		! source line 879
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
	.word	_Label_934
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_935
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_936
	.word	12
	.word	4
	.word	_Label_937
	.word	-12
	.word	4
	.word	_Label_938
	.word	-16
	.word	4
	.word	_Label_939
	.word	-20
	.word	4
	.word	_Label_940
	.word	-24
	.word	4
	.word	_Label_941
	.word	-28
	.word	4
	.word	_Label_942
	.word	-32
	.word	4
	.word	0
_Label_934:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_935:
	.ascii	"Pself\0"
	.align
_Label_936:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_940:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_941:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_942:
	.byte	'?'
	.ascii	"_temp_928\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_943
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_943:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_944
	.word	_sourceFileName
	.word	219		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_944:
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
_Label_1775:
	push	r0
	sub	r1,1,r1
	bne	_Label_1775
	mov	892,r13		! source line 892
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	893,r13		! source line 893
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	894,r13		! source line 894
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	895,r13		! source line 895
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_1776:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1776
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	896,r13		! source line 896
	mov	"\0\0SE",r10
!   _temp_946 = &addrSpace
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
	mov	896,r13		! source line 896
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
	.word	_Label_947
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_948
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_949
	.word	-12
	.word	4
	.word	_Label_950
	.word	-16
	.word	4
	.word	0
_Label_947:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_948:
	.ascii	"Pself\0"
	.align
_Label_949:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_950:
	.byte	'?'
	.ascii	"_temp_945\0"
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
_Label_1777:
	push	r0
	sub	r1,1,r1
	bne	_Label_1777
	mov	906,r13		! source line 906
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	911,r13		! source line 911
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_951) then goto _runtimeErrorNullPointer
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
	mov	912,r13		! source line 912
	mov	"\0\0SE",r10
!   _temp_952 = &addrSpace
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
!   _temp_953 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_953  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	913,r13		! source line 913
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	914,r13		! source line 914
	mov	"\0\0CA",r10
	call	_function_125_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	924,r13		! source line 924
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	924,r13		! source line 924
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
	.word	_Label_954
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_955
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_956
	.word	-12
	.word	4
	.word	_Label_957
	.word	-16
	.word	4
	.word	_Label_958
	.word	-20
	.word	4
	.word	0
_Label_954:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_955:
	.ascii	"Pself\0"
	.align
_Label_956:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_957:
	.byte	'?'
	.ascii	"_temp_952\0"
	.align
_Label_958:
	.byte	'?'
	.ascii	"_temp_951\0"
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
_Label_1778:
	push	r0
	sub	r1,1,r1
	bne	_Label_1778
	mov	929,r13		! source line 929
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_959 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_959  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	933,r13		! source line 933
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_960  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	934,r13		! source line 934
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_961 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_961  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	935,r13		! source line 935
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	936,r13		! source line 936
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_962 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_962  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	937,r13		! source line 937
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	938,r13		! source line 938
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_964		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_964
!	jmp	_Label_963
_Label_963:
! THEN...
	mov	939,r13		! source line 939
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_965 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_965  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	939,r13		! source line 939
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_966
_Label_964:
! ELSE...
	mov	940,r13		! source line 940
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	940,r13		! source line 940
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_968		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_968
!	jmp	_Label_967
_Label_967:
! THEN...
	mov	941,r13		! source line 941
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_969 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_969  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	941,r13		! source line 941
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_970
_Label_968:
! ELSE...
	mov	942,r13		! source line 942
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	942,r13		! source line 942
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_972		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_972
!	jmp	_Label_971
_Label_971:
! THEN...
	mov	943,r13		! source line 943
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_973 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_973  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	943,r13		! source line 943
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_974
_Label_972:
! ELSE...
	mov	945,r13		! source line 945
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_975 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_975  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	945,r13		! source line 945
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_974:
! END IF...
_Label_970:
! END IF...
_Label_966:
! CALL STATEMENT...
!   _temp_976 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_976  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	947,r13		! source line 947
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	948,r13		! source line 948
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_977 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_977  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	949,r13		! source line 949
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	950,r13		! source line 950
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	951,r13		! source line 951
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	951,r13		! source line 951
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
	.word	_Label_978
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_979
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_980
	.word	-12
	.word	4
	.word	_Label_981
	.word	-16
	.word	4
	.word	_Label_982
	.word	-20
	.word	4
	.word	_Label_983
	.word	-24
	.word	4
	.word	_Label_984
	.word	-28
	.word	4
	.word	_Label_985
	.word	-32
	.word	4
	.word	_Label_986
	.word	-36
	.word	4
	.word	_Label_987
	.word	-40
	.word	4
	.word	_Label_988
	.word	-44
	.word	4
	.word	_Label_989
	.word	-48
	.word	4
	.word	0
_Label_978:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_979:
	.ascii	"Pself\0"
	.align
_Label_980:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_981:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_982:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_983:
	.byte	'?'
	.ascii	"_temp_973\0"
	.align
_Label_984:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_985:
	.byte	'?'
	.ascii	"_temp_965\0"
	.align
_Label_986:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_987:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_988:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_989:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_990
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_990:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_991
	.word	_sourceFileName
	.word	239		! line number
	.word	1476		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_991:
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
_Label_1779:
	push	r0
	sub	r1,1,r1
	bne	_Label_1779
	mov	962,r13		! source line 962
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	969,r13		! source line 969
	mov	"\0\0AS",r10
!   _temp_992 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1468]
!   NEW ARRAY Constructor...
!   _temp_994 = &_temp_993
	add	r14,-1464,r1
	store	r1,[r14+-220]
!   _temp_994 = _temp_994 + 4
	load	[r14+-220],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_996 = zeros  (sizeInBytes=124)
	add	r14,-212,r4
	mov	31,r3
_Label_1780:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1780
!   _temp_996 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-212]
	mov	10,r1
	store	r1,[r14+-216]
_Label_998:
!   Data Move: *_temp_994 = _temp_996  (sizeInBytes=124)
	add	r14,-212,r5
	load	[r14+-220],r4
	mov	31,r3
_Label_1781:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1781
!   _temp_994 = _temp_994 + 124
	load	[r14+-220],r1
	add	r1,124,r1
	store	r1,[r14+-220]
!   _temp_995 = _temp_995 + -1
	load	[r14+-216],r1
	add	r1,-1,r1
	store	r1,[r14+-216]
!   if intNotZero (_temp_995) then goto _Label_998
	load	[r14+-216],r1
	cmp	r1,r0
	bne	_Label_998
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1464]
!   _temp_999 = &_temp_993
	add	r14,-1464,r1
	store	r1,[r14+-84]
!   make sure array has size 10
	load	[r14+-1468],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1782
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1782:
!   make sure array has size 10
	load	[r14+-84],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_992 = *_temp_999  (sizeInBytes=1244)
	load	[r14+-84],r5
	load	[r14+-1468],r4
	mov	311,r3
_Label_1783:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1783
! ASSIGNMENT STATEMENT...
	mov	971,r13		! source line 971
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
	mov	972,r13		! source line 972
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=96)
	load	[r14+8],r4
	add	r4,1268,r4
	mov	24,r3
_Label_1784:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1784
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! ASSIGNMENT STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=96)
	load	[r14+8],r4
	add	r4,1376,r4
	mov	24,r3
_Label_1785:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1785
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1376]
! SEND STATEMENT...
	mov	975,r13		! source line 975
	mov	"\0\0SE",r10
!   _temp_1003 = &processManagerLock
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
	mov	976,r13		! source line 976
	mov	"\0\0SE",r10
!   _temp_1004 = &aProcessBecameFree
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
	mov	977,r13		! source line 977
	mov	"\0\0SE",r10
!   _temp_1005 = &aProcessDied
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
	mov	979,r13		! source line 979
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
	mov	981,r13		! source line 981
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1011 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1012 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1011  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1472]
_Label_1007:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1012 then goto _Label_1010		
	load	[r14+-1472],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1010
_Label_1008:
	mov	981,r13		! source line 981
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	982,r13		! source line 982
	mov	"\0\0SE",r10
!   _temp_1013 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1013 [i ] into _temp_1014
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
	mov	983,r13		! source line 983
	mov	"\0\0AS",r10
!   _temp_1015 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1015 [i ] into _temp_1016
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
!   _temp_1017 = _temp_1016 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1017 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	984,r13		! source line 984
	mov	"\0\0SE",r10
!   _temp_1019 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1019 [i ] into _temp_1020
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
!   _temp_1018 = _temp_1020		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1021 = &freeList
	load	[r14+8],r1
	add	r1,1364,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1018  sizeInBytes=4
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
_Label_1009:
!   i = i + 1
	load	[r14+-1472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1472]
	jmp	_Label_1007
! END FOR
_Label_1010:
! ASSIGNMENT STATEMENT...
	mov	987,r13		! source line 987
	mov	"\0\0AS",r10
!   nextPid = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+1472]
! RETURN STATEMENT...
	mov	987,r13		! source line 987
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
	.word	_Label_1022
	.word	4		! total size of parameters
	.word	1472		! frame size = 1472
	.word	_Label_1023
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1024
	.word	-12
	.word	4
	.word	_Label_1025
	.word	-16
	.word	4
	.word	_Label_1026
	.word	-20
	.word	4
	.word	_Label_1027
	.word	-24
	.word	4
	.word	_Label_1028
	.word	-28
	.word	4
	.word	_Label_1029
	.word	-32
	.word	4
	.word	_Label_1030
	.word	-36
	.word	4
	.word	_Label_1031
	.word	-40
	.word	4
	.word	_Label_1032
	.word	-44
	.word	4
	.word	_Label_1033
	.word	-48
	.word	4
	.word	_Label_1034
	.word	-52
	.word	4
	.word	_Label_1035
	.word	-56
	.word	4
	.word	_Label_1036
	.word	-60
	.word	4
	.word	_Label_1037
	.word	-64
	.word	4
	.word	_Label_1038
	.word	-68
	.word	4
	.word	_Label_1039
	.word	-72
	.word	4
	.word	_Label_1040
	.word	-76
	.word	4
	.word	_Label_1041
	.word	-80
	.word	4
	.word	_Label_1042
	.word	-84
	.word	4
	.word	_Label_1043
	.word	-88
	.word	4
	.word	_Label_1044
	.word	-212
	.word	124
	.word	_Label_1045
	.word	-216
	.word	4
	.word	_Label_1046
	.word	-220
	.word	4
	.word	_Label_1047
	.word	-1464
	.word	1244
	.word	_Label_1048
	.word	-1468
	.word	4
	.word	_Label_1049
	.word	-1472
	.word	4
	.word	0
_Label_1022:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1023:
	.ascii	"Pself\0"
	.align
_Label_1024:
	.byte	'?'
	.ascii	"_temp_1021\0"
	.align
_Label_1025:
	.byte	'?'
	.ascii	"_temp_1020\0"
	.align
_Label_1026:
	.byte	'?'
	.ascii	"_temp_1019\0"
	.align
_Label_1027:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1028:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1029:
	.byte	'?'
	.ascii	"_temp_1016\0"
	.align
_Label_1030:
	.byte	'?'
	.ascii	"_temp_1015\0"
	.align
_Label_1031:
	.byte	'?'
	.ascii	"_temp_1014\0"
	.align
_Label_1032:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1033:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1034:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1035:
	.byte	'?'
	.ascii	"_temp_1006\0"
	.align
_Label_1036:
	.byte	'?'
	.ascii	"_temp_1005\0"
	.align
_Label_1037:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1038:
	.byte	'?'
	.ascii	"_temp_1003\0"
	.align
_Label_1039:
	.byte	'?'
	.ascii	"_temp_1002\0"
	.align
_Label_1040:
	.byte	'?'
	.ascii	"_temp_1001\0"
	.align
_Label_1041:
	.byte	'?'
	.ascii	"_temp_1000\0"
	.align
_Label_1042:
	.byte	'?'
	.ascii	"_temp_999\0"
	.align
_Label_1043:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1044:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1045:
	.byte	'?'
	.ascii	"_temp_995\0"
	.align
_Label_1046:
	.byte	'?'
	.ascii	"_temp_994\0"
	.align
_Label_1047:
	.byte	'?'
	.ascii	"_temp_993\0"
	.align
_Label_1048:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_1049:
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
_Label_1786:
	push	r0
	sub	r1,1,r1
	bne	_Label_1786
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
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1050 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1050  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1000,r13		! source line 1000
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1001,r13		! source line 1001
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1055 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1056 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1055  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1051:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1056 then goto _Label_1054		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1054
_Label_1052:
	mov	1001,r13		! source line 1001
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1057 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1057  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1002,r13		! source line 1002
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1003,r13		! source line 1003
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1058 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1058  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1004,r13		! source line 1004
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1005,r13		! source line 1005
	mov	"\0\0SE",r10
!   _temp_1059 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1059 [i ] into _temp_1060
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
_Label_1053:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1051
! END FOR
_Label_1054:
! CALL STATEMENT...
!   _temp_1061 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1061  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1007,r13		! source line 1007
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1008,r13		! source line 1008
	mov	"\0\0SE",r10
!   _temp_1062 = _function_124_PrintObjectAddr
	set	_function_124_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1063 = &freeList
	load	[r14+8],r1
	add	r1,1364,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1062  sizeInBytes=4
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
	mov	1009,r13		! source line 1009
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1010,r13		! source line 1010
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1010,r13		! source line 1010
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	1010,r13		! source line 1010
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
	.word	_Label_1064
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1065
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1066
	.word	-12
	.word	4
	.word	_Label_1067
	.word	-16
	.word	4
	.word	_Label_1068
	.word	-20
	.word	4
	.word	_Label_1069
	.word	-24
	.word	4
	.word	_Label_1070
	.word	-28
	.word	4
	.word	_Label_1071
	.word	-32
	.word	4
	.word	_Label_1072
	.word	-36
	.word	4
	.word	_Label_1073
	.word	-40
	.word	4
	.word	_Label_1074
	.word	-44
	.word	4
	.word	_Label_1075
	.word	-48
	.word	4
	.word	_Label_1076
	.word	-52
	.word	4
	.word	_Label_1077
	.word	-56
	.word	4
	.word	0
_Label_1064:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1065:
	.ascii	"Pself\0"
	.align
_Label_1066:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1067:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1068:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1069:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1070:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1071:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1072:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1073:
	.byte	'?'
	.ascii	"_temp_1056\0"
	.align
_Label_1074:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1075:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1076:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1077:
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
_Label_1787:
	push	r0
	sub	r1,1,r1
	bne	_Label_1787
	mov	1015,r13		! source line 1015
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1022,r13		! source line 1022
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1022,r13		! source line 1022
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1078 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1078  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1023,r13		! source line 1023
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1024,r13		! source line 1024
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1083 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1084 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1083  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1079:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1084 then goto _Label_1082		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1082
_Label_1080:
	mov	1024,r13		! source line 1024
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1085 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1085  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1025,r13		! source line 1025
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1026,r13		! source line 1026
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	1027,r13		! source line 1027
	mov	"\0\0SE",r10
!   _temp_1086 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1086 [i ] into _temp_1087
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
_Label_1081:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1079
! END FOR
_Label_1082:
! CALL STATEMENT...
!   _temp_1088 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1088  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1029,r13		! source line 1029
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1030,r13		! source line 1030
	mov	"\0\0SE",r10
!   _temp_1089 = _function_124_PrintObjectAddr
	set	_function_124_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1090 = &freeList
	load	[r14+8],r1
	add	r1,1364,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1089  sizeInBytes=4
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
	mov	1031,r13		! source line 1031
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1032,r13		! source line 1032
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1032,r13		! source line 1032
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	1032,r13		! source line 1032
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
	.word	_Label_1091
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1092
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1093
	.word	-12
	.word	4
	.word	_Label_1094
	.word	-16
	.word	4
	.word	_Label_1095
	.word	-20
	.word	4
	.word	_Label_1096
	.word	-24
	.word	4
	.word	_Label_1097
	.word	-28
	.word	4
	.word	_Label_1098
	.word	-32
	.word	4
	.word	_Label_1099
	.word	-36
	.word	4
	.word	_Label_1100
	.word	-40
	.word	4
	.word	_Label_1101
	.word	-44
	.word	4
	.word	_Label_1102
	.word	-48
	.word	4
	.word	_Label_1103
	.word	-52
	.word	4
	.word	0
_Label_1091:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1092:
	.ascii	"Pself\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1090\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1098:
	.byte	'?'
	.ascii	"_temp_1085\0"
	.align
_Label_1099:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1102:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1103:
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
_Label_1788:
	push	r0
	sub	r1,1,r1
	bne	_Label_1788
	mov	1037,r13		! source line 1037
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1045,r13		! source line 1045
	mov	"\0\0SE",r10
!   _temp_1104 = &processManagerLock
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
! IF STATEMENT...
	mov	1047,r13		! source line 1047
	mov	"\0\0IF",r10
	mov	1047,r13		! source line 1047
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
! THEN...
	mov	1048,r13		! source line 1048
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1048,r13		! source line 1048
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
! END IF...
_Label_1106:
! ASSIGNMENT STATEMENT...
	mov	1051,r13		! source line 1051
	mov	"\0\0AS",r10
	mov	1051,r13		! source line 1051
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
	mov	1052,r13		! source line 1052
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
	mov	1053,r13		! source line 1053
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
	mov	1055,r13		! source line 1055
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
	mov	1056,r13		! source line 1056
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
	mov	1057,r13		! source line 1057
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
	.ascii	"_temp_1104\0"
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
_Label_1789:
	push	r0
	sub	r1,1,r1
	bne	_Label_1789
	mov	1062,r13		! source line 1062
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1067,r13		! source line 1067
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
	mov	1068,r13		! source line 1068
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
	mov	1069,r13		! source line 1069
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
	mov	1071,r13		! source line 1071
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
	mov	1072,r13		! source line 1072
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
	mov	1072,r13		! source line 1072
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
	.word	262		! line number
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
_Label_1790:
	push	r0
	sub	r1,1,r1
	bne	_Label_1790
	mov	1105,r13		! source line 1105
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1146 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1146  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1111,r13		! source line 1111
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1112,r13		! source line 1112
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
	mov	1113,r13		! source line 1113
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
	mov	1114,r13		! source line 1114
	mov	"\0\0AS",r10
!   numberFreeFrames = 27		(4 bytes)
	mov	27,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1115,r13		! source line 1115
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
	mov	1116,r13		! source line 1116
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
	mov	1117,r13		! source line 1117
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=96)
	load	[r14+8],r4
	add	r4,40,r4
	mov	24,r3
_Label_1791:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1791
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1118,r13		! source line 1118
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
	mov	1124,r13		! source line 1124
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
	mov	1124,r13		! source line 1124
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1127,r13		! source line 1127
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
	mov	1128,r13		! source line 1128
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1162 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1162  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1128,r13		! source line 1128
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
	mov	1124,r13		! source line 1124
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
_Label_1792:
	push	r0
	sub	r1,1,r1
	bne	_Label_1792
	mov	1135,r13		! source line 1135
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1139,r13		! source line 1139
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
!   _temp_1178 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1178  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1140,r13		! source line 1140
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1179 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1179  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1141,r13		! source line 1141
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1180 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1180  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1142,r13		! source line 1142
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1143,r13		! source line 1143
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
	mov	1144,r13		! source line 1144
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
	mov	1144,r13		! source line 1144
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
_Label_1793:
	push	r0
	sub	r1,1,r1
	bne	_Label_1793
	mov	1149,r13		! source line 1149
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1157,r13		! source line 1157
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
! IF STATEMENT...
	mov	1160,r13		! source line 1160
	mov	"\0\0IF",r10
!   if numberFreeFrames >= 1 then goto _Label_1193		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1193
!	jmp	_Label_1192
_Label_1192:
! THEN...
	mov	1161,r13		! source line 1161
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1161,r13		! source line 1161
	mov	"\0\0SE",r10
!   _temp_1194 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1195 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1194  sizeInBytes=4
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
! END IF...
_Label_1193:
! ASSIGNMENT STATEMENT...
	mov	1165,r13		! source line 1165
	mov	"\0\0AS",r10
	mov	1165,r13		! source line 1165
	mov	"\0\0SE",r10
!   _temp_1196 = &framesInUse
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
	mov	1166,r13		! source line 1166
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
	mov	1169,r13		! source line 1169
	mov	"\0\0SE",r10
!   _temp_1197 = &frameManagerLock
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
	mov	1172,r13		! source line 1172
	mov	"\0\0AS",r10
!   _temp_1198 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1198		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1174,r13		! source line 1174
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
	.word	_Label_1199
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1200
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1201
	.word	-12
	.word	4
	.word	_Label_1202
	.word	-16
	.word	4
	.word	_Label_1203
	.word	-20
	.word	4
	.word	_Label_1204
	.word	-24
	.word	4
	.word	_Label_1205
	.word	-28
	.word	4
	.word	_Label_1206
	.word	-32
	.word	4
	.word	_Label_1207
	.word	-36
	.word	4
	.word	_Label_1208
	.word	-40
	.word	4
	.word	0
_Label_1199:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1200:
	.ascii	"Pself\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1207:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1208:
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
_Label_1794:
	push	r0
	sub	r1,1,r1
	bne	_Label_1794
	mov	1179,r13		! source line 1179
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1184,r13		! source line 1184
	mov	"\0\0SE",r10
!   _temp_1209 = &frameManagerLock
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
! IF STATEMENT...
	mov	1187,r13		! source line 1187
	mov	"\0\0IF",r10
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1211		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1211
!	jmp	_Label_1210
_Label_1210:
! THEN...
	mov	1188,r13		! source line 1188
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1188,r13		! source line 1188
	mov	"\0\0SE",r10
!   _temp_1212 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1213 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1212  sizeInBytes=4
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
! END IF...
_Label_1211:
! FOR STATEMENT...
	mov	1192,r13		! source line 1192
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1218 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1219 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1218  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_1214:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1219 then goto _Label_1217		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1217
_Label_1215:
	mov	1192,r13		! source line 1192
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1193,r13		! source line 1193
	mov	"\0\0AS",r10
	mov	1193,r13		! source line 1193
	mov	"\0\0SE",r10
!   _temp_1220 = &framesInUse
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
	mov	1194,r13		! source line 1194
	mov	"\0\0AS",r10
!   _temp_1221 = freeFrame * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_1221		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1196,r13		! source line 1196
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
_Label_1216:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1214
! END FOR
_Label_1217:
! ASSIGNMENT STATEMENT...
	mov	1199,r13		! source line 1199
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
	mov	1200,r13		! source line 1200
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1222 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1222 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1203,r13		! source line 1203
	mov	"\0\0SE",r10
!   _temp_1223 = &frameManagerLock
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
	mov	1203,r13		! source line 1203
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
	.word	_Label_1224
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1225
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1226
	.word	12
	.word	4
	.word	_Label_1227
	.word	16
	.word	4
	.word	_Label_1228
	.word	-12
	.word	4
	.word	_Label_1229
	.word	-16
	.word	4
	.word	_Label_1230
	.word	-20
	.word	4
	.word	_Label_1231
	.word	-24
	.word	4
	.word	_Label_1232
	.word	-28
	.word	4
	.word	_Label_1233
	.word	-32
	.word	4
	.word	_Label_1234
	.word	-36
	.word	4
	.word	_Label_1235
	.word	-40
	.word	4
	.word	_Label_1236
	.word	-44
	.word	4
	.word	_Label_1237
	.word	-48
	.word	4
	.word	_Label_1238
	.word	-52
	.word	4
	.word	_Label_1239
	.word	-56
	.word	4
	.word	0
_Label_1224:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1225:
	.ascii	"Pself\0"
	.align
_Label_1226:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1227:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1213\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1209\0"
	.align
_Label_1237:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1238:
	.byte	'I'
	.ascii	"freeFrame\0"
	.align
_Label_1239:
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
_Label_1795:
	push	r0
	sub	r1,1,r1
	bne	_Label_1795
	mov	1209,r13		! source line 1209
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1216,r13		! source line 1216
	mov	"\0\0SE",r10
!   _temp_1240 = &frameManagerLock
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
	mov	1217,r13		! source line 1217
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1241 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: numReturn = *_temp_1241  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-60]
! FOR STATEMENT...
	mov	1218,r13		! source line 1218
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1246 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1247 = numReturn - 1		(int)
	load	[r14+-60],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1246  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-48]
_Label_1242:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1247 then goto _Label_1245		
	load	[r14+-48],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1245
_Label_1243:
	mov	1218,r13		! source line 1218
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1219,r13		! source line 1219
	mov	"\0\0AS",r10
	mov	1219,r13		! source line 1219
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
	mov	1220,r13		! source line 1220
	mov	"\0\0AS",r10
!   _temp_1248 = addr - 1048576		(int)
	load	[r14+-52],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   bitNumber = _temp_1248 div 8192		(int)
	load	[r14+-28],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1221,r13		! source line 1221
	mov	"\0\0SE",r10
!   _temp_1249 = &framesInUse
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
_Label_1244:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1242
! END FOR
_Label_1245:
! ASSIGNMENT STATEMENT...
	mov	1224,r13		! source line 1224
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
	mov	1226,r13		! source line 1226
	mov	"\0\0SE",r10
!   _temp_1250 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1251 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1250  sizeInBytes=4
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
	mov	1229,r13		! source line 1229
	mov	"\0\0SE",r10
!   _temp_1252 = &frameManagerLock
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
	mov	1229,r13		! source line 1229
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
	.word	_Label_1253
	.word	8		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1254
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1255
	.word	12
	.word	4
	.word	_Label_1256
	.word	-12
	.word	4
	.word	_Label_1257
	.word	-16
	.word	4
	.word	_Label_1258
	.word	-20
	.word	4
	.word	_Label_1259
	.word	-24
	.word	4
	.word	_Label_1260
	.word	-28
	.word	4
	.word	_Label_1261
	.word	-32
	.word	4
	.word	_Label_1262
	.word	-36
	.word	4
	.word	_Label_1263
	.word	-40
	.word	4
	.word	_Label_1264
	.word	-44
	.word	4
	.word	_Label_1265
	.word	-48
	.word	4
	.word	_Label_1266
	.word	-52
	.word	4
	.word	_Label_1267
	.word	-56
	.word	4
	.word	_Label_1268
	.word	-60
	.word	4
	.word	0
_Label_1253:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1254:
	.ascii	"Pself\0"
	.align
_Label_1255:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1240\0"
	.align
_Label_1265:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1266:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_1267:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
_Label_1268:
	.byte	'I'
	.ascii	"numReturn\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1269
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
_Label_1269:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1270
	.word	_sourceFileName
	.word	281		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1270:
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
_Label_1796:
	push	r0
	sub	r1,1,r1
	bne	_Label_1796
	mov	1241,r13		! source line 1241
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1245,r13		! source line 1245
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1246,r13		! source line 1246
	mov	"\0\0AS",r10
!   _temp_1271 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1273 = &_temp_1272
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1273 = _temp_1273 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1275:
!   Data Move: *_temp_1273 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1273 = _temp_1273 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1274 = _temp_1274 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1274) then goto _Label_1275
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1275
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1276 = &_temp_1272
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_1797
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1797:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1271 = *_temp_1276  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_1798:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1798
! RETURN STATEMENT...
	mov	1246,r13		! source line 1246
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
	.word	_Label_1277
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1278
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1279
	.word	-12
	.word	4
	.word	_Label_1280
	.word	-16
	.word	4
	.word	_Label_1281
	.word	-20
	.word	4
	.word	_Label_1282
	.word	-104
	.word	84
	.word	_Label_1283
	.word	-108
	.word	4
	.word	0
_Label_1277:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1278:
	.ascii	"Pself\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1271\0"
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
_Label_1799:
	push	r0
	sub	r1,1,r1
	bne	_Label_1799
	mov	1251,r13		! source line 1251
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1284 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1284  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1256,r13		! source line 1256
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1285 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1285  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1257,r13		! source line 1257
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1258,r13		! source line 1258
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1290 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1291 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1290  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1286:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1291 then goto _Label_1289		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1289
_Label_1287:
	mov	1258,r13		! source line 1258
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1292 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1292  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1259,r13		! source line 1259
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1294 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1294 [i ] into _temp_1295
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
!   _temp_1293 = _temp_1295		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1293  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1260,r13		! source line 1260
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1296 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1296  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1261,r13		! source line 1261
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1298 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1298 [i ] into _temp_1299
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
!   Data Move: _temp_1297 = *_temp_1299  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1297  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1262,r13		! source line 1262
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1300 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1300  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1263,r13		! source line 1263
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1301 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1301  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1264,r13		! source line 1264
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1302 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1302  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1265,r13		! source line 1265
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1266,r13		! source line 1266
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1304) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1303  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1303  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1266,r13		! source line 1266
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1305 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1305  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1267,r13		! source line 1267
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1268,r13		! source line 1268
	mov	"\0\0IF",r10
	mov	1268,r13		! source line 1268
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1309) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1308  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1308) then goto _Label_1307
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1307
!	jmp	_Label_1306
_Label_1306:
! THEN...
	mov	1269,r13		! source line 1269
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1269,r13		! source line 1269
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1311) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1310  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1310  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1269,r13		! source line 1269
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1312
_Label_1307:
! ELSE...
	mov	1271,r13		! source line 1271
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1313 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1313  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1271,r13		! source line 1271
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1312:
! CALL STATEMENT...
!   _temp_1314 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1314  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1273,r13		! source line 1273
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1274,r13		! source line 1274
	mov	"\0\0IF",r10
	mov	1274,r13		! source line 1274
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1317) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1315 else goto _Label_1316
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1316
	jmp	_Label_1315
_Label_1315:
! THEN...
	mov	1275,r13		! source line 1275
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1318 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1318  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1275,r13		! source line 1275
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1319
_Label_1316:
! ELSE...
	mov	1277,r13		! source line 1277
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1320 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1320  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1277,r13		! source line 1277
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1319:
! CALL STATEMENT...
!   _temp_1321 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1321  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1279,r13		! source line 1279
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1280,r13		! source line 1280
	mov	"\0\0IF",r10
	mov	1280,r13		! source line 1280
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1324) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1322 else goto _Label_1323
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1323
	jmp	_Label_1322
_Label_1322:
! THEN...
	mov	1281,r13		! source line 1281
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1325 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1325  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1281,r13		! source line 1281
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1326
_Label_1323:
! ELSE...
	mov	1283,r13		! source line 1283
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1327 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1327  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1283,r13		! source line 1283
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1326:
! CALL STATEMENT...
!   _temp_1328 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1328  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1285,r13		! source line 1285
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1286,r13		! source line 1286
	mov	"\0\0IF",r10
	mov	1286,r13		! source line 1286
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1331) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1329 else goto _Label_1330
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1330
	jmp	_Label_1329
_Label_1329:
! THEN...
	mov	1287,r13		! source line 1287
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1332 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1332  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1287,r13		! source line 1287
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1333
_Label_1330:
! ELSE...
	mov	1289,r13		! source line 1289
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1334 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1334  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1289,r13		! source line 1289
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1333:
! CALL STATEMENT...
!   _temp_1335 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1335  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1291,r13		! source line 1291
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1292,r13		! source line 1292
	mov	"\0\0IF",r10
	mov	1292,r13		! source line 1292
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1338) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1336 else goto _Label_1337
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1337
	jmp	_Label_1336
_Label_1336:
! THEN...
	mov	1293,r13		! source line 1293
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1339 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1339  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1293,r13		! source line 1293
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1340
_Label_1337:
! ELSE...
	mov	1295,r13		! source line 1295
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1341 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1341  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1295,r13		! source line 1295
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1340:
! CALL STATEMENT...
!   Call the function
	mov	1297,r13		! source line 1297
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1288:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1286
! END FOR
_Label_1289:
! RETURN STATEMENT...
	mov	1258,r13		! source line 1258
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
	.word	_Label_1342
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1343
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1344
	.word	-12
	.word	4
	.word	_Label_1345
	.word	-16
	.word	4
	.word	_Label_1346
	.word	-20
	.word	4
	.word	_Label_1347
	.word	-24
	.word	4
	.word	_Label_1348
	.word	-28
	.word	4
	.word	_Label_1349
	.word	-32
	.word	4
	.word	_Label_1350
	.word	-36
	.word	4
	.word	_Label_1351
	.word	-40
	.word	4
	.word	_Label_1352
	.word	-44
	.word	4
	.word	_Label_1353
	.word	-48
	.word	4
	.word	_Label_1354
	.word	-52
	.word	4
	.word	_Label_1355
	.word	-56
	.word	4
	.word	_Label_1356
	.word	-60
	.word	4
	.word	_Label_1357
	.word	-64
	.word	4
	.word	_Label_1358
	.word	-68
	.word	4
	.word	_Label_1359
	.word	-72
	.word	4
	.word	_Label_1360
	.word	-76
	.word	4
	.word	_Label_1361
	.word	-80
	.word	4
	.word	_Label_1362
	.word	-84
	.word	4
	.word	_Label_1363
	.word	-88
	.word	4
	.word	_Label_1364
	.word	-92
	.word	4
	.word	_Label_1365
	.word	-96
	.word	4
	.word	_Label_1366
	.word	-100
	.word	4
	.word	_Label_1367
	.word	-104
	.word	4
	.word	_Label_1368
	.word	-108
	.word	4
	.word	_Label_1369
	.word	-112
	.word	4
	.word	_Label_1370
	.word	-116
	.word	4
	.word	_Label_1371
	.word	-120
	.word	4
	.word	_Label_1372
	.word	-124
	.word	4
	.word	_Label_1373
	.word	-128
	.word	4
	.word	_Label_1374
	.word	-132
	.word	4
	.word	_Label_1375
	.word	-136
	.word	4
	.word	_Label_1376
	.word	-140
	.word	4
	.word	_Label_1377
	.word	-144
	.word	4
	.word	_Label_1378
	.word	-148
	.word	4
	.word	_Label_1379
	.word	-152
	.word	4
	.word	_Label_1380
	.word	-156
	.word	4
	.word	_Label_1381
	.word	-160
	.word	4
	.word	_Label_1382
	.word	-164
	.word	4
	.word	_Label_1383
	.word	-168
	.word	4
	.word	0
_Label_1342:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1343:
	.ascii	"Pself\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1325\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1324\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1290\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1285\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1284\0"
	.align
_Label_1383:
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
_Label_1800:
	push	r0
	sub	r1,1,r1
	bne	_Label_1800
	mov	1303,r13		! source line 1303
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1308,r13		! source line 1308
	mov	"\0\0RE",r10
!   _temp_1386 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1386 [entry ] into _temp_1387
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
!   Data Move: _temp_1385 = *_temp_1387  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1384 = _temp_1385 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1384  (sizeInBytes=4)
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
	.word	_Label_1388
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1389
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1390
	.word	12
	.word	4
	.word	_Label_1391
	.word	-12
	.word	4
	.word	_Label_1392
	.word	-16
	.word	4
	.word	_Label_1393
	.word	-20
	.word	4
	.word	_Label_1394
	.word	-24
	.word	4
	.word	0
_Label_1388:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1389:
	.ascii	"Pself\0"
	.align
_Label_1390:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1384\0"
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
_Label_1801:
	push	r0
	sub	r1,1,r1
	bne	_Label_1801
	mov	1313,r13		! source line 1313
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1317,r13		! source line 1317
	mov	"\0\0RE",r10
!   _temp_1397 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1397 [entry ] into _temp_1398
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
!   Data Move: _temp_1396 = *_temp_1398  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1395 = _temp_1396 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1395  (sizeInBytes=4)
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
	.word	_Label_1399
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1400
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1401
	.word	12
	.word	4
	.word	_Label_1402
	.word	-12
	.word	4
	.word	_Label_1403
	.word	-16
	.word	4
	.word	_Label_1404
	.word	-20
	.word	4
	.word	_Label_1405
	.word	-24
	.word	4
	.word	0
_Label_1399:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1400:
	.ascii	"Pself\0"
	.align
_Label_1401:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1395\0"
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
_Label_1802:
	push	r0
	sub	r1,1,r1
	bne	_Label_1802
	mov	1322,r13		! source line 1322
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1327,r13		! source line 1327
	mov	"\0\0AS",r10
!   _temp_1406 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1406 [entry ] into _temp_1407
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
!   _temp_1411 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1411 [entry ] into _temp_1412
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
!   Data Move: _temp_1410 = *_temp_1412  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1409 = _temp_1410 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1408 = _temp_1409 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1407 = _temp_1408  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1327,r13		! source line 1327
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
	.word	_Label_1413
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1414
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1415
	.word	12
	.word	4
	.word	_Label_1416
	.word	16
	.word	4
	.word	_Label_1417
	.word	-12
	.word	4
	.word	_Label_1418
	.word	-16
	.word	4
	.word	_Label_1419
	.word	-20
	.word	4
	.word	_Label_1420
	.word	-24
	.word	4
	.word	_Label_1421
	.word	-28
	.word	4
	.word	_Label_1422
	.word	-32
	.word	4
	.word	_Label_1423
	.word	-36
	.word	4
	.word	0
_Label_1413:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1414:
	.ascii	"Pself\0"
	.align
_Label_1415:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1416:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1418:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1419:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1420:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1406\0"
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
_Label_1803:
	push	r0
	sub	r1,1,r1
	bne	_Label_1803
	mov	1332,r13		! source line 1332
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1336,r13		! source line 1336
	mov	"\0\0RE",r10
!   _temp_1427 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1427 [entry ] into _temp_1428
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
!   Data Move: _temp_1426 = *_temp_1428  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1425 = _temp_1426 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1425) then goto _Label_1429
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1429
!   _temp_1424 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1430
_Label_1429:
!   _temp_1424 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1430:
!   ReturnResult: _temp_1424  (sizeInBytes=1)
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
	.word	_Label_1431
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1432
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1433
	.word	12
	.word	4
	.word	_Label_1434
	.word	-16
	.word	4
	.word	_Label_1435
	.word	-20
	.word	4
	.word	_Label_1436
	.word	-24
	.word	4
	.word	_Label_1437
	.word	-28
	.word	4
	.word	_Label_1438
	.word	-9
	.word	1
	.word	0
_Label_1431:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1432:
	.ascii	"Pself\0"
	.align
_Label_1433:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1438:
	.byte	'C'
	.ascii	"_temp_1424\0"
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
_Label_1804:
	push	r0
	sub	r1,1,r1
	bne	_Label_1804
	mov	1341,r13		! source line 1341
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1345,r13		! source line 1345
	mov	"\0\0RE",r10
!   _temp_1442 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1442 [entry ] into _temp_1443
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
!   Data Move: _temp_1441 = *_temp_1443  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1440 = _temp_1441 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1440) then goto _Label_1444
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1444
!   _temp_1439 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1445
_Label_1444:
!   _temp_1439 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1445:
!   ReturnResult: _temp_1439  (sizeInBytes=1)
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
	.word	_Label_1446
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1447
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1448
	.word	12
	.word	4
	.word	_Label_1449
	.word	-16
	.word	4
	.word	_Label_1450
	.word	-20
	.word	4
	.word	_Label_1451
	.word	-24
	.word	4
	.word	_Label_1452
	.word	-28
	.word	4
	.word	_Label_1453
	.word	-9
	.word	1
	.word	0
_Label_1446:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1447:
	.ascii	"Pself\0"
	.align
_Label_1448:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1440\0"
	.align
_Label_1453:
	.byte	'C'
	.ascii	"_temp_1439\0"
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
_Label_1805:
	push	r0
	sub	r1,1,r1
	bne	_Label_1805
	mov	1350,r13		! source line 1350
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1354,r13		! source line 1354
	mov	"\0\0RE",r10
!   _temp_1457 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1457 [entry ] into _temp_1458
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
!   Data Move: _temp_1456 = *_temp_1458  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1455 = _temp_1456 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1455) then goto _Label_1459
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1459
!   _temp_1454 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1460
_Label_1459:
!   _temp_1454 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1460:
!   ReturnResult: _temp_1454  (sizeInBytes=1)
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
	.word	_Label_1461
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1462
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1463
	.word	12
	.word	4
	.word	_Label_1464
	.word	-16
	.word	4
	.word	_Label_1465
	.word	-20
	.word	4
	.word	_Label_1466
	.word	-24
	.word	4
	.word	_Label_1467
	.word	-28
	.word	4
	.word	_Label_1468
	.word	-9
	.word	1
	.word	0
_Label_1461:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1462:
	.ascii	"Pself\0"
	.align
_Label_1463:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1456\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
_Label_1468:
	.byte	'C'
	.ascii	"_temp_1454\0"
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
_Label_1806:
	push	r0
	sub	r1,1,r1
	bne	_Label_1806
	mov	1359,r13		! source line 1359
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1363,r13		! source line 1363
	mov	"\0\0RE",r10
!   _temp_1472 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1472 [entry ] into _temp_1473
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
!   Data Move: _temp_1471 = *_temp_1473  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1470 = _temp_1471 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1470) then goto _Label_1474
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1474
!   _temp_1469 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1475
_Label_1474:
!   _temp_1469 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1475:
!   ReturnResult: _temp_1469  (sizeInBytes=1)
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
	.word	_Label_1476
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1477
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1478
	.word	12
	.word	4
	.word	_Label_1479
	.word	-16
	.word	4
	.word	_Label_1480
	.word	-20
	.word	4
	.word	_Label_1481
	.word	-24
	.word	4
	.word	_Label_1482
	.word	-28
	.word	4
	.word	_Label_1483
	.word	-9
	.word	1
	.word	0
_Label_1476:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1477:
	.ascii	"Pself\0"
	.align
_Label_1478:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1479:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1483:
	.byte	'C'
	.ascii	"_temp_1469\0"
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
_Label_1807:
	push	r0
	sub	r1,1,r1
	bne	_Label_1807
	mov	1368,r13		! source line 1368
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1372,r13		! source line 1372
	mov	"\0\0AS",r10
!   _temp_1484 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1484 [entry ] into _temp_1485
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
!   _temp_1488 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1488 [entry ] into _temp_1489
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
!   Data Move: _temp_1487 = *_temp_1489  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1486 = _temp_1487 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1485 = _temp_1486  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1372,r13		! source line 1372
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
	.word	_Label_1490
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1491
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1492
	.word	12
	.word	4
	.word	_Label_1493
	.word	-12
	.word	4
	.word	_Label_1494
	.word	-16
	.word	4
	.word	_Label_1495
	.word	-20
	.word	4
	.word	_Label_1496
	.word	-24
	.word	4
	.word	_Label_1497
	.word	-28
	.word	4
	.word	_Label_1498
	.word	-32
	.word	4
	.word	0
_Label_1490:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1491:
	.ascii	"Pself\0"
	.align
_Label_1492:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
_Label_1494:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1487\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1486\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1484\0"
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
_Label_1808:
	push	r0
	sub	r1,1,r1
	bne	_Label_1808
	mov	1377,r13		! source line 1377
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1381,r13		! source line 1381
	mov	"\0\0AS",r10
!   _temp_1499 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1499 [entry ] into _temp_1500
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
!   _temp_1503 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1503 [entry ] into _temp_1504
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
!   Data Move: _temp_1502 = *_temp_1504  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1501 = _temp_1502 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1500 = _temp_1501  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1381,r13		! source line 1381
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
	.word	_Label_1505
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1506
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1507
	.word	12
	.word	4
	.word	_Label_1508
	.word	-12
	.word	4
	.word	_Label_1509
	.word	-16
	.word	4
	.word	_Label_1510
	.word	-20
	.word	4
	.word	_Label_1511
	.word	-24
	.word	4
	.word	_Label_1512
	.word	-28
	.word	4
	.word	_Label_1513
	.word	-32
	.word	4
	.word	0
_Label_1505:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1506:
	.ascii	"Pself\0"
	.align
_Label_1507:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1504\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1503\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1512:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1499\0"
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
_Label_1809:
	push	r0
	sub	r1,1,r1
	bne	_Label_1809
	mov	1386,r13		! source line 1386
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1390,r13		! source line 1390
	mov	"\0\0AS",r10
!   _temp_1514 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1514 [entry ] into _temp_1515
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
!   _temp_1518 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1518 [entry ] into _temp_1519
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
!   Data Move: _temp_1517 = *_temp_1519  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1516 = _temp_1517 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1515 = _temp_1516  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1390,r13		! source line 1390
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
	.word	_Label_1520
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1521
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1522
	.word	12
	.word	4
	.word	_Label_1523
	.word	-12
	.word	4
	.word	_Label_1524
	.word	-16
	.word	4
	.word	_Label_1525
	.word	-20
	.word	4
	.word	_Label_1526
	.word	-24
	.word	4
	.word	_Label_1527
	.word	-28
	.word	4
	.word	_Label_1528
	.word	-32
	.word	4
	.word	0
_Label_1520:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1521:
	.ascii	"Pself\0"
	.align
_Label_1522:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1519\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1516\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1515\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1514\0"
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
_Label_1810:
	push	r0
	sub	r1,1,r1
	bne	_Label_1810
	mov	1395,r13		! source line 1395
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1399,r13		! source line 1399
	mov	"\0\0AS",r10
!   _temp_1529 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1529 [entry ] into _temp_1530
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
!   _temp_1533 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1533 [entry ] into _temp_1534
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
!   Data Move: _temp_1532 = *_temp_1534  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1531 = _temp_1532 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1530 = _temp_1531  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1399,r13		! source line 1399
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
	.word	_Label_1535
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1536
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1537
	.word	12
	.word	4
	.word	_Label_1538
	.word	-12
	.word	4
	.word	_Label_1539
	.word	-16
	.word	4
	.word	_Label_1540
	.word	-20
	.word	4
	.word	_Label_1541
	.word	-24
	.word	4
	.word	_Label_1542
	.word	-28
	.word	4
	.word	_Label_1543
	.word	-32
	.word	4
	.word	0
_Label_1535:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1536:
	.ascii	"Pself\0"
	.align
_Label_1537:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1534\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1529\0"
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
_Label_1811:
	push	r0
	sub	r1,1,r1
	bne	_Label_1811
	mov	1404,r13		! source line 1404
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1408,r13		! source line 1408
	mov	"\0\0AS",r10
!   _temp_1544 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1544 [entry ] into _temp_1545
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
!   _temp_1548 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1548 [entry ] into _temp_1549
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
!   Data Move: _temp_1547 = *_temp_1549  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1546 = _temp_1547 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1545 = _temp_1546  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1408,r13		! source line 1408
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
	.word	_Label_1550
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1551
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1552
	.word	12
	.word	4
	.word	_Label_1553
	.word	-12
	.word	4
	.word	_Label_1554
	.word	-16
	.word	4
	.word	_Label_1555
	.word	-20
	.word	4
	.word	_Label_1556
	.word	-24
	.word	4
	.word	_Label_1557
	.word	-28
	.word	4
	.word	_Label_1558
	.word	-32
	.word	4
	.word	0
_Label_1550:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1551:
	.ascii	"Pself\0"
	.align
_Label_1552:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1544\0"
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
_Label_1812:
	push	r0
	sub	r1,1,r1
	bne	_Label_1812
	mov	1413,r13		! source line 1413
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1417,r13		! source line 1417
	mov	"\0\0AS",r10
!   _temp_1559 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1559 [entry ] into _temp_1560
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
!   _temp_1563 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1563 [entry ] into _temp_1564
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
!   Data Move: _temp_1562 = *_temp_1564  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1561 = _temp_1562 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1560 = _temp_1561  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1417,r13		! source line 1417
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
	.word	_Label_1565
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1566
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1567
	.word	12
	.word	4
	.word	_Label_1568
	.word	-12
	.word	4
	.word	_Label_1569
	.word	-16
	.word	4
	.word	_Label_1570
	.word	-20
	.word	4
	.word	_Label_1571
	.word	-24
	.word	4
	.word	_Label_1572
	.word	-28
	.word	4
	.word	_Label_1573
	.word	-32
	.word	4
	.word	0
_Label_1565:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1566:
	.ascii	"Pself\0"
	.align
_Label_1567:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1564\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1563\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1562\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1561\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1560\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1559\0"
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
_Label_1813:
	push	r0
	sub	r1,1,r1
	bne	_Label_1813
	mov	1422,r13		! source line 1422
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1426,r13		! source line 1426
	mov	"\0\0AS",r10
!   _temp_1574 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1574 [entry ] into _temp_1575
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
!   _temp_1578 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1578 [entry ] into _temp_1579
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
!   Data Move: _temp_1577 = *_temp_1579  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1576 = _temp_1577 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1575 = _temp_1576  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1426,r13		! source line 1426
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
	.word	_Label_1580
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1581
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1582
	.word	12
	.word	4
	.word	_Label_1583
	.word	-12
	.word	4
	.word	_Label_1584
	.word	-16
	.word	4
	.word	_Label_1585
	.word	-20
	.word	4
	.word	_Label_1586
	.word	-24
	.word	4
	.word	_Label_1587
	.word	-28
	.word	4
	.word	_Label_1588
	.word	-32
	.word	4
	.word	0
_Label_1580:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1581:
	.ascii	"Pself\0"
	.align
_Label_1582:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1579\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1578\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1577\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1576\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1575\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1574\0"
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
_Label_1814:
	push	r0
	sub	r1,1,r1
	bne	_Label_1814
	mov	1431,r13		! source line 1431
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1435,r13		! source line 1435
	mov	"\0\0AS",r10
!   _temp_1589 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1589 [entry ] into _temp_1590
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
!   _temp_1593 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1593 [entry ] into _temp_1594
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
!   Data Move: _temp_1592 = *_temp_1594  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1591 = _temp_1592 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1590 = _temp_1591  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1435,r13		! source line 1435
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
	.word	_Label_1595
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1596
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1597
	.word	12
	.word	4
	.word	_Label_1598
	.word	-12
	.word	4
	.word	_Label_1599
	.word	-16
	.word	4
	.word	_Label_1600
	.word	-20
	.word	4
	.word	_Label_1601
	.word	-24
	.word	4
	.word	_Label_1602
	.word	-28
	.word	4
	.word	_Label_1603
	.word	-32
	.word	4
	.word	0
_Label_1595:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1596:
	.ascii	"Pself\0"
	.align
_Label_1597:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1594\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1593\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1592\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1591\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1590\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1589\0"
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
_Label_1815:
	push	r0
	sub	r1,1,r1
	bne	_Label_1815
	mov	1440,r13		! source line 1440
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1605 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1605 [0 ] into _temp_1606
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
!   _temp_1604 = _temp_1606		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1607 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1604  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1607  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1446,r13		! source line 1446
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1446,r13		! source line 1446
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
	.word	_Label_1608
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1609
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1610
	.word	-12
	.word	4
	.word	_Label_1611
	.word	-16
	.word	4
	.word	_Label_1612
	.word	-20
	.word	4
	.word	_Label_1613
	.word	-24
	.word	4
	.word	0
_Label_1608:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1609:
	.ascii	"Pself\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1607\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1606\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1605\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1604\0"
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
_Label_1816:
	push	r0
	sub	r1,1,r1
	bne	_Label_1816
	mov	1451,r13		! source line 1451
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1466,r13		! source line 1466
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1614
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1614
	jmp	_Label_1615
_Label_1614:
! THEN...
	mov	1467,r13		! source line 1467
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1467,r13		! source line 1467
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1616
_Label_1615:
! ELSE...
	mov	1468,r13		! source line 1468
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1468,r13		! source line 1468
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1618		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1618
!	jmp	_Label_1617
_Label_1617:
! THEN...
	mov	1469,r13		! source line 1469
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1469,r13		! source line 1469
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1618:
! END IF...
_Label_1616:
! ASSIGNMENT STATEMENT...
	mov	1471,r13		! source line 1471
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
	mov	1472,r13		! source line 1472
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
	mov	1475,r13		! source line 1475
	mov	"\0\0WH",r10
_Label_1619:
!	jmp	_Label_1620
_Label_1620:
	mov	1475,r13		! source line 1475
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1476,r13		! source line 1476
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1623		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1623
!	jmp	_Label_1622
_Label_1622:
! THEN...
	mov	1477,r13		! source line 1477
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1624 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1624  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1477,r13		! source line 1477
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1478,r13		! source line 1478
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1623:
! IF STATEMENT...
	mov	1480,r13		! source line 1480
	mov	"\0\0IF",r10
	mov	1480,r13		! source line 1480
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1628) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1627  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1627 then goto _Label_1626 else goto _Label_1625
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1625
	jmp	_Label_1626
_Label_1625:
! THEN...
	mov	1481,r13		! source line 1481
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1629 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1629  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1481,r13		! source line 1481
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1482,r13		! source line 1482
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1626:
! ASSIGNMENT STATEMENT...
	mov	1484,r13		! source line 1484
	mov	"\0\0AS",r10
	mov	1484,r13		! source line 1484
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1631) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1630  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1630 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1486,r13		! source line 1486
	mov	"\0\0WH",r10
_Label_1632:
!   if offset >= 8192 then goto _Label_1634		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1634
!	jmp	_Label_1633
_Label_1633:
	mov	1486,r13		! source line 1486
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1489,r13		! source line 1489
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1635 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_1635  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1490,r13		! source line 1490
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1491,r13		! source line 1491
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1492,r13		! source line 1492
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1493,r13		! source line 1493
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1494,r13		! source line 1494
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1637		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1637
!	jmp	_Label_1636
_Label_1636:
! THEN...
	mov	1495,r13		! source line 1495
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1495,r13		! source line 1495
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1637:
! END WHILE...
	jmp	_Label_1632
_Label_1634:
! ASSIGNMENT STATEMENT...
	mov	1498,r13		! source line 1498
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1499,r13		! source line 1499
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_1619
_Label_1621:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_1638
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1639
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1640
	.word	12
	.word	4
	.word	_Label_1641
	.word	16
	.word	4
	.word	_Label_1642
	.word	20
	.word	4
	.word	_Label_1643
	.word	-9
	.word	1
	.word	_Label_1644
	.word	-16
	.word	4
	.word	_Label_1645
	.word	-20
	.word	4
	.word	_Label_1646
	.word	-24
	.word	4
	.word	_Label_1647
	.word	-28
	.word	4
	.word	_Label_1648
	.word	-10
	.word	1
	.word	_Label_1649
	.word	-32
	.word	4
	.word	_Label_1650
	.word	-36
	.word	4
	.word	_Label_1651
	.word	-40
	.word	4
	.word	_Label_1652
	.word	-44
	.word	4
	.word	_Label_1653
	.word	-48
	.word	4
	.word	0
_Label_1638:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_1639:
	.ascii	"Pself\0"
	.align
_Label_1640:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1641:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1642:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1643:
	.byte	'C'
	.ascii	"_temp_1635\0"
	.align
_Label_1644:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1645:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1646:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1648:
	.byte	'C'
	.ascii	"_temp_1627\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1624\0"
	.align
_Label_1650:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1651:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1652:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1653:
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
_Label_1817:
	push	r0
	sub	r1,1,r1
	bne	_Label_1817
	mov	1505,r13		! source line 1505
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1516,r13		! source line 1516
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1654
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1654
	jmp	_Label_1655
_Label_1654:
! THEN...
	mov	1517,r13		! source line 1517
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1517,r13		! source line 1517
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1656
_Label_1655:
! ELSE...
	mov	1518,r13		! source line 1518
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1518,r13		! source line 1518
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1658		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1658
!	jmp	_Label_1657
_Label_1657:
! THEN...
	mov	1519,r13		! source line 1519
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1519,r13		! source line 1519
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1658:
! END IF...
_Label_1656:
! ASSIGNMENT STATEMENT...
	mov	1521,r13		! source line 1521
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
	mov	1522,r13		! source line 1522
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
	mov	1523,r13		! source line 1523
	mov	"\0\0WH",r10
_Label_1659:
!	jmp	_Label_1660
_Label_1660:
	mov	1523,r13		! source line 1523
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1524,r13		! source line 1524
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1665		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1665
	jmp	_Label_1662
_Label_1665:
	mov	1525,r13		! source line 1525
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1667) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1666  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1666 then goto _Label_1664 else goto _Label_1662
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1662
	jmp	_Label_1664
_Label_1664:
	mov	1526,r13		! source line 1526
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1669) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1668  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1668 then goto _Label_1663 else goto _Label_1662
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1662
	jmp	_Label_1663
_Label_1662:
! THEN...
	mov	1527,r13		! source line 1527
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1527,r13		! source line 1527
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1663:
! ASSIGNMENT STATEMENT...
	mov	1529,r13		! source line 1529
	mov	"\0\0AS",r10
	mov	1529,r13		! source line 1529
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1671) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1670  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_1670 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1530,r13		! source line 1530
	mov	"\0\0WH",r10
_Label_1672:
!   if offset >= 8192 then goto _Label_1674		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1674
!	jmp	_Label_1673
_Label_1673:
	mov	1530,r13		! source line 1530
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1531,r13		! source line 1531
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1675 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_1675  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1532,r13		! source line 1532
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1533,r13		! source line 1533
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1534,r13		! source line 1534
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1535,r13		! source line 1535
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1536,r13		! source line 1536
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1677		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1677
!	jmp	_Label_1676
_Label_1676:
! THEN...
	mov	1537,r13		! source line 1537
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1537,r13		! source line 1537
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1677:
! END WHILE...
	jmp	_Label_1672
_Label_1674:
! ASSIGNMENT STATEMENT...
	mov	1540,r13		! source line 1540
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1541,r13		! source line 1541
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_1659
_Label_1661:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_1678
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1679
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1680
	.word	12
	.word	4
	.word	_Label_1681
	.word	16
	.word	4
	.word	_Label_1682
	.word	20
	.word	4
	.word	_Label_1683
	.word	-9
	.word	1
	.word	_Label_1684
	.word	-16
	.word	4
	.word	_Label_1685
	.word	-20
	.word	4
	.word	_Label_1686
	.word	-24
	.word	4
	.word	_Label_1687
	.word	-10
	.word	1
	.word	_Label_1688
	.word	-28
	.word	4
	.word	_Label_1689
	.word	-11
	.word	1
	.word	_Label_1690
	.word	-32
	.word	4
	.word	_Label_1691
	.word	-36
	.word	4
	.word	_Label_1692
	.word	-40
	.word	4
	.word	_Label_1693
	.word	-44
	.word	4
	.word	0
_Label_1678:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_1679:
	.ascii	"Pself\0"
	.align
_Label_1680:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1681:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1682:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1683:
	.byte	'C'
	.ascii	"_temp_1675\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1669\0"
	.align
_Label_1687:
	.byte	'C'
	.ascii	"_temp_1668\0"
	.align
_Label_1688:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
_Label_1689:
	.byte	'C'
	.ascii	"_temp_1666\0"
	.align
_Label_1690:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1691:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1692:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1693:
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
_Label_1818:
	push	r0
	sub	r1,1,r1
	bne	_Label_1818
	mov	1547,r13		! source line 1547
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1571,r13		! source line 1571
	mov	"\0\0IF",r10
	mov	1571,r13		! source line 1571
	mov	"\0\0SE",r10
!   _temp_1697 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1698) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1697  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_1696  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_1696 >= 4 then goto _Label_1695		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1695
!	jmp	_Label_1694
_Label_1694:
! THEN...
	mov	1574,r13		! source line 1574
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1574,r13		! source line 1574
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1695:
! IF STATEMENT...
	mov	1578,r13		! source line 1578
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_1700		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1700
!	jmp	_Label_1699
_Label_1699:
! THEN...
	mov	1579,r13		! source line 1579
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1579,r13		! source line 1579
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1700:
! ASSIGNMENT STATEMENT...
	mov	1582,r13		! source line 1582
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
	mov	1584,r13		! source line 1584
	mov	"\0\0RE",r10
	mov	1584,r13		! source line 1584
	mov	"\0\0SE",r10
!   _temp_1703 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_1702 = _temp_1703 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_1704 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_1705) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1702  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1704  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_1701  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_1701  (sizeInBytes=4)
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
	.word	_Label_1706
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1707
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1708
	.word	12
	.word	4
	.word	_Label_1709
	.word	16
	.word	4
	.word	_Label_1710
	.word	20
	.word	4
	.word	_Label_1711
	.word	-12
	.word	4
	.word	_Label_1712
	.word	-16
	.word	4
	.word	_Label_1713
	.word	-20
	.word	4
	.word	_Label_1714
	.word	-24
	.word	4
	.word	_Label_1715
	.word	-28
	.word	4
	.word	_Label_1716
	.word	-32
	.word	4
	.word	_Label_1717
	.word	-36
	.word	4
	.word	_Label_1718
	.word	-40
	.word	4
	.word	_Label_1719
	.word	-44
	.word	4
	.word	0
_Label_1706:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_1707:
	.ascii	"Pself\0"
	.align
_Label_1708:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_1709:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1710:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_1711:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1719:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
