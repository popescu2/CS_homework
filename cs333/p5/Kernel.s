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
_StringConst_213:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_212:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_211:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_210:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_209:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_208:
	.word	52			! length
	.ascii	"LoadExecutable: The address space just allocated...\n"
	.align
_StringConst_207:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_206:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_205:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_204:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_203:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_202:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_201:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_200:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_199:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_198:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_197:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_196:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_195:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_194:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_193:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_192:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_191:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_190:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_189:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_188:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_187:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_186:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_185:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_184:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_183:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_182:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_181:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_180:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_179:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_178:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_177:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_176:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_175:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_174:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_173:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_172:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_171:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_170:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_169:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_168:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_167:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_166:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_165:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_164:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_163:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_162:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_161:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_160:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_159:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_158:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_157:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_156:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_155:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_154:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_153:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_152:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_151:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_150:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_149:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_148:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_147:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_146:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_145:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_144:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_143:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_142:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_141:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_140:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_139:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_138:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_137:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_136:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_135:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_134:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_133:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_132:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_131:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_130:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_129:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_128:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_127:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_126:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_125:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_124:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_123:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_122:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_121:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_120:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_119:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_118:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_117:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_116:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_115:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_114:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_113:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_112:
	.word	11			! length
	.ascii	"Test Thread"
	.align
_StringConst_111:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_110:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_109:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_108:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_107:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_106:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_105:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_104:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_103:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_102:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_101:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_100:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_99:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_98:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_97:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_96:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_95:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_94:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_93:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_92:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_91:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_90:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_89:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_88:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_87:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_86:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_85:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_84:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_83:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_82:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_81:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_80:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_79:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_78:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_77:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_76:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_75:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_74:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_73:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_72:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_71:
	.word	10			! length
	.ascii	"fileDesc: "
	.align
_StringConst_70:
	.word	27			! length
	.ascii	"Handle_Sys_Close invoked! \n"
	.align
_StringConst_69:
	.word	15			! length
	.ascii	"newCurrentPos: "
	.align
_StringConst_68:
	.word	10			! length
	.ascii	"fileDesc: "
	.align
_StringConst_67:
	.word	26			! length
	.ascii	"Handle_Sys_Seek invoked! \n"
	.align
_StringConst_66:
	.word	13			! length
	.ascii	"sizeInBytes: "
	.align
_StringConst_65:
	.word	24			! length
	.ascii	"virt address of buffer: "
	.align
_StringConst_64:
	.word	10			! length
	.ascii	"fileDesc: "
	.align
_StringConst_63:
	.word	27			! length
	.ascii	"Handle_Sys_Write invoked! \n"
	.align
_StringConst_62:
	.word	13			! length
	.ascii	"sizeInBytes: "
	.align
_StringConst_61:
	.word	24			! length
	.ascii	"virt address of buffer: "
	.align
_StringConst_60:
	.word	11			! length
	.ascii	"file Desc: "
	.align
_StringConst_59:
	.word	26			! length
	.ascii	"Handle_Sys_Read invoked! \n"
	.align
_StringConst_58:
	.word	10			! length
	.ascii	"filename: "
	.align
_StringConst_57:
	.word	25			! length
	.ascii	"Virt addr of filename is "
	.align
_StringConst_56:
	.word	26			! length
	.ascii	"Handle_SYs_Open invoked! \n"
	.align
_StringConst_55:
	.word	10			! length
	.ascii	"filename: "
	.align
_StringConst_54:
	.word	29			! length
	.ascii	"Virtual address of filename: "
	.align
_StringConst_53:
	.word	28			! length
	.ascii	"Handle_Sys_Create invoked! \n"
	.align
_StringConst_52:
	.word	10			! length
	.ascii	"filename: "
	.align
_StringConst_51:
	.word	25			! length
	.ascii	"Virt addr of filename is "
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
	be	_Label_222
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
_Label_222:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_223
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_223
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_223
_Label_223:
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
_Label_2972:
	push	r0
	sub	r1,1,r1
	bne	_Label_2972
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_224 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_224  sizeInBytes=4
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
_Label_2973:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2973
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_228 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_229 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_228  sizeInBytes=4
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
!   _temp_230 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_231 = _temp_230 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_231 = 3  (sizeInBytes=4)
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
_Label_2974:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2974
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_233 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_234 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_233  sizeInBytes=4
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
!   _temp_235 = _function_220_IdleFunction
	set	_function_220_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_236 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_235  sizeInBytes=4
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
	.word	_Label_237
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_238
	.word	-12
	.word	4
	.word	_Label_239
	.word	-16
	.word	4
	.word	_Label_240
	.word	-20
	.word	4
	.word	_Label_241
	.word	-24
	.word	4
	.word	_Label_242
	.word	-28
	.word	4
	.word	_Label_243
	.word	-32
	.word	4
	.word	_Label_244
	.word	-36
	.word	4
	.word	_Label_245
	.word	-40
	.word	4
	.word	_Label_246
	.word	-44
	.word	4
	.word	_Label_247
	.word	-48
	.word	4
	.word	_Label_248
	.word	-52
	.word	4
	.word	_Label_249
	.word	-56
	.word	4
	.word	_Label_250
	.word	-60
	.word	4
	.word	0
_Label_237:
	.ascii	"InitializeScheduler\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_224\0"
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
_Label_2975:
	push	r0
	sub	r1,1,r1
	bne	_Label_2975
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	40,r13		! source line 40
	mov	"\0\0AS",r10
	mov	40,r13		! source line 40
	mov	"\0\0SE",r10
!   _temp_251 = &_P_Kernel_threadManager
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
!   _temp_252 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-16]
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_252  sizeInBytes=4
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
!   _temp_253 = _function_221_StartUserProcess
	set	_function_221_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_253  sizeInBytes=4
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
	.word	_Label_254
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_255
	.word	-12
	.word	4
	.word	_Label_256
	.word	-16
	.word	4
	.word	_Label_257
	.word	-20
	.word	4
	.word	_Label_258
	.word	-24
	.word	4
	.word	0
_Label_254:
	.ascii	"InitFirstProcess\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_258:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_221_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_221_StartUserProcess,r1
	push	r1
	mov	33,r1
_Label_2976:
	push	r0
	sub	r1,1,r1
	bne	_Label_2976
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
!   _temp_259 = &_P_Kernel_processManager
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
!   _temp_260 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: *_temp_260 = pcb  (sizeInBytes=4)
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
!   _temp_261 = pcb + 24
	load	[r14+-108],r1
	add	r1,24,r1
	store	r1,[r14+-96]
!   Data Move: *_temp_261 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-96],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	69,r13		! source line 69
	mov	"\0\0AS",r10
	mov	69,r13		! source line 69
	mov	"\0\0SE",r10
!   _temp_262 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-92]
!   _temp_263 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=_temp_262  sizeInBytes=4
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
!   _temp_265 = pcb + 32
	load	[r14+-108],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   _temp_264 = _temp_265		(4 bytes)
	load	[r14+-80],r1
	store	r1,[r14+-84]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_264  sizeInBytes=4
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
!   _temp_266 = &_P_Kernel_fileManager
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
!   _temp_267 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_267  sizeInBytes=4
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
!   _temp_269 = pcb + 32
	load	[r14+-108],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   _temp_270 = _temp_269 + 4
	load	[r14+-64],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Data Move: _temp_268 = *_temp_270  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_268  sizeInBytes=4
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
!   _temp_272 = pcb + 32
	load	[r14+-108],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   _temp_273 = _temp_272 + 4
	load	[r14+-52],r1
	add	r1,4,r1
	store	r1,[r14+-48]
!   Data Move: _temp_271 = *_temp_273  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   InitStackUserTop = _temp_271 * 8192		(int)
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
!   _temp_274 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-44]
!   Move address of _temp_274 [999 ] into _temp_275
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
!   InitSystemStackTop = _temp_275		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-124]
! SEND STATEMENT...
	mov	82,r13		! source line 82
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_276 = pcb + 32
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
!   _temp_277 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_277 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_278 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_278  sizeInBytes=4
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
!   _temp_279 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_279  sizeInBytes=4
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
!   Data Move: _temp_280 = *InitSystemStackTop  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_280  sizeInBytes=4
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
!   _temp_281 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_281  sizeInBytes=4
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
!   _temp_282 = InitSystemStackTop		(4 bytes)
	load	[r14+-124],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=InitStackUserTop  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_282  sizeInBytes=4
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
_RoutineDescriptor__function_221_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_283
	.word	4		! total size of parameters
	.word	132		! frame size = 132
	.word	_Label_284
	.word	8
	.word	4
	.word	_Label_285
	.word	-12
	.word	4
	.word	_Label_286
	.word	-16
	.word	4
	.word	_Label_287
	.word	-20
	.word	4
	.word	_Label_288
	.word	-24
	.word	4
	.word	_Label_289
	.word	-28
	.word	4
	.word	_Label_290
	.word	-32
	.word	4
	.word	_Label_291
	.word	-36
	.word	4
	.word	_Label_292
	.word	-40
	.word	4
	.word	_Label_293
	.word	-44
	.word	4
	.word	_Label_294
	.word	-48
	.word	4
	.word	_Label_295
	.word	-52
	.word	4
	.word	_Label_296
	.word	-56
	.word	4
	.word	_Label_297
	.word	-60
	.word	4
	.word	_Label_298
	.word	-64
	.word	4
	.word	_Label_299
	.word	-68
	.word	4
	.word	_Label_300
	.word	-72
	.word	4
	.word	_Label_301
	.word	-76
	.word	4
	.word	_Label_302
	.word	-80
	.word	4
	.word	_Label_303
	.word	-84
	.word	4
	.word	_Label_304
	.word	-88
	.word	4
	.word	_Label_305
	.word	-92
	.word	4
	.word	_Label_306
	.word	-96
	.word	4
	.word	_Label_307
	.word	-100
	.word	4
	.word	_Label_308
	.word	-104
	.word	4
	.word	_Label_309
	.word	-108
	.word	4
	.word	_Label_310
	.word	-112
	.word	4
	.word	_Label_311
	.word	-116
	.word	4
	.word	_Label_312
	.word	-120
	.word	4
	.word	_Label_313
	.word	-124
	.word	4
	.word	_Label_314
	.word	-128
	.word	4
	.word	0
_Label_283:
	.ascii	"StartUserProcess\0"
	.align
_Label_284:
	.byte	'I'
	.ascii	"p\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_309:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_310:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_311:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_312:
	.byte	'I'
	.ascii	"InitStackUserTop\0"
	.align
_Label_313:
	.byte	'P'
	.ascii	"InitSystemStackTop\0"
	.align
_Label_314:
	.byte	'I'
	.ascii	"OldIntStat\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_220_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_220_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_2977:
	push	r0
	sub	r1,1,r1
	bne	_Label_2977
	mov	109,r13		! source line 109
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	119,r13		! source line 119
	mov	"\0\0WH",r10
_Label_315:
!	jmp	_Label_316
_Label_316:
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
!   _temp_320 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_318 else goto _Label_319
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_319
	jmp	_Label_318
_Label_318:
! THEN...
	mov	122,r13		! source line 122
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	122,r13		! source line 122
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_321
_Label_319:
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
_Label_321:
! END WHILE...
	jmp	_Label_315
_Label_317:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_220_IdleFunction:
	.word	_sourceFileName
	.word	_Label_322
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_323
	.word	8
	.word	4
	.word	_Label_324
	.word	-12
	.word	4
	.word	_Label_325
	.word	-16
	.word	4
	.word	0
_Label_322:
	.ascii	"IdleFunction\0"
	.align
_Label_323:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_325:
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
_Label_2978:
	push	r0
	sub	r1,1,r1
	bne	_Label_2978
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
!   _temp_328 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_328 ) then goto _Label_327		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_327
!	jmp	_Label_326
_Label_326:
! THEN...
	mov	148,r13		! source line 148
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_330 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_330 [0 ] into _temp_331
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
!   _temp_329 = _temp_331		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_329  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	148,r13		! source line 148
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_327:
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
!   _temp_332 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_332 = 3  (sizeInBytes=4)
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
_Label_333:
	mov	161,r13		! source line 161
	mov	"\0\0SE",r10
!   _temp_337 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_336  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_336 then goto _Label_335 else goto _Label_334
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_334
	jmp	_Label_335
_Label_334:
	mov	161,r13		! source line 161
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	162,r13		! source line 162
	mov	"\0\0AS",r10
	mov	162,r13		! source line 162
	mov	"\0\0SE",r10
!   _temp_338 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_339 = &_P_Kernel_threadManager
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
	jmp	_Label_333
_Label_335:
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_342 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_342 ) then goto _Label_341		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_341
!	jmp	_Label_340
_Label_340:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_344 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_344 [0 ] into _temp_345
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
!   _temp_343 = _temp_345		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_343  sizeInBytes=4
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
!   _temp_347 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_346 = *_temp_347  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_346) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_348 = _temp_346 + 32
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
_Label_341:
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
	.word	_Label_349
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_350
	.word	8
	.word	4
	.word	_Label_351
	.word	-16
	.word	4
	.word	_Label_352
	.word	-20
	.word	4
	.word	_Label_353
	.word	-24
	.word	4
	.word	_Label_354
	.word	-28
	.word	4
	.word	_Label_355
	.word	-32
	.word	4
	.word	_Label_356
	.word	-36
	.word	4
	.word	_Label_357
	.word	-40
	.word	4
	.word	_Label_358
	.word	-44
	.word	4
	.word	_Label_359
	.word	-48
	.word	4
	.word	_Label_360
	.word	-52
	.word	4
	.word	_Label_361
	.word	-9
	.word	1
	.word	_Label_362
	.word	-56
	.word	4
	.word	_Label_363
	.word	-60
	.word	4
	.word	_Label_364
	.word	-64
	.word	4
	.word	_Label_365
	.word	-68
	.word	4
	.word	_Label_366
	.word	-72
	.word	4
	.word	_Label_367
	.word	-76
	.word	4
	.word	_Label_368
	.word	-80
	.word	4
	.word	0
_Label_349:
	.ascii	"Run\0"
	.align
_Label_350:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_351:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_352:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_361:
	.byte	'C'
	.ascii	"_temp_336\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_329\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_367:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_368:
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
_Label_2979:
	push	r0
	sub	r1,1,r1
	bne	_Label_2979
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
!   _temp_369 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_369  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	182,r13		! source line 182
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	183,r13		! source line 183
	mov	"\0\0SE",r10
!   _temp_370 = _function_219_ThreadPrintShort
	set	_function_219_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_371 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_370  sizeInBytes=4
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
	.word	_Label_372
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_373
	.word	-12
	.word	4
	.word	_Label_374
	.word	-16
	.word	4
	.word	_Label_375
	.word	-20
	.word	4
	.word	_Label_376
	.word	-24
	.word	4
	.word	0
_Label_372:
	.ascii	"PrintReadyList\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_376:
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
_Label_2980:
	push	r0
	sub	r1,1,r1
	bne	_Label_2980
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
!   _temp_377 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_377  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_379 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_378 = *_temp_379  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_378  sizeInBytes=4
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
!   _temp_380 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_380  sizeInBytes=4
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
	.word	_Label_381
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_382
	.word	-12
	.word	4
	.word	_Label_383
	.word	-16
	.word	4
	.word	_Label_384
	.word	-20
	.word	4
	.word	_Label_385
	.word	-24
	.word	4
	.word	_Label_386
	.word	-28
	.word	4
	.word	_Label_387
	.word	-32
	.word	4
	.word	0
_Label_381:
	.ascii	"ThreadStartMain\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_386:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_387:
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
_Label_2981:
	push	r0
	sub	r1,1,r1
	bne	_Label_2981
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
!   _temp_388 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_389 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_389  sizeInBytes=4
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
	.word	_Label_390
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_391
	.word	-12
	.word	4
	.word	_Label_392
	.word	-16
	.word	4
	.word	_Label_393
	.word	-20
	.word	4
	.word	0
_Label_390:
	.ascii	"ThreadFinish\0"
	.align
_Label_391:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_392:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_393:
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
_Label_2982:
	push	r0
	sub	r1,1,r1
	bne	_Label_2982
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
!   _temp_394 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_394  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	242,r13		! source line 242
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	243,r13		! source line 243
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_396		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_396
!	jmp	_Label_395
_Label_395:
! THEN...
	mov	244,r13		! source line 244
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_397 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_397  sizeInBytes=4
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
!   _temp_399 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_398 = *_temp_399  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_398  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	245,r13		! source line 245
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_396:
! CALL STATEMENT...
!   _temp_400 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_400  sizeInBytes=4
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
!   _temp_401 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_401  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	249,r13		! source line 249
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_402 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_402  sizeInBytes=4
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
	.word	_Label_403
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_404
	.word	8
	.word	4
	.word	_Label_405
	.word	-12
	.word	4
	.word	_Label_406
	.word	-16
	.word	4
	.word	_Label_407
	.word	-20
	.word	4
	.word	_Label_408
	.word	-24
	.word	4
	.word	_Label_409
	.word	-28
	.word	4
	.word	_Label_410
	.word	-32
	.word	4
	.word	_Label_411
	.word	-36
	.word	4
	.word	_Label_412
	.word	-40
	.word	4
	.word	0
_Label_403:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_404:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_412:
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
_Label_2983:
	push	r0
	sub	r1,1,r1
	bne	_Label_2983
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
!   if newStatus != 1 then goto _Label_414		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_414
!	jmp	_Label_413
_Label_413:
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
	jmp	_Label_415
_Label_414:
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
_Label_415:
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
	.word	_Label_416
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_417
	.word	8
	.word	4
	.word	_Label_418
	.word	-12
	.word	4
	.word	0
_Label_416:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_417:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_418:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_219_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_219_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_2984:
	push	r0
	sub	r1,1,r1
	bne	_Label_2984
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
!   if t == 0 then goto _Label_422		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_422
!   _temp_421 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_423
_Label_422:
!   _temp_421 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_423:
!   if _temp_421 then goto _Label_420 else goto _Label_419
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_419
	jmp	_Label_420
_Label_419:
! THEN...
	mov	833,r13		! source line 833
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_424 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_424  sizeInBytes=4
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
_Label_420:
! CALL STATEMENT...
!   _temp_425 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_425  sizeInBytes=4
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
!   _temp_427 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_426 = *_temp_427  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_426  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	837,r13		! source line 837
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_428 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_428  sizeInBytes=4
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
!   _temp_437 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_436 = *_temp_437  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_431
	cmp	r1,2
	be	_Label_432
	cmp	r1,3
	be	_Label_433
	cmp	r1,4
	be	_Label_434
	cmp	r1,5
	be	_Label_435
	jmp	_Label_429
! CASE 1...
_Label_431:
! CALL STATEMENT...
!   _temp_438 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_438  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	841,r13		! source line 841
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	842,r13		! source line 842
	mov	"\0\0BR",r10
	jmp	_Label_430
! CASE 2...
_Label_432:
! CALL STATEMENT...
!   _temp_439 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_439  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	844,r13		! source line 844
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	845,r13		! source line 845
	mov	"\0\0BR",r10
	jmp	_Label_430
! CASE 3...
_Label_433:
! CALL STATEMENT...
!   _temp_440 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_440  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	847,r13		! source line 847
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	848,r13		! source line 848
	mov	"\0\0BR",r10
	jmp	_Label_430
! CASE 4...
_Label_434:
! CALL STATEMENT...
!   _temp_441 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_441  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	850,r13		! source line 850
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	851,r13		! source line 851
	mov	"\0\0BR",r10
	jmp	_Label_430
! CASE 5...
_Label_435:
! CALL STATEMENT...
!   _temp_442 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_442  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	853,r13		! source line 853
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	854,r13		! source line 854
	mov	"\0\0BR",r10
	jmp	_Label_430
! DEFAULT CASE...
_Label_429:
! CALL STATEMENT...
!   _temp_443 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_443  sizeInBytes=4
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
_Label_430:
! CALL STATEMENT...
!   _temp_444 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_444  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	858,r13		! source line 858
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_445 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_445  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	859,r13		! source line 859
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_446 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_446  sizeInBytes=4
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
_RoutineDescriptor__function_219_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_447
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_448
	.word	8
	.word	4
	.word	_Label_449
	.word	-16
	.word	4
	.word	_Label_450
	.word	-20
	.word	4
	.word	_Label_451
	.word	-24
	.word	4
	.word	_Label_452
	.word	-28
	.word	4
	.word	_Label_453
	.word	-32
	.word	4
	.word	_Label_454
	.word	-36
	.word	4
	.word	_Label_455
	.word	-40
	.word	4
	.word	_Label_456
	.word	-44
	.word	4
	.word	_Label_457
	.word	-48
	.word	4
	.word	_Label_458
	.word	-52
	.word	4
	.word	_Label_459
	.word	-56
	.word	4
	.word	_Label_460
	.word	-60
	.word	4
	.word	_Label_461
	.word	-64
	.word	4
	.word	_Label_462
	.word	-68
	.word	4
	.word	_Label_463
	.word	-72
	.word	4
	.word	_Label_464
	.word	-76
	.word	4
	.word	_Label_465
	.word	-9
	.word	1
	.word	_Label_466
	.word	-80
	.word	4
	.word	0
_Label_447:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_448:
	.byte	'P'
	.ascii	"t\0"
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
	.ascii	"_temp_443\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_427\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_426\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_425\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_424\0"
	.align
_Label_465:
	.byte	'C'
	.ascii	"_temp_421\0"
	.align
_Label_466:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_218_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_218_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_2985:
	push	r0
	sub	r1,1,r1
	bne	_Label_2985
	mov	1157,r13		! source line 1157
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_467 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_467  sizeInBytes=4
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
_RoutineDescriptor__function_218_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_468
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_469
	.word	8
	.word	4
	.word	_Label_470
	.word	-12
	.word	4
	.word	0
_Label_468:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_469:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_467\0"
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
_Label_2986:
	push	r0
	sub	r1,1,r1
	bne	_Label_2986
	mov	1167,r13		! source line 1167
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_471 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_471  sizeInBytes=4
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
	.word	_Label_472
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_473
	.word	8
	.word	4
	.word	_Label_474
	.word	-12
	.word	4
	.word	0
_Label_472:
	.ascii	"ProcessFinish\0"
	.align
_Label_473:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_471\0"
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
_Label_2987:
	push	r0
	sub	r1,1,r1
	bne	_Label_2987
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
	.word	_Label_475
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_475:
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
_Label_2988:
	push	r0
	sub	r1,1,r1
	bne	_Label_2988
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
!   _temp_479 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_480 = _temp_479 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_478 = *_temp_480  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_478 == 0 then goto _Label_477		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_477
!	jmp	_Label_476
_Label_476:
! THEN...
	mov	1704,r13		! source line 1704
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1704,r13		! source line 1704
	mov	"\0\0SE",r10
!   _temp_482 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_483 = _temp_482 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_481 = *_temp_483  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_481) then goto _runtimeErrorNullPointer
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
_Label_477:
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
	.word	_Label_484
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_485
	.word	-12
	.word	4
	.word	_Label_486
	.word	-16
	.word	4
	.word	_Label_487
	.word	-20
	.word	4
	.word	_Label_488
	.word	-24
	.word	4
	.word	_Label_489
	.word	-28
	.word	4
	.word	_Label_490
	.word	-32
	.word	4
	.word	0
_Label_484:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_483\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_482\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_481\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_480\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_479\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_478\0"
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
	.word	_Label_491
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_491:
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
_Label_2989:
	push	r0
	sub	r1,1,r1
	bne	_Label_2989
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
!   _temp_492 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_492  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1732,r13		! source line 1732
	mov	"\0\0CA",r10
	call	_function_217_ErrorInUserProcess
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
	.word	_Label_493
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_494
	.word	-12
	.word	4
	.word	0
_Label_493:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_492\0"
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
_Label_2990:
	push	r0
	sub	r1,1,r1
	bne	_Label_2990
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
!   _temp_495 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_495  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1744,r13		! source line 1744
	mov	"\0\0CA",r10
	call	_function_217_ErrorInUserProcess
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
	.word	_Label_496
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_497
	.word	-12
	.word	4
	.word	0
_Label_496:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_495\0"
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
_Label_2991:
	push	r0
	sub	r1,1,r1
	bne	_Label_2991
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
!   _temp_498 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_498  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1756,r13		! source line 1756
	mov	"\0\0CA",r10
	call	_function_217_ErrorInUserProcess
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
	.word	_Label_499
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_500
	.word	-12
	.word	4
	.word	0
_Label_499:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_498\0"
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
_Label_2992:
	push	r0
	sub	r1,1,r1
	bne	_Label_2992
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
!   _temp_501 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_501  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1768,r13		! source line 1768
	mov	"\0\0CA",r10
	call	_function_217_ErrorInUserProcess
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
	.word	_Label_502
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_503
	.word	-12
	.word	4
	.word	0
_Label_502:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_501\0"
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
_Label_2993:
	push	r0
	sub	r1,1,r1
	bne	_Label_2993
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
!   _temp_504 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_504  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1780,r13		! source line 1780
	mov	"\0\0CA",r10
	call	_function_217_ErrorInUserProcess
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
	.word	_Label_505
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_506
	.word	-12
	.word	4
	.word	0
_Label_505:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_506:
	.byte	'?'
	.ascii	"_temp_504\0"
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
_Label_2994:
	push	r0
	sub	r1,1,r1
	bne	_Label_2994
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
!   _temp_507 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_507  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1792,r13		! source line 1792
	mov	"\0\0CA",r10
	call	_function_217_ErrorInUserProcess
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
	.word	_Label_508
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_509
	.word	-12
	.word	4
	.word	0
_Label_508:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_507\0"
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
_Label_2995:
	push	r0
	sub	r1,1,r1
	bne	_Label_2995
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
!   _temp_510 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_510  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1804,r13		! source line 1804
	mov	"\0\0CA",r10
	call	_function_217_ErrorInUserProcess
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
	.word	_Label_511
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_512
	.word	-12
	.word	4
	.word	0
_Label_511:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_510\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_217_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_217_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_2996:
	push	r0
	sub	r1,1,r1
	bne	_Label_2996
	mov	1809,r13		! source line 1809
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_513 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_513  sizeInBytes=4
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
!   _temp_514 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_514  sizeInBytes=4
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
!   _temp_518 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_517 = *_temp_518  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_517 == 0 then goto _Label_516		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_516
!	jmp	_Label_515
_Label_515:
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
!   _temp_520 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_519 = *_temp_520  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_519) then goto _runtimeErrorNullPointer
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
	jmp	_Label_521
_Label_516:
! ELSE...
	mov	1822,r13		! source line 1822
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_522 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_522  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1822,r13		! source line 1822
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_521:
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
_RoutineDescriptor__function_217_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_523
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_524
	.word	8
	.word	4
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
	.word	0
_Label_523:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_524:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_519\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_518\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_517\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_514\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_513\0"
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
_Label_2997:
	push	r0
	sub	r1,1,r1
	bne	_Label_2997
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
	be	_Label_2998
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_532
_Label_2998:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_532
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_532
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_546,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_546:
	jmp	_Label_538	! 1:	
	jmp	_Label_545	! 2:	
	jmp	_Label_535	! 3:	
	jmp	_Label_534	! 4:	
	jmp	_Label_537	! 5:	
	jmp	_Label_536	! 6:	
	jmp	_Label_539	! 7:	
	jmp	_Label_540	! 8:	
	jmp	_Label_541	! 9:	
	jmp	_Label_542	! 10:	
	jmp	_Label_543	! 11:	
	jmp	_Label_544	! 12:	
! CASE 4...
_Label_534:
! RETURN STATEMENT...
	mov	1858,r13		! source line 1858
	mov	"\0\0RE",r10
!   Call the function
	mov	1858,r13		! source line 1858
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_547  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_547  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_535:
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
_Label_536:
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
!   Retrieve Result: targetName=_temp_548  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_548  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_537:
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
!   Retrieve Result: targetName=_temp_549  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_549  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_538:
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
_Label_539:
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
!   Retrieve Result: targetName=_temp_550  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_550  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_540:
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
!   Retrieve Result: targetName=_temp_551  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_551  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_541:
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
!   Retrieve Result: targetName=_temp_552  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_552  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_542:
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
!   Retrieve Result: targetName=_temp_553  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_553  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_543:
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
!   Retrieve Result: targetName=_temp_554  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_554  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_544:
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
_Label_545:
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
_Label_532:
! CALL STATEMENT...
!   _temp_555 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_555  sizeInBytes=4
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
!   _temp_556 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_556  sizeInBytes=4
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
_Label_533:
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
	.word	_Label_557
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_558
	.word	8
	.word	4
	.word	_Label_559
	.word	12
	.word	4
	.word	_Label_560
	.word	16
	.word	4
	.word	_Label_561
	.word	20
	.word	4
	.word	_Label_562
	.word	24
	.word	4
	.word	_Label_563
	.word	-12
	.word	4
	.word	_Label_564
	.word	-16
	.word	4
	.word	_Label_565
	.word	-20
	.word	4
	.word	_Label_566
	.word	-24
	.word	4
	.word	_Label_567
	.word	-28
	.word	4
	.word	_Label_568
	.word	-32
	.word	4
	.word	_Label_569
	.word	-36
	.word	4
	.word	_Label_570
	.word	-40
	.word	4
	.word	_Label_571
	.word	-44
	.word	4
	.word	_Label_572
	.word	-48
	.word	4
	.word	0
_Label_557:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_558:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_559:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_560:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_561:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_562:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_563:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_554\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
_Label_570:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_571:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_547\0"
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
_Label_2999:
	push	r0
	sub	r1,1,r1
	bne	_Label_2999
	mov	1896,r13		! source line 1896
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_573 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_573  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1898,r13		! source line 1898
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_574 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_574  sizeInBytes=4
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
	.word	_Label_575
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_576
	.word	8
	.word	4
	.word	_Label_577
	.word	-12
	.word	4
	.word	_Label_578
	.word	-16
	.word	4
	.word	0
_Label_575:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_576:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_573\0"
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
_Label_3000:
	push	r0
	sub	r1,1,r1
	bne	_Label_3000
	mov	1906,r13		! source line 1906
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_579 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_579  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1908,r13		! source line 1908
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_580 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_580  sizeInBytes=4
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
	.word	_Label_581
	.word	0		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_582
	.word	-12
	.word	4
	.word	_Label_583
	.word	-16
	.word	4
	.word	0
