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
	.export	_P_Kernel_InitFirstProcess
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
! The following class and its methods are from this package
	.export	_P_Kernel_DiskDriver
	.export	_Method_P_Kernel_DiskDriver_1
	.export	_Method_P_Kernel_DiskDriver_2
	.export	_Method_P_Kernel_DiskDriver_3
	.export	_Method_P_Kernel_DiskDriver_4
	.export	_Method_P_Kernel_DiskDriver_5
! The following class and its methods are from this package
	.export	_P_Kernel_FileManager
	.export	_Method_P_Kernel_FileManager_1
	.export	_Method_P_Kernel_FileManager_2
	.export	_Method_P_Kernel_FileManager_3
	.export	_Method_P_Kernel_FileManager_4
	.export	_Method_P_Kernel_FileManager_5
	.export	_Method_P_Kernel_FileManager_6
	.export	_Method_P_Kernel_FileManager_7
	.export	_Method_P_Kernel_FileManager_8
! The following class and its methods are from this package
	.export	_P_Kernel_FileControlBlock
	.export	_Method_P_Kernel_FileControlBlock_1
	.export	_Method_P_Kernel_FileControlBlock_2
! The following class and its methods are from this package
	.export	_P_Kernel_OpenFile
	.export	_Method_P_Kernel_OpenFile_1
	.export	_Method_P_Kernel_OpenFile_2
	.export	_Method_P_Kernel_OpenFile_3
	.export	_Method_P_Kernel_OpenFile_4
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
	.export	_P_Kernel_diskDriver
	.export	_P_Kernel_fileManager
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
_P_Kernel_diskDriver:
	.skip	68
_P_Kernel_fileManager:
	.skip	960
	.align
! String constants
_StringConst_208:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_207:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_206:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_205:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_204:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_203:
	.word	52			! length
	.ascii	"LoadExecutable: The address space just allocated...\n"
	.align
_StringConst_202:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_201:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_200:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_199:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_198:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_197:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_196:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_195:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_194:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_193:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_192:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_191:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_190:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_189:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_188:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_187:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_186:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_185:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_184:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_183:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_182:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_181:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_180:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_179:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_178:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_177:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_176:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_175:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_174:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_173:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_172:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_171:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_170:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_169:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_168:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_167:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_166:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_165:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_164:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_163:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_162:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_161:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_160:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_159:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_158:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_157:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_156:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_155:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_154:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_153:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_152:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_151:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_150:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_149:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_148:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_147:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_146:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_145:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_144:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_143:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_142:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_141:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_140:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_139:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_138:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_137:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_136:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_135:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_134:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_133:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_132:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_131:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_130:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_129:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_128:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_127:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_126:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_125:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_124:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_123:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_122:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_121:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_120:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_119:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_118:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_117:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_116:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_115:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_114:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_113:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_112:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_111:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_110:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_109:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_108:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_107:
	.word	11			! length
	.ascii	"Test Thread"
	.align
_StringConst_106:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_105:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_104:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_103:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_102:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_101:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_100:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_99:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_98:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_97:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_96:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_95:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_94:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_93:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_92:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_91:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_90:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_89:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_88:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_87:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_86:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_85:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_84:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_83:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_82:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_81:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_80:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_79:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_78:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_77:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_76:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_75:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_74:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_73:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_72:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_71:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_70:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_69:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_68:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_67:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_66:
	.word	10			! length
	.ascii	"fileDesc: "
	.align
_StringConst_65:
	.word	27			! length
	.ascii	"Handle_Sys_Close invoked! \n"
	.align
_StringConst_64:
	.word	15			! length
	.ascii	"newCurrentPos: "
	.align
_StringConst_63:
	.word	10			! length
	.ascii	"fileDesc: "
	.align
_StringConst_62:
	.word	26			! length
	.ascii	"Handle_Sys_Seek invoked! \n"
	.align
_StringConst_61:
	.word	13			! length
	.ascii	"sizeInBytes: "
	.align
_StringConst_60:
	.word	8			! length
	.ascii	"buffer: "
	.align
_StringConst_59:
	.word	10			! length
	.ascii	"fileDesc: "
	.align
_StringConst_58:
	.word	27			! length
	.ascii	"Handle_Sys_Write invoked! \n"
	.align
_StringConst_57:
	.word	13			! length
	.ascii	"sizeInBytes: "
	.align
_StringConst_56:
	.word	8			! length
	.ascii	"buffer: "
	.align
_StringConst_55:
	.word	11			! length
	.ascii	"file Desc: "
	.align
_StringConst_54:
	.word	26			! length
	.ascii	"Handle_Sys_Read invoked! \n"
	.align
_StringConst_53:
	.word	26			! length
	.ascii	"Handle_SYs_Open invoked! \n"
	.align
_StringConst_52:
	.word	29			! length
	.ascii	"Virtual address of filename: "
	.align
_StringConst_51:
	.word	28			! length
	.ascii	"Handle_Sys_Create invoked! \n"
	.align
_StringConst_50:
	.word	26			! length
	.ascii	"Handle_Sys_Exec Invoked! \n"
	.align
_StringConst_49:
	.word	11			! length
	.ascii	"processID: "
	.align
_StringConst_48:
	.word	26			! length
	.ascii	"Handle_Sys_Join invoked! \n"
	.align
_StringConst_47:
	.word	26			! length
	.ascii	"Handle_Sys_Fork invoked! \n"
	.align
_StringConst_46:
	.word	26			! length
	.ascii	"Handle_Sys_Yield invoked!\n"
	.align
_StringConst_45:
	.word	44			! length
	.ascii	"Syscall Shutdown was called by a user thread"
	.align
_StringConst_44:
	.word	29			! length
	.ascii	"Handle_Sys_Shutdown invoked!\n"
	.align
_StringConst_43:
	.word	15			! length
	.ascii	"Return Status: "
	.align
_StringConst_42:
	.word	25			! length
	.ascii	"Handle_Sys_Exit invoked!\n"
	.align
_StringConst_41:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_40:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_39:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_38:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_37:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_36:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_35:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_34:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_33:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_32:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_31:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_29:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_28:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_27:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_26:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_25:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_24:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_23:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_22:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_21:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_20:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_19:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_18:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_17:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_16:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_15:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_14:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_13:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_12:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_11:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_10:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_9:
	.word	11			! length
	.ascii	"initPC is: "
	.align
_StringConst_8:
	.word	23			! length
	.ascii	"InitSystemStackTop is: "
	.align
_StringConst_7:
	.word	21			! length
	.ascii	"InitStackUserTop is: "
	.align
_StringConst_6:
	.word	17			! length
	.ascii	"Number of pages: "
	.align
_StringConst_5:
	.word	12			! length
	.ascii	"TestProgram1"
	.align
_StringConst_4:
	.word	11			! length
	.ascii	"UserProgram"
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
	set	0x06f345b1,r4		! myHashVal = 116606385
	cmp	r3,r4
	be	_Label_217
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
_Label_217:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_218
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_218
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_218
_Label_218:
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
_Label_2880:
	push	r0
	sub	r1,1,r1
	bne	_Label_2880
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_219 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_219  sizeInBytes=4
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
_Label_2881:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2881
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_223 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_224 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_223  sizeInBytes=4
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
!   _temp_225 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_226 = _temp_225 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_226 = 3  (sizeInBytes=4)
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
_Label_2882:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2882
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_228 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_229 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_228  sizeInBytes=4
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
!   _temp_230 = _function_215_IdleFunction
	set	_function_215_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_231 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_230  sizeInBytes=4
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
	.word	_Label_232
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_233
	.word	-12
	.word	4
	.word	_Label_234
	.word	-16
	.word	4
	.word	_Label_235
	.word	-20
	.word	4
	.word	_Label_236
	.word	-24
	.word	4
	.word	_Label_237
	.word	-28
	.word	4
	.word	_Label_238
	.word	-32
	.word	4
	.word	_Label_239
	.word	-36
	.word	4
	.word	_Label_240
	.word	-40
	.word	4
	.word	_Label_241
	.word	-44
	.word	4
	.word	_Label_242
	.word	-48
	.word	4
	.word	_Label_243
	.word	-52
	.word	4
	.word	_Label_244
	.word	-56
	.word	4
	.word	_Label_245
	.word	-60
	.word	4
	.word	0
_Label_232:
	.ascii	"InitializeScheduler\0"
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
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
! 
! ===============  FUNCTION InitFirstProcess  ===============
! 
_P_Kernel_InitFirstProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitFirstProcess,r1
	push	r1
	mov	7,r1
_Label_2883:
	push	r0
	sub	r1,1,r1
	bne	_Label_2883
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	40,r13		! source line 40
	mov	"\0\0AS",r10
	mov	40,r13		! source line 40
	mov	"\0\0SE",r10
!   _temp_246 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-20]
!   Send message GetANewThread
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	41,r13		! source line 41
	mov	"\0\0SE",r10
!   _temp_247 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-16]
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_247  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0SE",r10
!   _temp_248 = _function_216_StartUserProcess
	set	_function_216_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_248  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_249
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_250
	.word	-12
	.word	4
	.word	_Label_251
	.word	-16
	.word	4
	.word	_Label_252
	.word	-20
	.word	4
	.word	_Label_253
	.word	-24
	.word	4
	.word	0
_Label_249:
	.ascii	"InitFirstProcess\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_253:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_216_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_216_StartUserProcess,r1
	push	r1
	mov	33,r1
_Label_2884:
	push	r0
	sub	r1,1,r1
	bne	_Label_2884
	mov	47,r13		! source line 47
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	64,r13		! source line 64
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	64,r13		! source line 64
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=OldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	65,r13		! source line 65
	mov	"\0\0AS",r10
	mov	65,r13		! source line 65
	mov	"\0\0SE",r10
!   _temp_254 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-104]
!   Send message GetANewProcess
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
! SEND STATEMENT...
	mov	66,r13		! source line 66
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Init
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_255 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: *_temp_255 = pcb  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r14+-100],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_256 = pcb + 24
	load	[r14+-108],r1
	add	r1,24,r1
	store	r1,[r14+-96]
!   Data Move: *_temp_256 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-96],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	69,r13		! source line 69
	mov	"\0\0AS",r10
	mov	69,r13		! source line 69
	mov	"\0\0SE",r10
!   _temp_257 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-92]
!   _temp_258 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=_temp_257  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=openFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0AS",r10
	mov	70,r13		! source line 70
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_260 = pcb + 32
	load	[r14+-108],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   _temp_259 = _temp_260		(4 bytes)
	load	[r14+-80],r1
	store	r1,[r14+-84]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_259  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-116]
! SEND STATEMENT...
	mov	71,r13		! source line 71
	mov	"\0\0SE",r10
!   _temp_261 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   _temp_262 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_262  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	72,r13		! source line 72
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_264 = pcb + 32
	load	[r14+-108],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   _temp_265 = _temp_264 + 4
	load	[r14+-64],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Data Move: _temp_263 = *_temp_265  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_263  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	73,r13		! source line 73
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	74,r13		! source line 74
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	75,r13		! source line 75
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_267 = pcb + 32
	load	[r14+-108],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   _temp_268 = _temp_267 + 4
	load	[r14+-52],r1
	add	r1,4,r1
	store	r1,[r14+-48]
!   Data Move: _temp_266 = *_temp_268  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   InitStackUserTop = _temp_266 * 8192		(int)
	load	[r14+-56],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	77,r13		! source line 77
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_269 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-44]
!   Move address of _temp_269 [999 ] into _temp_270
!     make sure index expr is >= 0
	mov	999,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   InitSystemStackTop = _temp_270		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-124]
! SEND STATEMENT...
	mov	82,r13		! source line 82
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_271 = pcb + 32
	load	[r14+-108],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Send message SetToThisPageTable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_272 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_272 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_273 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_273  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	89,r13		! source line 89
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=InitStackUserTop  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	90,r13		! source line 90
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	91,r13		! source line 91
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_274 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_274  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	92,r13		! source line 92
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (InitSystemStackTop) then goto _runtimeErrorNullPointer
	load	[r14+-124],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_275 = *InitSystemStackTop  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_275  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	93,r13		! source line 93
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	94,r13		! source line 94
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_276 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_276  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	95,r13		! source line 95
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initPC  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	96,r13		! source line 96
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	97,r13		! source line 97
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_277 = InitSystemStackTop		(4 bytes)
	load	[r14+-124],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=InitStackUserTop  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_277  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	99,r13		! source line 99
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	99,r13		! source line 99
	mov	"\0\0RE",r10
	add	r15,136,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_216_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_278
	.word	4		! total size of parameters
	.word	132		! frame size = 132
	.word	_Label_279
	.word	8
	.word	4
	.word	_Label_280
	.word	-12
	.word	4
	.word	_Label_281
	.word	-16
	.word	4
	.word	_Label_282
	.word	-20
	.word	4
	.word	_Label_283
	.word	-24
	.word	4
	.word	_Label_284
	.word	-28
	.word	4
	.word	_Label_285
	.word	-32
	.word	4
	.word	_Label_286
	.word	-36
	.word	4
	.word	_Label_287
	.word	-40
	.word	4
	.word	_Label_288
	.word	-44
	.word	4
	.word	_Label_289
	.word	-48
	.word	4
	.word	_Label_290
	.word	-52
	.word	4
	.word	_Label_291
	.word	-56
	.word	4
	.word	_Label_292
	.word	-60
	.word	4
	.word	_Label_293
	.word	-64
	.word	4
	.word	_Label_294
	.word	-68
	.word	4
	.word	_Label_295
	.word	-72
	.word	4
	.word	_Label_296
	.word	-76
	.word	4
	.word	_Label_297
	.word	-80
	.word	4
	.word	_Label_298
	.word	-84
	.word	4
	.word	_Label_299
	.word	-88
	.word	4
	.word	_Label_300
	.word	-92
	.word	4
	.word	_Label_301
	.word	-96
	.word	4
	.word	_Label_302
	.word	-100
	.word	4
	.word	_Label_303
	.word	-104
	.word	4
	.word	_Label_304
	.word	-108
	.word	4
	.word	_Label_305
	.word	-112
	.word	4
	.word	_Label_306
	.word	-116
	.word	4
	.word	_Label_307
	.word	-120
	.word	4
	.word	_Label_308
	.word	-124
	.word	4
	.word	_Label_309
	.word	-128
	.word	4
	.word	0
_Label_278:
	.ascii	"StartUserProcess\0"
	.align
_Label_279:
	.byte	'I'
	.ascii	"p\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_304:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_305:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_306:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_307:
	.byte	'I'
	.ascii	"InitStackUserTop\0"
	.align
_Label_308:
	.byte	'P'
	.ascii	"InitSystemStackTop\0"
	.align
_Label_309:
	.byte	'I'
	.ascii	"OldIntStat\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_215_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_215_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_2885:
	push	r0
	sub	r1,1,r1
	bne	_Label_2885
	mov	109,r13		! source line 109
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	119,r13		! source line 119
	mov	"\0\0WH",r10
_Label_310:
!	jmp	_Label_311
_Label_311:
	mov	119,r13		! source line 119
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	120,r13		! source line 120
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	120,r13		! source line 120
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	121,r13		! source line 121
	mov	"\0\0IF",r10
	mov	121,r13		! source line 121
	mov	"\0\0SE",r10
!   _temp_315 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_313 else goto _Label_314
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_314
	jmp	_Label_313
_Label_313:
! THEN...
	mov	122,r13		! source line 122
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	122,r13		! source line 122
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_316
_Label_314:
! ELSE...
	mov	124,r13		! source line 124
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	124,r13		! source line 124
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
_Label_316:
! END WHILE...
	jmp	_Label_310
_Label_312:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_215_IdleFunction:
	.word	_sourceFileName
	.word	_Label_317
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_318
	.word	8
	.word	4
	.word	_Label_319
	.word	-12
	.word	4
	.word	_Label_320
	.word	-16
	.word	4
	.word	0
_Label_317:
	.ascii	"IdleFunction\0"
	.align
_Label_318:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
_Label_320:
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
_Label_2886:
	push	r0
	sub	r1,1,r1
	bne	_Label_2886
	mov	131,r13		! source line 131
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	145,r13		! source line 145
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
	mov	147,r13		! source line 147
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_323 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_323 ) then goto _Label_322		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_322
!	jmp	_Label_321
_Label_321:
! THEN...
	mov	148,r13		! source line 148
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_325 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_325 [0 ] into _temp_326
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
!   _temp_324 = _temp_326		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_324  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	148,r13		! source line 148
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_322:
! ASSIGNMENT STATEMENT...
	mov	150,r13		! source line 150
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_327 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_327 = 3  (sizeInBytes=4)
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
	mov	157,r13		! source line 157
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	161,r13		! source line 161
	mov	"\0\0WH",r10
_Label_328:
	mov	161,r13		! source line 161
	mov	"\0\0SE",r10
!   _temp_332 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_331  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_331 then goto _Label_330 else goto _Label_329
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_329
	jmp	_Label_330
_Label_329:
	mov	161,r13		! source line 161
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	162,r13		! source line 162
	mov	"\0\0AS",r10
	mov	162,r13		! source line 162
	mov	"\0\0SE",r10
!   _temp_333 = &_P_Kernel_threadsToBeDestroyed
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
	mov	163,r13		! source line 163
	mov	"\0\0SE",r10
!   _temp_334 = &_P_Kernel_threadManager
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
	jmp	_Label_328
_Label_330:
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_337 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_337 ) then goto _Label_336		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_336
!	jmp	_Label_335
_Label_335:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_339 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_339 [0 ] into _temp_340
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
!   _temp_338 = _temp_340		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_338  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	168,r13		! source line 168
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_342 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_341 = *_temp_342  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_341) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_343 = _temp_341 + 32
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
_Label_336:
! RETURN STATEMENT...
	mov	166,r13		! source line 166
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
	.word	_Label_344
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_345
	.word	8
	.word	4
	.word	_Label_346
	.word	-16
	.word	4
	.word	_Label_347
	.word	-20
	.word	4
	.word	_Label_348
	.word	-24
	.word	4
	.word	_Label_349
	.word	-28
	.word	4
	.word	_Label_350
	.word	-32
	.word	4
	.word	_Label_351
	.word	-36
	.word	4
	.word	_Label_352
	.word	-40
	.word	4
	.word	_Label_353
	.word	-44
	.word	4
	.word	_Label_354
	.word	-48
	.word	4
	.word	_Label_355
	.word	-52
	.word	4
	.word	_Label_356
	.word	-9
	.word	1
	.word	_Label_357
	.word	-56
	.word	4
	.word	_Label_358
	.word	-60
	.word	4
	.word	_Label_359
	.word	-64
	.word	4
	.word	_Label_360
	.word	-68
	.word	4
	.word	_Label_361
	.word	-72
	.word	4
	.word	_Label_362
	.word	-76
	.word	4
	.word	_Label_363
	.word	-80
	.word	4
	.word	0
_Label_344:
	.ascii	"Run\0"
	.align
_Label_345:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_346:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_347:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_348:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_349:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_350:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_351:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_352:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_356:
	.byte	'C'
	.ascii	"_temp_331\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_362:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_363:
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
_Label_2887:
	push	r0
	sub	r1,1,r1
	bne	_Label_2887
	mov	174,r13		! source line 174
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	181,r13		! source line 181
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	181,r13		! source line 181
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_364 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_364  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	182,r13		! source line 182
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	183,r13		! source line 183
	mov	"\0\0SE",r10
!   _temp_365 = _function_214_ThreadPrintShort
	set	_function_214_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_366 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_365  sizeInBytes=4
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
	mov	184,r13		! source line 184
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	184,r13		! source line 184
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	184,r13		! source line 184
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
	.word	_Label_367
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_368
	.word	-12
	.word	4
	.word	_Label_369
	.word	-16
	.word	4
	.word	_Label_370
	.word	-20
	.word	4
	.word	_Label_371
	.word	-24
	.word	4
	.word	0
_Label_367:
	.ascii	"PrintReadyList\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_366\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_365\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_371:
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
_Label_2888:
	push	r0
	sub	r1,1,r1
	bne	_Label_2888
	mov	189,r13		! source line 189
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	201,r13		! source line 201
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	201,r13		! source line 201
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	202,r13		! source line 202
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_372 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_372  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_374 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_373 = *_temp_374  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_373  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	203,r13		! source line 203
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	204,r13		! source line 204
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_375 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_375  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	205,r13		! source line 205
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	205,r13		! source line 205
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
	.word	_Label_376
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_377
	.word	-12
	.word	4
	.word	_Label_378
	.word	-16
	.word	4
	.word	_Label_379
	.word	-20
	.word	4
	.word	_Label_380
	.word	-24
	.word	4
	.word	_Label_381
	.word	-28
	.word	4
	.word	_Label_382
	.word	-32
	.word	4
	.word	0
_Label_376:
	.ascii	"ThreadStartMain\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_381:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_382:
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
_Label_2889:
	push	r0
	sub	r1,1,r1
	bne	_Label_2889
	mov	210,r13		! source line 210
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	221,r13		! source line 221
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	221,r13		! source line 221
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	225,r13		! source line 225
	mov	"\0\0SE",r10
!   _temp_383 = &_P_Kernel_threadsToBeDestroyed
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
	mov	226,r13		! source line 226
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
!   _temp_384 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_384  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	228,r13		! source line 228
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	228,r13		! source line 228
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
	.word	_Label_385
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_386
	.word	-12
	.word	4
	.word	_Label_387
	.word	-16
	.word	4
	.word	_Label_388
	.word	-20
	.word	4
	.word	0
_Label_385:
	.ascii	"ThreadFinish\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_388:
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
_Label_2890:
	push	r0
	sub	r1,1,r1
	bne	_Label_2890
	mov	233,r13		! source line 233
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	241,r13		! source line 241
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	241,r13		! source line 241
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_389 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_389  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	242,r13		! source line 242
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	243,r13		! source line 243
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_391		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_391
!	jmp	_Label_390
_Label_390:
! THEN...
	mov	244,r13		! source line 244
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_392 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_392  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_394 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_393 = *_temp_394  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_393  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	245,r13		! source line 245
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_391:
! CALL STATEMENT...
!   _temp_395 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_395  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	247,r13		! source line 247
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	248,r13		! source line 248
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_396 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_396  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	249,r13		! source line 249
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_397 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_397  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	250,r13		! source line 250
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	251,r13		! source line 251
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	251,r13		! source line 251
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
	.word	_Label_398
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_399
	.word	8
	.word	4
	.word	_Label_400
	.word	-12
	.word	4
	.word	_Label_401
	.word	-16
	.word	4
	.word	_Label_402
	.word	-20
	.word	4
	.word	_Label_403
	.word	-24
	.word	4
	.word	_Label_404
	.word	-28
	.word	4
	.word	_Label_405
	.word	-32
	.word	4
	.word	_Label_406
	.word	-36
	.word	4
	.word	_Label_407
	.word	-40
	.word	4
	.word	0
_Label_398:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_399:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_407:
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
_Label_2891:
	push	r0
	sub	r1,1,r1
	bne	_Label_2891
	mov	256,r13		! source line 256
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	269,r13		! source line 269
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_409		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_409
!	jmp	_Label_408
_Label_408:
! THEN...
	mov	272,r13		! source line 272
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	272,r13		! source line 272
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	273,r13		! source line 273
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_410
_Label_409:
! ELSE...
	mov	275,r13		! source line 275
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	275,r13		! source line 275
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	276,r13		! source line 276
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_410:
! RETURN STATEMENT...
	mov	278,r13		! source line 278
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
	.word	_Label_411
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_412
	.word	8
	.word	4
	.word	_Label_413
	.word	-12
	.word	4
	.word	0
_Label_411:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_412:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_413:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_214_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_214_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_2892:
	push	r0
	sub	r1,1,r1
	bne	_Label_2892
	mov	824,r13		! source line 824
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	831,r13		! source line 831
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	832,r13		! source line 832
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_417		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_417
!   _temp_416 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_418
_Label_417:
!   _temp_416 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_418:
!   if _temp_416 then goto _Label_415 else goto _Label_414
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_414
	jmp	_Label_415
_Label_414:
! THEN...
	mov	833,r13		! source line 833
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_419 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_419  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	833,r13		! source line 833
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	834,r13		! source line 834
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_415:
! CALL STATEMENT...
!   _temp_420 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_420  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	836,r13		! source line 836
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_422 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_421 = *_temp_422  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_421  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	837,r13		! source line 837
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_423 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_423  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	838,r13		! source line 838
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	839,r13		! source line 839
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_432 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_431 = *_temp_432  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_426
	cmp	r1,2
	be	_Label_427
	cmp	r1,3
	be	_Label_428
	cmp	r1,4
	be	_Label_429
	cmp	r1,5
	be	_Label_430
	jmp	_Label_424
! CASE 1...
_Label_426:
! CALL STATEMENT...
!   _temp_433 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_433  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	841,r13		! source line 841
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	842,r13		! source line 842
	mov	"\0\0BR",r10
	jmp	_Label_425
! CASE 2...
_Label_427:
! CALL STATEMENT...
!   _temp_434 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_434  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	844,r13		! source line 844
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	845,r13		! source line 845
	mov	"\0\0BR",r10
	jmp	_Label_425
! CASE 3...
_Label_428:
! CALL STATEMENT...
!   _temp_435 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_435  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	847,r13		! source line 847
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	848,r13		! source line 848
	mov	"\0\0BR",r10
	jmp	_Label_425
! CASE 4...
_Label_429:
! CALL STATEMENT...
!   _temp_436 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_436  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	850,r13		! source line 850
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	851,r13		! source line 851
	mov	"\0\0BR",r10
	jmp	_Label_425
! CASE 5...
_Label_430:
! CALL STATEMENT...
!   _temp_437 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_437  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	853,r13		! source line 853
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	854,r13		! source line 854
	mov	"\0\0BR",r10
	jmp	_Label_425
! DEFAULT CASE...
_Label_424:
! CALL STATEMENT...
!   _temp_438 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_438  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	856,r13		! source line 856
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_425:
! CALL STATEMENT...
!   _temp_439 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_439  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	858,r13		! source line 858
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_440 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_440  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	859,r13		! source line 859
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_441 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_441  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	861,r13		! source line 861
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	863,r13		! source line 863
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	863,r13		! source line 863
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	863,r13		! source line 863
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_214_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_442
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_443
	.word	8
	.word	4
	.word	_Label_444
	.word	-16
	.word	4
	.word	_Label_445
	.word	-20
	.word	4
	.word	_Label_446
	.word	-24
	.word	4
	.word	_Label_447
	.word	-28
	.word	4
	.word	_Label_448
	.word	-32
	.word	4
	.word	_Label_449
	.word	-36
	.word	4
	.word	_Label_450
	.word	-40
	.word	4
	.word	_Label_451
	.word	-44
	.word	4
	.word	_Label_452
	.word	-48
	.word	4
	.word	_Label_453
	.word	-52
	.word	4
	.word	_Label_454
	.word	-56
	.word	4
	.word	_Label_455
	.word	-60
	.word	4
	.word	_Label_456
	.word	-64
	.word	4
	.word	_Label_457
	.word	-68
	.word	4
	.word	_Label_458
	.word	-72
	.word	4
	.word	_Label_459
	.word	-76
	.word	4
	.word	_Label_460
	.word	-9
	.word	1
	.word	_Label_461
	.word	-80
	.word	4
	.word	0
_Label_442:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_443:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_444:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_445:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_447:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_423\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_422\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_421\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_420\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
_Label_460:
	.byte	'C'
	.ascii	"_temp_416\0"
	.align
_Label_461:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_213_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_213_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_2893:
	push	r0
	sub	r1,1,r1
	bne	_Label_2893
	mov	1157,r13		! source line 1157
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_462 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_462  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1161,r13		! source line 1161
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1162,r13		! source line 1162
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1162,r13		! source line 1162
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_213_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_463
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_464
	.word	8
	.word	4
	.word	_Label_465
	.word	-12
	.word	4
	.word	0
_Label_463:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_464:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_462\0"
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
_Label_2894:
	push	r0
	sub	r1,1,r1
	bne	_Label_2894
	mov	1167,r13		! source line 1167
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_466 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_466  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1173,r13		! source line 1173
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1173,r13		! source line 1173
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
	.word	_Label_467
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_468
	.word	8
	.word	4
	.word	_Label_469
	.word	-12
	.word	4
	.word	0
_Label_467:
	.ascii	"ProcessFinish\0"
	.align
_Label_468:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_466\0"
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
_Label_2895:
	push	r0
	sub	r1,1,r1
	bne	_Label_2895
	mov	1670,r13		! source line 1670
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1680,r13		! source line 1680
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1682,r13		! source line 1682
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
	mov	1683,r13		! source line 1683
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1683,r13		! source line 1683
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
	.word	_Label_470
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_470:
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
	mov	7,r1
_Label_2896:
	push	r0
	sub	r1,1,r1
	bne	_Label_2896
	mov	1689,r13		! source line 1689
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1701,r13		! source line 1701
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1703,r13		! source line 1703
	mov	"\0\0IF",r10
!   _temp_474 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_475 = _temp_474 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_473 = *_temp_475  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_473 == 0 then goto _Label_472		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_472
!	jmp	_Label_471
_Label_471:
! THEN...
	mov	1704,r13		! source line 1704
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1704,r13		! source line 1704
	mov	"\0\0SE",r10
!   _temp_477 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_478 = _temp_477 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_476 = *_temp_478  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_476) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_472:
! RETURN STATEMENT...
	mov	1703,r13		! source line 1703
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_479
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_480
	.word	-12
	.word	4
	.word	_Label_481
	.word	-16
	.word	4
	.word	_Label_482
	.word	-20
	.word	4
	.word	_Label_483
	.word	-24
	.word	4
	.word	_Label_484
	.word	-28
	.word	4
	.word	_Label_485
	.word	-32
	.word	4
	.word	0
_Label_479:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_478\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_477\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_476\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_475\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_474\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_473\0"
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
	mov	1711,r13		! source line 1711
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1720,r13		! source line 1720
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1720,r13		! source line 1720
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
	.word	_Label_486
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_486:
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
_Label_2897:
	push	r0
	sub	r1,1,r1
	bne	_Label_2897
	mov	1725,r13		! source line 1725
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1731,r13		! source line 1731
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_487 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_487  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1732,r13		! source line 1732
	mov	"\0\0CA",r10
	call	_function_212_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1732,r13		! source line 1732
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
	.word	_Label_488
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_489
	.word	-12
	.word	4
	.word	0
_Label_488:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_487\0"
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
_Label_2898:
	push	r0
	sub	r1,1,r1
	bne	_Label_2898
	mov	1737,r13		! source line 1737
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1743,r13		! source line 1743
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_490 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_490  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1744,r13		! source line 1744
	mov	"\0\0CA",r10
	call	_function_212_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1744,r13		! source line 1744
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
	.word	_Label_491
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_492
	.word	-12
	.word	4
	.word	0
_Label_491:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_490\0"
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
_Label_2899:
	push	r0
	sub	r1,1,r1
	bne	_Label_2899
	mov	1749,r13		! source line 1749
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1755,r13		! source line 1755
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_493 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_493  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1756,r13		! source line 1756
	mov	"\0\0CA",r10
	call	_function_212_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1756,r13		! source line 1756
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
	.word	_Label_494
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_495
	.word	-12
	.word	4
	.word	0
_Label_494:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_493\0"
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
_Label_2900:
	push	r0
	sub	r1,1,r1
	bne	_Label_2900
	mov	1761,r13		! source line 1761
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1767,r13		! source line 1767
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_496 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_496  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1768,r13		! source line 1768
	mov	"\0\0CA",r10
	call	_function_212_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1768,r13		! source line 1768
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
	.word	_Label_497
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_498
	.word	-12
	.word	4
	.word	0
_Label_497:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_496\0"
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
_Label_2901:
	push	r0
	sub	r1,1,r1
	bne	_Label_2901
	mov	1773,r13		! source line 1773
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1779,r13		! source line 1779
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_499 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_499  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1780,r13		! source line 1780
	mov	"\0\0CA",r10
	call	_function_212_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1780,r13		! source line 1780
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
	.word	_Label_500
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_501
	.word	-12
	.word	4
	.word	0
_Label_500:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_499\0"
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
_Label_2902:
	push	r0
	sub	r1,1,r1
	bne	_Label_2902
	mov	1785,r13		! source line 1785
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1791,r13		! source line 1791
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_502 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_502  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1792,r13		! source line 1792
	mov	"\0\0CA",r10
	call	_function_212_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1792,r13		! source line 1792
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
	.word	_Label_503
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_504
	.word	-12
	.word	4
	.word	0