_Label_581:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_579\0"
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
_Label_3001:
	push	r0
	sub	r1,1,r1
	bne	_Label_3001
	mov	1914,r13		! source line 1914
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_584 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_584  sizeInBytes=4
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
	.word	_Label_585
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_586
	.word	-12
	.word	4
	.word	0
_Label_585:
	.ascii	"Handle_Sys_Yield\0"
	.align
_Label_586:
	.byte	'?'
	.ascii	"_temp_584\0"
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
_Label_3002:
	push	r0
	sub	r1,1,r1
	bne	_Label_3002
	mov	1921,r13		! source line 1921
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_587 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_587  sizeInBytes=4
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
	.word	_Label_588
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_589
	.word	-12
	.word	4
	.word	0
_Label_588:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_589:
	.byte	'?'
	.ascii	"_temp_587\0"
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
_Label_3003:
	push	r0
	sub	r1,1,r1
	bne	_Label_3003
	mov	1930,r13		! source line 1930
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_590 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_590  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1932,r13		! source line 1932
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_591 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_591  sizeInBytes=4
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
	.word	_Label_592
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_593
	.word	8
	.word	4
	.word	_Label_594
	.word	-12
	.word	4
	.word	_Label_595
	.word	-16
	.word	4
	.word	0
_Label_592:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_593:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_590\0"
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
	mov	70,r1
_Label_3004:
	push	r0
	sub	r1,1,r1
	bne	_Label_3004
	mov	1941,r13		! source line 1941
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! str
!   NEW ARRAY Constructor...
!   _temp_597 = &_temp_596
	add	r14,-164,r1
	store	r1,[r14+-60]
!   _temp_597 = _temp_597 + 4
	load	[r14+-60],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Next value...
	mov	100,r1
	store	r1,[r14+-56]
_Label_599:
!   Data Move: *_temp_597 = 32  (sizeInBytes=1)
	mov	32,r1
	load	[r14+-60],r2
	storeb	r1,[r2]
!   _temp_597 = _temp_597 + 1
	load	[r14+-60],r1
	add	r1,1,r1
	store	r1,[r14+-60]
!   _temp_598 = _temp_598 + -1
	load	[r14+-56],r1
	add	r1,-1,r1
	store	r1,[r14+-56]
!   if intNotZero (_temp_598) then goto _Label_599
	load	[r14+-56],r1
	cmp	r1,r0
	bne	_Label_599
!   Initialize the array size...
	mov	100,r1
	store	r1,[r14+-164]
!   _temp_600 = &_temp_596
	add	r14,-164,r1
	store	r1,[r14+-52]
!   make sure array has size 100
	load	[r14+-52],r1
	load	[r1],r1
	set	100, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: str = *_temp_600  (sizeInBytes=104)
	load	[r14+-52],r5
	add	r14,-268,r4
	mov	26,r3
_Label_3005:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3005
! ASSIGNMENT STATEMENT...
	mov	1948,r13		! source line 1948
	mov	"\0\0AS",r10
	mov	1948,r13		! source line 1948
	mov	"\0\0SE",r10
!   _temp_601 = &str
	add	r14,-268,r1
	store	r1,[r14+-48]
!   _temp_602 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_604 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_603 = *_temp_604  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_603) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_605 = _temp_603 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_601  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_602  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=100  sizeInBytes=4
	mov	100,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=success  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-272]
! CALL STATEMENT...
!   _temp_606 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_606  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1949,r13		! source line 1949
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_607 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_607  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1950,r13		! source line 1950
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_608 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_608  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1951,r13		! source line 1951
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1952,r13		! source line 1952
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_609 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_609  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1953,r13		! source line 1953
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_610 = &str
	add	r14,-268,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_610  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1954,r13		! source line 1954
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1955,r13		! source line 1955
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1956,r13		! source line 1956
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,284,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_611
	.word	4		! total size of parameters
	.word	280		! frame size = 280
	.word	_Label_612
	.word	8
	.word	4
	.word	_Label_613
	.word	-12
	.word	4
	.word	_Label_614
	.word	-16
	.word	4
	.word	_Label_615
	.word	-20
	.word	4
	.word	_Label_616
	.word	-24
	.word	4
	.word	_Label_617
	.word	-28
	.word	4
	.word	_Label_618
	.word	-32
	.word	4
	.word	_Label_619
	.word	-36
	.word	4
	.word	_Label_620
	.word	-40
	.word	4
	.word	_Label_621
	.word	-44
	.word	4
	.word	_Label_622
	.word	-48
	.word	4
	.word	_Label_623
	.word	-52
	.word	4
	.word	_Label_624
	.word	-56
	.word	4
	.word	_Label_625
	.word	-60
	.word	4
	.word	_Label_626
	.word	-164
	.word	104
	.word	_Label_627
	.word	-268
	.word	104
	.word	_Label_628
	.word	-272
	.word	4
	.word	0
_Label_611:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_612:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_613:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_615:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_623:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_624:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_625:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_626:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_627:
	.byte	'A'
	.ascii	"str\0"
	.align
_Label_628:
	.byte	'I'
	.ascii	"success\0"
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
	mov	70,r1
_Label_3006:
	push	r0
	sub	r1,1,r1
	bne	_Label_3006
	mov	1961,r13		! source line 1961
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! str
!   NEW ARRAY Constructor...
!   _temp_630 = &_temp_629
	add	r14,-164,r1
	store	r1,[r14+-60]
!   _temp_630 = _temp_630 + 4
	load	[r14+-60],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Next value...
	mov	100,r1
	store	r1,[r14+-56]
_Label_632:
!   Data Move: *_temp_630 = 32  (sizeInBytes=1)
	mov	32,r1
	load	[r14+-60],r2
	storeb	r1,[r2]
!   _temp_630 = _temp_630 + 1
	load	[r14+-60],r1
	add	r1,1,r1
	store	r1,[r14+-60]
!   _temp_631 = _temp_631 + -1
	load	[r14+-56],r1
	add	r1,-1,r1
	store	r1,[r14+-56]
!   if intNotZero (_temp_631) then goto _Label_632
	load	[r14+-56],r1
	cmp	r1,r0
	bne	_Label_632
!   Initialize the array size...
	mov	100,r1
	store	r1,[r14+-164]
!   _temp_633 = &_temp_629
	add	r14,-164,r1
	store	r1,[r14+-52]
!   make sure array has size 100
	load	[r14+-52],r1
	load	[r1],r1
	set	100, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: str = *_temp_633  (sizeInBytes=104)
	load	[r14+-52],r5
	add	r14,-268,r4
	mov	26,r3
_Label_3007:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3007
! ASSIGNMENT STATEMENT...
	mov	1966,r13		! source line 1966
	mov	"\0\0AS",r10
	mov	1966,r13		! source line 1966
	mov	"\0\0SE",r10
!   _temp_634 = &str
	add	r14,-268,r1
	store	r1,[r14+-48]
!   _temp_635 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_637 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_636 = *_temp_637  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_636) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_638 = _temp_636 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_634  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_635  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=100  sizeInBytes=4
	mov	100,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=success  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-272]
! CALL STATEMENT...
!   _temp_639 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_639  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1967,r13		! source line 1967
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_640 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_640  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1968,r13		! source line 1968
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_641 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_641  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1969,r13		! source line 1969
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1970,r13		! source line 1970
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_642 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_642  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1971,r13		! source line 1971
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_643 = &str
	add	r14,-268,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_643  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1972,r13		! source line 1972
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1973,r13		! source line 1973
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1974,r13		! source line 1974
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,284,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_644
	.word	4		! total size of parameters
	.word	280		! frame size = 280
	.word	_Label_645
	.word	8
	.word	4
	.word	_Label_646
	.word	-12
	.word	4
	.word	_Label_647
	.word	-16
	.word	4
	.word	_Label_648
	.word	-20
	.word	4
	.word	_Label_649
	.word	-24
	.word	4
	.word	_Label_650
	.word	-28
	.word	4
	.word	_Label_651
	.word	-32
	.word	4
	.word	_Label_652
	.word	-36
	.word	4
	.word	_Label_653
	.word	-40
	.word	4
	.word	_Label_654
	.word	-44
	.word	4
	.word	_Label_655
	.word	-48
	.word	4
	.word	_Label_656
	.word	-52
	.word	4
	.word	_Label_657
	.word	-56
	.word	4
	.word	_Label_658
	.word	-60
	.word	4
	.word	_Label_659
	.word	-164
	.word	104
	.word	_Label_660
	.word	-268
	.word	104
	.word	_Label_661
	.word	-272
	.word	4
	.word	0
_Label_644:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_645:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_660:
	.byte	'A'
	.ascii	"str\0"
	.align
_Label_661:
	.byte	'I'
	.ascii	"success\0"
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
	mov	70,r1
_Label_3008:
	push	r0
	sub	r1,1,r1
	bne	_Label_3008
	mov	1979,r13		! source line 1979
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! str
!   NEW ARRAY Constructor...
!   _temp_663 = &_temp_662
	add	r14,-164,r1
	store	r1,[r14+-60]
!   _temp_663 = _temp_663 + 4
	load	[r14+-60],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Next value...
	mov	100,r1
	store	r1,[r14+-56]
_Label_665:
!   Data Move: *_temp_663 = 32  (sizeInBytes=1)
	mov	32,r1
	load	[r14+-60],r2
	storeb	r1,[r2]
!   _temp_663 = _temp_663 + 1
	load	[r14+-60],r1
	add	r1,1,r1
	store	r1,[r14+-60]
!   _temp_664 = _temp_664 + -1
	load	[r14+-56],r1
	add	r1,-1,r1
	store	r1,[r14+-56]
!   if intNotZero (_temp_664) then goto _Label_665
	load	[r14+-56],r1
	cmp	r1,r0
	bne	_Label_665
!   Initialize the array size...
	mov	100,r1
	store	r1,[r14+-164]
!   _temp_666 = &_temp_662
	add	r14,-164,r1
	store	r1,[r14+-52]
!   make sure array has size 100
	load	[r14+-52],r1
	load	[r1],r1
	set	100, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: str = *_temp_666  (sizeInBytes=104)
	load	[r14+-52],r5
	add	r14,-268,r4
	mov	26,r3
_Label_3009:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3009
! ASSIGNMENT STATEMENT...
	mov	1984,r13		! source line 1984
	mov	"\0\0AS",r10
	mov	1984,r13		! source line 1984
	mov	"\0\0SE",r10
!   _temp_667 = &str
	add	r14,-268,r1
	store	r1,[r14+-48]
!   _temp_668 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_670 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_669 = *_temp_670  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_669) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_671 = _temp_669 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_667  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_668  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=100  sizeInBytes=4
	mov	100,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=success  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-272]
! CALL STATEMENT...
!   _temp_672 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_672  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1985,r13		! source line 1985
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_673 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_673  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1986,r13		! source line 1986
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_674 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_674  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1987,r13		! source line 1987
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1988,r13		! source line 1988
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_675 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_675  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1989,r13		! source line 1989
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_676 = &str
	add	r14,-268,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_676  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1990,r13		! source line 1990
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1991,r13		! source line 1991
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1992,r13		! source line 1992
	mov	"\0\0RE",r10
!   ReturnResult: 5000  (sizeInBytes=4)
	mov	5000,r1
	store	r1,[r14+8]
	add	r15,284,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_677
	.word	4		! total size of parameters
	.word	280		! frame size = 280
	.word	_Label_678
	.word	8
	.word	4
	.word	_Label_679
	.word	-12
	.word	4
	.word	_Label_680
	.word	-16
	.word	4
	.word	_Label_681
	.word	-20
	.word	4
	.word	_Label_682
	.word	-24
	.word	4
	.word	_Label_683
	.word	-28
	.word	4
	.word	_Label_684
	.word	-32
	.word	4
	.word	_Label_685
	.word	-36
	.word	4
	.word	_Label_686
	.word	-40
	.word	4
	.word	_Label_687
	.word	-44
	.word	4
	.word	_Label_688
	.word	-48
	.word	4
	.word	_Label_689
	.word	-52
	.word	4
	.word	_Label_690
	.word	-56
	.word	4
	.word	_Label_691
	.word	-60
	.word	4
	.word	_Label_692
	.word	-164
	.word	104
	.word	_Label_693
	.word	-268
	.word	104
	.word	_Label_694
	.word	-272
	.word	4
	.word	0
_Label_677:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_678:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_693:
	.byte	'A'
	.ascii	"str\0"
	.align
_Label_694:
	.byte	'I'
	.ascii	"success\0"
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
	mov	6,r1
_Label_3010:
	push	r0
	sub	r1,1,r1
	bne	_Label_3010
	mov	1997,r13		! source line 1997
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_695 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_695  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2004,r13		! source line 2004
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_696 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_696  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2005,r13		! source line 2005
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2006,r13		! source line 2006
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2007,r13		! source line 2007
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_697 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_697  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2008,r13		! source line 2008
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_698 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_698  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2009,r13		! source line 2009
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	2010,r13		! source line 2010
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_699 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_699  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2017,r13		! source line 2017
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2018,r13		! source line 2018
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2019,r13		! source line 2019
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2020,r13		! source line 2020
	mov	"\0\0RE",r10
!   ReturnResult: 6000  (sizeInBytes=4)
	mov	6000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_700
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_701
	.word	8
	.word	4
	.word	_Label_702
	.word	12
	.word	4
	.word	_Label_703
	.word	16
	.word	4
	.word	_Label_704
	.word	-12
	.word	4
	.word	_Label_705
	.word	-16
	.word	4
	.word	_Label_706
	.word	-20
	.word	4
	.word	_Label_707
	.word	-24
	.word	4
	.word	_Label_708
	.word	-28
	.word	4
	.word	0
_Label_700:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_701:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_702:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_703:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_698\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_697\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_696\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_695\0"
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
	mov	6,r1
_Label_3011:
	push	r0
	sub	r1,1,r1
	bne	_Label_3011
	mov	2025,r13		! source line 2025
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_709 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_709  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2031,r13		! source line 2031
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_710 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_710  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2032,r13		! source line 2032
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2033,r13		! source line 2033
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2034,r13		! source line 2034
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_711 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_711  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2035,r13		! source line 2035
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_712 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_712  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2036,r13		! source line 2036
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	2037,r13		! source line 2037
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_713 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_713  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2040,r13		! source line 2040
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2041,r13		! source line 2041
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2042,r13		! source line 2042
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2043,r13		! source line 2043
	mov	"\0\0RE",r10
!   ReturnResult: 7000  (sizeInBytes=4)
	mov	7000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_714
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_715
	.word	8
	.word	4
	.word	_Label_716
	.word	12
	.word	4
	.word	_Label_717
	.word	16
	.word	4
	.word	_Label_718
	.word	-12
	.word	4
	.word	_Label_719
	.word	-16
	.word	4
	.word	_Label_720
	.word	-20
	.word	4
	.word	_Label_721
	.word	-24
	.word	4
	.word	_Label_722
	.word	-28
	.word	4
	.word	0
_Label_714:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_715:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_716:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_717:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_711\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_710\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_709\0"
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
_Label_3012:
	push	r0
	sub	r1,1,r1
	bne	_Label_3012
	mov	2048,r13		! source line 2048
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_723 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_723  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2050,r13		! source line 2050
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_724 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_724  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2051,r13		! source line 2051
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2052,r13		! source line 2052
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2053,r13		! source line 2053
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_725 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_725  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2054,r13		! source line 2054
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2055,r13		! source line 2055
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2056,r13		! source line 2056
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2058,r13		! source line 2058
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
	.word	_Label_726
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_727
	.word	8
	.word	4
	.word	_Label_728
	.word	12
	.word	4
	.word	_Label_729
	.word	-12
	.word	4
	.word	_Label_730
	.word	-16
	.word	4
	.word	_Label_731
	.word	-20
	.word	4
	.word	0
_Label_726:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_727:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_728:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_731:
	.byte	'?'
	.ascii	"_temp_723\0"
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
_Label_3013:
	push	r0
	sub	r1,1,r1
	bne	_Label_3013
	mov	2063,r13		! source line 2063
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_732 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_732  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2065,r13		! source line 2065
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_733 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_733  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2066,r13		! source line 2066
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2067,r13		! source line 2067
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2068,r13		! source line 2068
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2068,r13		! source line 2068
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
	.word	_Label_734
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_735
	.word	8
	.word	4
	.word	_Label_736
	.word	-12
	.word	4
	.word	_Label_737
	.word	-16
	.word	4
	.word	0
_Label_734:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_735:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_736:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_737:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_216_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_216_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3014:
	push	r0
	sub	r1,1,r1
	bne	_Label_3014
	mov	2660,r13		! source line 2660
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2662,r13		! source line 2662
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2663,r13		! source line 2663
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2664,r13		! source line 2664
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_738 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_738  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2665,r13		! source line 2665
	mov	"\0\0AS",r10
!   _temp_739 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_739) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_741 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_741) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_740 = *_temp_741  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_739 = _temp_740  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2666,r13		! source line 2666
	mov	"\0\0AS",r10
!   _temp_742 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_742) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_744 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_744) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_743 = *_temp_744  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_742 = _temp_743  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2667,r13		! source line 2667
	mov	"\0\0AS",r10
!   _temp_745 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_745) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_747 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_747) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_746 = *_temp_747  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_745 = _temp_746  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2667,r13		! source line 2667
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_216_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_748
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_749
	.word	8
	.word	4
	.word	_Label_750
	.word	12
	.word	4
	.word	_Label_751
	.word	-16
	.word	4
	.word	_Label_752
	.word	-9
	.word	1
	.word	_Label_753
	.word	-20
	.word	4
	.word	_Label_754
	.word	-24
	.word	4
	.word	_Label_755
	.word	-10
	.word	1
	.word	_Label_756
	.word	-28
	.word	4
	.word	_Label_757
	.word	-32
	.word	4
	.word	_Label_758
	.word	-11
	.word	1
	.word	_Label_759
	.word	-36
	.word	4
	.word	_Label_760
	.word	-12
	.word	1
	.word	_Label_761
	.word	-40
	.word	4
	.word	_Label_762
	.word	-44
	.word	4
	.word	0
_Label_748:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_749:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_750:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_752:
	.byte	'C'
	.ascii	"_temp_746\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_755:
	.byte	'C'
	.ascii	"_temp_743\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_758:
	.byte	'C'
	.ascii	"_temp_740\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_760:
	.byte	'C'
	.ascii	"_temp_738\0"
	.align
_Label_761:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_762:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_215_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_215_printFCB,r1
	push	r1
	mov	3,r1
_Label_3015:
	push	r0
	sub	r1,1,r1
	bne	_Label_3015
	mov	2670,r13		! source line 2670
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_764 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_763 = *_temp_764  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_763  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2671,r13		! source line 2671
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2672,r13		! source line 2672
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2672,r13		! source line 2672
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_215_printFCB:
	.word	_sourceFileName
	.word	_Label_765
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_766
	.word	8
	.word	4
	.word	_Label_767
	.word	-12
	.word	4
	.word	_Label_768
	.word	-16
	.word	4
	.word	0
_Label_765:
	.ascii	"printFCB\0"
	.align
_Label_766:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_764\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_763\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_214_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_214_printOpen,r1
	push	r1
	mov	4,r1
_Label_3016:
	push	r0
	sub	r1,1,r1
	bne	_Label_3016
	mov	2675,r13		! source line 2675
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_769 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_769  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2676,r13		! source line 2676
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_770 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_770  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2677,r13		! source line 2677
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_771 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_771  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2678,r13		! source line 2678
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2679,r13		! source line 2679
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
	mov	2679,r13		! source line 2679
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_214_printOpen:
	.word	_sourceFileName
	.word	_Label_772
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_773
	.word	8
	.word	4
	.word	_Label_774
	.word	-12
	.word	4
	.word	_Label_775
	.word	-16
	.word	4
	.word	_Label_776
	.word	-20
	.word	4
	.word	0
_Label_772:
	.ascii	"printOpen\0"
	.align
_Label_773:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_771\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_770\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_769\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_777
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_777:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_778
	.word	_sourceFileName
	.word	126		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_778:
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
_Label_3017:
	push	r0
	sub	r1,1,r1
	bne	_Label_3017
	mov	307,r13		! source line 307
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_780		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_780
!	jmp	_Label_779
_Label_779:
! THEN...
	mov	309,r13		! source line 309
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_781 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_781  sizeInBytes=4
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
_Label_780:
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
	.word	_Label_783
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_784
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_785
	.word	12
	.word	4
	.word	_Label_786
	.word	-12
	.word	4
	.word	_Label_787
	.word	-16
	.word	4
	.word	0
_Label_783:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_784:
	.ascii	"Pself\0"
	.align
_Label_785:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_781\0"
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
_Label_3018:
	push	r0
	sub	r1,1,r1
	bne	_Label_3018
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
!   if count != 2147483647 then goto _Label_789		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_789
!	jmp	_Label_788
_Label_788:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_790 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_790  sizeInBytes=4
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
_Label_789:
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
!   if count > 0 then goto _Label_792		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_792
!	jmp	_Label_791
_Label_791:
! THEN...
	mov	327,r13		! source line 327
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0AS",r10
	mov	327,r13		! source line 327
	mov	"\0\0SE",r10
!   _temp_793 = &waitingThreads
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
!   _temp_794 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_794 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_795 = &_P_Kernel_readyList
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
_Label_792:
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
	.word	_Label_796
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_797
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_798
	.word	-12
	.word	4
	.word	_Label_799
	.word	-16
	.word	4
	.word	_Label_800
	.word	-20
	.word	4
	.word	_Label_801
	.word	-24
	.word	4
	.word	_Label_802
	.word	-28
	.word	4
	.word	_Label_803
	.word	-32
	.word	4
	.word	0
_Label_796:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_797:
	.ascii	"Pself\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_802:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_803:
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
_Label_3019:
	push	r0
	sub	r1,1,r1
	bne	_Label_3019
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
!   if count != -2147483648 then goto _Label_805		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_805
!	jmp	_Label_804
_Label_804:
! THEN...
	mov	341,r13		! source line 341
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_806 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_806  sizeInBytes=4
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
_Label_805:
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
!   if count >= 0 then goto _Label_808		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_808
!	jmp	_Label_807
_Label_807:
! THEN...
	mov	345,r13		! source line 345
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	345,r13		! source line 345
	mov	"\0\0SE",r10
!   _temp_809 = &waitingThreads
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
_Label_808:
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
	.word	_Label_810
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_811
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_812
	.word	-12
	.word	4
	.word	_Label_813
	.word	-16
	.word	4
	.word	_Label_814
	.word	-20
	.word	4
	.word	0
_Label_810:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_811:
	.ascii	"Pself\0"
	.align
_Label_812:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
_Label_813:
	.byte	'?'
	.ascii	"_temp_806\0"
	.align
_Label_814:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_815
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_815:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_816
	.word	_sourceFileName
	.word	139		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_816:
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
_Label_3020:
	push	r0
	sub	r1,1,r1
	bne	_Label_3020
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
	.word	_Label_818
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_819
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_820
	.word	-12
	.word	4
	.word	0
_Label_818:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_819:
	.ascii	"Pself\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_817\0"
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
_Label_3021:
	push	r0
	sub	r1,1,r1
	bne	_Label_3021
	mov	377,r13		! source line 377
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	380,r13		! source line 380
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_822		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_822
!	jmp	_Label_821
_Label_821:
! THEN...
	mov	381,r13		! source line 381
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_823 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_823  sizeInBytes=4
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
_Label_822:
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
!   if heldBy == 0 then goto _Label_827		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_827
!   _temp_826 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_828
_Label_827:
!   _temp_826 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_828:
!   if _temp_826 then goto _Label_825 else goto _Label_824
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_824
	jmp	_Label_825
_Label_824:
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
	jmp	_Label_829
_Label_825:
! ELSE...
	mov	387,r13		! source line 387
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	387,r13		! source line 387
	mov	"\0\0SE",r10
!   _temp_830 = &waitingThreads
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
_Label_829:
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
	.word	_Label_831
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_832
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_833
	.word	-16
	.word	4
	.word	_Label_834
	.word	-9
	.word	1
	.word	_Label_835
	.word	-20
	.word	4
	.word	_Label_836
	.word	-24
	.word	4
	.word	0
_Label_831:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_832:
	.ascii	"Pself\0"
	.align
_Label_833:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_834:
	.byte	'C'
	.ascii	"_temp_826\0"
	.align
_Label_835:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_836:
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
_Label_3022:
	push	r0
	sub	r1,1,r1
	bne	_Label_3022
	mov	395,r13		! source line 395
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_838		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_838
!	jmp	_Label_837
_Label_837:
! THEN...
	mov	400,r13		! source line 400
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_839 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_839  sizeInBytes=4
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
_Label_838:
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
!   _temp_840 = &waitingThreads
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
!   if t == 0 then goto _Label_842		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_842
!	jmp	_Label_841
_Label_841:
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
!   _temp_843 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_843 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	406,r13		! source line 406
	mov	"\0\0SE",r10
!   _temp_844 = &_P_Kernel_readyList
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
	jmp	_Label_845
_Label_842:
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
_Label_845:
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
	.word	_Label_846
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_847
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_848
	.word	-12
	.word	4
	.word	_Label_849
	.word	-16
	.word	4
	.word	_Label_850
	.word	-20
	.word	4
	.word	_Label_851
	.word	-24
	.word	4
	.word	_Label_852
	.word	-28
	.word	4
	.word	_Label_853
	.word	-32
	.word	4
	.word	0
_Label_846:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_847:
	.ascii	"Pself\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_849:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_850:
	.byte	'?'
	.ascii	"_temp_840\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_839\0"
	.align
_Label_852:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_853:
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
_Label_3023:
	push	r0
	sub	r1,1,r1
	bne	_Label_3023
	mov	416,r13		! source line 416
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	417,r13		! source line 417
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_856		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_856
!	jmp	_Label_855
_Label_855:
!   _temp_854 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_857
_Label_856:
!   _temp_854 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_857:
!   ReturnResult: _temp_854  (sizeInBytes=1)
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
	.word	_Label_858
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_859
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_860
	.word	-9
	.word	1
	.word	0
_Label_858:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_859:
	.ascii	"Pself\0"
	.align
_Label_860:
	.byte	'C'
	.ascii	"_temp_854\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_861
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_861:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_862
	.word	_sourceFileName
	.word	153		! line number
	.word	96		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_862:
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
_Label_3024:
	push	r0
	sub	r1,1,r1
	bne	_Label_3024
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
!   _temp_864 = &sema
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
!   _temp_866 = &semaNext
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
!   _temp_870 = &mLock
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
	.word	_Label_871
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_872
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_873
	.word	-12
	.word	4
	.word	_Label_874
	.word	-16
	.word	4
	.word	_Label_875
	.word	-20
	.word	4
	.word	_Label_876
	.word	-24
	.word	4
	.word	_Label_877
	.word	-28
	.word	4
	.word	_Label_878
	.word	-32
	.word	4
	.word	_Label_879
	.word	-36
	.word	4
	.word	_Label_880
	.word	-40
	.word	4
	.word	0
_Label_871:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_872:
	.ascii	"Pself\0"
	.align
_Label_873:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_867\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_866\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_865\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_864\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_863\0"
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
_Label_3025:
	push	r0
	sub	r1,1,r1
	bne	_Label_3025
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
!   Retrieve Result: targetName=_temp_883  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_883 then goto _Label_882 else goto _Label_881
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_881
	jmp	_Label_882
_Label_881:
! THEN...
	mov	477,r13		! source line 477
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_884 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_884  sizeInBytes=4
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
_Label_882:
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
!   _temp_885 = &waitingThreads
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
	.word	_Label_886
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_887
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_888
	.word	12
	.word	4
	.word	_Label_889
	.word	-16
	.word	4
	.word	_Label_890
	.word	-20
	.word	4
	.word	_Label_891
	.word	-9
	.word	1
	.word	_Label_892
	.word	-24
	.word	4
	.word	0
_Label_886:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_887:
	.ascii	"Pself\0"
	.align
_Label_888:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_889:
	.byte	'?'
	.ascii	"_temp_885\0"
	.align
_Label_890:
	.byte	'?'
	.ascii	"_temp_884\0"
	.align
_Label_891:
	.byte	'C'
	.ascii	"_temp_883\0"
	.align
_Label_892:
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
_Label_3026:
	push	r0
	sub	r1,1,r1
	bne	_Label_3026
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
!   Retrieve Result: targetName=_temp_895  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_895 then goto _Label_894 else goto _Label_893
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_893
	jmp	_Label_894
_Label_893:
! THEN...
	mov	548,r13		! source line 548
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_896 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_896  sizeInBytes=4
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
_Label_894:
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
!   _temp_897 = &waitingThreads
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
!   if t == 0 then goto _Label_899		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_899
!	jmp	_Label_898
_Label_898:
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
!   _temp_900 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_900 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	554,r13		! source line 554
	mov	"\0\0SE",r10
!   _temp_901 = &_P_Kernel_readyList
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
_Label_899:
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
	.word	_Label_902
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_903
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_904
	.word	12
	.word	4
	.word	_Label_905
	.word	-16
	.word	4
	.word	_Label_906
	.word	-20
	.word	4
	.word	_Label_907
	.word	-24
	.word	4
	.word	_Label_908
	.word	-28
	.word	4
	.word	_Label_909
	.word	-9
	.word	1
	.word	_Label_910
	.word	-32
	.word	4
	.word	_Label_911
	.word	-36
	.word	4
	.word	0
_Label_902:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_903:
	.ascii	"Pself\0"
	.align
_Label_904:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_901\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_897\0"
	.align
_Label_908:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_909:
	.byte	'C'
	.ascii	"_temp_895\0"
	.align
_Label_910:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_911:
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
_Label_3027:
	push	r0
	sub	r1,1,r1
	bne	_Label_3027
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
!   Retrieve Result: targetName=_temp_914  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_914 then goto _Label_913 else goto _Label_912
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_912
	jmp	_Label_913
_Label_912:
! THEN...
	mov	607,r13		! source line 607
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_915 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_915  sizeInBytes=4
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
_Label_913:
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
_Label_916:
!	jmp	_Label_917
_Label_917:
	mov	610,r13		! source line 610
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	611,r13		! source line 611
	mov	"\0\0AS",r10
	mov	611,r13		! source line 611
	mov	"\0\0SE",r10
!   _temp_919 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_920
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_920
	jmp	_Label_921