_Label_503:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_502\0"
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
_Label_2903:
	push	r0
	sub	r1,1,r1
	bne	_Label_2903
	mov	1797,r13		! source line 1797
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1803,r13		! source line 1803
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_505 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_505  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1804,r13		! source line 1804
	mov	"\0\0CA",r10
	call	_function_212_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1804,r13		! source line 1804
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
	.word	_Label_506
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_507
	.word	-12
	.word	4
	.word	0
_Label_506:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_212_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_212_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_2904:
	push	r0
	sub	r1,1,r1
	bne	_Label_2904
	mov	1809,r13		! source line 1809
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_508 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_508  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1814,r13		! source line 1814
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1815,r13		! source line 1815
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_509 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_509  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1816,r13		! source line 1816
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1819,r13		! source line 1819
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_513 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_512 = *_temp_513  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_512 == 0 then goto _Label_511		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_511
!	jmp	_Label_510
_Label_510:
! THEN...
	mov	1820,r13		! source line 1820
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1820,r13		! source line 1820
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_515 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_514 = *_temp_515  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_514) then goto _runtimeErrorNullPointer
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
	jmp	_Label_516
_Label_511:
! ELSE...
	mov	1822,r13		! source line 1822
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_517 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_517  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1822,r13		! source line 1822
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_516:
! SEND STATEMENT...
	mov	1824,r13		! source line 1824
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
	mov	1830,r13		! source line 1830
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1830,r13		! source line 1830
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_212_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_518
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_519
	.word	8
	.word	4
	.word	_Label_520
	.word	-12
	.word	4
	.word	_Label_521
	.word	-16
	.word	4
	.word	_Label_522
	.word	-20
	.word	4
	.word	_Label_523
	.word	-24
	.word	4
	.word	_Label_524
	.word	-28
	.word	4
	.word	_Label_525
	.word	-32
	.word	4
	.word	_Label_526
	.word	-36
	.word	4
	.word	0
_Label_518:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_519:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_517\0"
	.align
_Label_521:
	.byte	'?'
	.ascii	"_temp_515\0"
	.align
_Label_522:
	.byte	'?'
	.ascii	"_temp_514\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_513\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_512\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_509\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_508\0"
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
_Label_2905:
	push	r0
	sub	r1,1,r1
	bne	_Label_2905
	mov	1835,r13		! source line 1835
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1842,r13		! source line 1842
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1856,r13		! source line 1856
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_2906
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_527
_Label_2906:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_527
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_527
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_541,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_541:
	jmp	_Label_533	! 1:	
	jmp	_Label_540	! 2:	
	jmp	_Label_530	! 3:	
	jmp	_Label_529	! 4:	
	jmp	_Label_532	! 5:	
	jmp	_Label_531	! 6:	
	jmp	_Label_534	! 7:	
	jmp	_Label_535	! 8:	
	jmp	_Label_536	! 9:	
	jmp	_Label_537	! 10:	
	jmp	_Label_538	! 11:	
	jmp	_Label_539	! 12:	
! CASE 4...
_Label_529:
! RETURN STATEMENT...
	mov	1858,r13		! source line 1858
	mov	"\0\0RE",r10
!   Call the function
	mov	1858,r13		! source line 1858
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_542  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_542  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_530:
! CALL STATEMENT...
!   Call the function
	mov	1860,r13		! source line 1860
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1861,r13		! source line 1861
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_531:
! RETURN STATEMENT...
	mov	1863,r13		! source line 1863
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1863,r13		! source line 1863
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_543  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_543  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_532:
! RETURN STATEMENT...
	mov	1865,r13		! source line 1865
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1865,r13		! source line 1865
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_544  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_544  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_533:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1867,r13		! source line 1867
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1868,r13		! source line 1868
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_534:
! RETURN STATEMENT...
	mov	1870,r13		! source line 1870
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1870,r13		! source line 1870
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_545  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_545  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_535:
! RETURN STATEMENT...
	mov	1872,r13		! source line 1872
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1872,r13		! source line 1872
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_546  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_546  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_536:
! RETURN STATEMENT...
	mov	1874,r13		! source line 1874
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
	mov	1874,r13		! source line 1874
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_547  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_547  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_537:
! RETURN STATEMENT...
	mov	1876,r13		! source line 1876
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
	mov	1876,r13		! source line 1876
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_548  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_548  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_538:
! RETURN STATEMENT...
	mov	1878,r13		! source line 1878
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1878,r13		! source line 1878
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_549  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_549  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_539:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1880,r13		! source line 1880
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1881,r13		! source line 1881
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_540:
! CALL STATEMENT...
!   Call the function
	mov	1883,r13		! source line 1883
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1884,r13		! source line 1884
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_527:
! CALL STATEMENT...
!   _temp_550 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_550  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1886,r13		! source line 1886
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1887,r13		! source line 1887
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1888,r13		! source line 1888
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_551 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_551  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1889,r13		! source line 1889
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_528:
! RETURN STATEMENT...
	mov	1891,r13		! source line 1891
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
	.word	_Label_552
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_553
	.word	8
	.word	4
	.word	_Label_554
	.word	12
	.word	4
	.word	_Label_555
	.word	16
	.word	4
	.word	_Label_556
	.word	20
	.word	4
	.word	_Label_557
	.word	24
	.word	4
	.word	_Label_558
	.word	-12
	.word	4
	.word	_Label_559
	.word	-16
	.word	4
	.word	_Label_560
	.word	-20
	.word	4
	.word	_Label_561
	.word	-24
	.word	4
	.word	_Label_562
	.word	-28
	.word	4
	.word	_Label_563
	.word	-32
	.word	4
	.word	_Label_564
	.word	-36
	.word	4
	.word	_Label_565
	.word	-40
	.word	4
	.word	_Label_566
	.word	-44
	.word	4
	.word	_Label_567
	.word	-48
	.word	4
	.word	0
_Label_552:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_553:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_554:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_555:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_556:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_557:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_549\0"
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
	.byte	'?'
	.ascii	"_temp_546\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_542\0"
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
	mov	3,r1
_Label_2907:
	push	r0
	sub	r1,1,r1
	bne	_Label_2907
	mov	1896,r13		! source line 1896
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_568 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_568  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1898,r13		! source line 1898
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_569 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_569  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1899,r13		! source line 1899
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1900,r13		! source line 1900
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1901,r13		! source line 1901
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1901,r13		! source line 1901
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_570
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_571
	.word	8
	.word	4
	.word	_Label_572
	.word	-12
	.word	4
	.word	_Label_573
	.word	-16
	.word	4
	.word	0
_Label_570:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_571:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_568\0"
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
	mov	3,r1
_Label_2908:
	push	r0
	sub	r1,1,r1
	bne	_Label_2908
	mov	1906,r13		! source line 1906
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_574 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_574  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1908,r13		! source line 1908
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_575 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_575  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1909,r13		! source line 1909
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1909,r13		! source line 1909
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_576
	.word	0		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_577
	.word	-12
	.word	4
	.word	_Label_578
	.word	-16
	.word	4
	.word	0
_Label_576:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_574\0"
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
	mov	2,r1
_Label_2909:
	push	r0
	sub	r1,1,r1
	bne	_Label_2909
	mov	1914,r13		! source line 1914
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_579 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_579  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1916,r13		! source line 1916
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1916,r13		! source line 1916
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_580
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_581
	.word	-12
	.word	4
	.word	0
_Label_580:
	.ascii	"Handle_Sys_Yield\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_579\0"
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
	mov	2,r1
_Label_2910:
	push	r0
	sub	r1,1,r1
	bne	_Label_2910
	mov	1921,r13		! source line 1921
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_582 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_582  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1923,r13		! source line 1923
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1925,r13		! source line 1925
	mov	"\0\0RE",r10
!   ReturnResult: 1000  (sizeInBytes=4)
	mov	1000,r1
	store	r1,[r14+8]
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_583
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_584
	.word	-12
	.word	4
	.word	0
_Label_583:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_582\0"
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
	mov	3,r1
_Label_2911:
	push	r0
	sub	r1,1,r1
	bne	_Label_2911
	mov	1930,r13		! source line 1930
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_585 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_585  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1932,r13		! source line 1932
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_586 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_586  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1933,r13		! source line 1933
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=processID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1934,r13		! source line 1934
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1935,r13		! source line 1935
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1936,r13		! source line 1936
	mov	"\0\0RE",r10
!   ReturnResult: 2000  (sizeInBytes=4)
	mov	2000,r1
	store	r1,[r14+8]
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_587
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_588
	.word	8
	.word	4
	.word	_Label_589
	.word	-12
	.word	4
	.word	_Label_590
	.word	-16
	.word	4
	.word	0
_Label_587:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_588:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_589:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_585\0"
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
	mov	2,r1
_Label_2912:
	push	r0
	sub	r1,1,r1
	bne	_Label_2912
	mov	1941,r13		! source line 1941
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_591 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_591  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1945,r13		! source line 1945
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=filename  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1946,r13		! source line 1946
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1947,r13		! source line 1947
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1948,r13		! source line 1948
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_592
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_593
	.word	8
	.word	4
	.word	_Label_594
	.word	-12
	.word	4
	.word	0
_Label_592:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_593:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_591\0"
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
	mov	4,r1
_Label_2913:
	push	r0
	sub	r1,1,r1
	bne	_Label_2913
	mov	1953,r13		! source line 1953
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_595 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_595  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1955,r13		! source line 1955
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_596 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_596  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1956,r13		! source line 1956
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_597 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_597  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1957,r13		! source line 1957
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1958,r13		! source line 1958
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1959,r13		! source line 1959
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_598
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_599
	.word	8
	.word	4
	.word	_Label_600
	.word	-12
	.word	4
	.word	_Label_601
	.word	-16
	.word	4
	.word	_Label_602
	.word	-20
	.word	4
	.word	0
_Label_598:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_599:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_595\0"
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
	mov	2,r1
_Label_2914:
	push	r0
	sub	r1,1,r1
	bne	_Label_2914
	mov	1964,r13		! source line 1964
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_603 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_603  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1966,r13		! source line 1966
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1967,r13		! source line 1967
	mov	"\0\0RE",r10
!   ReturnResult: 5000  (sizeInBytes=4)
	mov	5000,r1
	store	r1,[r14+8]
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_604
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_605
	.word	8
	.word	4
	.word	_Label_606
	.word	-12
	.word	4
	.word	0
_Label_604:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_605:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_603\0"
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
	mov	5,r1
_Label_2915:
	push	r0
	sub	r1,1,r1
	bne	_Label_2915
	mov	1972,r13		! source line 1972
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_607 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_607  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1974,r13		! source line 1974
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_608 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_608  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1975,r13		! source line 1975
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1976,r13		! source line 1976
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1977,r13		! source line 1977
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_609 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_609  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1978,r13		! source line 1978
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_610 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_610  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1984,r13		! source line 1984
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1985,r13		! source line 1985
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1986,r13		! source line 1986
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1987,r13		! source line 1987
	mov	"\0\0RE",r10
!   ReturnResult: 6000  (sizeInBytes=4)
	mov	6000,r1
	store	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_611
	.word	12		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_612
	.word	8
	.word	4
	.word	_Label_613
	.word	12
	.word	4
	.word	_Label_614
	.word	16
	.word	4
	.word	_Label_615
	.word	-12
	.word	4
	.word	_Label_616
	.word	-16
	.word	4
	.word	_Label_617
	.word	-20
	.word	4
	.word	_Label_618
	.word	-24
	.word	4
	.word	0
_Label_611:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_612:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_613:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_614:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_615:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_607\0"
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
	mov	5,r1
_Label_2916:
	push	r0
	sub	r1,1,r1
	bne	_Label_2916
	mov	1992,r13		! source line 1992
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_619 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_619  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1994,r13		! source line 1994
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_620 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_620  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1995,r13		! source line 1995
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1996,r13		! source line 1996
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1997,r13		! source line 1997
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_621 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_621  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1998,r13		! source line 1998
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2001,r13		! source line 2001
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_622 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_622  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2002,r13		! source line 2002
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2003,r13		! source line 2003
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2004,r13		! source line 2004
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2005,r13		! source line 2005
	mov	"\0\0RE",r10
!   ReturnResult: 7000  (sizeInBytes=4)
	mov	7000,r1
	store	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_623
	.word	12		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_624
	.word	8
	.word	4
	.word	_Label_625
	.word	12
	.word	4
	.word	_Label_626
	.word	16
	.word	4
	.word	_Label_627
	.word	-12
	.word	4
	.word	_Label_628
	.word	-16
	.word	4
	.word	_Label_629
	.word	-20
	.word	4
	.word	_Label_630
	.word	-24
	.word	4
	.word	0
_Label_623:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_624:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_625:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_626:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_627:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_628:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_629:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_630:
	.byte	'?'
	.ascii	"_temp_619\0"
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
	mov	4,r1
_Label_2917:
	push	r0
	sub	r1,1,r1
	bne	_Label_2917
	mov	2010,r13		! source line 2010
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_631 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_631  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2012,r13		! source line 2012
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_632 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_632  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2013,r13		! source line 2013
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2014,r13		! source line 2014
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2015,r13		! source line 2015
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_633 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_633  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2016,r13		! source line 2016
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2017,r13		! source line 2017
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2018,r13		! source line 2018
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2020,r13		! source line 2020
	mov	"\0\0RE",r10
!   ReturnResult: 8000  (sizeInBytes=4)
	mov	8000,r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_634
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_635
	.word	8
	.word	4
	.word	_Label_636
	.word	12
	.word	4
	.word	_Label_637
	.word	-12
	.word	4
	.word	_Label_638
	.word	-16
	.word	4
	.word	_Label_639
	.word	-20
	.word	4
	.word	0
_Label_634:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_635:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_636:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_631\0"
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
	mov	3,r1
_Label_2918:
	push	r0
	sub	r1,1,r1
	bne	_Label_2918
	mov	2025,r13		! source line 2025
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_640 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_640  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2027,r13		! source line 2027
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_641 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_641  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2028,r13		! source line 2028
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2029,r13		! source line 2029
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2030,r13		! source line 2030
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2030,r13		! source line 2030
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_642
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_643
	.word	8
	.word	4
	.word	_Label_644
	.word	-12
	.word	4
	.word	_Label_645
	.word	-16
	.word	4
	.word	0
_Label_642:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_643:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_211_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_211_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_2919:
	push	r0
	sub	r1,1,r1
	bne	_Label_2919
	mov	2622,r13		! source line 2622
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2624,r13		! source line 2624
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2625,r13		! source line 2625
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2626,r13		! source line 2626
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_646 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_646  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2627,r13		! source line 2627
	mov	"\0\0AS",r10
!   _temp_647 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_647) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_649 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_649) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_648 = *_temp_649  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_647 = _temp_648  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2628,r13		! source line 2628
	mov	"\0\0AS",r10
!   _temp_650 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_650) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_652 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_652) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_651 = *_temp_652  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_650 = _temp_651  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2629,r13		! source line 2629
	mov	"\0\0AS",r10
!   _temp_653 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_653) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_655 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_655) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_654 = *_temp_655  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_653 = _temp_654  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2629,r13		! source line 2629
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_211_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_656
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_657
	.word	8
	.word	4
	.word	_Label_658
	.word	12
	.word	4
	.word	_Label_659
	.word	-16
	.word	4
	.word	_Label_660
	.word	-9
	.word	1
	.word	_Label_661
	.word	-20
	.word	4
	.word	_Label_662
	.word	-24
	.word	4
	.word	_Label_663
	.word	-10
	.word	1
	.word	_Label_664
	.word	-28
	.word	4
	.word	_Label_665
	.word	-32
	.word	4
	.word	_Label_666
	.word	-11
	.word	1
	.word	_Label_667
	.word	-36
	.word	4
	.word	_Label_668
	.word	-12
	.word	1
	.word	_Label_669
	.word	-40
	.word	4
	.word	_Label_670
	.word	-44
	.word	4
	.word	0
_Label_656:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_657:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_658:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_660:
	.byte	'C'
	.ascii	"_temp_654\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_663:
	.byte	'C'
	.ascii	"_temp_651\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_666:
	.byte	'C'
	.ascii	"_temp_648\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_647\0"
	.align
_Label_668:
	.byte	'C'
	.ascii	"_temp_646\0"
	.align
_Label_669:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_670:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_210_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_210_printFCB,r1
	push	r1
	mov	3,r1
_Label_2920:
	push	r0
	sub	r1,1,r1
	bne	_Label_2920
	mov	2632,r13		! source line 2632
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_672 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_671 = *_temp_672  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_671  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2633,r13		! source line 2633
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2634,r13		! source line 2634
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2634,r13		! source line 2634
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_210_printFCB:
	.word	_sourceFileName
	.word	_Label_673
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_674
	.word	8
	.word	4
	.word	_Label_675
	.word	-12
	.word	4
	.word	_Label_676
	.word	-16
	.word	4
	.word	0
_Label_673:
	.ascii	"printFCB\0"
	.align
_Label_674:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_209_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_209_printOpen,r1
	push	r1
	mov	4,r1
_Label_2921:
	push	r0
	sub	r1,1,r1
	bne	_Label_2921
	mov	2637,r13		! source line 2637
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_677 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_677  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2638,r13		! source line 2638
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_678 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_678  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2639,r13		! source line 2639
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_679 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_679  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2640,r13		! source line 2640
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2641,r13		! source line 2641
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2641,r13		! source line 2641
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_209_printOpen:
	.word	_sourceFileName
	.word	_Label_680
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_681
	.word	8
	.word	4
	.word	_Label_682
	.word	-12
	.word	4
	.word	_Label_683
	.word	-16
	.word	4
	.word	_Label_684
	.word	-20
	.word	4
	.word	0
_Label_680:
	.ascii	"printOpen\0"
	.align
_Label_681:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_685
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_685:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_686
	.word	_sourceFileName
	.word	126		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_686:
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
_Label_2922:
	push	r0
	sub	r1,1,r1
	bne	_Label_2922
	mov	307,r13		! source line 307
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_688		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_688
!	jmp	_Label_687
_Label_687:
! THEN...
	mov	309,r13		! source line 309
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_689 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_689  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	309,r13		! source line 309
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_688:
! ASSIGNMENT STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	312,r13		! source line 312
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
	mov	312,r13		! source line 312
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
	.word	_Label_691
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_692
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_693
	.word	12
	.word	4
	.word	_Label_694
	.word	-12
	.word	4
	.word	_Label_695
	.word	-16
	.word	4
	.word	0
_Label_691:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_692:
	.ascii	"Pself\0"
	.align
_Label_693:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_689\0"
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
_Label_2923:
	push	r0
	sub	r1,1,r1
	bne	_Label_2923
	mov	317,r13		! source line 317
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	321,r13		! source line 321
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	321,r13		! source line 321
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_697		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_697
!	jmp	_Label_696
_Label_696:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_698 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_698  sizeInBytes=4
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
_Label_697:
! ASSIGNMENT STATEMENT...
	mov	325,r13		! source line 325
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
	mov	326,r13		! source line 326
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_700		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_700
!	jmp	_Label_699
_Label_699:
! THEN...
	mov	327,r13		! source line 327
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0AS",r10
	mov	327,r13		! source line 327
	mov	"\0\0SE",r10
!   _temp_701 = &waitingThreads
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
	mov	328,r13		! source line 328
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_702 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_702 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_703 = &_P_Kernel_readyList
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
_Label_700:
! ASSIGNMENT STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	331,r13		! source line 331
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	331,r13		! source line 331
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
	.word	_Label_704
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_705
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_706
	.word	-12
	.word	4
	.word	_Label_707
	.word	-16
	.word	4
	.word	_Label_708
	.word	-20
	.word	4
	.word	_Label_709
	.word	-24
	.word	4
	.word	_Label_710
	.word	-28
	.word	4
	.word	_Label_711
	.word	-32
	.word	4
	.word	0
_Label_704:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_705:
	.ascii	"Pself\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_703\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_698\0"
	.align
_Label_710:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_711:
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
_Label_2924:
	push	r0
	sub	r1,1,r1
	bne	_Label_2924
	mov	336,r13		! source line 336
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	339,r13		! source line 339
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	339,r13		! source line 339
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_713		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_713
!	jmp	_Label_712
_Label_712:
! THEN...
	mov	341,r13		! source line 341
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_714 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_714  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	341,r13		! source line 341
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_713:
! ASSIGNMENT STATEMENT...
	mov	343,r13		! source line 343
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
	mov	344,r13		! source line 344
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_716		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_716
!	jmp	_Label_715
_Label_715:
! THEN...
	mov	345,r13		! source line 345
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	345,r13		! source line 345
	mov	"\0\0SE",r10
!   _temp_717 = &waitingThreads
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
	mov	346,r13		! source line 346
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
_Label_716:
! ASSIGNMENT STATEMENT...
	mov	348,r13		! source line 348
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	348,r13		! source line 348
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	348,r13		! source line 348
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
	.word	_Label_718
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_719
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_720
	.word	-12
	.word	4
	.word	_Label_721
	.word	-16
	.word	4
	.word	_Label_722
	.word	-20
	.word	4
	.word	0
_Label_718:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_719:
	.ascii	"Pself\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_722:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_723
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_723:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_724
	.word	_sourceFileName
	.word	139		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_724:
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
_Label_2925:
	push	r0
	sub	r1,1,r1
	bne	_Label_2925
	mov	371,r13		! source line 371
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	372,r13		! source line 372
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
	mov	372,r13		! source line 372
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
	.word	_Label_726
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_727
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_728
	.word	-12
	.word	4
	.word	0
_Label_726:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_727:
	.ascii	"Pself\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_725\0"
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
_Label_2926:
	push	r0
	sub	r1,1,r1
	bne	_Label_2926
	mov	377,r13		! source line 377
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	380,r13		! source line 380
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_730		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_730
!	jmp	_Label_729
_Label_729:
! THEN...
	mov	381,r13		! source line 381
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_731 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_731  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	381,r13		! source line 381
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_730:
! ASSIGNMENT STATEMENT...
	mov	383,r13		! source line 383
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	383,r13		! source line 383
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	384,r13		! source line 384
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_735		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_735
!   _temp_734 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_736
_Label_735:
!   _temp_734 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_736:
!   if _temp_734 then goto _Label_733 else goto _Label_732
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_732
	jmp	_Label_733
_Label_732:
! THEN...
	mov	385,r13		! source line 385
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	385,r13		! source line 385
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_737
_Label_733:
! ELSE...
	mov	387,r13		! source line 387
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	387,r13		! source line 387
	mov	"\0\0SE",r10
!   _temp_738 = &waitingThreads
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
	mov	388,r13		! source line 388
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
_Label_737:
! ASSIGNMENT STATEMENT...
	mov	390,r13		! source line 390
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	390,r13		! source line 390
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	390,r13		! source line 390
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
	.word	_Label_739
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_740
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_741
	.word	-16
	.word	4
	.word	_Label_742
	.word	-9
	.word	1
	.word	_Label_743
	.word	-20
	.word	4
	.word	_Label_744
	.word	-24
	.word	4
	.word	0
_Label_739:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_740:
	.ascii	"Pself\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_742:
	.byte	'C'
	.ascii	"_temp_734\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_744:
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
_Label_2927:
	push	r0
	sub	r1,1,r1
	bne	_Label_2927
	mov	395,r13		! source line 395
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_746		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_746
!	jmp	_Label_745
_Label_745:
! THEN...
	mov	400,r13		! source line 400
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_747 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_747  sizeInBytes=4
	load	[r14+-24],r1
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
_Label_746:
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
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	403,r13		! source line 403
	mov	"\0\0AS",r10
	mov	403,r13		! source line 403
	mov	"\0\0SE",r10
!   _temp_748 = &waitingThreads
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
	mov	404,r13		! source line 404
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_750		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_750
!	jmp	_Label_749
_Label_749:
! THEN...
	mov	405,r13		! source line 405
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	405,r13		! source line 405
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_751 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_751 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	406,r13		! source line 406
	mov	"\0\0SE",r10
!   _temp_752 = &_P_Kernel_readyList
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
	mov	407,r13		! source line 407
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_753
_Label_750:
! ELSE...
	mov	409,r13		! source line 409
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	409,r13		! source line 409
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_753:
! ASSIGNMENT STATEMENT...
	mov	411,r13		! source line 411
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	411,r13		! source line 411
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	411,r13		! source line 411
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
	.word	_Label_754
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_755
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_756
	.word	-12
	.word	4
	.word	_Label_757
	.word	-16
	.word	4
	.word	_Label_758
	.word	-20
	.word	4
	.word	_Label_759
	.word	-24
	.word	4
	.word	_Label_760
	.word	-28
	.word	4
	.word	_Label_761
	.word	-32
	.word	4
	.word	0
_Label_754:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_755:
	.ascii	"Pself\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_760:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_761:
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
_Label_2928:
	push	r0
	sub	r1,1,r1
	bne	_Label_2928
	mov	416,r13		! source line 416
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	417,r13		! source line 417
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_764		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_764
!	jmp	_Label_763
_Label_763:
!   _temp_762 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_765
_Label_764:
!   _temp_762 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_765:
!   ReturnResult: _temp_762  (sizeInBytes=1)
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
	.word	_Label_766
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_767
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_768
	.word	-9
	.word	1
	.word	0
_Label_766:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_767:
	.ascii	"Pself\0"
	.align
_Label_768:
	.byte	'C'
	.ascii	"_temp_762\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_769
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_769:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_770
	.word	_sourceFileName
	.word	153		! line number
	.word	96		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_770:
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
_Label_2929:
	push	r0
	sub	r1,1,r1
	bne	_Label_2929
	mov	457,r13		! source line 457
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
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
	mov	459,r13		! source line 459
	mov	"\0\0SE",r10
!   _temp_772 = &sema
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
	mov	460,r13		! source line 460
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
	mov	461,r13		! source line 461
	mov	"\0\0SE",r10
!   _temp_774 = &semaNext
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
	mov	462,r13		! source line 462
	mov	"\0\0AS",r10
!   c = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+64]
! ASSIGNMENT STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0AS",r10
!   nextC = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	464,r13		! source line 464
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
	mov	466,r13		! source line 466
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
	mov	467,r13		! source line 467
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
	mov	468,r13		! source line 468
	mov	"\0\0SE",r10
!   _temp_778 = &mLock
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
	mov	468,r13		! source line 468
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
	.word	_Label_779
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_780
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_781
	.word	-12
	.word	4
	.word	_Label_782
	.word	-16
	.word	4
	.word	_Label_783
	.word	-20
	.word	4
	.word	_Label_784
	.word	-24
	.word	4
	.word	_Label_785
	.word	-28
	.word	4
	.word	_Label_786
	.word	-32
	.word	4
	.word	_Label_787
	.word	-36
	.word	4
	.word	_Label_788
	.word	-40
	.word	4
	.word	0
_Label_779:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_780:
	.ascii	"Pself\0"
	.align
_Label_781:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_782:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_783:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_784:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_774\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_773\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_772\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_771\0"
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
_Label_2930:
	push	r0
	sub	r1,1,r1
	bne	_Label_2930
	mov	473,r13		! source line 473
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	476,r13		! source line 476
	mov	"\0\0IF",r10
	mov	476,r13		! source line 476
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
!   Retrieve Result: targetName=_temp_791  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_791 then goto _Label_790 else goto _Label_789
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_789
	jmp	_Label_790
_Label_789:
! THEN...
	mov	477,r13		! source line 477
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_792 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_792  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	477,r13		! source line 477
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_790:
! ASSIGNMENT STATEMENT...
	mov	479,r13		! source line 479
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	479,r13		! source line 479
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	480,r13		! source line 480
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
	mov	481,r13		! source line 481
	mov	"\0\0SE",r10
!   _temp_793 = &waitingThreads
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
	mov	482,r13		! source line 482
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
	mov	483,r13		! source line 483
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
	mov	484,r13		! source line 484
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	484,r13		! source line 484
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	484,r13		! source line 484
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
	.word	_Label_794
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_795
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_796
	.word	12
	.word	4
	.word	_Label_797
	.word	-16
	.word	4
	.word	_Label_798
	.word	-20
	.word	4
	.word	_Label_799
	.word	-9
	.word	1
	.word	_Label_800
	.word	-24
	.word	4
	.word	0
_Label_794:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_795:
	.ascii	"Pself\0"
	.align
_Label_796:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_799:
	.byte	'C'
	.ascii	"_temp_791\0"
	.align
_Label_800:
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
_Label_2931:
	push	r0
	sub	r1,1,r1
	bne	_Label_2931
	mov	543,r13		! source line 543
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	547,r13		! source line 547
	mov	"\0\0IF",r10
	mov	547,r13		! source line 547
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
!   Retrieve Result: targetName=_temp_803  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_803 then goto _Label_802 else goto _Label_801
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_801
	jmp	_Label_802
_Label_801:
! THEN...
	mov	548,r13		! source line 548
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_804 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_804  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	548,r13		! source line 548
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_802:
! ASSIGNMENT STATEMENT...
	mov	550,r13		! source line 550
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	550,r13		! source line 550
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	551,r13		! source line 551
	mov	"\0\0AS",r10
	mov	551,r13		! source line 551
	mov	"\0\0SE",r10
!   _temp_805 = &waitingThreads
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
	mov	552,r13		! source line 552
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_807		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_807
!	jmp	_Label_806
_Label_806:
! THEN...
	mov	553,r13		! source line 553
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	553,r13		! source line 553
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_808 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_808 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	554,r13		! source line 554
	mov	"\0\0SE",r10
!   _temp_809 = &_P_Kernel_readyList
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
_Label_807:
! ASSIGNMENT STATEMENT...
	mov	556,r13		! source line 556
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	556,r13		! source line 556
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! SEND STATEMENT...
	mov	557,r13		! source line 557
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
	mov	557,r13		! source line 557
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
	.word	_Label_810
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_811
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_812
	.word	12
	.word	4
	.word	_Label_813
	.word	-16
	.word	4
	.word	_Label_814
	.word	-20
	.word	4
	.word	_Label_815
	.word	-24
	.word	4
	.word	_Label_816
	.word	-28
	.word	4
	.word	_Label_817
	.word	-9
	.word	1
	.word	_Label_818
	.word	-32
	.word	4
	.word	_Label_819
	.word	-36
	.word	4
	.word	0
_Label_810:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_811:
	.ascii	"Pself\0"
	.align
_Label_812:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_813:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
_Label_814:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_804\0"
	.align
_Label_817:
	.byte	'C'
	.ascii	"_temp_803\0"
	.align
_Label_818:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_819:
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
_Label_2932:
	push	r0
	sub	r1,1,r1
	bne	_Label_2932
	mov	602,r13		! source line 602
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	606,r13		! source line 606
	mov	"\0\0IF",r10
	mov	606,r13		! source line 606
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
!   Retrieve Result: targetName=_temp_822  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_822 then goto _Label_821 else goto _Label_820
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_820
	jmp	_Label_821
_Label_820:
! THEN...
	mov	607,r13		! source line 607
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_823 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_823  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	607,r13		! source line 607
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_821:
! ASSIGNMENT STATEMENT...
	mov	609,r13		! source line 609
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	609,r13		! source line 609
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	610,r13		! source line 610
	mov	"\0\0WH",r10
_Label_824:
!	jmp	_Label_825
_Label_825:
	mov	610,r13		! source line 610
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	611,r13		! source line 611
	mov	"\0\0AS",r10
	mov	611,r13		! source line 611
	mov	"\0\0SE",r10
!   _temp_827 = &waitingThreads
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
	mov	612,r13		! source line 612
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_828
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_828
	jmp	_Label_829
_Label_828:
! THEN...
	mov	613,r13		! source line 613
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	613,r13		! source line 613
	mov	"\0\0BR",r10
	jmp	_Label_826
! END IF...
_Label_829:
! ASSIGNMENT STATEMENT...
	mov	615,r13		! source line 615
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_830 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_830 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0SE",r10
!   _temp_831 = &_P_Kernel_readyList
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
	jmp	_Label_824
_Label_826:
! ASSIGNMENT STATEMENT...
	mov	620,r13		! source line 620
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	620,r13		! source line 620
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	620,r13		! source line 620
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
	.word	_Label_832
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_833
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_834
	.word	12
	.word	4
	.word	_Label_835
	.word	-16
	.word	4
	.word	_Label_836
	.word	-20
	.word	4
	.word	_Label_837
	.word	-24
	.word	4
	.word	_Label_838
	.word	-28
	.word	4
	.word	_Label_839
	.word	-9
	.word	1
	.word	_Label_840
	.word	-32
	.word	4
	.word	_Label_841
	.word	-36
	.word	4
	.word	0