_Label_920:
! THEN...
	mov	613,r13		! source line 613
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	613,r13		! source line 613
	mov	"\0\0BR",r10
	jmp	_Label_918
! END IF...
_Label_921:
! ASSIGNMENT STATEMENT...
	mov	615,r13		! source line 615
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_922 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_922 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0SE",r10
!   _temp_923 = &_P_Kernel_readyList
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
	jmp	_Label_916
_Label_918:
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
	.word	_Label_924
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_925
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_926
	.word	12
	.word	4
	.word	_Label_927
	.word	-16
	.word	4
	.word	_Label_928
	.word	-20
	.word	4
	.word	_Label_929
	.word	-24
	.word	4
	.word	_Label_930
	.word	-28
	.word	4
	.word	_Label_931
	.word	-9
	.word	1
	.word	_Label_932
	.word	-32
	.word	4
	.word	_Label_933
	.word	-36
	.word	4
	.word	0
_Label_924:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_925:
	.ascii	"Pself\0"
	.align
_Label_926:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_923\0"
	.align
_Label_928:
	.byte	'?'
	.ascii	"_temp_922\0"
	.align
_Label_929:
	.byte	'?'
	.ascii	"_temp_919\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_915\0"
	.align
_Label_931:
	.byte	'C'
	.ascii	"_temp_914\0"
	.align
_Label_932:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_933:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_934
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
_Label_934:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_935
	.word	_sourceFileName
	.word	172		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_935:
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
_Label_3028:
	push	r0
	sub	r1,1,r1
	bne	_Label_3028
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
!   _temp_936 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_936) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_936 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	640,r13		! source line 640
	mov	"\0\0AS",r10
!   _temp_937 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_937 [0 ] into _temp_938
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
!   Data Move: *_temp_938 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	641,r13		! source line 641
	mov	"\0\0AS",r10
!   _temp_939 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_939 [999 ] into _temp_940
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
!   Data Move: *_temp_940 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	642,r13		! source line 642
	mov	"\0\0AS",r10
!   _temp_941 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_941 [999 ] into _temp_942
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
!   stackTop = _temp_942		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	643,r13		! source line 643
	mov	"\0\0AS",r10
!   _temp_943 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_945 = &_temp_944
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_945 = _temp_945 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_947:
!   Data Move: *_temp_945 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_945 = _temp_945 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_946 = _temp_946 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_946) then goto _Label_947
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_947
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_948 = &_temp_944
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3029
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3029:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_943 = *_temp_948  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3030:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3030
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
!   _temp_949 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_951 = &_temp_950
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_951 = _temp_951 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_953:
!   Data Move: *_temp_951 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_951 = _temp_951 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_952 = _temp_952 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_952) then goto _Label_953
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_953
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_954 = &_temp_950
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3031
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3031:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_949 = *_temp_954  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3032:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3032
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
	.word	_Label_955
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_956
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_957
	.word	12
	.word	4
	.word	_Label_958
	.word	-12
	.word	4
	.word	_Label_959
	.word	-16
	.word	4
	.word	_Label_960
	.word	-20
	.word	4
	.word	_Label_961
	.word	-84
	.word	64
	.word	_Label_962
	.word	-88
	.word	4
	.word	_Label_963
	.word	-92
	.word	4
	.word	_Label_964
	.word	-96
	.word	4
	.word	_Label_965
	.word	-100
	.word	4
	.word	_Label_966
	.word	-156
	.word	56
	.word	_Label_967
	.word	-160
	.word	4
	.word	_Label_968
	.word	-164
	.word	4
	.word	_Label_969
	.word	-168
	.word	4
	.word	_Label_970
	.word	-172
	.word	4
	.word	_Label_971
	.word	-176
	.word	4
	.word	_Label_972
	.word	-180
	.word	4
	.word	_Label_973
	.word	-184
	.word	4
	.word	_Label_974
	.word	-188
	.word	4
	.word	0
_Label_955:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_956:
	.ascii	"Pself\0"
	.align
_Label_957:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_958:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_952\0"
	.align
_Label_960:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_963:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_966:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_936\0"
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
_Label_3033:
	push	r0
	sub	r1,1,r1
	bne	_Label_3033
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
!   _temp_975 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_975  (sizeInBytes=4)
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
!   _temp_977 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_976  sizeInBytes=4
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
	.word	_Label_978
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_979
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_980
	.word	12
	.word	4
	.word	_Label_981
	.word	16
	.word	4
	.word	_Label_982
	.word	-12
	.word	4
	.word	_Label_983
	.word	-16
	.word	4
	.word	_Label_984
	.word	-20
	.word	4
	.word	_Label_985
	.word	-24
	.word	4
	.word	_Label_986
	.word	-28
	.word	4
	.word	0
_Label_978:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_979:
	.ascii	"Pself\0"
	.align
_Label_980:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_981:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_982:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_983:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_984:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_985:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_986:
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
_Label_3034:
	push	r0
	sub	r1,1,r1
	bne	_Label_3034
	mov	674,r13		! source line 674
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	690,r13		! source line 690
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_989 == _P_Kernel_currentThread then goto _Label_988		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_988
!	jmp	_Label_987
_Label_987:
! THEN...
	mov	691,r13		! source line 691
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_990 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_990  sizeInBytes=4
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
_Label_988:
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
!   _temp_991 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_993		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_993
!	jmp	_Label_992
_Label_992:
! THEN...
	mov	702,r13		! source line 702
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	702,r13		! source line 702
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_995		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_995
!	jmp	_Label_994
_Label_994:
! THEN...
	mov	703,r13		! source line 703
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_996 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_996  sizeInBytes=4
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
_Label_995:
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
!   _temp_998 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_997  sizeInBytes=4
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
_Label_993:
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
	.word	_Label_999
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1000
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1001
	.word	-12
	.word	4
	.word	_Label_1002
	.word	-16
	.word	4
	.word	_Label_1003
	.word	-20
	.word	4
	.word	_Label_1004
	.word	-24
	.word	4
	.word	_Label_1005
	.word	-28
	.word	4
	.word	_Label_1006
	.word	-32
	.word	4
	.word	_Label_1007
	.word	-36
	.word	4
	.word	_Label_1008
	.word	-40
	.word	4
	.word	_Label_1009
	.word	-44
	.word	4
	.word	0
_Label_999:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1000:
	.ascii	"Pself\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_998\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_1007:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1008:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1009:
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
_Label_3035:
	push	r0
	sub	r1,1,r1
	bne	_Label_3035
	mov	714,r13		! source line 714
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	726,r13		! source line 726
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1011		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1011
!	jmp	_Label_1010
_Label_1010:
! THEN...
	mov	727,r13		! source line 727
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1012 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1012  sizeInBytes=4
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
_Label_1011:
! IF STATEMENT...
	mov	730,r13		! source line 730
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1015 == _P_Kernel_currentThread then goto _Label_1014		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1014
!	jmp	_Label_1013
_Label_1013:
! THEN...
	mov	731,r13		! source line 731
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1016 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1016  sizeInBytes=4
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
_Label_1014:
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
!   _temp_1017 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1018
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1018
	jmp	_Label_1019
_Label_1018:
! THEN...
	mov	739,r13		! source line 739
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1020 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1020  sizeInBytes=4
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
_Label_1019:
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
	.word	_Label_1021
	.word	4		! total size of parameters
	.word	28		! frame size = 28
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
	.word	0
_Label_1021:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
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
	.ascii	"_temp_1012\0"
	.align
_Label_1028:
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
_Label_3036:
	push	r0
	sub	r1,1,r1
	bne	_Label_3036
	mov	746,r13		! source line 746
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	752,r13		! source line 752
	mov	"\0\0IF",r10
!   _temp_1032 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1032 [0 ] into _temp_1033
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
!   Data Move: _temp_1031 = *_temp_1033  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1031 == 606348324 then goto _Label_1030		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1030
!	jmp	_Label_1029
_Label_1029:
! THEN...
	mov	753,r13		! source line 753
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1034 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1034  sizeInBytes=4
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
	jmp	_Label_1035
_Label_1030:
! ELSE...
	mov	754,r13		! source line 754
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	754,r13		! source line 754
	mov	"\0\0IF",r10
!   _temp_1039 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1039 [999 ] into _temp_1040
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
!   Data Move: _temp_1038 = *_temp_1040  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1038 == 606348324 then goto _Label_1037		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1037
!	jmp	_Label_1036
_Label_1036:
! THEN...
	mov	755,r13		! source line 755
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1041 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1041  sizeInBytes=4
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
_Label_1037:
! END IF...
_Label_1035:
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
	.word	_Label_1042
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1043
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1044
	.word	-12
	.word	4
	.word	_Label_1045
	.word	-16
	.word	4
	.word	_Label_1046
	.word	-20
	.word	4
	.word	_Label_1047
	.word	-24
	.word	4
	.word	_Label_1048
	.word	-28
	.word	4
	.word	_Label_1049
	.word	-32
	.word	4
	.word	_Label_1050
	.word	-36
	.word	4
	.word	_Label_1051
	.word	-40
	.word	4
	.word	0
_Label_1042:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1043:
	.ascii	"Pself\0"
	.align
_Label_1044:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1045:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1046:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1047:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1048:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1049:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1050:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1051:
	.byte	'?'
	.ascii	"_temp_1031\0"
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
_Label_3037:
	push	r0
	sub	r1,1,r1
	bne	_Label_3037
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
!   _temp_1052 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1052  sizeInBytes=4
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
!   _temp_1053 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1053  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	770,r13		! source line 770
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1054  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	771,r13		! source line 771
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1055 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1055  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	772,r13		! source line 772
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1056 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1056  sizeInBytes=4
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
!   _temp_1061 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1062 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1061  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1057:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1062 then goto _Label_1060		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1060
_Label_1058:
	mov	774,r13		! source line 774
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1063 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1063  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	775,r13		! source line 775
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1064 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1064  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	776,r13		! source line 776
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1065 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1065  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	777,r13		! source line 777
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1067 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1067 [i ] into _temp_1068
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
!   Data Move: _temp_1066 = *_temp_1068  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1066  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	778,r13		! source line 778
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1069 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1069  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	779,r13		! source line 779
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1071 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1071 [i ] into _temp_1072
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
!   Data Move: _temp_1070 = *_temp_1072  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1070  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	780,r13		! source line 780
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1073 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1073  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	781,r13		! source line 781
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1059:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1057
! END FOR
_Label_1060:
! CALL STATEMENT...
!   _temp_1074 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-116]
!   _temp_1075 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1074  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1075  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	783,r13		! source line 783
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1076 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-108]
!   _temp_1078 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1078 [0 ] into _temp_1079
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
!   _temp_1077 = _temp_1079		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1076  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1077  sizeInBytes=4
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
	be	_Label_1082
	cmp	r1,2
	be	_Label_1083
	cmp	r1,3
	be	_Label_1084
	cmp	r1,4
	be	_Label_1085
	cmp	r1,5
	be	_Label_1086
	jmp	_Label_1080
! CASE 1...
_Label_1082:
! CALL STATEMENT...
!   _temp_1087 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1087  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	787,r13		! source line 787
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	788,r13		! source line 788
	mov	"\0\0BR",r10
	jmp	_Label_1081
! CASE 2...
_Label_1083:
! CALL STATEMENT...
!   _temp_1088 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1088  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	790,r13		! source line 790
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0BR",r10
	jmp	_Label_1081
! CASE 3...
_Label_1084:
! CALL STATEMENT...
!   _temp_1089 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1089  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	793,r13		! source line 793
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	794,r13		! source line 794
	mov	"\0\0BR",r10
	jmp	_Label_1081
! CASE 4...
_Label_1085:
! CALL STATEMENT...
!   _temp_1090 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1090  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	796,r13		! source line 796
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	797,r13		! source line 797
	mov	"\0\0BR",r10
	jmp	_Label_1081
! CASE 5...
_Label_1086:
! CALL STATEMENT...
!   _temp_1091 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1091  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	799,r13		! source line 799
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	800,r13		! source line 800
	mov	"\0\0BR",r10
	jmp	_Label_1081
! DEFAULT CASE...
_Label_1080:
! CALL STATEMENT...
!   _temp_1092 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1092  sizeInBytes=4
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
_Label_1081:
! CALL STATEMENT...
!   _temp_1093 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1093  sizeInBytes=4
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
!   _temp_1094 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1094  sizeInBytes=4
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
!   _temp_1099 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1100 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1099  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1095:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1100 then goto _Label_1098		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1098
_Label_1096:
	mov	808,r13		! source line 808
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1101 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1101  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	809,r13		! source line 809
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1102 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1102  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	810,r13		! source line 810
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1103 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1103  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	811,r13		! source line 811
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1105 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1105 [i ] into _temp_1106
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
!   Data Move: _temp_1104 = *_temp_1106  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1104  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	812,r13		! source line 812
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1107 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1107  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	813,r13		! source line 813
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1109 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1109 [i ] into _temp_1110
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
!   Data Move: _temp_1108 = *_temp_1110  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1108  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	814,r13		! source line 814
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1111 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1111  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	815,r13		! source line 815
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1097:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1095
! END FOR
_Label_1098:
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
	.word	_Label_1112
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1113
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1114
	.word	-12
	.word	4
	.word	_Label_1115
	.word	-16
	.word	4
	.word	_Label_1116
	.word	-20
	.word	4
	.word	_Label_1117
	.word	-24
	.word	4
	.word	_Label_1118
	.word	-28
	.word	4
	.word	_Label_1119
	.word	-32
	.word	4
	.word	_Label_1120
	.word	-36
	.word	4
	.word	_Label_1121
	.word	-40
	.word	4
	.word	_Label_1122
	.word	-44
	.word	4
	.word	_Label_1123
	.word	-48
	.word	4
	.word	_Label_1124
	.word	-52
	.word	4
	.word	_Label_1125
	.word	-56
	.word	4
	.word	_Label_1126
	.word	-60
	.word	4
	.word	_Label_1127
	.word	-64
	.word	4
	.word	_Label_1128
	.word	-68
	.word	4
	.word	_Label_1129
	.word	-72
	.word	4
	.word	_Label_1130
	.word	-76
	.word	4
	.word	_Label_1131
	.word	-80
	.word	4
	.word	_Label_1132
	.word	-84
	.word	4
	.word	_Label_1133
	.word	-88
	.word	4
	.word	_Label_1134
	.word	-92
	.word	4
	.word	_Label_1135
	.word	-96
	.word	4
	.word	_Label_1136
	.word	-100
	.word	4
	.word	_Label_1137
	.word	-104
	.word	4
	.word	_Label_1138
	.word	-108
	.word	4
	.word	_Label_1139
	.word	-112
	.word	4
	.word	_Label_1140
	.word	-116
	.word	4
	.word	_Label_1141
	.word	-120
	.word	4
	.word	_Label_1142
	.word	-124
	.word	4
	.word	_Label_1143
	.word	-128
	.word	4
	.word	_Label_1144
	.word	-132
	.word	4
	.word	_Label_1145
	.word	-136
	.word	4
	.word	_Label_1146
	.word	-140
	.word	4
	.word	_Label_1147
	.word	-144
	.word	4
	.word	_Label_1148
	.word	-148
	.word	4
	.word	_Label_1149
	.word	-152
	.word	4
	.word	_Label_1150
	.word	-156
	.word	4
	.word	_Label_1151
	.word	-160
	.word	4
	.word	_Label_1152
	.word	-164
	.word	4
	.word	_Label_1153
	.word	-168
	.word	4
	.word	_Label_1154
	.word	-172
	.word	4
	.word	_Label_1155
	.word	-176
	.word	4
	.word	_Label_1156
	.word	-180
	.word	4
	.word	_Label_1157
	.word	-184
	.word	4
	.word	_Label_1158
	.word	-188
	.word	4
	.word	_Label_1159
	.word	-192
	.word	4
	.word	_Label_1160
	.word	-196
	.word	4
	.word	0
_Label_1112:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1113:
	.ascii	"Pself\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1106\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1105\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_1091\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1090\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1136:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1138:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1139:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1141:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1142:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1056\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1159:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1160:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1161
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1161:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1162
	.word	_sourceFileName
	.word	199		! line number
	.word	41776		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1162:
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
_Label_3038:
	push	r0
	sub	r1,1,r1
	bne	_Label_3038
	mov	872,r13		! source line 872
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1163 = _StringConst_111
	set	_StringConst_111,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1163  sizeInBytes=4
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
!   _temp_1165 = &ThreadLock
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
_Label_3039:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3039
!   ThreadFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! SEND STATEMENT...
	mov	884,r13		! source line 884
	mov	"\0\0SE",r10
!   _temp_1167 = &ThreadFree
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
!   _temp_1168 = &threadTable
	load	[r14+8],r1
	add	r1,120,r1
	set	-45888,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1170 = &_temp_1169
	set	-45884,r1
	add	r14,r1,r1
	store	r1,[r14+-4240]
!   _temp_1170 = _temp_1170 + 4
	load	[r14+-4240],r1
	add	r1,4,r1
	store	r1,[r14+-4240]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1172 = zeros  (sizeInBytes=4164)
	add	r14,-4232,r4
	mov	1041,r3
_Label_3040:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3040
!   _temp_1172 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4232]
	mov	10,r1
	store	r1,[r14+-4236]
_Label_1174:
!   Data Move: *_temp_1170 = _temp_1172  (sizeInBytes=4164)
	add	r14,-4232,r5
	load	[r14+-4240],r4
	mov	1041,r3
_Label_3041:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3041
!   _temp_1170 = _temp_1170 + 4164
	load	[r14+-4240],r1
	add	r1,4164,r1
	store	r1,[r14+-4240]
!   _temp_1171 = _temp_1171 + -1
	load	[r14+-4236],r1
	add	r1,-1,r1
	store	r1,[r14+-4236]
!   if intNotZero (_temp_1171) then goto _Label_1174
	load	[r14+-4236],r1
	cmp	r1,r0
	bne	_Label_1174
!   Initialize the array size...
	mov	10,r1
	set	-45884,r2
	store	r1,[r14+r2]
!   _temp_1175 = &_temp_1169
	set	-45884,r1
	add	r14,r1,r1
	store	r1,[r14+-64]
!   make sure array has size 10
	set	-45888,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3042
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3042:
!   make sure array has size 10
	load	[r14+-64],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1168 = *_temp_1175  (sizeInBytes=41644)
	load	[r14+-64],r5
	set	-45888,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3043:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3043
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
!   _temp_1181 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1182 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1181  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_1177:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1182 then goto _Label_1180		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1180
_Label_1178:
	mov	890,r13		! source line 890
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	891,r13		! source line 891
	mov	"\0\0SE",r10
!   _temp_1183 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-48]
!   _temp_1184 = &threadTable
	load	[r14+8],r1
	add	r1,120,r1
	store	r1,[r14+-44]
!   Move address of _temp_1184 [i ] into _temp_1185
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
!   Prepare Argument: offset=12  value=_temp_1183  sizeInBytes=4
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
!   _temp_1186 = &threadTable
	load	[r14+8],r1
	add	r1,120,r1
	store	r1,[r14+-36]
!   Move address of _temp_1186 [i ] into _temp_1187
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
!   _temp_1188 = _temp_1187 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1188 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	893,r13		! source line 893
	mov	"\0\0SE",r10
!   _temp_1190 = &threadTable
	load	[r14+8],r1
	add	r1,120,r1
	store	r1,[r14+-20]
!   Move address of _temp_1190 [i ] into _temp_1191
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
!   _temp_1189 = _temp_1191		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1192 = &freeList
	set	41764,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1189  sizeInBytes=4
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
_Label_1179:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_1177
! END FOR
_Label_1180:
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
	.word	_Label_1193
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
	.word	_Label_1194
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1195
	.word	-12
	.word	4
	.word	_Label_1196
	.word	-16
	.word	4
	.word	_Label_1197
	.word	-20
	.word	4
	.word	_Label_1198
	.word	-24
	.word	4
	.word	_Label_1199
	.word	-28
	.word	4
	.word	_Label_1200
	.word	-32
	.word	4
	.word	_Label_1201
	.word	-36
	.word	4
	.word	_Label_1202
	.word	-40
	.word	4
	.word	_Label_1203
	.word	-44
	.word	4
	.word	_Label_1204
	.word	-48
	.word	4
	.word	_Label_1205
	.word	-52
	.word	4
	.word	_Label_1206
	.word	-56
	.word	4
	.word	_Label_1207
	.word	-60
	.word	4
	.word	_Label_1208
	.word	-64
	.word	4
	.word	_Label_1209
	.word	-68
	.word	4
	.word	_Label_1210
	.word	-4232
	.word	4164
	.word	_Label_1211
	.word	-4236
	.word	4
	.word	_Label_1212
	.word	-4240
	.word	4
	.word	_Label_1213
	.word	-45884
	.word	41644
	.word	_Label_1214
	.word	-45888
	.word	4
	.word	_Label_1215
	.word	-45892
	.word	4
	.word	_Label_1216
	.word	-45896
	.word	4
	.word	_Label_1217
	.word	-45900
	.word	4
	.word	_Label_1218
	.word	-45904
	.word	4
	.word	_Label_1219
	.word	-45908
	.word	4
	.word	_Label_1220
	.word	-45912
	.word	4
	.word	0
_Label_1193:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1194:
	.ascii	"Pself\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1196:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1188\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1173\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1172\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1220:
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
_Label_3044:
	push	r0
	sub	r1,1,r1
	bne	_Label_3044
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
!   _temp_1221 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1221  sizeInBytes=4
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
!   _temp_1226 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1227 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1226  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1222:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1227 then goto _Label_1225		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1225
_Label_1223:
	mov	909,r13		! source line 909
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1228 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1228  sizeInBytes=4
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
!   _temp_1229 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1229  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	912,r13		! source line 912
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1231 = &threadTable
	load	[r14+8],r1
	add	r1,120,r1
	store	r1,[r14+-28]
!   Move address of _temp_1231 [i ] into _temp_1232
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
!   _temp_1230 = _temp_1232		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1230  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	913,r13		! source line 913
	mov	"\0\0CA",r10
	call	_function_219_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1224:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1222
! END FOR
_Label_1225:
! CALL STATEMENT...
!   _temp_1233 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1233  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	915,r13		! source line 915
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	916,r13		! source line 916
	mov	"\0\0SE",r10
!   _temp_1234 = _function_218_PrintObjectAddr
	set	_function_218_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1235 = &freeList
	set	41764,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1234  sizeInBytes=4
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
	.word	_Label_1236
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1237
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1238
	.word	-12
	.word	4
	.word	_Label_1239
	.word	-16
	.word	4
	.word	_Label_1240
	.word	-20
	.word	4
	.word	_Label_1241
	.word	-24
	.word	4
	.word	_Label_1242
	.word	-28
	.word	4
	.word	_Label_1243
	.word	-32
	.word	4
	.word	_Label_1244
	.word	-36
	.word	4
	.word	_Label_1245
	.word	-40
	.word	4
	.word	_Label_1246
	.word	-44
	.word	4
	.word	_Label_1247
	.word	-48
	.word	4
	.word	_Label_1248
	.word	-52
	.word	4
	.word	_Label_1249
	.word	-56
	.word	4
	.word	_Label_1250
	.word	-60
	.word	4
	.word	0
_Label_1236:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1237:
	.ascii	"Pself\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1235\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1232\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1231\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1229\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1249:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1250:
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
_Label_3045:
	push	r0
	sub	r1,1,r1
	bne	_Label_3045
	mov	923,r13		! source line 923
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	931,r13		! source line 931
	mov	"\0\0SE",r10
!   _temp_1251 = &ThreadLock
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
_Label_1252:
	mov	934,r13		! source line 934
	mov	"\0\0SE",r10
!   _temp_1256 = &freeList
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
!   Retrieve Result: targetName=_temp_1255  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1257 = _temp_1255 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1257 then goto _Label_1254 else goto _Label_1253
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1253
	jmp	_Label_1254
_Label_1253:
	mov	934,r13		! source line 934
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	935,r13		! source line 935
	mov	"\0\0SE",r10
!   _temp_1258 = &ThreadLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   _temp_1259 = &ThreadFree
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1258  sizeInBytes=4
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
	jmp	_Label_1252
_Label_1254:
! ASSIGNMENT STATEMENT...
	mov	938,r13		! source line 938
	mov	"\0\0AS",r10
	mov	938,r13		! source line 938
	mov	"\0\0SE",r10
!   _temp_1260 = &freeList
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
!   _temp_1261 = t + 76
	load	[r14+-44],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1261 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	940,r13		! source line 940
	mov	"\0\0SE",r10
!   _temp_1262 = &ThreadLock
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
	.word	_Label_1263
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1264
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1265
	.word	-16
	.word	4
	.word	_Label_1266
	.word	-20
	.word	4
	.word	_Label_1267
	.word	-24
	.word	4
	.word	_Label_1268
	.word	-28
	.word	4
	.word	_Label_1269
	.word	-32
	.word	4
	.word	_Label_1270
	.word	-9
	.word	1
	.word	_Label_1271
	.word	-36
	.word	4
	.word	_Label_1272
	.word	-10
	.word	1
	.word	_Label_1273
	.word	-40
	.word	4
	.word	_Label_1274
	.word	-44
	.word	4
	.word	0
_Label_1263:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1264:
	.ascii	"Pself\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1262\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1270:
	.byte	'C'
	.ascii	"_temp_1257\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1272:
	.byte	'C'
	.ascii	"_temp_1255\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1274:
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
_Label_3046:
	push	r0
	sub	r1,1,r1
	bne	_Label_3046
	mov	946,r13		! source line 946
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	951,r13		! source line 951
	mov	"\0\0SE",r10
!   _temp_1275 = &ThreadLock
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
!   _temp_1276 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1276 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	953,r13		! source line 953
	mov	"\0\0SE",r10
!   _temp_1277 = &freeList
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
!   _temp_1278 = &ThreadLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1279 = &ThreadFree
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1278  sizeInBytes=4
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
!   _temp_1280 = &ThreadLock
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
	.word	_Label_1281
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1282
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1283
	.word	12
	.word	4
	.word	_Label_1284
	.word	-12
	.word	4
	.word	_Label_1285
	.word	-16
	.word	4
	.word	_Label_1286
	.word	-20
	.word	4
	.word	_Label_1287
	.word	-24
	.word	4
	.word	_Label_1288
	.word	-28
	.word	4
	.word	_Label_1289
	.word	-32
	.word	4
	.word	0
_Label_1281:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1282:
	.ascii	"Pself\0"
	.align
_Label_1283:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1277\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1290
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1290:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1291
	.word	_sourceFileName
	.word	220		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1291:
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
_Label_3047:
	push	r0
	sub	r1,1,r1
	bne	_Label_3047
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
_Label_3048:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3048
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0SE",r10
!   _temp_1293 = &addrSpace
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
	.word	_Label_1294
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1295
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1296
	.word	-12
	.word	4
	.word	_Label_1297
	.word	-16
	.word	4
	.word	0
_Label_1294:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1295:
	.ascii	"Pself\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1297:
	.byte	'?'
	.ascii	"_temp_1292\0"
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
_Label_3049:
	push	r0
	sub	r1,1,r1
	bne	_Label_3049
	mov	983,r13		! source line 983
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	988,r13		! source line 988
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1298) then goto _runtimeErrorNullPointer
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
!   _temp_1299 = &addrSpace
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
!   _temp_1300 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1300  sizeInBytes=4
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
	call	_function_219_ThreadPrintShort
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
	.word	_Label_1301
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1302
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1303
	.word	-12
	.word	4
	.word	_Label_1304
	.word	-16
	.word	4
	.word	_Label_1305
	.word	-20
	.word	4
	.word	0
_Label_1301:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1302:
	.ascii	"Pself\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1304:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1298\0"
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
_Label_3050:
	push	r0
	sub	r1,1,r1
	bne	_Label_3050
	mov	1006,r13		! source line 1006
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1306 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1306  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1010,r13		! source line 1010
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1307  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1011,r13		! source line 1011
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1308 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1308  sizeInBytes=4
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
!   _temp_1309 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1309  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1014,r13		! source line 1014
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1015,r13		! source line 1015
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1311		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1311
!	jmp	_Label_1310
_Label_1310:
! THEN...
	mov	1016,r13		! source line 1016
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1312 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1312  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1016,r13		! source line 1016
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1313
_Label_1311:
! ELSE...
	mov	1017,r13		! source line 1017
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1017,r13		! source line 1017
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1315		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1315
!	jmp	_Label_1314
_Label_1314:
! THEN...
	mov	1018,r13		! source line 1018
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1316 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1316  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1018,r13		! source line 1018
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1317
_Label_1315:
! ELSE...
	mov	1019,r13		! source line 1019
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1019,r13		! source line 1019
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1319		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1319
!	jmp	_Label_1318
_Label_1318:
! THEN...
	mov	1020,r13		! source line 1020
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1320 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1320  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1020,r13		! source line 1020
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1321
_Label_1319:
! ELSE...
	mov	1022,r13		! source line 1022
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1322 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1322  sizeInBytes=4
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
_Label_1321:
! END IF...
_Label_1317:
! END IF...
_Label_1313:
! CALL STATEMENT...
!   _temp_1323 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1323  sizeInBytes=4
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
!   _temp_1324 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1324  sizeInBytes=4
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
	.word	_Label_1325
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1326
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1327
	.word	-12
	.word	4
	.word	_Label_1328
	.word	-16
	.word	4
	.word	_Label_1329
	.word	-20
	.word	4
	.word	_Label_1330
	.word	-24
	.word	4
	.word	_Label_1331
	.word	-28
	.word	4
	.word	_Label_1332
	.word	-32
	.word	4
	.word	_Label_1333
	.word	-36
	.word	4
	.word	_Label_1334
	.word	-40
	.word	4
	.word	_Label_1335
	.word	-44
	.word	4
	.word	_Label_1336
	.word	-48
	.word	4
	.word	0
_Label_1325:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1326:
	.ascii	"Pself\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1324\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1323\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1337
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1337:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1338
	.word	_sourceFileName
	.word	240		! line number
	.word	1476		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1338:
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
_Label_3051:
	push	r0
	sub	r1,1,r1
	bne	_Label_3051
	mov	1039,r13		! source line 1039
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1046,r13		! source line 1046
	mov	"\0\0AS",r10
!   _temp_1339 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1468]
!   NEW ARRAY Constructor...
!   _temp_1341 = &_temp_1340
	add	r14,-1464,r1
	store	r1,[r14+-220]
!   _temp_1341 = _temp_1341 + 4
	load	[r14+-220],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1343 = zeros  (sizeInBytes=124)
	add	r14,-212,r4
	mov	31,r3
_Label_3052:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3052
!   _temp_1343 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-212]
	mov	10,r1
	store	r1,[r14+-216]
_Label_1345:
!   Data Move: *_temp_1341 = _temp_1343  (sizeInBytes=124)
	add	r14,-212,r5
	load	[r14+-220],r4
	mov	31,r3
_Label_3053:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3053
!   _temp_1341 = _temp_1341 + 124
	load	[r14+-220],r1
	add	r1,124,r1
	store	r1,[r14+-220]
!   _temp_1342 = _temp_1342 + -1
	load	[r14+-216],r1
	add	r1,-1,r1
	store	r1,[r14+-216]
!   if intNotZero (_temp_1342) then goto _Label_1345
	load	[r14+-216],r1
	cmp	r1,r0
	bne	_Label_1345
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1464]
!   _temp_1346 = &_temp_1340
	add	r14,-1464,r1
	store	r1,[r14+-84]
!   make sure array has size 10
	load	[r14+-1468],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3054
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3054:
!   make sure array has size 10
	load	[r14+-84],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1339 = *_temp_1346  (sizeInBytes=1244)
	load	[r14+-84],r5
	load	[r14+-1468],r4
	mov	311,r3
_Label_3055:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3055
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
_Label_3056:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3056
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
_Label_3057:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3057
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1376]
! SEND STATEMENT...
	mov	1052,r13		! source line 1052
	mov	"\0\0SE",r10
!   _temp_1350 = &processManagerLock
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
!   _temp_1351 = &aProcessBecameFree
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
!   _temp_1352 = &aProcessDied
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
!   _temp_1358 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1359 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1358  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1472]
_Label_1354:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1359 then goto _Label_1357		
	load	[r14+-1472],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1357
_Label_1355:
	mov	1058,r13		! source line 1058
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	1059,r13		! source line 1059
	mov	"\0\0SE",r10
!   _temp_1360 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1360 [i ] into _temp_1361
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
!   _temp_1362 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1362 [i ] into _temp_1363
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
!   _temp_1364 = _temp_1363 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1364 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1061,r13		! source line 1061
	mov	"\0\0SE",r10
!   _temp_1366 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1366 [i ] into _temp_1367
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
!   _temp_1365 = _temp_1367		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1368 = &freeList
	load	[r14+8],r1
	add	r1,1364,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1365  sizeInBytes=4
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
_Label_1356:
!   i = i + 1
	load	[r14+-1472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1472]
	jmp	_Label_1354
! END FOR
_Label_1357:
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
	.word	_Label_1369
	.word	4		! total size of parameters
	.word	1472		! frame size = 1472
	.word	_Label_1370
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1371
	.word	-12
	.word	4
	.word	_Label_1372
	.word	-16
	.word	4
	.word	_Label_1373
	.word	-20
	.word	4
	.word	_Label_1374
	.word	-24
	.word	4
	.word	_Label_1375
	.word	-28
	.word	4
	.word	_Label_1376
	.word	-32
	.word	4
	.word	_Label_1377
	.word	-36
	.word	4
	.word	_Label_1378
	.word	-40
	.word	4
	.word	_Label_1379
	.word	-44
	.word	4
	.word	_Label_1380
	.word	-48
	.word	4
	.word	_Label_1381
	.word	-52
	.word	4
	.word	_Label_1382
	.word	-56
	.word	4
	.word	_Label_1383
	.word	-60
	.word	4
	.word	_Label_1384
	.word	-64
	.word	4
	.word	_Label_1385
	.word	-68
	.word	4
	.word	_Label_1386
	.word	-72
	.word	4
	.word	_Label_1387
	.word	-76
	.word	4
	.word	_Label_1388
	.word	-80
	.word	4
	.word	_Label_1389
	.word	-84
	.word	4
	.word	_Label_1390
	.word	-88
	.word	4
	.word	_Label_1391
	.word	-212
	.word	124
	.word	_Label_1392
	.word	-216
	.word	4
	.word	_Label_1393
	.word	-220
	.word	4
	.word	_Label_1394
	.word	-1464
	.word	1244
	.word	_Label_1395
	.word	-1468
	.word	4
	.word	_Label_1396
	.word	-1472
	.word	4
	.word	0
_Label_1369:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1370:
	.ascii	"Pself\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1367\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1366\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1365\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1363\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1384:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1385:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1386:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1387:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1396:
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
_Label_3058:
	push	r0
	sub	r1,1,r1
	bne	_Label_3058
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
!   _temp_1397 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1397  sizeInBytes=4
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
!   _temp_1402 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1403 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1402  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1398:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1403 then goto _Label_1401		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1401
_Label_1399:
	mov	1078,r13		! source line 1078
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1404 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1404  sizeInBytes=4
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
!   _temp_1405 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1405  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1081,r13		! source line 1081
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1082,r13		! source line 1082
	mov	"\0\0SE",r10
!   _temp_1406 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1406 [i ] into _temp_1407
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
_Label_1400:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1398
! END FOR
_Label_1401:
! CALL STATEMENT...
!   _temp_1408 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1408  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1084,r13		! source line 1084
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1085,r13		! source line 1085
	mov	"\0\0SE",r10
!   _temp_1409 = _function_218_PrintObjectAddr
	set	_function_218_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1410 = &freeList
	load	[r14+8],r1
	add	r1,1364,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1409  sizeInBytes=4
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
	.word	_Label_1411
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1412
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1413
	.word	-12
	.word	4
	.word	_Label_1414
	.word	-16
	.word	4
	.word	_Label_1415
	.word	-20
	.word	4
	.word	_Label_1416
	.word	-24
	.word	4
	.word	_Label_1417
	.word	-28
	.word	4
	.word	_Label_1418
	.word	-32
	.word	4
	.word	_Label_1419
	.word	-36
	.word	4
	.word	_Label_1420
	.word	-40
	.word	4
	.word	_Label_1421
	.word	-44
	.word	4
	.word	_Label_1422
	.word	-48
	.word	4
	.word	_Label_1423
	.word	-52
	.word	4
	.word	_Label_1424
	.word	-56
	.word	4
	.word	0
_Label_1411:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1412:
	.ascii	"Pself\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1415:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1416:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1406\0"
	.align
_Label_1418:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1419:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1420:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1423:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1424:
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
_Label_3059:
	push	r0
	sub	r1,1,r1
	bne	_Label_3059
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
!   _temp_1425 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1425  sizeInBytes=4
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
!   _temp_1430 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1431 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1430  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1426:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1431 then goto _Label_1429		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1429
_Label_1427:
	mov	1101,r13		! source line 1101
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1432 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1432  sizeInBytes=4
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
!   _temp_1433 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1433 [i ] into _temp_1434
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
_Label_1428:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1426
! END FOR
_Label_1429:
! CALL STATEMENT...
!   _temp_1435 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1435  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1106,r13		! source line 1106
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1107,r13		! source line 1107
	mov	"\0\0SE",r10
!   _temp_1436 = _function_218_PrintObjectAddr
	set	_function_218_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1437 = &freeList
	load	[r14+8],r1
	add	r1,1364,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1436  sizeInBytes=4
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
	.word	_Label_1438
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1439
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1440
	.word	-12
	.word	4
	.word	_Label_1441
	.word	-16
	.word	4
	.word	_Label_1442
	.word	-20
	.word	4
	.word	_Label_1443
	.word	-24
	.word	4
	.word	_Label_1444
	.word	-28
	.word	4
	.word	_Label_1445
	.word	-32
	.word	4
	.word	_Label_1446
	.word	-36
	.word	4
	.word	_Label_1447
	.word	-40
	.word	4
	.word	_Label_1448
	.word	-44
	.word	4
	.word	_Label_1449
	.word	-48
	.word	4
	.word	_Label_1450
	.word	-52
	.word	4
	.word	0
_Label_1438:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1439:
	.ascii	"Pself\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1437\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1434\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1433\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1449:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1450:
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
_Label_3060:
	push	r0
	sub	r1,1,r1
	bne	_Label_3060
	mov	1114,r13		! source line 1114
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1122,r13		! source line 1122
	mov	"\0\0SE",r10
!   _temp_1451 = &processManagerLock
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
_Label_1452:
	mov	1124,r13		! source line 1124
	mov	"\0\0SE",r10
!   _temp_1456 = &freeList
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
!   Retrieve Result: targetName=_temp_1455  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1457 = _temp_1455 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1457 then goto _Label_1454 else goto _Label_1453
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1453
	jmp	_Label_1454
_Label_1453:
	mov	1124,r13		! source line 1124
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1125,r13		! source line 1125
	mov	"\0\0SE",r10
!   _temp_1458 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-36]
!   _temp_1459 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1458  sizeInBytes=4
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
	jmp	_Label_1452
_Label_1454:
! ASSIGNMENT STATEMENT...
	mov	1128,r13		! source line 1128
	mov	"\0\0AS",r10
	mov	1128,r13		! source line 1128
	mov	"\0\0SE",r10
!   _temp_1460 = &freeList
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
!   _temp_1461 = p + 20
	load	[r14+-48],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1461 = 1  (sizeInBytes=4)
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
!   _temp_1462 = p + 12
	load	[r14+-48],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1462 = nextPid  (sizeInBytes=4)
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
!   _temp_1463 = &processManagerLock
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
	.word	_Label_1464
	.word	4		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1465
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	-32
	.word	4
	.word	_Label_1471
	.word	-36
	.word	4
	.word	_Label_1472
	.word	-9
	.word	1
	.word	_Label_1473
	.word	-40
	.word	4
	.word	_Label_1474
	.word	-10
	.word	1
	.word	_Label_1475
	.word	-44
	.word	4
	.word	_Label_1476
	.word	-48
	.word	4
	.word	0
_Label_1464:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1465:
	.ascii	"Pself\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1463\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
_Label_1472:
	.byte	'C'
	.ascii	"_temp_1457\0"
	.align
_Label_1473:
	.byte	'?'
	.ascii	"_temp_1456\0"
	.align
_Label_1474:
	.byte	'C'
	.ascii	"_temp_1455\0"
	.align
_Label_1475:
	.byte	'?'
	.ascii	"_temp_1451\0"
	.align
_Label_1476:
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
_Label_3061:
	push	r0
	sub	r1,1,r1
	bne	_Label_3061
	mov	1139,r13		! source line 1139
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1144,r13		! source line 1144
	mov	"\0\0SE",r10
!   _temp_1477 = &processManagerLock
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
!   _temp_1478 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1478 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1146,r13		! source line 1146
	mov	"\0\0SE",r10
!   _temp_1479 = &freeList
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
!   _temp_1480 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1481 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1480  sizeInBytes=4
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
!   _temp_1482 = &processManagerLock
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
	.word	_Label_1483
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1484
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1485
	.word	12
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
	.word	0
_Label_1483:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1484:
	.ascii	"Pself\0"
	.align
_Label_1485:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1492
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1492:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1493
	.word	_sourceFileName
	.word	263		! line number
	.word	136		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1493:
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
_Label_3062:
	push	r0
	sub	r1,1,r1
	bne	_Label_3062
	mov	1182,r13		! source line 1182
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1494 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1494  sizeInBytes=4
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
!   _temp_1496 = &framesInUse
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
!   _temp_1498 = &frameManagerLock
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
_Label_3063:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3063
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1195,r13		! source line 1195
	mov	"\0\0SE",r10
!   _temp_1500 = &newFramesAvailable
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
!   _temp_1505 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1506 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1505  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1501:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1506 then goto _Label_1504		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1504
_Label_1502:
	mov	1201,r13		! source line 1201
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1204,r13		! source line 1204
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1509 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1509) then goto _Label_1508
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1508
!	jmp	_Label_1507
_Label_1507:
! THEN...
	mov	1205,r13		! source line 1205
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1510 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1510  sizeInBytes=4
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
_Label_1508:
!   Increment the FOR-LOOP index variable and jump back
_Label_1503:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1501
! END FOR
_Label_1504:
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
	.word	_Label_1511
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1512
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1513
	.word	-12
	.word	4
	.word	_Label_1514
	.word	-16
	.word	4
	.word	_Label_1515
	.word	-20
	.word	4
	.word	_Label_1516
	.word	-24
	.word	4
	.word	_Label_1517
	.word	-28
	.word	4
	.word	_Label_1518
	.word	-32
	.word	4
	.word	_Label_1519
	.word	-36
	.word	4
	.word	_Label_1520
	.word	-40
	.word	4
	.word	_Label_1521
	.word	-44
	.word	4
	.word	_Label_1522
	.word	-48
	.word	4
	.word	_Label_1523
	.word	-52
	.word	4
	.word	_Label_1524
	.word	-56
	.word	4
	.word	0
_Label_1511:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1512:
	.ascii	"Pself\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1494\0"
	.align
_Label_1524:
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
_Label_3064:
	push	r0
	sub	r1,1,r1
	bne	_Label_3064
	mov	1212,r13		! source line 1212
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1216,r13		! source line 1216
	mov	"\0\0SE",r10
!   _temp_1525 = &frameManagerLock
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
!   _temp_1526 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1526  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1217,r13		! source line 1217
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1527 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1527  sizeInBytes=4
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
!   _temp_1528 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1528  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1219,r13		! source line 1219
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1220,r13		! source line 1220
	mov	"\0\0SE",r10
!   _temp_1529 = &framesInUse
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
!   _temp_1530 = &frameManagerLock
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
	.word	_Label_1531
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1532
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1533
	.word	-12
	.word	4
	.word	_Label_1534
	.word	-16
	.word	4
	.word	_Label_1535
	.word	-20
	.word	4
	.word	_Label_1536
	.word	-24
	.word	4
	.word	_Label_1537
	.word	-28
	.word	4
	.word	_Label_1538
	.word	-32
	.word	4
	.word	0
_Label_1531:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1532:
	.ascii	"Pself\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1525\0"
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
_Label_3065:
	push	r0
	sub	r1,1,r1
	bne	_Label_3065
	mov	1226,r13		! source line 1226
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1234,r13		! source line 1234
	mov	"\0\0SE",r10
!   _temp_1539 = &frameManagerLock
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
_Label_1540:
!   if numberFreeFrames >= 1 then goto _Label_1542		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1542
!	jmp	_Label_1541
_Label_1541:
	mov	1237,r13		! source line 1237
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1238,r13		! source line 1238
	mov	"\0\0SE",r10
!   _temp_1543 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1544 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1543  sizeInBytes=4
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
	jmp	_Label_1540
_Label_1542:
! ASSIGNMENT STATEMENT...
	mov	1242,r13		! source line 1242
	mov	"\0\0AS",r10
	mov	1242,r13		! source line 1242
	mov	"\0\0SE",r10
!   _temp_1545 = &framesInUse
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
!   _temp_1546 = &frameManagerLock
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
!   _temp_1547 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1547		(int)
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
	.word	_Label_1548
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1549
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1550
	.word	-12
	.word	4
	.word	_Label_1551
	.word	-16
	.word	4
	.word	_Label_1552
	.word	-20
	.word	4
	.word	_Label_1553
	.word	-24
	.word	4
	.word	_Label_1554
	.word	-28
	.word	4
	.word	_Label_1555
	.word	-32
	.word	4
	.word	_Label_1556
	.word	-36
	.word	4
	.word	_Label_1557
	.word	-40
	.word	4
	.word	0
_Label_1548:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1549:
	.ascii	"Pself\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1543\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1556:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1557:
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
_Label_3066:
	push	r0
	sub	r1,1,r1
	bne	_Label_3066
	mov	1256,r13		! source line 1256
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1261,r13		! source line 1261
	mov	"\0\0SE",r10
!   _temp_1558 = &frameManagerLock
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
_Label_1559:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1561		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1561
!	jmp	_Label_1560
_Label_1560:
	mov	1264,r13		! source line 1264
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1265,r13		! source line 1265
	mov	"\0\0SE",r10
!   _temp_1562 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1563 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1562  sizeInBytes=4
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
	jmp	_Label_1559
_Label_1561:
! FOR STATEMENT...
	mov	1269,r13		! source line 1269
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1568 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1569 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1568  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_1564:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1569 then goto _Label_1567		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1567
_Label_1565:
	mov	1269,r13		! source line 1269
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1270,r13		! source line 1270
	mov	"\0\0AS",r10
	mov	1270,r13		! source line 1270
	mov	"\0\0SE",r10
!   _temp_1570 = &framesInUse
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
!   _temp_1571 = freeFrame * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_1571		(int)
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
_Label_1566:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1564
! END FOR
_Label_1567:
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
!   _temp_1572 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1572 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1280,r13		! source line 1280
	mov	"\0\0SE",r10
!   _temp_1573 = &frameManagerLock
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
	.word	_Label_1574
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1575
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1576
	.word	12
	.word	4
	.word	_Label_1577
	.word	16
	.word	4
	.word	_Label_1578
	.word	-12
	.word	4
	.word	_Label_1579
	.word	-16
	.word	4
	.word	_Label_1580
	.word	-20
	.word	4
	.word	_Label_1581
	.word	-24
	.word	4
	.word	_Label_1582
	.word	-28
	.word	4
	.word	_Label_1583
	.word	-32
	.word	4
	.word	_Label_1584
	.word	-36
	.word	4
	.word	_Label_1585
	.word	-40
	.word	4
	.word	_Label_1586
	.word	-44
	.word	4
	.word	_Label_1587
	.word	-48
	.word	4
	.word	_Label_1588
	.word	-52
	.word	4
	.word	_Label_1589
	.word	-56
	.word	4
	.word	0
_Label_1574:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1575:
	.ascii	"Pself\0"
	.align
_Label_1576:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1577:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1573\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1572\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1571\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1570\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1569\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1568\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1563\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1562\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1558\0"
	.align
_Label_1587:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1588:
	.byte	'I'
	.ascii	"freeFrame\0"
	.align
_Label_1589:
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
_Label_3067:
	push	r0
	sub	r1,1,r1
	bne	_Label_3067
	mov	1286,r13		! source line 1286
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1293,r13		! source line 1293
	mov	"\0\0SE",r10
!   _temp_1590 = &frameManagerLock
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
!   _temp_1591 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: numReturn = *_temp_1591  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-60]
! FOR STATEMENT...
	mov	1295,r13		! source line 1295
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1596 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1597 = numReturn - 1		(int)
	load	[r14+-60],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1596  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-48]
_Label_1592:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1597 then goto _Label_1595		
	load	[r14+-48],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1595
_Label_1593:
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
!   _temp_1598 = addr - 1048576		(int)
	load	[r14+-52],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   bitNumber = _temp_1598 div 8192		(int)
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
!   _temp_1599 = &framesInUse
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
_Label_1594:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1592
! END FOR
_Label_1595:
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
!   _temp_1600 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1601 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1600  sizeInBytes=4
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
!   _temp_1602 = &frameManagerLock
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
	.word	_Label_1603
	.word	8		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1604
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1605
	.word	12
	.word	4
	.word	_Label_1606
	.word	-12
	.word	4
	.word	_Label_1607
	.word	-16
	.word	4
	.word	_Label_1608
	.word	-20
	.word	4
	.word	_Label_1609
	.word	-24
	.word	4
	.word	_Label_1610
	.word	-28
	.word	4
	.word	_Label_1611
	.word	-32
	.word	4
	.word	_Label_1612
	.word	-36
	.word	4
	.word	_Label_1613
	.word	-40
	.word	4
	.word	_Label_1614
	.word	-44
	.word	4
	.word	_Label_1615
	.word	-48
	.word	4
	.word	_Label_1616
	.word	-52
	.word	4
	.word	_Label_1617
	.word	-56
	.word	4
	.word	_Label_1618
	.word	-60
	.word	4
	.word	0
_Label_1603:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1604:
	.ascii	"Pself\0"
	.align
_Label_1605:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1591\0"
	.align
_Label_1614:
	.byte	'?'
	.ascii	"_temp_1590\0"
	.align
_Label_1615:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1616:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_1617:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
_Label_1618:
	.byte	'I'
	.ascii	"numReturn\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1619
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
_Label_1619:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1620
	.word	_sourceFileName
	.word	282		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1620:
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
_Label_3068:
	push	r0
	sub	r1,1,r1
	bne	_Label_3068
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
!   _temp_1621 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1623 = &_temp_1622
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1623 = _temp_1623 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1625:
!   Data Move: *_temp_1623 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1623 = _temp_1623 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1624 = _temp_1624 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1624) then goto _Label_1625
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1625
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1626 = &_temp_1622
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3069
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3069:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1621 = *_temp_1626  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3070:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3070
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
	.word	_Label_1627
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1628
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1629
	.word	-12
	.word	4
	.word	_Label_1630
	.word	-16
	.word	4
	.word	_Label_1631
	.word	-20
	.word	4
	.word	_Label_1632
	.word	-104
	.word	84
	.word	_Label_1633
	.word	-108
	.word	4
	.word	0
_Label_1627:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1628:
	.ascii	"Pself\0"
	.align
_Label_1629:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1630:
	.byte	'?'
	.ascii	"_temp_1624\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1623\0"
	.align
_Label_1632:
	.byte	'?'
	.ascii	"_temp_1622\0"
	.align
_Label_1633:
	.byte	'?'
	.ascii	"_temp_1621\0"
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
_Label_3071:
	push	r0
	sub	r1,1,r1
	bne	_Label_3071
	mov	1328,r13		! source line 1328
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1634 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1634  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1333,r13		! source line 1333
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1635 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1635  sizeInBytes=4
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
!   _temp_1640 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1641 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1640  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1636:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1641 then goto _Label_1639		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1639
_Label_1637:
	mov	1335,r13		! source line 1335
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1642 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1642  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1336,r13		! source line 1336
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1644 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1644 [i ] into _temp_1645
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
!   _temp_1643 = _temp_1645		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1643  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1337,r13		! source line 1337
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1646 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1646  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1338,r13		! source line 1338
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1648 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1648 [i ] into _temp_1649
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
!   Data Move: _temp_1647 = *_temp_1649  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1647  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1339,r13		! source line 1339
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1650 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1650  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1340,r13		! source line 1340
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1651 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1651  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1341,r13		! source line 1341
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1652 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1652  sizeInBytes=4
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
!   if intIsZero (_temp_1654) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1653  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1653  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1343,r13		! source line 1343
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1655 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1655  sizeInBytes=4
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
!   if intIsZero (_temp_1659) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1658  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1658) then goto _Label_1657
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1657
!	jmp	_Label_1656
_Label_1656:
! THEN...
	mov	1346,r13		! source line 1346
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1346,r13		! source line 1346
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1661) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1660  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1660  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1346,r13		! source line 1346
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1662
_Label_1657:
! ELSE...
	mov	1348,r13		! source line 1348
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1663 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1663  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1348,r13		! source line 1348
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1662:
! CALL STATEMENT...
!   _temp_1664 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1664  sizeInBytes=4
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
!   if intIsZero (_temp_1667) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1665 else goto _Label_1666
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1666
	jmp	_Label_1665
_Label_1665:
! THEN...
	mov	1352,r13		! source line 1352
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1668 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1668  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1352,r13		! source line 1352
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1669
_Label_1666:
! ELSE...
	mov	1354,r13		! source line 1354
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1670 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1670  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1354,r13		! source line 1354
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1669:
! CALL STATEMENT...
!   _temp_1671 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1671  sizeInBytes=4
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
!   if intIsZero (_temp_1674) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1672 else goto _Label_1673
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1673
	jmp	_Label_1672
_Label_1672:
! THEN...
	mov	1358,r13		! source line 1358
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1675 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1675  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1358,r13		! source line 1358
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1676
_Label_1673:
! ELSE...
	mov	1360,r13		! source line 1360
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1677 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1677  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1360,r13		! source line 1360
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1676:
! CALL STATEMENT...
!   _temp_1678 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1678  sizeInBytes=4
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
!   if intIsZero (_temp_1681) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1679 else goto _Label_1680
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1680
	jmp	_Label_1679
_Label_1679:
! THEN...
	mov	1364,r13		! source line 1364
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1682 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1682  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1364,r13		! source line 1364
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1683
_Label_1680:
! ELSE...
	mov	1366,r13		! source line 1366
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1684 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1684  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1366,r13		! source line 1366
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1683:
! CALL STATEMENT...
!   _temp_1685 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1685  sizeInBytes=4
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
!   if intIsZero (_temp_1688) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1686 else goto _Label_1687
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1687
	jmp	_Label_1686
_Label_1686:
! THEN...
	mov	1370,r13		! source line 1370
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1689 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1689  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1370,r13		! source line 1370
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1690
_Label_1687:
! ELSE...
	mov	1372,r13		! source line 1372
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1691 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1691  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1372,r13		! source line 1372
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1690:
! CALL STATEMENT...
!   Call the function
	mov	1374,r13		! source line 1374
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1638:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1636
! END FOR
_Label_1639:
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
	.word	_Label_1692
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1693
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1694
	.word	-12
	.word	4
	.word	_Label_1695
	.word	-16
	.word	4
	.word	_Label_1696
	.word	-20
	.word	4
	.word	_Label_1697
	.word	-24
	.word	4
	.word	_Label_1698
	.word	-28
	.word	4
	.word	_Label_1699
	.word	-32
	.word	4
	.word	_Label_1700
	.word	-36
	.word	4
	.word	_Label_1701
	.word	-40
	.word	4
	.word	_Label_1702
	.word	-44
	.word	4
	.word	_Label_1703
	.word	-48
	.word	4
	.word	_Label_1704
	.word	-52
	.word	4
	.word	_Label_1705
	.word	-56
	.word	4
	.word	_Label_1706
	.word	-60
	.word	4
	.word	_Label_1707
	.word	-64
	.word	4
	.word	_Label_1708
	.word	-68
	.word	4
	.word	_Label_1709
	.word	-72
	.word	4
	.word	_Label_1710
	.word	-76
	.word	4
	.word	_Label_1711
	.word	-80
	.word	4
	.word	_Label_1712
	.word	-84
	.word	4
	.word	_Label_1713
	.word	-88
	.word	4
	.word	_Label_1714
	.word	-92
	.word	4
	.word	_Label_1715
	.word	-96
	.word	4
	.word	_Label_1716
	.word	-100
	.word	4
	.word	_Label_1717
	.word	-104
	.word	4
	.word	_Label_1718
	.word	-108
	.word	4
	.word	_Label_1719
	.word	-112
	.word	4
	.word	_Label_1720
	.word	-116
	.word	4
	.word	_Label_1721
	.word	-120
	.word	4
	.word	_Label_1722
	.word	-124
	.word	4
	.word	_Label_1723
	.word	-128
	.word	4
	.word	_Label_1724
	.word	-132
	.word	4
	.word	_Label_1725
	.word	-136
	.word	4
	.word	_Label_1726
	.word	-140
	.word	4
	.word	_Label_1727
	.word	-144
	.word	4
	.word	_Label_1728
	.word	-148
	.word	4
	.word	_Label_1729
	.word	-152
	.word	4
	.word	_Label_1730
	.word	-156
	.word	4
	.word	_Label_1731
	.word	-160
	.word	4
	.word	_Label_1732
	.word	-164
	.word	4
	.word	_Label_1733
	.word	-168
	.word	4
	.word	0
_Label_1692:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1693:
	.ascii	"Pself\0"
	.align
_Label_1694:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1695:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1696:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1697:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1698:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1699:
	.byte	'?'
	.ascii	"_temp_1682\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1681\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1703:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1704:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1705:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1706:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1707:
	.byte	'?'
	.ascii	"_temp_1668\0"
	.align
_Label_1708:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1664\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1711:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1653\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1652\0"
	.align
_Label_1719:
	.byte	'?'
	.ascii	"_temp_1651\0"
	.align
_Label_1720:
	.byte	'?'
	.ascii	"_temp_1650\0"
	.align
_Label_1721:
	.byte	'?'
	.ascii	"_temp_1649\0"
	.align
_Label_1722:
	.byte	'?'
	.ascii	"_temp_1648\0"
	.align
_Label_1723:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1725:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1726:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1728:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1729:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1635\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1733:
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
_Label_3072:
	push	r0
	sub	r1,1,r1
	bne	_Label_3072
	mov	1380,r13		! source line 1380
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1385,r13		! source line 1385
	mov	"\0\0RE",r10
!   _temp_1736 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1736 [entry ] into _temp_1737
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
!   Data Move: _temp_1735 = *_temp_1737  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1734 = _temp_1735 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1734  (sizeInBytes=4)
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
	.word	_Label_1738
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1739
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1740
	.word	12
	.word	4
	.word	_Label_1741
	.word	-12
	.word	4
	.word	_Label_1742
	.word	-16
	.word	4
	.word	_Label_1743
	.word	-20
	.word	4
	.word	_Label_1744
	.word	-24
	.word	4
	.word	0
_Label_1738:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1739:
	.ascii	"Pself\0"
	.align
_Label_1740:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1736\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1734\0"
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
_Label_3073:
	push	r0
	sub	r1,1,r1
	bne	_Label_3073
	mov	1390,r13		! source line 1390
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1394,r13		! source line 1394
	mov	"\0\0RE",r10
!   _temp_1747 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1747 [entry ] into _temp_1748
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
!   Data Move: _temp_1746 = *_temp_1748  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1745 = _temp_1746 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1745  (sizeInBytes=4)
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
	.word	_Label_1749
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1750
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1751
	.word	12
	.word	4
	.word	_Label_1752
	.word	-12
	.word	4
	.word	_Label_1753
	.word	-16
	.word	4
	.word	_Label_1754
	.word	-20
	.word	4
	.word	_Label_1755
	.word	-24
	.word	4
	.word	0
_Label_1749:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1750:
	.ascii	"Pself\0"
	.align
_Label_1751:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1748\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1747\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1746\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1745\0"
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
_Label_3074:
	push	r0
	sub	r1,1,r1
	bne	_Label_3074
	mov	1399,r13		! source line 1399
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1404,r13		! source line 1404
	mov	"\0\0AS",r10