_Label_832:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_833:
	.ascii	"Pself\0"
	.align
_Label_834:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_835:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_836:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_837:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_839:
	.byte	'C'
	.ascii	"_temp_822\0"
	.align
_Label_840:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_841:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_842
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
_Label_842:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_843
	.word	_sourceFileName
	.word	172		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_843:
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
_Label_2933:
	push	r0
	sub	r1,1,r1
	bne	_Label_2933
	mov	631,r13		! source line 631
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	636,r13		! source line 636
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	637,r13		! source line 637
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	639,r13		! source line 639
	mov	"\0\0AS",r10
!   _temp_844 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_844) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_844 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	640,r13		! source line 640
	mov	"\0\0AS",r10
!   _temp_845 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_845 [0 ] into _temp_846
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
!   Data Move: *_temp_846 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	641,r13		! source line 641
	mov	"\0\0AS",r10
!   _temp_847 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_847 [999 ] into _temp_848
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
!   Data Move: *_temp_848 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	642,r13		! source line 642
	mov	"\0\0AS",r10
!   _temp_849 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_849 [999 ] into _temp_850
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
!   stackTop = _temp_850		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	643,r13		! source line 643
	mov	"\0\0AS",r10
!   _temp_851 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_853 = &_temp_852
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_853 = _temp_853 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_855:
!   Data Move: *_temp_853 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_853 = _temp_853 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_854 = _temp_854 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_854) then goto _Label_855
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_855
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_856 = &_temp_852
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_2934
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2934:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_851 = *_temp_856  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_2935:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2935
! ASSIGNMENT STATEMENT...
	mov	644,r13		! source line 644
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	645,r13		! source line 645
	mov	"\0\0AS",r10
!   _temp_857 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_859 = &_temp_858
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_859 = _temp_859 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_861:
!   Data Move: *_temp_859 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_859 = _temp_859 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_860 = _temp_860 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_860) then goto _Label_861
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_861
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_862 = &_temp_858
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_2936
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2936:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_857 = *_temp_862  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_2937:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2937
! RETURN STATEMENT...
	mov	645,r13		! source line 645
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
	.word	_Label_863
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_864
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_865
	.word	12
	.word	4
	.word	_Label_866
	.word	-12
	.word	4
	.word	_Label_867
	.word	-16
	.word	4
	.word	_Label_868
	.word	-20
	.word	4
	.word	_Label_869
	.word	-84
	.word	64
	.word	_Label_870
	.word	-88
	.word	4
	.word	_Label_871
	.word	-92
	.word	4
	.word	_Label_872
	.word	-96
	.word	4
	.word	_Label_873
	.word	-100
	.word	4
	.word	_Label_874
	.word	-156
	.word	56
	.word	_Label_875
	.word	-160
	.word	4
	.word	_Label_876
	.word	-164
	.word	4
	.word	_Label_877
	.word	-168
	.word	4
	.word	_Label_878
	.word	-172
	.word	4
	.word	_Label_879
	.word	-176
	.word	4
	.word	_Label_880
	.word	-180
	.word	4
	.word	_Label_881
	.word	-184
	.word	4
	.word	_Label_882
	.word	-188
	.word	4
	.word	0
_Label_863:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_864:
	.ascii	"Pself\0"
	.align
_Label_865:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_862\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_860\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_859\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_858\0"
	.align
_Label_870:
	.byte	'?'
	.ascii	"_temp_857\0"
	.align
_Label_871:
	.byte	'?'
	.ascii	"_temp_856\0"
	.align
_Label_872:
	.byte	'?'
	.ascii	"_temp_854\0"
	.align
_Label_873:
	.byte	'?'
	.ascii	"_temp_853\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_844\0"
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
_Label_2938:
	push	r0
	sub	r1,1,r1
	bne	_Label_2938
	mov	650,r13		! source line 650
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	661,r13		! source line 661
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	663,r13		! source line 663
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	664,r13		! source line 664
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	665,r13		! source line 665
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
	mov	666,r13		! source line 666
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_883 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_883  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	667,r13		! source line 667
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	668,r13		! source line 668
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_885 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_884  sizeInBytes=4
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
	mov	669,r13		! source line 669
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	669,r13		! source line 669
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
	.word	_Label_886
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_887
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_888
	.word	12
	.word	4
	.word	_Label_889
	.word	16
	.word	4
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
	.word	0
_Label_886:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_887:
	.ascii	"Pself\0"
	.align
_Label_888:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_889:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_890:
	.byte	'?'
	.ascii	"_temp_885\0"
	.align
_Label_891:
	.byte	'?'
	.ascii	"_temp_884\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_883\0"
	.align
_Label_893:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_894:
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
_Label_2939:
	push	r0
	sub	r1,1,r1
	bne	_Label_2939
	mov	674,r13		! source line 674
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	690,r13		! source line 690
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_897 == _P_Kernel_currentThread then goto _Label_896		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_896
!	jmp	_Label_895
_Label_895:
! THEN...
	mov	691,r13		! source line 691
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_898 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_898  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	691,r13		! source line 691
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_896:
! ASSIGNMENT STATEMENT...
	mov	693,r13		! source line 693
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	693,r13		! source line 693
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	697,r13		! source line 697
	mov	"\0\0AS",r10
	mov	697,r13		! source line 697
	mov	"\0\0SE",r10
!   _temp_899 = &_P_Kernel_readyList
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
	mov	698,r13		! source line 698
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_901		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_901
!	jmp	_Label_900
_Label_900:
! THEN...
	mov	702,r13		! source line 702
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	702,r13		! source line 702
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_903		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_903
!	jmp	_Label_902
_Label_902:
! THEN...
	mov	703,r13		! source line 703
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_904 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_904  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	703,r13		! source line 703
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_903:
! ASSIGNMENT STATEMENT...
	mov	705,r13		! source line 705
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	706,r13		! source line 706
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_906 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_905  sizeInBytes=4
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
	mov	707,r13		! source line 707
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_901:
! ASSIGNMENT STATEMENT...
	mov	709,r13		! source line 709
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	709,r13		! source line 709
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	709,r13		! source line 709
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
	.word	_Label_907
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_908
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_909
	.word	-12
	.word	4
	.word	_Label_910
	.word	-16
	.word	4
	.word	_Label_911
	.word	-20
	.word	4
	.word	_Label_912
	.word	-24
	.word	4
	.word	_Label_913
	.word	-28
	.word	4
	.word	_Label_914
	.word	-32
	.word	4
	.word	_Label_915
	.word	-36
	.word	4
	.word	_Label_916
	.word	-40
	.word	4
	.word	_Label_917
	.word	-44
	.word	4
	.word	0
_Label_907:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_908:
	.ascii	"Pself\0"
	.align
_Label_909:
	.byte	'?'
	.ascii	"_temp_906\0"
	.align
_Label_910:
	.byte	'?'
	.ascii	"_temp_905\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_904\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_899\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_898\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_897\0"
	.align
_Label_915:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_916:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_917:
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
_Label_2940:
	push	r0
	sub	r1,1,r1
	bne	_Label_2940
	mov	714,r13		! source line 714
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	726,r13		! source line 726
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_919		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_919
!	jmp	_Label_918
_Label_918:
! THEN...
	mov	727,r13		! source line 727
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_920 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_920  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	727,r13		! source line 727
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_919:
! IF STATEMENT...
	mov	730,r13		! source line 730
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_923 == _P_Kernel_currentThread then goto _Label_922		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_922
!	jmp	_Label_921
_Label_921:
! THEN...
	mov	731,r13		! source line 731
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_924 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_924  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	731,r13		! source line 731
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_922:
! ASSIGNMENT STATEMENT...
	mov	736,r13		! source line 736
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	737,r13		! source line 737
	mov	"\0\0AS",r10
	mov	737,r13		! source line 737
	mov	"\0\0SE",r10
!   _temp_925 = &_P_Kernel_readyList
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
	mov	738,r13		! source line 738
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_926
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_926
	jmp	_Label_927
_Label_926:
! THEN...
	mov	739,r13		! source line 739
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_928 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_928  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	739,r13		! source line 739
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_927:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	741,r13		! source line 741
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	741,r13		! source line 741
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
	.word	_Label_929
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_930
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_931
	.word	-12
	.word	4
	.word	_Label_932
	.word	-16
	.word	4
	.word	_Label_933
	.word	-20
	.word	4
	.word	_Label_934
	.word	-24
	.word	4
	.word	_Label_935
	.word	-28
	.word	4
	.word	_Label_936
	.word	-32
	.word	4
	.word	0
_Label_929:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_930:
	.ascii	"Pself\0"
	.align
_Label_931:
	.byte	'?'
	.ascii	"_temp_928\0"
	.align
_Label_932:
	.byte	'?'
	.ascii	"_temp_925\0"
	.align
_Label_933:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
_Label_934:
	.byte	'?'
	.ascii	"_temp_923\0"
	.align
_Label_935:
	.byte	'?'
	.ascii	"_temp_920\0"
	.align
_Label_936:
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
_Label_2941:
	push	r0
	sub	r1,1,r1
	bne	_Label_2941
	mov	746,r13		! source line 746
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	752,r13		! source line 752
	mov	"\0\0IF",r10
!   _temp_940 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_940 [0 ] into _temp_941
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
!   Data Move: _temp_939 = *_temp_941  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_939 == 606348324 then goto _Label_938		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_938
!	jmp	_Label_937
_Label_937:
! THEN...
	mov	753,r13		! source line 753
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_942 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_942  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	753,r13		! source line 753
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_943
_Label_938:
! ELSE...
	mov	754,r13		! source line 754
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	754,r13		! source line 754
	mov	"\0\0IF",r10
!   _temp_947 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_947 [999 ] into _temp_948
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
!   Data Move: _temp_946 = *_temp_948  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_946 == 606348324 then goto _Label_945		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_945
!	jmp	_Label_944
_Label_944:
! THEN...
	mov	755,r13		! source line 755
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_949 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_949  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	755,r13		! source line 755
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_945:
! END IF...
_Label_943:
! RETURN STATEMENT...
	mov	752,r13		! source line 752
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
	.word	_Label_950
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_951
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_952
	.word	-12
	.word	4
	.word	_Label_953
	.word	-16
	.word	4
	.word	_Label_954
	.word	-20
	.word	4
	.word	_Label_955
	.word	-24
	.word	4
	.word	_Label_956
	.word	-28
	.word	4
	.word	_Label_957
	.word	-32
	.word	4
	.word	_Label_958
	.word	-36
	.word	4
	.word	_Label_959
	.word	-40
	.word	4
	.word	0
_Label_950:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_951:
	.ascii	"Pself\0"
	.align
_Label_952:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_953:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_954:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_955:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_956:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_957:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_958:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_939\0"
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
_Label_2942:
	push	r0
	sub	r1,1,r1
	bne	_Label_2942
	mov	761,r13		! source line 761
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	767,r13		! source line 767
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	767,r13		! source line 767
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_960 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_960  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	768,r13		! source line 768
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	769,r13		! source line 769
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_961 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_961  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	770,r13		! source line 770
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_962  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	771,r13		! source line 771
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_963 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_963  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	772,r13		! source line 772
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_964 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_964  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	773,r13		! source line 773
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	774,r13		! source line 774
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_969 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_970 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_969  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_965:
!   Perform the FOR-LOOP termination test
!   if i > _temp_970 then goto _Label_968		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_968
_Label_966:
	mov	774,r13		! source line 774
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_971 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_971  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	775,r13		! source line 775
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_972 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_972  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	776,r13		! source line 776
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_973 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_973  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	777,r13		! source line 777
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_975 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_975 [i ] into _temp_976
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
!   Data Move: _temp_974 = *_temp_976  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_974  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	778,r13		! source line 778
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_977 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_977  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	779,r13		! source line 779
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_979 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_979 [i ] into _temp_980
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
!   Data Move: _temp_978 = *_temp_980  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_978  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	780,r13		! source line 780
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_981 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_981  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	781,r13		! source line 781
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_967:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_965
! END FOR
_Label_968:
! CALL STATEMENT...
!   _temp_982 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-116]
!   _temp_983 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_982  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_983  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	783,r13		! source line 783
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_984 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-108]
!   _temp_986 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_986 [0 ] into _temp_987
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
!   _temp_985 = _temp_987		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_984  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_985  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	784,r13		! source line 784
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	785,r13		! source line 785
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_990
	cmp	r1,2
	be	_Label_991
	cmp	r1,3
	be	_Label_992
	cmp	r1,4
	be	_Label_993
	cmp	r1,5
	be	_Label_994
	jmp	_Label_988
! CASE 1...
_Label_990:
! CALL STATEMENT...
!   _temp_995 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_995  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	787,r13		! source line 787
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	788,r13		! source line 788
	mov	"\0\0BR",r10
	jmp	_Label_989
! CASE 2...
_Label_991:
! CALL STATEMENT...
!   _temp_996 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_996  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	790,r13		! source line 790
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0BR",r10
	jmp	_Label_989
! CASE 3...
_Label_992:
! CALL STATEMENT...
!   _temp_997 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_997  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	793,r13		! source line 793
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	794,r13		! source line 794
	mov	"\0\0BR",r10
	jmp	_Label_989
! CASE 4...
_Label_993:
! CALL STATEMENT...
!   _temp_998 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_998  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	796,r13		! source line 796
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	797,r13		! source line 797
	mov	"\0\0BR",r10
	jmp	_Label_989
! CASE 5...
_Label_994:
! CALL STATEMENT...
!   _temp_999 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_999  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	799,r13		! source line 799
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	800,r13		! source line 800
	mov	"\0\0BR",r10
	jmp	_Label_989
! DEFAULT CASE...
_Label_988:
! CALL STATEMENT...
!   _temp_1000 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1000  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	802,r13		! source line 802
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_989:
! CALL STATEMENT...
!   _temp_1001 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1001  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	804,r13		! source line 804
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	805,r13		! source line 805
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	806,r13		! source line 806
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1002 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1002  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	807,r13		! source line 807
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	808,r13		! source line 808
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1007 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1008 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1007  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1003:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1008 then goto _Label_1006		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1006
_Label_1004:
	mov	808,r13		! source line 808
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1009 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1009  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	809,r13		! source line 809
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1010 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1010  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	810,r13		! source line 810
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1011 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1011  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	811,r13		! source line 811
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1013 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1013 [i ] into _temp_1014
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
!   Data Move: _temp_1012 = *_temp_1014  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1012  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	812,r13		! source line 812
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1015 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1015  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	813,r13		! source line 813
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1017 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1017 [i ] into _temp_1018
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
!   Data Move: _temp_1016 = *_temp_1018  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1016  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	814,r13		! source line 814
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1019 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1019  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	815,r13		! source line 815
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1005:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1003
! END FOR
_Label_1006:
! ASSIGNMENT STATEMENT...
	mov	817,r13		! source line 817
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	817,r13		! source line 817
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	817,r13		! source line 817
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
	.word	_Label_1020
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1021
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1022
	.word	-12
	.word	4
	.word	_Label_1023
	.word	-16
	.word	4
	.word	_Label_1024
	.word	-20
	.word	4
	.word	_Label_1025
	.word	-24
	.word	4
	.word	_Label_1026
	.word	-28
	.word	4
	.word	_Label_1027
	.word	-32
	.word	4
	.word	_Label_1028
	.word	-36
	.word	4
	.word	_Label_1029
	.word	-40
	.word	4
	.word	_Label_1030
	.word	-44
	.word	4
	.word	_Label_1031
	.word	-48
	.word	4
	.word	_Label_1032
	.word	-52
	.word	4
	.word	_Label_1033
	.word	-56
	.word	4
	.word	_Label_1034
	.word	-60
	.word	4
	.word	_Label_1035
	.word	-64
	.word	4
	.word	_Label_1036
	.word	-68
	.word	4
	.word	_Label_1037
	.word	-72
	.word	4
	.word	_Label_1038
	.word	-76
	.word	4
	.word	_Label_1039
	.word	-80
	.word	4
	.word	_Label_1040
	.word	-84
	.word	4
	.word	_Label_1041
	.word	-88
	.word	4
	.word	_Label_1042
	.word	-92
	.word	4
	.word	_Label_1043
	.word	-96
	.word	4
	.word	_Label_1044
	.word	-100
	.word	4
	.word	_Label_1045
	.word	-104
	.word	4
	.word	_Label_1046
	.word	-108
	.word	4
	.word	_Label_1047
	.word	-112
	.word	4
	.word	_Label_1048
	.word	-116
	.word	4
	.word	_Label_1049
	.word	-120
	.word	4
	.word	_Label_1050
	.word	-124
	.word	4
	.word	_Label_1051
	.word	-128
	.word	4
	.word	_Label_1052
	.word	-132
	.word	4
	.word	_Label_1053
	.word	-136
	.word	4
	.word	_Label_1054
	.word	-140
	.word	4
	.word	_Label_1055
	.word	-144
	.word	4
	.word	_Label_1056
	.word	-148
	.word	4
	.word	_Label_1057
	.word	-152
	.word	4
	.word	_Label_1058
	.word	-156
	.word	4
	.word	_Label_1059
	.word	-160
	.word	4
	.word	_Label_1060
	.word	-164
	.word	4
	.word	_Label_1061
	.word	-168
	.word	4
	.word	_Label_1062
	.word	-172
	.word	4
	.word	_Label_1063
	.word	-176
	.word	4
	.word	_Label_1064
	.word	-180
	.word	4
	.word	_Label_1065
	.word	-184
	.word	4
	.word	_Label_1066
	.word	-188
	.word	4
	.word	_Label_1067
	.word	-192
	.word	4
	.word	_Label_1068
	.word	-196
	.word	4
	.word	0
_Label_1020:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1021:
	.ascii	"Pself\0"
	.align
_Label_1022:
	.byte	'?'
	.ascii	"_temp_1019\0"
	.align
_Label_1023:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1024:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1025:
	.byte	'?'
	.ascii	"_temp_1016\0"
	.align
_Label_1026:
	.byte	'?'
	.ascii	"_temp_1015\0"
	.align
_Label_1027:
	.byte	'?'
	.ascii	"_temp_1014\0"
	.align
_Label_1028:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1029:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1030:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1031:
	.byte	'?'
	.ascii	"_temp_1010\0"
	.align
_Label_1032:
	.byte	'?'
	.ascii	"_temp_1009\0"
	.align
_Label_1033:
	.byte	'?'
	.ascii	"_temp_1008\0"
	.align
_Label_1034:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1035:
	.byte	'?'
	.ascii	"_temp_1002\0"
	.align
_Label_1036:
	.byte	'?'
	.ascii	"_temp_1001\0"
	.align
_Label_1037:
	.byte	'?'
	.ascii	"_temp_1000\0"
	.align
_Label_1038:
	.byte	'?'
	.ascii	"_temp_999\0"
	.align
_Label_1039:
	.byte	'?'
	.ascii	"_temp_998\0"
	.align
_Label_1040:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1041:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1042:
	.byte	'?'
	.ascii	"_temp_995\0"
	.align
_Label_1043:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_1044:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_1045:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_1046:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_1047:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_1048:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_1049:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_1050:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_1051:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_1052:
	.byte	'?'
	.ascii	"_temp_978\0"
	.align
_Label_1053:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_1054:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_1055:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_1056:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
_Label_1057:
	.byte	'?'
	.ascii	"_temp_973\0"
	.align
_Label_1058:
	.byte	'?'
	.ascii	"_temp_972\0"
	.align
_Label_1059:
	.byte	'?'
	.ascii	"_temp_971\0"
	.align
_Label_1060:
	.byte	'?'
	.ascii	"_temp_970\0"
	.align
_Label_1061:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_1062:
	.byte	'?'
	.ascii	"_temp_964\0"
	.align
_Label_1063:
	.byte	'?'
	.ascii	"_temp_963\0"
	.align
_Label_1064:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_1065:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_1066:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_1067:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1068:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1069
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1069:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1070
	.word	_sourceFileName
	.word	199		! line number
	.word	41776		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1070:
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
_Label_2943:
	push	r0
	sub	r1,1,r1
	bne	_Label_2943
	mov	872,r13		! source line 872
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1071 = _StringConst_106
	set	_StringConst_106,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1071  sizeInBytes=4
	set	-45908,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	879,r13		! source line 879
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	881,r13		! source line 881
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
	mov	882,r13		! source line 882
	mov	"\0\0SE",r10
!   _temp_1073 = &ThreadLock
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
	mov	883,r13		! source line 883
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: ThreadFree = zeros  (sizeInBytes=96)
	load	[r14+8],r4
	add	r4,24,r4
	mov	24,r3
_Label_2944:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2944
!   ThreadFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! SEND STATEMENT...
	mov	884,r13		! source line 884
	mov	"\0\0SE",r10
!   _temp_1075 = &ThreadFree
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
	mov	886,r13		! source line 886
	mov	"\0\0AS",r10
!   _temp_1076 = &threadTable
	load	[r14+8],r1
	add	r1,120,r1
	set	-45888,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1078 = &_temp_1077
	set	-45884,r1
	add	r14,r1,r1
	store	r1,[r14+-4240]
!   _temp_1078 = _temp_1078 + 4
	load	[r14+-4240],r1
	add	r1,4,r1
	store	r1,[r14+-4240]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1080 = zeros  (sizeInBytes=4164)
	add	r14,-4232,r4
	mov	1041,r3
_Label_2945:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2945
!   _temp_1080 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4232]
	mov	10,r1
	store	r1,[r14+-4236]
_Label_1082:
!   Data Move: *_temp_1078 = _temp_1080  (sizeInBytes=4164)
	add	r14,-4232,r5
	load	[r14+-4240],r4
	mov	1041,r3
_Label_2946:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2946
!   _temp_1078 = _temp_1078 + 4164
	load	[r14+-4240],r1
	add	r1,4164,r1
	store	r1,[r14+-4240]
!   _temp_1079 = _temp_1079 + -1
	load	[r14+-4236],r1
	add	r1,-1,r1
	store	r1,[r14+-4236]
!   if intNotZero (_temp_1079) then goto _Label_1082
	load	[r14+-4236],r1
	cmp	r1,r0
	bne	_Label_1082
!   Initialize the array size...
	mov	10,r1
	set	-45884,r2
	store	r1,[r14+r2]
!   _temp_1083 = &_temp_1077
	set	-45884,r1
	add	r14,r1,r1
	store	r1,[r14+-64]
!   make sure array has size 10
	set	-45888,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_2947
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2947:
!   make sure array has size 10
	load	[r14+-64],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1076 = *_temp_1083  (sizeInBytes=41644)
	load	[r14+-64],r5
	set	-45888,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_2948:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2948
! ASSIGNMENT STATEMENT...
	mov	887,r13		! source line 887
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
	mov	890,r13		! source line 890
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1089 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1090 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1089  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_1085:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1090 then goto _Label_1088		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1088
_Label_1086:
	mov	890,r13		! source line 890
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	891,r13		! source line 891
	mov	"\0\0SE",r10
!   _temp_1091 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-48]
!   _temp_1092 = &threadTable
	load	[r14+8],r1
	add	r1,120,r1
	store	r1,[r14+-44]
!   Move address of _temp_1092 [i ] into _temp_1093
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
!   Prepare Argument: offset=12  value=_temp_1091  sizeInBytes=4
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
	mov	892,r13		! source line 892
	mov	"\0\0AS",r10
!   _temp_1094 = &threadTable
	load	[r14+8],r1
	add	r1,120,r1
	store	r1,[r14+-36]
!   Move address of _temp_1094 [i ] into _temp_1095
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
!   _temp_1096 = _temp_1095 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1096 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	893,r13		! source line 893
	mov	"\0\0SE",r10
!   _temp_1098 = &threadTable
	load	[r14+8],r1
	add	r1,120,r1
	store	r1,[r14+-20]
!   Move address of _temp_1098 [i ] into _temp_1099
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
!   _temp_1097 = _temp_1099		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1100 = &freeList
	set	41764,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1097  sizeInBytes=4
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
_Label_1087:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_1085
! END FOR
_Label_1088:
! RETURN STATEMENT...
	mov	890,r13		! source line 890
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
	.word	_Label_1101
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
	.word	_Label_1102
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1103
	.word	-12
	.word	4
	.word	_Label_1104
	.word	-16
	.word	4
	.word	_Label_1105
	.word	-20
	.word	4
	.word	_Label_1106
	.word	-24
	.word	4
	.word	_Label_1107
	.word	-28
	.word	4
	.word	_Label_1108
	.word	-32
	.word	4
	.word	_Label_1109
	.word	-36
	.word	4
	.word	_Label_1110
	.word	-40
	.word	4
	.word	_Label_1111
	.word	-44
	.word	4
	.word	_Label_1112
	.word	-48
	.word	4
	.word	_Label_1113
	.word	-52
	.word	4
	.word	_Label_1114
	.word	-56
	.word	4
	.word	_Label_1115
	.word	-60
	.word	4
	.word	_Label_1116
	.word	-64
	.word	4
	.word	_Label_1117
	.word	-68
	.word	4
	.word	_Label_1118
	.word	-4232
	.word	4164
	.word	_Label_1119
	.word	-4236
	.word	4
	.word	_Label_1120
	.word	-4240
	.word	4
	.word	_Label_1121
	.word	-45884
	.word	41644
	.word	_Label_1122
	.word	-45888
	.word	4
	.word	_Label_1123
	.word	-45892
	.word	4
	.word	_Label_1124
	.word	-45896
	.word	4
	.word	_Label_1125
	.word	-45900
	.word	4
	.word	_Label_1126
	.word	-45904
	.word	4
	.word	_Label_1127
	.word	-45908
	.word	4
	.word	_Label_1128
	.word	-45912
	.word	4
	.word	0
_Label_1101:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1102:
	.ascii	"Pself\0"
	.align
_Label_1103:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1104:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1105:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1106:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1096\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_1091\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1090\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1128:
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
_Label_2949:
	push	r0
	sub	r1,1,r1
	bne	_Label_2949
	mov	900,r13		! source line 900
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	907,r13		! source line 907
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	907,r13		! source line 907
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1129 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1129  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	908,r13		! source line 908
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	909,r13		! source line 909
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1134 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1135 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1134  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1130:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1135 then goto _Label_1133		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1133
_Label_1131:
	mov	909,r13		! source line 909
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1136 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1136  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	910,r13		! source line 910
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	911,r13		! source line 911
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1137 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1137  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	912,r13		! source line 912
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1139 = &threadTable
	load	[r14+8],r1
	add	r1,120,r1
	store	r1,[r14+-28]
!   Move address of _temp_1139 [i ] into _temp_1140
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
!   _temp_1138 = _temp_1140		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1138  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	913,r13		! source line 913
	mov	"\0\0CA",r10
	call	_function_214_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1132:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1130
! END FOR
_Label_1133:
! CALL STATEMENT...
!   _temp_1141 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1141  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	915,r13		! source line 915
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	916,r13		! source line 916
	mov	"\0\0SE",r10
!   _temp_1142 = _function_213_PrintObjectAddr
	set	_function_213_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1143 = &freeList
	set	41764,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1142  sizeInBytes=4
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
	mov	917,r13		! source line 917
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	918,r13		! source line 918
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	918,r13		! source line 918
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	918,r13		! source line 918
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
	.word	_Label_1144
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1145
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1146
	.word	-12
	.word	4
	.word	_Label_1147
	.word	-16
	.word	4
	.word	_Label_1148
	.word	-20
	.word	4
	.word	_Label_1149
	.word	-24
	.word	4
	.word	_Label_1150
	.word	-28
	.word	4
	.word	_Label_1151
	.word	-32
	.word	4
	.word	_Label_1152
	.word	-36
	.word	4
	.word	_Label_1153
	.word	-40
	.word	4
	.word	_Label_1154
	.word	-44
	.word	4
	.word	_Label_1155
	.word	-48
	.word	4
	.word	_Label_1156
	.word	-52
	.word	4
	.word	_Label_1157
	.word	-56
	.word	4
	.word	_Label_1158
	.word	-60
	.word	4
	.word	0
_Label_1144:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1145:
	.ascii	"Pself\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1157:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1158:
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
_Label_2950:
	push	r0
	sub	r1,1,r1
	bne	_Label_2950
	mov	923,r13		! source line 923
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	931,r13		! source line 931
	mov	"\0\0SE",r10
!   _temp_1159 = &ThreadLock
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
	mov	934,r13		! source line 934
	mov	"\0\0WH",r10
_Label_1160:
	mov	934,r13		! source line 934
	mov	"\0\0SE",r10
!   _temp_1164 = &freeList
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
!   Retrieve Result: targetName=_temp_1163  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1165 = _temp_1163 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1165 then goto _Label_1162 else goto _Label_1161
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1161
	jmp	_Label_1162
_Label_1161:
	mov	934,r13		! source line 934
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	935,r13		! source line 935
	mov	"\0\0SE",r10
!   _temp_1166 = &ThreadLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   _temp_1167 = &ThreadFree
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1166  sizeInBytes=4
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
	jmp	_Label_1160
_Label_1162:
! ASSIGNMENT STATEMENT...
	mov	938,r13		! source line 938
	mov	"\0\0AS",r10
	mov	938,r13		! source line 938
	mov	"\0\0SE",r10
!   _temp_1168 = &freeList
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
	mov	939,r13		! source line 939
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1169 = t + 76
	load	[r14+-44],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1169 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	940,r13		! source line 940
	mov	"\0\0SE",r10
!   _temp_1170 = &ThreadLock
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
	mov	941,r13		! source line 941
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
	.word	_Label_1171
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1172
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1173
	.word	-16
	.word	4
	.word	_Label_1174
	.word	-20
	.word	4
	.word	_Label_1175
	.word	-24
	.word	4
	.word	_Label_1176
	.word	-28
	.word	4
	.word	_Label_1177
	.word	-32
	.word	4
	.word	_Label_1178
	.word	-9
	.word	1
	.word	_Label_1179
	.word	-36
	.word	4
	.word	_Label_1180
	.word	-10
	.word	1
	.word	_Label_1181
	.word	-40
	.word	4
	.word	_Label_1182
	.word	-44
	.word	4
	.word	0
_Label_1171:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1172:
	.ascii	"Pself\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1178:
	.byte	'C'
	.ascii	"_temp_1165\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1180:
	.byte	'C'
	.ascii	"_temp_1163\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1159\0"
	.align
_Label_1182:
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
_Label_2951:
	push	r0
	sub	r1,1,r1
	bne	_Label_2951
	mov	946,r13		! source line 946
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	951,r13		! source line 951
	mov	"\0\0SE",r10
!   _temp_1183 = &ThreadLock
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
	mov	952,r13		! source line 952
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1184 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1184 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	953,r13		! source line 953
	mov	"\0\0SE",r10
!   _temp_1185 = &freeList
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
	mov	954,r13		! source line 954
	mov	"\0\0SE",r10
!   _temp_1186 = &ThreadLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1187 = &ThreadFree
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1186  sizeInBytes=4
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
	mov	956,r13		! source line 956
	mov	"\0\0SE",r10
!   _temp_1188 = &ThreadLock
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
	mov	956,r13		! source line 956
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
	.word	_Label_1189
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1190
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1191
	.word	12
	.word	4
	.word	_Label_1192
	.word	-12
	.word	4
	.word	_Label_1193
	.word	-16
	.word	4
	.word	_Label_1194
	.word	-20
	.word	4
	.word	_Label_1195
	.word	-24
	.word	4
	.word	_Label_1196
	.word	-28
	.word	4
	.word	_Label_1197
	.word	-32
	.word	4
	.word	0
_Label_1189:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1190:
	.ascii	"Pself\0"
	.align
_Label_1191:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1188\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1196:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1198
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1198:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1199
	.word	_sourceFileName
	.word	220		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1199:
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
_Label_2952:
	push	r0
	sub	r1,1,r1
	bne	_Label_2952
	mov	969,r13		! source line 969
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	970,r13		! source line 970
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	971,r13		! source line 971
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	972,r13		! source line 972
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_2953:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2953
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0SE",r10
!   _temp_1201 = &addrSpace
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
	mov	973,r13		! source line 973
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
	.word	_Label_1202
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1203
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1204
	.word	-12
	.word	4
	.word	_Label_1205
	.word	-16
	.word	4
	.word	0
_Label_1202:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1203:
	.ascii	"Pself\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1200\0"
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
_Label_2954:
	push	r0
	sub	r1,1,r1
	bne	_Label_2954
	mov	983,r13		! source line 983
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	988,r13		! source line 988
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1206) then goto _runtimeErrorNullPointer
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
	mov	989,r13		! source line 989
	mov	"\0\0SE",r10