!   _temp_1756 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1756 [entry ] into _temp_1757
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
!   _temp_1759 = _temp_1760 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1758 = _temp_1759 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1757 = _temp_1758  (sizeInBytes=4)
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
	.word	_Label_1763
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1764
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1765
	.word	12
	.word	4
	.word	_Label_1766
	.word	16
	.word	4
	.word	_Label_1767
	.word	-12
	.word	4
	.word	_Label_1768
	.word	-16
	.word	4
	.word	_Label_1769
	.word	-20
	.word	4
	.word	_Label_1770
	.word	-24
	.word	4
	.word	_Label_1771
	.word	-28
	.word	4
	.word	_Label_1772
	.word	-32
	.word	4
	.word	_Label_1773
	.word	-36
	.word	4
	.word	0
_Label_1763:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1764:
	.ascii	"Pself\0"
	.align
_Label_1765:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1766:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1762\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1761\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1760\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1759\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1758\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1757\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1756\0"
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
_Label_3075:
	push	r0
	sub	r1,1,r1
	bne	_Label_3075
	mov	1409,r13		! source line 1409
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1413,r13		! source line 1413
	mov	"\0\0RE",r10
!   _temp_1777 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1777 [entry ] into _temp_1778
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
!   Data Move: _temp_1776 = *_temp_1778  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1775 = _temp_1776 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1775) then goto _Label_1779
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1779
!   _temp_1774 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1780
_Label_1779:
!   _temp_1774 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1780:
!   ReturnResult: _temp_1774  (sizeInBytes=1)
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
	.word	_Label_1781
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1782
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1783
	.word	12
	.word	4
	.word	_Label_1784
	.word	-16
	.word	4
	.word	_Label_1785
	.word	-20
	.word	4
	.word	_Label_1786
	.word	-24
	.word	4
	.word	_Label_1787
	.word	-28
	.word	4
	.word	_Label_1788
	.word	-9
	.word	1
	.word	0
_Label_1781:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1782:
	.ascii	"Pself\0"
	.align
_Label_1783:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1778\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1777\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1776\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1775\0"
	.align
_Label_1788:
	.byte	'C'
	.ascii	"_temp_1774\0"
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
_Label_3076:
	push	r0
	sub	r1,1,r1
	bne	_Label_3076
	mov	1418,r13		! source line 1418
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1422,r13		! source line 1422
	mov	"\0\0RE",r10
!   _temp_1792 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1792 [entry ] into _temp_1793
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
!   Data Move: _temp_1791 = *_temp_1793  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1790 = _temp_1791 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1790) then goto _Label_1794
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1794
!   _temp_1789 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1795
_Label_1794:
!   _temp_1789 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1795:
!   ReturnResult: _temp_1789  (sizeInBytes=1)
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
	.word	_Label_1796
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1797
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1798
	.word	12
	.word	4
	.word	_Label_1799
	.word	-16
	.word	4
	.word	_Label_1800
	.word	-20
	.word	4
	.word	_Label_1801
	.word	-24
	.word	4
	.word	_Label_1802
	.word	-28
	.word	4
	.word	_Label_1803
	.word	-9
	.word	1
	.word	0
_Label_1796:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1797:
	.ascii	"Pself\0"
	.align
_Label_1798:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1793\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1792\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1791\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1790\0"
	.align
_Label_1803:
	.byte	'C'
	.ascii	"_temp_1789\0"
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
_Label_3077:
	push	r0
	sub	r1,1,r1
	bne	_Label_3077
	mov	1427,r13		! source line 1427
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1431,r13		! source line 1431
	mov	"\0\0RE",r10
!   _temp_1807 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1807 [entry ] into _temp_1808
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
!   Data Move: _temp_1806 = *_temp_1808  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1805 = _temp_1806 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1805) then goto _Label_1809
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1809
!   _temp_1804 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1810
_Label_1809:
!   _temp_1804 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1810:
!   ReturnResult: _temp_1804  (sizeInBytes=1)
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
	.word	_Label_1811
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1812
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1813
	.word	12
	.word	4
	.word	_Label_1814
	.word	-16
	.word	4
	.word	_Label_1815
	.word	-20
	.word	4
	.word	_Label_1816
	.word	-24
	.word	4
	.word	_Label_1817
	.word	-28
	.word	4
	.word	_Label_1818
	.word	-9
	.word	1
	.word	0
_Label_1811:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1812:
	.ascii	"Pself\0"
	.align
_Label_1813:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1808\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1807\0"
	.align
_Label_1816:
	.byte	'?'
	.ascii	"_temp_1806\0"
	.align
_Label_1817:
	.byte	'?'
	.ascii	"_temp_1805\0"
	.align
_Label_1818:
	.byte	'C'
	.ascii	"_temp_1804\0"
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
_Label_3078:
	push	r0
	sub	r1,1,r1
	bne	_Label_3078
	mov	1436,r13		! source line 1436
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1440,r13		! source line 1440
	mov	"\0\0RE",r10
!   _temp_1822 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1822 [entry ] into _temp_1823
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
!   Data Move: _temp_1821 = *_temp_1823  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1820 = _temp_1821 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1820) then goto _Label_1824
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1824
!   _temp_1819 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1825
_Label_1824:
!   _temp_1819 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1825:
!   ReturnResult: _temp_1819  (sizeInBytes=1)
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
	.word	_Label_1826
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1827
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1828
	.word	12
	.word	4
	.word	_Label_1829
	.word	-16
	.word	4
	.word	_Label_1830
	.word	-20
	.word	4
	.word	_Label_1831
	.word	-24
	.word	4
	.word	_Label_1832
	.word	-28
	.word	4
	.word	_Label_1833
	.word	-9
	.word	1
	.word	0
_Label_1826:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1827:
	.ascii	"Pself\0"
	.align
_Label_1828:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1829:
	.byte	'?'
	.ascii	"_temp_1823\0"
	.align
_Label_1830:
	.byte	'?'
	.ascii	"_temp_1822\0"
	.align
_Label_1831:
	.byte	'?'
	.ascii	"_temp_1821\0"
	.align
_Label_1832:
	.byte	'?'
	.ascii	"_temp_1820\0"
	.align
_Label_1833:
	.byte	'C'
	.ascii	"_temp_1819\0"
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
_Label_3079:
	push	r0
	sub	r1,1,r1
	bne	_Label_3079
	mov	1445,r13		! source line 1445
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1449,r13		! source line 1449
	mov	"\0\0AS",r10
!   _temp_1834 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1834 [entry ] into _temp_1835
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
!   _temp_1838 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1838 [entry ] into _temp_1839
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
!   Data Move: _temp_1837 = *_temp_1839  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1836 = _temp_1837 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1835 = _temp_1836  (sizeInBytes=4)
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
	.word	_Label_1840
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1841
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1842
	.word	12
	.word	4
	.word	_Label_1843
	.word	-12
	.word	4
	.word	_Label_1844
	.word	-16
	.word	4
	.word	_Label_1845
	.word	-20
	.word	4
	.word	_Label_1846
	.word	-24
	.word	4
	.word	_Label_1847
	.word	-28
	.word	4
	.word	_Label_1848
	.word	-32
	.word	4
	.word	0
_Label_1840:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1841:
	.ascii	"Pself\0"
	.align
_Label_1842:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1839\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1838\0"
	.align
_Label_1845:
	.byte	'?'
	.ascii	"_temp_1837\0"
	.align
_Label_1846:
	.byte	'?'
	.ascii	"_temp_1836\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1835\0"
	.align
_Label_1848:
	.byte	'?'
	.ascii	"_temp_1834\0"
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
_Label_3080:
	push	r0
	sub	r1,1,r1
	bne	_Label_3080
	mov	1454,r13		! source line 1454
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1458,r13		! source line 1458
	mov	"\0\0AS",r10
!   _temp_1849 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1849 [entry ] into _temp_1850
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
!   _temp_1853 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1853 [entry ] into _temp_1854
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
!   Data Move: _temp_1852 = *_temp_1854  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1851 = _temp_1852 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1850 = _temp_1851  (sizeInBytes=4)
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
	.word	_Label_1855
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1856
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1857
	.word	12
	.word	4
	.word	_Label_1858
	.word	-12
	.word	4
	.word	_Label_1859
	.word	-16
	.word	4
	.word	_Label_1860
	.word	-20
	.word	4
	.word	_Label_1861
	.word	-24
	.word	4
	.word	_Label_1862
	.word	-28
	.word	4
	.word	_Label_1863
	.word	-32
	.word	4
	.word	0
_Label_1855:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1856:
	.ascii	"Pself\0"
	.align
_Label_1857:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1854\0"
	.align
_Label_1859:
	.byte	'?'
	.ascii	"_temp_1853\0"
	.align
_Label_1860:
	.byte	'?'
	.ascii	"_temp_1852\0"
	.align
_Label_1861:
	.byte	'?'
	.ascii	"_temp_1851\0"
	.align
_Label_1862:
	.byte	'?'
	.ascii	"_temp_1850\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1849\0"
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
_Label_3081:
	push	r0
	sub	r1,1,r1
	bne	_Label_3081
	mov	1463,r13		! source line 1463
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1467,r13		! source line 1467
	mov	"\0\0AS",r10
!   _temp_1864 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1864 [entry ] into _temp_1865
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
!   _temp_1868 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1868 [entry ] into _temp_1869
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
!   Data Move: _temp_1867 = *_temp_1869  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1866 = _temp_1867 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1865 = _temp_1866  (sizeInBytes=4)
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
	.word	_Label_1870
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1871
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1872
	.word	12
	.word	4
	.word	_Label_1873
	.word	-12
	.word	4
	.word	_Label_1874
	.word	-16
	.word	4
	.word	_Label_1875
	.word	-20
	.word	4
	.word	_Label_1876
	.word	-24
	.word	4
	.word	_Label_1877
	.word	-28
	.word	4
	.word	_Label_1878
	.word	-32
	.word	4
	.word	0
_Label_1870:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1871:
	.ascii	"Pself\0"
	.align
_Label_1872:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1873:
	.byte	'?'
	.ascii	"_temp_1869\0"
	.align
_Label_1874:
	.byte	'?'
	.ascii	"_temp_1868\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1867\0"
	.align
_Label_1876:
	.byte	'?'
	.ascii	"_temp_1866\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1865\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1864\0"
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
_Label_3082:
	push	r0
	sub	r1,1,r1
	bne	_Label_3082
	mov	1472,r13		! source line 1472
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1476,r13		! source line 1476
	mov	"\0\0AS",r10
!   _temp_1879 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1879 [entry ] into _temp_1880
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
!   _temp_1883 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1883 [entry ] into _temp_1884
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
!   Data Move: _temp_1882 = *_temp_1884  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1881 = _temp_1882 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1880 = _temp_1881  (sizeInBytes=4)
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
	.word	_Label_1885
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1886
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1887
	.word	12
	.word	4
	.word	_Label_1888
	.word	-12
	.word	4
	.word	_Label_1889
	.word	-16
	.word	4
	.word	_Label_1890
	.word	-20
	.word	4
	.word	_Label_1891
	.word	-24
	.word	4
	.word	_Label_1892
	.word	-28
	.word	4
	.word	_Label_1893
	.word	-32
	.word	4
	.word	0
_Label_1885:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1886:
	.ascii	"Pself\0"
	.align
_Label_1887:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1888:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1889:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1890:
	.byte	'?'
	.ascii	"_temp_1882\0"
	.align
_Label_1891:
	.byte	'?'
	.ascii	"_temp_1881\0"
	.align
_Label_1892:
	.byte	'?'
	.ascii	"_temp_1880\0"
	.align
_Label_1893:
	.byte	'?'
	.ascii	"_temp_1879\0"
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
_Label_3083:
	push	r0
	sub	r1,1,r1
	bne	_Label_3083
	mov	1481,r13		! source line 1481
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1485,r13		! source line 1485
	mov	"\0\0AS",r10
!   _temp_1894 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1894 [entry ] into _temp_1895
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
!   _temp_1898 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1898 [entry ] into _temp_1899
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
!   Data Move: _temp_1897 = *_temp_1899  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1896 = _temp_1897 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1895 = _temp_1896  (sizeInBytes=4)
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
	.word	_Label_1900
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1901
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1902
	.word	12
	.word	4
	.word	_Label_1903
	.word	-12
	.word	4
	.word	_Label_1904
	.word	-16
	.word	4
	.word	_Label_1905
	.word	-20
	.word	4
	.word	_Label_1906
	.word	-24
	.word	4
	.word	_Label_1907
	.word	-28
	.word	4
	.word	_Label_1908
	.word	-32
	.word	4
	.word	0
_Label_1900:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1901:
	.ascii	"Pself\0"
	.align
_Label_1902:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1899\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1898\0"
	.align
_Label_1905:
	.byte	'?'
	.ascii	"_temp_1897\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1896\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1895\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1894\0"
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
_Label_3084:
	push	r0
	sub	r1,1,r1
	bne	_Label_3084
	mov	1490,r13		! source line 1490
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1494,r13		! source line 1494
	mov	"\0\0AS",r10
!   _temp_1909 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1909 [entry ] into _temp_1910
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
!   _temp_1913 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1913 [entry ] into _temp_1914
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
!   Data Move: _temp_1912 = *_temp_1914  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1911 = _temp_1912 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1910 = _temp_1911  (sizeInBytes=4)
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
	.word	_Label_1915
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1916
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1917
	.word	12
	.word	4
	.word	_Label_1918
	.word	-12
	.word	4
	.word	_Label_1919
	.word	-16
	.word	4
	.word	_Label_1920
	.word	-20
	.word	4
	.word	_Label_1921
	.word	-24
	.word	4
	.word	_Label_1922
	.word	-28
	.word	4
	.word	_Label_1923
	.word	-32
	.word	4
	.word	0
_Label_1915:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1916:
	.ascii	"Pself\0"
	.align
_Label_1917:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1918:
	.byte	'?'
	.ascii	"_temp_1914\0"
	.align
_Label_1919:
	.byte	'?'
	.ascii	"_temp_1913\0"
	.align
_Label_1920:
	.byte	'?'
	.ascii	"_temp_1912\0"
	.align
_Label_1921:
	.byte	'?'
	.ascii	"_temp_1911\0"
	.align
_Label_1922:
	.byte	'?'
	.ascii	"_temp_1910\0"
	.align
_Label_1923:
	.byte	'?'
	.ascii	"_temp_1909\0"
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
_Label_3085:
	push	r0
	sub	r1,1,r1
	bne	_Label_3085
	mov	1499,r13		! source line 1499
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1503,r13		! source line 1503
	mov	"\0\0AS",r10
!   _temp_1924 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1924 [entry ] into _temp_1925
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
!   _temp_1928 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1928 [entry ] into _temp_1929
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
!   Data Move: _temp_1927 = *_temp_1929  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1926 = _temp_1927 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1925 = _temp_1926  (sizeInBytes=4)
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
	.word	_Label_1930
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1931
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1932
	.word	12
	.word	4
	.word	_Label_1933
	.word	-12
	.word	4
	.word	_Label_1934
	.word	-16
	.word	4
	.word	_Label_1935
	.word	-20
	.word	4
	.word	_Label_1936
	.word	-24
	.word	4
	.word	_Label_1937
	.word	-28
	.word	4
	.word	_Label_1938
	.word	-32
	.word	4
	.word	0
_Label_1930:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1931:
	.ascii	"Pself\0"
	.align
_Label_1932:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1933:
	.byte	'?'
	.ascii	"_temp_1929\0"
	.align
_Label_1934:
	.byte	'?'
	.ascii	"_temp_1928\0"
	.align
_Label_1935:
	.byte	'?'
	.ascii	"_temp_1927\0"
	.align
_Label_1936:
	.byte	'?'
	.ascii	"_temp_1926\0"
	.align
_Label_1937:
	.byte	'?'
	.ascii	"_temp_1925\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1924\0"
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
_Label_3086:
	push	r0
	sub	r1,1,r1
	bne	_Label_3086
	mov	1508,r13		! source line 1508
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1512,r13		! source line 1512
	mov	"\0\0AS",r10
!   _temp_1939 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1939 [entry ] into _temp_1940
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
!   _temp_1943 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1943 [entry ] into _temp_1944
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
!   Data Move: _temp_1942 = *_temp_1944  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1941 = _temp_1942 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1940 = _temp_1941  (sizeInBytes=4)
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
	.word	_Label_1945
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1946
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1947
	.word	12
	.word	4
	.word	_Label_1948
	.word	-12
	.word	4
	.word	_Label_1949
	.word	-16
	.word	4
	.word	_Label_1950
	.word	-20
	.word	4
	.word	_Label_1951
	.word	-24
	.word	4
	.word	_Label_1952
	.word	-28
	.word	4
	.word	_Label_1953
	.word	-32
	.word	4
	.word	0
_Label_1945:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1946:
	.ascii	"Pself\0"
	.align
_Label_1947:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1948:
	.byte	'?'
	.ascii	"_temp_1944\0"
	.align
_Label_1949:
	.byte	'?'
	.ascii	"_temp_1943\0"
	.align
_Label_1950:
	.byte	'?'
	.ascii	"_temp_1942\0"
	.align
_Label_1951:
	.byte	'?'
	.ascii	"_temp_1941\0"
	.align
_Label_1952:
	.byte	'?'
	.ascii	"_temp_1940\0"
	.align
_Label_1953:
	.byte	'?'
	.ascii	"_temp_1939\0"
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
_Label_3087:
	push	r0
	sub	r1,1,r1
	bne	_Label_3087
	mov	1517,r13		! source line 1517
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1955 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1955 [0 ] into _temp_1956
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
!   _temp_1954 = _temp_1956		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1957 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1954  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1957  sizeInBytes=4
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
	.word	_Label_1958
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1959
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1960
	.word	-12
	.word	4
	.word	_Label_1961
	.word	-16
	.word	4
	.word	_Label_1962
	.word	-20
	.word	4
	.word	_Label_1963
	.word	-24
	.word	4
	.word	0
_Label_1958:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1959:
	.ascii	"Pself\0"
	.align
_Label_1960:
	.byte	'?'
	.ascii	"_temp_1957\0"
	.align
_Label_1961:
	.byte	'?'
	.ascii	"_temp_1956\0"
	.align
_Label_1962:
	.byte	'?'
	.ascii	"_temp_1955\0"
	.align
_Label_1963:
	.byte	'?'
	.ascii	"_temp_1954\0"
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
_Label_3088:
	push	r0
	sub	r1,1,r1
	bne	_Label_3088
	mov	1528,r13		! source line 1528
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1543,r13		! source line 1543
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1964
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1964
	jmp	_Label_1965
_Label_1964:
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
	jmp	_Label_1966
_Label_1965:
! ELSE...
	mov	1545,r13		! source line 1545
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1545,r13		! source line 1545
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1968		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1968
!	jmp	_Label_1967
_Label_1967:
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
_Label_1968:
! END IF...
_Label_1966:
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
_Label_1969:
!	jmp	_Label_1970
_Label_1970:
	mov	1552,r13		! source line 1552
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1553,r13		! source line 1553
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1973		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1973
!	jmp	_Label_1972
_Label_1972:
! THEN...
	mov	1554,r13		! source line 1554
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1974 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1974  sizeInBytes=4
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
_Label_1973:
! IF STATEMENT...
	mov	1557,r13		! source line 1557
	mov	"\0\0IF",r10
	mov	1557,r13		! source line 1557
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1978) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1977  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1977 then goto _Label_1976 else goto _Label_1975
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1975
	jmp	_Label_1976
_Label_1975:
! THEN...
	mov	1558,r13		! source line 1558
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1979 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1979  sizeInBytes=4
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
_Label_1976:
! ASSIGNMENT STATEMENT...
	mov	1561,r13		! source line 1561
	mov	"\0\0AS",r10
	mov	1561,r13		! source line 1561
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1981) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1980  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1980 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1563,r13		! source line 1563
	mov	"\0\0WH",r10
_Label_1982:
!   if offset >= 8192 then goto _Label_1984		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1984
!	jmp	_Label_1983
_Label_1983:
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
!   Data Move: _temp_1985 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_1985  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_1987		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1987
!	jmp	_Label_1986
_Label_1986:
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
_Label_1987:
! END WHILE...
	jmp	_Label_1982
_Label_1984:
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
	jmp	_Label_1969
_Label_1971:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_1988
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1989
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1990
	.word	12
	.word	4
	.word	_Label_1991
	.word	16
	.word	4
	.word	_Label_1992
	.word	20
	.word	4
	.word	_Label_1993
	.word	-9
	.word	1
	.word	_Label_1994
	.word	-16
	.word	4
	.word	_Label_1995
	.word	-20
	.word	4
	.word	_Label_1996
	.word	-24
	.word	4
	.word	_Label_1997
	.word	-28
	.word	4
	.word	_Label_1998
	.word	-10
	.word	1
	.word	_Label_1999
	.word	-32
	.word	4
	.word	_Label_2000
	.word	-36
	.word	4
	.word	_Label_2001
	.word	-40
	.word	4
	.word	_Label_2002
	.word	-44
	.word	4
	.word	_Label_2003
	.word	-48
	.word	4
	.word	0
_Label_1988:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_1989:
	.ascii	"Pself\0"
	.align
_Label_1990:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1991:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1992:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1993:
	.byte	'C'
	.ascii	"_temp_1985\0"
	.align
_Label_1994:
	.byte	'?'
	.ascii	"_temp_1981\0"
	.align
_Label_1995:
	.byte	'?'
	.ascii	"_temp_1980\0"
	.align
_Label_1996:
	.byte	'?'
	.ascii	"_temp_1979\0"
	.align
_Label_1997:
	.byte	'?'
	.ascii	"_temp_1978\0"
	.align
_Label_1998:
	.byte	'C'
	.ascii	"_temp_1977\0"
	.align
_Label_1999:
	.byte	'?'
	.ascii	"_temp_1974\0"
	.align
_Label_2000:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2001:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2002:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2003:
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
_Label_3089:
	push	r0
	sub	r1,1,r1
	bne	_Label_3089
	mov	1582,r13		! source line 1582
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1593,r13		! source line 1593
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2004
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2004
	jmp	_Label_2005
_Label_2004:
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
	jmp	_Label_2006
_Label_2005:
! ELSE...
	mov	1595,r13		! source line 1595
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1595,r13		! source line 1595
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2008		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2008
!	jmp	_Label_2007
_Label_2007:
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
_Label_2008:
! END IF...
_Label_2006:
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
_Label_2009:
!	jmp	_Label_2010
_Label_2010:
	mov	1600,r13		! source line 1600
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1601,r13		! source line 1601
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2015		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2015
	jmp	_Label_2012
_Label_2015:
	mov	1602,r13		! source line 1602
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2017) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2016  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2016 then goto _Label_2014 else goto _Label_2012
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2012
	jmp	_Label_2014
_Label_2014:
	mov	1603,r13		! source line 1603
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2019) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2018  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2018 then goto _Label_2013 else goto _Label_2012
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2012
	jmp	_Label_2013
_Label_2012:
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
_Label_2013:
! ASSIGNMENT STATEMENT...
	mov	1606,r13		! source line 1606
	mov	"\0\0AS",r10
	mov	1606,r13		! source line 1606
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2021) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2020  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2020 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1607,r13		! source line 1607
	mov	"\0\0WH",r10
_Label_2022:
!   if offset >= 8192 then goto _Label_2024		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2024
!	jmp	_Label_2023
_Label_2023:
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
!   Data Move: _temp_2025 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2025  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_2027		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2027
!	jmp	_Label_2026
_Label_2026:
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
_Label_2027:
! END WHILE...
	jmp	_Label_2022
_Label_2024:
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
	jmp	_Label_2009
_Label_2011:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2028
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2029
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2030
	.word	12
	.word	4
	.word	_Label_2031
	.word	16
	.word	4
	.word	_Label_2032
	.word	20
	.word	4
	.word	_Label_2033
	.word	-9
	.word	1
	.word	_Label_2034
	.word	-16
	.word	4
	.word	_Label_2035
	.word	-20
	.word	4
	.word	_Label_2036
	.word	-24
	.word	4
	.word	_Label_2037
	.word	-10
	.word	1
	.word	_Label_2038
	.word	-28
	.word	4
	.word	_Label_2039
	.word	-11
	.word	1
	.word	_Label_2040
	.word	-32
	.word	4
	.word	_Label_2041
	.word	-36
	.word	4
	.word	_Label_2042
	.word	-40
	.word	4
	.word	_Label_2043
	.word	-44
	.word	4
	.word	0
_Label_2028:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2029:
	.ascii	"Pself\0"
	.align
_Label_2030:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2031:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2032:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2033:
	.byte	'C'
	.ascii	"_temp_2025\0"
	.align
_Label_2034:
	.byte	'?'
	.ascii	"_temp_2021\0"
	.align
_Label_2035:
	.byte	'?'
	.ascii	"_temp_2020\0"
	.align
_Label_2036:
	.byte	'?'
	.ascii	"_temp_2019\0"
	.align
_Label_2037:
	.byte	'C'
	.ascii	"_temp_2018\0"
	.align
_Label_2038:
	.byte	'?'
	.ascii	"_temp_2017\0"
	.align
_Label_2039:
	.byte	'C'
	.ascii	"_temp_2016\0"
	.align
_Label_2040:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2041:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2042:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2043:
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
_Label_3090:
	push	r0
	sub	r1,1,r1
	bne	_Label_3090
	mov	1624,r13		! source line 1624
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1648,r13		! source line 1648
	mov	"\0\0IF",r10
	mov	1648,r13		! source line 1648
	mov	"\0\0SE",r10
!   _temp_2047 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2048) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2047  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2046  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2046 >= 4 then goto _Label_2045		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2045
!	jmp	_Label_2044
_Label_2044:
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
_Label_2045:
! IF STATEMENT...
	mov	1655,r13		! source line 1655
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2050		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2050
!	jmp	_Label_2049
_Label_2049:
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
_Label_2050:
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
!   _temp_2053 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2052 = _temp_2053 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2054 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2055) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2052  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2054  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2051  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2051  (sizeInBytes=4)
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
	.word	_Label_2056
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2057
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2058
	.word	12
	.word	4
	.word	_Label_2059
	.word	16
	.word	4
	.word	_Label_2060
	.word	20
	.word	4
	.word	_Label_2061
	.word	-12
	.word	4
	.word	_Label_2062
	.word	-16
	.word	4
	.word	_Label_2063
	.word	-20
	.word	4
	.word	_Label_2064
	.word	-24
	.word	4
	.word	_Label_2065
	.word	-28
	.word	4
	.word	_Label_2066
	.word	-32
	.word	4
	.word	_Label_2067
	.word	-36
	.word	4
	.word	_Label_2068
	.word	-40
	.word	4
	.word	_Label_2069
	.word	-44
	.word	4
	.word	0
_Label_2056:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2057:
	.ascii	"Pself\0"
	.align
_Label_2058:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2059:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2060:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2061:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2062:
	.byte	'?'
	.ascii	"_temp_2054\0"
	.align
_Label_2063:
	.byte	'?'
	.ascii	"_temp_2053\0"
	.align
_Label_2064:
	.byte	'?'
	.ascii	"_temp_2052\0"
	.align
_Label_2065:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
_Label_2066:
	.byte	'?'
	.ascii	"_temp_2048\0"
	.align
_Label_2067:
	.byte	'?'
	.ascii	"_temp_2047\0"
	.align
_Label_2068:
	.byte	'?'
	.ascii	"_temp_2046\0"
	.align
_Label_2069:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2070
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2070:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2071
	.word	_sourceFileName
	.word	315		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2071:
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
_Label_3091:
	push	r0
	sub	r1,1,r1
	bne	_Label_3091
	mov	2096,r13		! source line 2096
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2072 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2072  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2097,r13		! source line 2097
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2098,r13		! source line 2098
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2099,r13		! source line 2099
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2100,r13		! source line 2100
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2101,r13		! source line 2101
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2102,r13		! source line 2102
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2103,r13		! source line 2103
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2104,r13		! source line 2104
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
	mov	2105,r13		! source line 2105
	mov	"\0\0SE",r10
!   _temp_2074 = &semUsedInSynchMethods
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
	mov	2106,r13		! source line 2106
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
	mov	2107,r13		! source line 2107
	mov	"\0\0SE",r10
!   _temp_2076 = &diskBusy
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
	mov	2107,r13		! source line 2107
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
	.word	_Label_2077
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2078
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2079
	.word	-12
	.word	4
	.word	_Label_2080
	.word	-16
	.word	4
	.word	_Label_2081
	.word	-20
	.word	4
	.word	_Label_2082
	.word	-24
	.word	4
	.word	_Label_2083
	.word	-28
	.word	4
	.word	0
_Label_2077:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2078:
	.ascii	"Pself\0"
	.align
_Label_2079:
	.byte	'?'
	.ascii	"_temp_2076\0"
	.align
_Label_2080:
	.byte	'?'
	.ascii	"_temp_2075\0"
	.align
_Label_2081:
	.byte	'?'
	.ascii	"_temp_2074\0"
	.align
_Label_2082:
	.byte	'?'
	.ascii	"_temp_2073\0"
	.align
_Label_2083:
	.byte	'?'
	.ascii	"_temp_2072\0"
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
_Label_3092:
	push	r0
	sub	r1,1,r1
	bne	_Label_3092
	mov	2112,r13		! source line 2112
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2125,r13		! source line 2125
	mov	"\0\0SE",r10
!   _temp_2084 = &diskBusy
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
	mov	2126,r13		! source line 2126
	mov	"\0\0WH",r10
_Label_2085:
!	jmp	_Label_2086
_Label_2086:
	mov	2126,r13		! source line 2126
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2128,r13		! source line 2128
	mov	"\0\0SE",r10
!   _temp_2088 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2089) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2088  sizeInBytes=4
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
	mov	2130,r13		! source line 2130
	mov	"\0\0SE",r10
!   _temp_2090 = &semUsedInSynchMethods
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
	mov	2133,r13		! source line 2133
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2099 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2093
	cmp	r1,2
	be	_Label_2094
	cmp	r1,3
	be	_Label_2095
	cmp	r1,4
	be	_Label_2096
	cmp	r1,5
	be	_Label_2097
	cmp	r1,6
	be	_Label_2098
	jmp	_Label_2091
! CASE 1...
_Label_2093:
! SEND STATEMENT...
	mov	2135,r13		! source line 2135
	mov	"\0\0SE",r10