!   _temp_1207 = &addrSpace
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
!   _temp_1208 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1208  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	990,r13		! source line 990
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	991,r13		! source line 991
	mov	"\0\0CA",r10
	call	_function_214_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	1001,r13		! source line 1001
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1001,r13		! source line 1001
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
	.word	_Label_1209
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1210
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1211
	.word	-12
	.word	4
	.word	_Label_1212
	.word	-16
	.word	4
	.word	_Label_1213
	.word	-20
	.word	4
	.word	0
_Label_1209:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1210:
	.ascii	"Pself\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1207\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1206\0"
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
_Label_2955:
	push	r0
	sub	r1,1,r1
	bne	_Label_2955
	mov	1006,r13		! source line 1006
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1214 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1214  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1010,r13		! source line 1010
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1215  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1011,r13		! source line 1011
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1216 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1216  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1012,r13		! source line 1012
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1013,r13		! source line 1013
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1217 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1217  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1014,r13		! source line 1014
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1015,r13		! source line 1015
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1219		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1219
!	jmp	_Label_1218
_Label_1218:
! THEN...
	mov	1016,r13		! source line 1016
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1220 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1220  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1016,r13		! source line 1016
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1221
_Label_1219:
! ELSE...
	mov	1017,r13		! source line 1017
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1017,r13		! source line 1017
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1223		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1223
!	jmp	_Label_1222
_Label_1222:
! THEN...
	mov	1018,r13		! source line 1018
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1224 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1224  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1018,r13		! source line 1018
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1225
_Label_1223:
! ELSE...
	mov	1019,r13		! source line 1019
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1019,r13		! source line 1019
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1227		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1227
!	jmp	_Label_1226
_Label_1226:
! THEN...
	mov	1020,r13		! source line 1020
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1228 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1228  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1020,r13		! source line 1020
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1229
_Label_1227:
! ELSE...
	mov	1022,r13		! source line 1022
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1230 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1230  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1022,r13		! source line 1022
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1229:
! END IF...
_Label_1225:
! END IF...
_Label_1221:
! CALL STATEMENT...
!   _temp_1231 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1231  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1024,r13		! source line 1024
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1025,r13		! source line 1025
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1232 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1232  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1026,r13		! source line 1026
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1027,r13		! source line 1027
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1028,r13		! source line 1028
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1028,r13		! source line 1028
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
	.word	_Label_1233
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1234
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1235
	.word	-12
	.word	4
	.word	_Label_1236
	.word	-16
	.word	4
	.word	_Label_1237
	.word	-20
	.word	4
	.word	_Label_1238
	.word	-24
	.word	4
	.word	_Label_1239
	.word	-28
	.word	4
	.word	_Label_1240
	.word	-32
	.word	4
	.word	_Label_1241
	.word	-36
	.word	4
	.word	_Label_1242
	.word	-40
	.word	4
	.word	_Label_1243
	.word	-44
	.word	4
	.word	_Label_1244
	.word	-48
	.word	4
	.word	0
_Label_1233:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1234:
	.ascii	"Pself\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1232\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1231\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1215\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1245
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1245:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1246
	.word	_sourceFileName
	.word	240		! line number
	.word	1476		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1246:
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
_Label_2956:
	push	r0
	sub	r1,1,r1
	bne	_Label_2956
	mov	1039,r13		! source line 1039
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1046,r13		! source line 1046
	mov	"\0\0AS",r10
!   _temp_1247 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1468]
!   NEW ARRAY Constructor...
!   _temp_1249 = &_temp_1248
	add	r14,-1464,r1
	store	r1,[r14+-220]
!   _temp_1249 = _temp_1249 + 4
	load	[r14+-220],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1251 = zeros  (sizeInBytes=124)
	add	r14,-212,r4
	mov	31,r3
_Label_2957:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2957
!   _temp_1251 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-212]
	mov	10,r1
	store	r1,[r14+-216]
_Label_1253:
!   Data Move: *_temp_1249 = _temp_1251  (sizeInBytes=124)
	add	r14,-212,r5
	load	[r14+-220],r4
	mov	31,r3
_Label_2958:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2958
!   _temp_1249 = _temp_1249 + 124
	load	[r14+-220],r1
	add	r1,124,r1
	store	r1,[r14+-220]
!   _temp_1250 = _temp_1250 + -1
	load	[r14+-216],r1
	add	r1,-1,r1
	store	r1,[r14+-216]
!   if intNotZero (_temp_1250) then goto _Label_1253
	load	[r14+-216],r1
	cmp	r1,r0
	bne	_Label_1253
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1464]
!   _temp_1254 = &_temp_1248
	add	r14,-1464,r1
	store	r1,[r14+-84]
!   make sure array has size 10
	load	[r14+-1468],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_2959
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2959:
!   make sure array has size 10
	load	[r14+-84],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1247 = *_temp_1254  (sizeInBytes=1244)
	load	[r14+-84],r5
	load	[r14+-1468],r4
	mov	311,r3
_Label_2960:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2960
! ASSIGNMENT STATEMENT...
	mov	1048,r13		! source line 1048
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
	mov	1049,r13		! source line 1049
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=96)
	load	[r14+8],r4
	add	r4,1268,r4
	mov	24,r3
_Label_2961:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2961
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! ASSIGNMENT STATEMENT...
	mov	1050,r13		! source line 1050
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=96)
	load	[r14+8],r4
	add	r4,1376,r4
	mov	24,r3
_Label_2962:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2962
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1376]
! SEND STATEMENT...
	mov	1052,r13		! source line 1052
	mov	"\0\0SE",r10
!   _temp_1258 = &processManagerLock
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
	mov	1053,r13		! source line 1053
	mov	"\0\0SE",r10
!   _temp_1259 = &aProcessBecameFree
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
	mov	1054,r13		! source line 1054
	mov	"\0\0SE",r10
!   _temp_1260 = &aProcessDied
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
	mov	1056,r13		! source line 1056
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
	mov	1058,r13		! source line 1058
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1266 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1267 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1266  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1472]
_Label_1262:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1267 then goto _Label_1265		
	load	[r14+-1472],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1265
_Label_1263:
	mov	1058,r13		! source line 1058
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	1059,r13		! source line 1059
	mov	"\0\0SE",r10
!   _temp_1268 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1268 [i ] into _temp_1269
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
	mov	1060,r13		! source line 1060
	mov	"\0\0AS",r10
!   _temp_1270 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1270 [i ] into _temp_1271
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
!   _temp_1272 = _temp_1271 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1272 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1061,r13		! source line 1061
	mov	"\0\0SE",r10
!   _temp_1274 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1274 [i ] into _temp_1275
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
!   _temp_1273 = _temp_1275		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1276 = &freeList
	load	[r14+8],r1
	add	r1,1364,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1273  sizeInBytes=4
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
_Label_1264:
!   i = i + 1
	load	[r14+-1472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1472]
	jmp	_Label_1262
! END FOR
_Label_1265:
! ASSIGNMENT STATEMENT...
	mov	1064,r13		! source line 1064
	mov	"\0\0AS",r10
!   nextPid = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+1472]
! RETURN STATEMENT...
	mov	1064,r13		! source line 1064
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
	.word	_Label_1277
	.word	4		! total size of parameters
	.word	1472		! frame size = 1472
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
	.word	-24
	.word	4
	.word	_Label_1283
	.word	-28
	.word	4
	.word	_Label_1284
	.word	-32
	.word	4
	.word	_Label_1285
	.word	-36
	.word	4
	.word	_Label_1286
	.word	-40
	.word	4
	.word	_Label_1287
	.word	-44
	.word	4
	.word	_Label_1288
	.word	-48
	.word	4
	.word	_Label_1289
	.word	-52
	.word	4
	.word	_Label_1290
	.word	-56
	.word	4
	.word	_Label_1291
	.word	-60
	.word	4
	.word	_Label_1292
	.word	-64
	.word	4
	.word	_Label_1293
	.word	-68
	.word	4
	.word	_Label_1294
	.word	-72
	.word	4
	.word	_Label_1295
	.word	-76
	.word	4
	.word	_Label_1296
	.word	-80
	.word	4
	.word	_Label_1297
	.word	-84
	.word	4
	.word	_Label_1298
	.word	-88
	.word	4
	.word	_Label_1299
	.word	-212
	.word	124
	.word	_Label_1300
	.word	-216
	.word	4
	.word	_Label_1301
	.word	-220
	.word	4
	.word	_Label_1302
	.word	-1464
	.word	1244
	.word	_Label_1303
	.word	-1468
	.word	4
	.word	_Label_1304
	.word	-1472
	.word	4
	.word	0
_Label_1277:
	.ascii	"ProcessManager"
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
	.ascii	"_temp_1275\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1271\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1270\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1293:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1297:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1298:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1299:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1304:
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
_Label_2963:
	push	r0
	sub	r1,1,r1
	bne	_Label_2963
	mov	1069,r13		! source line 1069
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1076,r13		! source line 1076
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1076,r13		! source line 1076
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1305 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1305  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1077,r13		! source line 1077
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1078,r13		! source line 1078
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1310 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1311 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1310  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1306:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1311 then goto _Label_1309		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1309
_Label_1307:
	mov	1078,r13		! source line 1078
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1312 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1312  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1079,r13		! source line 1079
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1080,r13		! source line 1080
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1313 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1313  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1081,r13		! source line 1081
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1082,r13		! source line 1082
	mov	"\0\0SE",r10
!   _temp_1314 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1314 [i ] into _temp_1315
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
_Label_1308:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1306
! END FOR
_Label_1309:
! CALL STATEMENT...
!   _temp_1316 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1316  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1084,r13		! source line 1084
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1085,r13		! source line 1085
	mov	"\0\0SE",r10
!   _temp_1317 = _function_213_PrintObjectAddr
	set	_function_213_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1318 = &freeList
	load	[r14+8],r1
	add	r1,1364,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1317  sizeInBytes=4
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
	mov	1086,r13		! source line 1086
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1087,r13		! source line 1087
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1087,r13		! source line 1087
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	1087,r13		! source line 1087
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
	.word	_Label_1319
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1320
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1321
	.word	-12
	.word	4
	.word	_Label_1322
	.word	-16
	.word	4
	.word	_Label_1323
	.word	-20
	.word	4
	.word	_Label_1324
	.word	-24
	.word	4
	.word	_Label_1325
	.word	-28
	.word	4
	.word	_Label_1326
	.word	-32
	.word	4
	.word	_Label_1327
	.word	-36
	.word	4
	.word	_Label_1328
	.word	-40
	.word	4
	.word	_Label_1329
	.word	-44
	.word	4
	.word	_Label_1330
	.word	-48
	.word	4
	.word	_Label_1331
	.word	-52
	.word	4
	.word	_Label_1332
	.word	-56
	.word	4
	.word	0
_Label_1319:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1320:
	.ascii	"Pself\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1331:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1332:
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
_Label_2964:
	push	r0
	sub	r1,1,r1
	bne	_Label_2964
	mov	1092,r13		! source line 1092
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1099,r13		! source line 1099
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1099,r13		! source line 1099
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1333 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1333  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1100,r13		! source line 1100
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1101,r13		! source line 1101
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1338 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1339 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1338  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1334:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1339 then goto _Label_1337		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1337
_Label_1335:
	mov	1101,r13		! source line 1101
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1340 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1340  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1102,r13		! source line 1102
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1103,r13		! source line 1103
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	1104,r13		! source line 1104
	mov	"\0\0SE",r10
!   _temp_1341 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1341 [i ] into _temp_1342
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
_Label_1336:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1334
! END FOR
_Label_1337:
! CALL STATEMENT...
!   _temp_1343 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1343  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1106,r13		! source line 1106
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1107,r13		! source line 1107
	mov	"\0\0SE",r10
!   _temp_1344 = _function_213_PrintObjectAddr
	set	_function_213_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1345 = &freeList
	load	[r14+8],r1
	add	r1,1364,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1344  sizeInBytes=4
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
	mov	1108,r13		! source line 1108
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1109,r13		! source line 1109
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1109,r13		! source line 1109
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	1109,r13		! source line 1109
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
	.word	_Label_1346
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1347
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1348
	.word	-12
	.word	4
	.word	_Label_1349
	.word	-16
	.word	4
	.word	_Label_1350
	.word	-20
	.word	4
	.word	_Label_1351
	.word	-24
	.word	4
	.word	_Label_1352
	.word	-28
	.word	4
	.word	_Label_1353
	.word	-32
	.word	4
	.word	_Label_1354
	.word	-36
	.word	4
	.word	_Label_1355
	.word	-40
	.word	4
	.word	_Label_1356
	.word	-44
	.word	4
	.word	_Label_1357
	.word	-48
	.word	4
	.word	_Label_1358
	.word	-52
	.word	4
	.word	0
_Label_1346:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1347:
	.ascii	"Pself\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1357:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1358:
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
_Label_2965:
	push	r0
	sub	r1,1,r1
	bne	_Label_2965
	mov	1114,r13		! source line 1114
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1122,r13		! source line 1122
	mov	"\0\0SE",r10
!   _temp_1359 = &processManagerLock
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
	mov	1124,r13		! source line 1124
	mov	"\0\0WH",r10
_Label_1360:
	mov	1124,r13		! source line 1124
	mov	"\0\0SE",r10
!   _temp_1364 = &freeList
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
!   Retrieve Result: targetName=_temp_1363  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1365 = _temp_1363 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1365 then goto _Label_1362 else goto _Label_1361
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1361
	jmp	_Label_1362
_Label_1361:
	mov	1124,r13		! source line 1124
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1125,r13		! source line 1125
	mov	"\0\0SE",r10
!   _temp_1366 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-36]
!   _temp_1367 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1366  sizeInBytes=4
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
	jmp	_Label_1360
_Label_1362:
! ASSIGNMENT STATEMENT...
	mov	1128,r13		! source line 1128
	mov	"\0\0AS",r10
	mov	1128,r13		! source line 1128
	mov	"\0\0SE",r10
!   _temp_1368 = &freeList
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
	mov	1129,r13		! source line 1129
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1369 = p + 20
	load	[r14+-48],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1369 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1130,r13		! source line 1130
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1370 = p + 12
	load	[r14+-48],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1370 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1472],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1132,r13		! source line 1132
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
	mov	1133,r13		! source line 1133
	mov	"\0\0SE",r10
!   _temp_1371 = &processManagerLock
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
	mov	1134,r13		! source line 1134
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
	.word	_Label_1372
	.word	4		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1373
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1374
	.word	-16
	.word	4
	.word	_Label_1375
	.word	-20
	.word	4
	.word	_Label_1376
	.word	-24
	.word	4
	.word	_Label_1377
	.word	-28
	.word	4
	.word	_Label_1378
	.word	-32
	.word	4
	.word	_Label_1379
	.word	-36
	.word	4
	.word	_Label_1380
	.word	-9
	.word	1
	.word	_Label_1381
	.word	-40
	.word	4
	.word	_Label_1382
	.word	-10
	.word	1
	.word	_Label_1383
	.word	-44
	.word	4
	.word	_Label_1384
	.word	-48
	.word	4
	.word	0
_Label_1372:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1373:
	.ascii	"Pself\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1367\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1366\0"
	.align
_Label_1380:
	.byte	'C'
	.ascii	"_temp_1365\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1382:
	.byte	'C'
	.ascii	"_temp_1363\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1384:
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
_Label_2966:
	push	r0
	sub	r1,1,r1
	bne	_Label_2966
	mov	1139,r13		! source line 1139
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1144,r13		! source line 1144
	mov	"\0\0SE",r10
!   _temp_1385 = &processManagerLock
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
	mov	1145,r13		! source line 1145
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1386 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1386 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1146,r13		! source line 1146
	mov	"\0\0SE",r10
!   _temp_1387 = &freeList
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
	mov	1148,r13		! source line 1148
	mov	"\0\0SE",r10
!   _temp_1388 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1389 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1388  sizeInBytes=4
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
	mov	1149,r13		! source line 1149
	mov	"\0\0SE",r10
!   _temp_1390 = &processManagerLock
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
	mov	1149,r13		! source line 1149
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
	.word	_Label_1391
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1392
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1393
	.word	12
	.word	4
	.word	_Label_1394
	.word	-12
	.word	4
	.word	_Label_1395
	.word	-16
	.word	4
	.word	_Label_1396
	.word	-20
	.word	4
	.word	_Label_1397
	.word	-24
	.word	4
	.word	_Label_1398
	.word	-28
	.word	4
	.word	_Label_1399
	.word	-32
	.word	4
	.word	0
_Label_1391:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1392:
	.ascii	"Pself\0"
	.align
_Label_1393:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1400
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1400:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1401
	.word	_sourceFileName
	.word	263		! line number
	.word	136		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1401:
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
_Label_2967:
	push	r0
	sub	r1,1,r1
	bne	_Label_2967
	mov	1182,r13		! source line 1182
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1402 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1402  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1188,r13		! source line 1188
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1189,r13		! source line 1189
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
	mov	1190,r13		! source line 1190
	mov	"\0\0SE",r10
!   _temp_1404 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=100  sizeInBytes=4
	mov	100,r1
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
	mov	1191,r13		! source line 1191
	mov	"\0\0AS",r10
!   numberFreeFrames = 100		(4 bytes)
	mov	100,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1192,r13		! source line 1192
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
	mov	1193,r13		! source line 1193
	mov	"\0\0SE",r10
!   _temp_1406 = &frameManagerLock
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
	mov	1194,r13		! source line 1194
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=96)
	load	[r14+8],r4
	add	r4,40,r4
	mov	24,r3
_Label_2968:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2968
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1195,r13		! source line 1195
	mov	"\0\0SE",r10
!   _temp_1408 = &newFramesAvailable
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
	mov	1201,r13		! source line 1201
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1413 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1414 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1413  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1409:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1414 then goto _Label_1412		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1412
_Label_1410:
	mov	1201,r13		! source line 1201
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1204,r13		! source line 1204
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1417 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1417) then goto _Label_1416
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1416
!	jmp	_Label_1415
_Label_1415:
! THEN...
	mov	1205,r13		! source line 1205
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1418 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1418  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1205,r13		! source line 1205
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1416:
!   Increment the FOR-LOOP index variable and jump back
_Label_1411:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1409
! END FOR
_Label_1412:
! RETURN STATEMENT...
	mov	1201,r13		! source line 1201
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
	.word	_Label_1419
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1420
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1421
	.word	-12
	.word	4
	.word	_Label_1422
	.word	-16
	.word	4
	.word	_Label_1423
	.word	-20
	.word	4
	.word	_Label_1424
	.word	-24
	.word	4
	.word	_Label_1425
	.word	-28
	.word	4
	.word	_Label_1426
	.word	-32
	.word	4
	.word	_Label_1427
	.word	-36
	.word	4
	.word	_Label_1428
	.word	-40
	.word	4
	.word	_Label_1429
	.word	-44
	.word	4
	.word	_Label_1430
	.word	-48
	.word	4
	.word	_Label_1431
	.word	-52
	.word	4
	.word	_Label_1432
	.word	-56
	.word	4
	.word	0
_Label_1419:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1420:
	.ascii	"Pself\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1406\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1432:
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
_Label_2969:
	push	r0
	sub	r1,1,r1
	bne	_Label_2969
	mov	1212,r13		! source line 1212
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1216,r13		! source line 1216
	mov	"\0\0SE",r10
!   _temp_1433 = &frameManagerLock
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
!   _temp_1434 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1434  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1217,r13		! source line 1217
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1435 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1435  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1218,r13		! source line 1218
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1436 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1436  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1219,r13		! source line 1219
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1220,r13		! source line 1220
	mov	"\0\0SE",r10
!   _temp_1437 = &framesInUse
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
	mov	1221,r13		! source line 1221
	mov	"\0\0SE",r10
!   _temp_1438 = &frameManagerLock
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
	mov	1221,r13		! source line 1221
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
	.word	_Label_1439
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1440
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1441
	.word	-12
	.word	4
	.word	_Label_1442
	.word	-16
	.word	4
	.word	_Label_1443
	.word	-20
	.word	4
	.word	_Label_1444
	.word	-24
	.word	4
	.word	_Label_1445
	.word	-28
	.word	4
	.word	_Label_1446
	.word	-32
	.word	4
	.word	0
_Label_1439:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1440:
	.ascii	"Pself\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1437\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1434\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1433\0"
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
_Label_2970:
	push	r0
	sub	r1,1,r1
	bne	_Label_2970
	mov	1226,r13		! source line 1226
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1234,r13		! source line 1234
	mov	"\0\0SE",r10
!   _temp_1447 = &frameManagerLock
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
	mov	1237,r13		! source line 1237
	mov	"\0\0WH",r10
_Label_1448:
!   if numberFreeFrames >= 1 then goto _Label_1450		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1450
!	jmp	_Label_1449
_Label_1449:
	mov	1237,r13		! source line 1237
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1238,r13		! source line 1238
	mov	"\0\0SE",r10
!   _temp_1451 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1452 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1451  sizeInBytes=4
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
	jmp	_Label_1448
_Label_1450:
! ASSIGNMENT STATEMENT...
	mov	1242,r13		! source line 1242
	mov	"\0\0AS",r10
	mov	1242,r13		! source line 1242
	mov	"\0\0SE",r10
!   _temp_1453 = &framesInUse
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
	mov	1243,r13		! source line 1243
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
	mov	1246,r13		! source line 1246
	mov	"\0\0SE",r10
!   _temp_1454 = &frameManagerLock
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
	mov	1249,r13		! source line 1249
	mov	"\0\0AS",r10
!   _temp_1455 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1455		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1251,r13		! source line 1251
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
	.word	_Label_1456
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1457
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1458
	.word	-12
	.word	4
	.word	_Label_1459
	.word	-16
	.word	4
	.word	_Label_1460
	.word	-20
	.word	4
	.word	_Label_1461
	.word	-24
	.word	4
	.word	_Label_1462
	.word	-28
	.word	4
	.word	_Label_1463
	.word	-32
	.word	4
	.word	_Label_1464
	.word	-36
	.word	4
	.word	_Label_1465
	.word	-40
	.word	4
	.word	0
_Label_1456:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1457:
	.ascii	"Pself\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1453\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1451\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1464:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1465:
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
_Label_2971:
	push	r0
	sub	r1,1,r1
	bne	_Label_2971
	mov	1256,r13		! source line 1256
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1261,r13		! source line 1261
	mov	"\0\0SE",r10
!   _temp_1466 = &frameManagerLock
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
	mov	1264,r13		! source line 1264
	mov	"\0\0WH",r10
_Label_1467:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1469		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1469
!	jmp	_Label_1468
_Label_1468:
	mov	1264,r13		! source line 1264
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1265,r13		! source line 1265
	mov	"\0\0SE",r10
!   _temp_1470 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1471 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1470  sizeInBytes=4
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
	jmp	_Label_1467
_Label_1469:
! FOR STATEMENT...
	mov	1269,r13		! source line 1269
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1476 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1477 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1476  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_1472:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1477 then goto _Label_1475		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1475
_Label_1473:
	mov	1269,r13		! source line 1269
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1270,r13		! source line 1270
	mov	"\0\0AS",r10
	mov	1270,r13		! source line 1270
	mov	"\0\0SE",r10
!   _temp_1478 = &framesInUse
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
	mov	1271,r13		! source line 1271
	mov	"\0\0AS",r10
!   _temp_1479 = freeFrame * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_1479		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1273,r13		! source line 1273
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
_Label_1474:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1472
! END FOR
_Label_1475:
! ASSIGNMENT STATEMENT...
	mov	1276,r13		! source line 1276
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
	mov	1277,r13		! source line 1277
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1480 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1480 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1280,r13		! source line 1280
	mov	"\0\0SE",r10
!   _temp_1481 = &frameManagerLock
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
	mov	1280,r13		! source line 1280
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
	.word	_Label_1482
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1483
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1484
	.word	12
	.word	4
	.word	_Label_1485
	.word	16
	.word	4
	.word	_Label_1486
	.word	-12
	.word	4
	.word	_Label_1487
	.word	-16
	.word	4
	.word	_Label_1488
	.word	-20
	.word	4
	.word	_Label_1489
	.word	-24
	.word	4
	.word	_Label_1490
	.word	-28
	.word	4
	.word	_Label_1491
	.word	-32
	.word	4
	.word	_Label_1492
	.word	-36
	.word	4
	.word	_Label_1493
	.word	-40
	.word	4
	.word	_Label_1494
	.word	-44
	.word	4
	.word	_Label_1495
	.word	-48
	.word	4
	.word	_Label_1496
	.word	-52
	.word	4
	.word	_Label_1497
	.word	-56
	.word	4
	.word	0
_Label_1482:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1483:
	.ascii	"Pself\0"
	.align
_Label_1484:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1485:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1494:
	.byte	'?'
	.ascii	"_temp_1466\0"
	.align
_Label_1495:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1496:
	.byte	'I'
	.ascii	"freeFrame\0"
	.align
_Label_1497:
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
_Label_2972:
	push	r0
	sub	r1,1,r1
	bne	_Label_2972
	mov	1286,r13		! source line 1286
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1293,r13		! source line 1293
	mov	"\0\0SE",r10
!   _temp_1498 = &frameManagerLock
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
	mov	1294,r13		! source line 1294
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1499 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: numReturn = *_temp_1499  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-60]
! FOR STATEMENT...
	mov	1295,r13		! source line 1295
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1504 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1505 = numReturn - 1		(int)
	load	[r14+-60],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1504  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-48]
_Label_1500:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1505 then goto _Label_1503		
	load	[r14+-48],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1503
_Label_1501:
	mov	1295,r13		! source line 1295
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1296,r13		! source line 1296
	mov	"\0\0AS",r10
	mov	1296,r13		! source line 1296
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
	mov	1297,r13		! source line 1297
	mov	"\0\0AS",r10
!   _temp_1506 = addr - 1048576		(int)
	load	[r14+-52],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   bitNumber = _temp_1506 div 8192		(int)
	load	[r14+-28],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1298,r13		! source line 1298
	mov	"\0\0SE",r10
!   _temp_1507 = &framesInUse
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
_Label_1502:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1500
! END FOR
_Label_1503:
! ASSIGNMENT STATEMENT...
	mov	1301,r13		! source line 1301
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
	mov	1303,r13		! source line 1303
	mov	"\0\0SE",r10
!   _temp_1508 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1509 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1508  sizeInBytes=4
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
	mov	1306,r13		! source line 1306
	mov	"\0\0SE",r10
!   _temp_1510 = &frameManagerLock
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
	mov	1306,r13		! source line 1306
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
	.word	_Label_1511
	.word	8		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1512
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1513
	.word	12
	.word	4
	.word	_Label_1514
	.word	-12
	.word	4
	.word	_Label_1515
	.word	-16
	.word	4
	.word	_Label_1516
	.word	-20
	.word	4
	.word	_Label_1517
	.word	-24
	.word	4
	.word	_Label_1518
	.word	-28
	.word	4
	.word	_Label_1519
	.word	-32
	.word	4
	.word	_Label_1520
	.word	-36
	.word	4
	.word	_Label_1521
	.word	-40
	.word	4
	.word	_Label_1522
	.word	-44
	.word	4
	.word	_Label_1523
	.word	-48
	.word	4
	.word	_Label_1524
	.word	-52
	.word	4
	.word	_Label_1525
	.word	-56
	.word	4
	.word	_Label_1526
	.word	-60
	.word	4
	.word	0
_Label_1511:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1512:
	.ascii	"Pself\0"
	.align
_Label_1513:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1504\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1523:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1524:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_1525:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
_Label_1526:
	.byte	'I'
	.ascii	"numReturn\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1527
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
_Label_1527:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1528
	.word	_sourceFileName
	.word	282		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1528:
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
_Label_2973:
	push	r0
	sub	r1,1,r1
	bne	_Label_2973
	mov	1318,r13		! source line 1318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1322,r13		! source line 1322
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1323,r13		! source line 1323
	mov	"\0\0AS",r10
!   _temp_1529 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1531 = &_temp_1530
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1531 = _temp_1531 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1533:
!   Data Move: *_temp_1531 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1531 = _temp_1531 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1532 = _temp_1532 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1532) then goto _Label_1533
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1533
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1534 = &_temp_1530
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_2974
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2974:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1529 = *_temp_1534  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_2975:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2975
! RETURN STATEMENT...
	mov	1323,r13		! source line 1323
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
	.word	_Label_1535
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1536
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1537
	.word	-12
	.word	4
	.word	_Label_1538
	.word	-16
	.word	4
	.word	_Label_1539
	.word	-20
	.word	4
	.word	_Label_1540
	.word	-104
	.word	84
	.word	_Label_1541
	.word	-108
	.word	4
	.word	0
_Label_1535:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1536:
	.ascii	"Pself\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1534\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1529\0"
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
_Label_2976:
	push	r0
	sub	r1,1,r1
	bne	_Label_2976
	mov	1328,r13		! source line 1328
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1542 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1542  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1333,r13		! source line 1333
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1543 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1543  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1334,r13		! source line 1334
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1335,r13		! source line 1335
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1548 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1549 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1548  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1544:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1549 then goto _Label_1547		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1547
_Label_1545:
	mov	1335,r13		! source line 1335
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1550 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1550  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1336,r13		! source line 1336
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1552 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1552 [i ] into _temp_1553
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
!   _temp_1551 = _temp_1553		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1551  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1337,r13		! source line 1337
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1554 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1554  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1338,r13		! source line 1338
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1556 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1556 [i ] into _temp_1557
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
!   Data Move: _temp_1555 = *_temp_1557  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1555  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1339,r13		! source line 1339
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1558 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1558  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1340,r13		! source line 1340
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1559 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1559  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1341,r13		! source line 1341
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1560 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1560  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1342,r13		! source line 1342
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1343,r13		! source line 1343
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1562) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1561  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1561  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1343,r13		! source line 1343
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1563 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1563  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1344,r13		! source line 1344
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1345,r13		! source line 1345
	mov	"\0\0IF",r10
	mov	1345,r13		! source line 1345
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1567) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1566  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1566) then goto _Label_1565
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1565
!	jmp	_Label_1564
_Label_1564:
! THEN...
	mov	1346,r13		! source line 1346
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1346,r13		! source line 1346
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1569) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1568  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1568  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1346,r13		! source line 1346
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1570
_Label_1565:
! ELSE...
	mov	1348,r13		! source line 1348
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1571 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1571  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1348,r13		! source line 1348
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1570:
! CALL STATEMENT...
!   _temp_1572 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1572  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1350,r13		! source line 1350
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1351,r13		! source line 1351
	mov	"\0\0IF",r10
	mov	1351,r13		! source line 1351
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1575) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1573 else goto _Label_1574
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1574
	jmp	_Label_1573
_Label_1573:
! THEN...
	mov	1352,r13		! source line 1352
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1576 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1576  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1352,r13		! source line 1352
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1577
_Label_1574:
! ELSE...
	mov	1354,r13		! source line 1354
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1578 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1578  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1354,r13		! source line 1354
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1577:
! CALL STATEMENT...
!   _temp_1579 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1579  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1356,r13		! source line 1356
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1357,r13		! source line 1357
	mov	"\0\0IF",r10
	mov	1357,r13		! source line 1357
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1582) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1580 else goto _Label_1581
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1581
	jmp	_Label_1580
_Label_1580:
! THEN...
	mov	1358,r13		! source line 1358
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1583 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1583  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1358,r13		! source line 1358
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1584
_Label_1581:
! ELSE...
	mov	1360,r13		! source line 1360
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1585 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1585  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1360,r13		! source line 1360
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1584:
! CALL STATEMENT...
!   _temp_1586 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1586  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1362,r13		! source line 1362
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1363,r13		! source line 1363
	mov	"\0\0IF",r10
	mov	1363,r13		! source line 1363
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1589) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1587 else goto _Label_1588
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1588
	jmp	_Label_1587
_Label_1587:
! THEN...
	mov	1364,r13		! source line 1364
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1590 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1590  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1364,r13		! source line 1364
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1591
_Label_1588:
! ELSE...
	mov	1366,r13		! source line 1366
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1592 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1592  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1366,r13		! source line 1366
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1591:
! CALL STATEMENT...
!   _temp_1593 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1593  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1368,r13		! source line 1368
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1369,r13		! source line 1369
	mov	"\0\0IF",r10
	mov	1369,r13		! source line 1369
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1596) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1594 else goto _Label_1595
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1595
	jmp	_Label_1594
_Label_1594:
! THEN...
	mov	1370,r13		! source line 1370
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1597 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1597  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1370,r13		! source line 1370
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1598
_Label_1595:
! ELSE...
	mov	1372,r13		! source line 1372
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1599 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1599  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1372,r13		! source line 1372
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1598:
! CALL STATEMENT...
!   Call the function
	mov	1374,r13		! source line 1374
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1546:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1544
! END FOR
_Label_1547:
! RETURN STATEMENT...
	mov	1335,r13		! source line 1335
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
	.word	_Label_1600
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1601
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1602
	.word	-12
	.word	4
	.word	_Label_1603
	.word	-16
	.word	4
	.word	_Label_1604
	.word	-20
	.word	4
	.word	_Label_1605
	.word	-24
	.word	4
	.word	_Label_1606
	.word	-28
	.word	4
	.word	_Label_1607
	.word	-32
	.word	4
	.word	_Label_1608
	.word	-36
	.word	4
	.word	_Label_1609
	.word	-40
	.word	4
	.word	_Label_1610
	.word	-44
	.word	4
	.word	_Label_1611
	.word	-48
	.word	4
	.word	_Label_1612
	.word	-52
	.word	4
	.word	_Label_1613
	.word	-56
	.word	4
	.word	_Label_1614
	.word	-60
	.word	4
	.word	_Label_1615
	.word	-64
	.word	4
	.word	_Label_1616
	.word	-68
	.word	4
	.word	_Label_1617
	.word	-72
	.word	4
	.word	_Label_1618
	.word	-76
	.word	4
	.word	_Label_1619
	.word	-80
	.word	4
	.word	_Label_1620
	.word	-84
	.word	4
	.word	_Label_1621
	.word	-88
	.word	4
	.word	_Label_1622
	.word	-92
	.word	4
	.word	_Label_1623
	.word	-96
	.word	4
	.word	_Label_1624
	.word	-100
	.word	4
	.word	_Label_1625
	.word	-104
	.word	4
	.word	_Label_1626
	.word	-108
	.word	4
	.word	_Label_1627
	.word	-112
	.word	4
	.word	_Label_1628
	.word	-116
	.word	4
	.word	_Label_1629
	.word	-120
	.word	4
	.word	_Label_1630
	.word	-124
	.word	4
	.word	_Label_1631
	.word	-128
	.word	4
	.word	_Label_1632
	.word	-132
	.word	4
	.word	_Label_1633
	.word	-136
	.word	4
	.word	_Label_1634
	.word	-140
	.word	4
	.word	_Label_1635
	.word	-144
	.word	4
	.word	_Label_1636
	.word	-148
	.word	4
	.word	_Label_1637
	.word	-152
	.word	4
	.word	_Label_1638
	.word	-156
	.word	4
	.word	_Label_1639
	.word	-160
	.word	4
	.word	_Label_1640
	.word	-164
	.word	4
	.word	_Label_1641
	.word	-168
	.word	4
	.word	0
_Label_1600:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1601:
	.ascii	"Pself\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1593\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1592\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1590\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1589\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1586\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1585\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1583\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1582\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1579\0"
	.align
_Label_1614:
	.byte	'?'
	.ascii	"_temp_1578\0"
	.align
_Label_1615:
	.byte	'?'
	.ascii	"_temp_1576\0"
	.align
_Label_1616:
	.byte	'?'
	.ascii	"_temp_1575\0"
	.align
_Label_1617:
	.byte	'?'
	.ascii	"_temp_1572\0"
	.align
_Label_1618:
	.byte	'?'
	.ascii	"_temp_1571\0"
	.align
_Label_1619:
	.byte	'?'
	.ascii	"_temp_1569\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1568\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1567\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1566\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1563\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1562\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1561\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1560\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1559\0"
	.align
_Label_1628:
	.byte	'?'
	.ascii	"_temp_1558\0"
	.align
_Label_1629:
	.byte	'?'
	.ascii	"_temp_1557\0"
	.align
_Label_1630:
	.byte	'?'
	.ascii	"_temp_1556\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1555\0"
	.align
_Label_1632:
	.byte	'?'
	.ascii	"_temp_1554\0"
	.align
_Label_1633:
	.byte	'?'
	.ascii	"_temp_1553\0"
	.align
_Label_1634:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1635:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1636:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1637:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1639:
	.byte	'?'
	.ascii	"_temp_1543\0"
	.align
_Label_1640:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1641:
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
_Label_2977:
	push	r0
	sub	r1,1,r1
	bne	_Label_2977
	mov	1380,r13		! source line 1380
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1385,r13		! source line 1385
	mov	"\0\0RE",r10
!   _temp_1644 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1644 [entry ] into _temp_1645
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
!   Data Move: _temp_1643 = *_temp_1645  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1642 = _temp_1643 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1642  (sizeInBytes=4)
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
	.word	_Label_1646
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1647
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1648
	.word	12
	.word	4
	.word	_Label_1649
	.word	-12
	.word	4
	.word	_Label_1650
	.word	-16
	.word	4
	.word	_Label_1651
	.word	-20
	.word	4
	.word	_Label_1652
	.word	-24
	.word	4
	.word	0
_Label_1646:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1647:
	.ascii	"Pself\0"
	.align
_Label_1648:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1642\0"
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
_Label_2978:
	push	r0
	sub	r1,1,r1
	bne	_Label_2978
	mov	1390,r13		! source line 1390
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1394,r13		! source line 1394
	mov	"\0\0RE",r10
!   _temp_1655 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1655 [entry ] into _temp_1656
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
!   Data Move: _temp_1654 = *_temp_1656  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1653 = _temp_1654 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1653  (sizeInBytes=4)
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
	.word	_Label_1657
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1658
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1659
	.word	12
	.word	4
	.word	_Label_1660
	.word	-12
	.word	4
	.word	_Label_1661
	.word	-16
	.word	4
	.word	_Label_1662
	.word	-20
	.word	4
	.word	_Label_1663
	.word	-24
	.word	4
	.word	0
_Label_1657:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1658:
	.ascii	"Pself\0"
	.align
_Label_1659:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1660:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1661:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
_Label_1662:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
_Label_1663:
	.byte	'?'
	.ascii	"_temp_1653\0"
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
_Label_2979:
	push	r0
	sub	r1,1,r1
	bne	_Label_2979
	mov	1399,r13		! source line 1399
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1404,r13		! source line 1404
	mov	"\0\0AS",r10
!   _temp_1664 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1664 [entry ] into _temp_1665
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
!   _temp_1669 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1669 [entry ] into _temp_1670
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
!   Data Move: _temp_1668 = *_temp_1670  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1667 = _temp_1668 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1666 = _temp_1667 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1665 = _temp_1666  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1404,r13		! source line 1404
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
	.word	_Label_1671
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1672
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1673
	.word	12
	.word	4
	.word	_Label_1674
	.word	16
	.word	4
	.word	_Label_1675
	.word	-12
	.word	4
	.word	_Label_1676
	.word	-16
	.word	4
	.word	_Label_1677
	.word	-20
	.word	4
	.word	_Label_1678
	.word	-24
	.word	4
	.word	_Label_1679
	.word	-28
	.word	4
	.word	_Label_1680
	.word	-32
	.word	4
	.word	_Label_1681
	.word	-36
	.word	4
	.word	0
_Label_1671:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1672:
	.ascii	"Pself\0"
	.align
_Label_1673:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1674:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1675:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1676:
	.byte	'?'
	.ascii	"_temp_1669\0"
	.align
_Label_1677:
	.byte	'?'
	.ascii	"_temp_1668\0"
	.align
_Label_1678:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
_Label_1679:
	.byte	'?'
	.ascii	"_temp_1666\0"
	.align
_Label_1680:
	.byte	'?'
	.ascii	"_temp_1665\0"
	.align
_Label_1681:
	.byte	'?'
	.ascii	"_temp_1664\0"
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
_Label_2980:
	push	r0
	sub	r1,1,r1
	bne	_Label_2980
	mov	1409,r13		! source line 1409
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1413,r13		! source line 1413
	mov	"\0\0RE",r10
!   _temp_1685 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1685 [entry ] into _temp_1686
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
!   Data Move: _temp_1684 = *_temp_1686  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1683 = _temp_1684 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1683) then goto _Label_1687
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1687
!   _temp_1682 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1688
_Label_1687:
!   _temp_1682 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1688:
!   ReturnResult: _temp_1682  (sizeInBytes=1)
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
	.word	_Label_1689
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1690
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1691
	.word	12
	.word	4
	.word	_Label_1692
	.word	-16
	.word	4
	.word	_Label_1693
	.word	-20
	.word	4
	.word	_Label_1694
	.word	-24
	.word	4
	.word	_Label_1695
	.word	-28
	.word	4
	.word	_Label_1696
	.word	-9
	.word	1
	.word	0
_Label_1689:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1690:
	.ascii	"Pself\0"
	.align
_Label_1691:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1692:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1693:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1694:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1695:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1696:
	.byte	'C'
	.ascii	"_temp_1682\0"
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
_Label_2981:
	push	r0
	sub	r1,1,r1
	bne	_Label_2981
	mov	1418,r13		! source line 1418
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1422,r13		! source line 1422
	mov	"\0\0RE",r10
!   _temp_1700 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1700 [entry ] into _temp_1701
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
!   Data Move: _temp_1699 = *_temp_1701  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1698 = _temp_1699 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1698) then goto _Label_1702
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1702
!   _temp_1697 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1703
_Label_1702:
!   _temp_1697 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1703:
!   ReturnResult: _temp_1697  (sizeInBytes=1)
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
	.word	_Label_1704
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1705
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1706
	.word	12
	.word	4
	.word	_Label_1707
	.word	-16
	.word	4
	.word	_Label_1708
	.word	-20
	.word	4
	.word	_Label_1709
	.word	-24
	.word	4
	.word	_Label_1710
	.word	-28
	.word	4
	.word	_Label_1711
	.word	-9
	.word	1
	.word	0
_Label_1704:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1705:
	.ascii	"Pself\0"
	.align
_Label_1706:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1707:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1708:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1711:
	.byte	'C'
	.ascii	"_temp_1697\0"
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
_Label_2982:
	push	r0
	sub	r1,1,r1
	bne	_Label_2982
	mov	1427,r13		! source line 1427
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1431,r13		! source line 1431
	mov	"\0\0RE",r10
!   _temp_1715 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1715 [entry ] into _temp_1716
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
!   Data Move: _temp_1714 = *_temp_1716  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1713 = _temp_1714 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1713) then goto _Label_1717
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1717
!   _temp_1712 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1718
_Label_1717:
!   _temp_1712 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1718:
!   ReturnResult: _temp_1712  (sizeInBytes=1)
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
	.word	_Label_1719
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1720
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1721
	.word	12
	.word	4
	.word	_Label_1722
	.word	-16
	.word	4
	.word	_Label_1723
	.word	-20
	.word	4
	.word	_Label_1724
	.word	-24
	.word	4
	.word	_Label_1725
	.word	-28
	.word	4
	.word	_Label_1726
	.word	-9
	.word	1
	.word	0
_Label_1719:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1720:
	.ascii	"Pself\0"
	.align
_Label_1721:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1722:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1723:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1725:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1726:
	.byte	'C'
	.ascii	"_temp_1712\0"
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
_Label_2983:
	push	r0
	sub	r1,1,r1
	bne	_Label_2983
	mov	1436,r13		! source line 1436
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1440,r13		! source line 1440
	mov	"\0\0RE",r10
!   _temp_1730 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1730 [entry ] into _temp_1731
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
!   Data Move: _temp_1729 = *_temp_1731  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1728 = _temp_1729 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1728) then goto _Label_1732
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1732
!   _temp_1727 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1733
_Label_1732:
!   _temp_1727 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1733:
!   ReturnResult: _temp_1727  (sizeInBytes=1)
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
	.word	_Label_1734
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1735
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1736
	.word	12
	.word	4
	.word	_Label_1737
	.word	-16
	.word	4
	.word	_Label_1738
	.word	-20
	.word	4
	.word	_Label_1739
	.word	-24
	.word	4
	.word	_Label_1740
	.word	-28
	.word	4
	.word	_Label_1741
	.word	-9
	.word	1
	.word	0
_Label_1734:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1735:
	.ascii	"Pself\0"
	.align
_Label_1736:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1741:
	.byte	'C'
	.ascii	"_temp_1727\0"
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
_Label_2984:
	push	r0
	sub	r1,1,r1
	bne	_Label_2984
	mov	1445,r13		! source line 1445
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1449,r13		! source line 1449
	mov	"\0\0AS",r10
!   _temp_1742 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1742 [entry ] into _temp_1743
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
!   _temp_1746 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1746 [entry ] into _temp_1747
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
!   Data Move: _temp_1745 = *_temp_1747  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1744 = _temp_1745 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1743 = _temp_1744  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1449,r13		! source line 1449
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
	.word	_Label_1748
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1749
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1750
	.word	12
	.word	4
	.word	_Label_1751
	.word	-12
	.word	4
	.word	_Label_1752
	.word	-16
	.word	4
	.word	_Label_1753
	.word	-20
	.word	4
	.word	_Label_1754
	.word	-24
	.word	4
	.word	_Label_1755
	.word	-28
	.word	4
	.word	_Label_1756
	.word	-32
	.word	4
	.word	0
_Label_1748:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1749:
	.ascii	"Pself\0"
	.align
_Label_1750:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1747\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1746\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1745\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1744\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1743\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1742\0"
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
_Label_2985:
	push	r0
	sub	r1,1,r1
	bne	_Label_2985
	mov	1454,r13		! source line 1454
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1458,r13		! source line 1458
	mov	"\0\0AS",r10
!   _temp_1757 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1757 [entry ] into _temp_1758
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
!   _temp_1761 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1761 [entry ] into _temp_1762
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
!   Data Move: _temp_1760 = *_temp_1762  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1759 = _temp_1760 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1758 = _temp_1759  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1458,r13		! source line 1458
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
	.word	_Label_1763
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1764
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1765
	.word	12
	.word	4
	.word	_Label_1766
	.word	-12
	.word	4
	.word	_Label_1767
	.word	-16
	.word	4
	.word	_Label_1768
	.word	-20
	.word	4
	.word	_Label_1769
	.word	-24
	.word	4
	.word	_Label_1770
	.word	-28
	.word	4
	.word	_Label_1771
	.word	-32
	.word	4
	.word	0
_Label_1763:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1764:
	.ascii	"Pself\0"
	.align
_Label_1765:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1762\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1761\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1760\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1759\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1758\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1757\0"
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
_Label_2986:
	push	r0
	sub	r1,1,r1
	bne	_Label_2986
	mov	1463,r13		! source line 1463
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1467,r13		! source line 1467
	mov	"\0\0AS",r10
!   _temp_1772 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1772 [entry ] into _temp_1773
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
!   _temp_1776 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1776 [entry ] into _temp_1777
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
!   Data Move: _temp_1775 = *_temp_1777  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1774 = _temp_1775 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1773 = _temp_1774  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1467,r13		! source line 1467
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
	.word	_Label_1778
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1779
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1780
	.word	12
	.word	4
	.word	_Label_1781
	.word	-12
	.word	4
	.word	_Label_1782
	.word	-16
	.word	4
	.word	_Label_1783
	.word	-20
	.word	4
	.word	_Label_1784
	.word	-24
	.word	4
	.word	_Label_1785
	.word	-28
	.word	4
	.word	_Label_1786
	.word	-32
	.word	4
	.word	0
_Label_1778:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1779:
	.ascii	"Pself\0"
	.align
_Label_1780:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1777\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1776\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1775\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1774\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1773\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1772\0"
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
_Label_2987:
	push	r0
	sub	r1,1,r1
	bne	_Label_2987
	mov	1472,r13		! source line 1472
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1476,r13		! source line 1476
	mov	"\0\0AS",r10
!   _temp_1787 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1787 [entry ] into _temp_1788
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
!   _temp_1791 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1791 [entry ] into _temp_1792
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
!   Data Move: _temp_1790 = *_temp_1792  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1789 = _temp_1790 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1788 = _temp_1789  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1476,r13		! source line 1476
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
	.word	_Label_1793
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1794
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1795
	.word	12
	.word	4
	.word	_Label_1796
	.word	-12
	.word	4
	.word	_Label_1797
	.word	-16
	.word	4
	.word	_Label_1798
	.word	-20
	.word	4
	.word	_Label_1799
	.word	-24
	.word	4
	.word	_Label_1800
	.word	-28
	.word	4
	.word	_Label_1801
	.word	-32
	.word	4
	.word	0
_Label_1793:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1794:
	.ascii	"Pself\0"
	.align
_Label_1795:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1792\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1791\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1790\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1789\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1788\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1787\0"
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
_Label_2988:
	push	r0
	sub	r1,1,r1
	bne	_Label_2988
	mov	1481,r13		! source line 1481
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1485,r13		! source line 1485
	mov	"\0\0AS",r10
!   _temp_1802 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1802 [entry ] into _temp_1803
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
!   _temp_1806 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1806 [entry ] into _temp_1807
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
!   Data Move: _temp_1805 = *_temp_1807  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1804 = _temp_1805 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1803 = _temp_1804  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1485,r13		! source line 1485
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
	.word	_Label_1808
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1809
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1810
	.word	12
	.word	4
	.word	_Label_1811
	.word	-12
	.word	4
	.word	_Label_1812
	.word	-16
	.word	4
	.word	_Label_1813
	.word	-20
	.word	4
	.word	_Label_1814
	.word	-24
	.word	4
	.word	_Label_1815
	.word	-28
	.word	4
	.word	_Label_1816
	.word	-32
	.word	4
	.word	0
_Label_1808:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1809:
	.ascii	"Pself\0"
	.align
_Label_1810:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1807\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1806\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1805\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1804\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1803\0"
	.align
_Label_1816:
	.byte	'?'
	.ascii	"_temp_1802\0"
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
_Label_2989:
	push	r0
	sub	r1,1,r1
	bne	_Label_2989
	mov	1490,r13		! source line 1490
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1494,r13		! source line 1494
	mov	"\0\0AS",r10
!   _temp_1817 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1817 [entry ] into _temp_1818
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
!   _temp_1821 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1821 [entry ] into _temp_1822
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
!   Data Move: _temp_1820 = *_temp_1822  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1819 = _temp_1820 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1818 = _temp_1819  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1494,r13		! source line 1494
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
	.word	_Label_1823
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1824
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1825
	.word	12
	.word	4
	.word	_Label_1826
	.word	-12
	.word	4
	.word	_Label_1827
	.word	-16
	.word	4
	.word	_Label_1828
	.word	-20
	.word	4
	.word	_Label_1829
	.word	-24
	.word	4
	.word	_Label_1830
	.word	-28
	.word	4
	.word	_Label_1831
	.word	-32
	.word	4
	.word	0
_Label_1823:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1824:
	.ascii	"Pself\0"
	.align
_Label_1825:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1826:
	.byte	'?'
	.ascii	"_temp_1822\0"
	.align
_Label_1827:
	.byte	'?'
	.ascii	"_temp_1821\0"
	.align
_Label_1828:
	.byte	'?'
	.ascii	"_temp_1820\0"
	.align
_Label_1829:
	.byte	'?'
	.ascii	"_temp_1819\0"
	.align
_Label_1830:
	.byte	'?'
	.ascii	"_temp_1818\0"
	.align
_Label_1831:
	.byte	'?'
	.ascii	"_temp_1817\0"
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
_Label_2990:
	push	r0
	sub	r1,1,r1
	bne	_Label_2990
	mov	1499,r13		! source line 1499
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1503,r13		! source line 1503
	mov	"\0\0AS",r10
!   _temp_1832 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1832 [entry ] into _temp_1833
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
!   _temp_1836 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1836 [entry ] into _temp_1837
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
!   Data Move: _temp_1835 = *_temp_1837  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1834 = _temp_1835 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1833 = _temp_1834  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1503,r13		! source line 1503
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
	.word	_Label_1838
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1839
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1840
	.word	12
	.word	4
	.word	_Label_1841
	.word	-12
	.word	4
	.word	_Label_1842
	.word	-16
	.word	4
	.word	_Label_1843
	.word	-20
	.word	4
	.word	_Label_1844
	.word	-24
	.word	4
	.word	_Label_1845
	.word	-28
	.word	4
	.word	_Label_1846
	.word	-32
	.word	4
	.word	0
_Label_1838:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1839:
	.ascii	"Pself\0"
	.align
_Label_1840:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1837\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1836\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1835\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1834\0"
	.align
_Label_1845:
	.byte	'?'
	.ascii	"_temp_1833\0"
	.align
_Label_1846:
	.byte	'?'
	.ascii	"_temp_1832\0"
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
_Label_2991:
	push	r0
	sub	r1,1,r1
	bne	_Label_2991
	mov	1508,r13		! source line 1508
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1512,r13		! source line 1512
	mov	"\0\0AS",r10
!   _temp_1847 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1847 [entry ] into _temp_1848
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
!   _temp_1851 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1851 [entry ] into _temp_1852
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
!   Data Move: _temp_1850 = *_temp_1852  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1849 = _temp_1850 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1848 = _temp_1849  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1512,r13		! source line 1512
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
	.word	_Label_1853
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1854
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1855
	.word	12
	.word	4
	.word	_Label_1856
	.word	-12
	.word	4
	.word	_Label_1857
	.word	-16
	.word	4
	.word	_Label_1858
	.word	-20
	.word	4
	.word	_Label_1859
	.word	-24
	.word	4
	.word	_Label_1860
	.word	-28
	.word	4
	.word	_Label_1861
	.word	-32
	.word	4
	.word	0
_Label_1853:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1854:
	.ascii	"Pself\0"
	.align
_Label_1855:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1852\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1851\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1850\0"
	.align
_Label_1859:
	.byte	'?'
	.ascii	"_temp_1849\0"
	.align
_Label_1860:
	.byte	'?'
	.ascii	"_temp_1848\0"
	.align
_Label_1861:
	.byte	'?'
	.ascii	"_temp_1847\0"
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
_Label_2992:
	push	r0
	sub	r1,1,r1
	bne	_Label_2992
	mov	1517,r13		! source line 1517
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1863 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1863 [0 ] into _temp_1864
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
!   _temp_1862 = _temp_1864		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1865 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1862  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1865  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1523,r13		! source line 1523
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1523,r13		! source line 1523
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
	.word	_Label_1866
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1867
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1868
	.word	-12
	.word	4
	.word	_Label_1869
	.word	-16
	.word	4
	.word	_Label_1870
	.word	-20
	.word	4
	.word	_Label_1871
	.word	-24
	.word	4
	.word	0
_Label_1866:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1867:
	.ascii	"Pself\0"
	.align
_Label_1868:
	.byte	'?'
	.ascii	"_temp_1865\0"
	.align
_Label_1869:
	.byte	'?'
	.ascii	"_temp_1864\0"
	.align
_Label_1870:
	.byte	'?'
	.ascii	"_temp_1863\0"
	.align
_Label_1871:
	.byte	'?'
	.ascii	"_temp_1862\0"
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
_Label_2993:
	push	r0
	sub	r1,1,r1
	bne	_Label_2993
	mov	1528,r13		! source line 1528
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1543,r13		! source line 1543
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1872
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1872
	jmp	_Label_1873
_Label_1872:
! THEN...
	mov	1544,r13		! source line 1544
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1544,r13		! source line 1544
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1874
_Label_1873:
! ELSE...
	mov	1545,r13		! source line 1545
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1545,r13		! source line 1545
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1876		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1876
!	jmp	_Label_1875
_Label_1875:
! THEN...
	mov	1546,r13		! source line 1546
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1546,r13		! source line 1546
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1876:
! END IF...
_Label_1874:
! ASSIGNMENT STATEMENT...
	mov	1548,r13		! source line 1548
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
	mov	1549,r13		! source line 1549
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
	mov	1552,r13		! source line 1552
	mov	"\0\0WH",r10
_Label_1877:
!	jmp	_Label_1878
_Label_1878:
	mov	1552,r13		! source line 1552
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1553,r13		! source line 1553
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1881		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1881
!	jmp	_Label_1880
_Label_1880:
! THEN...
	mov	1554,r13		! source line 1554
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1882 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1882  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1554,r13		! source line 1554
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1555,r13		! source line 1555
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1881:
! IF STATEMENT...
	mov	1557,r13		! source line 1557
	mov	"\0\0IF",r10
	mov	1557,r13		! source line 1557
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1886) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1885  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1885 then goto _Label_1884 else goto _Label_1883
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1883
	jmp	_Label_1884
_Label_1883:
! THEN...
	mov	1558,r13		! source line 1558
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1887 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1887  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1558,r13		! source line 1558
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1559,r13		! source line 1559
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1884:
! ASSIGNMENT STATEMENT...
	mov	1561,r13		! source line 1561
	mov	"\0\0AS",r10
	mov	1561,r13		! source line 1561
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1889) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1888  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1888 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1563,r13		! source line 1563
	mov	"\0\0WH",r10
_Label_1890:
!   if offset >= 8192 then goto _Label_1892		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1892
!	jmp	_Label_1891
_Label_1891:
	mov	1563,r13		! source line 1563
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1566,r13		! source line 1566
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1893 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_1893  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1567,r13		! source line 1567
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1568,r13		! source line 1568
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1569,r13		! source line 1569
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1570,r13		! source line 1570
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1571,r13		! source line 1571
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1895		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1895
!	jmp	_Label_1894
_Label_1894:
! THEN...
	mov	1572,r13		! source line 1572
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1572,r13		! source line 1572
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1895:
! END WHILE...
	jmp	_Label_1890
_Label_1892:
! ASSIGNMENT STATEMENT...
	mov	1575,r13		! source line 1575
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1576,r13		! source line 1576
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_1877
_Label_1879:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_1896
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1897
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1898
	.word	12
	.word	4
	.word	_Label_1899
	.word	16
	.word	4
	.word	_Label_1900
	.word	20
	.word	4
	.word	_Label_1901
	.word	-9
	.word	1
	.word	_Label_1902
	.word	-16
	.word	4
	.word	_Label_1903
	.word	-20
	.word	4
	.word	_Label_1904
	.word	-24
	.word	4
	.word	_Label_1905
	.word	-28
	.word	4
	.word	_Label_1906
	.word	-10
	.word	1
	.word	_Label_1907
	.word	-32
	.word	4
	.word	_Label_1908
	.word	-36
	.word	4
	.word	_Label_1909
	.word	-40
	.word	4
	.word	_Label_1910
	.word	-44
	.word	4
	.word	_Label_1911
	.word	-48
	.word	4
	.word	0
_Label_1896:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_1897:
	.ascii	"Pself\0"
	.align
_Label_1898:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1899:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1900:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1901:
	.byte	'C'
	.ascii	"_temp_1893\0"
	.align
_Label_1902:
	.byte	'?'
	.ascii	"_temp_1889\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1905:
	.byte	'?'
	.ascii	"_temp_1886\0"
	.align
_Label_1906:
	.byte	'C'
	.ascii	"_temp_1885\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1882\0"
	.align
_Label_1908:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1909:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1910:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1911:
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
_Label_2994:
	push	r0
	sub	r1,1,r1
	bne	_Label_2994
	mov	1582,r13		! source line 1582
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1593,r13		! source line 1593
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1912
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1912
	jmp	_Label_1913
_Label_1912:
! THEN...
	mov	1594,r13		! source line 1594
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1594,r13		! source line 1594
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1914
_Label_1913:
! ELSE...
	mov	1595,r13		! source line 1595
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1595,r13		! source line 1595
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1916		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1916
!	jmp	_Label_1915
_Label_1915:
! THEN...
	mov	1596,r13		! source line 1596
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1596,r13		! source line 1596
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1916:
! END IF...
_Label_1914:
! ASSIGNMENT STATEMENT...
	mov	1598,r13		! source line 1598
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
	mov	1599,r13		! source line 1599
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
	mov	1600,r13		! source line 1600
	mov	"\0\0WH",r10
_Label_1917:
!	jmp	_Label_1918
_Label_1918:
	mov	1600,r13		! source line 1600
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1601,r13		! source line 1601
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1923		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1923
	jmp	_Label_1920
_Label_1923:
	mov	1602,r13		! source line 1602
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1925) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1924  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1924 then goto _Label_1922 else goto _Label_1920
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1920
	jmp	_Label_1922
_Label_1922:
	mov	1603,r13		! source line 1603
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1927) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1926  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1926 then goto _Label_1921 else goto _Label_1920
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1920
	jmp	_Label_1921
_Label_1920:
! THEN...
	mov	1604,r13		! source line 1604
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1604,r13		! source line 1604
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1921:
! ASSIGNMENT STATEMENT...
	mov	1606,r13		! source line 1606
	mov	"\0\0AS",r10
	mov	1606,r13		! source line 1606
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1929) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1928  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_1928 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1607,r13		! source line 1607
	mov	"\0\0WH",r10
_Label_1930:
!   if offset >= 8192 then goto _Label_1932		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1932
!	jmp	_Label_1931
_Label_1931:
	mov	1607,r13		! source line 1607
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1608,r13		! source line 1608
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1933 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_1933  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1609,r13		! source line 1609
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1610,r13		! source line 1610
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1611,r13		! source line 1611
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1612,r13		! source line 1612
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1613,r13		! source line 1613
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1935		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1935
!	jmp	_Label_1934
_Label_1934:
! THEN...
	mov	1614,r13		! source line 1614
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1614,r13		! source line 1614
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1935:
! END WHILE...
	jmp	_Label_1930
_Label_1932:
! ASSIGNMENT STATEMENT...
	mov	1617,r13		! source line 1617
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1618,r13		! source line 1618
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_1917
_Label_1919:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_1936
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1937
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1938
	.word	12
	.word	4
	.word	_Label_1939
	.word	16
	.word	4
	.word	_Label_1940
	.word	20
	.word	4
	.word	_Label_1941
	.word	-9
	.word	1
	.word	_Label_1942
	.word	-16
	.word	4
	.word	_Label_1943
	.word	-20
	.word	4
	.word	_Label_1944
	.word	-24
	.word	4
	.word	_Label_1945
	.word	-10
	.word	1
	.word	_Label_1946
	.word	-28
	.word	4
	.word	_Label_1947
	.word	-11
	.word	1
	.word	_Label_1948
	.word	-32
	.word	4
	.word	_Label_1949
	.word	-36
	.word	4
	.word	_Label_1950
	.word	-40
	.word	4
	.word	_Label_1951
	.word	-44
	.word	4
	.word	0
_Label_1936:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_1937:
	.ascii	"Pself\0"
	.align
_Label_1938:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1939:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1940:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1941:
	.byte	'C'
	.ascii	"_temp_1933\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1929\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1928\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1927\0"
	.align
_Label_1945:
	.byte	'C'
	.ascii	"_temp_1926\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1925\0"
	.align
_Label_1947:
	.byte	'C'
	.ascii	"_temp_1924\0"
	.align
_Label_1948:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1949:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1950:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1951:
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
_Label_2995:
	push	r0
	sub	r1,1,r1
	bne	_Label_2995
	mov	1624,r13		! source line 1624
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1648,r13		! source line 1648
	mov	"\0\0IF",r10
	mov	1648,r13		! source line 1648
	mov	"\0\0SE",r10
!   _temp_1955 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1956) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1955  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_1954  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_1954 >= 4 then goto _Label_1953		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1953
!	jmp	_Label_1952
_Label_1952:
! THEN...
	mov	1651,r13		! source line 1651
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1651,r13		! source line 1651
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1953:
! IF STATEMENT...
	mov	1655,r13		! source line 1655
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_1958		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1958
!	jmp	_Label_1957
_Label_1957:
! THEN...
	mov	1656,r13		! source line 1656
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1656,r13		! source line 1656
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1958:
! ASSIGNMENT STATEMENT...
	mov	1659,r13		! source line 1659
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
	mov	1661,r13		! source line 1661
	mov	"\0\0RE",r10
	mov	1661,r13		! source line 1661
	mov	"\0\0SE",r10
!   _temp_1961 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_1960 = _temp_1961 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_1962 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_1963) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1960  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1962  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_1959  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_1959  (sizeInBytes=4)
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
	.word	_Label_1964
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1965
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1966
	.word	12
	.word	4
	.word	_Label_1967
	.word	16
	.word	4
	.word	_Label_1968
	.word	20
	.word	4
	.word	_Label_1969
	.word	-12
	.word	4
	.word	_Label_1970
	.word	-16
	.word	4
	.word	_Label_1971
	.word	-20
	.word	4
	.word	_Label_1972
	.word	-24
	.word	4
	.word	_Label_1973
	.word	-28
	.word	4
	.word	_Label_1974
	.word	-32
	.word	4
	.word	_Label_1975
	.word	-36
	.word	4
	.word	_Label_1976
	.word	-40
	.word	4
	.word	_Label_1977
	.word	-44
	.word	4
	.word	0