!   _temp_2100 = &diskBusy
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
	mov	2136,r13		! source line 2136
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2094:
! CALL STATEMENT...
!   _temp_2101 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2101  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2138,r13		! source line 2138
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2095:
! CALL STATEMENT...
!   _temp_2102 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2102  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2140,r13		! source line 2140
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2096:
! CALL STATEMENT...
!   _temp_2103 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2103  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2142,r13		! source line 2142
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2097:
! BREAK STATEMENT...
	mov	2146,r13		! source line 2146
	mov	"\0\0BR",r10
	jmp	_Label_2092
! CASE 6...
_Label_2098:
! CALL STATEMENT...
!   _temp_2104 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2104  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2148,r13		! source line 2148
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2091:
! CALL STATEMENT...
!   _temp_2105 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2105  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2150,r13		! source line 2150
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2092:
! END WHILE...
	jmp	_Label_2085
_Label_2087:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2106
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2107
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2108
	.word	12
	.word	4
	.word	_Label_2109
	.word	16
	.word	4
	.word	_Label_2110
	.word	20
	.word	4
	.word	_Label_2111
	.word	-12
	.word	4
	.word	_Label_2112
	.word	-16
	.word	4
	.word	_Label_2113
	.word	-20
	.word	4
	.word	_Label_2114
	.word	-24
	.word	4
	.word	_Label_2115
	.word	-28
	.word	4
	.word	_Label_2116
	.word	-32
	.word	4
	.word	_Label_2117
	.word	-36
	.word	4
	.word	_Label_2118
	.word	-40
	.word	4
	.word	_Label_2119
	.word	-44
	.word	4
	.word	_Label_2120
	.word	-48
	.word	4
	.word	_Label_2121
	.word	-52
	.word	4
	.word	0
_Label_2106:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2107:
	.ascii	"Pself\0"
	.align
_Label_2108:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2109:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2110:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2111:
	.byte	'?'
	.ascii	"_temp_2105\0"
	.align
_Label_2112:
	.byte	'?'
	.ascii	"_temp_2104\0"
	.align
_Label_2113:
	.byte	'?'
	.ascii	"_temp_2103\0"
	.align
_Label_2114:
	.byte	'?'
	.ascii	"_temp_2102\0"
	.align
_Label_2115:
	.byte	'?'
	.ascii	"_temp_2101\0"
	.align
_Label_2116:
	.byte	'?'
	.ascii	"_temp_2100\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2099\0"
	.align
_Label_2118:
	.byte	'?'
	.ascii	"_temp_2090\0"
	.align
_Label_2119:
	.byte	'?'
	.ascii	"_temp_2089\0"
	.align
_Label_2120:
	.byte	'?'
	.ascii	"_temp_2088\0"
	.align
_Label_2121:
	.byte	'?'
	.ascii	"_temp_2084\0"
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
	mov	2159,r13		! source line 2159
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2174,r13		! source line 2174
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2177,r13		! source line 2177
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
	mov	2178,r13		! source line 2178
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
	mov	2179,r13		! source line 2179
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
	mov	2180,r13		! source line 2180
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
	mov	2180,r13		! source line 2180
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
	.word	_Label_2122
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2123
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2124
	.word	12
	.word	4
	.word	_Label_2125
	.word	16
	.word	4
	.word	_Label_2126
	.word	20
	.word	4
	.word	_Label_2127
	.word	24
	.word	4
	.word	0
_Label_2122:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2123:
	.ascii	"Pself\0"
	.align
_Label_2124:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2125:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2126:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2127:
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
_Label_3093:
	push	r0
	sub	r1,1,r1
	bne	_Label_3093
	mov	2185,r13		! source line 2185
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2197,r13		! source line 2197
	mov	"\0\0SE",r10
!   _temp_2128 = &diskBusy
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
	mov	2198,r13		! source line 2198
	mov	"\0\0WH",r10
_Label_2129:
!	jmp	_Label_2130
_Label_2130:
	mov	2198,r13		! source line 2198
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2199,r13		! source line 2199
	mov	"\0\0SE",r10
!   _temp_2132 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2133) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2132  sizeInBytes=4
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
	mov	2201,r13		! source line 2201
	mov	"\0\0SE",r10
!   _temp_2134 = &semUsedInSynchMethods
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
	mov	2204,r13		! source line 2204
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2143 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2137
	cmp	r1,2
	be	_Label_2138
	cmp	r1,3
	be	_Label_2139
	cmp	r1,4
	be	_Label_2140
	cmp	r1,5
	be	_Label_2141
	cmp	r1,6
	be	_Label_2142
	jmp	_Label_2135
! CASE 1...
_Label_2137:
! SEND STATEMENT...
	mov	2206,r13		! source line 2206
	mov	"\0\0SE",r10
!   _temp_2144 = &diskBusy
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
	mov	2207,r13		! source line 2207
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2138:
! CALL STATEMENT...
!   _temp_2145 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2145  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2209,r13		! source line 2209
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2139:
! CALL STATEMENT...
!   _temp_2146 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2146  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2211,r13		! source line 2211
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2140:
! CALL STATEMENT...
!   _temp_2147 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2147  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2213,r13		! source line 2213
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2141:
! BREAK STATEMENT...
	mov	2217,r13		! source line 2217
	mov	"\0\0BR",r10
	jmp	_Label_2136
! CASE 6...
_Label_2142:
! CALL STATEMENT...
!   _temp_2148 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2148  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2219,r13		! source line 2219
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2135:
! CALL STATEMENT...
!   _temp_2149 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2149  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2221,r13		! source line 2221
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2136:
! END WHILE...
	jmp	_Label_2129
_Label_2131:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2150
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2151
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2152
	.word	12
	.word	4
	.word	_Label_2153
	.word	16
	.word	4
	.word	_Label_2154
	.word	20
	.word	4
	.word	_Label_2155
	.word	-12
	.word	4
	.word	_Label_2156
	.word	-16
	.word	4
	.word	_Label_2157
	.word	-20
	.word	4
	.word	_Label_2158
	.word	-24
	.word	4
	.word	_Label_2159
	.word	-28
	.word	4
	.word	_Label_2160
	.word	-32
	.word	4
	.word	_Label_2161
	.word	-36
	.word	4
	.word	_Label_2162
	.word	-40
	.word	4
	.word	_Label_2163
	.word	-44
	.word	4
	.word	_Label_2164
	.word	-48
	.word	4
	.word	_Label_2165
	.word	-52
	.word	4
	.word	0
_Label_2150:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2151:
	.ascii	"Pself\0"
	.align
_Label_2152:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2153:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2154:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2155:
	.byte	'?'
	.ascii	"_temp_2149\0"
	.align
_Label_2156:
	.byte	'?'
	.ascii	"_temp_2148\0"
	.align
_Label_2157:
	.byte	'?'
	.ascii	"_temp_2147\0"
	.align
_Label_2158:
	.byte	'?'
	.ascii	"_temp_2146\0"
	.align
_Label_2159:
	.byte	'?'
	.ascii	"_temp_2145\0"
	.align
_Label_2160:
	.byte	'?'
	.ascii	"_temp_2144\0"
	.align
_Label_2161:
	.byte	'?'
	.ascii	"_temp_2143\0"
	.align
_Label_2162:
	.byte	'?'
	.ascii	"_temp_2134\0"
	.align
_Label_2163:
	.byte	'?'
	.ascii	"_temp_2133\0"
	.align
_Label_2164:
	.byte	'?'
	.ascii	"_temp_2132\0"
	.align
_Label_2165:
	.byte	'?'
	.ascii	"_temp_2128\0"
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
	mov	2230,r13		! source line 2230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2245,r13		! source line 2245
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2247,r13		! source line 2247
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
	mov	2248,r13		! source line 2248
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
	mov	2249,r13		! source line 2249
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
	mov	2250,r13		! source line 2250
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
	mov	2250,r13		! source line 2250
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
	.word	_Label_2166
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2167
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2168
	.word	12
	.word	4
	.word	_Label_2169
	.word	16
	.word	4
	.word	_Label_2170
	.word	20
	.word	4
	.word	_Label_2171
	.word	24
	.word	4
	.word	0
_Label_2166:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2167:
	.ascii	"Pself\0"
	.align
_Label_2168:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2169:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2170:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2171:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2172
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
_Label_2172:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2173
	.word	_sourceFileName
	.word	338		! line number
	.word	960		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2173:
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
_Label_3094:
	push	r0
	sub	r1,1,r1
	bne	_Label_3094
	mov	2261,r13		! source line 2261
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2174 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2174  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2268,r13		! source line 2268
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2269,r13		! source line 2269
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
	mov	2270,r13		! source line 2270
	mov	"\0\0SE",r10
!   _temp_2176 = &fileManagerLock
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
	mov	2273,r13		! source line 2273
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
	mov	2274,r13		! source line 2274
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=96)
	load	[r14+8],r4
	add	r4,428,r4
	mov	24,r3
_Label_3095:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3095
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+428]
! SEND STATEMENT...
	mov	2275,r13		! source line 2275
	mov	"\0\0SE",r10
!   _temp_2179 = &anFCBBecameFree
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
	mov	2276,r13		! source line 2276
	mov	"\0\0AS",r10
!   _temp_2180 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2182 = &_temp_2181
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2182 = _temp_2182 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2184 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3096:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3096
!   _temp_2184 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2186:
!   Data Move: *_temp_2182 = _temp_2184  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3097:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3097
!   _temp_2182 = _temp_2182 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2183 = _temp_2183 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2183) then goto _Label_2186
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2186
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2187 = &_temp_2181
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3098
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3098:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2180 = *_temp_2187  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3099:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3099
! FOR STATEMENT...
	mov	2278,r13		! source line 2278
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2192 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2193 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2192  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2188:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2193 then goto _Label_2191		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2191
_Label_2189:
	mov	2278,r13		! source line 2278
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2279,r13		! source line 2279
	mov	"\0\0AS",r10
!   _temp_2194 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2194 [i ] into _temp_2195
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
!   _temp_2196 = _temp_2195 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2196 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2280,r13		! source line 2280
	mov	"\0\0SE",r10
!   _temp_2197 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2197 [i ] into _temp_2198
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
	mov	2281,r13		! source line 2281
	mov	"\0\0SE",r10
!   _temp_2200 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2200 [i ] into _temp_2201
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
!   _temp_2199 = _temp_2201		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2202 = &fcbFreeList
	load	[r14+8],r1
	add	r1,524,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2199  sizeInBytes=4
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
_Label_2190:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2188
! END FOR
_Label_2191:
! ASSIGNMENT STATEMENT...
	mov	2285,r13		! source line 2285
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
	mov	2286,r13		! source line 2286
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=96)
	load	[r14+8],r4
	add	r4,820,r4
	mov	24,r3
_Label_3100:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3100
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+820]
! SEND STATEMENT...
	mov	2287,r13		! source line 2287
	mov	"\0\0SE",r10
!   _temp_2205 = &anOpenFileBecameFree
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
	mov	2288,r13		! source line 2288
	mov	"\0\0AS",r10
!   _temp_2206 = &openFileTable
	load	[r14+8],r1
	add	r1,536,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2208 = &_temp_2207
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2208 = _temp_2208 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2210 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3101:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3101
!   _temp_2210 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2212:
!   Data Move: *_temp_2208 = _temp_2210  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3102:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3102
!   _temp_2208 = _temp_2208 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2209 = _temp_2209 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2209) then goto _Label_2212
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2212
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2213 = &_temp_2207
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3103
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3103:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2206 = *_temp_2213  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3104:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3104
! FOR STATEMENT...
	mov	2290,r13		! source line 2290
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2218 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2219 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2218  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2214:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2219 then goto _Label_2217		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2217
_Label_2215:
	mov	2290,r13		! source line 2290
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2291,r13		! source line 2291
	mov	"\0\0AS",r10
!   _temp_2220 = &openFileTable
	load	[r14+8],r1
	add	r1,536,r1
	store	r1,[r14+-56]
!   Move address of _temp_2220 [i ] into _temp_2221
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
!   _temp_2222 = _temp_2221 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2222 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2292,r13		! source line 2292
	mov	"\0\0SE",r10
!   _temp_2224 = &openFileTable
	load	[r14+8],r1
	add	r1,536,r1
	store	r1,[r14+-40]
!   Move address of _temp_2224 [i ] into _temp_2225
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
!   _temp_2223 = _temp_2225		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2226 = &openFileFreeList
	load	[r14+8],r1
	add	r1,916,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2223  sizeInBytes=4
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
_Label_2216:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2214
! END FOR
_Label_2217:
! ASSIGNMENT STATEMENT...
	mov	2296,r13		! source line 2296
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,932,r4
	mov	7,r3
_Label_3105:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3105
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+932]
! ASSIGNMENT STATEMENT...
	mov	2297,r13		! source line 2297
	mov	"\0\0AS",r10
!   _temp_2228 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,932,r1
	store	r1,[r14+-24]
!   _temp_2229 = _temp_2228 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2229 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2302,r13		! source line 2302
	mov	"\0\0AS",r10
	mov	2302,r13		! source line 2302
	mov	"\0\0SE",r10
!   _temp_2230 = &_P_Kernel_frameManager
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
	mov	2303,r13		! source line 2303
	mov	"\0\0SE",r10
!   _temp_2231 = &_P_Kernel_diskDriver
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
	mov	2303,r13		! source line 2303
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
	.word	_Label_2232
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2233
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2234
	.word	-12
	.word	4
	.word	_Label_2235
	.word	-16
	.word	4
	.word	_Label_2236
	.word	-20
	.word	4
	.word	_Label_2237
	.word	-24
	.word	4
	.word	_Label_2238
	.word	-28
	.word	4
	.word	_Label_2239
	.word	-32
	.word	4
	.word	_Label_2240
	.word	-36
	.word	4
	.word	_Label_2241
	.word	-40
	.word	4
	.word	_Label_2242
	.word	-44
	.word	4
	.word	_Label_2243
	.word	-48
	.word	4
	.word	_Label_2244
	.word	-52
	.word	4
	.word	_Label_2245
	.word	-56
	.word	4
	.word	_Label_2246
	.word	-60
	.word	4
	.word	_Label_2247
	.word	-64
	.word	4
	.word	_Label_2248
	.word	-68
	.word	4
	.word	_Label_2249
	.word	-72
	.word	4
	.word	_Label_2250
	.word	-100
	.word	28
	.word	_Label_2251
	.word	-104
	.word	4
	.word	_Label_2252
	.word	-108
	.word	4
	.word	_Label_2253
	.word	-392
	.word	284
	.word	_Label_2254
	.word	-396
	.word	4
	.word	_Label_2255
	.word	-400
	.word	4
	.word	_Label_2256
	.word	-404
	.word	4
	.word	_Label_2257
	.word	-408
	.word	4
	.word	_Label_2258
	.word	-412
	.word	4
	.word	_Label_2259
	.word	-416
	.word	4
	.word	_Label_2260
	.word	-420
	.word	4
	.word	_Label_2261
	.word	-424
	.word	4
	.word	_Label_2262
	.word	-428
	.word	4
	.word	_Label_2263
	.word	-432
	.word	4
	.word	_Label_2264
	.word	-436
	.word	4
	.word	_Label_2265
	.word	-440
	.word	4
	.word	_Label_2266
	.word	-444
	.word	4
	.word	_Label_2267
	.word	-448
	.word	4
	.word	_Label_2268
	.word	-452
	.word	4
	.word	_Label_2269
	.word	-456
	.word	4
	.word	_Label_2270
	.word	-460
	.word	4
	.word	_Label_2271
	.word	-500
	.word	40
	.word	_Label_2272
	.word	-504
	.word	4
	.word	_Label_2273
	.word	-508
	.word	4
	.word	_Label_2274
	.word	-912
	.word	404
	.word	_Label_2275
	.word	-916
	.word	4
	.word	_Label_2276
	.word	-920
	.word	4
	.word	_Label_2277
	.word	-924
	.word	4
	.word	_Label_2278
	.word	-928
	.word	4
	.word	_Label_2279
	.word	-932
	.word	4
	.word	_Label_2280
	.word	-936
	.word	4
	.word	_Label_2281
	.word	-940
	.word	4
	.word	_Label_2282
	.word	-944
	.word	4
	.word	0
_Label_2232:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2233:
	.ascii	"Pself\0"
	.align
_Label_2234:
	.byte	'?'
	.ascii	"_temp_2231\0"
	.align
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2230\0"
	.align
_Label_2236:
	.byte	'?'
	.ascii	"_temp_2229\0"
	.align
_Label_2237:
	.byte	'?'
	.ascii	"_temp_2228\0"
	.align
_Label_2238:
	.byte	'?'
	.ascii	"_temp_2227\0"
	.align
_Label_2239:
	.byte	'?'
	.ascii	"_temp_2226\0"
	.align
_Label_2240:
	.byte	'?'
	.ascii	"_temp_2225\0"
	.align
_Label_2241:
	.byte	'?'
	.ascii	"_temp_2224\0"
	.align
_Label_2242:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2243:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2244:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2245:
	.byte	'?'
	.ascii	"_temp_2220\0"
	.align
_Label_2246:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2247:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
_Label_2248:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2249:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2210\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2209\0"
	.align
_Label_2252:
	.byte	'?'
	.ascii	"_temp_2208\0"
	.align
_Label_2253:
	.byte	'?'
	.ascii	"_temp_2207\0"
	.align
_Label_2254:
	.byte	'?'
	.ascii	"_temp_2206\0"
	.align
_Label_2255:
	.byte	'?'
	.ascii	"_temp_2205\0"
	.align
_Label_2256:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2257:
	.byte	'?'
	.ascii	"_temp_2203\0"
	.align
_Label_2258:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
_Label_2259:
	.byte	'?'
	.ascii	"_temp_2201\0"
	.align
_Label_2260:
	.byte	'?'
	.ascii	"_temp_2200\0"
	.align
_Label_2261:
	.byte	'?'
	.ascii	"_temp_2199\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2198\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2197\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2196\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2195\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2194\0"
	.align
_Label_2267:
	.byte	'?'
	.ascii	"_temp_2193\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2192\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2187\0"
	.align
_Label_2270:
	.byte	'?'
	.ascii	"_temp_2185\0"
	.align
_Label_2271:
	.byte	'?'
	.ascii	"_temp_2184\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2183\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2182\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2181\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2180\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2179\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2178\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2177\0"
	.align
_Label_2279:
	.byte	'?'
	.ascii	"_temp_2176\0"
	.align
_Label_2280:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2281:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2282:
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
_Label_3106:
	push	r0
	sub	r1,1,r1
	bne	_Label_3106
	mov	2310,r13		! source line 2310
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2312,r13		! source line 2312
	mov	"\0\0SE",r10
!   _temp_2283 = &fileManagerLock
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
!   _temp_2284 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2284  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2313,r13		! source line 2313
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2314,r13		! source line 2314
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2289 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2290 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2289  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2285:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2290 then goto _Label_2288		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2288
_Label_2286:
	mov	2314,r13		! source line 2314
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2291 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2291  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2315,r13		! source line 2315
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2316,r13		! source line 2316
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2292 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2292  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2317,r13		! source line 2317
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2318,r13		! source line 2318
	mov	"\0\0SE",r10
!   _temp_2293 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2293 [i ] into _temp_2294
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
_Label_2287:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2285
! END FOR
_Label_2288:
! CALL STATEMENT...
!   _temp_2295 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2295  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2320,r13		! source line 2320
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2321,r13		! source line 2321
	mov	"\0\0SE",r10
!   _temp_2296 = _function_215_printFCB
	set	_function_215_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2297 = &fcbFreeList
	load	[r14+8],r1
	add	r1,524,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2296  sizeInBytes=4
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
	mov	2322,r13		! source line 2322
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2298 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2298  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2323,r13		! source line 2323
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2324,r13		! source line 2324
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2303 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2304 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2303  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2299:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2304 then goto _Label_2302		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2302
_Label_2300:
	mov	2324,r13		! source line 2324
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2305 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2305  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2325,r13		! source line 2325
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2326,r13		! source line 2326
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2306 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2306  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2327,r13		! source line 2327
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2308 = &openFileTable
	load	[r14+8],r1
	add	r1,536,r1
	store	r1,[r14+-44]
!   Move address of _temp_2308 [i ] into _temp_2309
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
!   _temp_2307 = _temp_2309		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2307  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2328,r13		! source line 2328
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2310 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2310  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2329,r13		! source line 2329
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2330,r13		! source line 2330
	mov	"\0\0SE",r10
!   _temp_2311 = &openFileTable
	load	[r14+8],r1
	add	r1,536,r1
	store	r1,[r14+-32]
!   Move address of _temp_2311 [i ] into _temp_2312
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
_Label_2301:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2299
! END FOR
_Label_2302:
! CALL STATEMENT...
!   _temp_2313 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2313  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2332,r13		! source line 2332
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2333,r13		! source line 2333
	mov	"\0\0SE",r10
!   _temp_2314 = _function_214_printOpen
	set	_function_214_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2315 = &openFileFreeList
	load	[r14+8],r1
	add	r1,916,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2314  sizeInBytes=4
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
	mov	2334,r13		! source line 2334
	mov	"\0\0SE",r10
!   _temp_2316 = &fileManagerLock
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
	mov	2334,r13		! source line 2334
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
	.word	_Label_2317
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2318
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2319
	.word	-12
	.word	4
	.word	_Label_2320
	.word	-16
	.word	4
	.word	_Label_2321
	.word	-20
	.word	4
	.word	_Label_2322
	.word	-24
	.word	4
	.word	_Label_2323
	.word	-28
	.word	4
	.word	_Label_2324
	.word	-32
	.word	4
	.word	_Label_2325
	.word	-36
	.word	4
	.word	_Label_2326
	.word	-40
	.word	4
	.word	_Label_2327
	.word	-44
	.word	4
	.word	_Label_2328
	.word	-48
	.word	4
	.word	_Label_2329
	.word	-52
	.word	4
	.word	_Label_2330
	.word	-56
	.word	4
	.word	_Label_2331
	.word	-60
	.word	4
	.word	_Label_2332
	.word	-64
	.word	4
	.word	_Label_2333
	.word	-68
	.word	4
	.word	_Label_2334
	.word	-72
	.word	4
	.word	_Label_2335
	.word	-76
	.word	4
	.word	_Label_2336
	.word	-80
	.word	4
	.word	_Label_2337
	.word	-84
	.word	4
	.word	_Label_2338
	.word	-88
	.word	4
	.word	_Label_2339
	.word	-92
	.word	4
	.word	_Label_2340
	.word	-96
	.word	4
	.word	_Label_2341
	.word	-100
	.word	4
	.word	_Label_2342
	.word	-104
	.word	4
	.word	_Label_2343
	.word	-108
	.word	4
	.word	_Label_2344
	.word	-112
	.word	4
	.word	_Label_2345
	.word	-116
	.word	4
	.word	0
_Label_2317:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2318:
	.ascii	"Pself\0"
	.align
_Label_2319:
	.byte	'?'
	.ascii	"_temp_2316\0"
	.align
_Label_2320:
	.byte	'?'
	.ascii	"_temp_2315\0"
	.align
_Label_2321:
	.byte	'?'
	.ascii	"_temp_2314\0"
	.align
_Label_2322:
	.byte	'?'
	.ascii	"_temp_2313\0"
	.align
_Label_2323:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2324:
	.byte	'?'
	.ascii	"_temp_2311\0"
	.align
_Label_2325:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2326:
	.byte	'?'
	.ascii	"_temp_2309\0"
	.align
_Label_2327:
	.byte	'?'
	.ascii	"_temp_2308\0"
	.align
_Label_2328:
	.byte	'?'
	.ascii	"_temp_2307\0"
	.align
_Label_2329:
	.byte	'?'
	.ascii	"_temp_2306\0"
	.align
_Label_2330:
	.byte	'?'
	.ascii	"_temp_2305\0"
	.align
_Label_2331:
	.byte	'?'
	.ascii	"_temp_2304\0"
	.align
_Label_2332:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2333:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2334:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2296\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2294\0"
	.align
_Label_2338:
	.byte	'?'
	.ascii	"_temp_2293\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2292\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2291\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2290\0"
	.align
_Label_2342:
	.byte	'?'
	.ascii	"_temp_2289\0"
	.align
_Label_2343:
	.byte	'?'
	.ascii	"_temp_2284\0"
	.align
_Label_2344:
	.byte	'?'
	.ascii	"_temp_2283\0"
	.align
_Label_2345:
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
_Label_3107:
	push	r0
	sub	r1,1,r1
	bne	_Label_3107
	mov	2339,r13		! source line 2339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2355,r13		! source line 2355
	mov	"\0\0AS",r10
	mov	2355,r13		! source line 2355
	mov	"\0\0SE",r10
!   _temp_2346 = &_P_Kernel_fileManager
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
	mov	2356,r13		! source line 2356
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2347
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2347
	jmp	_Label_2348
_Label_2347:
! THEN...
	mov	2357,r13		! source line 2357
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2357,r13		! source line 2357
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2348:
! SEND STATEMENT...
	mov	2361,r13		! source line 2361
	mov	"\0\0SE",r10
!   _temp_2349 = &fileManagerLock
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
	mov	2362,r13		! source line 2362
	mov	"\0\0WH",r10
_Label_2350:
	mov	2362,r13		! source line 2362
	mov	"\0\0SE",r10
!   _temp_2353 = &openFileFreeList
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
!   if result==true then goto _Label_2351 else goto _Label_2352
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2352
	jmp	_Label_2351
_Label_2351:
	mov	2362,r13		! source line 2362
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2363,r13		! source line 2363
	mov	"\0\0SE",r10
!   _temp_2354 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2355 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,820,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2354  sizeInBytes=4
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
	jmp	_Label_2350
_Label_2352:
! ASSIGNMENT STATEMENT...
	mov	2365,r13		! source line 2365
	mov	"\0\0AS",r10
	mov	2365,r13		! source line 2365
	mov	"\0\0SE",r10
!   _temp_2356 = &openFileFreeList
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
	mov	2368,r13		! source line 2368
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2357 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2357 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2369,r13		! source line 2369
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2358 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2358 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2372,r13		! source line 2372
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2359 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2359 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2374,r13		! source line 2374
	mov	"\0\0SE",r10
!   _temp_2360 = &fileManagerLock
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
	mov	2375,r13		! source line 2375
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
	.word	_Label_2361
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2362
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2363
	.word	12
	.word	4
	.word	_Label_2364
	.word	-12
	.word	4
	.word	_Label_2365
	.word	-16
	.word	4
	.word	_Label_2366
	.word	-20
	.word	4
	.word	_Label_2367
	.word	-24
	.word	4
	.word	_Label_2368
	.word	-28
	.word	4
	.word	_Label_2369
	.word	-32
	.word	4
	.word	_Label_2370
	.word	-36
	.word	4
	.word	_Label_2371
	.word	-40
	.word	4
	.word	_Label_2372
	.word	-44
	.word	4
	.word	_Label_2373
	.word	-48
	.word	4
	.word	_Label_2374
	.word	-52
	.word	4
	.word	_Label_2375
	.word	-56
	.word	4
	.word	0
_Label_2361:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2362:
	.ascii	"Pself\0"
	.align
_Label_2363:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2364:
	.byte	'?'
	.ascii	"_temp_2360\0"
	.align
_Label_2365:
	.byte	'?'
	.ascii	"_temp_2359\0"
	.align
_Label_2366:
	.byte	'?'
	.ascii	"_temp_2358\0"
	.align
_Label_2367:
	.byte	'?'
	.ascii	"_temp_2357\0"
	.align
_Label_2368:
	.byte	'?'
	.ascii	"_temp_2356\0"
	.align
_Label_2369:
	.byte	'?'
	.ascii	"_temp_2355\0"
	.align
_Label_2370:
	.byte	'?'
	.ascii	"_temp_2354\0"
	.align
_Label_2371:
	.byte	'?'
	.ascii	"_temp_2353\0"
	.align
_Label_2372:
	.byte	'?'
	.ascii	"_temp_2349\0"
	.align
_Label_2373:
	.byte	'?'
	.ascii	"_temp_2346\0"
	.align
_Label_2374:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2375:
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
_Label_3108:
	push	r0
	sub	r1,1,r1
	bne	_Label_3108
	mov	2380,r13		! source line 2380
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2405,r13		! source line 2405
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+928],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2408,r13		! source line 2408
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
	mov	2409,r13		! source line 2409
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2410,r13		! source line 2410
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2377		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2377
!	jmp	_Label_2376
_Label_2376:
! THEN...
	mov	2411,r13		! source line 2411
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2378 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2378  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2411,r13		! source line 2411
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2377:
! ASSIGNMENT STATEMENT...
	mov	2415,r13		! source line 2415
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
	mov	2416,r13		! source line 2416
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2417,r13		! source line 2417
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
	mov	2418,r13		! source line 2418
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2421,r13		! source line 2421
	mov	"\0\0WH",r10
_Label_2379:
!   if numFiles <= 0 then goto _Label_2381		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2381
!	jmp	_Label_2380
_Label_2380:
	mov	2421,r13		! source line 2421
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2382 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2382  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2422,r13		! source line 2422
	mov	"\0\0CA",r10
	call	_function_216_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2423,r13		! source line 2423
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2383 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2383  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2424,r13		! source line 2424
	mov	"\0\0CA",r10
	call	_function_216_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2425,r13		! source line 2425
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2384 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2384  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2426,r13		! source line 2426
	mov	"\0\0CA",r10
	call	_function_216_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2427,r13		! source line 2427
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2428,r13		! source line 2428
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2388 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2388 then goto _Label_2386		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2386
!	jmp	_Label_2387
_Label_2387:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2390
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
!   _temp_2389 = _temp_2390		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2389  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2429,r13		! source line 2429
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2385 else goto _Label_2386
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2386
	jmp	_Label_2385
_Label_2385:
! THEN...
	mov	2430,r13		! source line 2430
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2430,r13		! source line 2430
	mov	"\0\0BR",r10
	jmp	_Label_2381
! END IF...
_Label_2386:
! ASSIGNMENT STATEMENT...
	mov	2432,r13		! source line 2432
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2433,r13		! source line 2433
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2379
_Label_2381:
! IF STATEMENT...
	mov	2437,r13		! source line 2437
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2392		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2392
!	jmp	_Label_2391
_Label_2391:
! THEN...
	mov	2438,r13		! source line 2438
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2438,r13		! source line 2438
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2392:
! SEND STATEMENT...
	mov	2441,r13		! source line 2441
	mov	"\0\0SE",r10