_Label_1964:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_1965:
	.ascii	"Pself\0"
	.align
_Label_1966:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_1967:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1968:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1963\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1962\0"
	.align
_Label_1971:
	.byte	'?'
	.ascii	"_temp_1961\0"
	.align
_Label_1972:
	.byte	'?'
	.ascii	"_temp_1960\0"
	.align
_Label_1973:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1956\0"
	.align
_Label_1975:
	.byte	'?'
	.ascii	"_temp_1955\0"
	.align
_Label_1976:
	.byte	'?'
	.ascii	"_temp_1954\0"
	.align
_Label_1977:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_1978
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_1978:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1979
	.word	_sourceFileName
	.word	315		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_1979:
	.ascii	"DiskDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_DiskDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_1,r1
	push	r1
	mov	7,r1
_Label_2996:
	push	r0
	sub	r1,1,r1
	bne	_Label_2996
	mov	2058,r13		! source line 2058
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1980 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1980  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2059,r13		! source line 2059
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2060,r13		! source line 2060
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2061,r13		! source line 2061
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2062,r13		! source line 2062
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2063,r13		! source line 2063
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2064,r13		! source line 2064
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2065,r13		! source line 2065
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2066,r13		! source line 2066
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: semUsedInSynchMethods = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   semUsedInSynchMethods = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	2067,r13		! source line 2067
	mov	"\0\0SE",r10
!   _temp_1982 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2068,r13		! source line 2068
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: diskBusy = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   diskBusy = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	2069,r13		! source line 2069
	mov	"\0\0SE",r10
!   _temp_1984 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
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
	mov	2069,r13		! source line 2069
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_1:
	.word	_sourceFileName
	.word	_Label_1985
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1986
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1987
	.word	-12
	.word	4
	.word	_Label_1988
	.word	-16
	.word	4
	.word	_Label_1989
	.word	-20
	.word	4
	.word	_Label_1990
	.word	-24
	.word	4
	.word	_Label_1991
	.word	-28
	.word	4
	.word	0
_Label_1985:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1986:
	.ascii	"Pself\0"
	.align
_Label_1987:
	.byte	'?'
	.ascii	"_temp_1984\0"
	.align
_Label_1988:
	.byte	'?'
	.ascii	"_temp_1983\0"
	.align
_Label_1989:
	.byte	'?'
	.ascii	"_temp_1982\0"
	.align
_Label_1990:
	.byte	'?'
	.ascii	"_temp_1981\0"
	.align
_Label_1991:
	.byte	'?'
	.ascii	"_temp_1980\0"
	.align
! 
! ===============  METHOD SynchReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_2,r1
	push	r1
	mov	16,r1
_Label_2997:
	push	r0
	sub	r1,1,r1
	bne	_Label_2997
	mov	2074,r13		! source line 2074
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2087,r13		! source line 2087
	mov	"\0\0SE",r10
!   _temp_1992 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2088,r13		! source line 2088
	mov	"\0\0WH",r10
_Label_1993:
!	jmp	_Label_1994
_Label_1994:
	mov	2088,r13		! source line 2088
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2090,r13		! source line 2090
	mov	"\0\0SE",r10
!   _temp_1996 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1997) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_1996  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartReadSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	2092,r13		! source line 2092
	mov	"\0\0SE",r10
!   _temp_1998 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2095,r13		! source line 2095
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2007 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2001
	cmp	r1,2
	be	_Label_2002
	cmp	r1,3
	be	_Label_2003
	cmp	r1,4
	be	_Label_2004
	cmp	r1,5
	be	_Label_2005
	cmp	r1,6
	be	_Label_2006
	jmp	_Label_1999
! CASE 1...
_Label_2001:
! SEND STATEMENT...
	mov	2097,r13		! source line 2097
	mov	"\0\0SE",r10
!   _temp_2008 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2098,r13		! source line 2098
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2002:
! CALL STATEMENT...
!   _temp_2009 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2009  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2100,r13		! source line 2100
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2003:
! CALL STATEMENT...
!   _temp_2010 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2010  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2102,r13		! source line 2102
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2004:
! CALL STATEMENT...
!   _temp_2011 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2011  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2104,r13		! source line 2104
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2005:
! BREAK STATEMENT...
	mov	2108,r13		! source line 2108
	mov	"\0\0BR",r10
	jmp	_Label_2000
! CASE 6...
_Label_2006:
! CALL STATEMENT...
!   _temp_2012 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2012  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2110,r13		! source line 2110
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_1999:
! CALL STATEMENT...
!   _temp_2013 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2013  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2112,r13		! source line 2112
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2000:
! END WHILE...
	jmp	_Label_1993
_Label_1995:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2014
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2015
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2016
	.word	12
	.word	4
	.word	_Label_2017
	.word	16
	.word	4
	.word	_Label_2018
	.word	20
	.word	4
	.word	_Label_2019
	.word	-12
	.word	4
	.word	_Label_2020
	.word	-16
	.word	4
	.word	_Label_2021
	.word	-20
	.word	4
	.word	_Label_2022
	.word	-24
	.word	4
	.word	_Label_2023
	.word	-28
	.word	4
	.word	_Label_2024
	.word	-32
	.word	4
	.word	_Label_2025
	.word	-36
	.word	4
	.word	_Label_2026
	.word	-40
	.word	4
	.word	_Label_2027
	.word	-44
	.word	4
	.word	_Label_2028
	.word	-48
	.word	4
	.word	_Label_2029
	.word	-52
	.word	4
	.word	0
_Label_2014:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2015:
	.ascii	"Pself\0"
	.align
_Label_2016:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2017:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2018:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2019:
	.byte	'?'
	.ascii	"_temp_2013\0"
	.align
_Label_2020:
	.byte	'?'
	.ascii	"_temp_2012\0"
	.align
_Label_2021:
	.byte	'?'
	.ascii	"_temp_2011\0"
	.align
_Label_2022:
	.byte	'?'
	.ascii	"_temp_2010\0"
	.align
_Label_2023:
	.byte	'?'
	.ascii	"_temp_2009\0"
	.align
_Label_2024:
	.byte	'?'
	.ascii	"_temp_2008\0"
	.align
_Label_2025:
	.byte	'?'
	.ascii	"_temp_2007\0"
	.align
_Label_2026:
	.byte	'?'
	.ascii	"_temp_1998\0"
	.align
_Label_2027:
	.byte	'?'
	.ascii	"_temp_1997\0"
	.align
_Label_2028:
	.byte	'?'
	.ascii	"_temp_1996\0"
	.align
_Label_2029:
	.byte	'?'
	.ascii	"_temp_1992\0"
	.align
! 
! ===============  METHOD StartReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_3,r1
	push	r1
	mov	2121,r13		! source line 2121
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2136,r13		! source line 2136
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2139,r13		! source line 2139
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2140,r13		! source line 2140
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2141,r13		! source line 2141
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2142,r13		! source line 2142
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2142,r13		! source line 2142
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_3:
	.word	_sourceFileName
	.word	_Label_2030
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2031
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2032
	.word	12
	.word	4
	.word	_Label_2033
	.word	16
	.word	4
	.word	_Label_2034
	.word	20
	.word	4
	.word	_Label_2035
	.word	24
	.word	4
	.word	0
_Label_2030:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2031:
	.ascii	"Pself\0"
	.align
_Label_2032:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2033:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2034:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2035:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  METHOD SynchWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_4,r1
	push	r1
	mov	16,r1
_Label_2998:
	push	r0
	sub	r1,1,r1
	bne	_Label_2998
	mov	2147,r13		! source line 2147
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2159,r13		! source line 2159
	mov	"\0\0SE",r10
!   _temp_2036 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2160,r13		! source line 2160
	mov	"\0\0WH",r10
_Label_2037:
!	jmp	_Label_2038
_Label_2038:
	mov	2160,r13		! source line 2160
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2161,r13		! source line 2161
	mov	"\0\0SE",r10
!   _temp_2040 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2041) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2040  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartWriteSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2163,r13		! source line 2163
	mov	"\0\0SE",r10
!   _temp_2042 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2166,r13		! source line 2166
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2051 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2045
	cmp	r1,2
	be	_Label_2046
	cmp	r1,3
	be	_Label_2047
	cmp	r1,4
	be	_Label_2048
	cmp	r1,5
	be	_Label_2049
	cmp	r1,6
	be	_Label_2050
	jmp	_Label_2043
! CASE 1...
_Label_2045:
! SEND STATEMENT...
	mov	2168,r13		! source line 2168
	mov	"\0\0SE",r10
!   _temp_2052 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2169,r13		! source line 2169
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2046:
! CALL STATEMENT...
!   _temp_2053 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2053  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2171,r13		! source line 2171
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2047:
! CALL STATEMENT...
!   _temp_2054 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2054  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2173,r13		! source line 2173
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2048:
! CALL STATEMENT...
!   _temp_2055 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2055  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2175,r13		! source line 2175
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2049:
! BREAK STATEMENT...
	mov	2179,r13		! source line 2179
	mov	"\0\0BR",r10
	jmp	_Label_2044
! CASE 6...
_Label_2050:
! CALL STATEMENT...
!   _temp_2056 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2056  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2181,r13		! source line 2181
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2043:
! CALL STATEMENT...
!   _temp_2057 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2057  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2183,r13		! source line 2183
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2044:
! END WHILE...
	jmp	_Label_2037
_Label_2039:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2058
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2059
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2060
	.word	12
	.word	4
	.word	_Label_2061
	.word	16
	.word	4
	.word	_Label_2062
	.word	20
	.word	4
	.word	_Label_2063
	.word	-12
	.word	4
	.word	_Label_2064
	.word	-16
	.word	4
	.word	_Label_2065
	.word	-20
	.word	4
	.word	_Label_2066
	.word	-24
	.word	4
	.word	_Label_2067
	.word	-28
	.word	4
	.word	_Label_2068
	.word	-32
	.word	4
	.word	_Label_2069
	.word	-36
	.word	4
	.word	_Label_2070
	.word	-40
	.word	4
	.word	_Label_2071
	.word	-44
	.word	4
	.word	_Label_2072
	.word	-48
	.word	4
	.word	_Label_2073
	.word	-52
	.word	4
	.word	0
_Label_2058:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2059:
	.ascii	"Pself\0"
	.align
_Label_2060:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2061:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2062:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2063:
	.byte	'?'
	.ascii	"_temp_2057\0"
	.align
_Label_2064:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2065:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2066:
	.byte	'?'
	.ascii	"_temp_2054\0"
	.align
_Label_2067:
	.byte	'?'
	.ascii	"_temp_2053\0"
	.align
_Label_2068:
	.byte	'?'
	.ascii	"_temp_2052\0"
	.align
_Label_2069:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
_Label_2070:
	.byte	'?'
	.ascii	"_temp_2042\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_2041\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_2040\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_2036\0"
	.align
! 
! ===============  METHOD StartWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_5,r1
	push	r1
	mov	2192,r13		! source line 2192
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2207,r13		! source line 2207
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2209,r13		! source line 2209
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2210,r13		! source line 2210
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2211,r13		! source line 2211
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2212,r13		! source line 2212
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2212,r13		! source line 2212
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_5:
	.word	_sourceFileName
	.word	_Label_2074
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2075
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2076
	.word	12
	.word	4
	.word	_Label_2077
	.word	16
	.word	4
	.word	_Label_2078
	.word	20
	.word	4
	.word	_Label_2079
	.word	24
	.word	4
	.word	0
_Label_2074:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2075:
	.ascii	"Pself\0"
	.align
_Label_2076:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2077:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2078:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2079:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2080
	jmp	_Method_P_Kernel_FileManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FileManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FileManager_4	! 12:	FindFCB
	jmp	_Method_P_Kernel_FileManager_3	! 16:	Open
	jmp	_Method_P_Kernel_FileManager_5	! 20:	Close
	jmp	_Method_P_Kernel_FileManager_6	! 24:	Flush
	jmp	_Method_P_Kernel_FileManager_7	! 28:	SynchRead
	jmp	_Method_P_Kernel_FileManager_8	! 32:	SynchWrite
	.word	0
! 
! Class descriptor:
! 
_Label_2080:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2081
	.word	_sourceFileName
	.word	338		! line number
	.word	960		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2081:
	.ascii	"FileManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_1,r1
	push	r1
	mov	238,r1
_Label_2999:
	push	r0
	sub	r1,1,r1
	bne	_Label_2999
	mov	2223,r13		! source line 2223
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2082 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2082  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2230,r13		! source line 2230
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2231,r13		! source line 2231
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fileManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   fileManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	2232,r13		! source line 2232
	mov	"\0\0SE",r10
!   _temp_2084 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-932]
!   Send message Init
	load	[r14+-932],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2235,r13		! source line 2235
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fcbFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,524,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   fcbFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+524]
! ASSIGNMENT STATEMENT...
	mov	2236,r13		! source line 2236
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=96)
	load	[r14+8],r4
	add	r4,428,r4
	mov	24,r3
_Label_3000:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3000
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+428]
! SEND STATEMENT...
	mov	2237,r13		! source line 2237
	mov	"\0\0SE",r10
!   _temp_2087 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-920]
!   Send message Init
	load	[r14+-920],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2238,r13		! source line 2238
	mov	"\0\0AS",r10
!   _temp_2088 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2090 = &_temp_2089
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2090 = _temp_2090 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2092 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3001:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3001
!   _temp_2092 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2094:
!   Data Move: *_temp_2090 = _temp_2092  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3002:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3002
!   _temp_2090 = _temp_2090 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2091 = _temp_2091 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2091) then goto _Label_2094
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2094
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2095 = &_temp_2089
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3003
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3003:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2088 = *_temp_2095  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3004:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3004
! FOR STATEMENT...
	mov	2240,r13		! source line 2240
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2100 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2101 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2100  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2096:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2101 then goto _Label_2099		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2099
_Label_2097:
	mov	2240,r13		! source line 2240
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2241,r13		! source line 2241
	mov	"\0\0AS",r10
!   _temp_2102 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2102 [i ] into _temp_2103
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-444],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-440]
!   _temp_2104 = _temp_2103 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2104 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2242,r13		! source line 2242
	mov	"\0\0SE",r10
!   _temp_2105 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2105 [i ] into _temp_2106
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-432],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-428]
!   Send message Init
	load	[r14+-428],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	2243,r13		! source line 2243
	mov	"\0\0SE",r10
!   _temp_2108 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2108 [i ] into _temp_2109
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-420],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   _temp_2107 = _temp_2109		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2110 = &fcbFreeList
	load	[r14+8],r1
	add	r1,524,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2107  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-412],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2098:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2096
! END FOR
_Label_2099:
! ASSIGNMENT STATEMENT...
	mov	2247,r13		! source line 2247
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: openFileFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,916,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   openFileFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+916]
! ASSIGNMENT STATEMENT...
	mov	2248,r13		! source line 2248
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=96)
	load	[r14+8],r4
	add	r4,820,r4
	mov	24,r3
_Label_3005:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3005
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+820]
! SEND STATEMENT...
	mov	2249,r13		! source line 2249
	mov	"\0\0SE",r10
!   _temp_2113 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,820,r1
	store	r1,[r14+-400]
!   Send message Init
	load	[r14+-400],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2250,r13		! source line 2250
	mov	"\0\0AS",r10
!   _temp_2114 = &openFileTable
	load	[r14+8],r1
	add	r1,536,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2116 = &_temp_2115
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2116 = _temp_2116 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2118 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3006:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3006
!   _temp_2118 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2120:
!   Data Move: *_temp_2116 = _temp_2118  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3007:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3007
!   _temp_2116 = _temp_2116 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2117 = _temp_2117 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2117) then goto _Label_2120
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2120
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2121 = &_temp_2115
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3008
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3008:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2114 = *_temp_2121  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3009:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3009
! FOR STATEMENT...
	mov	2252,r13		! source line 2252
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2126 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2127 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2126  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2122:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2127 then goto _Label_2125		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2125
_Label_2123:
	mov	2252,r13		! source line 2252
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2253,r13		! source line 2253
	mov	"\0\0AS",r10
!   _temp_2128 = &openFileTable
	load	[r14+8],r1
	add	r1,536,r1
	store	r1,[r14+-56]
!   Move address of _temp_2128 [i ] into _temp_2129
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_2130 = _temp_2129 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2130 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2254,r13		! source line 2254
	mov	"\0\0SE",r10
!   _temp_2132 = &openFileTable
	load	[r14+8],r1
	add	r1,536,r1
	store	r1,[r14+-40]
!   Move address of _temp_2132 [i ] into _temp_2133
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_2131 = _temp_2133		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2134 = &openFileFreeList
	load	[r14+8],r1
	add	r1,916,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2131  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2124:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2122
! END FOR
_Label_2125:
! ASSIGNMENT STATEMENT...
	mov	2258,r13		! source line 2258
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,932,r4
	mov	7,r3
_Label_3010:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3010
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+932]
! ASSIGNMENT STATEMENT...
	mov	2259,r13		! source line 2259
	mov	"\0\0AS",r10
!   _temp_2136 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,932,r1
	store	r1,[r14+-24]
!   _temp_2137 = _temp_2136 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2137 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2264,r13		! source line 2264
	mov	"\0\0AS",r10
	mov	2264,r13		! source line 2264
	mov	"\0\0SE",r10
!   _temp_2138 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Send message GetAFrame
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=directoryFrame  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+928]
! SEND STATEMENT...
	mov	2265,r13		! source line 2265
	mov	"\0\0SE",r10
!   _temp_2139 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=directoryFrame  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+928],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2265,r13		! source line 2265
	mov	"\0\0RE",r10
	add	r15,956,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_1:
	.word	_sourceFileName
	.word	_Label_2140
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2141
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2142
	.word	-12
	.word	4
	.word	_Label_2143
	.word	-16
	.word	4
	.word	_Label_2144
	.word	-20
	.word	4
	.word	_Label_2145
	.word	-24
	.word	4
	.word	_Label_2146
	.word	-28
	.word	4
	.word	_Label_2147
	.word	-32
	.word	4
	.word	_Label_2148
	.word	-36
	.word	4
	.word	_Label_2149
	.word	-40
	.word	4
	.word	_Label_2150
	.word	-44
	.word	4
	.word	_Label_2151
	.word	-48
	.word	4
	.word	_Label_2152
	.word	-52
	.word	4
	.word	_Label_2153
	.word	-56
	.word	4
	.word	_Label_2154
	.word	-60
	.word	4
	.word	_Label_2155
	.word	-64
	.word	4
	.word	_Label_2156
	.word	-68
	.word	4
	.word	_Label_2157
	.word	-72
	.word	4
	.word	_Label_2158
	.word	-100
	.word	28
	.word	_Label_2159
	.word	-104
	.word	4
	.word	_Label_2160
	.word	-108
	.word	4
	.word	_Label_2161
	.word	-392
	.word	284
	.word	_Label_2162
	.word	-396
	.word	4
	.word	_Label_2163
	.word	-400
	.word	4
	.word	_Label_2164
	.word	-404
	.word	4
	.word	_Label_2165
	.word	-408
	.word	4
	.word	_Label_2166
	.word	-412
	.word	4
	.word	_Label_2167
	.word	-416
	.word	4
	.word	_Label_2168
	.word	-420
	.word	4
	.word	_Label_2169
	.word	-424
	.word	4
	.word	_Label_2170
	.word	-428
	.word	4
	.word	_Label_2171
	.word	-432
	.word	4
	.word	_Label_2172
	.word	-436
	.word	4
	.word	_Label_2173
	.word	-440
	.word	4
	.word	_Label_2174
	.word	-444
	.word	4
	.word	_Label_2175
	.word	-448
	.word	4
	.word	_Label_2176
	.word	-452
	.word	4
	.word	_Label_2177
	.word	-456
	.word	4
	.word	_Label_2178
	.word	-460
	.word	4
	.word	_Label_2179
	.word	-500
	.word	40
	.word	_Label_2180
	.word	-504
	.word	4
	.word	_Label_2181
	.word	-508
	.word	4
	.word	_Label_2182
	.word	-912
	.word	404
	.word	_Label_2183
	.word	-916
	.word	4
	.word	_Label_2184
	.word	-920
	.word	4
	.word	_Label_2185
	.word	-924
	.word	4
	.word	_Label_2186
	.word	-928
	.word	4
	.word	_Label_2187
	.word	-932
	.word	4
	.word	_Label_2188
	.word	-936
	.word	4
	.word	_Label_2189
	.word	-940
	.word	4
	.word	_Label_2190
	.word	-944
	.word	4
	.word	0
_Label_2140:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2141:
	.ascii	"Pself\0"
	.align
_Label_2142:
	.byte	'?'
	.ascii	"_temp_2139\0"
	.align
_Label_2143:
	.byte	'?'
	.ascii	"_temp_2138\0"
	.align
_Label_2144:
	.byte	'?'
	.ascii	"_temp_2137\0"
	.align
_Label_2145:
	.byte	'?'
	.ascii	"_temp_2136\0"
	.align
_Label_2146:
	.byte	'?'
	.ascii	"_temp_2135\0"
	.align
_Label_2147:
	.byte	'?'
	.ascii	"_temp_2134\0"
	.align
_Label_2148:
	.byte	'?'
	.ascii	"_temp_2133\0"
	.align
_Label_2149:
	.byte	'?'
	.ascii	"_temp_2132\0"
	.align
_Label_2150:
	.byte	'?'
	.ascii	"_temp_2131\0"
	.align
_Label_2151:
	.byte	'?'
	.ascii	"_temp_2130\0"
	.align
_Label_2152:
	.byte	'?'
	.ascii	"_temp_2129\0"
	.align
_Label_2153:
	.byte	'?'
	.ascii	"_temp_2128\0"
	.align
_Label_2154:
	.byte	'?'
	.ascii	"_temp_2127\0"
	.align
_Label_2155:
	.byte	'?'
	.ascii	"_temp_2126\0"
	.align
_Label_2156:
	.byte	'?'
	.ascii	"_temp_2121\0"
	.align
_Label_2157:
	.byte	'?'
	.ascii	"_temp_2119\0"
	.align
_Label_2158:
	.byte	'?'
	.ascii	"_temp_2118\0"
	.align
_Label_2159:
	.byte	'?'
	.ascii	"_temp_2117\0"
	.align
_Label_2160:
	.byte	'?'
	.ascii	"_temp_2116\0"
	.align
_Label_2161:
	.byte	'?'
	.ascii	"_temp_2115\0"
	.align
_Label_2162:
	.byte	'?'
	.ascii	"_temp_2114\0"
	.align
_Label_2163:
	.byte	'?'
	.ascii	"_temp_2113\0"
	.align
_Label_2164:
	.byte	'?'
	.ascii	"_temp_2112\0"
	.align
_Label_2165:
	.byte	'?'
	.ascii	"_temp_2111\0"
	.align
_Label_2166:
	.byte	'?'
	.ascii	"_temp_2110\0"
	.align
_Label_2167:
	.byte	'?'
	.ascii	"_temp_2109\0"
	.align
_Label_2168:
	.byte	'?'
	.ascii	"_temp_2108\0"
	.align
_Label_2169:
	.byte	'?'
	.ascii	"_temp_2107\0"
	.align
_Label_2170:
	.byte	'?'
	.ascii	"_temp_2106\0"
	.align
_Label_2171:
	.byte	'?'
	.ascii	"_temp_2105\0"
	.align
_Label_2172:
	.byte	'?'
	.ascii	"_temp_2104\0"
	.align
_Label_2173:
	.byte	'?'
	.ascii	"_temp_2103\0"
	.align
_Label_2174:
	.byte	'?'
	.ascii	"_temp_2102\0"
	.align
_Label_2175:
	.byte	'?'
	.ascii	"_temp_2101\0"
	.align
_Label_2176:
	.byte	'?'
	.ascii	"_temp_2100\0"
	.align
_Label_2177:
	.byte	'?'
	.ascii	"_temp_2095\0"
	.align
_Label_2178:
	.byte	'?'
	.ascii	"_temp_2093\0"
	.align
_Label_2179:
	.byte	'?'
	.ascii	"_temp_2092\0"
	.align
_Label_2180:
	.byte	'?'
	.ascii	"_temp_2091\0"
	.align
_Label_2181:
	.byte	'?'
	.ascii	"_temp_2090\0"
	.align
_Label_2182:
	.byte	'?'
	.ascii	"_temp_2089\0"
	.align
_Label_2183:
	.byte	'?'
	.ascii	"_temp_2088\0"
	.align
_Label_2184:
	.byte	'?'
	.ascii	"_temp_2087\0"
	.align
_Label_2185:
	.byte	'?'
	.ascii	"_temp_2086\0"
	.align
_Label_2186:
	.byte	'?'
	.ascii	"_temp_2085\0"
	.align
_Label_2187:
	.byte	'?'
	.ascii	"_temp_2084\0"
	.align
_Label_2188:
	.byte	'?'
	.ascii	"_temp_2083\0"
	.align
_Label_2189:
	.byte	'?'
	.ascii	"_temp_2082\0"
	.align
_Label_2190:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_2,r1
	push	r1
	mov	29,r1
_Label_3011:
	push	r0
	sub	r1,1,r1
	bne	_Label_3011
	mov	2272,r13		! source line 2272
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2274,r13		! source line 2274
	mov	"\0\0SE",r10
!   _temp_2191 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2192 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2192  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2275,r13		! source line 2275
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2276,r13		! source line 2276
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2197 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2198 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2197  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2193:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2198 then goto _Label_2196		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2196
_Label_2194:
	mov	2276,r13		! source line 2276
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2199 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2199  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2277,r13		! source line 2277
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2278,r13		! source line 2278
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2200 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2200  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2279,r13		! source line 2279
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2280,r13		! source line 2280
	mov	"\0\0SE",r10
!   _temp_2201 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2201 [i ] into _temp_2202
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Send message Print
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2195:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2193
! END FOR
_Label_2196:
! CALL STATEMENT...
!   _temp_2203 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2203  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2282,r13		! source line 2282
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2283,r13		! source line 2283
	mov	"\0\0SE",r10
!   _temp_2204 = _function_210_printFCB
	set	_function_210_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2205 = &fcbFreeList
	load	[r14+8],r1
	add	r1,524,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2204  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	2284,r13		! source line 2284
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2206 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2206  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2285,r13		! source line 2285
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2286,r13		! source line 2286
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2211 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2212 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2211  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2207:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2212 then goto _Label_2210		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2210
_Label_2208:
	mov	2286,r13		! source line 2286
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2213 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2213  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2287,r13		! source line 2287
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2288,r13		! source line 2288
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2214 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2214  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2289,r13		! source line 2289
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2216 = &openFileTable
	load	[r14+8],r1
	add	r1,536,r1
	store	r1,[r14+-44]
!   Move address of _temp_2216 [i ] into _temp_2217
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_2215 = _temp_2217		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2215  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2290,r13		! source line 2290
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2218 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2218  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2291,r13		! source line 2291
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2292,r13		! source line 2292
	mov	"\0\0SE",r10
!   _temp_2219 = &openFileTable
	load	[r14+8],r1
	add	r1,536,r1
	store	r1,[r14+-32]
!   Move address of _temp_2219 [i ] into _temp_2220
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2209:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2207
! END FOR
_Label_2210:
! CALL STATEMENT...
!   _temp_2221 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2221  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2294,r13		! source line 2294
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2295,r13		! source line 2295
	mov	"\0\0SE",r10
!   _temp_2222 = _function_209_printOpen
	set	_function_209_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2223 = &openFileFreeList
	load	[r14+8],r1
	add	r1,916,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2222  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2296,r13		! source line 2296
	mov	"\0\0SE",r10
!   _temp_2224 = &fileManagerLock
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
	mov	2296,r13		! source line 2296
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_2:
	.word	_sourceFileName
	.word	_Label_2225
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2226
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2227
	.word	-12
	.word	4
	.word	_Label_2228
	.word	-16
	.word	4
	.word	_Label_2229
	.word	-20
	.word	4
	.word	_Label_2230
	.word	-24
	.word	4
	.word	_Label_2231
	.word	-28
	.word	4
	.word	_Label_2232
	.word	-32
	.word	4
	.word	_Label_2233
	.word	-36
	.word	4
	.word	_Label_2234
	.word	-40
	.word	4
	.word	_Label_2235
	.word	-44
	.word	4
	.word	_Label_2236
	.word	-48
	.word	4
	.word	_Label_2237
	.word	-52
	.word	4
	.word	_Label_2238
	.word	-56
	.word	4
	.word	_Label_2239
	.word	-60
	.word	4
	.word	_Label_2240
	.word	-64
	.word	4
	.word	_Label_2241
	.word	-68
	.word	4
	.word	_Label_2242
	.word	-72
	.word	4
	.word	_Label_2243
	.word	-76
	.word	4
	.word	_Label_2244
	.word	-80
	.word	4
	.word	_Label_2245
	.word	-84
	.word	4
	.word	_Label_2246
	.word	-88
	.word	4
	.word	_Label_2247
	.word	-92
	.word	4
	.word	_Label_2248
	.word	-96
	.word	4
	.word	_Label_2249
	.word	-100
	.word	4
	.word	_Label_2250
	.word	-104
	.word	4
	.word	_Label_2251
	.word	-108
	.word	4
	.word	_Label_2252
	.word	-112
	.word	4
	.word	_Label_2253
	.word	-116
	.word	4
	.word	0
_Label_2225:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2226:
	.ascii	"Pself\0"
	.align
_Label_2227:
	.byte	'?'
	.ascii	"_temp_2224\0"
	.align
_Label_2228:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2229:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2230:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2220\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2233:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
_Label_2234:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2236:
	.byte	'?'
	.ascii	"_temp_2215\0"
	.align
_Label_2237:
	.byte	'?'
	.ascii	"_temp_2214\0"
	.align
_Label_2238:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2239:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2240:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2241:
	.byte	'?'
	.ascii	"_temp_2206\0"
	.align
_Label_2242:
	.byte	'?'
	.ascii	"_temp_2205\0"
	.align
_Label_2243:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2244:
	.byte	'?'
	.ascii	"_temp_2203\0"
	.align
_Label_2245:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
_Label_2246:
	.byte	'?'
	.ascii	"_temp_2201\0"
	.align
_Label_2247:
	.byte	'?'
	.ascii	"_temp_2200\0"
	.align
_Label_2248:
	.byte	'?'
	.ascii	"_temp_2199\0"
	.align
_Label_2249:
	.byte	'?'
	.ascii	"_temp_2198\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2197\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2192\0"
	.align
_Label_2252:
	.byte	'?'
	.ascii	"_temp_2191\0"
	.align
_Label_2253:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Open  ===============
! 
_Method_P_Kernel_FileManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_3,r1
	push	r1
	mov	14,r1
_Label_3012:
	push	r0
	sub	r1,1,r1
	bne	_Label_3012
	mov	2301,r13		! source line 2301
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2317,r13		! source line 2317
	mov	"\0\0AS",r10
	mov	2317,r13		! source line 2317
	mov	"\0\0SE",r10
!   _temp_2254 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message FindFCB
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	2318,r13		! source line 2318
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2255
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2255
	jmp	_Label_2256
_Label_2255:
! THEN...
	mov	2319,r13		! source line 2319
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2319,r13		! source line 2319
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2256:
! SEND STATEMENT...
	mov	2323,r13		! source line 2323
	mov	"\0\0SE",r10
!   _temp_2257 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2324,r13		! source line 2324
	mov	"\0\0WH",r10
_Label_2258:
	mov	2324,r13		! source line 2324
	mov	"\0\0SE",r10
!   _temp_2261 = &openFileFreeList
	load	[r14+8],r1
	add	r1,916,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2259 else goto _Label_2260
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2260
	jmp	_Label_2259
_Label_2259:
	mov	2324,r13		! source line 2324
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2325,r13		! source line 2325
	mov	"\0\0SE",r10
!   _temp_2262 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2263 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,820,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2262  sizeInBytes=4
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
	jmp	_Label_2258
_Label_2260:
! ASSIGNMENT STATEMENT...
	mov	2327,r13		! source line 2327
	mov	"\0\0AS",r10
	mov	2327,r13		! source line 2327
	mov	"\0\0SE",r10
!   _temp_2264 = &openFileFreeList
	load	[r14+8],r1
	add	r1,916,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	2330,r13		! source line 2330
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2265 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2265 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2331,r13		! source line 2331
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2266 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2266 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2334,r13		! source line 2334
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2267 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2267 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2336,r13		! source line 2336
	mov	"\0\0SE",r10