!   _temp_2393 = &fileManagerLock
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
	mov	2443,r13		! source line 2443
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2398 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2399 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2398  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2394:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2399 then goto _Label_2397		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2397
_Label_2395:
	mov	2443,r13		! source line 2443
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2444,r13		! source line 2444
	mov	"\0\0AS",r10
!   _temp_2400 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2400 [i ] into _temp_2401
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
!   fcb = _temp_2401		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2445,r13		! source line 2445
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2405 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2404 = *_temp_2405  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2404 != start then goto _Label_2403		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2403
!	jmp	_Label_2402
_Label_2402:
! THEN...
	mov	2446,r13		! source line 2446
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2446,r13		! source line 2446
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2406 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2409 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2408 = *_temp_2409  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2407 = _temp_2408 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2406 = _temp_2407  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2447,r13		! source line 2447
	mov	"\0\0SE",r10
!   _temp_2410 = &fileManagerLock
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
	mov	2448,r13		! source line 2448
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2403:
!   Increment the FOR-LOOP index variable and jump back
_Label_2396:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2394
! END FOR
_Label_2397:
! WHILE STATEMENT...
	mov	2453,r13		! source line 2453
	mov	"\0\0WH",r10
_Label_2411:
	mov	2453,r13		! source line 2453
	mov	"\0\0SE",r10
!   _temp_2414 = &fcbFreeList
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
!   if result==true then goto _Label_2412 else goto _Label_2413
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2413
	jmp	_Label_2412
_Label_2412:
	mov	2453,r13		! source line 2453
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2454,r13		! source line 2454
	mov	"\0\0SE",r10
!   _temp_2415 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2416 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2415  sizeInBytes=4
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
	jmp	_Label_2411
_Label_2413:
! ASSIGNMENT STATEMENT...
	mov	2456,r13		! source line 2456
	mov	"\0\0AS",r10
	mov	2456,r13		! source line 2456
	mov	"\0\0SE",r10
!   _temp_2417 = &fcbFreeList
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
	mov	2459,r13		! source line 2459
	mov	"\0\0SE",r10
!   _temp_2418 = &fileManagerLock
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
	mov	2462,r13		! source line 2462
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2419 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2419 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2463,r13		! source line 2463
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2420 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2420 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2464,r13		! source line 2464
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2421 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2421 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2465,r13		! source line 2465
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2426 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2425 = *_temp_2426  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2425 < 0 then goto _Label_2424		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2424
	jmp	_Label_2422
_Label_2424:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2427 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2427 ) then goto _Label_2423		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2423
!	jmp	_Label_2422
_Label_2422:
! THEN...
	mov	2466,r13		! source line 2466
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2428 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2428  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2466,r13		! source line 2466
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2423:
! RETURN STATEMENT...
	mov	2468,r13		! source line 2468
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
	.word	_Label_2429
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2430
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2431
	.word	12
	.word	4
	.word	_Label_2432
	.word	-12
	.word	4
	.word	_Label_2433
	.word	-16
	.word	4
	.word	_Label_2434
	.word	-20
	.word	4
	.word	_Label_2435
	.word	-24
	.word	4
	.word	_Label_2436
	.word	-28
	.word	4
	.word	_Label_2437
	.word	-32
	.word	4
	.word	_Label_2438
	.word	-36
	.word	4
	.word	_Label_2439
	.word	-40
	.word	4
	.word	_Label_2440
	.word	-44
	.word	4
	.word	_Label_2441
	.word	-48
	.word	4
	.word	_Label_2442
	.word	-52
	.word	4
	.word	_Label_2443
	.word	-56
	.word	4
	.word	_Label_2444
	.word	-60
	.word	4
	.word	_Label_2445
	.word	-64
	.word	4
	.word	_Label_2446
	.word	-68
	.word	4
	.word	_Label_2447
	.word	-72
	.word	4
	.word	_Label_2448
	.word	-76
	.word	4
	.word	_Label_2449
	.word	-80
	.word	4
	.word	_Label_2450
	.word	-84
	.word	4
	.word	_Label_2451
	.word	-88
	.word	4
	.word	_Label_2452
	.word	-92
	.word	4
	.word	_Label_2453
	.word	-96
	.word	4
	.word	_Label_2454
	.word	-100
	.word	4
	.word	_Label_2455
	.word	-104
	.word	4
	.word	_Label_2456
	.word	-108
	.word	4
	.word	_Label_2457
	.word	-112
	.word	4
	.word	_Label_2458
	.word	-116
	.word	4
	.word	_Label_2459
	.word	-120
	.word	4
	.word	_Label_2460
	.word	-124
	.word	4
	.word	_Label_2461
	.word	-128
	.word	4
	.word	_Label_2462
	.word	-132
	.word	4
	.word	_Label_2463
	.word	-136
	.word	4
	.word	_Label_2464
	.word	-140
	.word	4
	.word	_Label_2465
	.word	-144
	.word	4
	.word	_Label_2466
	.word	-148
	.word	4
	.word	_Label_2467
	.word	-152
	.word	4
	.word	_Label_2468
	.word	-156
	.word	4
	.word	_Label_2469
	.word	-160
	.word	4
	.word	0
_Label_2429:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2430:
	.ascii	"Pself\0"
	.align
_Label_2431:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2432:
	.byte	'?'
	.ascii	"_temp_2428\0"
	.align
_Label_2433:
	.byte	'?'
	.ascii	"_temp_2427\0"
	.align
_Label_2434:
	.byte	'?'
	.ascii	"_temp_2426\0"
	.align
_Label_2435:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2436:
	.byte	'?'
	.ascii	"_temp_2421\0"
	.align
_Label_2437:
	.byte	'?'
	.ascii	"_temp_2420\0"
	.align
_Label_2438:
	.byte	'?'
	.ascii	"_temp_2419\0"
	.align
_Label_2439:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2440:
	.byte	'?'
	.ascii	"_temp_2417\0"
	.align
_Label_2441:
	.byte	'?'
	.ascii	"_temp_2416\0"
	.align
_Label_2442:
	.byte	'?'
	.ascii	"_temp_2415\0"
	.align
_Label_2443:
	.byte	'?'
	.ascii	"_temp_2414\0"
	.align
_Label_2444:
	.byte	'?'
	.ascii	"_temp_2410\0"
	.align
_Label_2445:
	.byte	'?'
	.ascii	"_temp_2409\0"
	.align
_Label_2446:
	.byte	'?'
	.ascii	"_temp_2408\0"
	.align
_Label_2447:
	.byte	'?'
	.ascii	"_temp_2407\0"
	.align
_Label_2448:
	.byte	'?'
	.ascii	"_temp_2406\0"
	.align
_Label_2449:
	.byte	'?'
	.ascii	"_temp_2405\0"
	.align
_Label_2450:
	.byte	'?'
	.ascii	"_temp_2404\0"
	.align
_Label_2451:
	.byte	'?'
	.ascii	"_temp_2401\0"
	.align
_Label_2452:
	.byte	'?'
	.ascii	"_temp_2400\0"
	.align
_Label_2453:
	.byte	'?'
	.ascii	"_temp_2399\0"
	.align
_Label_2454:
	.byte	'?'
	.ascii	"_temp_2398\0"
	.align
_Label_2455:
	.byte	'?'
	.ascii	"_temp_2393\0"
	.align
_Label_2456:
	.byte	'?'
	.ascii	"_temp_2390\0"
	.align
_Label_2457:
	.byte	'?'
	.ascii	"_temp_2389\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2388\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2384\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2383\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2382\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2378\0"
	.align
_Label_2463:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2464:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2465:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2466:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2467:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2468:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2469:
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
_Label_3109:
	push	r0
	sub	r1,1,r1
	bne	_Label_3109
	mov	2481,r13		! source line 2481
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2483,r13		! source line 2483
	mov	"\0\0IF",r10
!   _temp_2472 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,932,r1
	store	r1,[r14+-100]
!   if open != _temp_2472 then goto _Label_2471		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2471
!	jmp	_Label_2470
_Label_2470:
! THEN...
	mov	2484,r13		! source line 2484
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2484,r13		! source line 2484
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2471:
! SEND STATEMENT...
	mov	2486,r13		! source line 2486
	mov	"\0\0SE",r10
!   _temp_2473 = &fileManagerLock
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
	mov	2487,r13		! source line 2487
	mov	"\0\0SE",r10
!   _temp_2474 = &_P_Kernel_fileManager
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
	mov	2488,r13		! source line 2488
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2475 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2475  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2489,r13		! source line 2489
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2476 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2479 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2478 = *_temp_2479  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2477 = _temp_2478 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2476 = _temp_2477  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2490,r13		! source line 2490
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2483 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2482 = *_temp_2483  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2482 > 0 then goto _Label_2481		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2481
!	jmp	_Label_2480
_Label_2480:
! THEN...
	mov	2491,r13		! source line 2491
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2491,r13		! source line 2491
	mov	"\0\0SE",r10
!   _temp_2484 = &openFileFreeList
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
	mov	2492,r13		! source line 2492
	mov	"\0\0SE",r10
!   _temp_2485 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2486 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,820,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2485  sizeInBytes=4
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
	mov	2493,r13		! source line 2493
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2487 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2490 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2489 = *_temp_2490  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2488 = _temp_2489 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2487 = _temp_2488  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2494,r13		! source line 2494
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2494 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2493 = *_temp_2494  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2493 > 0 then goto _Label_2492		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2492
!	jmp	_Label_2491
_Label_2491:
! THEN...
	mov	2495,r13		! source line 2495
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2495,r13		! source line 2495
	mov	"\0\0SE",r10
!   _temp_2495 = &fcbFreeList
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
	mov	2496,r13		! source line 2496
	mov	"\0\0SE",r10
!   _temp_2496 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2497 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2496  sizeInBytes=4
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
_Label_2492:
! END IF...
_Label_2481:
! SEND STATEMENT...
	mov	2499,r13		! source line 2499
	mov	"\0\0SE",r10
!   _temp_2498 = &fileManagerLock
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
	mov	2499,r13		! source line 2499
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
	.word	_Label_2499
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2500
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2501
	.word	12
	.word	4
	.word	_Label_2502
	.word	-12
	.word	4
	.word	_Label_2503
	.word	-16
	.word	4
	.word	_Label_2504
	.word	-20
	.word	4
	.word	_Label_2505
	.word	-24
	.word	4
	.word	_Label_2506
	.word	-28
	.word	4
	.word	_Label_2507
	.word	-32
	.word	4
	.word	_Label_2508
	.word	-36
	.word	4
	.word	_Label_2509
	.word	-40
	.word	4
	.word	_Label_2510
	.word	-44
	.word	4
	.word	_Label_2511
	.word	-48
	.word	4
	.word	_Label_2512
	.word	-52
	.word	4
	.word	_Label_2513
	.word	-56
	.word	4
	.word	_Label_2514
	.word	-60
	.word	4
	.word	_Label_2515
	.word	-64
	.word	4
	.word	_Label_2516
	.word	-68
	.word	4
	.word	_Label_2517
	.word	-72
	.word	4
	.word	_Label_2518
	.word	-76
	.word	4
	.word	_Label_2519
	.word	-80
	.word	4
	.word	_Label_2520
	.word	-84
	.word	4
	.word	_Label_2521
	.word	-88
	.word	4
	.word	_Label_2522
	.word	-92
	.word	4
	.word	_Label_2523
	.word	-96
	.word	4
	.word	_Label_2524
	.word	-100
	.word	4
	.word	_Label_2525
	.word	-104
	.word	4
	.word	0
_Label_2499:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2500:
	.ascii	"Pself\0"
	.align
_Label_2501:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2502:
	.byte	'?'
	.ascii	"_temp_2498\0"
	.align
_Label_2503:
	.byte	'?'
	.ascii	"_temp_2497\0"
	.align
_Label_2504:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
_Label_2505:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2506:
	.byte	'?'
	.ascii	"_temp_2494\0"
	.align
_Label_2507:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2508:
	.byte	'?'
	.ascii	"_temp_2490\0"
	.align
_Label_2509:
	.byte	'?'
	.ascii	"_temp_2489\0"
	.align
_Label_2510:
	.byte	'?'
	.ascii	"_temp_2488\0"
	.align
_Label_2511:
	.byte	'?'
	.ascii	"_temp_2487\0"
	.align
_Label_2512:
	.byte	'?'
	.ascii	"_temp_2486\0"
	.align
_Label_2513:
	.byte	'?'
	.ascii	"_temp_2485\0"
	.align
_Label_2514:
	.byte	'?'
	.ascii	"_temp_2484\0"
	.align
_Label_2515:
	.byte	'?'
	.ascii	"_temp_2483\0"
	.align
_Label_2516:
	.byte	'?'
	.ascii	"_temp_2482\0"
	.align
_Label_2517:
	.byte	'?'
	.ascii	"_temp_2479\0"
	.align
_Label_2518:
	.byte	'?'
	.ascii	"_temp_2478\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2477\0"
	.align
_Label_2520:
	.byte	'?'
	.ascii	"_temp_2476\0"
	.align
_Label_2521:
	.byte	'?'
	.ascii	"_temp_2475\0"
	.align
_Label_2522:
	.byte	'?'
	.ascii	"_temp_2474\0"
	.align
_Label_2523:
	.byte	'?'
	.ascii	"_temp_2473\0"
	.align
_Label_2524:
	.byte	'?'
	.ascii	"_temp_2472\0"
	.align
_Label_2525:
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
_Label_3110:
	push	r0
	sub	r1,1,r1
	bne	_Label_3110
	mov	2504,r13		! source line 2504
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2509,r13		! source line 2509
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2529 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2528 = *_temp_2529  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2528) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2530 = _temp_2528 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2530 ) then goto _Label_2527		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2527
!	jmp	_Label_2526
_Label_2526:
! THEN...
	mov	2510,r13		! source line 2510
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2510,r13		! source line 2510
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2535 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2534 = *_temp_2535  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2534) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2536 = _temp_2534 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2533 = *_temp_2536  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2533 >= 0 then goto _Label_2532		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2532
!	jmp	_Label_2531
_Label_2531:
! THEN...
	mov	2511,r13		! source line 2511
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2537 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2537  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2511,r13		! source line 2511
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2532:
! ASSIGNMENT STATEMENT...
	mov	2513,r13		! source line 2513
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2539 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2538 = *_temp_2539  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2538) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2540 = _temp_2538 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2540 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2514,r13		! source line 2514
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2544 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2543 = *_temp_2544  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2543) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2545 = _temp_2543 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2542 = *_temp_2545  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2548 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2547 = *_temp_2548  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2547) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2549 = _temp_2547 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2546 = *_temp_2549  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2541 = _temp_2542 + _temp_2546		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2552 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2551 = *_temp_2552  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2551) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2553 = _temp_2551 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2550 = *_temp_2553  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2554 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2541  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2550  sizeInBytes=4
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
_Label_2527:
! RETURN STATEMENT...
	mov	2509,r13		! source line 2509
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
	.word	_Label_2555
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2556
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2557
	.word	12
	.word	4
	.word	_Label_2558
	.word	-12
	.word	4
	.word	_Label_2559
	.word	-16
	.word	4
	.word	_Label_2560
	.word	-20
	.word	4
	.word	_Label_2561
	.word	-24
	.word	4
	.word	_Label_2562
	.word	-28
	.word	4
	.word	_Label_2563
	.word	-32
	.word	4
	.word	_Label_2564
	.word	-36
	.word	4
	.word	_Label_2565
	.word	-40
	.word	4
	.word	_Label_2566
	.word	-44
	.word	4
	.word	_Label_2567
	.word	-48
	.word	4
	.word	_Label_2568
	.word	-52
	.word	4
	.word	_Label_2569
	.word	-56
	.word	4
	.word	_Label_2570
	.word	-60
	.word	4
	.word	_Label_2571
	.word	-64
	.word	4
	.word	_Label_2572
	.word	-68
	.word	4
	.word	_Label_2573
	.word	-72
	.word	4
	.word	_Label_2574
	.word	-76
	.word	4
	.word	_Label_2575
	.word	-80
	.word	4
	.word	_Label_2576
	.word	-84
	.word	4
	.word	_Label_2577
	.word	-88
	.word	4
	.word	_Label_2578
	.word	-92
	.word	4
	.word	_Label_2579
	.word	-96
	.word	4
	.word	_Label_2580
	.word	-100
	.word	4
	.word	_Label_2581
	.word	-104
	.word	4
	.word	_Label_2582
	.word	-108
	.word	4
	.word	0
_Label_2555:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2556:
	.ascii	"Pself\0"
	.align
_Label_2557:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2558:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2559:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2560:
	.byte	'?'
	.ascii	"_temp_2552\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2562:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2563:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2564:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2565:
	.byte	'?'
	.ascii	"_temp_2547\0"
	.align
_Label_2566:
	.byte	'?'
	.ascii	"_temp_2546\0"
	.align
_Label_2567:
	.byte	'?'
	.ascii	"_temp_2545\0"
	.align
_Label_2568:
	.byte	'?'
	.ascii	"_temp_2544\0"
	.align
_Label_2569:
	.byte	'?'
	.ascii	"_temp_2543\0"
	.align
_Label_2570:
	.byte	'?'
	.ascii	"_temp_2542\0"
	.align
_Label_2571:
	.byte	'?'
	.ascii	"_temp_2541\0"
	.align
_Label_2572:
	.byte	'?'
	.ascii	"_temp_2540\0"
	.align
_Label_2573:
	.byte	'?'
	.ascii	"_temp_2539\0"
	.align
_Label_2574:
	.byte	'?'
	.ascii	"_temp_2538\0"
	.align
_Label_2575:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2576:
	.byte	'?'
	.ascii	"_temp_2536\0"
	.align
_Label_2577:
	.byte	'?'
	.ascii	"_temp_2535\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2534\0"
	.align
_Label_2579:
	.byte	'?'
	.ascii	"_temp_2533\0"
	.align
_Label_2580:
	.byte	'?'
	.ascii	"_temp_2530\0"
	.align
_Label_2581:
	.byte	'?'
	.ascii	"_temp_2529\0"
	.align
_Label_2582:
	.byte	'?'
	.ascii	"_temp_2528\0"
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
_Label_3111:
	push	r0
	sub	r1,1,r1
	bne	_Label_3111
	mov	2523,r13		! source line 2523
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2538,r13		! source line 2538
	mov	"\0\0SE",r10
!   _temp_2583 = &fileManagerLock
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
	mov	2539,r13		! source line 2539
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2589		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2589
!   _temp_2588 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2590
_Label_2589:
!   _temp_2588 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2590:
!   if _temp_2588 then goto _Label_2587 else goto _Label_2584
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2584
	jmp	_Label_2587
_Label_2587:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2593 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2592 = *_temp_2593  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2592 == 0 then goto _Label_2594		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2594
!   _temp_2591 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2595
_Label_2594:
!   _temp_2591 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2595:
!   if _temp_2591 then goto _Label_2586 else goto _Label_2584
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2584
	jmp	_Label_2586
_Label_2586:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2598 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2597 = *_temp_2598  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2597) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2599 = _temp_2597 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2596 = *_temp_2599  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2596 >= 0 then goto _Label_2585		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2585
!	jmp	_Label_2584
_Label_2584:
! THEN...
	mov	2540,r13		! source line 2540
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2600 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2600  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2540,r13		! source line 2540
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2585:
! ASSIGNMENT STATEMENT...
	mov	2542,r13		! source line 2542
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2601 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2601  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2543,r13		! source line 2543
	mov	"\0\0WH",r10
_Label_2602:
!   if numBytes <= 0 then goto _Label_2604		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2604
!	jmp	_Label_2603
_Label_2603:
	mov	2543,r13		! source line 2543
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2552,r13		! source line 2552
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
	mov	2553,r13		! source line 2553
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
	mov	2557,r13		! source line 2557
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2608 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2607 = *_temp_2608  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2607 == sector then goto _Label_2606		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2606
!	jmp	_Label_2605
_Label_2605:
! THEN...
	mov	2558,r13		! source line 2558
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2558,r13		! source line 2558
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2609) then goto _runtimeErrorNullPointer
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
	mov	2560,r13		! source line 2560
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2612 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2611 = *_temp_2612  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2610 = sector + _temp_2611		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2614 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2613 = *_temp_2614  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2615 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2610  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2613  sizeInBytes=4
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
	mov	2563,r13		! source line 2563
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2616 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2616 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2564,r13		! source line 2564
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2617 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2617 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2606:
! ASSIGNMENT STATEMENT...
	mov	2566,r13		! source line 2566
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2619 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2618 = *_temp_2619  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2618 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2567,r13		! source line 2567
	mov	"\0\0AS",r10
!   _temp_2620 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2620  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2567,r13		! source line 2567
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
	mov	2571,r13		! source line 2571
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2572,r13		! source line 2572
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2573,r13		! source line 2573
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2574,r13		! source line 2574
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2602
_Label_2604:
! SEND STATEMENT...
	mov	2581,r13		! source line 2581
	mov	"\0\0SE",r10
!   _temp_2621 = &fileManagerLock
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
	mov	2582,r13		! source line 2582
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
	.word	_Label_2622
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2623
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2624
	.word	12
	.word	4
	.word	_Label_2625
	.word	16
	.word	4
	.word	_Label_2626
	.word	20
	.word	4
	.word	_Label_2627
	.word	24
	.word	4
	.word	_Label_2628
	.word	-16
	.word	4
	.word	_Label_2629
	.word	-20
	.word	4
	.word	_Label_2630
	.word	-24
	.word	4
	.word	_Label_2631
	.word	-28
	.word	4
	.word	_Label_2632
	.word	-32
	.word	4
	.word	_Label_2633
	.word	-36
	.word	4
	.word	_Label_2634
	.word	-40
	.word	4
	.word	_Label_2635
	.word	-44
	.word	4
	.word	_Label_2636
	.word	-48
	.word	4
	.word	_Label_2637
	.word	-52
	.word	4
	.word	_Label_2638
	.word	-56
	.word	4
	.word	_Label_2639
	.word	-60
	.word	4
	.word	_Label_2640
	.word	-64
	.word	4
	.word	_Label_2641
	.word	-68
	.word	4
	.word	_Label_2642
	.word	-72
	.word	4
	.word	_Label_2643
	.word	-76
	.word	4
	.word	_Label_2644
	.word	-80
	.word	4
	.word	_Label_2645
	.word	-84
	.word	4
	.word	_Label_2646
	.word	-88
	.word	4
	.word	_Label_2647
	.word	-92
	.word	4
	.word	_Label_2648
	.word	-96
	.word	4
	.word	_Label_2649
	.word	-100
	.word	4
	.word	_Label_2650
	.word	-104
	.word	4
	.word	_Label_2651
	.word	-9
	.word	1
	.word	_Label_2652
	.word	-10
	.word	1
	.word	_Label_2653
	.word	-108
	.word	4
	.word	_Label_2654
	.word	-112
	.word	4
	.word	_Label_2655
	.word	-116
	.word	4
	.word	_Label_2656
	.word	-120
	.word	4
	.word	_Label_2657
	.word	-124
	.word	4
	.word	_Label_2658
	.word	-128
	.word	4
	.word	0
_Label_2622:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2623:
	.ascii	"Pself\0"
	.align
_Label_2624:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2625:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2626:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2627:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2628:
	.byte	'?'
	.ascii	"_temp_2621\0"
	.align
_Label_2629:
	.byte	'?'
	.ascii	"_temp_2620\0"
	.align
_Label_2630:
	.byte	'?'
	.ascii	"_temp_2619\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2618\0"
	.align
_Label_2632:
	.byte	'?'
	.ascii	"_temp_2617\0"
	.align
_Label_2633:
	.byte	'?'
	.ascii	"_temp_2616\0"
	.align
_Label_2634:
	.byte	'?'
	.ascii	"_temp_2615\0"
	.align
_Label_2635:
	.byte	'?'
	.ascii	"_temp_2614\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2611\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2610\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2593\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2592\0"
	.align
_Label_2651:
	.byte	'C'
	.ascii	"_temp_2591\0"
	.align
_Label_2652:
	.byte	'C'
	.ascii	"_temp_2588\0"
	.align
_Label_2653:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2654:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2655:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2656:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2657:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2658:
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
_Label_3112:
	push	r0
	sub	r1,1,r1
	bne	_Label_3112
	mov	2587,r13		! source line 2587
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2603,r13		! source line 2603
	mov	"\0\0SE",r10
!   _temp_2659 = &fileManagerLock
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
	mov	2604,r13		! source line 2604
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2665		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2665
!   _temp_2664 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2666
_Label_2665:
!   _temp_2664 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2666:
!   if _temp_2664 then goto _Label_2663 else goto _Label_2660
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2660
	jmp	_Label_2663
_Label_2663:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2669 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2668 = *_temp_2669  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2668 == 0 then goto _Label_2670		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2670
!   _temp_2667 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2671
_Label_2670:
!   _temp_2667 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2671:
!   if _temp_2667 then goto _Label_2662 else goto _Label_2660
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2660
	jmp	_Label_2662
_Label_2662:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2674 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2673 = *_temp_2674  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2673) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2675 = _temp_2673 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2672 = *_temp_2675  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2672 >= 0 then goto _Label_2661		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2661
!	jmp	_Label_2660
_Label_2660:
! THEN...
	mov	2605,r13		! source line 2605
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2676 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2676  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2605,r13		! source line 2605
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2661:
! ASSIGNMENT STATEMENT...
	mov	2607,r13		! source line 2607
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2677 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2677  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2608,r13		! source line 2608
	mov	"\0\0WH",r10
_Label_2678:
!   if numBytes <= 0 then goto _Label_2680		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2680
!	jmp	_Label_2679
_Label_2679:
	mov	2608,r13		! source line 2608
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2617,r13		! source line 2617
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
	mov	2618,r13		! source line 2618
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
	mov	2622,r13		! source line 2622
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2684 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2683 = *_temp_2684  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2683 == sector then goto _Label_2682		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2682
!	jmp	_Label_2681
_Label_2681:
! THEN...
	mov	2624,r13		! source line 2624
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2624,r13		! source line 2624
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2685) then goto _runtimeErrorNullPointer
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
_Label_2682:
! ASSIGNMENT STATEMENT...
	mov	2626,r13		! source line 2626
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2687 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2686 = *_temp_2687  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2686 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2627,r13		! source line 2627
	mov	"\0\0AS",r10
!   _temp_2688 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2688  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2627,r13		! source line 2627
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2628,r13		! source line 2628
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2692 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2691 = *_temp_2692  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2691 != sector then goto _Label_2690		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2690
!	jmp	_Label_2689
_Label_2689:
	jmp	_Label_2693
_Label_2690:
! ELSE...
	mov	2630,r13		! source line 2630
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2630,r13		! source line 2630
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2696
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2696
	jmp	_Label_2695
_Label_2696:
!   if bytesToMove != 8192 then goto _Label_2695		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2695
!	jmp	_Label_2694
_Label_2694:
	jmp	_Label_2697
_Label_2695:
! ELSE...
	mov	2634,r13		! source line 2634
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2634,r13		! source line 2634
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2700 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2699 = *_temp_2700  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2698 = sector + _temp_2699		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2702 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2701 = *_temp_2702  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2703 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2698  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2701  sizeInBytes=4
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
_Label_2697:
! END IF...
_Label_2693:
! ASSIGNMENT STATEMENT...
	mov	2638,r13		! source line 2638
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2704 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2704 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2639,r13		! source line 2639
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2705 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2705 = 1  (sizeInBytes=1)
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
	mov	2643,r13		! source line 2643
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2644,r13		! source line 2644
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2645,r13		! source line 2645
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2646,r13		! source line 2646
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2678
_Label_2680:
! SEND STATEMENT...
	mov	2653,r13		! source line 2653
	mov	"\0\0SE",r10
!   _temp_2706 = &fileManagerLock
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
	mov	2655,r13		! source line 2655
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
	.word	_Label_2707
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2708
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2709
	.word	12
	.word	4
	.word	_Label_2710
	.word	16
	.word	4
	.word	_Label_2711
	.word	20
	.word	4
	.word	_Label_2712
	.word	24
	.word	4
	.word	_Label_2713
	.word	-16
	.word	4
	.word	_Label_2714
	.word	-20
	.word	4
	.word	_Label_2715
	.word	-24
	.word	4
	.word	_Label_2716
	.word	-28
	.word	4
	.word	_Label_2717
	.word	-32
	.word	4
	.word	_Label_2718
	.word	-36
	.word	4
	.word	_Label_2719
	.word	-40
	.word	4
	.word	_Label_2720
	.word	-44
	.word	4
	.word	_Label_2721
	.word	-48
	.word	4
	.word	_Label_2722
	.word	-52
	.word	4
	.word	_Label_2723
	.word	-56
	.word	4
	.word	_Label_2724
	.word	-60
	.word	4
	.word	_Label_2725
	.word	-64
	.word	4
	.word	_Label_2726
	.word	-68
	.word	4
	.word	_Label_2727
	.word	-72
	.word	4
	.word	_Label_2728
	.word	-76
	.word	4
	.word	_Label_2729
	.word	-80
	.word	4
	.word	_Label_2730
	.word	-84
	.word	4
	.word	_Label_2731
	.word	-88
	.word	4
	.word	_Label_2732
	.word	-92
	.word	4
	.word	_Label_2733
	.word	-96
	.word	4
	.word	_Label_2734
	.word	-100
	.word	4
	.word	_Label_2735
	.word	-104
	.word	4
	.word	_Label_2736
	.word	-108
	.word	4
	.word	_Label_2737
	.word	-112
	.word	4
	.word	_Label_2738
	.word	-9
	.word	1
	.word	_Label_2739
	.word	-10
	.word	1
	.word	_Label_2740
	.word	-116
	.word	4
	.word	_Label_2741
	.word	-120
	.word	4
	.word	_Label_2742
	.word	-124
	.word	4
	.word	_Label_2743
	.word	-128
	.word	4
	.word	_Label_2744
	.word	-132
	.word	4
	.word	_Label_2745
	.word	-136
	.word	4
	.word	0
_Label_2707:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_2708:
	.ascii	"Pself\0"
	.align
_Label_2709:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2710:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_2711:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2712:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2713:
	.byte	'?'
	.ascii	"_temp_2706\0"
	.align
_Label_2714:
	.byte	'?'
	.ascii	"_temp_2705\0"
	.align
_Label_2715:
	.byte	'?'
	.ascii	"_temp_2704\0"
	.align
_Label_2716:
	.byte	'?'
	.ascii	"_temp_2703\0"
	.align
_Label_2717:
	.byte	'?'
	.ascii	"_temp_2702\0"
	.align
_Label_2718:
	.byte	'?'
	.ascii	"_temp_2701\0"
	.align
_Label_2719:
	.byte	'?'
	.ascii	"_temp_2700\0"
	.align
_Label_2720:
	.byte	'?'
	.ascii	"_temp_2699\0"
	.align
_Label_2721:
	.byte	'?'
	.ascii	"_temp_2698\0"
	.align
_Label_2722:
	.byte	'?'
	.ascii	"_temp_2692\0"
	.align
_Label_2723:
	.byte	'?'
	.ascii	"_temp_2691\0"
	.align
_Label_2724:
	.byte	'?'
	.ascii	"_temp_2688\0"
	.align
_Label_2725:
	.byte	'?'
	.ascii	"_temp_2687\0"
	.align
_Label_2726:
	.byte	'?'
	.ascii	"_temp_2686\0"
	.align
_Label_2727:
	.byte	'?'
	.ascii	"_temp_2685\0"
	.align
_Label_2728:
	.byte	'?'
	.ascii	"_temp_2684\0"
	.align
_Label_2729:
	.byte	'?'
	.ascii	"_temp_2683\0"
	.align
_Label_2730:
	.byte	'?'
	.ascii	"_temp_2677\0"
	.align
_Label_2731:
	.byte	'?'
	.ascii	"_temp_2676\0"
	.align
_Label_2732:
	.byte	'?'
	.ascii	"_temp_2675\0"
	.align
_Label_2733:
	.byte	'?'
	.ascii	"_temp_2674\0"
	.align
_Label_2734:
	.byte	'?'
	.ascii	"_temp_2673\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2672\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2669\0"
	.align
_Label_2737:
	.byte	'?'
	.ascii	"_temp_2668\0"
	.align
_Label_2738:
	.byte	'C'
	.ascii	"_temp_2667\0"
	.align
_Label_2739:
	.byte	'C'
	.ascii	"_temp_2664\0"
	.align
_Label_2740:
	.byte	'?'
	.ascii	"_temp_2659\0"
	.align
_Label_2741:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2742:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2743:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2744:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2745:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_2746
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2746:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2747
	.word	_sourceFileName
	.word	363		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2747:
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
_Label_3113:
	push	r0
	sub	r1,1,r1
	bne	_Label_3113
	mov	2691,r13		! source line 2691
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2692,r13		! source line 2692
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2693,r13		! source line 2693
	mov	"\0\0AS",r10
	mov	2693,r13		! source line 2693
	mov	"\0\0SE",r10
!   _temp_2748 = &_P_Kernel_frameManager
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
	mov	2694,r13		! source line 2694
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2695,r13		! source line 2695
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2696,r13		! source line 2696
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2696,r13		! source line 2696
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
	.word	_Label_2749
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2750
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2751
	.word	-12
	.word	4
	.word	0
_Label_2749:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2750:
	.ascii	"Pself\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2748\0"
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
_Label_3114:
	push	r0
	sub	r1,1,r1
	bne	_Label_3114
	mov	2701,r13		! source line 2701
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2752 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2752  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2702,r13		! source line 2702
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2703,r13		! source line 2703
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2753 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2753  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2704,r13		! source line 2704
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2705,r13		! source line 2705
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2754 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2754  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2706,r13		! source line 2706
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2707,r13		! source line 2707
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2755 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2755  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2708,r13		! source line 2708
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2709,r13		! source line 2709
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2756 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2756  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2710,r13		! source line 2710
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2711,r13		! source line 2711
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2757 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2757  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2712,r13		! source line 2712
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2713,r13		! source line 2713
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2714,r13		! source line 2714
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2714,r13		! source line 2714
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
	.word	_Label_2758
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2759
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2760
	.word	-12
	.word	4
	.word	_Label_2761
	.word	-16
	.word	4
	.word	_Label_2762
	.word	-20
	.word	4
	.word	_Label_2763
	.word	-24
	.word	4
	.word	_Label_2764
	.word	-28
	.word	4
	.word	_Label_2765
	.word	-32
	.word	4
	.word	0
_Label_2758:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2759:
	.ascii	"Pself\0"
	.align
_Label_2760:
	.byte	'?'
	.ascii	"_temp_2757\0"
	.align
_Label_2761:
	.byte	'?'
	.ascii	"_temp_2756\0"
	.align
_Label_2762:
	.byte	'?'
	.ascii	"_temp_2755\0"
	.align
_Label_2763:
	.byte	'?'
	.ascii	"_temp_2754\0"
	.align
_Label_2764:
	.byte	'?'
	.ascii	"_temp_2753\0"
	.align
_Label_2765:
	.byte	'?'
	.ascii	"_temp_2752\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_2766
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_2766:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2767
	.word	_sourceFileName
	.word	380		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2767:
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
_Label_3115:
	push	r0
	sub	r1,1,r1
	bne	_Label_3115
	mov	2725,r13		! source line 2725
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2768 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2768  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2726,r13		! source line 2726
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2727,r13		! source line 2727
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2769 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2769  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2728,r13		! source line 2728
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2729,r13		! source line 2729
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_2771		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2771
!	jmp	_Label_2770
_Label_2770:
! THEN...
	mov	2730,r13		! source line 2730
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2730,r13		! source line 2730
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
	jmp	_Label_2772
_Label_2771:
! ELSE...
	mov	2732,r13		! source line 2732
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2773 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2773  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2732,r13		! source line 2732
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2772:
! RETURN STATEMENT...
	mov	2729,r13		! source line 2729
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
	.word	_Label_2774
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2775
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2776
	.word	-12
	.word	4
	.word	_Label_2777
	.word	-16
	.word	4
	.word	_Label_2778
	.word	-20
	.word	4
	.word	0
_Label_2774:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2775:
	.ascii	"Pself\0"
	.align
_Label_2776:
	.byte	'?'
	.ascii	"_temp_2773\0"
	.align
_Label_2777:
	.byte	'?'
	.ascii	"_temp_2769\0"
	.align
_Label_2778:
	.byte	'?'
	.ascii	"_temp_2768\0"
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
_Label_3116:
	push	r0
	sub	r1,1,r1
	bne	_Label_3116
	mov	2738,r13		! source line 2738
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2748,r13		! source line 2748
	mov	"\0\0SE",r10
!   _temp_2779 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_2780 = _temp_2779 + 4
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
	mov	2749,r13		! source line 2749
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2750,r13		! source line 2750
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
	mov	2751,r13		! source line 2751
	mov	"\0\0SE",r10
!   _temp_2781 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_2782 = _temp_2781 + 4
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
	mov	2752,r13		! source line 2752
	mov	"\0\0RE",r10
	mov	2752,r13		! source line 2752
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_2785 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2784  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2783  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_2783  (sizeInBytes=1)
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
	.word	_Label_2786
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2787
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2788
	.word	12
	.word	4
	.word	_Label_2789
	.word	16
	.word	4
	.word	_Label_2790
	.word	-16
	.word	4
	.word	_Label_2791
	.word	-20
	.word	4
	.word	_Label_2792
	.word	-9
	.word	1
	.word	_Label_2793
	.word	-24
	.word	4
	.word	_Label_2794
	.word	-28
	.word	4
	.word	_Label_2795
	.word	-32
	.word	4
	.word	_Label_2796
	.word	-36
	.word	4
	.word	_Label_2797
	.word	-40
	.word	4
	.word	0
_Label_2786:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_2787:
	.ascii	"Pself\0"
	.align
_Label_2788:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2789:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2790:
	.byte	'?'
	.ascii	"_temp_2785\0"
	.align
_Label_2791:
	.byte	'?'
	.ascii	"_temp_2784\0"
	.align
_Label_2792:
	.byte	'C'
	.ascii	"_temp_2783\0"
	.align
_Label_2793:
	.byte	'?'
	.ascii	"_temp_2782\0"
	.align
_Label_2794:
	.byte	'?'
	.ascii	"_temp_2781\0"
	.align
_Label_2795:
	.byte	'?'
	.ascii	"_temp_2780\0"
	.align
_Label_2796:
	.byte	'?'
	.ascii	"_temp_2779\0"
	.align
_Label_2797:
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
_Label_3117:
	push	r0
	sub	r1,1,r1
	bne	_Label_3117
	mov	2757,r13		! source line 2757
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2762,r13		! source line 2762
	mov	"\0\0IF",r10
	mov	2762,r13		! source line 2762
	mov	"\0\0SE",r10
!   _temp_2801 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2802) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2801  sizeInBytes=4
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
	mov	2763,r13		! source line 2763
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2803 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2803  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2763,r13		! source line 2763
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2799:
! RETURN STATEMENT...
	mov	2765,r13		! source line 2765
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
	.word	_Label_2804
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2805
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2806
	.word	-16
	.word	4
	.word	_Label_2807
	.word	-20
	.word	4
	.word	_Label_2808
	.word	-24
	.word	4
	.word	_Label_2809
	.word	-9
	.word	1
	.word	_Label_2810
	.word	-28
	.word	4
	.word	0
_Label_2804:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_2805:
	.ascii	"Pself\0"
	.align
_Label_2806:
	.byte	'?'
	.ascii	"_temp_2803\0"
	.align
_Label_2807:
	.byte	'?'
	.ascii	"_temp_2802\0"
	.align
_Label_2808:
	.byte	'?'
	.ascii	"_temp_2801\0"
	.align
_Label_2809:
	.byte	'C'
	.ascii	"_temp_2800\0"
	.align
_Label_2810:
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
_Label_3118:
	push	r0
	sub	r1,1,r1
	bne	_Label_3118
	mov	2770,r13		! source line 2770
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2796,r13		! source line 2796
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2814 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Data Move: _temp_2813 = *_temp_2814  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-224]
!   if intIsZero (_temp_2813) then goto _Label_2812
	load	[r14+-224],r1
	cmp	r1,r0
	be	_Label_2812
!	jmp	_Label_2811
_Label_2811:
! THEN...
	mov	2797,r13		! source line 2797
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2815 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-216]
!   Prepare Argument: offset=8  value=_temp_2815  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2797,r13		! source line 2797
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2812:
! IF STATEMENT...
	mov	2801,r13		! source line 2801
	mov	"\0\0IF",r10
	mov	2801,r13		! source line 2801
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-208]
!   if intIsZero (_temp_2819) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2818  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-212]
!   if _temp_2818 == 1112300152 then goto _Label_2817		(int)
	load	[r14+-212],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_2817
!	jmp	_Label_2816
_Label_2816:
! THEN...
	mov	2802,r13		! source line 2802
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2820 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-204]
!   Prepare Argument: offset=8  value=_temp_2820  sizeInBytes=4
	load	[r14+-204],r1
	store	r1,[r15+0]
!   Call the function
	mov	2802,r13		! source line 2802
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2803,r13		! source line 2803
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2817:
! ASSIGNMENT STATEMENT...
	mov	2807,r13		! source line 2807
	mov	"\0\0AS",r10
	mov	2807,r13		! source line 2807
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-200]
!   if intIsZero (_temp_2821) then goto _runtimeErrorNullPointer
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
	mov	2808,r13		! source line 2808
	mov	"\0\0AS",r10
	mov	2808,r13		! source line 2808
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_2822) then goto _runtimeErrorNullPointer
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
	mov	2809,r13		! source line 2809
	mov	"\0\0AS",r10
	mov	2809,r13		! source line 2809
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_2823) then goto _runtimeErrorNullPointer
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
	mov	2810,r13		! source line 2810
	mov	"\0\0AS",r10
	mov	2810,r13		! source line 2810
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2824) then goto _runtimeErrorNullPointer
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
	mov	2811,r13		! source line 2811
	mov	"\0\0AS",r10
	mov	2811,r13		! source line 2811
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_2825) then goto _runtimeErrorNullPointer
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
	mov	2812,r13		! source line 2812
	mov	"\0\0AS",r10
	mov	2812,r13		! source line 2812
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_2826) then goto _runtimeErrorNullPointer
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
	mov	2815,r13		! source line 2815
	mov	"\0\0IF",r10
!   _temp_2829 = textSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
!   if intIsZero (_temp_2829) then goto _Label_2828
	load	[r14+-176],r1
	cmp	r1,r0
	be	_Label_2828
!	jmp	_Label_2827
_Label_2827:
! THEN...
	mov	2816,r13		! source line 2816
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2830 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_2830  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	2816,r13		! source line 2816
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2817,r13		! source line 2817
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2828:
! ASSIGNMENT STATEMENT...
	mov	2819,r13		! source line 2819
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
	mov	2823,r13		! source line 2823
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_2832
	load	[r14+-248],r1
	cmp	r1,r0
	be	_Label_2832
!	jmp	_Label_2831
_Label_2831:
! THEN...
	mov	2824,r13		! source line 2824
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2833 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_2833  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2824,r13		! source line 2824
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2825,r13		! source line 2825
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2832:
! IF STATEMENT...
	mov	2829,r13		! source line 2829
	mov	"\0\0IF",r10
!   _temp_2836 = dataSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-164]
!   if intIsZero (_temp_2836) then goto _Label_2835
	load	[r14+-164],r1
	cmp	r1,r0
	be	_Label_2835
!	jmp	_Label_2834
_Label_2834:
! THEN...
	mov	2830,r13		! source line 2830
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2837 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2837  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	2830,r13		! source line 2830
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2831,r13		! source line 2831
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2835:
! IF STATEMENT...
	mov	2833,r13		! source line 2833
	mov	"\0\0IF",r10
!   _temp_2840 = textStart + textSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   if dataStart == _temp_2840 then goto _Label_2839		(int)
	load	[r14+-252],r1
	load	[r14+-156],r2
	cmp	r1,r2
	be	_Label_2839
!	jmp	_Label_2838
_Label_2838:
! THEN...
	mov	2834,r13		! source line 2834
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2841 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_2841  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	2834,r13		! source line 2834
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2835,r13		! source line 2835
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2839:
! ASSIGNMENT STATEMENT...
	mov	2837,r13		! source line 2837
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
	mov	2840,r13		! source line 2840
	mov	"\0\0IF",r10
!   _temp_2844 = bssSize rem 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-148]
!   if intIsZero (_temp_2844) then goto _Label_2843
	load	[r14+-148],r1
	cmp	r1,r0
	be	_Label_2843
!	jmp	_Label_2842
_Label_2842:
! THEN...
	mov	2841,r13		! source line 2841
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2845 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2845  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	2841,r13		! source line 2841
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2842,r13		! source line 2842
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2843:
! IF STATEMENT...
	mov	2844,r13		! source line 2844
	mov	"\0\0IF",r10
!   _temp_2848 = dataStart + dataSize		(int)
	load	[r14+-252],r1
	load	[r14+-240],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
!   if bssStart == _temp_2848 then goto _Label_2847		(int)
	load	[r14+-256],r1
	load	[r14+-140],r2
	cmp	r1,r2
	be	_Label_2847
!	jmp	_Label_2846
_Label_2846:
! THEN...
	mov	2845,r13		! source line 2845
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2849 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_2849  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	2845,r13		! source line 2845
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2846,r13		! source line 2846
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2847:
! ASSIGNMENT STATEMENT...
	mov	2848,r13		! source line 2848
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
	mov	2851,r13		! source line 2851
	mov	"\0\0AS",r10
!   _temp_2852 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-264],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_2851 = _temp_2852 + bssSizeInPages		(int)
	load	[r14+-124],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   _temp_2850 = _temp_2851 + 1		(int)
	load	[r14+-128],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-132]
!   i = _temp_2850 + 0		(int)
	load	[r14+-132],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	2866,r13		! source line 2866
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_2854		(int)
	load	[r14+-260],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2854
!	jmp	_Label_2853
_Label_2853:
! THEN...
	mov	2867,r13		! source line 2867
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2855 = _StringConst_205
	set	_StringConst_205,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2855  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	2867,r13		! source line 2867
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2856 = _StringConst_206
	set	_StringConst_206,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2856  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-260],r1
	store	r1,[r15+4]
!   Call the function
	mov	2868,r13		! source line 2868
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2857 = _StringConst_207
	set	_StringConst_207,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2857  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2869,r13		! source line 2869
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2870,r13		! source line 2870
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2854:
! SEND STATEMENT...
	mov	2872,r13		! source line 2872
	mov	"\0\0SE",r10
!   _temp_2858 = &_P_Kernel_frameManager
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
!   _temp_2859 = _StringConst_208
	set	_StringConst_208,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2859  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	2874,r13		! source line 2874
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2875,r13		! source line 2875
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
	mov	2878,r13		! source line 2878
	mov	"\0\0IF",r10
	mov	2878,r13		! source line 2878
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_2863) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2862  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_2862 == 707406378 then goto _Label_2861		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2861
!	jmp	_Label_2860
_Label_2860:
! THEN...
	mov	2879,r13		! source line 2879
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2864 = _StringConst_209
	set	_StringConst_209,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2864  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2879,r13		! source line 2879
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2880,r13		! source line 2880
	mov	"\0\0SE",r10
!   _temp_2865 = &_P_Kernel_frameManager
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
	mov	2881,r13		! source line 2881
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2861:
! ASSIGNMENT STATEMENT...
	mov	2885,r13		! source line 2885
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
	mov	2886,r13		! source line 2886
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2870 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2871 = textSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2870  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-260]
_Label_2866:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2871 then goto _Label_2869		
	load	[r14+-260],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2869
_Label_2867:
	mov	2886,r13		! source line 2886
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2887,r13		! source line 2887
	mov	"\0\0AS",r10
	mov	2887,r13		! source line 2887
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
	mov	2890,r13		! source line 2890
	mov	"\0\0IF",r10
	mov	2890,r13		! source line 2890
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2875) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2874  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2874 then goto _Label_2873 else goto _Label_2872
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2872
	jmp	_Label_2873
_Label_2872:
! THEN...
	mov	2891,r13		! source line 2891
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2876 = _StringConst_210
	set	_StringConst_210,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2876  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2891,r13		! source line 2891
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2892,r13		! source line 2892
	mov	"\0\0SE",r10
!   _temp_2877 = &_P_Kernel_frameManager
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
	mov	2893,r13		! source line 2893
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2873:
! SEND STATEMENT...
	mov	2895,r13		! source line 2895
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
	mov	2896,r13		! source line 2896
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-228],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-228]
!   Increment the FOR-LOOP index variable and jump back
_Label_2868:
!   i = i + 1
	load	[r14+-260],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
	jmp	_Label_2866
! END FOR
_Label_2869:
! IF STATEMENT...
	mov	2900,r13		! source line 2900
	mov	"\0\0IF",r10
	mov	2900,r13		! source line 2900
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_2881) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2880  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_2880 == 707406378 then goto _Label_2879		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2879
!	jmp	_Label_2878
_Label_2878:
! THEN...
	mov	2901,r13		! source line 2901
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2882 = _StringConst_211
	set	_StringConst_211,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2882  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2901,r13		! source line 2901
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2902,r13		! source line 2902
	mov	"\0\0SE",r10
!   _temp_2883 = &_P_Kernel_frameManager
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
	mov	2903,r13		! source line 2903
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2879:
! FOR STATEMENT...
	mov	2907,r13		! source line 2907
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2888 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2889 = dataSizeInPages		(4 bytes)
	load	[r14+-268],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2888  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-260]
_Label_2884:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2889 then goto _Label_2887		
	load	[r14+-260],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2887
_Label_2885:
	mov	2907,r13		! source line 2907
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2908,r13		! source line 2908
	mov	"\0\0AS",r10
	mov	2908,r13		! source line 2908
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
	mov	2911,r13		! source line 2911
	mov	"\0\0IF",r10
	mov	2911,r13		! source line 2911
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2893) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2892  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2892 then goto _Label_2891 else goto _Label_2890
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2890
	jmp	_Label_2891
_Label_2890:
! THEN...
	mov	2912,r13		! source line 2912
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2894 = _StringConst_212
	set	_StringConst_212,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2894  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2912,r13		! source line 2912
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2913,r13		! source line 2913
	mov	"\0\0SE",r10
!   _temp_2895 = &_P_Kernel_frameManager
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
	mov	2914,r13		! source line 2914
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2891:
! ASSIGNMENT STATEMENT...
	mov	2916,r13		! source line 2916
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-228],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-228]
!   Increment the FOR-LOOP index variable and jump back
_Label_2886:
!   i = i + 1
	load	[r14+-260],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
	jmp	_Label_2884
! END FOR
_Label_2887:
! IF STATEMENT...
	mov	2920,r13		! source line 2920
	mov	"\0\0IF",r10
	mov	2920,r13		! source line 2920
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2899) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2898  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_2898 == 707406378 then goto _Label_2897		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2897
!	jmp	_Label_2896
_Label_2896:
! THEN...
	mov	2921,r13		! source line 2921
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2900 = _StringConst_213
	set	_StringConst_213,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2900  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2921,r13		! source line 2921
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2922,r13		! source line 2922
	mov	"\0\0SE",r10
!   _temp_2901 = &_P_Kernel_frameManager
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
	mov	2923,r13		! source line 2923
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2897:
! ASSIGNMENT STATEMENT...
	mov	2927,r13		! source line 2927
	mov	"\0\0AS",r10
	mov	2927,r13		! source line 2927
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
	mov	2931,r13		! source line 2931
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2934,r13		! source line 2934
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
	.word	_Label_2902
	.word	8		! total size of parameters
	.word	276		! frame size = 276
	.word	_Label_2903
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2904
	.word	12
	.word	4
	.word	_Label_2905
	.word	-16
	.word	4
	.word	_Label_2906
	.word	-20
	.word	4
	.word	_Label_2907
	.word	-24
	.word	4
	.word	_Label_2908
	.word	-28
	.word	4
	.word	_Label_2909
	.word	-32
	.word	4
	.word	_Label_2910
	.word	-36
	.word	4
	.word	_Label_2911
	.word	-40
	.word	4
	.word	_Label_2912
	.word	-9
	.word	1
	.word	_Label_2913
	.word	-44
	.word	4
	.word	_Label_2914
	.word	-48
	.word	4
	.word	_Label_2915
	.word	-52
	.word	4
	.word	_Label_2916
	.word	-56
	.word	4
	.word	_Label_2917
	.word	-60
	.word	4
	.word	_Label_2918
	.word	-64
	.word	4
	.word	_Label_2919
	.word	-68
	.word	4
	.word	_Label_2920
	.word	-72
	.word	4
	.word	_Label_2921
	.word	-76
	.word	4
	.word	_Label_2922
	.word	-10
	.word	1
	.word	_Label_2923
	.word	-80
	.word	4
	.word	_Label_2924
	.word	-84
	.word	4
	.word	_Label_2925
	.word	-88
	.word	4
	.word	_Label_2926
	.word	-92
	.word	4
	.word	_Label_2927
	.word	-96
	.word	4
	.word	_Label_2928
	.word	-100
	.word	4
	.word	_Label_2929
	.word	-104
	.word	4
	.word	_Label_2930
	.word	-108
	.word	4
	.word	_Label_2931
	.word	-112
	.word	4
	.word	_Label_2932
	.word	-116
	.word	4
	.word	_Label_2933
	.word	-120
	.word	4
	.word	_Label_2934
	.word	-124
	.word	4
	.word	_Label_2935
	.word	-128
	.word	4
	.word	_Label_2936
	.word	-132
	.word	4
	.word	_Label_2937
	.word	-136
	.word	4
	.word	_Label_2938
	.word	-140
	.word	4
	.word	_Label_2939
	.word	-144
	.word	4
	.word	_Label_2940
	.word	-148
	.word	4
	.word	_Label_2941
	.word	-152
	.word	4
	.word	_Label_2942
	.word	-156
	.word	4
	.word	_Label_2943
	.word	-160
	.word	4
	.word	_Label_2944
	.word	-164
	.word	4
	.word	_Label_2945
	.word	-168
	.word	4
	.word	_Label_2946
	.word	-172
	.word	4
	.word	_Label_2947
	.word	-176
	.word	4
	.word	_Label_2948
	.word	-180
	.word	4
	.word	_Label_2949
	.word	-184
	.word	4
	.word	_Label_2950
	.word	-188
	.word	4
	.word	_Label_2951
	.word	-192
	.word	4
	.word	_Label_2952
	.word	-196
	.word	4
	.word	_Label_2953
	.word	-200
	.word	4
	.word	_Label_2954
	.word	-204
	.word	4
	.word	_Label_2955
	.word	-208
	.word	4
	.word	_Label_2956
	.word	-212
	.word	4
	.word	_Label_2957
	.word	-216
	.word	4
	.word	_Label_2958
	.word	-220
	.word	4
	.word	_Label_2959
	.word	-224
	.word	4
	.word	_Label_2960
	.word	-228
	.word	4
	.word	_Label_2961
	.word	-232
	.word	4
	.word	_Label_2962
	.word	-236
	.word	4
	.word	_Label_2963
	.word	-240
	.word	4
	.word	_Label_2964
	.word	-244
	.word	4
	.word	_Label_2965
	.word	-248
	.word	4
	.word	_Label_2966
	.word	-252
	.word	4
	.word	_Label_2967
	.word	-256
	.word	4
	.word	_Label_2968
	.word	-260
	.word	4
	.word	_Label_2969
	.word	-264
	.word	4
	.word	_Label_2970
	.word	-268
	.word	4
	.word	_Label_2971
	.word	-272
	.word	4
	.word	0
_Label_2902:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_2903:
	.ascii	"Pself\0"
	.align
_Label_2904:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_2905:
	.byte	'?'
	.ascii	"_temp_2901\0"
	.align
_Label_2906:
	.byte	'?'
	.ascii	"_temp_2900\0"
	.align
_Label_2907:
	.byte	'?'
	.ascii	"_temp_2899\0"
	.align
_Label_2908:
	.byte	'?'
	.ascii	"_temp_2898\0"
	.align
_Label_2909:
	.byte	'?'
	.ascii	"_temp_2895\0"
	.align
_Label_2910:
	.byte	'?'
	.ascii	"_temp_2894\0"
	.align
_Label_2911:
	.byte	'?'
	.ascii	"_temp_2893\0"
	.align
_Label_2912:
	.byte	'C'
	.ascii	"_temp_2892\0"
	.align
_Label_2913:
	.byte	'?'
	.ascii	"_temp_2889\0"
	.align
_Label_2914:
	.byte	'?'
	.ascii	"_temp_2888\0"
	.align
_Label_2915:
	.byte	'?'
	.ascii	"_temp_2883\0"
	.align
_Label_2916:
	.byte	'?'
	.ascii	"_temp_2882\0"
	.align
_Label_2917:
	.byte	'?'
	.ascii	"_temp_2881\0"
	.align
_Label_2918:
	.byte	'?'
	.ascii	"_temp_2880\0"
	.align
_Label_2919:
	.byte	'?'
	.ascii	"_temp_2877\0"
	.align
_Label_2920:
	.byte	'?'
	.ascii	"_temp_2876\0"
	.align
_Label_2921:
	.byte	'?'
	.ascii	"_temp_2875\0"
	.align
_Label_2922:
	.byte	'C'
	.ascii	"_temp_2874\0"
	.align
_Label_2923:
	.byte	'?'
	.ascii	"_temp_2871\0"
	.align
_Label_2924:
	.byte	'?'
	.ascii	"_temp_2870\0"
	.align
_Label_2925:
	.byte	'?'
	.ascii	"_temp_2865\0"
	.align
_Label_2926:
	.byte	'?'
	.ascii	"_temp_2864\0"
	.align
_Label_2927:
	.byte	'?'
	.ascii	"_temp_2863\0"
	.align
_Label_2928:
	.byte	'?'
	.ascii	"_temp_2862\0"
	.align
_Label_2929:
	.byte	'?'
	.ascii	"_temp_2859\0"
	.align
_Label_2930:
	.byte	'?'
	.ascii	"_temp_2858\0"
	.align
_Label_2931:
	.byte	'?'
	.ascii	"_temp_2857\0"
	.align
_Label_2932:
	.byte	'?'
	.ascii	"_temp_2856\0"
	.align
_Label_2933:
	.byte	'?'
	.ascii	"_temp_2855\0"
	.align
_Label_2934:
	.byte	'?'
	.ascii	"_temp_2852\0"
	.align
_Label_2935:
	.byte	'?'
	.ascii	"_temp_2851\0"
	.align
_Label_2936:
	.byte	'?'
	.ascii	"_temp_2850\0"
	.align
_Label_2937:
	.byte	'?'
	.ascii	"_temp_2849\0"
	.align
_Label_2938:
	.byte	'?'
	.ascii	"_temp_2848\0"
	.align
_Label_2939:
	.byte	'?'
	.ascii	"_temp_2845\0"
	.align
_Label_2940:
	.byte	'?'
	.ascii	"_temp_2844\0"
	.align
_Label_2941:
	.byte	'?'
	.ascii	"_temp_2841\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2840\0"
	.align
_Label_2943:
	.byte	'?'
	.ascii	"_temp_2837\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2836\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2833\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2830\0"
	.align
_Label_2947:
	.byte	'?'
	.ascii	"_temp_2829\0"
	.align
_Label_2948:
	.byte	'?'
	.ascii	"_temp_2826\0"
	.align
_Label_2949:
	.byte	'?'
	.ascii	"_temp_2825\0"
	.align
_Label_2950:
	.byte	'?'
	.ascii	"_temp_2824\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2823\0"
	.align
_Label_2952:
	.byte	'?'
	.ascii	"_temp_2822\0"
	.align
_Label_2953:
	.byte	'?'
	.ascii	"_temp_2821\0"
	.align
_Label_2954:
	.byte	'?'
	.ascii	"_temp_2820\0"
	.align
_Label_2955:
	.byte	'?'
	.ascii	"_temp_2819\0"
	.align
_Label_2956:
	.byte	'?'
	.ascii	"_temp_2818\0"
	.align
_Label_2957:
	.byte	'?'
	.ascii	"_temp_2815\0"
	.align
_Label_2958:
	.byte	'?'
	.ascii	"_temp_2814\0"
	.align
_Label_2959:
	.byte	'?'
	.ascii	"_temp_2813\0"
	.align
_Label_2960:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_2961:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_2962:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_2963:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_2964:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_2965:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_2966:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_2967:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_2968:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2969:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_2970:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_2971:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