!   _temp_2268 = &fileManagerLock
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
	mov	2337,r13		! source line 2337
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_3:
	.word	_sourceFileName
	.word	_Label_2269
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2270
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2271
	.word	12
	.word	4
	.word	_Label_2272
	.word	-12
	.word	4
	.word	_Label_2273
	.word	-16
	.word	4
	.word	_Label_2274
	.word	-20
	.word	4
	.word	_Label_2275
	.word	-24
	.word	4
	.word	_Label_2276
	.word	-28
	.word	4
	.word	_Label_2277
	.word	-32
	.word	4
	.word	_Label_2278
	.word	-36
	.word	4
	.word	_Label_2279
	.word	-40
	.word	4
	.word	_Label_2280
	.word	-44
	.word	4
	.word	_Label_2281
	.word	-48
	.word	4
	.word	_Label_2282
	.word	-52
	.word	4
	.word	_Label_2283
	.word	-56
	.word	4
	.word	0
_Label_2269:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2270:
	.ascii	"Pself\0"
	.align
_Label_2271:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2268\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2267\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2266\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2265\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2264\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2263\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2262\0"
	.align
_Label_2279:
	.byte	'?'
	.ascii	"_temp_2261\0"
	.align
_Label_2280:
	.byte	'?'
	.ascii	"_temp_2257\0"
	.align
_Label_2281:
	.byte	'?'
	.ascii	"_temp_2254\0"
	.align
_Label_2282:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2283:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD FindFCB  ===============
! 
_Method_P_Kernel_FileManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_4,r1
	push	r1
	mov	41,r1
_Label_3013:
	push	r0
	sub	r1,1,r1
	bne	_Label_3013
	mov	2342,r13		! source line 2342
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2367,r13		! source line 2367
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+928],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2370,r13		! source line 2370
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2371,r13		! source line 2371
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2372,r13		! source line 2372
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2285		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2285
!	jmp	_Label_2284
_Label_2284:
! THEN...
	mov	2373,r13		! source line 2373
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2286 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2286  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2373,r13		! source line 2373
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2285:
! ASSIGNMENT STATEMENT...
	mov	2377,r13		! source line 2377
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: numFiles = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2378,r13		! source line 2378
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2379,r13		! source line 2379
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2380,r13		! source line 2380
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2383,r13		! source line 2383
	mov	"\0\0WH",r10
_Label_2287:
!   if numFiles <= 0 then goto _Label_2289		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2289
!	jmp	_Label_2288
_Label_2288:
	mov	2383,r13		! source line 2383
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2290 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2290  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2384,r13		! source line 2384
	mov	"\0\0CA",r10
	call	_function_211_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2385,r13		! source line 2385
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2291 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2291  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2386,r13		! source line 2386
	mov	"\0\0CA",r10
	call	_function_211_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2387,r13		! source line 2387
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2292 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2292  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2388,r13		! source line 2388
	mov	"\0\0CA",r10
	call	_function_211_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2389,r13		! source line 2389
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2390,r13		! source line 2390
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2296 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2296 then goto _Label_2294		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2294
!	jmp	_Label_2295
_Label_2295:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2298
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   _temp_2297 = _temp_2298		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2297  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2391,r13		! source line 2391
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2293 else goto _Label_2294
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2294
	jmp	_Label_2293
_Label_2293:
! THEN...
	mov	2392,r13		! source line 2392
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2392,r13		! source line 2392
	mov	"\0\0BR",r10
	jmp	_Label_2289
! END IF...
_Label_2294:
! ASSIGNMENT STATEMENT...
	mov	2394,r13		! source line 2394
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2395,r13		! source line 2395
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2287
_Label_2289:
! IF STATEMENT...
	mov	2399,r13		! source line 2399
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2300		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2300
!	jmp	_Label_2299
_Label_2299:
! THEN...
	mov	2400,r13		! source line 2400
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2400,r13		! source line 2400
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2300:
! SEND STATEMENT...
	mov	2403,r13		! source line 2403
	mov	"\0\0SE",r10
!   _temp_2301 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Send message Lock
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	2405,r13		! source line 2405
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2306 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2307 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2306  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2302:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2307 then goto _Label_2305		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2305
_Label_2303:
	mov	2405,r13		! source line 2405
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2406,r13		! source line 2406
	mov	"\0\0AS",r10
!   _temp_2308 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2308 [i ] into _temp_2309
!     make sure index expr is >= 0
	load	[r14+-136],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   fcb = _temp_2309		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2407,r13		! source line 2407
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2313 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2312 = *_temp_2313  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2312 != start then goto _Label_2311		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2311
!	jmp	_Label_2310
_Label_2310:
! THEN...
	mov	2408,r13		! source line 2408
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2408,r13		! source line 2408
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2314 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2317 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2316 = *_temp_2317  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2315 = _temp_2316 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2314 = _temp_2315  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2409,r13		! source line 2409
	mov	"\0\0SE",r10
!   _temp_2318 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Send message Unlock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2410,r13		! source line 2410
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2311:
!   Increment the FOR-LOOP index variable and jump back
_Label_2304:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2302
! END FOR
_Label_2305:
! WHILE STATEMENT...
	mov	2415,r13		! source line 2415
	mov	"\0\0WH",r10
_Label_2319:
	mov	2415,r13		! source line 2415
	mov	"\0\0SE",r10
!   _temp_2322 = &fcbFreeList
	load	[r14+8],r1
	add	r1,524,r1
	store	r1,[r14+-56]
!   Send message IsEmpty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2320 else goto _Label_2321
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2321
	jmp	_Label_2320
_Label_2320:
	mov	2415,r13		! source line 2415
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2416,r13		! source line 2416
	mov	"\0\0SE",r10
!   _temp_2323 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2324 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2323  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2319
_Label_2321:
! ASSIGNMENT STATEMENT...
	mov	2418,r13		! source line 2418
	mov	"\0\0AS",r10
	mov	2418,r13		! source line 2418
	mov	"\0\0SE",r10
!   _temp_2325 = &fcbFreeList
	load	[r14+8],r1
	add	r1,524,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! SEND STATEMENT...
	mov	2421,r13		! source line 2421
	mov	"\0\0SE",r10
!   _temp_2326 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2424,r13		! source line 2424
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2327 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2327 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2425,r13		! source line 2425
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2328 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2328 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2426,r13		! source line 2426
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2329 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2329 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2427,r13		! source line 2427
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2334 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2333 = *_temp_2334  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2333 < 0 then goto _Label_2332		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2332
	jmp	_Label_2330
_Label_2332:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2335 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2335 ) then goto _Label_2331		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2331
!	jmp	_Label_2330
_Label_2330:
! THEN...
	mov	2428,r13		! source line 2428
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2336 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2336  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2428,r13		! source line 2428
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2331:
! RETURN STATEMENT...
	mov	2430,r13		! source line 2430
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_4:
	.word	_sourceFileName
	.word	_Label_2337
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2338
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2339
	.word	12
	.word	4
	.word	_Label_2340
	.word	-12
	.word	4
	.word	_Label_2341
	.word	-16
	.word	4
	.word	_Label_2342
	.word	-20
	.word	4
	.word	_Label_2343
	.word	-24
	.word	4
	.word	_Label_2344
	.word	-28
	.word	4
	.word	_Label_2345
	.word	-32
	.word	4
	.word	_Label_2346
	.word	-36
	.word	4
	.word	_Label_2347
	.word	-40
	.word	4
	.word	_Label_2348
	.word	-44
	.word	4
	.word	_Label_2349
	.word	-48
	.word	4
	.word	_Label_2350
	.word	-52
	.word	4
	.word	_Label_2351
	.word	-56
	.word	4
	.word	_Label_2352
	.word	-60
	.word	4
	.word	_Label_2353
	.word	-64
	.word	4
	.word	_Label_2354
	.word	-68
	.word	4
	.word	_Label_2355
	.word	-72
	.word	4
	.word	_Label_2356
	.word	-76
	.word	4
	.word	_Label_2357
	.word	-80
	.word	4
	.word	_Label_2358
	.word	-84
	.word	4
	.word	_Label_2359
	.word	-88
	.word	4
	.word	_Label_2360
	.word	-92
	.word	4
	.word	_Label_2361
	.word	-96
	.word	4
	.word	_Label_2362
	.word	-100
	.word	4
	.word	_Label_2363
	.word	-104
	.word	4
	.word	_Label_2364
	.word	-108
	.word	4
	.word	_Label_2365
	.word	-112
	.word	4
	.word	_Label_2366
	.word	-116
	.word	4
	.word	_Label_2367
	.word	-120
	.word	4
	.word	_Label_2368
	.word	-124
	.word	4
	.word	_Label_2369
	.word	-128
	.word	4
	.word	_Label_2370
	.word	-132
	.word	4
	.word	_Label_2371
	.word	-136
	.word	4
	.word	_Label_2372
	.word	-140
	.word	4
	.word	_Label_2373
	.word	-144
	.word	4
	.word	_Label_2374
	.word	-148
	.word	4
	.word	_Label_2375
	.word	-152
	.word	4
	.word	_Label_2376
	.word	-156
	.word	4
	.word	_Label_2377
	.word	-160
	.word	4
	.word	0
_Label_2337:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2338:
	.ascii	"Pself\0"
	.align
_Label_2339:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2336\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2335\0"
	.align
_Label_2342:
	.byte	'?'
	.ascii	"_temp_2334\0"
	.align
_Label_2343:
	.byte	'?'
	.ascii	"_temp_2333\0"
	.align
_Label_2344:
	.byte	'?'
	.ascii	"_temp_2329\0"
	.align
_Label_2345:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2346:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
_Label_2347:
	.byte	'?'
	.ascii	"_temp_2326\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2325\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2350:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2351:
	.byte	'?'
	.ascii	"_temp_2322\0"
	.align
_Label_2352:
	.byte	'?'
	.ascii	"_temp_2318\0"
	.align
_Label_2353:
	.byte	'?'
	.ascii	"_temp_2317\0"
	.align
_Label_2354:
	.byte	'?'
	.ascii	"_temp_2316\0"
	.align
_Label_2355:
	.byte	'?'
	.ascii	"_temp_2315\0"
	.align
_Label_2356:
	.byte	'?'
	.ascii	"_temp_2314\0"
	.align
_Label_2357:
	.byte	'?'
	.ascii	"_temp_2313\0"
	.align
_Label_2358:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2359:
	.byte	'?'
	.ascii	"_temp_2309\0"
	.align
_Label_2360:
	.byte	'?'
	.ascii	"_temp_2308\0"
	.align
_Label_2361:
	.byte	'?'
	.ascii	"_temp_2307\0"
	.align
_Label_2362:
	.byte	'?'
	.ascii	"_temp_2306\0"
	.align
_Label_2363:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2364:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2365:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2366:
	.byte	'?'
	.ascii	"_temp_2296\0"
	.align
_Label_2367:
	.byte	'?'
	.ascii	"_temp_2292\0"
	.align
_Label_2368:
	.byte	'?'
	.ascii	"_temp_2291\0"
	.align
_Label_2369:
	.byte	'?'
	.ascii	"_temp_2290\0"
	.align
_Label_2370:
	.byte	'?'
	.ascii	"_temp_2286\0"
	.align
_Label_2371:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2372:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2373:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2374:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2375:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2376:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2377:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD Close  ===============
! 
_Method_P_Kernel_FileManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_5,r1
	push	r1
	mov	26,r1
_Label_3014:
	push	r0
	sub	r1,1,r1
	bne	_Label_3014
	mov	2443,r13		! source line 2443
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2445,r13		! source line 2445
	mov	"\0\0IF",r10
!   _temp_2380 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,932,r1
	store	r1,[r14+-100]
!   if open != _temp_2380 then goto _Label_2379		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2379
!	jmp	_Label_2378
_Label_2378:
! THEN...
	mov	2446,r13		! source line 2446
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2446,r13		! source line 2446
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2379:
! SEND STATEMENT...
	mov	2448,r13		! source line 2448
	mov	"\0\0SE",r10
!   _temp_2381 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Send message Lock
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2449,r13		! source line 2449
	mov	"\0\0SE",r10
!   _temp_2382 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2450,r13		! source line 2450
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2383 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2383  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2451,r13		! source line 2451
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2384 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2387 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2386 = *_temp_2387  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2385 = _temp_2386 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2384 = _temp_2385  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2452,r13		! source line 2452
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2391 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2390 = *_temp_2391  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2390 > 0 then goto _Label_2389		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2389
!	jmp	_Label_2388
_Label_2388:
! THEN...
	mov	2453,r13		! source line 2453
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2453,r13		! source line 2453
	mov	"\0\0SE",r10
!   _temp_2392 = &openFileFreeList
	load	[r14+8],r1
	add	r1,916,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2454,r13		! source line 2454
	mov	"\0\0SE",r10
!   _temp_2393 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2394 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,820,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2393  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2455,r13		! source line 2455
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2395 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2398 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2397 = *_temp_2398  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2396 = _temp_2397 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2395 = _temp_2396  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2456,r13		! source line 2456
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2402 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2401 = *_temp_2402  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2401 > 0 then goto _Label_2400		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2400
!	jmp	_Label_2399
_Label_2399:
! THEN...
	mov	2457,r13		! source line 2457
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2457,r13		! source line 2457
	mov	"\0\0SE",r10
!   _temp_2403 = &fcbFreeList
	load	[r14+8],r1
	add	r1,524,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=fcb  sizeInBytes=4
	load	[r14+-104],r1
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
	mov	2458,r13		! source line 2458
	mov	"\0\0SE",r10
!   _temp_2404 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2405 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2404  sizeInBytes=4
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
! END IF...
_Label_2400:
! END IF...
_Label_2389:
! SEND STATEMENT...
	mov	2461,r13		! source line 2461
	mov	"\0\0SE",r10
!   _temp_2406 = &fileManagerLock
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
	mov	2461,r13		! source line 2461
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_5:
	.word	_sourceFileName
	.word	_Label_2407
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2408
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2409
	.word	12
	.word	4
	.word	_Label_2410
	.word	-12
	.word	4
	.word	_Label_2411
	.word	-16
	.word	4
	.word	_Label_2412
	.word	-20
	.word	4
	.word	_Label_2413
	.word	-24
	.word	4
	.word	_Label_2414
	.word	-28
	.word	4
	.word	_Label_2415
	.word	-32
	.word	4
	.word	_Label_2416
	.word	-36
	.word	4
	.word	_Label_2417
	.word	-40
	.word	4
	.word	_Label_2418
	.word	-44
	.word	4
	.word	_Label_2419
	.word	-48
	.word	4
	.word	_Label_2420
	.word	-52
	.word	4
	.word	_Label_2421
	.word	-56
	.word	4
	.word	_Label_2422
	.word	-60
	.word	4
	.word	_Label_2423
	.word	-64
	.word	4
	.word	_Label_2424
	.word	-68
	.word	4
	.word	_Label_2425
	.word	-72
	.word	4
	.word	_Label_2426
	.word	-76
	.word	4
	.word	_Label_2427
	.word	-80
	.word	4
	.word	_Label_2428
	.word	-84
	.word	4
	.word	_Label_2429
	.word	-88
	.word	4
	.word	_Label_2430
	.word	-92
	.word	4
	.word	_Label_2431
	.word	-96
	.word	4
	.word	_Label_2432
	.word	-100
	.word	4
	.word	_Label_2433
	.word	-104
	.word	4
	.word	0
_Label_2407:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2408:
	.ascii	"Pself\0"
	.align
_Label_2409:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2410:
	.byte	'?'
	.ascii	"_temp_2406\0"
	.align
_Label_2411:
	.byte	'?'
	.ascii	"_temp_2405\0"
	.align
_Label_2412:
	.byte	'?'
	.ascii	"_temp_2404\0"
	.align
_Label_2413:
	.byte	'?'
	.ascii	"_temp_2403\0"
	.align
_Label_2414:
	.byte	'?'
	.ascii	"_temp_2402\0"
	.align
_Label_2415:
	.byte	'?'
	.ascii	"_temp_2401\0"
	.align
_Label_2416:
	.byte	'?'
	.ascii	"_temp_2398\0"
	.align
_Label_2417:
	.byte	'?'
	.ascii	"_temp_2397\0"
	.align
_Label_2418:
	.byte	'?'
	.ascii	"_temp_2396\0"
	.align
_Label_2419:
	.byte	'?'
	.ascii	"_temp_2395\0"
	.align
_Label_2420:
	.byte	'?'
	.ascii	"_temp_2394\0"
	.align
_Label_2421:
	.byte	'?'
	.ascii	"_temp_2393\0"
	.align
_Label_2422:
	.byte	'?'
	.ascii	"_temp_2392\0"
	.align
_Label_2423:
	.byte	'?'
	.ascii	"_temp_2391\0"
	.align
_Label_2424:
	.byte	'?'
	.ascii	"_temp_2390\0"
	.align
_Label_2425:
	.byte	'?'
	.ascii	"_temp_2387\0"
	.align
_Label_2426:
	.byte	'?'
	.ascii	"_temp_2386\0"
	.align
_Label_2427:
	.byte	'?'
	.ascii	"_temp_2385\0"
	.align
_Label_2428:
	.byte	'?'
	.ascii	"_temp_2384\0"
	.align
_Label_2429:
	.byte	'?'
	.ascii	"_temp_2383\0"
	.align
_Label_2430:
	.byte	'?'
	.ascii	"_temp_2382\0"
	.align
_Label_2431:
	.byte	'?'
	.ascii	"_temp_2381\0"
	.align
_Label_2432:
	.byte	'?'
	.ascii	"_temp_2380\0"
	.align
_Label_2433:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD Flush  ===============
! 
_Method_P_Kernel_FileManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_6,r1
	push	r1
	mov	29,r1
_Label_3015:
	push	r0
	sub	r1,1,r1
	bne	_Label_3015
	mov	2466,r13		! source line 2466
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2471,r13		! source line 2471
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2437 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2436 = *_temp_2437  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2436) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2438 = _temp_2436 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2438 ) then goto _Label_2435		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2435
!	jmp	_Label_2434
_Label_2434:
! THEN...
	mov	2472,r13		! source line 2472
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2472,r13		! source line 2472
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2443 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2442 = *_temp_2443  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2442) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2444 = _temp_2442 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2441 = *_temp_2444  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2441 >= 0 then goto _Label_2440		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2440
!	jmp	_Label_2439
_Label_2439:
! THEN...
	mov	2473,r13		! source line 2473
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2445 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2445  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2473,r13		! source line 2473
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2440:
! ASSIGNMENT STATEMENT...
	mov	2475,r13		! source line 2475
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2447 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2446 = *_temp_2447  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2446) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2448 = _temp_2446 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2448 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2476,r13		! source line 2476
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2452 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2451 = *_temp_2452  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2451) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2453 = _temp_2451 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2450 = *_temp_2453  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2456 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2455 = *_temp_2456  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2455) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2457 = _temp_2455 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2454 = *_temp_2457  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2449 = _temp_2450 + _temp_2454		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2460 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2459 = *_temp_2460  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2459) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2461 = _temp_2459 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2458 = *_temp_2461  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2462 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2449  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2458  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Send message SynchWriteSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_2435:
! RETURN STATEMENT...
	mov	2471,r13		! source line 2471
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_6:
	.word	_sourceFileName
	.word	_Label_2463
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2464
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2465
	.word	12
	.word	4
	.word	_Label_2466
	.word	-12
	.word	4
	.word	_Label_2467
	.word	-16
	.word	4
	.word	_Label_2468
	.word	-20
	.word	4
	.word	_Label_2469
	.word	-24
	.word	4
	.word	_Label_2470
	.word	-28
	.word	4
	.word	_Label_2471
	.word	-32
	.word	4
	.word	_Label_2472
	.word	-36
	.word	4
	.word	_Label_2473
	.word	-40
	.word	4
	.word	_Label_2474
	.word	-44
	.word	4
	.word	_Label_2475
	.word	-48
	.word	4
	.word	_Label_2476
	.word	-52
	.word	4
	.word	_Label_2477
	.word	-56
	.word	4
	.word	_Label_2478
	.word	-60
	.word	4
	.word	_Label_2479
	.word	-64
	.word	4
	.word	_Label_2480
	.word	-68
	.word	4
	.word	_Label_2481
	.word	-72
	.word	4
	.word	_Label_2482
	.word	-76
	.word	4
	.word	_Label_2483
	.word	-80
	.word	4
	.word	_Label_2484
	.word	-84
	.word	4
	.word	_Label_2485
	.word	-88
	.word	4
	.word	_Label_2486
	.word	-92
	.word	4
	.word	_Label_2487
	.word	-96
	.word	4
	.word	_Label_2488
	.word	-100
	.word	4
	.word	_Label_2489
	.word	-104
	.word	4
	.word	_Label_2490
	.word	-108
	.word	4
	.word	0
_Label_2463:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2464:
	.ascii	"Pself\0"
	.align
_Label_2465:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2462\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2461\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2460\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2459\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2458\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2457\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2456\0"
	.align
_Label_2473:
	.byte	'?'
	.ascii	"_temp_2455\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2454\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2451\0"
	.align
_Label_2478:
	.byte	'?'
	.ascii	"_temp_2450\0"
	.align
_Label_2479:
	.byte	'?'
	.ascii	"_temp_2449\0"
	.align
_Label_2480:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2481:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2482:
	.byte	'?'
	.ascii	"_temp_2446\0"
	.align
_Label_2483:
	.byte	'?'
	.ascii	"_temp_2445\0"
	.align
_Label_2484:
	.byte	'?'
	.ascii	"_temp_2444\0"
	.align
_Label_2485:
	.byte	'?'
	.ascii	"_temp_2443\0"
	.align
_Label_2486:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2487:
	.byte	'?'
	.ascii	"_temp_2441\0"
	.align
_Label_2488:
	.byte	'?'
	.ascii	"_temp_2438\0"
	.align
_Label_2489:
	.byte	'?'
	.ascii	"_temp_2437\0"
	.align
_Label_2490:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
! 
! ===============  METHOD SynchRead  ===============
! 
_Method_P_Kernel_FileManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_7,r1
	push	r1
	mov	34,r1
_Label_3016:
	push	r0
	sub	r1,1,r1
	bne	_Label_3016
	mov	2485,r13		! source line 2485
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2500,r13		! source line 2500
	mov	"\0\0SE",r10
!   _temp_2491 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Send message Lock
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2501,r13		! source line 2501
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2497		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2497
!   _temp_2496 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2498
_Label_2497:
!   _temp_2496 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2498:
!   if _temp_2496 then goto _Label_2495 else goto _Label_2492
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2492
	jmp	_Label_2495
_Label_2495:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2501 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2500 = *_temp_2501  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2500 == 0 then goto _Label_2502		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2502
!   _temp_2499 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2503
_Label_2502:
!   _temp_2499 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2503:
!   if _temp_2499 then goto _Label_2494 else goto _Label_2492
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2492
	jmp	_Label_2494
_Label_2494:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2506 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2505 = *_temp_2506  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2505) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2507 = _temp_2505 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2504 = *_temp_2507  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2504 >= 0 then goto _Label_2493		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2493
!	jmp	_Label_2492
_Label_2492:
! THEN...
	mov	2502,r13		! source line 2502
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2508 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2508  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2502,r13		! source line 2502
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2493:
! ASSIGNMENT STATEMENT...
	mov	2504,r13		! source line 2504
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2509 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2509  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2505,r13		! source line 2505
	mov	"\0\0WH",r10
_Label_2510:
!   if numBytes <= 0 then goto _Label_2512		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2512
!	jmp	_Label_2511
_Label_2511:
	mov	2505,r13		! source line 2505
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2514,r13		! source line 2514
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	2515,r13		! source line 2515
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2519,r13		! source line 2519
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2516 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2515 = *_temp_2516  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2515 == sector then goto _Label_2514		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2514
!	jmp	_Label_2513
_Label_2513:
! THEN...
	mov	2520,r13		! source line 2520
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2520,r13		! source line 2520
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2517) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	2522,r13		! source line 2522
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2520 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2519 = *_temp_2520  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2518 = sector + _temp_2519		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2522 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2521 = *_temp_2522  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2523 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2518  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2521  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2525,r13		! source line 2525
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2524 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2524 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2526,r13		! source line 2526
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2525 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2525 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2514:
! ASSIGNMENT STATEMENT...
	mov	2528,r13		! source line 2528
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2527 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2526 = *_temp_2527  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2526 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2529,r13		! source line 2529
	mov	"\0\0AS",r10
!   _temp_2528 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2528  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2529,r13		! source line 2529
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=targetAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=posInBuffer  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Call the function
	mov	2533,r13		! source line 2533
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2534,r13		! source line 2534
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2535,r13		! source line 2535
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2536,r13		! source line 2536
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2510
_Label_2512:
! SEND STATEMENT...
	mov	2543,r13		! source line 2543
	mov	"\0\0SE",r10
!   _temp_2529 = &fileManagerLock
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
	mov	2544,r13		! source line 2544
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_7:
	.word	_sourceFileName
	.word	_Label_2530
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2531
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2532
	.word	12
	.word	4
	.word	_Label_2533
	.word	16
	.word	4
	.word	_Label_2534
	.word	20
	.word	4
	.word	_Label_2535
	.word	24
	.word	4
	.word	_Label_2536
	.word	-16
	.word	4
	.word	_Label_2537
	.word	-20
	.word	4
	.word	_Label_2538
	.word	-24
	.word	4
	.word	_Label_2539
	.word	-28
	.word	4
	.word	_Label_2540
	.word	-32
	.word	4
	.word	_Label_2541
	.word	-36
	.word	4
	.word	_Label_2542
	.word	-40
	.word	4
	.word	_Label_2543
	.word	-44
	.word	4
	.word	_Label_2544
	.word	-48
	.word	4
	.word	_Label_2545
	.word	-52
	.word	4
	.word	_Label_2546
	.word	-56
	.word	4
	.word	_Label_2547
	.word	-60
	.word	4
	.word	_Label_2548
	.word	-64
	.word	4
	.word	_Label_2549
	.word	-68
	.word	4
	.word	_Label_2550
	.word	-72
	.word	4
	.word	_Label_2551
	.word	-76
	.word	4
	.word	_Label_2552
	.word	-80
	.word	4
	.word	_Label_2553
	.word	-84
	.word	4
	.word	_Label_2554
	.word	-88
	.word	4
	.word	_Label_2555
	.word	-92
	.word	4
	.word	_Label_2556
	.word	-96
	.word	4
	.word	_Label_2557
	.word	-100
	.word	4
	.word	_Label_2558
	.word	-104
	.word	4
	.word	_Label_2559
	.word	-9
	.word	1
	.word	_Label_2560
	.word	-10
	.word	1
	.word	_Label_2561
	.word	-108
	.word	4
	.word	_Label_2562
	.word	-112
	.word	4
	.word	_Label_2563
	.word	-116
	.word	4
	.word	_Label_2564
	.word	-120
	.word	4
	.word	_Label_2565
	.word	-124
	.word	4
	.word	_Label_2566
	.word	-128
	.word	4
	.word	0
_Label_2530:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2531:
	.ascii	"Pself\0"
	.align
_Label_2532:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2533:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2534:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2535:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2536:
	.byte	'?'
	.ascii	"_temp_2529\0"
	.align
_Label_2537:
	.byte	'?'
	.ascii	"_temp_2528\0"
	.align
_Label_2538:
	.byte	'?'
	.ascii	"_temp_2527\0"
	.align
_Label_2539:
	.byte	'?'
	.ascii	"_temp_2526\0"
	.align
_Label_2540:
	.byte	'?'
	.ascii	"_temp_2525\0"
	.align
_Label_2541:
	.byte	'?'
	.ascii	"_temp_2524\0"
	.align
_Label_2542:
	.byte	'?'
	.ascii	"_temp_2523\0"
	.align
_Label_2543:
	.byte	'?'
	.ascii	"_temp_2522\0"
	.align
_Label_2544:
	.byte	'?'
	.ascii	"_temp_2521\0"
	.align
_Label_2545:
	.byte	'?'
	.ascii	"_temp_2520\0"
	.align
_Label_2546:
	.byte	'?'
	.ascii	"_temp_2519\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2518\0"
	.align
_Label_2548:
	.byte	'?'
	.ascii	"_temp_2517\0"
	.align
_Label_2549:
	.byte	'?'
	.ascii	"_temp_2516\0"
	.align
_Label_2550:
	.byte	'?'
	.ascii	"_temp_2515\0"
	.align
_Label_2551:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2552:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2553:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2554:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2555:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2556:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2557:
	.byte	'?'
	.ascii	"_temp_2501\0"
	.align
_Label_2558:
	.byte	'?'
	.ascii	"_temp_2500\0"
	.align
_Label_2559:
	.byte	'C'
	.ascii	"_temp_2499\0"
	.align
_Label_2560:
	.byte	'C'
	.ascii	"_temp_2496\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2491\0"
	.align
_Label_2562:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2563:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2564:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2565:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2566:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD SynchWrite  ===============
! 
_Method_P_Kernel_FileManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_8,r1
	push	r1
	mov	36,r1
_Label_3017:
	push	r0
	sub	r1,1,r1
	bne	_Label_3017
	mov	2549,r13		! source line 2549
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2565,r13		! source line 2565
	mov	"\0\0SE",r10
!   _temp_2567 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Send message Lock
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2566,r13		! source line 2566
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2573		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2573
!   _temp_2572 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2574
_Label_2573:
!   _temp_2572 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2574:
!   if _temp_2572 then goto _Label_2571 else goto _Label_2568
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2568
	jmp	_Label_2571
_Label_2571:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2577 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2576 = *_temp_2577  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2576 == 0 then goto _Label_2578		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2578
!   _temp_2575 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2579
_Label_2578:
!   _temp_2575 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2579:
!   if _temp_2575 then goto _Label_2570 else goto _Label_2568
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2568
	jmp	_Label_2570
_Label_2570:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2582 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2581 = *_temp_2582  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2581) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2583 = _temp_2581 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2580 = *_temp_2583  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2580 >= 0 then goto _Label_2569		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2569
!	jmp	_Label_2568
_Label_2568:
! THEN...
	mov	2567,r13		! source line 2567
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2584 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2584  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2567,r13		! source line 2567
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2569:
! ASSIGNMENT STATEMENT...
	mov	2569,r13		! source line 2569
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2585 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2585  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2570,r13		! source line 2570
	mov	"\0\0WH",r10
_Label_2586:
!   if numBytes <= 0 then goto _Label_2588		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2588
!	jmp	_Label_2587
_Label_2587:
	mov	2570,r13		! source line 2570
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2579,r13		! source line 2579
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2580,r13		! source line 2580
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	2584,r13		! source line 2584
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2592 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2591 = *_temp_2592  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2591 == sector then goto _Label_2590		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2590
!	jmp	_Label_2589
_Label_2589:
! THEN...
	mov	2586,r13		! source line 2586
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2586,r13		! source line 2586
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2593) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! END IF...
_Label_2590:
! ASSIGNMENT STATEMENT...
	mov	2588,r13		! source line 2588
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2595 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2594 = *_temp_2595  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2594 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2589,r13		! source line 2589
	mov	"\0\0AS",r10
!   _temp_2596 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2596  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2589,r13		! source line 2589
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2590,r13		! source line 2590
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2600 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2599 = *_temp_2600  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2599 != sector then goto _Label_2598		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2598
!	jmp	_Label_2597
_Label_2597:
	jmp	_Label_2601
_Label_2598:
! ELSE...
	mov	2592,r13		! source line 2592
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2592,r13		! source line 2592
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2604
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2604
	jmp	_Label_2603
_Label_2604:
!   if bytesToMove != 8192 then goto _Label_2603		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2603
!	jmp	_Label_2602
_Label_2602:
	jmp	_Label_2605
_Label_2603:
! ELSE...
	mov	2596,r13		! source line 2596
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2596,r13		! source line 2596
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2608 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2607 = *_temp_2608  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2606 = sector + _temp_2607		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2610 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2609 = *_temp_2610  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2611 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2606  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2609  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_2605:
! END IF...
_Label_2601:
! ASSIGNMENT STATEMENT...
	mov	2600,r13		! source line 2600
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2612 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2612 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2601,r13		! source line 2601
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2613 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2613 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=posInBuffer  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sourceAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+8]
!   Call the function
	mov	2605,r13		! source line 2605
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2606,r13		! source line 2606
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2607,r13		! source line 2607
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2608,r13		! source line 2608
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2586
_Label_2588:
! SEND STATEMENT...
	mov	2615,r13		! source line 2615
	mov	"\0\0SE",r10
!   _temp_2614 = &fileManagerLock
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
	mov	2617,r13		! source line 2617
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_8:
	.word	_sourceFileName
	.word	_Label_2615
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2616
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2617
	.word	12
	.word	4
	.word	_Label_2618
	.word	16
	.word	4
	.word	_Label_2619
	.word	20
	.word	4
	.word	_Label_2620
	.word	24
	.word	4
	.word	_Label_2621
	.word	-16
	.word	4
	.word	_Label_2622
	.word	-20
	.word	4
	.word	_Label_2623
	.word	-24
	.word	4
	.word	_Label_2624
	.word	-28
	.word	4
	.word	_Label_2625
	.word	-32
	.word	4
	.word	_Label_2626
	.word	-36
	.word	4
	.word	_Label_2627
	.word	-40
	.word	4
	.word	_Label_2628
	.word	-44
	.word	4
	.word	_Label_2629
	.word	-48
	.word	4
	.word	_Label_2630
	.word	-52
	.word	4
	.word	_Label_2631
	.word	-56
	.word	4
	.word	_Label_2632
	.word	-60
	.word	4
	.word	_Label_2633
	.word	-64
	.word	4
	.word	_Label_2634
	.word	-68
	.word	4
	.word	_Label_2635
	.word	-72
	.word	4
	.word	_Label_2636
	.word	-76
	.word	4
	.word	_Label_2637
	.word	-80
	.word	4
	.word	_Label_2638
	.word	-84
	.word	4
	.word	_Label_2639
	.word	-88
	.word	4
	.word	_Label_2640
	.word	-92
	.word	4
	.word	_Label_2641
	.word	-96
	.word	4
	.word	_Label_2642
	.word	-100
	.word	4
	.word	_Label_2643
	.word	-104
	.word	4
	.word	_Label_2644
	.word	-108
	.word	4
	.word	_Label_2645
	.word	-112
	.word	4
	.word	_Label_2646
	.word	-9
	.word	1
	.word	_Label_2647
	.word	-10
	.word	1
	.word	_Label_2648
	.word	-116
	.word	4
	.word	_Label_2649
	.word	-120
	.word	4
	.word	_Label_2650
	.word	-124
	.word	4
	.word	_Label_2651
	.word	-128
	.word	4
	.word	_Label_2652
	.word	-132
	.word	4
	.word	_Label_2653
	.word	-136
	.word	4
	.word	0
_Label_2615:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_2616:
	.ascii	"Pself\0"
	.align
_Label_2617:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2618:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_2619:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2620:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2621:
	.byte	'?'
	.ascii	"_temp_2614\0"
	.align
_Label_2622:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2623:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2624:
	.byte	'?'
	.ascii	"_temp_2611\0"
	.align
_Label_2625:
	.byte	'?'
	.ascii	"_temp_2610\0"
	.align
_Label_2626:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2627:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2628:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2629:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2630:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2632:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2633:
	.byte	'?'
	.ascii	"_temp_2595\0"
	.align
_Label_2634:
	.byte	'?'
	.ascii	"_temp_2594\0"
	.align
_Label_2635:
	.byte	'?'
	.ascii	"_temp_2593\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2592\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2591\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2585\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2584\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2582\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2580\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2577\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
_Label_2646:
	.byte	'C'
	.ascii	"_temp_2575\0"
	.align
_Label_2647:
	.byte	'C'
	.ascii	"_temp_2572\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2649:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2650:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2651:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2652:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2653:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_2654
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2654:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2655
	.word	_sourceFileName
	.word	363		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2655:
	.ascii	"FileControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1,r1
	push	r1
	mov	2,r1
_Label_3018:
	push	r0
	sub	r1,1,r1
	bne	_Label_3018
	mov	2653,r13		! source line 2653
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2654,r13		! source line 2654
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2655,r13		! source line 2655
	mov	"\0\0AS",r10
	mov	2655,r13		! source line 2655
	mov	"\0\0SE",r10
!   _temp_2656 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message GetAFrame
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bufferPtr  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+28]
! ASSIGNMENT STATEMENT...
	mov	2656,r13		! source line 2656
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2657,r13		! source line 2657
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2658,r13		! source line 2658
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2658,r13		! source line 2658
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1:
	.word	_sourceFileName
	.word	_Label_2657
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2658
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2659
	.word	-12
	.word	4
	.word	0
_Label_2657:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2658:
	.ascii	"Pself\0"
	.align
_Label_2659:
	.byte	'?'
	.ascii	"_temp_2656\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2,r1
	push	r1
	mov	7,r1
_Label_3019:
	push	r0
	sub	r1,1,r1
	bne	_Label_3019
	mov	2663,r13		! source line 2663
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2660 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2660  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2664,r13		! source line 2664
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2665,r13		! source line 2665
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2661 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2661  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2666,r13		! source line 2666
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2667,r13		! source line 2667
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2662 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2662  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2668,r13		! source line 2668
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2669,r13		! source line 2669
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2663 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2663  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2670,r13		! source line 2670
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2671,r13		! source line 2671
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2664 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2664  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2672,r13		! source line 2672
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2673,r13		! source line 2673
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2665 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2665  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2674,r13		! source line 2674
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2675,r13		! source line 2675
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2676,r13		! source line 2676
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2676,r13		! source line 2676
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2:
	.word	_sourceFileName
	.word	_Label_2666
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2667
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2668
	.word	-12
	.word	4
	.word	_Label_2669
	.word	-16
	.word	4
	.word	_Label_2670
	.word	-20
	.word	4
	.word	_Label_2671
	.word	-24
	.word	4
	.word	_Label_2672
	.word	-28
	.word	4
	.word	_Label_2673
	.word	-32
	.word	4
	.word	0
_Label_2666:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2667:
	.ascii	"Pself\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2665\0"
	.align
_Label_2669:
	.byte	'?'
	.ascii	"_temp_2664\0"
	.align
_Label_2670:
	.byte	'?'
	.ascii	"_temp_2663\0"
	.align
_Label_2671:
	.byte	'?'
	.ascii	"_temp_2662\0"
	.align
_Label_2672:
	.byte	'?'
	.ascii	"_temp_2661\0"
	.align
_Label_2673:
	.byte	'?'
	.ascii	"_temp_2660\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_2674
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_2674:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2675
	.word	_sourceFileName
	.word	380		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2675:
	.ascii	"OpenFile\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_OpenFile_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_1,r1
	push	r1
	mov	4,r1
_Label_3020:
	push	r0
	sub	r1,1,r1
	bne	_Label_3020
	mov	2687,r13		! source line 2687
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2676 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2676  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2688,r13		! source line 2688
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2689,r13		! source line 2689
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2677 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2677  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2690,r13		! source line 2690
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2691,r13		! source line 2691
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_2679		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2679
!	jmp	_Label_2678
_Label_2678:
! THEN...
	mov	2692,r13		! source line 2692
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2692,r13		! source line 2692
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1+20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_2680
_Label_2679:
! ELSE...
	mov	2694,r13		! source line 2694
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2681 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2681  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2694,r13		! source line 2694
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2680:
! RETURN STATEMENT...
	mov	2691,r13		! source line 2691
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_1:
	.word	_sourceFileName
	.word	_Label_2682
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2683
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2684
	.word	-12
	.word	4
	.word	_Label_2685
	.word	-16
	.word	4
	.word	_Label_2686
	.word	-20
	.word	4
	.word	0
_Label_2682:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2683:
	.ascii	"Pself\0"
	.align
_Label_2684:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2685:
	.byte	'?'
	.ascii	"_temp_2677\0"
	.align
_Label_2686:
	.byte	'?'
	.ascii	"_temp_2676\0"
	.align
! 
! ===============  METHOD ReadBytes  ===============
! 
_Method_P_Kernel_OpenFile_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_2,r1
	push	r1
	mov	13,r1
_Label_3021:
	push	r0
	sub	r1,1,r1
	bne	_Label_3021
	mov	2700,r13		! source line 2700
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2710,r13		! source line 2710
	mov	"\0\0SE",r10
!   _temp_2687 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_2688 = _temp_2687 + 4
	load	[r14+-36],r1
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
	mov	2711,r13		! source line 2711
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2712,r13		! source line 2712
	mov	"\0\0AS",r10
!   currentPos = currentPos + numBytes		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	2713,r13		! source line 2713
	mov	"\0\0SE",r10
!   _temp_2689 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_2690 = _temp_2689 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2714,r13		! source line 2714
	mov	"\0\0RE",r10
	mov	2714,r13		! source line 2714
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_2693 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2692  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=targetAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=pos  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=numBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_2691  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_2691  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_2:
	.word	_sourceFileName
	.word	_Label_2694
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2695
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2696
	.word	12
	.word	4
	.word	_Label_2697
	.word	16
	.word	4
	.word	_Label_2698
	.word	-16
	.word	4
	.word	_Label_2699
	.word	-20
	.word	4
	.word	_Label_2700
	.word	-9
	.word	1
	.word	_Label_2701
	.word	-24
	.word	4
	.word	_Label_2702
	.word	-28
	.word	4
	.word	_Label_2703
	.word	-32
	.word	4
	.word	_Label_2704
	.word	-36
	.word	4
	.word	_Label_2705
	.word	-40
	.word	4
	.word	0
_Label_2694:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_2695:
	.ascii	"Pself\0"
	.align
_Label_2696:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2697:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2693\0"
	.align
_Label_2699:
	.byte	'?'
	.ascii	"_temp_2692\0"
	.align
_Label_2700:
	.byte	'C'
	.ascii	"_temp_2691\0"
	.align
_Label_2701:
	.byte	'?'
	.ascii	"_temp_2690\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2689\0"
	.align
_Label_2703:
	.byte	'?'
	.ascii	"_temp_2688\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2687\0"
	.align
_Label_2705:
	.byte	'I'
	.ascii	"pos\0"
	.align
! 
! ===============  METHOD ReadInt  ===============
! 
_Method_P_Kernel_OpenFile_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_3,r1
	push	r1
	mov	8,r1
_Label_3022:
	push	r0
	sub	r1,1,r1
	bne	_Label_3022
	mov	2719,r13		! source line 2719
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2724,r13		! source line 2724
	mov	"\0\0IF",r10
	mov	2724,r13		! source line 2724
	mov	"\0\0SE",r10
!   _temp_2709 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2710) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2709  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2708  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2708 then goto _Label_2707 else goto _Label_2706
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2706
	jmp	_Label_2707
_Label_2706:
! THEN...
	mov	2725,r13		! source line 2725
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2711 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2711  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2725,r13		! source line 2725
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2707:
! RETURN STATEMENT...
	mov	2727,r13		! source line 2727
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_3:
	.word	_sourceFileName
	.word	_Label_2712
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2713
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2714
	.word	-16
	.word	4
	.word	_Label_2715
	.word	-20
	.word	4
	.word	_Label_2716
	.word	-24
	.word	4
	.word	_Label_2717
	.word	-9
	.word	1
	.word	_Label_2718
	.word	-28
	.word	4
	.word	0
_Label_2712:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_2713:
	.ascii	"Pself\0"
	.align
_Label_2714:
	.byte	'?'
	.ascii	"_temp_2711\0"
	.align
_Label_2715:
	.byte	'?'
	.ascii	"_temp_2710\0"
	.align
_Label_2716:
	.byte	'?'
	.ascii	"_temp_2709\0"
	.align
_Label_2717:
	.byte	'C'
	.ascii	"_temp_2708\0"
	.align
_Label_2718:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD LoadExecutable  ===============
! 
_Method_P_Kernel_OpenFile_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_4,r1
	push	r1
	mov	69,r1
_Label_3023:
	push	r0
	sub	r1,1,r1
	bne	_Label_3023
	mov	2732,r13		! source line 2732
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2758,r13		! source line 2758
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2722 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Data Move: _temp_2721 = *_temp_2722  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-224]
!   if intIsZero (_temp_2721) then goto _Label_2720
	load	[r14+-224],r1
	cmp	r1,r0
	be	_Label_2720
!	jmp	_Label_2719
_Label_2719:
! THEN...
	mov	2759,r13		! source line 2759
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2723 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-216]
!   Prepare Argument: offset=8  value=_temp_2723  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2759,r13		! source line 2759
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2720:
! IF STATEMENT...
	mov	2763,r13		! source line 2763
	mov	"\0\0IF",r10
	mov	2763,r13		! source line 2763
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-208]
!   if intIsZero (_temp_2727) then goto _runtimeErrorNullPointer
	load	[r14+-208],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-208],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2726  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-212]
!   if _temp_2726 == 1112300152 then goto _Label_2725		(int)
	load	[r14+-212],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_2725
!	jmp	_Label_2724
_Label_2724:
! THEN...
	mov	2764,r13		! source line 2764
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2728 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-204]
!   Prepare Argument: offset=8  value=_temp_2728  sizeInBytes=4
	load	[r14+-204],r1
	store	r1,[r15+0]
!   Call the function
	mov	2764,r13		! source line 2764
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2765,r13		! source line 2765
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2725:
! ASSIGNMENT STATEMENT...
	mov	2769,r13		! source line 2769
	mov	"\0\0AS",r10
	mov	2769,r13		! source line 2769
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-200]
!   if intIsZero (_temp_2729) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-200],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2770,r13		! source line 2770
	mov	"\0\0AS",r10
	mov	2770,r13		! source line 2770
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_2730) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	2771,r13		! source line 2771
	mov	"\0\0AS",r10
	mov	2771,r13		! source line 2771
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_2731) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2772,r13		! source line 2772
	mov	"\0\0AS",r10
	mov	2772,r13		! source line 2772
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2732) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2773,r13		! source line 2773
	mov	"\0\0AS",r10
	mov	2773,r13		! source line 2773
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_2733) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! ASSIGNMENT STATEMENT...
	mov	2774,r13		! source line 2774
	mov	"\0\0AS",r10
	mov	2774,r13		! source line 2774
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_2734) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2777,r13		! source line 2777
	mov	"\0\0IF",r10
!   _temp_2737 = textSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
!   if intIsZero (_temp_2737) then goto _Label_2736
	load	[r14+-176],r1
	cmp	r1,r0
	be	_Label_2736
!	jmp	_Label_2735
_Label_2735:
! THEN...
	mov	2778,r13		! source line 2778
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2738 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_2738  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	2778,r13		! source line 2778
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2779,r13		! source line 2779
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2736:
! ASSIGNMENT STATEMENT...
	mov	2781,r13		! source line 2781
	mov	"\0\0AS",r10
!   textSizeInPages = textSize div 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	2785,r13		! source line 2785
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_2740
	load	[r14+-248],r1
	cmp	r1,r0
	be	_Label_2740
!	jmp	_Label_2739
_Label_2739:
! THEN...
	mov	2786,r13		! source line 2786
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2741 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_2741  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2786,r13		! source line 2786
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2787,r13		! source line 2787
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2740:
! IF STATEMENT...
	mov	2791,r13		! source line 2791
	mov	"\0\0IF",r10
!   _temp_2744 = dataSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-164]
!   if intIsZero (_temp_2744) then goto _Label_2743
	load	[r14+-164],r1
	cmp	r1,r0
	be	_Label_2743
!	jmp	_Label_2742
_Label_2742:
! THEN...
	mov	2792,r13		! source line 2792
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2745 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2745  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	2792,r13		! source line 2792
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2793,r13		! source line 2793
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2743:
! IF STATEMENT...
	mov	2795,r13		! source line 2795
	mov	"\0\0IF",r10
!   _temp_2748 = textStart + textSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   if dataStart == _temp_2748 then goto _Label_2747		(int)
	load	[r14+-252],r1
	load	[r14+-156],r2
	cmp	r1,r2
	be	_Label_2747
!	jmp	_Label_2746
_Label_2746:
! THEN...
	mov	2796,r13		! source line 2796
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2749 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_2749  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	2796,r13		! source line 2796
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2797,r13		! source line 2797
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2747:
! ASSIGNMENT STATEMENT...
	mov	2799,r13		! source line 2799
	mov	"\0\0AS",r10
!   dataSizeInPages = dataSize div 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! IF STATEMENT...
	mov	2802,r13		! source line 2802
	mov	"\0\0IF",r10
!   _temp_2752 = bssSize rem 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-148]
!   if intIsZero (_temp_2752) then goto _Label_2751
	load	[r14+-148],r1
	cmp	r1,r0
	be	_Label_2751
!	jmp	_Label_2750
_Label_2750:
! THEN...
	mov	2803,r13		! source line 2803
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2753 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2753  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	2803,r13		! source line 2803
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2804,r13		! source line 2804
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2751:
! IF STATEMENT...
	mov	2806,r13		! source line 2806
	mov	"\0\0IF",r10
!   _temp_2756 = dataStart + dataSize		(int)
	load	[r14+-252],r1
	load	[r14+-240],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
!   if bssStart == _temp_2756 then goto _Label_2755		(int)
	load	[r14+-256],r1
	load	[r14+-140],r2
	cmp	r1,r2
	be	_Label_2755
!	jmp	_Label_2754
_Label_2754:
! THEN...
	mov	2807,r13		! source line 2807
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2757 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_2757  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	2807,r13		! source line 2807
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2808,r13		! source line 2808
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2755:
! ASSIGNMENT STATEMENT...
	mov	2810,r13		! source line 2810
	mov	"\0\0AS",r10
!   bssSizeInPages = bssSize div 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2813,r13		! source line 2813
	mov	"\0\0AS",r10
!   _temp_2760 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-264],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_2759 = _temp_2760 + bssSizeInPages		(int)
	load	[r14+-124],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   _temp_2758 = _temp_2759 + 1		(int)
	load	[r14+-128],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-132]
!   i = _temp_2758 + 0		(int)
	load	[r14+-132],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	2828,r13		! source line 2828
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_2762		(int)
	load	[r14+-260],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2762
!	jmp	_Label_2761
_Label_2761:
! THEN...
	mov	2829,r13		! source line 2829
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2763 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2763  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	2829,r13		! source line 2829
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2764 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2764  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-260],r1
	store	r1,[r15+4]
!   Call the function
	mov	2830,r13		! source line 2830
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2765 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2765  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2831,r13		! source line 2831
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2832,r13		! source line 2832
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2762:
! SEND STATEMENT...
	mov	2834,r13		! source line 2834
	mov	"\0\0SE",r10
!   _temp_2766 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-260],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_2767 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2767  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	2836,r13		! source line 2836
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2837,r13		! source line 2837
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2840,r13		! source line 2840
	mov	"\0\0IF",r10
	mov	2840,r13		! source line 2840
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_2771) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2770  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_2770 == 707406378 then goto _Label_2769		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2769
!	jmp	_Label_2768
_Label_2768:
! THEN...
	mov	2841,r13		! source line 2841
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2772 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2772  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2841,r13		! source line 2841
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2842,r13		! source line 2842
	mov	"\0\0SE",r10
!   _temp_2773 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2843,r13		! source line 2843
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2769:
! ASSIGNMENT STATEMENT...
	mov	2847,r13		! source line 2847
	mov	"\0\0AS",r10
!   nextVirtPage = textStart div 8192		(int)
	load	[r14+-248],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-228]
! FOR STATEMENT...
	mov	2848,r13		! source line 2848
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2778 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2779 = textSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2778  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-260]
_Label_2774:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2779 then goto _Label_2777		
	load	[r14+-260],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2777
_Label_2775:
	mov	2848,r13		! source line 2848
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2849,r13		! source line 2849
	mov	"\0\0AS",r10
	mov	2849,r13		! source line 2849
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-228],r1
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
	store	r1,[r14+-232]
! IF STATEMENT...
	mov	2852,r13		! source line 2852
	mov	"\0\0IF",r10
	mov	2852,r13		! source line 2852
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2783) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2782  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2782 then goto _Label_2781 else goto _Label_2780
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2780
	jmp	_Label_2781
_Label_2780:
! THEN...
	mov	2853,r13		! source line 2853
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2784 = _StringConst_205
	set	_StringConst_205,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2784  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2853,r13		! source line 2853
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2854,r13		! source line 2854
	mov	"\0\0SE",r10
!   _temp_2785 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2855,r13		! source line 2855
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2781:
! SEND STATEMENT...
	mov	2857,r13		! source line 2857
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2858,r13		! source line 2858
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-228],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-228]
!   Increment the FOR-LOOP index variable and jump back
_Label_2776:
!   i = i + 1
	load	[r14+-260],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
	jmp	_Label_2774
! END FOR
_Label_2777:
! IF STATEMENT...
	mov	2862,r13		! source line 2862
	mov	"\0\0IF",r10
	mov	2862,r13		! source line 2862
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_2789) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2788  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_2788 == 707406378 then goto _Label_2787		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2787
!	jmp	_Label_2786
_Label_2786:
! THEN...
	mov	2863,r13		! source line 2863
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2790 = _StringConst_206
	set	_StringConst_206,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2790  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2863,r13		! source line 2863
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2864,r13		! source line 2864
	mov	"\0\0SE",r10
!   _temp_2791 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2865,r13		! source line 2865
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2787:
! FOR STATEMENT...
	mov	2869,r13		! source line 2869
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2796 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2797 = dataSizeInPages		(4 bytes)
	load	[r14+-268],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2796  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-260]
_Label_2792:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2797 then goto _Label_2795		
	load	[r14+-260],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2795
_Label_2793:
	mov	2869,r13		! source line 2869
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2870,r13		! source line 2870
	mov	"\0\0AS",r10
	mov	2870,r13		! source line 2870
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-228],r1
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
	store	r1,[r14+-232]
! IF STATEMENT...
	mov	2873,r13		! source line 2873
	mov	"\0\0IF",r10
	mov	2873,r13		! source line 2873
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2801) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2800  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2800 then goto _Label_2799 else goto _Label_2798
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2798
	jmp	_Label_2799
_Label_2798:
! THEN...
	mov	2874,r13		! source line 2874
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2802 = _StringConst_207
	set	_StringConst_207,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2802  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2874,r13		! source line 2874
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2875,r13		! source line 2875
	mov	"\0\0SE",r10
!   _temp_2803 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2876,r13		! source line 2876
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2799:
! ASSIGNMENT STATEMENT...
	mov	2878,r13		! source line 2878
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-228],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-228]
!   Increment the FOR-LOOP index variable and jump back
_Label_2794:
!   i = i + 1
	load	[r14+-260],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
	jmp	_Label_2792
! END FOR
_Label_2795:
! IF STATEMENT...
	mov	2882,r13		! source line 2882
	mov	"\0\0IF",r10
	mov	2882,r13		! source line 2882
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2807) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2806  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_2806 == 707406378 then goto _Label_2805		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2805
!	jmp	_Label_2804
_Label_2804:
! THEN...
	mov	2883,r13		! source line 2883
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2808 = _StringConst_208
	set	_StringConst_208,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2808  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2883,r13		! source line 2883
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2884,r13		! source line 2884
	mov	"\0\0SE",r10
!   _temp_2809 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2885,r13		! source line 2885
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2805:
! ASSIGNMENT STATEMENT...
	mov	2889,r13		! source line 2889
	mov	"\0\0AS",r10
	mov	2889,r13		! source line 2889
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-228],r1
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
	store	r1,[r14+-232]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=addr  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=bssSize  sizeInBytes=4
	load	[r14+-244],r1
	store	r1,[r15+4]
!   Call the function
	mov	2893,r13		! source line 2893
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2896,r13		! source line 2896
	mov	"\0\0RE",r10
!   ReturnResult: textStart  (sizeInBytes=4)
	load	[r14+-248],r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_4:
	.word	_sourceFileName
	.word	_Label_2810
	.word	8		! total size of parameters
	.word	276		! frame size = 276
	.word	_Label_2811
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2812
	.word	12
	.word	4
	.word	_Label_2813
	.word	-16
	.word	4
	.word	_Label_2814
	.word	-20
	.word	4
	.word	_Label_2815
	.word	-24
	.word	4
	.word	_Label_2816
	.word	-28
	.word	4
	.word	_Label_2817
	.word	-32
	.word	4
	.word	_Label_2818
	.word	-36
	.word	4
	.word	_Label_2819
	.word	-40
	.word	4
	.word	_Label_2820
	.word	-9
	.word	1
	.word	_Label_2821
	.word	-44
	.word	4
	.word	_Label_2822
	.word	-48
	.word	4
	.word	_Label_2823
	.word	-52
	.word	4
	.word	_Label_2824
	.word	-56
	.word	4
	.word	_Label_2825
	.word	-60
	.word	4
	.word	_Label_2826
	.word	-64
	.word	4
	.word	_Label_2827
	.word	-68
	.word	4
	.word	_Label_2828
	.word	-72
	.word	4
	.word	_Label_2829
	.word	-76
	.word	4
	.word	_Label_2830
	.word	-10
	.word	1
	.word	_Label_2831
	.word	-80
	.word	4
	.word	_Label_2832
	.word	-84
	.word	4
	.word	_Label_2833
	.word	-88
	.word	4
	.word	_Label_2834
	.word	-92
	.word	4
	.word	_Label_2835
	.word	-96
	.word	4
	.word	_Label_2836
	.word	-100
	.word	4
	.word	_Label_2837
	.word	-104
	.word	4
	.word	_Label_2838
	.word	-108
	.word	4
	.word	_Label_2839
	.word	-112
	.word	4
	.word	_Label_2840
	.word	-116
	.word	4
	.word	_Label_2841
	.word	-120
	.word	4
	.word	_Label_2842
	.word	-124
	.word	4
	.word	_Label_2843
	.word	-128
	.word	4
	.word	_Label_2844
	.word	-132
	.word	4
	.word	_Label_2845
	.word	-136
	.word	4
	.word	_Label_2846
	.word	-140
	.word	4
	.word	_Label_2847
	.word	-144
	.word	4
	.word	_Label_2848
	.word	-148
	.word	4
	.word	_Label_2849
	.word	-152
	.word	4
	.word	_Label_2850
	.word	-156
	.word	4
	.word	_Label_2851
	.word	-160
	.word	4
	.word	_Label_2852
	.word	-164
	.word	4
	.word	_Label_2853
	.word	-168
	.word	4
	.word	_Label_2854
	.word	-172
	.word	4
	.word	_Label_2855
	.word	-176
	.word	4
	.word	_Label_2856
	.word	-180
	.word	4
	.word	_Label_2857
	.word	-184
	.word	4
	.word	_Label_2858
	.word	-188
	.word	4
	.word	_Label_2859
	.word	-192
	.word	4
	.word	_Label_2860
	.word	-196
	.word	4
	.word	_Label_2861
	.word	-200
	.word	4
	.word	_Label_2862
	.word	-204
	.word	4
	.word	_Label_2863
	.word	-208
	.word	4
	.word	_Label_2864
	.word	-212
	.word	4
	.word	_Label_2865
	.word	-216
	.word	4
	.word	_Label_2866
	.word	-220
	.word	4
	.word	_Label_2867
	.word	-224
	.word	4
	.word	_Label_2868
	.word	-228
	.word	4
	.word	_Label_2869
	.word	-232
	.word	4
	.word	_Label_2870
	.word	-236
	.word	4
	.word	_Label_2871
	.word	-240
	.word	4
	.word	_Label_2872
	.word	-244
	.word	4
	.word	_Label_2873
	.word	-248
	.word	4
	.word	_Label_2874
	.word	-252
	.word	4
	.word	_Label_2875
	.word	-256
	.word	4
	.word	_Label_2876
	.word	-260
	.word	4
	.word	_Label_2877
	.word	-264
	.word	4
	.word	_Label_2878
	.word	-268
	.word	4
	.word	_Label_2879
	.word	-272
	.word	4
	.word	0
_Label_2810:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_2811:
	.ascii	"Pself\0"
	.align
_Label_2812:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_2813:
	.byte	'?'
	.ascii	"_temp_2809\0"
	.align
_Label_2814:
	.byte	'?'
	.ascii	"_temp_2808\0"
	.align
_Label_2815:
	.byte	'?'
	.ascii	"_temp_2807\0"
	.align
_Label_2816:
	.byte	'?'
	.ascii	"_temp_2806\0"
	.align
_Label_2817:
	.byte	'?'
	.ascii	"_temp_2803\0"
	.align
_Label_2818:
	.byte	'?'
	.ascii	"_temp_2802\0"
	.align
_Label_2819:
	.byte	'?'
	.ascii	"_temp_2801\0"
	.align
_Label_2820:
	.byte	'C'
	.ascii	"_temp_2800\0"
	.align
_Label_2821:
	.byte	'?'
	.ascii	"_temp_2797\0"
	.align
_Label_2822:
	.byte	'?'
	.ascii	"_temp_2796\0"
	.align
_Label_2823:
	.byte	'?'
	.ascii	"_temp_2791\0"
	.align
_Label_2824:
	.byte	'?'
	.ascii	"_temp_2790\0"
	.align
_Label_2825:
	.byte	'?'
	.ascii	"_temp_2789\0"
	.align
_Label_2826:
	.byte	'?'
	.ascii	"_temp_2788\0"
	.align
_Label_2827:
	.byte	'?'
	.ascii	"_temp_2785\0"
	.align
_Label_2828:
	.byte	'?'
	.ascii	"_temp_2784\0"
	.align
_Label_2829:
	.byte	'?'
	.ascii	"_temp_2783\0"
	.align
_Label_2830:
	.byte	'C'
	.ascii	"_temp_2782\0"
	.align
_Label_2831:
	.byte	'?'
	.ascii	"_temp_2779\0"
	.align
_Label_2832:
	.byte	'?'
	.ascii	"_temp_2778\0"
	.align
_Label_2833:
	.byte	'?'
	.ascii	"_temp_2773\0"
	.align
_Label_2834:
	.byte	'?'
	.ascii	"_temp_2772\0"
	.align
_Label_2835:
	.byte	'?'
	.ascii	"_temp_2771\0"
	.align
_Label_2836:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
_Label_2837:
	.byte	'?'
	.ascii	"_temp_2767\0"
	.align
_Label_2838:
	.byte	'?'
	.ascii	"_temp_2766\0"
	.align
_Label_2839:
	.byte	'?'
	.ascii	"_temp_2765\0"
	.align
_Label_2840:
	.byte	'?'
	.ascii	"_temp_2764\0"
	.align
_Label_2841:
	.byte	'?'
	.ascii	"_temp_2763\0"
	.align
_Label_2842:
	.byte	'?'
	.ascii	"_temp_2760\0"
	.align
_Label_2843:
	.byte	'?'
	.ascii	"_temp_2759\0"
	.align
_Label_2844:
	.byte	'?'
	.ascii	"_temp_2758\0"
	.align
_Label_2845:
	.byte	'?'
	.ascii	"_temp_2757\0"
	.align
_Label_2846:
	.byte	'?'
	.ascii	"_temp_2756\0"
	.align
_Label_2847:
	.byte	'?'
	.ascii	"_temp_2753\0"
	.align
_Label_2848:
	.byte	'?'
	.ascii	"_temp_2752\0"
	.align
_Label_2849:
	.byte	'?'
	.ascii	"_temp_2749\0"
	.align
_Label_2850:
	.byte	'?'
	.ascii	"_temp_2748\0"
	.align
_Label_2851:
	.byte	'?'
	.ascii	"_temp_2745\0"
	.align
_Label_2852:
	.byte	'?'
	.ascii	"_temp_2744\0"
	.align
_Label_2853:
	.byte	'?'
	.ascii	"_temp_2741\0"
	.align
_Label_2854:
	.byte	'?'
	.ascii	"_temp_2738\0"
	.align
_Label_2855:
	.byte	'?'
	.ascii	"_temp_2737\0"
	.align
_Label_2856:
	.byte	'?'
	.ascii	"_temp_2734\0"
	.align
_Label_2857:
	.byte	'?'
	.ascii	"_temp_2733\0"
	.align
_Label_2858:
	.byte	'?'
	.ascii	"_temp_2732\0"
	.align
_Label_2859:
	.byte	'?'
	.ascii	"_temp_2731\0"
	.align
_Label_2860:
	.byte	'?'
	.ascii	"_temp_2730\0"
	.align
_Label_2861:
	.byte	'?'
	.ascii	"_temp_2729\0"
	.align
_Label_2862:
	.byte	'?'
	.ascii	"_temp_2728\0"
	.align
_Label_2863:
	.byte	'?'
	.ascii	"_temp_2727\0"
	.align
_Label_2864:
	.byte	'?'
	.ascii	"_temp_2726\0"
	.align
_Label_2865:
	.byte	'?'
	.ascii	"_temp_2723\0"
	.align
_Label_2866:
	.byte	'?'
	.ascii	"_temp_2722\0"
	.align
_Label_2867:
	.byte	'?'
	.ascii	"_temp_2721\0"
	.align
_Label_2868:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_2869:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_2870:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_2871:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_2872:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_2873:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_2874:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_2875:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_2876:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2877:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_2878:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_2879:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
