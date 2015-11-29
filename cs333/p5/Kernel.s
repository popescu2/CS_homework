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
_StringConst_209:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_208:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_207:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_206:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_205:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_204:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_203:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_202:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_201:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_200:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_199:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_198:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_197:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_196:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_195:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_194:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_193:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_192:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_191:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_190:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_189:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_188:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_187:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_186:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_185:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_184:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_183:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_182:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_181:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_180:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_179:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_178:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_177:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_176:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_175:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_174:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_173:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_172:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_171:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_170:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_169:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_168:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_167:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_166:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_165:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_164:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_163:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_162:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_161:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_160:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_159:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_158:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_157:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_156:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
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
	.word	6			! length
	.ascii	"      "
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
	.word	9			! length
	.ascii	"         "
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
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_146:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_145:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_144:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_143:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_142:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_141:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_140:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_139:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_138:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_137:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_136:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_135:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_134:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_133:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_132:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_131:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_130:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_129:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_128:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_127:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_126:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_125:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_124:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_123:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_122:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_121:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_120:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_119:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_118:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_117:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_116:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_115:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_114:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_113:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_112:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_111:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_110:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_109:
	.word	11			! length
	.ascii	"Test Thread"
	.align
_StringConst_108:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_107:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_106:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_105:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_104:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_103:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_102:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_101:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_100:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_99:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_98:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_97:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_96:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_95:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_94:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_93:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_92:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_91:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_90:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_89:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_88:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_87:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_86:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_85:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_84:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_83:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_82:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_81:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_80:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_79:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_78:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_77:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_76:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_75:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_74:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_73:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_72:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_71:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_70:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_69:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_68:
	.word	10			! length
	.ascii	"fileDesc: "
	.align
_StringConst_67:
	.word	27			! length
	.ascii	"Handle_Sys_Close invoked! \n"
	.align
_StringConst_66:
	.word	15			! length
	.ascii	"newCurrentPos: "
	.align
_StringConst_65:
	.word	10			! length
	.ascii	"fileDesc: "
	.align
_StringConst_64:
	.word	26			! length
	.ascii	"Handle_Sys_Seek invoked! \n"
	.align
_StringConst_63:
	.word	13			! length
	.ascii	"sizeInBytes: "
	.align
_StringConst_62:
	.word	24			! length
	.ascii	"virt address of buffer: "
	.align
_StringConst_61:
	.word	10			! length
	.ascii	"fileDesc: "
	.align
_StringConst_60:
	.word	27			! length
	.ascii	"Handle_Sys_Write invoked! \n"
	.align
_StringConst_59:
	.word	13			! length
	.ascii	"sizeInBytes: "
	.align
_StringConst_58:
	.word	24			! length
	.ascii	"virt address of buffer: "
	.align
_StringConst_57:
	.word	11			! length
	.ascii	"file Desc: "
	.align
_StringConst_56:
	.word	26			! length
	.ascii	"Handle_Sys_Read invoked! \n"
	.align
_StringConst_55:
	.word	10			! length
	.ascii	"filename: "
	.align
_StringConst_54:
	.word	25			! length
	.ascii	"Virt addr of filename is "
	.align
_StringConst_53:
	.word	26			! length
	.ascii	"Handle_SYs_Open invoked! \n"
	.align
_StringConst_52:
	.word	10			! length
	.ascii	"filename: "
	.align
_StringConst_51:
	.word	29			! length
	.ascii	"Virtual address of filename: "
	.align
_StringConst_50:
	.word	28			! length
	.ascii	"Handle_Sys_Create invoked! \n"
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
	be	_Label_218
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
_Label_218:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_219
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_219
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_219
_Label_219:
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
_Label_3010:
	push	r0
	sub	r1,1,r1
	bne	_Label_3010
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_220 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_220  sizeInBytes=4
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
_Label_3011:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3011
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_224 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_225 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_224  sizeInBytes=4
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
!   _temp_226 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_227 = _temp_226 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_227 = 3  (sizeInBytes=4)
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
_Label_3012:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3012
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_229 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_230 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_229  sizeInBytes=4
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
!   _temp_231 = _function_216_IdleFunction
	set	_function_216_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_232 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_231  sizeInBytes=4
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
	.word	_Label_233
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_234
	.word	-12
	.word	4
	.word	_Label_235
	.word	-16
	.word	4
	.word	_Label_236
	.word	-20
	.word	4
	.word	_Label_237
	.word	-24
	.word	4
	.word	_Label_238
	.word	-28
	.word	4
	.word	_Label_239
	.word	-32
	.word	4
	.word	_Label_240
	.word	-36
	.word	4
	.word	_Label_241
	.word	-40
	.word	4
	.word	_Label_242
	.word	-44
	.word	4
	.word	_Label_243
	.word	-48
	.word	4
	.word	_Label_244
	.word	-52
	.word	4
	.word	_Label_245
	.word	-56
	.word	4
	.word	_Label_246
	.word	-60
	.word	4
	.word	0
_Label_233:
	.ascii	"InitializeScheduler\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_220\0"
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
_Label_3013:
	push	r0
	sub	r1,1,r1
	bne	_Label_3013
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	40,r13		! source line 40
	mov	"\0\0AS",r10
	mov	40,r13		! source line 40
	mov	"\0\0SE",r10
!   _temp_247 = &_P_Kernel_threadManager
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
!   _temp_248 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-16]
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_248  sizeInBytes=4
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
!   _temp_249 = _function_217_StartUserProcess
	set	_function_217_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_249  sizeInBytes=4
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
	.word	_Label_250
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_251
	.word	-12
	.word	4
	.word	_Label_252
	.word	-16
	.word	4
	.word	_Label_253
	.word	-20
	.word	4
	.word	_Label_254
	.word	-24
	.word	4
	.word	0
_Label_250:
	.ascii	"InitFirstProcess\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_254:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_217_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_217_StartUserProcess,r1
	push	r1
	mov	33,r1
_Label_3014:
	push	r0
	sub	r1,1,r1
	bne	_Label_3014
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
!   _temp_255 = &_P_Kernel_processManager
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
!   _temp_256 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: *_temp_256 = pcb  (sizeInBytes=4)
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
!   _temp_257 = pcb + 24
	load	[r14+-108],r1
	add	r1,24,r1
	store	r1,[r14+-96]
!   Data Move: *_temp_257 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-96],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	69,r13		! source line 69
	mov	"\0\0AS",r10
	mov	69,r13		! source line 69
	mov	"\0\0SE",r10
!   _temp_258 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-92]
!   _temp_259 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=_temp_258  sizeInBytes=4
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
!   _temp_261 = pcb + 32
	load	[r14+-108],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   _temp_260 = _temp_261		(4 bytes)
	load	[r14+-80],r1
	store	r1,[r14+-84]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_260  sizeInBytes=4
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
!   _temp_262 = &_P_Kernel_fileManager
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
!   _temp_263 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_263  sizeInBytes=4
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
!   _temp_265 = pcb + 32
	load	[r14+-108],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   _temp_266 = _temp_265 + 4
	load	[r14+-64],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Data Move: _temp_264 = *_temp_266  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_264  sizeInBytes=4
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
!   _temp_268 = pcb + 32
	load	[r14+-108],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   _temp_269 = _temp_268 + 4
	load	[r14+-52],r1
	add	r1,4,r1
	store	r1,[r14+-48]
!   Data Move: _temp_267 = *_temp_269  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   InitStackUserTop = _temp_267 * 8192		(int)
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
!   _temp_270 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-44]
!   Move address of _temp_270 [999 ] into _temp_271
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
!   InitSystemStackTop = _temp_271		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-124]
! SEND STATEMENT...
	mov	82,r13		! source line 82
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_272 = pcb + 32
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
!   _temp_273 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_273 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_274 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_274  sizeInBytes=4
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
!   _temp_275 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_275  sizeInBytes=4
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
!   Data Move: _temp_276 = *InitSystemStackTop  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_276  sizeInBytes=4
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
!   _temp_277 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_277  sizeInBytes=4
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
!   _temp_278 = InitSystemStackTop		(4 bytes)
	load	[r14+-124],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=InitStackUserTop  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_278  sizeInBytes=4
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
_RoutineDescriptor__function_217_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_279
	.word	4		! total size of parameters
	.word	132		! frame size = 132
	.word	_Label_280
	.word	8
	.word	4
	.word	_Label_281
	.word	-12
	.word	4
	.word	_Label_282
	.word	-16
	.word	4
	.word	_Label_283
	.word	-20
	.word	4
	.word	_Label_284
	.word	-24
	.word	4
	.word	_Label_285
	.word	-28
	.word	4
	.word	_Label_286
	.word	-32
	.word	4
	.word	_Label_287
	.word	-36
	.word	4
	.word	_Label_288
	.word	-40
	.word	4
	.word	_Label_289
	.word	-44
	.word	4
	.word	_Label_290
	.word	-48
	.word	4
	.word	_Label_291
	.word	-52
	.word	4
	.word	_Label_292
	.word	-56
	.word	4
	.word	_Label_293
	.word	-60
	.word	4
	.word	_Label_294
	.word	-64
	.word	4
	.word	_Label_295
	.word	-68
	.word	4
	.word	_Label_296
	.word	-72
	.word	4
	.word	_Label_297
	.word	-76
	.word	4
	.word	_Label_298
	.word	-80
	.word	4
	.word	_Label_299
	.word	-84
	.word	4
	.word	_Label_300
	.word	-88
	.word	4
	.word	_Label_301
	.word	-92
	.word	4
	.word	_Label_302
	.word	-96
	.word	4
	.word	_Label_303
	.word	-100
	.word	4
	.word	_Label_304
	.word	-104
	.word	4
	.word	_Label_305
	.word	-108
	.word	4
	.word	_Label_306
	.word	-112
	.word	4
	.word	_Label_307
	.word	-116
	.word	4
	.word	_Label_308
	.word	-120
	.word	4
	.word	_Label_309
	.word	-124
	.word	4
	.word	_Label_310
	.word	-128
	.word	4
	.word	0
_Label_279:
	.ascii	"StartUserProcess\0"
	.align
_Label_280:
	.byte	'I'
	.ascii	"p\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_305:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_306:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_307:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_308:
	.byte	'I'
	.ascii	"InitStackUserTop\0"
	.align
_Label_309:
	.byte	'P'
	.ascii	"InitSystemStackTop\0"
	.align
_Label_310:
	.byte	'I'
	.ascii	"OldIntStat\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_216_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_216_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3015:
	push	r0
	sub	r1,1,r1
	bne	_Label_3015
	mov	109,r13		! source line 109
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	119,r13		! source line 119
	mov	"\0\0WH",r10
_Label_311:
!	jmp	_Label_312
_Label_312:
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
!   _temp_316 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_314 else goto _Label_315
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_315
	jmp	_Label_314
_Label_314:
! THEN...
	mov	122,r13		! source line 122
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	122,r13		! source line 122
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_317
_Label_315:
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
_Label_317:
! END WHILE...
	jmp	_Label_311
_Label_313:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_216_IdleFunction:
	.word	_sourceFileName
	.word	_Label_318
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_319
	.word	8
	.word	4
	.word	_Label_320
	.word	-12
	.word	4
	.word	_Label_321
	.word	-16
	.word	4
	.word	0
_Label_318:
	.ascii	"IdleFunction\0"
	.align
_Label_319:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_321:
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
_Label_3016:
	push	r0
	sub	r1,1,r1
	bne	_Label_3016
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
!   _temp_324 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_324 ) then goto _Label_323		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_323
!	jmp	_Label_322
_Label_322:
! THEN...
	mov	148,r13		! source line 148
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_326 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_326 [0 ] into _temp_327
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
!   _temp_325 = _temp_327		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_325  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	148,r13		! source line 148
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_323:
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
!   _temp_328 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_328 = 3  (sizeInBytes=4)
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
_Label_329:
	mov	161,r13		! source line 161
	mov	"\0\0SE",r10
!   _temp_333 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_332  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_332 then goto _Label_331 else goto _Label_330
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_330
	jmp	_Label_331
_Label_330:
	mov	161,r13		! source line 161
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	162,r13		! source line 162
	mov	"\0\0AS",r10
	mov	162,r13		! source line 162
	mov	"\0\0SE",r10
!   _temp_334 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_335 = &_P_Kernel_threadManager
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
	jmp	_Label_329
_Label_331:
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_338 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_338 ) then goto _Label_337		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_337
!	jmp	_Label_336
_Label_336:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_340 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_340 [0 ] into _temp_341
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
!   _temp_339 = _temp_341		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_339  sizeInBytes=4
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
!   _temp_343 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_342 = *_temp_343  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_342) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_344 = _temp_342 + 32
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
_Label_337:
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
	.word	_Label_345
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_346
	.word	8
	.word	4
	.word	_Label_347
	.word	-16
	.word	4
	.word	_Label_348
	.word	-20
	.word	4
	.word	_Label_349
	.word	-24
	.word	4
	.word	_Label_350
	.word	-28
	.word	4
	.word	_Label_351
	.word	-32
	.word	4
	.word	_Label_352
	.word	-36
	.word	4
	.word	_Label_353
	.word	-40
	.word	4
	.word	_Label_354
	.word	-44
	.word	4
	.word	_Label_355
	.word	-48
	.word	4
	.word	_Label_356
	.word	-52
	.word	4
	.word	_Label_357
	.word	-9
	.word	1
	.word	_Label_358
	.word	-56
	.word	4
	.word	_Label_359
	.word	-60
	.word	4
	.word	_Label_360
	.word	-64
	.word	4
	.word	_Label_361
	.word	-68
	.word	4
	.word	_Label_362
	.word	-72
	.word	4
	.word	_Label_363
	.word	-76
	.word	4
	.word	_Label_364
	.word	-80
	.word	4
	.word	0
_Label_345:
	.ascii	"Run\0"
	.align
_Label_346:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_347:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_348:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_349:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_350:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_351:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_352:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_357:
	.byte	'C'
	.ascii	"_temp_332\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_363:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_364:
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
_Label_3017:
	push	r0
	sub	r1,1,r1
	bne	_Label_3017
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
!   _temp_365 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_365  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	182,r13		! source line 182
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	183,r13		! source line 183
	mov	"\0\0SE",r10
!   _temp_366 = _function_215_ThreadPrintShort
	set	_function_215_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_367 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_366  sizeInBytes=4
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
	.word	_Label_368
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_369
	.word	-12
	.word	4
	.word	_Label_370
	.word	-16
	.word	4
	.word	_Label_371
	.word	-20
	.word	4
	.word	_Label_372
	.word	-24
	.word	4
	.word	0
_Label_368:
	.ascii	"PrintReadyList\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_366\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_365\0"
	.align
_Label_372:
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
_Label_3018:
	push	r0
	sub	r1,1,r1
	bne	_Label_3018
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
!   _temp_373 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_373  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_375 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_374 = *_temp_375  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_374  sizeInBytes=4
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
!   _temp_376 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_376  sizeInBytes=4
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
	.word	_Label_377
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_378
	.word	-12
	.word	4
	.word	_Label_379
	.word	-16
	.word	4
	.word	_Label_380
	.word	-20
	.word	4
	.word	_Label_381
	.word	-24
	.word	4
	.word	_Label_382
	.word	-28
	.word	4
	.word	_Label_383
	.word	-32
	.word	4
	.word	0
_Label_377:
	.ascii	"ThreadStartMain\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_382:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_383:
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
_Label_3019:
	push	r0
	sub	r1,1,r1
	bne	_Label_3019
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
!   _temp_384 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_385 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_385  sizeInBytes=4
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
	.word	_Label_386
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_387
	.word	-12
	.word	4
	.word	_Label_388
	.word	-16
	.word	4
	.word	_Label_389
	.word	-20
	.word	4
	.word	0
_Label_386:
	.ascii	"ThreadFinish\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_388:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_389:
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
_Label_3020:
	push	r0
	sub	r1,1,r1
	bne	_Label_3020
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
!   _temp_390 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_390  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	242,r13		! source line 242
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	243,r13		! source line 243
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_392		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_392
!	jmp	_Label_391
_Label_391:
! THEN...
	mov	244,r13		! source line 244
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_393 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_393  sizeInBytes=4
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
!   _temp_395 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_394 = *_temp_395  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_394  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	245,r13		! source line 245
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_392:
! CALL STATEMENT...
!   _temp_396 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_396  sizeInBytes=4
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
!   _temp_397 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_397  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	249,r13		! source line 249
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_398 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_398  sizeInBytes=4
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
	.word	_Label_399
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_400
	.word	8
	.word	4
	.word	_Label_401
	.word	-12
	.word	4
	.word	_Label_402
	.word	-16
	.word	4
	.word	_Label_403
	.word	-20
	.word	4
	.word	_Label_404
	.word	-24
	.word	4
	.word	_Label_405
	.word	-28
	.word	4
	.word	_Label_406
	.word	-32
	.word	4
	.word	_Label_407
	.word	-36
	.word	4
	.word	_Label_408
	.word	-40
	.word	4
	.word	0
_Label_399:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_400:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_408:
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
_Label_3021:
	push	r0
	sub	r1,1,r1
	bne	_Label_3021
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
!   if newStatus != 1 then goto _Label_410		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_410
!	jmp	_Label_409
_Label_409:
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
	jmp	_Label_411
_Label_410:
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
_Label_411:
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
	.word	_Label_412
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_413
	.word	8
	.word	4
	.word	_Label_414
	.word	-12
	.word	4
	.word	0
_Label_412:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_413:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_414:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_215_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_215_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3022:
	push	r0
	sub	r1,1,r1
	bne	_Label_3022
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
!   if t == 0 then goto _Label_418		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_418
!   _temp_417 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_419
_Label_418:
!   _temp_417 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_419:
!   if _temp_417 then goto _Label_416 else goto _Label_415
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_415
	jmp	_Label_416
_Label_415:
! THEN...
	mov	833,r13		! source line 833
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_420 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_420  sizeInBytes=4
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
_Label_416:
! CALL STATEMENT...
!   _temp_421 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_421  sizeInBytes=4
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
!   _temp_423 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_422 = *_temp_423  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_422  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	837,r13		! source line 837
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_424 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_424  sizeInBytes=4
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
!   _temp_433 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_432 = *_temp_433  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_427
	cmp	r1,2
	be	_Label_428
	cmp	r1,3
	be	_Label_429
	cmp	r1,4
	be	_Label_430
	cmp	r1,5
	be	_Label_431
	jmp	_Label_425
! CASE 1...
_Label_427:
! CALL STATEMENT...
!   _temp_434 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_434  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	841,r13		! source line 841
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	842,r13		! source line 842
	mov	"\0\0BR",r10
	jmp	_Label_426
! CASE 2...
_Label_428:
! CALL STATEMENT...
!   _temp_435 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_435  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	844,r13		! source line 844
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	845,r13		! source line 845
	mov	"\0\0BR",r10
	jmp	_Label_426
! CASE 3...
_Label_429:
! CALL STATEMENT...
!   _temp_436 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_436  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	847,r13		! source line 847
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	848,r13		! source line 848
	mov	"\0\0BR",r10
	jmp	_Label_426
! CASE 4...
_Label_430:
! CALL STATEMENT...
!   _temp_437 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_437  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	850,r13		! source line 850
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	851,r13		! source line 851
	mov	"\0\0BR",r10
	jmp	_Label_426
! CASE 5...
_Label_431:
! CALL STATEMENT...
!   _temp_438 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_438  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	853,r13		! source line 853
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	854,r13		! source line 854
	mov	"\0\0BR",r10
	jmp	_Label_426
! DEFAULT CASE...
_Label_425:
! CALL STATEMENT...
!   _temp_439 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_439  sizeInBytes=4
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
_Label_426:
! CALL STATEMENT...
!   _temp_440 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_440  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	858,r13		! source line 858
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_441 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_441  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	859,r13		! source line 859
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_442 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_442  sizeInBytes=4
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
_RoutineDescriptor__function_215_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_443
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_444
	.word	8
	.word	4
	.word	_Label_445
	.word	-16
	.word	4
	.word	_Label_446
	.word	-20
	.word	4
	.word	_Label_447
	.word	-24
	.word	4
	.word	_Label_448
	.word	-28
	.word	4
	.word	_Label_449
	.word	-32
	.word	4
	.word	_Label_450
	.word	-36
	.word	4
	.word	_Label_451
	.word	-40
	.word	4
	.word	_Label_452
	.word	-44
	.word	4
	.word	_Label_453
	.word	-48
	.word	4
	.word	_Label_454
	.word	-52
	.word	4
	.word	_Label_455
	.word	-56
	.word	4
	.word	_Label_456
	.word	-60
	.word	4
	.word	_Label_457
	.word	-64
	.word	4
	.word	_Label_458
	.word	-68
	.word	4
	.word	_Label_459
	.word	-72
	.word	4
	.word	_Label_460
	.word	-76
	.word	4
	.word	_Label_461
	.word	-9
	.word	1
	.word	_Label_462
	.word	-80
	.word	4
	.word	0
_Label_443:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_444:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_445:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_447:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_424\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_423\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_422\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_421\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_420\0"
	.align
_Label_461:
	.byte	'C'
	.ascii	"_temp_417\0"
	.align
_Label_462:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_214_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_214_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3023:
	push	r0
	sub	r1,1,r1
	bne	_Label_3023
	mov	1157,r13		! source line 1157
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_463 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_463  sizeInBytes=4
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
_RoutineDescriptor__function_214_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_464
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_465
	.word	8
	.word	4
	.word	_Label_466
	.word	-12
	.word	4
	.word	0
_Label_464:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_465:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_463\0"
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
_Label_3024:
	push	r0
	sub	r1,1,r1
	bne	_Label_3024
	mov	1167,r13		! source line 1167
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_467 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_467  sizeInBytes=4
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
	.ascii	"ProcessFinish\0"
	.align
_Label_469:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_467\0"
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
_Label_3025:
	push	r0
	sub	r1,1,r1
	bne	_Label_3025
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
	.word	_Label_471
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_471:
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
_Label_3026:
	push	r0
	sub	r1,1,r1
	bne	_Label_3026
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
!   _temp_475 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_476 = _temp_475 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_474 = *_temp_476  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_474 == 0 then goto _Label_473		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_473
!	jmp	_Label_472
_Label_472:
! THEN...
	mov	1704,r13		! source line 1704
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1704,r13		! source line 1704
	mov	"\0\0SE",r10
!   _temp_478 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_479 = _temp_478 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_477 = *_temp_479  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_477) then goto _runtimeErrorNullPointer
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
_Label_473:
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
	.word	_Label_480
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_481
	.word	-12
	.word	4
	.word	_Label_482
	.word	-16
	.word	4
	.word	_Label_483
	.word	-20
	.word	4
	.word	_Label_484
	.word	-24
	.word	4
	.word	_Label_485
	.word	-28
	.word	4
	.word	_Label_486
	.word	-32
	.word	4
	.word	0
_Label_480:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_479\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_478\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_477\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_476\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_475\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_474\0"
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
	.word	_Label_487
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_487:
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
_Label_3027:
	push	r0
	sub	r1,1,r1
	bne	_Label_3027
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
!   _temp_488 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_488  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1732,r13		! source line 1732
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
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
	.word	_Label_489
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_490
	.word	-12
	.word	4
	.word	0
_Label_489:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_488\0"
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
_Label_3028:
	push	r0
	sub	r1,1,r1
	bne	_Label_3028
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
!   _temp_491 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_491  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1744,r13		! source line 1744
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
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
	.word	_Label_492
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_493
	.word	-12
	.word	4
	.word	0
_Label_492:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_491\0"
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
_Label_3029:
	push	r0
	sub	r1,1,r1
	bne	_Label_3029
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
!   _temp_494 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_494  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1756,r13		! source line 1756
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
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
	.word	_Label_495
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_496
	.word	-12
	.word	4
	.word	0
_Label_495:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_494\0"
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
_Label_3030:
	push	r0
	sub	r1,1,r1
	bne	_Label_3030
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
!   _temp_497 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_497  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1768,r13		! source line 1768
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
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
	.word	_Label_498
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_499
	.word	-12
	.word	4
	.word	0
_Label_498:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_497\0"
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
_Label_3031:
	push	r0
	sub	r1,1,r1
	bne	_Label_3031
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
!   _temp_500 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_500  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1780,r13		! source line 1780
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
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
	.word	_Label_501
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_502
	.word	-12
	.word	4
	.word	0
_Label_501:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_500\0"
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
_Label_3032:
	push	r0
	sub	r1,1,r1
	bne	_Label_3032
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
!   _temp_503 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_503  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1792,r13		! source line 1792
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
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
	.word	_Label_504
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_505
	.word	-12
	.word	4
	.word	0
_Label_504:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_503\0"
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
_Label_3033:
	push	r0
	sub	r1,1,r1
	bne	_Label_3033
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
!   _temp_506 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_506  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1804,r13		! source line 1804
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
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
	.word	_Label_507
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_508
	.word	-12
	.word	4
	.word	0
_Label_507:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_506\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_213_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_213_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3034:
	push	r0
	sub	r1,1,r1
	bne	_Label_3034
	mov	1809,r13		! source line 1809
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_509 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_509  sizeInBytes=4
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
!   _temp_510 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_510  sizeInBytes=4
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
!   _temp_514 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_513 = *_temp_514  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_513 == 0 then goto _Label_512		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_512
!	jmp	_Label_511
_Label_511:
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
!   _temp_516 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_515 = *_temp_516  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_515) then goto _runtimeErrorNullPointer
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
	jmp	_Label_517
_Label_512:
! ELSE...
	mov	1822,r13		! source line 1822
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_518 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_518  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1822,r13		! source line 1822
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_517:
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
_RoutineDescriptor__function_213_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_519
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_520
	.word	8
	.word	4
	.word	_Label_521
	.word	-12
	.word	4
	.word	_Label_522
	.word	-16
	.word	4
	.word	_Label_523
	.word	-20
	.word	4
	.word	_Label_524
	.word	-24
	.word	4
	.word	_Label_525
	.word	-28
	.word	4
	.word	_Label_526
	.word	-32
	.word	4
	.word	_Label_527
	.word	-36
	.word	4
	.word	0
_Label_519:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_520:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_521:
	.byte	'?'
	.ascii	"_temp_518\0"
	.align
_Label_522:
	.byte	'?'
	.ascii	"_temp_516\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_515\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_514\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_513\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_510\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_509\0"
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
_Label_3035:
	push	r0
	sub	r1,1,r1
	bne	_Label_3035
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
	be	_Label_3036
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_528
_Label_3036:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_528
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_528
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_542,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_542:
	jmp	_Label_534	! 1:	
	jmp	_Label_541	! 2:	
	jmp	_Label_531	! 3:	
	jmp	_Label_530	! 4:	
	jmp	_Label_533	! 5:	
	jmp	_Label_532	! 6:	
	jmp	_Label_535	! 7:	
	jmp	_Label_536	! 8:	
	jmp	_Label_537	! 9:	
	jmp	_Label_538	! 10:	
	jmp	_Label_539	! 11:	
	jmp	_Label_540	! 12:	
! CASE 4...
_Label_530:
! RETURN STATEMENT...
	mov	1858,r13		! source line 1858
	mov	"\0\0RE",r10
!   Call the function
	mov	1858,r13		! source line 1858
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_543  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_543  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_531:
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
_Label_532:
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
!   Retrieve Result: targetName=_temp_544  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_544  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_533:
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
!   Retrieve Result: targetName=_temp_545  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_545  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_534:
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
_Label_535:
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
!   Retrieve Result: targetName=_temp_546  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_546  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_536:
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
!   Retrieve Result: targetName=_temp_547  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_547  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_537:
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
!   Retrieve Result: targetName=_temp_548  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_548  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_538:
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
!   Retrieve Result: targetName=_temp_549  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_549  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_539:
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
!   Retrieve Result: targetName=_temp_550  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_550  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_540:
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
_Label_541:
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
_Label_528:
! CALL STATEMENT...
!   _temp_551 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_551  sizeInBytes=4
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
!   _temp_552 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_552  sizeInBytes=4
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
_Label_529:
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
	.word	_Label_553
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_554
	.word	8
	.word	4
	.word	_Label_555
	.word	12
	.word	4
	.word	_Label_556
	.word	16
	.word	4
	.word	_Label_557
	.word	20
	.word	4
	.word	_Label_558
	.word	24
	.word	4
	.word	_Label_559
	.word	-12
	.word	4
	.word	_Label_560
	.word	-16
	.word	4
	.word	_Label_561
	.word	-20
	.word	4
	.word	_Label_562
	.word	-24
	.word	4
	.word	_Label_563
	.word	-28
	.word	4
	.word	_Label_564
	.word	-32
	.word	4
	.word	_Label_565
	.word	-36
	.word	4
	.word	_Label_566
	.word	-40
	.word	4
	.word	_Label_567
	.word	-44
	.word	4
	.word	_Label_568
	.word	-48
	.word	4
	.word	0
_Label_553:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_554:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_555:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_556:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_557:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_558:
	.byte	'I'
	.ascii	"arg4\0"
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
	.ascii	"_temp_550\0"
	.align
_Label_562:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_563:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_546\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_543\0"
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
_Label_3037:
	push	r0
	sub	r1,1,r1
	bne	_Label_3037
	mov	1896,r13		! source line 1896
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_569 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_569  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1898,r13		! source line 1898
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_570 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_570  sizeInBytes=4
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
	.word	_Label_571
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_572
	.word	8
	.word	4
	.word	_Label_573
	.word	-12
	.word	4
	.word	_Label_574
	.word	-16
	.word	4
	.word	0
_Label_571:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_572:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_574:
	.byte	'?'
	.ascii	"_temp_569\0"
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
_Label_3038:
	push	r0
	sub	r1,1,r1
	bne	_Label_3038
	mov	1906,r13		! source line 1906
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_575 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_575  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1908,r13		! source line 1908
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_576 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_576  sizeInBytes=4
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
	.word	_Label_577
	.word	0		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_578
	.word	-12
	.word	4
	.word	_Label_579
	.word	-16
	.word	4
	.word	0
_Label_577:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_575\0"
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
_Label_3039:
	push	r0
	sub	r1,1,r1
	bne	_Label_3039
	mov	1914,r13		! source line 1914
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_580 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_580  sizeInBytes=4
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
	.word	_Label_581
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_582
	.word	-12
	.word	4
	.word	0
_Label_581:
	.ascii	"Handle_Sys_Yield\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_580\0"
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
_Label_3040:
	push	r0
	sub	r1,1,r1
	bne	_Label_3040
	mov	1921,r13		! source line 1921
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_583 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_583  sizeInBytes=4
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
	.word	_Label_584
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_585
	.word	-12
	.word	4
	.word	0
_Label_584:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_585:
	.byte	'?'
	.ascii	"_temp_583\0"
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
_Label_3041:
	push	r0
	sub	r1,1,r1
	bne	_Label_3041
	mov	1930,r13		! source line 1930
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_586 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_586  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1932,r13		! source line 1932
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_587 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_587  sizeInBytes=4
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
	.word	_Label_588
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_589
	.word	8
	.word	4
	.word	_Label_590
	.word	-12
	.word	4
	.word	_Label_591
	.word	-16
	.word	4
	.word	0
_Label_588:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_589:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_591:
	.byte	'?'
	.ascii	"_temp_586\0"
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
	mov	115,r1
_Label_3042:
	push	r0
	sub	r1,1,r1
	bne	_Label_3042
	mov	1941,r13		! source line 1941
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! str
!   NEW ARRAY Constructor...
!   _temp_593 = &_temp_592
	add	r14,-232,r1
	store	r1,[r14+-128]
!   _temp_593 = _temp_593 + 4
	load	[r14+-128],r1
	add	r1,4,r1
	store	r1,[r14+-128]
!   Next value...
	mov	100,r1
	store	r1,[r14+-124]
_Label_595:
!   Data Move: *_temp_593 = 32  (sizeInBytes=1)
	mov	32,r1
	load	[r14+-128],r2
	storeb	r1,[r2]
!   _temp_593 = _temp_593 + 1
	load	[r14+-128],r1
	add	r1,1,r1
	store	r1,[r14+-128]
!   _temp_594 = _temp_594 + -1
	load	[r14+-124],r1
	add	r1,-1,r1
	store	r1,[r14+-124]
!   if intNotZero (_temp_594) then goto _Label_595
	load	[r14+-124],r1
	cmp	r1,r0
	bne	_Label_595
!   Initialize the array size...
	mov	100,r1
	store	r1,[r14+-232]
!   _temp_596 = &_temp_592
	add	r14,-232,r1
	store	r1,[r14+-120]
!   make sure array has size 100
	load	[r14+-120],r1
	load	[r1],r1
	set	100, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: str = *_temp_596  (sizeInBytes=104)
	load	[r14+-120],r5
	add	r14,-336,r4
	mov	26,r3
_Label_3043:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3043
! newaddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newaddrSpace = zeros  (sizeInBytes=92)
	add	r14,-432,r4
	mov	23,r3
_Label_3044:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3044
!   newaddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-432]
! ASSIGNMENT STATEMENT...
	mov	1954,r13		! source line 1954
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1954,r13		! source line 1954
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-452]
! ASSIGNMENT STATEMENT...
	mov	1955,r13		! source line 1955
	mov	"\0\0AS",r10
	mov	1955,r13		! source line 1955
	mov	"\0\0SE",r10
!   _temp_598 = &str
	add	r14,-336,r1
	store	r1,[r14+-112]
!   _temp_599 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-108]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_601 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_600 = *_temp_601  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_600) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_602 = _temp_600 + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_598  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_599  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=100  sizeInBytes=4
	mov	100,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=success  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-340]
! ASSIGNMENT STATEMENT...
	mov	1967,r13		! source line 1967
	mov	"\0\0AS",r10
	mov	1967,r13		! source line 1967
	mov	"\0\0SE",r10
!   _temp_603 = &str
	add	r14,-336,r1
	store	r1,[r14+-92]
!   _temp_604 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=_temp_603  sizeInBytes=4
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
	store	r1,[r14+-436]
! IF STATEMENT...
	mov	1968,r13		! source line 1968
	mov	"\0\0IF",r10
!   if intIsZero (openFile) then goto _Label_605
	load	[r14+-436],r1
	cmp	r1,r0
	be	_Label_605
	jmp	_Label_606
_Label_605:
! THEN...
	mov	1969,r13		! source line 1969
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1969,r13		! source line 1969
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,464,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_606:
! SEND STATEMENT...
	mov	1972,r13		! source line 1972
	mov	"\0\0SE",r10
!   _temp_607 = &newaddrSpace
	add	r14,-432,r1
	store	r1,[r14+-84]
!   Send message Init
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1974,r13		! source line 1974
	mov	"\0\0AS",r10
	mov	1974,r13		! source line 1974
	mov	"\0\0SE",r10
!   _temp_608 = &newaddrSpace
	add	r14,-432,r1
	store	r1,[r14+-80]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-436],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_608  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-436],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-440]
! SEND STATEMENT...
	mov	1975,r13		! source line 1975
	mov	"\0\0SE",r10
!   _temp_609 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-436],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	1977,r13		! source line 1977
	mov	"\0\0IF",r10
!   if initPC != -1 then goto _Label_611		(int)
	load	[r14+-440],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_611
!	jmp	_Label_610
_Label_610:
! THEN...
	mov	1978,r13		! source line 1978
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1978,r13		! source line 1978
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,464,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_611:
! SEND STATEMENT...
	mov	1981,r13		! source line 1981
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_614 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_613 = *_temp_614  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_613) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_615 = _temp_613 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   _temp_612 = _temp_615		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-72]
!   _temp_616 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_612  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1983,r13		! source line 1983
	mov	"\0\0AS",r10
!   _temp_618 = &newaddrSpace
	add	r14,-432,r1
	store	r1,[r14+-48]
!   _temp_619 = _temp_618 + 4
	load	[r14+-48],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: _temp_617 = *_temp_619  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   initUserStackTop = _temp_617 * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-448]
! ASSIGNMENT STATEMENT...
	mov	1985,r13		! source line 1985
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_620 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-40]
!   Move address of _temp_620 [999 ] into _temp_621
!     make sure index expr is >= 0
	mov	999,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   initSystemStackTop = _temp_621		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-444]
! SEND STATEMENT...
	mov	1986,r13		! source line 1986
	mov	"\0\0SE",r10
!   _temp_622 = &newaddrSpace
	add	r14,-432,r1
	store	r1,[r14+-32]
!   Send message SetToThisPageTable
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1989,r13		! source line 1989
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_624 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_623 = *_temp_624  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_623) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_625 = _temp_623 + 32
	load	[r14+-28],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_625 = newaddrSpace  (sizeInBytes=92)
	add	r14,-432,r5
	load	[r14+-20],r4
	mov	23,r3
_Label_3045:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3045
! ASSIGNMENT STATEMENT...
	mov	1991,r13		! source line 1991
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_626 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_626 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_627 = initSystemStackTop		(4 bytes)
	load	[r14+-444],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-448],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-440],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_627  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	1992,r13		! source line 1992
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1995,r13		! source line 1995
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,464,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_628
	.word	4		! total size of parameters
	.word	460		! frame size = 460
	.word	_Label_629
	.word	8
	.word	4
	.word	_Label_630
	.word	-12
	.word	4
	.word	_Label_631
	.word	-16
	.word	4
	.word	_Label_632
	.word	-20
	.word	4
	.word	_Label_633
	.word	-24
	.word	4
	.word	_Label_634
	.word	-28
	.word	4
	.word	_Label_635
	.word	-32
	.word	4
	.word	_Label_636
	.word	-36
	.word	4
	.word	_Label_637
	.word	-40
	.word	4
	.word	_Label_638
	.word	-44
	.word	4
	.word	_Label_639
	.word	-48
	.word	4
	.word	_Label_640
	.word	-52
	.word	4
	.word	_Label_641
	.word	-56
	.word	4
	.word	_Label_642
	.word	-60
	.word	4
	.word	_Label_643
	.word	-64
	.word	4
	.word	_Label_644
	.word	-68
	.word	4
	.word	_Label_645
	.word	-72
	.word	4
	.word	_Label_646
	.word	-76
	.word	4
	.word	_Label_647
	.word	-80
	.word	4
	.word	_Label_648
	.word	-84
	.word	4
	.word	_Label_649
	.word	-88
	.word	4
	.word	_Label_650
	.word	-92
	.word	4
	.word	_Label_651
	.word	-96
	.word	4
	.word	_Label_652
	.word	-100
	.word	4
	.word	_Label_653
	.word	-104
	.word	4
	.word	_Label_654
	.word	-108
	.word	4
	.word	_Label_655
	.word	-112
	.word	4
	.word	_Label_656
	.word	-116
	.word	4
	.word	_Label_657
	.word	-120
	.word	4
	.word	_Label_658
	.word	-124
	.word	4
	.word	_Label_659
	.word	-128
	.word	4
	.word	_Label_660
	.word	-232
	.word	104
	.word	_Label_661
	.word	-336
	.word	104
	.word	_Label_662
	.word	-340
	.word	4
	.word	_Label_663
	.word	-432
	.word	92
	.word	_Label_664
	.word	-436
	.word	4
	.word	_Label_665
	.word	-440
	.word	4
	.word	_Label_666
	.word	-444
	.word	4
	.word	_Label_667
	.word	-448
	.word	4
	.word	_Label_668
	.word	-452
	.word	4
	.word	0
_Label_628:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_629:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_630:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_631:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_661:
	.byte	'A'
	.ascii	"str\0"
	.align
_Label_662:
	.byte	'I'
	.ascii	"success\0"
	.align
_Label_663:
	.byte	'O'
	.ascii	"newaddrSpace\0"
	.align
_Label_664:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_665:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_666:
	.byte	'P'
	.ascii	"initSystemStackTop\0"
	.align
_Label_667:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_668:
	.byte	'I'
	.ascii	"oldIntStat\0"
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
_Label_3046:
	push	r0
	sub	r1,1,r1
	bne	_Label_3046
	mov	2000,r13		! source line 2000
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! str
!   NEW ARRAY Constructor...
!   _temp_670 = &_temp_669
	add	r14,-164,r1
	store	r1,[r14+-60]
!   _temp_670 = _temp_670 + 4
	load	[r14+-60],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Next value...
	mov	100,r1
	store	r1,[r14+-56]
_Label_672:
!   Data Move: *_temp_670 = 32  (sizeInBytes=1)
	mov	32,r1
	load	[r14+-60],r2
	storeb	r1,[r2]
!   _temp_670 = _temp_670 + 1
	load	[r14+-60],r1
	add	r1,1,r1
	store	r1,[r14+-60]
!   _temp_671 = _temp_671 + -1
	load	[r14+-56],r1
	add	r1,-1,r1
	store	r1,[r14+-56]
!   if intNotZero (_temp_671) then goto _Label_672
	load	[r14+-56],r1
	cmp	r1,r0
	bne	_Label_672
!   Initialize the array size...
	mov	100,r1
	store	r1,[r14+-164]
!   _temp_673 = &_temp_669
	add	r14,-164,r1
	store	r1,[r14+-52]
!   make sure array has size 100
	load	[r14+-52],r1
	load	[r1],r1
	set	100, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: str = *_temp_673  (sizeInBytes=104)
	load	[r14+-52],r5
	add	r14,-268,r4
	mov	26,r3
_Label_3047:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3047
! ASSIGNMENT STATEMENT...
	mov	2005,r13		! source line 2005
	mov	"\0\0AS",r10
	mov	2005,r13		! source line 2005
	mov	"\0\0SE",r10
!   _temp_674 = &str
	add	r14,-268,r1
	store	r1,[r14+-48]
!   _temp_675 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_677 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_676 = *_temp_677  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_676) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_678 = _temp_676 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_674  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_675  sizeInBytes=4
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
!   _temp_679 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_679  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2006,r13		! source line 2006
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_680 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_680  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2007,r13		! source line 2007
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_681 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_681  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2008,r13		! source line 2008
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	2009,r13		! source line 2009
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_682 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_682  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2010,r13		! source line 2010
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_683 = &str
	add	r14,-268,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_683  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2011,r13		! source line 2011
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2012,r13		! source line 2012
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2013,r13		! source line 2013
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
	.word	_Label_684
	.word	4		! total size of parameters
	.word	280		! frame size = 280
	.word	_Label_685
	.word	8
	.word	4
	.word	_Label_686
	.word	-12
	.word	4
	.word	_Label_687
	.word	-16
	.word	4
	.word	_Label_688
	.word	-20
	.word	4
	.word	_Label_689
	.word	-24
	.word	4
	.word	_Label_690
	.word	-28
	.word	4
	.word	_Label_691
	.word	-32
	.word	4
	.word	_Label_692
	.word	-36
	.word	4
	.word	_Label_693
	.word	-40
	.word	4
	.word	_Label_694
	.word	-44
	.word	4
	.word	_Label_695
	.word	-48
	.word	4
	.word	_Label_696
	.word	-52
	.word	4
	.word	_Label_697
	.word	-56
	.word	4
	.word	_Label_698
	.word	-60
	.word	4
	.word	_Label_699
	.word	-164
	.word	104
	.word	_Label_700
	.word	-268
	.word	104
	.word	_Label_701
	.word	-272
	.word	4
	.word	0
_Label_684:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_685:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_700:
	.byte	'A'
	.ascii	"str\0"
	.align
_Label_701:
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
_Label_3048:
	push	r0
	sub	r1,1,r1
	bne	_Label_3048
	mov	2018,r13		! source line 2018
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! str
!   NEW ARRAY Constructor...
!   _temp_703 = &_temp_702
	add	r14,-164,r1
	store	r1,[r14+-60]
!   _temp_703 = _temp_703 + 4
	load	[r14+-60],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Next value...
	mov	100,r1
	store	r1,[r14+-56]
_Label_705:
!   Data Move: *_temp_703 = 32  (sizeInBytes=1)
	mov	32,r1
	load	[r14+-60],r2
	storeb	r1,[r2]
!   _temp_703 = _temp_703 + 1
	load	[r14+-60],r1
	add	r1,1,r1
	store	r1,[r14+-60]
!   _temp_704 = _temp_704 + -1
	load	[r14+-56],r1
	add	r1,-1,r1
	store	r1,[r14+-56]
!   if intNotZero (_temp_704) then goto _Label_705
	load	[r14+-56],r1
	cmp	r1,r0
	bne	_Label_705
!   Initialize the array size...
	mov	100,r1
	store	r1,[r14+-164]
!   _temp_706 = &_temp_702
	add	r14,-164,r1
	store	r1,[r14+-52]
!   make sure array has size 100
	load	[r14+-52],r1
	load	[r1],r1
	set	100, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: str = *_temp_706  (sizeInBytes=104)
	load	[r14+-52],r5
	add	r14,-268,r4
	mov	26,r3
_Label_3049:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3049
! ASSIGNMENT STATEMENT...
	mov	2023,r13		! source line 2023
	mov	"\0\0AS",r10
	mov	2023,r13		! source line 2023
	mov	"\0\0SE",r10
!   _temp_707 = &str
	add	r14,-268,r1
	store	r1,[r14+-48]
!   _temp_708 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_710 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_709 = *_temp_710  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_709) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_711 = _temp_709 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_707  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_708  sizeInBytes=4
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
!   _temp_712 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_712  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2024,r13		! source line 2024
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_713 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_713  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2025,r13		! source line 2025
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_714 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_714  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2026,r13		! source line 2026
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	2027,r13		! source line 2027
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_715 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_715  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2028,r13		! source line 2028
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_716 = &str
	add	r14,-268,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_716  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2029,r13		! source line 2029
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2030,r13		! source line 2030
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2031,r13		! source line 2031
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
	.word	_Label_717
	.word	4		! total size of parameters
	.word	280		! frame size = 280
	.word	_Label_718
	.word	8
	.word	4
	.word	_Label_719
	.word	-12
	.word	4
	.word	_Label_720
	.word	-16
	.word	4
	.word	_Label_721
	.word	-20
	.word	4
	.word	_Label_722
	.word	-24
	.word	4
	.word	_Label_723
	.word	-28
	.word	4
	.word	_Label_724
	.word	-32
	.word	4
	.word	_Label_725
	.word	-36
	.word	4
	.word	_Label_726
	.word	-40
	.word	4
	.word	_Label_727
	.word	-44
	.word	4
	.word	_Label_728
	.word	-48
	.word	4
	.word	_Label_729
	.word	-52
	.word	4
	.word	_Label_730
	.word	-56
	.word	4
	.word	_Label_731
	.word	-60
	.word	4
	.word	_Label_732
	.word	-164
	.word	104
	.word	_Label_733
	.word	-268
	.word	104
	.word	_Label_734
	.word	-272
	.word	4
	.word	0
_Label_717:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_718:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_711\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_710\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_709\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_708\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_707\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_706\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_704\0"
	.align
_Label_731:
	.byte	'?'
	.ascii	"_temp_703\0"
	.align
_Label_732:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
_Label_733:
	.byte	'A'
	.ascii	"str\0"
	.align
_Label_734:
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
_Label_3050:
	push	r0
	sub	r1,1,r1
	bne	_Label_3050
	mov	2036,r13		! source line 2036
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_735 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_735  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2043,r13		! source line 2043
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_736 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_736  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2044,r13		! source line 2044
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2045,r13		! source line 2045
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2046,r13		! source line 2046
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_737 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_737  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2047,r13		! source line 2047
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_738 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_738  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2048,r13		! source line 2048
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	2049,r13		! source line 2049
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_739 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_739  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2056,r13		! source line 2056
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2057,r13		! source line 2057
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2058,r13		! source line 2058
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2059,r13		! source line 2059
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
	.word	_Label_740
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_741
	.word	8
	.word	4
	.word	_Label_742
	.word	12
	.word	4
	.word	_Label_743
	.word	16
	.word	4
	.word	_Label_744
	.word	-12
	.word	4
	.word	_Label_745
	.word	-16
	.word	4
	.word	_Label_746
	.word	-20
	.word	4
	.word	_Label_747
	.word	-24
	.word	4
	.word	_Label_748
	.word	-28
	.word	4
	.word	0
_Label_740:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_741:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_742:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_743:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_745:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_735\0"
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
_Label_3051:
	push	r0
	sub	r1,1,r1
	bne	_Label_3051
	mov	2064,r13		! source line 2064
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_749 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_749  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2070,r13		! source line 2070
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_750 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_750  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2071,r13		! source line 2071
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2072,r13		! source line 2072
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2073,r13		! source line 2073
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_751 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_751  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2074,r13		! source line 2074
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_752 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_752  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2075,r13		! source line 2075
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	2076,r13		! source line 2076
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_753 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_753  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2079,r13		! source line 2079
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2080,r13		! source line 2080
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2081,r13		! source line 2081
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2082,r13		! source line 2082
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
	.word	_Label_754
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_755
	.word	8
	.word	4
	.word	_Label_756
	.word	12
	.word	4
	.word	_Label_757
	.word	16
	.word	4
	.word	_Label_758
	.word	-12
	.word	4
	.word	_Label_759
	.word	-16
	.word	4
	.word	_Label_760
	.word	-20
	.word	4
	.word	_Label_761
	.word	-24
	.word	4
	.word	_Label_762
	.word	-28
	.word	4
	.word	0
_Label_754:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_755:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_756:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_757:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_749\0"
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
_Label_3052:
	push	r0
	sub	r1,1,r1
	bne	_Label_3052
	mov	2087,r13		! source line 2087
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_763 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_763  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2089,r13		! source line 2089
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_764 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_764  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2090,r13		! source line 2090
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2091,r13		! source line 2091
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2092,r13		! source line 2092
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_765 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_765  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2093,r13		! source line 2093
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2094,r13		! source line 2094
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2095,r13		! source line 2095
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2097,r13		! source line 2097
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
	.word	_Label_766
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_767
	.word	8
	.word	4
	.word	_Label_768
	.word	12
	.word	4
	.word	_Label_769
	.word	-12
	.word	4
	.word	_Label_770
	.word	-16
	.word	4
	.word	_Label_771
	.word	-20
	.word	4
	.word	0
_Label_766:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_767:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_768:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_765\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_764\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_763\0"
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
_Label_3053:
	push	r0
	sub	r1,1,r1
	bne	_Label_3053
	mov	2102,r13		! source line 2102
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_772 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_772  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2104,r13		! source line 2104
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_773 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_773  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2105,r13		! source line 2105
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2106,r13		! source line 2106
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2107,r13		! source line 2107
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2107,r13		! source line 2107
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
	.word	_Label_774
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_775
	.word	8
	.word	4
	.word	_Label_776
	.word	-12
	.word	4
	.word	_Label_777
	.word	-16
	.word	4
	.word	0
_Label_774:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_775:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_773\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_772\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_212_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_212_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3054:
	push	r0
	sub	r1,1,r1
	bne	_Label_3054
	mov	2699,r13		! source line 2699
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2701,r13		! source line 2701
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2702,r13		! source line 2702
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2703,r13		! source line 2703
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_778 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_778  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2704,r13		! source line 2704
	mov	"\0\0AS",r10
!   _temp_779 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_779) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_781 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_781) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_780 = *_temp_781  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_779 = _temp_780  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2705,r13		! source line 2705
	mov	"\0\0AS",r10
!   _temp_782 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_782) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_784 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_784) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_783 = *_temp_784  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_782 = _temp_783  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2706,r13		! source line 2706
	mov	"\0\0AS",r10
!   _temp_785 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_785) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_787 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_787) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_786 = *_temp_787  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_785 = _temp_786  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2706,r13		! source line 2706
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_212_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_788
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_789
	.word	8
	.word	4
	.word	_Label_790
	.word	12
	.word	4
	.word	_Label_791
	.word	-16
	.word	4
	.word	_Label_792
	.word	-9
	.word	1
	.word	_Label_793
	.word	-20
	.word	4
	.word	_Label_794
	.word	-24
	.word	4
	.word	_Label_795
	.word	-10
	.word	1
	.word	_Label_796
	.word	-28
	.word	4
	.word	_Label_797
	.word	-32
	.word	4
	.word	_Label_798
	.word	-11
	.word	1
	.word	_Label_799
	.word	-36
	.word	4
	.word	_Label_800
	.word	-12
	.word	1
	.word	_Label_801
	.word	-40
	.word	4
	.word	_Label_802
	.word	-44
	.word	4
	.word	0
_Label_788:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_789:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_790:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_787\0"
	.align
_Label_792:
	.byte	'C'
	.ascii	"_temp_786\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_795:
	.byte	'C'
	.ascii	"_temp_783\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_798:
	.byte	'C'
	.ascii	"_temp_780\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_800:
	.byte	'C'
	.ascii	"_temp_778\0"
	.align
_Label_801:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_802:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_211_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_211_printFCB,r1
	push	r1
	mov	3,r1
_Label_3055:
	push	r0
	sub	r1,1,r1
	bne	_Label_3055
	mov	2709,r13		! source line 2709
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_804 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_803 = *_temp_804  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_803  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2710,r13		! source line 2710
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2711,r13		! source line 2711
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2711,r13		! source line 2711
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_211_printFCB:
	.word	_sourceFileName
	.word	_Label_805
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_806
	.word	8
	.word	4
	.word	_Label_807
	.word	-12
	.word	4
	.word	_Label_808
	.word	-16
	.word	4
	.word	0
_Label_805:
	.ascii	"printFCB\0"
	.align
_Label_806:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_804\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_210_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_210_printOpen,r1
	push	r1
	mov	4,r1
_Label_3056:
	push	r0
	sub	r1,1,r1
	bne	_Label_3056
	mov	2714,r13		! source line 2714
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_809 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_809  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2715,r13		! source line 2715
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_810 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_810  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2716,r13		! source line 2716
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_811 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_811  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2717,r13		! source line 2717
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2718,r13		! source line 2718
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
	mov	2718,r13		! source line 2718
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_210_printOpen:
	.word	_sourceFileName
	.word	_Label_812
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_813
	.word	8
	.word	4
	.word	_Label_814
	.word	-12
	.word	4
	.word	_Label_815
	.word	-16
	.word	4
	.word	_Label_816
	.word	-20
	.word	4
	.word	0
_Label_812:
	.ascii	"printOpen\0"
	.align
_Label_813:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_814:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_817
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_817:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_818
	.word	_sourceFileName
	.word	126		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_818:
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
_Label_3057:
	push	r0
	sub	r1,1,r1
	bne	_Label_3057
	mov	307,r13		! source line 307
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_820		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_820
!	jmp	_Label_819
_Label_819:
! THEN...
	mov	309,r13		! source line 309
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_821 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_821  sizeInBytes=4
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
_Label_820:
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
	.word	_Label_823
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_824
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_825
	.word	12
	.word	4
	.word	_Label_826
	.word	-12
	.word	4
	.word	_Label_827
	.word	-16
	.word	4
	.word	0
_Label_823:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_824:
	.ascii	"Pself\0"
	.align
_Label_825:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_827:
	.byte	'?'
	.ascii	"_temp_821\0"
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
_Label_3058:
	push	r0
	sub	r1,1,r1
	bne	_Label_3058
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
!   if count != 2147483647 then goto _Label_829		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_829
!	jmp	_Label_828
_Label_828:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_830 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_830  sizeInBytes=4
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
_Label_829:
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
!   if count > 0 then goto _Label_832		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_832
!	jmp	_Label_831
_Label_831:
! THEN...
	mov	327,r13		! source line 327
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0AS",r10
	mov	327,r13		! source line 327
	mov	"\0\0SE",r10
!   _temp_833 = &waitingThreads
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
!   _temp_834 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_834 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_835 = &_P_Kernel_readyList
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
_Label_832:
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
	.word	_Label_836
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_837
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_838
	.word	-12
	.word	4
	.word	_Label_839
	.word	-16
	.word	4
	.word	_Label_840
	.word	-20
	.word	4
	.word	_Label_841
	.word	-24
	.word	4
	.word	_Label_842
	.word	-28
	.word	4
	.word	_Label_843
	.word	-32
	.word	4
	.word	0
_Label_836:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_837:
	.ascii	"Pself\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_839:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_840:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_842:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_843:
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
_Label_3059:
	push	r0
	sub	r1,1,r1
	bne	_Label_3059
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
!   if count != -2147483648 then goto _Label_845		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_845
!	jmp	_Label_844
_Label_844:
! THEN...
	mov	341,r13		! source line 341
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_846 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_846  sizeInBytes=4
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
_Label_845:
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
!   if count >= 0 then goto _Label_848		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_848
!	jmp	_Label_847
_Label_847:
! THEN...
	mov	345,r13		! source line 345
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	345,r13		! source line 345
	mov	"\0\0SE",r10
!   _temp_849 = &waitingThreads
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
_Label_848:
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
	.word	_Label_850
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_851
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_852
	.word	-12
	.word	4
	.word	_Label_853
	.word	-16
	.word	4
	.word	_Label_854
	.word	-20
	.word	4
	.word	0
_Label_850:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_851:
	.ascii	"Pself\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_854:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_855
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_855:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_856
	.word	_sourceFileName
	.word	139		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_856:
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
_Label_3060:
	push	r0
	sub	r1,1,r1
	bne	_Label_3060
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
	.word	_Label_858
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_859
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_860
	.word	-12
	.word	4
	.word	0
_Label_858:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_859:
	.ascii	"Pself\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_857\0"
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
_Label_3061:
	push	r0
	sub	r1,1,r1
	bne	_Label_3061
	mov	377,r13		! source line 377
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	380,r13		! source line 380
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_862		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_862
!	jmp	_Label_861
_Label_861:
! THEN...
	mov	381,r13		! source line 381
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_863 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_863  sizeInBytes=4
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
_Label_862:
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
!   if heldBy == 0 then goto _Label_867		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_867
!   _temp_866 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_868
_Label_867:
!   _temp_866 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_868:
!   if _temp_866 then goto _Label_865 else goto _Label_864
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_864
	jmp	_Label_865
_Label_864:
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
	jmp	_Label_869
_Label_865:
! ELSE...
	mov	387,r13		! source line 387
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	387,r13		! source line 387
	mov	"\0\0SE",r10
!   _temp_870 = &waitingThreads
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
_Label_869:
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
	.word	_Label_871
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_872
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_873
	.word	-16
	.word	4
	.word	_Label_874
	.word	-9
	.word	1
	.word	_Label_875
	.word	-20
	.word	4
	.word	_Label_876
	.word	-24
	.word	4
	.word	0
_Label_871:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_872:
	.ascii	"Pself\0"
	.align
_Label_873:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_874:
	.byte	'C'
	.ascii	"_temp_866\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_863\0"
	.align
_Label_876:
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
_Label_3062:
	push	r0
	sub	r1,1,r1
	bne	_Label_3062
	mov	395,r13		! source line 395
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_878		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_878
!	jmp	_Label_877
_Label_877:
! THEN...
	mov	400,r13		! source line 400
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_879 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_879  sizeInBytes=4
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
_Label_878:
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
!   _temp_880 = &waitingThreads
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
!   if t == 0 then goto _Label_882		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_882
!	jmp	_Label_881
_Label_881:
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
!   _temp_883 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_883 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	406,r13		! source line 406
	mov	"\0\0SE",r10
!   _temp_884 = &_P_Kernel_readyList
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
	jmp	_Label_885
_Label_882:
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
_Label_885:
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
	.word	_Label_886
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_887
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_888
	.word	-12
	.word	4
	.word	_Label_889
	.word	-16
	.word	4
	.word	_Label_890
	.word	-20
	.word	4
	.word	_Label_891
	.word	-24
	.word	4
	.word	_Label_892
	.word	-28
	.word	4
	.word	_Label_893
	.word	-32
	.word	4
	.word	0
_Label_886:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_887:
	.ascii	"Pself\0"
	.align
_Label_888:
	.byte	'?'
	.ascii	"_temp_884\0"
	.align
_Label_889:
	.byte	'?'
	.ascii	"_temp_883\0"
	.align
_Label_890:
	.byte	'?'
	.ascii	"_temp_880\0"
	.align
_Label_891:
	.byte	'?'
	.ascii	"_temp_879\0"
	.align
_Label_892:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_893:
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
_Label_3063:
	push	r0
	sub	r1,1,r1
	bne	_Label_3063
	mov	416,r13		! source line 416
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	417,r13		! source line 417
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_896		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_896
!	jmp	_Label_895
_Label_895:
!   _temp_894 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_897
_Label_896:
!   _temp_894 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_897:
!   ReturnResult: _temp_894  (sizeInBytes=1)
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
	.word	_Label_898
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_899
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_900
	.word	-9
	.word	1
	.word	0
_Label_898:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_899:
	.ascii	"Pself\0"
	.align
_Label_900:
	.byte	'C'
	.ascii	"_temp_894\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_901
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_901:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_902
	.word	_sourceFileName
	.word	153		! line number
	.word	96		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_902:
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
_Label_3064:
	push	r0
	sub	r1,1,r1
	bne	_Label_3064
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
!   _temp_904 = &sema
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
!   _temp_906 = &semaNext
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
!   _temp_910 = &mLock
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
	.word	_Label_911
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_912
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_913
	.word	-12
	.word	4
	.word	_Label_914
	.word	-16
	.word	4
	.word	_Label_915
	.word	-20
	.word	4
	.word	_Label_916
	.word	-24
	.word	4
	.word	_Label_917
	.word	-28
	.word	4
	.word	_Label_918
	.word	-32
	.word	4
	.word	_Label_919
	.word	-36
	.word	4
	.word	_Label_920
	.word	-40
	.word	4
	.word	0
_Label_911:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_912:
	.ascii	"Pself\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_908\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_907\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_906\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_905\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_904\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_903\0"
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
_Label_3065:
	push	r0
	sub	r1,1,r1
	bne	_Label_3065
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
!   Retrieve Result: targetName=_temp_923  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_923 then goto _Label_922 else goto _Label_921
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_921
	jmp	_Label_922
_Label_921:
! THEN...
	mov	477,r13		! source line 477
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_924 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_924  sizeInBytes=4
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
_Label_922:
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
!   _temp_925 = &waitingThreads
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
	.word	_Label_926
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_927
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_928
	.word	12
	.word	4
	.word	_Label_929
	.word	-16
	.word	4
	.word	_Label_930
	.word	-20
	.word	4
	.word	_Label_931
	.word	-9
	.word	1
	.word	_Label_932
	.word	-24
	.word	4
	.word	0
_Label_926:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_927:
	.ascii	"Pself\0"
	.align
_Label_928:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_929:
	.byte	'?'
	.ascii	"_temp_925\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
_Label_931:
	.byte	'C'
	.ascii	"_temp_923\0"
	.align
_Label_932:
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
_Label_3066:
	push	r0
	sub	r1,1,r1
	bne	_Label_3066
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
!   Retrieve Result: targetName=_temp_935  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_935 then goto _Label_934 else goto _Label_933
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_933
	jmp	_Label_934
_Label_933:
! THEN...
	mov	548,r13		! source line 548
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_936 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_936  sizeInBytes=4
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
_Label_934:
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
!   _temp_937 = &waitingThreads
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
!   if t == 0 then goto _Label_939		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_939
!	jmp	_Label_938
_Label_938:
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
!   _temp_940 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_940 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	554,r13		! source line 554
	mov	"\0\0SE",r10
!   _temp_941 = &_P_Kernel_readyList
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
_Label_939:
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
	.word	_Label_942
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_943
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_944
	.word	12
	.word	4
	.word	_Label_945
	.word	-16
	.word	4
	.word	_Label_946
	.word	-20
	.word	4
	.word	_Label_947
	.word	-24
	.word	4
	.word	_Label_948
	.word	-28
	.word	4
	.word	_Label_949
	.word	-9
	.word	1
	.word	_Label_950
	.word	-32
	.word	4
	.word	_Label_951
	.word	-36
	.word	4
	.word	0
_Label_942:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_943:
	.ascii	"Pself\0"
	.align
_Label_944:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_947:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_948:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_949:
	.byte	'C'
	.ascii	"_temp_935\0"
	.align
_Label_950:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_951:
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
_Label_3067:
	push	r0
	sub	r1,1,r1
	bne	_Label_3067
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
!   Retrieve Result: targetName=_temp_954  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_954 then goto _Label_953 else goto _Label_952
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_952
	jmp	_Label_953
_Label_952:
! THEN...
	mov	607,r13		! source line 607
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_955 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_955  sizeInBytes=4
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
_Label_953:
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
_Label_956:
!	jmp	_Label_957
_Label_957:
	mov	610,r13		! source line 610
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	611,r13		! source line 611
	mov	"\0\0AS",r10
	mov	611,r13		! source line 611
	mov	"\0\0SE",r10
!   _temp_959 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_960
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_960
	jmp	_Label_961
_Label_960:
! THEN...
	mov	613,r13		! source line 613
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	613,r13		! source line 613
	mov	"\0\0BR",r10
	jmp	_Label_958
! END IF...
_Label_961:
! ASSIGNMENT STATEMENT...
	mov	615,r13		! source line 615
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_962 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_962 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0SE",r10
!   _temp_963 = &_P_Kernel_readyList
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
	jmp	_Label_956
_Label_958:
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
	.word	_Label_964
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_965
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_966
	.word	12
	.word	4
	.word	_Label_967
	.word	-16
	.word	4
	.word	_Label_968
	.word	-20
	.word	4
	.word	_Label_969
	.word	-24
	.word	4
	.word	_Label_970
	.word	-28
	.word	4
	.word	_Label_971
	.word	-9
	.word	1
	.word	_Label_972
	.word	-32
	.word	4
	.word	_Label_973
	.word	-36
	.word	4
	.word	0
_Label_964:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_965:
	.ascii	"Pself\0"
	.align
_Label_966:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_963\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_971:
	.byte	'C'
	.ascii	"_temp_954\0"
	.align
_Label_972:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_973:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_974
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
_Label_974:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_975
	.word	_sourceFileName
	.word	172		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_975:
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
_Label_3068:
	push	r0
	sub	r1,1,r1
	bne	_Label_3068
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
!   _temp_976 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_976) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_976 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	640,r13		! source line 640
	mov	"\0\0AS",r10
!   _temp_977 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_977 [0 ] into _temp_978
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
!   Data Move: *_temp_978 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	641,r13		! source line 641
	mov	"\0\0AS",r10
!   _temp_979 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_979 [999 ] into _temp_980
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
!   Data Move: *_temp_980 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	642,r13		! source line 642
	mov	"\0\0AS",r10
!   _temp_981 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_981 [999 ] into _temp_982
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
!   stackTop = _temp_982		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	643,r13		! source line 643
	mov	"\0\0AS",r10
!   _temp_983 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_985 = &_temp_984
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_985 = _temp_985 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_987:
!   Data Move: *_temp_985 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_985 = _temp_985 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_986 = _temp_986 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_986) then goto _Label_987
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_987
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_988 = &_temp_984
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3069
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3069:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_983 = *_temp_988  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3070:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3070
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
!   _temp_989 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_991 = &_temp_990
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_991 = _temp_991 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_993:
!   Data Move: *_temp_991 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_991 = _temp_991 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_992 = _temp_992 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_992) then goto _Label_993
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_993
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_994 = &_temp_990
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3071
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3071:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_989 = *_temp_994  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3072:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3072
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
	.word	_Label_995
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_996
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_997
	.word	12
	.word	4
	.word	_Label_998
	.word	-12
	.word	4
	.word	_Label_999
	.word	-16
	.word	4
	.word	_Label_1000
	.word	-20
	.word	4
	.word	_Label_1001
	.word	-84
	.word	64
	.word	_Label_1002
	.word	-88
	.word	4
	.word	_Label_1003
	.word	-92
	.word	4
	.word	_Label_1004
	.word	-96
	.word	4
	.word	_Label_1005
	.word	-100
	.word	4
	.word	_Label_1006
	.word	-156
	.word	56
	.word	_Label_1007
	.word	-160
	.word	4
	.word	_Label_1008
	.word	-164
	.word	4
	.word	_Label_1009
	.word	-168
	.word	4
	.word	_Label_1010
	.word	-172
	.word	4
	.word	_Label_1011
	.word	-176
	.word	4
	.word	_Label_1012
	.word	-180
	.word	4
	.word	_Label_1013
	.word	-184
	.word	4
	.word	_Label_1014
	.word	-188
	.word	4
	.word	0
_Label_995:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_996:
	.ascii	"Pself\0"
	.align
_Label_997:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_994\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_988\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_1007:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_1009:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_1010:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_1011:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_1012:
	.byte	'?'
	.ascii	"_temp_978\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_1014:
	.byte	'?'
	.ascii	"_temp_976\0"
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
_Label_3073:
	push	r0
	sub	r1,1,r1
	bne	_Label_3073
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
!   _temp_1015 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1015  (sizeInBytes=4)
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
!   _temp_1017 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1016  sizeInBytes=4
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
	.word	_Label_1018
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1019
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1020
	.word	12
	.word	4
	.word	_Label_1021
	.word	16
	.word	4
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
	.word	0
_Label_1018:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1019:
	.ascii	"Pself\0"
	.align
_Label_1020:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1021:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1022:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1023:
	.byte	'?'
	.ascii	"_temp_1016\0"
	.align
_Label_1024:
	.byte	'?'
	.ascii	"_temp_1015\0"
	.align
_Label_1025:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1026:
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
_Label_3074:
	push	r0
	sub	r1,1,r1
	bne	_Label_3074
	mov	674,r13		! source line 674
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	690,r13		! source line 690
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1029 == _P_Kernel_currentThread then goto _Label_1028		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1028
!	jmp	_Label_1027
_Label_1027:
! THEN...
	mov	691,r13		! source line 691
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1030 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1030  sizeInBytes=4
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
_Label_1028:
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
!   _temp_1031 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_1033		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1033
!	jmp	_Label_1032
_Label_1032:
! THEN...
	mov	702,r13		! source line 702
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	702,r13		! source line 702
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1035		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1035
!	jmp	_Label_1034
_Label_1034:
! THEN...
	mov	703,r13		! source line 703
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1036 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1036  sizeInBytes=4
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
_Label_1035:
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
!   _temp_1038 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1037  sizeInBytes=4
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
_Label_1033:
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
	.word	_Label_1039
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1040
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1041
	.word	-12
	.word	4
	.word	_Label_1042
	.word	-16
	.word	4
	.word	_Label_1043
	.word	-20
	.word	4
	.word	_Label_1044
	.word	-24
	.word	4
	.word	_Label_1045
	.word	-28
	.word	4
	.word	_Label_1046
	.word	-32
	.word	4
	.word	_Label_1047
	.word	-36
	.word	4
	.word	_Label_1048
	.word	-40
	.word	4
	.word	_Label_1049
	.word	-44
	.word	4
	.word	0
_Label_1039:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1040:
	.ascii	"Pself\0"
	.align
_Label_1041:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1042:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1043:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1044:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1045:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1046:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1047:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1048:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1049:
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
_Label_3075:
	push	r0
	sub	r1,1,r1
	bne	_Label_3075
	mov	714,r13		! source line 714
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	726,r13		! source line 726
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1051		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1051
!	jmp	_Label_1050
_Label_1050:
! THEN...
	mov	727,r13		! source line 727
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1052 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1052  sizeInBytes=4
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
_Label_1051:
! IF STATEMENT...
	mov	730,r13		! source line 730
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1055 == _P_Kernel_currentThread then goto _Label_1054		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1054
!	jmp	_Label_1053
_Label_1053:
! THEN...
	mov	731,r13		! source line 731
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1056 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1056  sizeInBytes=4
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
_Label_1054:
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
!   _temp_1057 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1058
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1058
	jmp	_Label_1059
_Label_1058:
! THEN...
	mov	739,r13		! source line 739
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1060 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1060  sizeInBytes=4
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
_Label_1059:
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
	.word	_Label_1061
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1062
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1063
	.word	-12
	.word	4
	.word	_Label_1064
	.word	-16
	.word	4
	.word	_Label_1065
	.word	-20
	.word	4
	.word	_Label_1066
	.word	-24
	.word	4
	.word	_Label_1067
	.word	-28
	.word	4
	.word	_Label_1068
	.word	-32
	.word	4
	.word	0
_Label_1061:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1062:
	.ascii	"Pself\0"
	.align
_Label_1063:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1064:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1065:
	.byte	'?'
	.ascii	"_temp_1056\0"
	.align
_Label_1066:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1067:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1068:
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
_Label_3076:
	push	r0
	sub	r1,1,r1
	bne	_Label_3076
	mov	746,r13		! source line 746
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	752,r13		! source line 752
	mov	"\0\0IF",r10
!   _temp_1072 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1072 [0 ] into _temp_1073
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
!   Data Move: _temp_1071 = *_temp_1073  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1071 == 606348324 then goto _Label_1070		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1070
!	jmp	_Label_1069
_Label_1069:
! THEN...
	mov	753,r13		! source line 753
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1074 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1074  sizeInBytes=4
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
	jmp	_Label_1075
_Label_1070:
! ELSE...
	mov	754,r13		! source line 754
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	754,r13		! source line 754
	mov	"\0\0IF",r10
!   _temp_1079 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1079 [999 ] into _temp_1080
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
!   Data Move: _temp_1078 = *_temp_1080  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1078 == 606348324 then goto _Label_1077		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1077
!	jmp	_Label_1076
_Label_1076:
! THEN...
	mov	755,r13		! source line 755
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1081 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1081  sizeInBytes=4
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
_Label_1077:
! END IF...
_Label_1075:
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
	.word	_Label_1082
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1083
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1084
	.word	-12
	.word	4
	.word	_Label_1085
	.word	-16
	.word	4
	.word	_Label_1086
	.word	-20
	.word	4
	.word	_Label_1087
	.word	-24
	.word	4
	.word	_Label_1088
	.word	-28
	.word	4
	.word	_Label_1089
	.word	-32
	.word	4
	.word	_Label_1090
	.word	-36
	.word	4
	.word	_Label_1091
	.word	-40
	.word	4
	.word	0
_Label_1082:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1083:
	.ascii	"Pself\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_1071\0"
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
_Label_3077:
	push	r0
	sub	r1,1,r1
	bne	_Label_3077
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
!   _temp_1092 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1092  sizeInBytes=4
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
!   _temp_1093 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1093  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	770,r13		! source line 770
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1094  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	771,r13		! source line 771
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1095 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1095  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	772,r13		! source line 772
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1096 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1096  sizeInBytes=4
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
!   _temp_1101 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1102 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1101  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1097:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1102 then goto _Label_1100		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1100
_Label_1098:
	mov	774,r13		! source line 774
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1103 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1103  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	775,r13		! source line 775
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1104 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1104  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	776,r13		! source line 776
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1105 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1105  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	777,r13		! source line 777
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1107 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1107 [i ] into _temp_1108
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
!   Data Move: _temp_1106 = *_temp_1108  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1106  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	778,r13		! source line 778
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1109 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1109  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	779,r13		! source line 779
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1111 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1111 [i ] into _temp_1112
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
!   Data Move: _temp_1110 = *_temp_1112  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1110  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	780,r13		! source line 780
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1113 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1113  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	781,r13		! source line 781
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1099:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1097
! END FOR
_Label_1100:
! CALL STATEMENT...
!   _temp_1114 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-116]
!   _temp_1115 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1114  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1115  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	783,r13		! source line 783
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1116 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-108]
!   _temp_1118 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1118 [0 ] into _temp_1119
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
!   _temp_1117 = _temp_1119		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1116  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1117  sizeInBytes=4
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
	be	_Label_1122
	cmp	r1,2
	be	_Label_1123
	cmp	r1,3
	be	_Label_1124
	cmp	r1,4
	be	_Label_1125
	cmp	r1,5
	be	_Label_1126
	jmp	_Label_1120
! CASE 1...
_Label_1122:
! CALL STATEMENT...
!   _temp_1127 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1127  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	787,r13		! source line 787
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	788,r13		! source line 788
	mov	"\0\0BR",r10
	jmp	_Label_1121
! CASE 2...
_Label_1123:
! CALL STATEMENT...
!   _temp_1128 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1128  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	790,r13		! source line 790
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0BR",r10
	jmp	_Label_1121
! CASE 3...
_Label_1124:
! CALL STATEMENT...
!   _temp_1129 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1129  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	793,r13		! source line 793
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	794,r13		! source line 794
	mov	"\0\0BR",r10
	jmp	_Label_1121
! CASE 4...
_Label_1125:
! CALL STATEMENT...
!   _temp_1130 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1130  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	796,r13		! source line 796
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	797,r13		! source line 797
	mov	"\0\0BR",r10
	jmp	_Label_1121
! CASE 5...
_Label_1126:
! CALL STATEMENT...
!   _temp_1131 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1131  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	799,r13		! source line 799
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	800,r13		! source line 800
	mov	"\0\0BR",r10
	jmp	_Label_1121
! DEFAULT CASE...
_Label_1120:
! CALL STATEMENT...
!   _temp_1132 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1132  sizeInBytes=4
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
_Label_1121:
! CALL STATEMENT...
!   _temp_1133 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1133  sizeInBytes=4
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
!   _temp_1134 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1134  sizeInBytes=4
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
!   _temp_1139 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1140 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1139  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1135:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1140 then goto _Label_1138		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1138
_Label_1136:
	mov	808,r13		! source line 808
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1141 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1141  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	809,r13		! source line 809
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1142 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1142  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	810,r13		! source line 810
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1143 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1143  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	811,r13		! source line 811
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1145 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1145 [i ] into _temp_1146
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
!   Data Move: _temp_1144 = *_temp_1146  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1144  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	812,r13		! source line 812
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1147 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1147  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	813,r13		! source line 813
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1149 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1149 [i ] into _temp_1150
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
!   Data Move: _temp_1148 = *_temp_1150  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1148  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	814,r13		! source line 814
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1151 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1151  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	815,r13		! source line 815
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1137:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1135
! END FOR
_Label_1138:
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
	.word	_Label_1152
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1153
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1154
	.word	-12
	.word	4
	.word	_Label_1155
	.word	-16
	.word	4
	.word	_Label_1156
	.word	-20
	.word	4
	.word	_Label_1157
	.word	-24
	.word	4
	.word	_Label_1158
	.word	-28
	.word	4
	.word	_Label_1159
	.word	-32
	.word	4
	.word	_Label_1160
	.word	-36
	.word	4
	.word	_Label_1161
	.word	-40
	.word	4
	.word	_Label_1162
	.word	-44
	.word	4
	.word	_Label_1163
	.word	-48
	.word	4
	.word	_Label_1164
	.word	-52
	.word	4
	.word	_Label_1165
	.word	-56
	.word	4
	.word	_Label_1166
	.word	-60
	.word	4
	.word	_Label_1167
	.word	-64
	.word	4
	.word	_Label_1168
	.word	-68
	.word	4
	.word	_Label_1169
	.word	-72
	.word	4
	.word	_Label_1170
	.word	-76
	.word	4
	.word	_Label_1171
	.word	-80
	.word	4
	.word	_Label_1172
	.word	-84
	.word	4
	.word	_Label_1173
	.word	-88
	.word	4
	.word	_Label_1174
	.word	-92
	.word	4
	.word	_Label_1175
	.word	-96
	.word	4
	.word	_Label_1176
	.word	-100
	.word	4
	.word	_Label_1177
	.word	-104
	.word	4
	.word	_Label_1178
	.word	-108
	.word	4
	.word	_Label_1179
	.word	-112
	.word	4
	.word	_Label_1180
	.word	-116
	.word	4
	.word	_Label_1181
	.word	-120
	.word	4
	.word	_Label_1182
	.word	-124
	.word	4
	.word	_Label_1183
	.word	-128
	.word	4
	.word	_Label_1184
	.word	-132
	.word	4
	.word	_Label_1185
	.word	-136
	.word	4
	.word	_Label_1186
	.word	-140
	.word	4
	.word	_Label_1187
	.word	-144
	.word	4
	.word	_Label_1188
	.word	-148
	.word	4
	.word	_Label_1189
	.word	-152
	.word	4
	.word	_Label_1190
	.word	-156
	.word	4
	.word	_Label_1191
	.word	-160
	.word	4
	.word	_Label_1192
	.word	-164
	.word	4
	.word	_Label_1193
	.word	-168
	.word	4
	.word	_Label_1194
	.word	-172
	.word	4
	.word	_Label_1195
	.word	-176
	.word	4
	.word	_Label_1196
	.word	-180
	.word	4
	.word	_Label_1197
	.word	-184
	.word	4
	.word	_Label_1198
	.word	-188
	.word	4
	.word	_Label_1199
	.word	-192
	.word	4
	.word	_Label_1200
	.word	-196
	.word	4
	.word	0
_Label_1152:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1153:
	.ascii	"Pself\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1151\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1149\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1161:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1162:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1163:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1164:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1165:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1166:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1133\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1119\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1118\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1117\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1116\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1114\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1113\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1106\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1105\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1096\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1196:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1199:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1200:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1201
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1201:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1202
	.word	_sourceFileName
	.word	199		! line number
	.word	41776		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1202:
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
_Label_3078:
	push	r0
	sub	r1,1,r1
	bne	_Label_3078
	mov	872,r13		! source line 872
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1203 = _StringConst_108
	set	_StringConst_108,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1203  sizeInBytes=4
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
!   _temp_1205 = &ThreadLock
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
_Label_3079:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3079
!   ThreadFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! SEND STATEMENT...
	mov	884,r13		! source line 884
	mov	"\0\0SE",r10
!   _temp_1207 = &ThreadFree
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
!   _temp_1208 = &threadTable
	load	[r14+8],r1
	add	r1,120,r1
	set	-45888,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1210 = &_temp_1209
	set	-45884,r1
	add	r14,r1,r1
	store	r1,[r14+-4240]
!   _temp_1210 = _temp_1210 + 4
	load	[r14+-4240],r1
	add	r1,4,r1
	store	r1,[r14+-4240]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1212 = zeros  (sizeInBytes=4164)
	add	r14,-4232,r4
	mov	1041,r3
_Label_3080:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3080
!   _temp_1212 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4232]
	mov	10,r1
	store	r1,[r14+-4236]
_Label_1214:
!   Data Move: *_temp_1210 = _temp_1212  (sizeInBytes=4164)
	add	r14,-4232,r5
	load	[r14+-4240],r4
	mov	1041,r3
_Label_3081:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3081
!   _temp_1210 = _temp_1210 + 4164
	load	[r14+-4240],r1
	add	r1,4164,r1
	store	r1,[r14+-4240]
!   _temp_1211 = _temp_1211 + -1
	load	[r14+-4236],r1
	add	r1,-1,r1
	store	r1,[r14+-4236]
!   if intNotZero (_temp_1211) then goto _Label_1214
	load	[r14+-4236],r1
	cmp	r1,r0
	bne	_Label_1214
!   Initialize the array size...
	mov	10,r1
	set	-45884,r2
	store	r1,[r14+r2]
!   _temp_1215 = &_temp_1209
	set	-45884,r1
	add	r14,r1,r1
	store	r1,[r14+-64]
!   make sure array has size 10
	set	-45888,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3082
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3082:
!   make sure array has size 10
	load	[r14+-64],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1208 = *_temp_1215  (sizeInBytes=41644)
	load	[r14+-64],r5
	set	-45888,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3083:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3083
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
!   _temp_1221 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1222 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1221  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_1217:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1222 then goto _Label_1220		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1220
_Label_1218:
	mov	890,r13		! source line 890
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	891,r13		! source line 891
	mov	"\0\0SE",r10
!   _temp_1223 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-48]
!   _temp_1224 = &threadTable
	load	[r14+8],r1
	add	r1,120,r1
	store	r1,[r14+-44]
!   Move address of _temp_1224 [i ] into _temp_1225
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
!   Prepare Argument: offset=12  value=_temp_1223  sizeInBytes=4
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
!   _temp_1226 = &threadTable
	load	[r14+8],r1
	add	r1,120,r1
	store	r1,[r14+-36]
!   Move address of _temp_1226 [i ] into _temp_1227
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
!   _temp_1228 = _temp_1227 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1228 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	893,r13		! source line 893
	mov	"\0\0SE",r10
!   _temp_1230 = &threadTable
	load	[r14+8],r1
	add	r1,120,r1
	store	r1,[r14+-20]
!   Move address of _temp_1230 [i ] into _temp_1231
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
!   _temp_1229 = _temp_1231		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1232 = &freeList
	set	41764,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1229  sizeInBytes=4
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
_Label_1219:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_1217
! END FOR
_Label_1220:
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
	.word	_Label_1233
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
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
	.word	_Label_1245
	.word	-52
	.word	4
	.word	_Label_1246
	.word	-56
	.word	4
	.word	_Label_1247
	.word	-60
	.word	4
	.word	_Label_1248
	.word	-64
	.word	4
	.word	_Label_1249
	.word	-68
	.word	4
	.word	_Label_1250
	.word	-4232
	.word	4164
	.word	_Label_1251
	.word	-4236
	.word	4
	.word	_Label_1252
	.word	-4240
	.word	4
	.word	_Label_1253
	.word	-45884
	.word	41644
	.word	_Label_1254
	.word	-45888
	.word	4
	.word	_Label_1255
	.word	-45892
	.word	4
	.word	_Label_1256
	.word	-45896
	.word	4
	.word	_Label_1257
	.word	-45900
	.word	4
	.word	_Label_1258
	.word	-45904
	.word	4
	.word	_Label_1259
	.word	-45908
	.word	4
	.word	_Label_1260
	.word	-45912
	.word	4
	.word	0
_Label_1233:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
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
	.ascii	"_temp_1229\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1215\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1213\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1210\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1209\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1207\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1260:
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
_Label_3084:
	push	r0
	sub	r1,1,r1
	bne	_Label_3084
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
!   _temp_1261 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1261  sizeInBytes=4
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
!   _temp_1266 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1267 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1266  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1262:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1267 then goto _Label_1265		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1265
_Label_1263:
	mov	909,r13		! source line 909
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1268 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1268  sizeInBytes=4
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
!   _temp_1269 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1269  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	912,r13		! source line 912
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1271 = &threadTable
	load	[r14+8],r1
	add	r1,120,r1
	store	r1,[r14+-28]
!   Move address of _temp_1271 [i ] into _temp_1272
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
!   _temp_1270 = _temp_1272		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1270  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	913,r13		! source line 913
	mov	"\0\0CA",r10
	call	_function_215_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1264:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1262
! END FOR
_Label_1265:
! CALL STATEMENT...
!   _temp_1273 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1273  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	915,r13		! source line 915
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	916,r13		! source line 916
	mov	"\0\0SE",r10
!   _temp_1274 = _function_214_PrintObjectAddr
	set	_function_214_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1275 = &freeList
	set	41764,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1274  sizeInBytes=4
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
	.word	_Label_1276
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1277
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1278
	.word	-12
	.word	4
	.word	_Label_1279
	.word	-16
	.word	4
	.word	_Label_1280
	.word	-20
	.word	4
	.word	_Label_1281
	.word	-24
	.word	4
	.word	_Label_1282
	.word	-28
	.word	4
	.word	_Label_1283
	.word	-32
	.word	4
	.word	_Label_1284
	.word	-36
	.word	4
	.word	_Label_1285
	.word	-40
	.word	4
	.word	_Label_1286
	.word	-44
	.word	4
	.word	_Label_1287
	.word	-48
	.word	4
	.word	_Label_1288
	.word	-52
	.word	4
	.word	_Label_1289
	.word	-56
	.word	4
	.word	_Label_1290
	.word	-60
	.word	4
	.word	0
_Label_1276:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1277:
	.ascii	"Pself\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1271\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1270\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1289:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1290:
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
_Label_3085:
	push	r0
	sub	r1,1,r1
	bne	_Label_3085
	mov	923,r13		! source line 923
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	931,r13		! source line 931
	mov	"\0\0SE",r10
!   _temp_1291 = &ThreadLock
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
_Label_1292:
	mov	934,r13		! source line 934
	mov	"\0\0SE",r10
!   _temp_1296 = &freeList
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
!   Retrieve Result: targetName=_temp_1295  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1297 = _temp_1295 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1297 then goto _Label_1294 else goto _Label_1293
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1293
	jmp	_Label_1294
_Label_1293:
	mov	934,r13		! source line 934
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	935,r13		! source line 935
	mov	"\0\0SE",r10
!   _temp_1298 = &ThreadLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   _temp_1299 = &ThreadFree
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1298  sizeInBytes=4
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
	jmp	_Label_1292
_Label_1294:
! ASSIGNMENT STATEMENT...
	mov	938,r13		! source line 938
	mov	"\0\0AS",r10
	mov	938,r13		! source line 938
	mov	"\0\0SE",r10
!   _temp_1300 = &freeList
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
!   _temp_1301 = t + 76
	load	[r14+-44],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1301 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	940,r13		! source line 940
	mov	"\0\0SE",r10
!   _temp_1302 = &ThreadLock
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
	.word	_Label_1303
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1304
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1305
	.word	-16
	.word	4
	.word	_Label_1306
	.word	-20
	.word	4
	.word	_Label_1307
	.word	-24
	.word	4
	.word	_Label_1308
	.word	-28
	.word	4
	.word	_Label_1309
	.word	-32
	.word	4
	.word	_Label_1310
	.word	-9
	.word	1
	.word	_Label_1311
	.word	-36
	.word	4
	.word	_Label_1312
	.word	-10
	.word	1
	.word	_Label_1313
	.word	-40
	.word	4
	.word	_Label_1314
	.word	-44
	.word	4
	.word	0
_Label_1303:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1304:
	.ascii	"Pself\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1306:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1310:
	.byte	'C'
	.ascii	"_temp_1297\0"
	.align
_Label_1311:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1312:
	.byte	'C'
	.ascii	"_temp_1295\0"
	.align
_Label_1313:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1314:
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
_Label_3086:
	push	r0
	sub	r1,1,r1
	bne	_Label_3086
	mov	946,r13		! source line 946
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	951,r13		! source line 951
	mov	"\0\0SE",r10
!   _temp_1315 = &ThreadLock
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
!   _temp_1316 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1316 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	953,r13		! source line 953
	mov	"\0\0SE",r10
!   _temp_1317 = &freeList
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
!   _temp_1318 = &ThreadLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1319 = &ThreadFree
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1318  sizeInBytes=4
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
!   _temp_1320 = &ThreadLock
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
	.word	_Label_1321
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1322
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1323
	.word	12
	.word	4
	.word	_Label_1324
	.word	-12
	.word	4
	.word	_Label_1325
	.word	-16
	.word	4
	.word	_Label_1326
	.word	-20
	.word	4
	.word	_Label_1327
	.word	-24
	.word	4
	.word	_Label_1328
	.word	-28
	.word	4
	.word	_Label_1329
	.word	-32
	.word	4
	.word	0
_Label_1321:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1322:
	.ascii	"Pself\0"
	.align
_Label_1323:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1330
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1330:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1331
	.word	_sourceFileName
	.word	220		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1331:
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
_Label_3087:
	push	r0
	sub	r1,1,r1
	bne	_Label_3087
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
_Label_3088:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3088
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0SE",r10
!   _temp_1333 = &addrSpace
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
	.word	_Label_1334
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1335
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1336
	.word	-12
	.word	4
	.word	_Label_1337
	.word	-16
	.word	4
	.word	0
_Label_1334:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1335:
	.ascii	"Pself\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1332\0"
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
_Label_3089:
	push	r0
	sub	r1,1,r1
	bne	_Label_3089
	mov	983,r13		! source line 983
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	988,r13		! source line 988
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1338) then goto _runtimeErrorNullPointer
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
!   _temp_1339 = &addrSpace
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
!   _temp_1340 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1340  sizeInBytes=4
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
	call	_function_215_ThreadPrintShort
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
	.word	_Label_1341
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1342
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1343
	.word	-12
	.word	4
	.word	_Label_1344
	.word	-16
	.word	4
	.word	_Label_1345
	.word	-20
	.word	4
	.word	0
_Label_1341:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1342:
	.ascii	"Pself\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1338\0"
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
_Label_3090:
	push	r0
	sub	r1,1,r1
	bne	_Label_3090
	mov	1006,r13		! source line 1006
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1346 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1346  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1010,r13		! source line 1010
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1347  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1011,r13		! source line 1011
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1348 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1348  sizeInBytes=4
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
!   _temp_1349 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1349  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1014,r13		! source line 1014
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1015,r13		! source line 1015
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1351		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1351
!	jmp	_Label_1350
_Label_1350:
! THEN...
	mov	1016,r13		! source line 1016
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1352 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1352  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1016,r13		! source line 1016
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1353
_Label_1351:
! ELSE...
	mov	1017,r13		! source line 1017
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1017,r13		! source line 1017
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1355		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1355
!	jmp	_Label_1354
_Label_1354:
! THEN...
	mov	1018,r13		! source line 1018
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1356 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1356  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1018,r13		! source line 1018
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1357
_Label_1355:
! ELSE...
	mov	1019,r13		! source line 1019
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1019,r13		! source line 1019
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1359		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1359
!	jmp	_Label_1358
_Label_1358:
! THEN...
	mov	1020,r13		! source line 1020
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1360 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1360  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1020,r13		! source line 1020
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1361
_Label_1359:
! ELSE...
	mov	1022,r13		! source line 1022
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1362 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1362  sizeInBytes=4
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
_Label_1361:
! END IF...
_Label_1357:
! END IF...
_Label_1353:
! CALL STATEMENT...
!   _temp_1363 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1363  sizeInBytes=4
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
!   _temp_1364 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1364  sizeInBytes=4
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
	.word	_Label_1365
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1366
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1367
	.word	-12
	.word	4
	.word	_Label_1368
	.word	-16
	.word	4
	.word	_Label_1369
	.word	-20
	.word	4
	.word	_Label_1370
	.word	-24
	.word	4
	.word	_Label_1371
	.word	-28
	.word	4
	.word	_Label_1372
	.word	-32
	.word	4
	.word	_Label_1373
	.word	-36
	.word	4
	.word	_Label_1374
	.word	-40
	.word	4
	.word	_Label_1375
	.word	-44
	.word	4
	.word	_Label_1376
	.word	-48
	.word	4
	.word	0
_Label_1365:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1366:
	.ascii	"Pself\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1363\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1377
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1377:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1378
	.word	_sourceFileName
	.word	240		! line number
	.word	1476		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1378:
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
_Label_3091:
	push	r0
	sub	r1,1,r1
	bne	_Label_3091
	mov	1039,r13		! source line 1039
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1046,r13		! source line 1046
	mov	"\0\0AS",r10
!   _temp_1379 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1468]
!   NEW ARRAY Constructor...
!   _temp_1381 = &_temp_1380
	add	r14,-1464,r1
	store	r1,[r14+-220]
!   _temp_1381 = _temp_1381 + 4
	load	[r14+-220],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1383 = zeros  (sizeInBytes=124)
	add	r14,-212,r4
	mov	31,r3
_Label_3092:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3092
!   _temp_1383 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-212]
	mov	10,r1
	store	r1,[r14+-216]
_Label_1385:
!   Data Move: *_temp_1381 = _temp_1383  (sizeInBytes=124)
	add	r14,-212,r5
	load	[r14+-220],r4
	mov	31,r3
_Label_3093:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3093
!   _temp_1381 = _temp_1381 + 124
	load	[r14+-220],r1
	add	r1,124,r1
	store	r1,[r14+-220]
!   _temp_1382 = _temp_1382 + -1
	load	[r14+-216],r1
	add	r1,-1,r1
	store	r1,[r14+-216]
!   if intNotZero (_temp_1382) then goto _Label_1385
	load	[r14+-216],r1
	cmp	r1,r0
	bne	_Label_1385
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1464]
!   _temp_1386 = &_temp_1380
	add	r14,-1464,r1
	store	r1,[r14+-84]
!   make sure array has size 10
	load	[r14+-1468],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3094
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3094:
!   make sure array has size 10
	load	[r14+-84],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1379 = *_temp_1386  (sizeInBytes=1244)
	load	[r14+-84],r5
	load	[r14+-1468],r4
	mov	311,r3
_Label_3095:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3095
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
_Label_3096:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3096
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
_Label_3097:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3097
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1376]
! SEND STATEMENT...
	mov	1052,r13		! source line 1052
	mov	"\0\0SE",r10
!   _temp_1390 = &processManagerLock
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
!   _temp_1391 = &aProcessBecameFree
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
!   _temp_1392 = &aProcessDied
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
!   _temp_1398 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1399 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1398  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1472]
_Label_1394:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1399 then goto _Label_1397		
	load	[r14+-1472],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1397
_Label_1395:
	mov	1058,r13		! source line 1058
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	1059,r13		! source line 1059
	mov	"\0\0SE",r10
!   _temp_1400 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1400 [i ] into _temp_1401
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
!   _temp_1402 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1402 [i ] into _temp_1403
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
!   _temp_1404 = _temp_1403 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1404 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1061,r13		! source line 1061
	mov	"\0\0SE",r10
!   _temp_1406 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1406 [i ] into _temp_1407
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
!   _temp_1405 = _temp_1407		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1408 = &freeList
	load	[r14+8],r1
	add	r1,1364,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1405  sizeInBytes=4
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
_Label_1396:
!   i = i + 1
	load	[r14+-1472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1472]
	jmp	_Label_1394
! END FOR
_Label_1397:
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
	.word	_Label_1409
	.word	4		! total size of parameters
	.word	1472		! frame size = 1472
	.word	_Label_1410
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1411
	.word	-12
	.word	4
	.word	_Label_1412
	.word	-16
	.word	4
	.word	_Label_1413
	.word	-20
	.word	4
	.word	_Label_1414
	.word	-24
	.word	4
	.word	_Label_1415
	.word	-28
	.word	4
	.word	_Label_1416
	.word	-32
	.word	4
	.word	_Label_1417
	.word	-36
	.word	4
	.word	_Label_1418
	.word	-40
	.word	4
	.word	_Label_1419
	.word	-44
	.word	4
	.word	_Label_1420
	.word	-48
	.word	4
	.word	_Label_1421
	.word	-52
	.word	4
	.word	_Label_1422
	.word	-56
	.word	4
	.word	_Label_1423
	.word	-60
	.word	4
	.word	_Label_1424
	.word	-64
	.word	4
	.word	_Label_1425
	.word	-68
	.word	4
	.word	_Label_1426
	.word	-72
	.word	4
	.word	_Label_1427
	.word	-76
	.word	4
	.word	_Label_1428
	.word	-80
	.word	4
	.word	_Label_1429
	.word	-84
	.word	4
	.word	_Label_1430
	.word	-88
	.word	4
	.word	_Label_1431
	.word	-212
	.word	124
	.word	_Label_1432
	.word	-216
	.word	4
	.word	_Label_1433
	.word	-220
	.word	4
	.word	_Label_1434
	.word	-1464
	.word	1244
	.word	_Label_1435
	.word	-1468
	.word	4
	.word	_Label_1436
	.word	-1472
	.word	4
	.word	0
_Label_1409:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1410:
	.ascii	"Pself\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1406\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1415:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1416:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1418:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
_Label_1419:
	.byte	'?'
	.ascii	"_temp_1400\0"
	.align
_Label_1420:
	.byte	'?'
	.ascii	"_temp_1399\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1436:
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
_Label_3098:
	push	r0
	sub	r1,1,r1
	bne	_Label_3098
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
!   _temp_1437 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1437  sizeInBytes=4
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
!   _temp_1442 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1443 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1442  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1438:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1443 then goto _Label_1441		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1441
_Label_1439:
	mov	1078,r13		! source line 1078
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1444 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1444  sizeInBytes=4
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
!   _temp_1445 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1445  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1081,r13		! source line 1081
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1082,r13		! source line 1082
	mov	"\0\0SE",r10
!   _temp_1446 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1446 [i ] into _temp_1447
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
_Label_1440:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1438
! END FOR
_Label_1441:
! CALL STATEMENT...
!   _temp_1448 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1448  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1084,r13		! source line 1084
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1085,r13		! source line 1085
	mov	"\0\0SE",r10
!   _temp_1449 = _function_214_PrintObjectAddr
	set	_function_214_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1450 = &freeList
	load	[r14+8],r1
	add	r1,1364,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1449  sizeInBytes=4
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
	.word	_Label_1451
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1452
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1453
	.word	-12
	.word	4
	.word	_Label_1454
	.word	-16
	.word	4
	.word	_Label_1455
	.word	-20
	.word	4
	.word	_Label_1456
	.word	-24
	.word	4
	.word	_Label_1457
	.word	-28
	.word	4
	.word	_Label_1458
	.word	-32
	.word	4
	.word	_Label_1459
	.word	-36
	.word	4
	.word	_Label_1460
	.word	-40
	.word	4
	.word	_Label_1461
	.word	-44
	.word	4
	.word	_Label_1462
	.word	-48
	.word	4
	.word	_Label_1463
	.word	-52
	.word	4
	.word	_Label_1464
	.word	-56
	.word	4
	.word	0
_Label_1451:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1452:
	.ascii	"Pself\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1450\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1437\0"
	.align
_Label_1463:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1464:
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
_Label_3099:
	push	r0
	sub	r1,1,r1
	bne	_Label_3099
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
!   _temp_1465 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1465  sizeInBytes=4
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
!   _temp_1470 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1471 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1470  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1466:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1471 then goto _Label_1469		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1469
_Label_1467:
	mov	1101,r13		! source line 1101
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1472 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1472  sizeInBytes=4
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
!   _temp_1473 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1473 [i ] into _temp_1474
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
_Label_1468:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1466
! END FOR
_Label_1469:
! CALL STATEMENT...
!   _temp_1475 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1475  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1106,r13		! source line 1106
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1107,r13		! source line 1107
	mov	"\0\0SE",r10
!   _temp_1476 = _function_214_PrintObjectAddr
	set	_function_214_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1477 = &freeList
	load	[r14+8],r1
	add	r1,1364,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1476  sizeInBytes=4
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
	.word	_Label_1478
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1479
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1480
	.word	-12
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
	.word	-32
	.word	4
	.word	_Label_1486
	.word	-36
	.word	4
	.word	_Label_1487
	.word	-40
	.word	4
	.word	_Label_1488
	.word	-44
	.word	4
	.word	_Label_1489
	.word	-48
	.word	4
	.word	_Label_1490
	.word	-52
	.word	4
	.word	0
_Label_1478:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1479:
	.ascii	"Pself\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1465\0"
	.align
_Label_1489:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1490:
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
_Label_3100:
	push	r0
	sub	r1,1,r1
	bne	_Label_3100
	mov	1114,r13		! source line 1114
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1122,r13		! source line 1122
	mov	"\0\0SE",r10
!   _temp_1491 = &processManagerLock
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
_Label_1492:
	mov	1124,r13		! source line 1124
	mov	"\0\0SE",r10
!   _temp_1496 = &freeList
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
!   Retrieve Result: targetName=_temp_1495  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1497 = _temp_1495 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1497 then goto _Label_1494 else goto _Label_1493
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1493
	jmp	_Label_1494
_Label_1493:
	mov	1124,r13		! source line 1124
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1125,r13		! source line 1125
	mov	"\0\0SE",r10
!   _temp_1498 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-36]
!   _temp_1499 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1498  sizeInBytes=4
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
	jmp	_Label_1492
_Label_1494:
! ASSIGNMENT STATEMENT...
	mov	1128,r13		! source line 1128
	mov	"\0\0AS",r10
	mov	1128,r13		! source line 1128
	mov	"\0\0SE",r10
!   _temp_1500 = &freeList
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
!   _temp_1501 = p + 20
	load	[r14+-48],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1501 = 1  (sizeInBytes=4)
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
!   _temp_1502 = p + 12
	load	[r14+-48],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1502 = nextPid  (sizeInBytes=4)
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
!   _temp_1503 = &processManagerLock
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
	.word	_Label_1504
	.word	4		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1505
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1506
	.word	-16
	.word	4
	.word	_Label_1507
	.word	-20
	.word	4
	.word	_Label_1508
	.word	-24
	.word	4
	.word	_Label_1509
	.word	-28
	.word	4
	.word	_Label_1510
	.word	-32
	.word	4
	.word	_Label_1511
	.word	-36
	.word	4
	.word	_Label_1512
	.word	-9
	.word	1
	.word	_Label_1513
	.word	-40
	.word	4
	.word	_Label_1514
	.word	-10
	.word	1
	.word	_Label_1515
	.word	-44
	.word	4
	.word	_Label_1516
	.word	-48
	.word	4
	.word	0
_Label_1504:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1505:
	.ascii	"Pself\0"
	.align
_Label_1506:
	.byte	'?'
	.ascii	"_temp_1503\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1512:
	.byte	'C'
	.ascii	"_temp_1497\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1514:
	.byte	'C'
	.ascii	"_temp_1495\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
_Label_1516:
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
_Label_3101:
	push	r0
	sub	r1,1,r1
	bne	_Label_3101
	mov	1139,r13		! source line 1139
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1144,r13		! source line 1144
	mov	"\0\0SE",r10
!   _temp_1517 = &processManagerLock
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
!   _temp_1518 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1518 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1146,r13		! source line 1146
	mov	"\0\0SE",r10
!   _temp_1519 = &freeList
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
!   _temp_1520 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1521 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1520  sizeInBytes=4
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
!   _temp_1522 = &processManagerLock
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
	.word	_Label_1523
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1524
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1525
	.word	12
	.word	4
	.word	_Label_1526
	.word	-12
	.word	4
	.word	_Label_1527
	.word	-16
	.word	4
	.word	_Label_1528
	.word	-20
	.word	4
	.word	_Label_1529
	.word	-24
	.word	4
	.word	_Label_1530
	.word	-28
	.word	4
	.word	_Label_1531
	.word	-32
	.word	4
	.word	0
_Label_1523:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1524:
	.ascii	"Pself\0"
	.align
_Label_1525:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1519\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1532
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1532:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1533
	.word	_sourceFileName
	.word	263		! line number
	.word	136		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1533:
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
_Label_3102:
	push	r0
	sub	r1,1,r1
	bne	_Label_3102
	mov	1182,r13		! source line 1182
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1534 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1534  sizeInBytes=4
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
!   _temp_1536 = &framesInUse
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
!   _temp_1538 = &frameManagerLock
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
_Label_3103:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3103
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1195,r13		! source line 1195
	mov	"\0\0SE",r10
!   _temp_1540 = &newFramesAvailable
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
!   _temp_1545 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1546 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1545  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1541:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1546 then goto _Label_1544		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1544
_Label_1542:
	mov	1201,r13		! source line 1201
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1204,r13		! source line 1204
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1549 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1549) then goto _Label_1548
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1548
!	jmp	_Label_1547
_Label_1547:
! THEN...
	mov	1205,r13		! source line 1205
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1550 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1550  sizeInBytes=4
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
_Label_1548:
!   Increment the FOR-LOOP index variable and jump back
_Label_1543:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1541
! END FOR
_Label_1544:
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
	.word	_Label_1551
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1552
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	_Label_1559
	.word	-36
	.word	4
	.word	_Label_1560
	.word	-40
	.word	4
	.word	_Label_1561
	.word	-44
	.word	4
	.word	_Label_1562
	.word	-48
	.word	4
	.word	_Label_1563
	.word	-52
	.word	4
	.word	_Label_1564
	.word	-56
	.word	4
	.word	0
_Label_1551:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1552:
	.ascii	"Pself\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1538\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1537\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1534\0"
	.align
_Label_1564:
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
_Label_3104:
	push	r0
	sub	r1,1,r1
	bne	_Label_3104
	mov	1212,r13		! source line 1212
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1216,r13		! source line 1216
	mov	"\0\0SE",r10
!   _temp_1565 = &frameManagerLock
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
!   _temp_1566 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1566  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1217,r13		! source line 1217
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1567 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1567  sizeInBytes=4
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
!   _temp_1568 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1568  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1219,r13		! source line 1219
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1220,r13		! source line 1220
	mov	"\0\0SE",r10
!   _temp_1569 = &framesInUse
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
!   _temp_1570 = &frameManagerLock
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
	.word	_Label_1571
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1572
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1573
	.word	-12
	.word	4
	.word	_Label_1574
	.word	-16
	.word	4
	.word	_Label_1575
	.word	-20
	.word	4
	.word	_Label_1576
	.word	-24
	.word	4
	.word	_Label_1577
	.word	-28
	.word	4
	.word	_Label_1578
	.word	-32
	.word	4
	.word	0
_Label_1571:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1572:
	.ascii	"Pself\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1570\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1569\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1568\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1567\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1566\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1565\0"
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
_Label_3105:
	push	r0
	sub	r1,1,r1
	bne	_Label_3105
	mov	1226,r13		! source line 1226
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1234,r13		! source line 1234
	mov	"\0\0SE",r10
!   _temp_1579 = &frameManagerLock
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
_Label_1580:
!   if numberFreeFrames >= 1 then goto _Label_1582		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1582
!	jmp	_Label_1581
_Label_1581:
	mov	1237,r13		! source line 1237
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1238,r13		! source line 1238
	mov	"\0\0SE",r10
!   _temp_1583 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1584 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1583  sizeInBytes=4
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
	jmp	_Label_1580
_Label_1582:
! ASSIGNMENT STATEMENT...
	mov	1242,r13		! source line 1242
	mov	"\0\0AS",r10
	mov	1242,r13		! source line 1242
	mov	"\0\0SE",r10
!   _temp_1585 = &framesInUse
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
!   _temp_1586 = &frameManagerLock
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
!   _temp_1587 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1587		(int)
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
	.word	_Label_1588
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1589
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1590
	.word	-12
	.word	4
	.word	_Label_1591
	.word	-16
	.word	4
	.word	_Label_1592
	.word	-20
	.word	4
	.word	_Label_1593
	.word	-24
	.word	4
	.word	_Label_1594
	.word	-28
	.word	4
	.word	_Label_1595
	.word	-32
	.word	4
	.word	_Label_1596
	.word	-36
	.word	4
	.word	_Label_1597
	.word	-40
	.word	4
	.word	0
_Label_1588:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1589:
	.ascii	"Pself\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1587\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1586\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1585\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1584\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1583\0"
	.align
_Label_1595:
	.byte	'?'
	.ascii	"_temp_1579\0"
	.align
_Label_1596:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1597:
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
_Label_3106:
	push	r0
	sub	r1,1,r1
	bne	_Label_3106
	mov	1256,r13		! source line 1256
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1261,r13		! source line 1261
	mov	"\0\0SE",r10
!   _temp_1598 = &frameManagerLock
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
_Label_1599:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1601		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1601
!	jmp	_Label_1600
_Label_1600:
	mov	1264,r13		! source line 1264
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1265,r13		! source line 1265
	mov	"\0\0SE",r10
!   _temp_1602 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1603 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1602  sizeInBytes=4
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
	jmp	_Label_1599
_Label_1601:
! FOR STATEMENT...
	mov	1269,r13		! source line 1269
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1608 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1609 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1608  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_1604:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1609 then goto _Label_1607		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1607
_Label_1605:
	mov	1269,r13		! source line 1269
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1270,r13		! source line 1270
	mov	"\0\0AS",r10
	mov	1270,r13		! source line 1270
	mov	"\0\0SE",r10
!   _temp_1610 = &framesInUse
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
!   _temp_1611 = freeFrame * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_1611		(int)
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
_Label_1606:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1604
! END FOR
_Label_1607:
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
!   _temp_1612 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1612 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1280,r13		! source line 1280
	mov	"\0\0SE",r10
!   _temp_1613 = &frameManagerLock
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
	.word	_Label_1614
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1615
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1616
	.word	12
	.word	4
	.word	_Label_1617
	.word	16
	.word	4
	.word	_Label_1618
	.word	-12
	.word	4
	.word	_Label_1619
	.word	-16
	.word	4
	.word	_Label_1620
	.word	-20
	.word	4
	.word	_Label_1621
	.word	-24
	.word	4
	.word	_Label_1622
	.word	-28
	.word	4
	.word	_Label_1623
	.word	-32
	.word	4
	.word	_Label_1624
	.word	-36
	.word	4
	.word	_Label_1625
	.word	-40
	.word	4
	.word	_Label_1626
	.word	-44
	.word	4
	.word	_Label_1627
	.word	-48
	.word	4
	.word	_Label_1628
	.word	-52
	.word	4
	.word	_Label_1629
	.word	-56
	.word	4
	.word	0
_Label_1614:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1615:
	.ascii	"Pself\0"
	.align
_Label_1616:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1617:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1618:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
_Label_1619:
	.byte	'?'
	.ascii	"_temp_1612\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1611\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1610\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1609\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1608\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1603\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1627:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1628:
	.byte	'I'
	.ascii	"freeFrame\0"
	.align
_Label_1629:
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
_Label_3107:
	push	r0
	sub	r1,1,r1
	bne	_Label_3107
	mov	1286,r13		! source line 1286
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1293,r13		! source line 1293
	mov	"\0\0SE",r10
!   _temp_1630 = &frameManagerLock
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
!   _temp_1631 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: numReturn = *_temp_1631  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-60]
! FOR STATEMENT...
	mov	1295,r13		! source line 1295
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1636 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1637 = numReturn - 1		(int)
	load	[r14+-60],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1636  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-48]
_Label_1632:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1637 then goto _Label_1635		
	load	[r14+-48],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1635
_Label_1633:
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
!   _temp_1638 = addr - 1048576		(int)
	load	[r14+-52],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   bitNumber = _temp_1638 div 8192		(int)
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
!   _temp_1639 = &framesInUse
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
_Label_1634:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1632
! END FOR
_Label_1635:
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
!   _temp_1640 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1641 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1640  sizeInBytes=4
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
!   _temp_1642 = &frameManagerLock
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
	.word	_Label_1643
	.word	8		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1644
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1645
	.word	12
	.word	4
	.word	_Label_1646
	.word	-12
	.word	4
	.word	_Label_1647
	.word	-16
	.word	4
	.word	_Label_1648
	.word	-20
	.word	4
	.word	_Label_1649
	.word	-24
	.word	4
	.word	_Label_1650
	.word	-28
	.word	4
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
	.word	_Label_1656
	.word	-52
	.word	4
	.word	_Label_1657
	.word	-56
	.word	4
	.word	_Label_1658
	.word	-60
	.word	4
	.word	0
_Label_1643:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1644:
	.ascii	"Pself\0"
	.align
_Label_1645:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1646:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1638\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1637\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1655:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1656:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_1657:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
_Label_1658:
	.byte	'I'
	.ascii	"numReturn\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1659
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
_Label_1659:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1660
	.word	_sourceFileName
	.word	282		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1660:
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
_Label_3108:
	push	r0
	sub	r1,1,r1
	bne	_Label_3108
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
!   _temp_1661 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1663 = &_temp_1662
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1663 = _temp_1663 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1665:
!   Data Move: *_temp_1663 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1663 = _temp_1663 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1664 = _temp_1664 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1664) then goto _Label_1665
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1665
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1666 = &_temp_1662
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3109
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3109:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1661 = *_temp_1666  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3110:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3110
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
	.word	_Label_1667
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1668
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1669
	.word	-12
	.word	4
	.word	_Label_1670
	.word	-16
	.word	4
	.word	_Label_1671
	.word	-20
	.word	4
	.word	_Label_1672
	.word	-104
	.word	84
	.word	_Label_1673
	.word	-108
	.word	4
	.word	0
_Label_1667:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1668:
	.ascii	"Pself\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1666\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1664\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1673:
	.byte	'?'
	.ascii	"_temp_1661\0"
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
_Label_3111:
	push	r0
	sub	r1,1,r1
	bne	_Label_3111
	mov	1328,r13		! source line 1328
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1674 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1674  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1333,r13		! source line 1333
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1675 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1675  sizeInBytes=4
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
!   _temp_1680 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1681 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1680  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1676:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1681 then goto _Label_1679		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1679
_Label_1677:
	mov	1335,r13		! source line 1335
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1682 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1682  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1336,r13		! source line 1336
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1684 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1684 [i ] into _temp_1685
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
!   _temp_1683 = _temp_1685		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1683  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1337,r13		! source line 1337
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1686 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1686  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1338,r13		! source line 1338
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1688 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1688 [i ] into _temp_1689
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
!   Data Move: _temp_1687 = *_temp_1689  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1687  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1339,r13		! source line 1339
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1690 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1690  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1340,r13		! source line 1340
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1691 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1691  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1341,r13		! source line 1341
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1692 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1692  sizeInBytes=4
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
!   if intIsZero (_temp_1694) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1693  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1693  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1343,r13		! source line 1343
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1695 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1695  sizeInBytes=4
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
!   if intIsZero (_temp_1699) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1698  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1698) then goto _Label_1697
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1697
!	jmp	_Label_1696
_Label_1696:
! THEN...
	mov	1346,r13		! source line 1346
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1346,r13		! source line 1346
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1701) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1700  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1700  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1346,r13		! source line 1346
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1702
_Label_1697:
! ELSE...
	mov	1348,r13		! source line 1348
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1703 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1703  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1348,r13		! source line 1348
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1702:
! CALL STATEMENT...
!   _temp_1704 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1704  sizeInBytes=4
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
!   if intIsZero (_temp_1707) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1705 else goto _Label_1706
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1706
	jmp	_Label_1705
_Label_1705:
! THEN...
	mov	1352,r13		! source line 1352
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1708 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1708  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1352,r13		! source line 1352
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1709
_Label_1706:
! ELSE...
	mov	1354,r13		! source line 1354
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1710 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1710  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1354,r13		! source line 1354
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1709:
! CALL STATEMENT...
!   _temp_1711 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1711  sizeInBytes=4
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
!   if intIsZero (_temp_1714) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1712 else goto _Label_1713
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1713
	jmp	_Label_1712
_Label_1712:
! THEN...
	mov	1358,r13		! source line 1358
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1715 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1715  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1358,r13		! source line 1358
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1716
_Label_1713:
! ELSE...
	mov	1360,r13		! source line 1360
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1717 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1717  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1360,r13		! source line 1360
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1716:
! CALL STATEMENT...
!   _temp_1718 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1718  sizeInBytes=4
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
!   if intIsZero (_temp_1721) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1719 else goto _Label_1720
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1720
	jmp	_Label_1719
_Label_1719:
! THEN...
	mov	1364,r13		! source line 1364
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1722 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1722  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1364,r13		! source line 1364
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1723
_Label_1720:
! ELSE...
	mov	1366,r13		! source line 1366
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1724 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1724  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1366,r13		! source line 1366
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1723:
! CALL STATEMENT...
!   _temp_1725 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1725  sizeInBytes=4
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
!   if intIsZero (_temp_1728) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1726 else goto _Label_1727
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1727
	jmp	_Label_1726
_Label_1726:
! THEN...
	mov	1370,r13		! source line 1370
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1729 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1729  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1370,r13		! source line 1370
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1730
_Label_1727:
! ELSE...
	mov	1372,r13		! source line 1372
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1731 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1731  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1372,r13		! source line 1372
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1730:
! CALL STATEMENT...
!   Call the function
	mov	1374,r13		! source line 1374
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1678:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1676
! END FOR
_Label_1679:
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
	.word	_Label_1732
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1733
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1734
	.word	-12
	.word	4
	.word	_Label_1735
	.word	-16
	.word	4
	.word	_Label_1736
	.word	-20
	.word	4
	.word	_Label_1737
	.word	-24
	.word	4
	.word	_Label_1738
	.word	-28
	.word	4
	.word	_Label_1739
	.word	-32
	.word	4
	.word	_Label_1740
	.word	-36
	.word	4
	.word	_Label_1741
	.word	-40
	.word	4
	.word	_Label_1742
	.word	-44
	.word	4
	.word	_Label_1743
	.word	-48
	.word	4
	.word	_Label_1744
	.word	-52
	.word	4
	.word	_Label_1745
	.word	-56
	.word	4
	.word	_Label_1746
	.word	-60
	.word	4
	.word	_Label_1747
	.word	-64
	.word	4
	.word	_Label_1748
	.word	-68
	.word	4
	.word	_Label_1749
	.word	-72
	.word	4
	.word	_Label_1750
	.word	-76
	.word	4
	.word	_Label_1751
	.word	-80
	.word	4
	.word	_Label_1752
	.word	-84
	.word	4
	.word	_Label_1753
	.word	-88
	.word	4
	.word	_Label_1754
	.word	-92
	.word	4
	.word	_Label_1755
	.word	-96
	.word	4
	.word	_Label_1756
	.word	-100
	.word	4
	.word	_Label_1757
	.word	-104
	.word	4
	.word	_Label_1758
	.word	-108
	.word	4
	.word	_Label_1759
	.word	-112
	.word	4
	.word	_Label_1760
	.word	-116
	.word	4
	.word	_Label_1761
	.word	-120
	.word	4
	.word	_Label_1762
	.word	-124
	.word	4
	.word	_Label_1763
	.word	-128
	.word	4
	.word	_Label_1764
	.word	-132
	.word	4
	.word	_Label_1765
	.word	-136
	.word	4
	.word	_Label_1766
	.word	-140
	.word	4
	.word	_Label_1767
	.word	-144
	.word	4
	.word	_Label_1768
	.word	-148
	.word	4
	.word	_Label_1769
	.word	-152
	.word	4
	.word	_Label_1770
	.word	-156
	.word	4
	.word	_Label_1771
	.word	-160
	.word	4
	.word	_Label_1772
	.word	-164
	.word	4
	.word	_Label_1773
	.word	-168
	.word	4
	.word	0
_Label_1732:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1733:
	.ascii	"Pself\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1736:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1710\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1708\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1750:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1765:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1682\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1681\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1680\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1773:
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
_Label_3112:
	push	r0
	sub	r1,1,r1
	bne	_Label_3112
	mov	1380,r13		! source line 1380
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1385,r13		! source line 1385
	mov	"\0\0RE",r10
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
!   _temp_1774 = _temp_1775 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1774  (sizeInBytes=4)
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
	.word	_Label_1778
	.word	8		! total size of parameters
	.word	16		! frame size = 16
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
	.word	0
_Label_1778:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
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
_Label_3113:
	push	r0
	sub	r1,1,r1
	bne	_Label_3113
	mov	1390,r13		! source line 1390
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1394,r13		! source line 1394
	mov	"\0\0RE",r10
!   _temp_1787 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1787 [entry ] into _temp_1788
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
!   Data Move: _temp_1786 = *_temp_1788  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1785 = _temp_1786 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1785  (sizeInBytes=4)
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
	.word	_Label_1789
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1790
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1791
	.word	12
	.word	4
	.word	_Label_1792
	.word	-12
	.word	4
	.word	_Label_1793
	.word	-16
	.word	4
	.word	_Label_1794
	.word	-20
	.word	4
	.word	_Label_1795
	.word	-24
	.word	4
	.word	0
_Label_1789:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1790:
	.ascii	"Pself\0"
	.align
_Label_1791:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1788\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1787\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1786\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1785\0"
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
_Label_3114:
	push	r0
	sub	r1,1,r1
	bne	_Label_3114
	mov	1399,r13		! source line 1399
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1404,r13		! source line 1404
	mov	"\0\0AS",r10
!   _temp_1796 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1796 [entry ] into _temp_1797
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
!   _temp_1801 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1801 [entry ] into _temp_1802
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
!   Data Move: _temp_1800 = *_temp_1802  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1799 = _temp_1800 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1798 = _temp_1799 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1797 = _temp_1798  (sizeInBytes=4)
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
	.word	_Label_1803
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1804
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1805
	.word	12
	.word	4
	.word	_Label_1806
	.word	16
	.word	4
	.word	_Label_1807
	.word	-12
	.word	4
	.word	_Label_1808
	.word	-16
	.word	4
	.word	_Label_1809
	.word	-20
	.word	4
	.word	_Label_1810
	.word	-24
	.word	4
	.word	_Label_1811
	.word	-28
	.word	4
	.word	_Label_1812
	.word	-32
	.word	4
	.word	_Label_1813
	.word	-36
	.word	4
	.word	0
_Label_1803:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1804:
	.ascii	"Pself\0"
	.align
_Label_1805:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1806:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1802\0"
	.align
_Label_1808:
	.byte	'?'
	.ascii	"_temp_1801\0"
	.align
_Label_1809:
	.byte	'?'
	.ascii	"_temp_1800\0"
	.align
_Label_1810:
	.byte	'?'
	.ascii	"_temp_1799\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1798\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1797\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1796\0"
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
_Label_3115:
	push	r0
	sub	r1,1,r1
	bne	_Label_3115
	mov	1409,r13		! source line 1409
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1413,r13		! source line 1413
	mov	"\0\0RE",r10
!   _temp_1817 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1817 [entry ] into _temp_1818
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
!   Data Move: _temp_1816 = *_temp_1818  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1815 = _temp_1816 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1815) then goto _Label_1819
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1819
!   _temp_1814 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1820
_Label_1819:
!   _temp_1814 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1820:
!   ReturnResult: _temp_1814  (sizeInBytes=1)
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
	.word	_Label_1821
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1822
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1823
	.word	12
	.word	4
	.word	_Label_1824
	.word	-16
	.word	4
	.word	_Label_1825
	.word	-20
	.word	4
	.word	_Label_1826
	.word	-24
	.word	4
	.word	_Label_1827
	.word	-28
	.word	4
	.word	_Label_1828
	.word	-9
	.word	1
	.word	0
_Label_1821:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1822:
	.ascii	"Pself\0"
	.align
_Label_1823:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1824:
	.byte	'?'
	.ascii	"_temp_1818\0"
	.align
_Label_1825:
	.byte	'?'
	.ascii	"_temp_1817\0"
	.align
_Label_1826:
	.byte	'?'
	.ascii	"_temp_1816\0"
	.align
_Label_1827:
	.byte	'?'
	.ascii	"_temp_1815\0"
	.align
_Label_1828:
	.byte	'C'
	.ascii	"_temp_1814\0"
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
_Label_3116:
	push	r0
	sub	r1,1,r1
	bne	_Label_3116
	mov	1418,r13		! source line 1418
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1422,r13		! source line 1422
	mov	"\0\0RE",r10
!   _temp_1832 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1832 [entry ] into _temp_1833
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
!   Data Move: _temp_1831 = *_temp_1833  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1830 = _temp_1831 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1830) then goto _Label_1834
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1834
!   _temp_1829 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1835
_Label_1834:
!   _temp_1829 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1835:
!   ReturnResult: _temp_1829  (sizeInBytes=1)
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
	.word	_Label_1836
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1837
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1838
	.word	12
	.word	4
	.word	_Label_1839
	.word	-16
	.word	4
	.word	_Label_1840
	.word	-20
	.word	4
	.word	_Label_1841
	.word	-24
	.word	4
	.word	_Label_1842
	.word	-28
	.word	4
	.word	_Label_1843
	.word	-9
	.word	1
	.word	0
_Label_1836:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1837:
	.ascii	"Pself\0"
	.align
_Label_1838:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1833\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1832\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1831\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1830\0"
	.align
_Label_1843:
	.byte	'C'
	.ascii	"_temp_1829\0"
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
_Label_3117:
	push	r0
	sub	r1,1,r1
	bne	_Label_3117
	mov	1427,r13		! source line 1427
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1431,r13		! source line 1431
	mov	"\0\0RE",r10
!   _temp_1847 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1847 [entry ] into _temp_1848
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
!   Data Move: _temp_1846 = *_temp_1848  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1845 = _temp_1846 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1845) then goto _Label_1849
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1849
!   _temp_1844 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1850
_Label_1849:
!   _temp_1844 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1850:
!   ReturnResult: _temp_1844  (sizeInBytes=1)
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
	.word	_Label_1851
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1852
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1853
	.word	12
	.word	4
	.word	_Label_1854
	.word	-16
	.word	4
	.word	_Label_1855
	.word	-20
	.word	4
	.word	_Label_1856
	.word	-24
	.word	4
	.word	_Label_1857
	.word	-28
	.word	4
	.word	_Label_1858
	.word	-9
	.word	1
	.word	0
_Label_1851:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1852:
	.ascii	"Pself\0"
	.align
_Label_1853:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1854:
	.byte	'?'
	.ascii	"_temp_1848\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1847\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1846\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1845\0"
	.align
_Label_1858:
	.byte	'C'
	.ascii	"_temp_1844\0"
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
_Label_3118:
	push	r0
	sub	r1,1,r1
	bne	_Label_3118
	mov	1436,r13		! source line 1436
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1440,r13		! source line 1440
	mov	"\0\0RE",r10
!   _temp_1862 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1862 [entry ] into _temp_1863
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
!   Data Move: _temp_1861 = *_temp_1863  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1860 = _temp_1861 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1860) then goto _Label_1864
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1864
!   _temp_1859 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1865
_Label_1864:
!   _temp_1859 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1865:
!   ReturnResult: _temp_1859  (sizeInBytes=1)
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
	.word	_Label_1866
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1867
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1868
	.word	12
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
	.word	_Label_1872
	.word	-28
	.word	4
	.word	_Label_1873
	.word	-9
	.word	1
	.word	0
_Label_1866:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1867:
	.ascii	"Pself\0"
	.align
_Label_1868:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1869:
	.byte	'?'
	.ascii	"_temp_1863\0"
	.align
_Label_1870:
	.byte	'?'
	.ascii	"_temp_1862\0"
	.align
_Label_1871:
	.byte	'?'
	.ascii	"_temp_1861\0"
	.align
_Label_1872:
	.byte	'?'
	.ascii	"_temp_1860\0"
	.align
_Label_1873:
	.byte	'C'
	.ascii	"_temp_1859\0"
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
_Label_3119:
	push	r0
	sub	r1,1,r1
	bne	_Label_3119
	mov	1445,r13		! source line 1445
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1449,r13		! source line 1449
	mov	"\0\0AS",r10
!   _temp_1874 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1874 [entry ] into _temp_1875
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
!   _temp_1878 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1878 [entry ] into _temp_1879
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
!   Data Move: _temp_1877 = *_temp_1879  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1876 = _temp_1877 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1875 = _temp_1876  (sizeInBytes=4)
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
	.word	_Label_1880
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1881
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1882
	.word	12
	.word	4
	.word	_Label_1883
	.word	-12
	.word	4
	.word	_Label_1884
	.word	-16
	.word	4
	.word	_Label_1885
	.word	-20
	.word	4
	.word	_Label_1886
	.word	-24
	.word	4
	.word	_Label_1887
	.word	-28
	.word	4
	.word	_Label_1888
	.word	-32
	.word	4
	.word	0
_Label_1880:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1881:
	.ascii	"Pself\0"
	.align
_Label_1882:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1883:
	.byte	'?'
	.ascii	"_temp_1879\0"
	.align
_Label_1884:
	.byte	'?'
	.ascii	"_temp_1878\0"
	.align
_Label_1885:
	.byte	'?'
	.ascii	"_temp_1877\0"
	.align
_Label_1886:
	.byte	'?'
	.ascii	"_temp_1876\0"
	.align
_Label_1887:
	.byte	'?'
	.ascii	"_temp_1875\0"
	.align
_Label_1888:
	.byte	'?'
	.ascii	"_temp_1874\0"
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
_Label_3120:
	push	r0
	sub	r1,1,r1
	bne	_Label_3120
	mov	1454,r13		! source line 1454
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1458,r13		! source line 1458
	mov	"\0\0AS",r10
!   _temp_1889 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1889 [entry ] into _temp_1890
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
!   _temp_1893 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1893 [entry ] into _temp_1894
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
!   Data Move: _temp_1892 = *_temp_1894  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1891 = _temp_1892 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1890 = _temp_1891  (sizeInBytes=4)
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
	.word	_Label_1895
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1896
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1897
	.word	12
	.word	4
	.word	_Label_1898
	.word	-12
	.word	4
	.word	_Label_1899
	.word	-16
	.word	4
	.word	_Label_1900
	.word	-20
	.word	4
	.word	_Label_1901
	.word	-24
	.word	4
	.word	_Label_1902
	.word	-28
	.word	4
	.word	_Label_1903
	.word	-32
	.word	4
	.word	0
_Label_1895:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1896:
	.ascii	"Pself\0"
	.align
_Label_1897:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1898:
	.byte	'?'
	.ascii	"_temp_1894\0"
	.align
_Label_1899:
	.byte	'?'
	.ascii	"_temp_1893\0"
	.align
_Label_1900:
	.byte	'?'
	.ascii	"_temp_1892\0"
	.align
_Label_1901:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1902:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1889\0"
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
_Label_3121:
	push	r0
	sub	r1,1,r1
	bne	_Label_3121
	mov	1463,r13		! source line 1463
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1467,r13		! source line 1467
	mov	"\0\0AS",r10
!   _temp_1904 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1904 [entry ] into _temp_1905
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
!   _temp_1908 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1908 [entry ] into _temp_1909
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
!   Data Move: _temp_1907 = *_temp_1909  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1906 = _temp_1907 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1905 = _temp_1906  (sizeInBytes=4)
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
	.word	_Label_1910
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1911
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1912
	.word	12
	.word	4
	.word	_Label_1913
	.word	-12
	.word	4
	.word	_Label_1914
	.word	-16
	.word	4
	.word	_Label_1915
	.word	-20
	.word	4
	.word	_Label_1916
	.word	-24
	.word	4
	.word	_Label_1917
	.word	-28
	.word	4
	.word	_Label_1918
	.word	-32
	.word	4
	.word	0
_Label_1910:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1911:
	.ascii	"Pself\0"
	.align
_Label_1912:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1913:
	.byte	'?'
	.ascii	"_temp_1909\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1908\0"
	.align
_Label_1915:
	.byte	'?'
	.ascii	"_temp_1907\0"
	.align
_Label_1916:
	.byte	'?'
	.ascii	"_temp_1906\0"
	.align
_Label_1917:
	.byte	'?'
	.ascii	"_temp_1905\0"
	.align
_Label_1918:
	.byte	'?'
	.ascii	"_temp_1904\0"
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
_Label_3122:
	push	r0
	sub	r1,1,r1
	bne	_Label_3122
	mov	1472,r13		! source line 1472
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1476,r13		! source line 1476
	mov	"\0\0AS",r10
!   _temp_1919 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1919 [entry ] into _temp_1920
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
!   _temp_1923 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1923 [entry ] into _temp_1924
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
!   Data Move: _temp_1922 = *_temp_1924  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1921 = _temp_1922 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1920 = _temp_1921  (sizeInBytes=4)
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
	.word	_Label_1925
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1926
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1927
	.word	12
	.word	4
	.word	_Label_1928
	.word	-12
	.word	4
	.word	_Label_1929
	.word	-16
	.word	4
	.word	_Label_1930
	.word	-20
	.word	4
	.word	_Label_1931
	.word	-24
	.word	4
	.word	_Label_1932
	.word	-28
	.word	4
	.word	_Label_1933
	.word	-32
	.word	4
	.word	0
_Label_1925:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1926:
	.ascii	"Pself\0"
	.align
_Label_1927:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1928:
	.byte	'?'
	.ascii	"_temp_1924\0"
	.align
_Label_1929:
	.byte	'?'
	.ascii	"_temp_1923\0"
	.align
_Label_1930:
	.byte	'?'
	.ascii	"_temp_1922\0"
	.align
_Label_1931:
	.byte	'?'
	.ascii	"_temp_1921\0"
	.align
_Label_1932:
	.byte	'?'
	.ascii	"_temp_1920\0"
	.align
_Label_1933:
	.byte	'?'
	.ascii	"_temp_1919\0"
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
_Label_3123:
	push	r0
	sub	r1,1,r1
	bne	_Label_3123
	mov	1481,r13		! source line 1481
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1485,r13		! source line 1485
	mov	"\0\0AS",r10
!   _temp_1934 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1934 [entry ] into _temp_1935
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
!   _temp_1938 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1938 [entry ] into _temp_1939
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
!   Data Move: _temp_1937 = *_temp_1939  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1936 = _temp_1937 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1935 = _temp_1936  (sizeInBytes=4)
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
	.word	_Label_1940
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1941
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1942
	.word	12
	.word	4
	.word	_Label_1943
	.word	-12
	.word	4
	.word	_Label_1944
	.word	-16
	.word	4
	.word	_Label_1945
	.word	-20
	.word	4
	.word	_Label_1946
	.word	-24
	.word	4
	.word	_Label_1947
	.word	-28
	.word	4
	.word	_Label_1948
	.word	-32
	.word	4
	.word	0
_Label_1940:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1941:
	.ascii	"Pself\0"
	.align
_Label_1942:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1939\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1938\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1937\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1936\0"
	.align
_Label_1947:
	.byte	'?'
	.ascii	"_temp_1935\0"
	.align
_Label_1948:
	.byte	'?'
	.ascii	"_temp_1934\0"
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
_Label_3124:
	push	r0
	sub	r1,1,r1
	bne	_Label_3124
	mov	1490,r13		! source line 1490
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1494,r13		! source line 1494
	mov	"\0\0AS",r10
!   _temp_1949 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1949 [entry ] into _temp_1950
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
!   _temp_1953 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1953 [entry ] into _temp_1954
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
!   Data Move: _temp_1952 = *_temp_1954  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1951 = _temp_1952 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1950 = _temp_1951  (sizeInBytes=4)
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
	.word	_Label_1955
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1956
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1957
	.word	12
	.word	4
	.word	_Label_1958
	.word	-12
	.word	4
	.word	_Label_1959
	.word	-16
	.word	4
	.word	_Label_1960
	.word	-20
	.word	4
	.word	_Label_1961
	.word	-24
	.word	4
	.word	_Label_1962
	.word	-28
	.word	4
	.word	_Label_1963
	.word	-32
	.word	4
	.word	0
_Label_1955:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1956:
	.ascii	"Pself\0"
	.align
_Label_1957:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1958:
	.byte	'?'
	.ascii	"_temp_1954\0"
	.align
_Label_1959:
	.byte	'?'
	.ascii	"_temp_1953\0"
	.align
_Label_1960:
	.byte	'?'
	.ascii	"_temp_1952\0"
	.align
_Label_1961:
	.byte	'?'
	.ascii	"_temp_1951\0"
	.align
_Label_1962:
	.byte	'?'
	.ascii	"_temp_1950\0"
	.align
_Label_1963:
	.byte	'?'
	.ascii	"_temp_1949\0"
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
_Label_3125:
	push	r0
	sub	r1,1,r1
	bne	_Label_3125
	mov	1499,r13		! source line 1499
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1503,r13		! source line 1503
	mov	"\0\0AS",r10
!   _temp_1964 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1964 [entry ] into _temp_1965
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
!   _temp_1968 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1968 [entry ] into _temp_1969
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
!   Data Move: _temp_1967 = *_temp_1969  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1966 = _temp_1967 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1965 = _temp_1966  (sizeInBytes=4)
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
	.word	_Label_1970
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1971
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1972
	.word	12
	.word	4
	.word	_Label_1973
	.word	-12
	.word	4
	.word	_Label_1974
	.word	-16
	.word	4
	.word	_Label_1975
	.word	-20
	.word	4
	.word	_Label_1976
	.word	-24
	.word	4
	.word	_Label_1977
	.word	-28
	.word	4
	.word	_Label_1978
	.word	-32
	.word	4
	.word	0
_Label_1970:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1971:
	.ascii	"Pself\0"
	.align
_Label_1972:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1973:
	.byte	'?'
	.ascii	"_temp_1969\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1968\0"
	.align
_Label_1975:
	.byte	'?'
	.ascii	"_temp_1967\0"
	.align
_Label_1976:
	.byte	'?'
	.ascii	"_temp_1966\0"
	.align
_Label_1977:
	.byte	'?'
	.ascii	"_temp_1965\0"
	.align
_Label_1978:
	.byte	'?'
	.ascii	"_temp_1964\0"
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
_Label_3126:
	push	r0
	sub	r1,1,r1
	bne	_Label_3126
	mov	1508,r13		! source line 1508
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1512,r13		! source line 1512
	mov	"\0\0AS",r10
!   _temp_1979 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1979 [entry ] into _temp_1980
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
!   _temp_1983 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1983 [entry ] into _temp_1984
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
!   Data Move: _temp_1982 = *_temp_1984  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1981 = _temp_1982 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1980 = _temp_1981  (sizeInBytes=4)
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
	.word	_Label_1985
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1986
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1987
	.word	12
	.word	4
	.word	_Label_1988
	.word	-12
	.word	4
	.word	_Label_1989
	.word	-16
	.word	4
	.word	_Label_1990
	.word	-20
	.word	4
	.word	_Label_1991
	.word	-24
	.word	4
	.word	_Label_1992
	.word	-28
	.word	4
	.word	_Label_1993
	.word	-32
	.word	4
	.word	0
_Label_1985:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1986:
	.ascii	"Pself\0"
	.align
_Label_1987:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1988:
	.byte	'?'
	.ascii	"_temp_1984\0"
	.align
_Label_1989:
	.byte	'?'
	.ascii	"_temp_1983\0"
	.align
_Label_1990:
	.byte	'?'
	.ascii	"_temp_1982\0"
	.align
_Label_1991:
	.byte	'?'
	.ascii	"_temp_1981\0"
	.align
_Label_1992:
	.byte	'?'
	.ascii	"_temp_1980\0"
	.align
_Label_1993:
	.byte	'?'
	.ascii	"_temp_1979\0"
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
_Label_3127:
	push	r0
	sub	r1,1,r1
	bne	_Label_3127
	mov	1517,r13		! source line 1517
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1995 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1995 [0 ] into _temp_1996
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
!   _temp_1994 = _temp_1996		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1997 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1994  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1997  sizeInBytes=4
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
	.word	_Label_1998
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1999
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2000
	.word	-12
	.word	4
	.word	_Label_2001
	.word	-16
	.word	4
	.word	_Label_2002
	.word	-20
	.word	4
	.word	_Label_2003
	.word	-24
	.word	4
	.word	0
_Label_1998:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1999:
	.ascii	"Pself\0"
	.align
_Label_2000:
	.byte	'?'
	.ascii	"_temp_1997\0"
	.align
_Label_2001:
	.byte	'?'
	.ascii	"_temp_1996\0"
	.align
_Label_2002:
	.byte	'?'
	.ascii	"_temp_1995\0"
	.align
_Label_2003:
	.byte	'?'
	.ascii	"_temp_1994\0"
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
_Label_3128:
	push	r0
	sub	r1,1,r1
	bne	_Label_3128
	mov	1528,r13		! source line 1528
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1543,r13		! source line 1543
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2004
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2004
	jmp	_Label_2005
_Label_2004:
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
	jmp	_Label_2006
_Label_2005:
! ELSE...
	mov	1545,r13		! source line 1545
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1545,r13		! source line 1545
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
_Label_2008:
! END IF...
_Label_2006:
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
_Label_2009:
!	jmp	_Label_2010
_Label_2010:
	mov	1552,r13		! source line 1552
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1553,r13		! source line 1553
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2013		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2013
!	jmp	_Label_2012
_Label_2012:
! THEN...
	mov	1554,r13		! source line 1554
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2014 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2014  sizeInBytes=4
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
_Label_2013:
! IF STATEMENT...
	mov	1557,r13		! source line 1557
	mov	"\0\0IF",r10
	mov	1557,r13		! source line 1557
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2018) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2017  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2017 then goto _Label_2016 else goto _Label_2015
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2015
	jmp	_Label_2016
_Label_2015:
! THEN...
	mov	1558,r13		! source line 1558
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2019 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2019  sizeInBytes=4
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
_Label_2016:
! ASSIGNMENT STATEMENT...
	mov	1561,r13		! source line 1561
	mov	"\0\0AS",r10
	mov	1561,r13		! source line 1561
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2021) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2020  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2020 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1563,r13		! source line 1563
	mov	"\0\0WH",r10
_Label_2022:
!   if offset >= 8192 then goto _Label_2024		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2024
!	jmp	_Label_2023
_Label_2023:
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
!   Data Move: _temp_2025 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2025  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_2027		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2027
!	jmp	_Label_2026
_Label_2026:
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
_Label_2027:
! END WHILE...
	jmp	_Label_2022
_Label_2024:
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
	jmp	_Label_2009
_Label_2011:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2028
	.word	16		! total size of parameters
	.word	48		! frame size = 48
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
	.word	-28
	.word	4
	.word	_Label_2038
	.word	-10
	.word	1
	.word	_Label_2039
	.word	-32
	.word	4
	.word	_Label_2040
	.word	-36
	.word	4
	.word	_Label_2041
	.word	-40
	.word	4
	.word	_Label_2042
	.word	-44
	.word	4
	.word	_Label_2043
	.word	-48
	.word	4
	.word	0
_Label_2028:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2029:
	.ascii	"Pself\0"
	.align
_Label_2030:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2031:
	.byte	'I'
	.ascii	"virtAddr\0"
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
	.byte	'?'
	.ascii	"_temp_2018\0"
	.align
_Label_2038:
	.byte	'C'
	.ascii	"_temp_2017\0"
	.align
_Label_2039:
	.byte	'?'
	.ascii	"_temp_2014\0"
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
_Label_3129:
	push	r0
	sub	r1,1,r1
	bne	_Label_3129
	mov	1582,r13		! source line 1582
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1593,r13		! source line 1593
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2044
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2044
	jmp	_Label_2045
_Label_2044:
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
	jmp	_Label_2046
_Label_2045:
! ELSE...
	mov	1595,r13		! source line 1595
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1595,r13		! source line 1595
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2048		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2048
!	jmp	_Label_2047
_Label_2047:
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
_Label_2048:
! END IF...
_Label_2046:
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
_Label_2049:
!	jmp	_Label_2050
_Label_2050:
	mov	1600,r13		! source line 1600
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1601,r13		! source line 1601
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2055		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2055
	jmp	_Label_2052
_Label_2055:
	mov	1602,r13		! source line 1602
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2057) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2056  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2056 then goto _Label_2054 else goto _Label_2052
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2052
	jmp	_Label_2054
_Label_2054:
	mov	1603,r13		! source line 1603
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2059) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2058  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2058 then goto _Label_2053 else goto _Label_2052
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2052
	jmp	_Label_2053
_Label_2052:
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
_Label_2053:
! ASSIGNMENT STATEMENT...
	mov	1606,r13		! source line 1606
	mov	"\0\0AS",r10
	mov	1606,r13		! source line 1606
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2061) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2060  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2060 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1607,r13		! source line 1607
	mov	"\0\0WH",r10
_Label_2062:
!   if offset >= 8192 then goto _Label_2064		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2064
!	jmp	_Label_2063
_Label_2063:
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
!   Data Move: _temp_2065 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2065  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_2067		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2067
!	jmp	_Label_2066
_Label_2066:
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
_Label_2067:
! END WHILE...
	jmp	_Label_2062
_Label_2064:
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
	jmp	_Label_2049
_Label_2051:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2068
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2069
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2070
	.word	12
	.word	4
	.word	_Label_2071
	.word	16
	.word	4
	.word	_Label_2072
	.word	20
	.word	4
	.word	_Label_2073
	.word	-9
	.word	1
	.word	_Label_2074
	.word	-16
	.word	4
	.word	_Label_2075
	.word	-20
	.word	4
	.word	_Label_2076
	.word	-24
	.word	4
	.word	_Label_2077
	.word	-10
	.word	1
	.word	_Label_2078
	.word	-28
	.word	4
	.word	_Label_2079
	.word	-11
	.word	1
	.word	_Label_2080
	.word	-32
	.word	4
	.word	_Label_2081
	.word	-36
	.word	4
	.word	_Label_2082
	.word	-40
	.word	4
	.word	_Label_2083
	.word	-44
	.word	4
	.word	0
_Label_2068:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2069:
	.ascii	"Pself\0"
	.align
_Label_2070:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2071:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2072:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2073:
	.byte	'C'
	.ascii	"_temp_2065\0"
	.align
_Label_2074:
	.byte	'?'
	.ascii	"_temp_2061\0"
	.align
_Label_2075:
	.byte	'?'
	.ascii	"_temp_2060\0"
	.align
_Label_2076:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2077:
	.byte	'C'
	.ascii	"_temp_2058\0"
	.align
_Label_2078:
	.byte	'?'
	.ascii	"_temp_2057\0"
	.align
_Label_2079:
	.byte	'C'
	.ascii	"_temp_2056\0"
	.align
_Label_2080:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2081:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2082:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2083:
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
_Label_3130:
	push	r0
	sub	r1,1,r1
	bne	_Label_3130
	mov	1624,r13		! source line 1624
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1648,r13		! source line 1648
	mov	"\0\0IF",r10
	mov	1648,r13		! source line 1648
	mov	"\0\0SE",r10
!   _temp_2087 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2088) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2087  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2086  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2086 >= 4 then goto _Label_2085		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2085
!	jmp	_Label_2084
_Label_2084:
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
_Label_2085:
! IF STATEMENT...
	mov	1655,r13		! source line 1655
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2090		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2090
!	jmp	_Label_2089
_Label_2089:
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
_Label_2090:
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
!   _temp_2093 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2092 = _temp_2093 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2094 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2095) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2092  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2094  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2091  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2091  (sizeInBytes=4)
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
	.word	_Label_2096
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2097
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2098
	.word	12
	.word	4
	.word	_Label_2099
	.word	16
	.word	4
	.word	_Label_2100
	.word	20
	.word	4
	.word	_Label_2101
	.word	-12
	.word	4
	.word	_Label_2102
	.word	-16
	.word	4
	.word	_Label_2103
	.word	-20
	.word	4
	.word	_Label_2104
	.word	-24
	.word	4
	.word	_Label_2105
	.word	-28
	.word	4
	.word	_Label_2106
	.word	-32
	.word	4
	.word	_Label_2107
	.word	-36
	.word	4
	.word	_Label_2108
	.word	-40
	.word	4
	.word	_Label_2109
	.word	-44
	.word	4
	.word	0
_Label_2096:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2097:
	.ascii	"Pself\0"
	.align
_Label_2098:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2099:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2100:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2095\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_2094\0"
	.align
_Label_2103:
	.byte	'?'
	.ascii	"_temp_2093\0"
	.align
_Label_2104:
	.byte	'?'
	.ascii	"_temp_2092\0"
	.align
_Label_2105:
	.byte	'?'
	.ascii	"_temp_2091\0"
	.align
_Label_2106:
	.byte	'?'
	.ascii	"_temp_2088\0"
	.align
_Label_2107:
	.byte	'?'
	.ascii	"_temp_2087\0"
	.align
_Label_2108:
	.byte	'?'
	.ascii	"_temp_2086\0"
	.align
_Label_2109:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2110
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2110:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2111
	.word	_sourceFileName
	.word	315		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2111:
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
_Label_3131:
	push	r0
	sub	r1,1,r1
	bne	_Label_3131
	mov	2135,r13		! source line 2135
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2112 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2112  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2136,r13		! source line 2136
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2137,r13		! source line 2137
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2138,r13		! source line 2138
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2139,r13		! source line 2139
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2140,r13		! source line 2140
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2141,r13		! source line 2141
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2142,r13		! source line 2142
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2143,r13		! source line 2143
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
	mov	2144,r13		! source line 2144
	mov	"\0\0SE",r10
!   _temp_2114 = &semUsedInSynchMethods
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
	mov	2145,r13		! source line 2145
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
	mov	2146,r13		! source line 2146
	mov	"\0\0SE",r10
!   _temp_2116 = &diskBusy
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
	mov	2146,r13		! source line 2146
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
	.word	_Label_2117
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2118
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2119
	.word	-12
	.word	4
	.word	_Label_2120
	.word	-16
	.word	4
	.word	_Label_2121
	.word	-20
	.word	4
	.word	_Label_2122
	.word	-24
	.word	4
	.word	_Label_2123
	.word	-28
	.word	4
	.word	0
_Label_2117:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2118:
	.ascii	"Pself\0"
	.align
_Label_2119:
	.byte	'?'
	.ascii	"_temp_2116\0"
	.align
_Label_2120:
	.byte	'?'
	.ascii	"_temp_2115\0"
	.align
_Label_2121:
	.byte	'?'
	.ascii	"_temp_2114\0"
	.align
_Label_2122:
	.byte	'?'
	.ascii	"_temp_2113\0"
	.align
_Label_2123:
	.byte	'?'
	.ascii	"_temp_2112\0"
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
_Label_3132:
	push	r0
	sub	r1,1,r1
	bne	_Label_3132
	mov	2151,r13		! source line 2151
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2164,r13		! source line 2164
	mov	"\0\0SE",r10
!   _temp_2124 = &diskBusy
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
	mov	2165,r13		! source line 2165
	mov	"\0\0WH",r10
_Label_2125:
!	jmp	_Label_2126
_Label_2126:
	mov	2165,r13		! source line 2165
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2167,r13		! source line 2167
	mov	"\0\0SE",r10
!   _temp_2128 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2129) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2128  sizeInBytes=4
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
	mov	2169,r13		! source line 2169
	mov	"\0\0SE",r10
!   _temp_2130 = &semUsedInSynchMethods
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
	mov	2172,r13		! source line 2172
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2139 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2133
	cmp	r1,2
	be	_Label_2134
	cmp	r1,3
	be	_Label_2135
	cmp	r1,4
	be	_Label_2136
	cmp	r1,5
	be	_Label_2137
	cmp	r1,6
	be	_Label_2138
	jmp	_Label_2131
! CASE 1...
_Label_2133:
! SEND STATEMENT...
	mov	2174,r13		! source line 2174
	mov	"\0\0SE",r10
!   _temp_2140 = &diskBusy
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
	mov	2175,r13		! source line 2175
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2134:
! CALL STATEMENT...
!   _temp_2141 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2141  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2177,r13		! source line 2177
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2135:
! CALL STATEMENT...
!   _temp_2142 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2142  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2179,r13		! source line 2179
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2136:
! CALL STATEMENT...
!   _temp_2143 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2143  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2181,r13		! source line 2181
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2137:
! BREAK STATEMENT...
	mov	2185,r13		! source line 2185
	mov	"\0\0BR",r10
	jmp	_Label_2132
! CASE 6...
_Label_2138:
! CALL STATEMENT...
!   _temp_2144 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2144  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2187,r13		! source line 2187
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2131:
! CALL STATEMENT...
!   _temp_2145 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2145  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2189,r13		! source line 2189
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2132:
! END WHILE...
	jmp	_Label_2125
_Label_2127:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2146
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2147
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2148
	.word	12
	.word	4
	.word	_Label_2149
	.word	16
	.word	4
	.word	_Label_2150
	.word	20
	.word	4
	.word	_Label_2151
	.word	-12
	.word	4
	.word	_Label_2152
	.word	-16
	.word	4
	.word	_Label_2153
	.word	-20
	.word	4
	.word	_Label_2154
	.word	-24
	.word	4
	.word	_Label_2155
	.word	-28
	.word	4
	.word	_Label_2156
	.word	-32
	.word	4
	.word	_Label_2157
	.word	-36
	.word	4
	.word	_Label_2158
	.word	-40
	.word	4
	.word	_Label_2159
	.word	-44
	.word	4
	.word	_Label_2160
	.word	-48
	.word	4
	.word	_Label_2161
	.word	-52
	.word	4
	.word	0
_Label_2146:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2147:
	.ascii	"Pself\0"
	.align
_Label_2148:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2149:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2150:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2151:
	.byte	'?'
	.ascii	"_temp_2145\0"
	.align
_Label_2152:
	.byte	'?'
	.ascii	"_temp_2144\0"
	.align
_Label_2153:
	.byte	'?'
	.ascii	"_temp_2143\0"
	.align
_Label_2154:
	.byte	'?'
	.ascii	"_temp_2142\0"
	.align
_Label_2155:
	.byte	'?'
	.ascii	"_temp_2141\0"
	.align
_Label_2156:
	.byte	'?'
	.ascii	"_temp_2140\0"
	.align
_Label_2157:
	.byte	'?'
	.ascii	"_temp_2139\0"
	.align
_Label_2158:
	.byte	'?'
	.ascii	"_temp_2130\0"
	.align
_Label_2159:
	.byte	'?'
	.ascii	"_temp_2129\0"
	.align
_Label_2160:
	.byte	'?'
	.ascii	"_temp_2128\0"
	.align
_Label_2161:
	.byte	'?'
	.ascii	"_temp_2124\0"
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
	mov	2198,r13		! source line 2198
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2213,r13		! source line 2213
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2216,r13		! source line 2216
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
	mov	2217,r13		! source line 2217
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
	mov	2218,r13		! source line 2218
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
	mov	2219,r13		! source line 2219
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
	mov	2219,r13		! source line 2219
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
	.word	_Label_2162
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2163
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2164
	.word	12
	.word	4
	.word	_Label_2165
	.word	16
	.word	4
	.word	_Label_2166
	.word	20
	.word	4
	.word	_Label_2167
	.word	24
	.word	4
	.word	0
_Label_2162:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2163:
	.ascii	"Pself\0"
	.align
_Label_2164:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2165:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2166:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2167:
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
_Label_3133:
	push	r0
	sub	r1,1,r1
	bne	_Label_3133
	mov	2224,r13		! source line 2224
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2236,r13		! source line 2236
	mov	"\0\0SE",r10
!   _temp_2168 = &diskBusy
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
	mov	2237,r13		! source line 2237
	mov	"\0\0WH",r10
_Label_2169:
!	jmp	_Label_2170
_Label_2170:
	mov	2237,r13		! source line 2237
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2238,r13		! source line 2238
	mov	"\0\0SE",r10
!   _temp_2172 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2173) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2172  sizeInBytes=4
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
	mov	2240,r13		! source line 2240
	mov	"\0\0SE",r10
!   _temp_2174 = &semUsedInSynchMethods
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
	mov	2243,r13		! source line 2243
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2183 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2177
	cmp	r1,2
	be	_Label_2178
	cmp	r1,3
	be	_Label_2179
	cmp	r1,4
	be	_Label_2180
	cmp	r1,5
	be	_Label_2181
	cmp	r1,6
	be	_Label_2182
	jmp	_Label_2175
! CASE 1...
_Label_2177:
! SEND STATEMENT...
	mov	2245,r13		! source line 2245
	mov	"\0\0SE",r10
!   _temp_2184 = &diskBusy
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
	mov	2246,r13		! source line 2246
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2178:
! CALL STATEMENT...
!   _temp_2185 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2185  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2248,r13		! source line 2248
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2179:
! CALL STATEMENT...
!   _temp_2186 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2186  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2250,r13		! source line 2250
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2180:
! CALL STATEMENT...
!   _temp_2187 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2187  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2252,r13		! source line 2252
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2181:
! BREAK STATEMENT...
	mov	2256,r13		! source line 2256
	mov	"\0\0BR",r10
	jmp	_Label_2176
! CASE 6...
_Label_2182:
! CALL STATEMENT...
!   _temp_2188 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2188  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2258,r13		! source line 2258
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2175:
! CALL STATEMENT...
!   _temp_2189 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2189  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2260,r13		! source line 2260
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2176:
! END WHILE...
	jmp	_Label_2169
_Label_2171:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2190
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2191
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2192
	.word	12
	.word	4
	.word	_Label_2193
	.word	16
	.word	4
	.word	_Label_2194
	.word	20
	.word	4
	.word	_Label_2195
	.word	-12
	.word	4
	.word	_Label_2196
	.word	-16
	.word	4
	.word	_Label_2197
	.word	-20
	.word	4
	.word	_Label_2198
	.word	-24
	.word	4
	.word	_Label_2199
	.word	-28
	.word	4
	.word	_Label_2200
	.word	-32
	.word	4
	.word	_Label_2201
	.word	-36
	.word	4
	.word	_Label_2202
	.word	-40
	.word	4
	.word	_Label_2203
	.word	-44
	.word	4
	.word	_Label_2204
	.word	-48
	.word	4
	.word	_Label_2205
	.word	-52
	.word	4
	.word	0
_Label_2190:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2191:
	.ascii	"Pself\0"
	.align
_Label_2192:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2193:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2194:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2195:
	.byte	'?'
	.ascii	"_temp_2189\0"
	.align
_Label_2196:
	.byte	'?'
	.ascii	"_temp_2188\0"
	.align
_Label_2197:
	.byte	'?'
	.ascii	"_temp_2187\0"
	.align
_Label_2198:
	.byte	'?'
	.ascii	"_temp_2186\0"
	.align
_Label_2199:
	.byte	'?'
	.ascii	"_temp_2185\0"
	.align
_Label_2200:
	.byte	'?'
	.ascii	"_temp_2184\0"
	.align
_Label_2201:
	.byte	'?'
	.ascii	"_temp_2183\0"
	.align
_Label_2202:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2203:
	.byte	'?'
	.ascii	"_temp_2173\0"
	.align
_Label_2204:
	.byte	'?'
	.ascii	"_temp_2172\0"
	.align
_Label_2205:
	.byte	'?'
	.ascii	"_temp_2168\0"
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
	mov	2269,r13		! source line 2269
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2284,r13		! source line 2284
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2286,r13		! source line 2286
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
	mov	2287,r13		! source line 2287
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
	mov	2288,r13		! source line 2288
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
	mov	2289,r13		! source line 2289
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
	mov	2289,r13		! source line 2289
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
	.word	_Label_2206
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2207
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2208
	.word	12
	.word	4
	.word	_Label_2209
	.word	16
	.word	4
	.word	_Label_2210
	.word	20
	.word	4
	.word	_Label_2211
	.word	24
	.word	4
	.word	0
_Label_2206:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2207:
	.ascii	"Pself\0"
	.align
_Label_2208:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2209:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2210:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2211:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2212
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
_Label_2212:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2213
	.word	_sourceFileName
	.word	338		! line number
	.word	960		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2213:
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
_Label_3134:
	push	r0
	sub	r1,1,r1
	bne	_Label_3134
	mov	2300,r13		! source line 2300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2214 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2214  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2307,r13		! source line 2307
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2308,r13		! source line 2308
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
	mov	2309,r13		! source line 2309
	mov	"\0\0SE",r10
!   _temp_2216 = &fileManagerLock
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
	mov	2312,r13		! source line 2312
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
	mov	2313,r13		! source line 2313
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=96)
	load	[r14+8],r4
	add	r4,428,r4
	mov	24,r3
_Label_3135:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3135
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+428]
! SEND STATEMENT...
	mov	2314,r13		! source line 2314
	mov	"\0\0SE",r10
!   _temp_2219 = &anFCBBecameFree
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
	mov	2315,r13		! source line 2315
	mov	"\0\0AS",r10
!   _temp_2220 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2222 = &_temp_2221
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2222 = _temp_2222 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2224 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3136:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3136
!   _temp_2224 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2226:
!   Data Move: *_temp_2222 = _temp_2224  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3137:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3137
!   _temp_2222 = _temp_2222 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2223 = _temp_2223 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2223) then goto _Label_2226
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2226
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2227 = &_temp_2221
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3138
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3138:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2220 = *_temp_2227  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3139:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3139
! FOR STATEMENT...
	mov	2317,r13		! source line 2317
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2232 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2233 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2232  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2228:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2233 then goto _Label_2231		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2231
_Label_2229:
	mov	2317,r13		! source line 2317
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2318,r13		! source line 2318
	mov	"\0\0AS",r10
!   _temp_2234 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2234 [i ] into _temp_2235
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
!   _temp_2236 = _temp_2235 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2236 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2319,r13		! source line 2319
	mov	"\0\0SE",r10
!   _temp_2237 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2237 [i ] into _temp_2238
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
	mov	2320,r13		! source line 2320
	mov	"\0\0SE",r10
!   _temp_2240 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2240 [i ] into _temp_2241
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
!   _temp_2239 = _temp_2241		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2242 = &fcbFreeList
	load	[r14+8],r1
	add	r1,524,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2239  sizeInBytes=4
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
_Label_2230:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2228
! END FOR
_Label_2231:
! ASSIGNMENT STATEMENT...
	mov	2324,r13		! source line 2324
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
	mov	2325,r13		! source line 2325
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=96)
	load	[r14+8],r4
	add	r4,820,r4
	mov	24,r3
_Label_3140:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3140
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+820]
! SEND STATEMENT...
	mov	2326,r13		! source line 2326
	mov	"\0\0SE",r10
!   _temp_2245 = &anOpenFileBecameFree
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
	mov	2327,r13		! source line 2327
	mov	"\0\0AS",r10
!   _temp_2246 = &openFileTable
	load	[r14+8],r1
	add	r1,536,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2248 = &_temp_2247
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2248 = _temp_2248 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2250 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3141:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3141
!   _temp_2250 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2252:
!   Data Move: *_temp_2248 = _temp_2250  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3142:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3142
!   _temp_2248 = _temp_2248 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2249 = _temp_2249 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2249) then goto _Label_2252
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2252
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2253 = &_temp_2247
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3143
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3143:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2246 = *_temp_2253  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3144:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3144
! FOR STATEMENT...
	mov	2329,r13		! source line 2329
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2258 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2259 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2258  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2254:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2259 then goto _Label_2257		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2257
_Label_2255:
	mov	2329,r13		! source line 2329
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2330,r13		! source line 2330
	mov	"\0\0AS",r10
!   _temp_2260 = &openFileTable
	load	[r14+8],r1
	add	r1,536,r1
	store	r1,[r14+-56]
!   Move address of _temp_2260 [i ] into _temp_2261
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
!   _temp_2262 = _temp_2261 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2262 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2331,r13		! source line 2331
	mov	"\0\0SE",r10
!   _temp_2264 = &openFileTable
	load	[r14+8],r1
	add	r1,536,r1
	store	r1,[r14+-40]
!   Move address of _temp_2264 [i ] into _temp_2265
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
!   _temp_2263 = _temp_2265		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2266 = &openFileFreeList
	load	[r14+8],r1
	add	r1,916,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2263  sizeInBytes=4
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
_Label_2256:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2254
! END FOR
_Label_2257:
! ASSIGNMENT STATEMENT...
	mov	2335,r13		! source line 2335
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,932,r4
	mov	7,r3
_Label_3145:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3145
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+932]
! ASSIGNMENT STATEMENT...
	mov	2336,r13		! source line 2336
	mov	"\0\0AS",r10
!   _temp_2268 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,932,r1
	store	r1,[r14+-24]
!   _temp_2269 = _temp_2268 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2269 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2341,r13		! source line 2341
	mov	"\0\0AS",r10
	mov	2341,r13		! source line 2341
	mov	"\0\0SE",r10
!   _temp_2270 = &_P_Kernel_frameManager
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
	mov	2342,r13		! source line 2342
	mov	"\0\0SE",r10
!   _temp_2271 = &_P_Kernel_diskDriver
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
	mov	2342,r13		! source line 2342
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
	.word	_Label_2272
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2273
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2274
	.word	-12
	.word	4
	.word	_Label_2275
	.word	-16
	.word	4
	.word	_Label_2276
	.word	-20
	.word	4
	.word	_Label_2277
	.word	-24
	.word	4
	.word	_Label_2278
	.word	-28
	.word	4
	.word	_Label_2279
	.word	-32
	.word	4
	.word	_Label_2280
	.word	-36
	.word	4
	.word	_Label_2281
	.word	-40
	.word	4
	.word	_Label_2282
	.word	-44
	.word	4
	.word	_Label_2283
	.word	-48
	.word	4
	.word	_Label_2284
	.word	-52
	.word	4
	.word	_Label_2285
	.word	-56
	.word	4
	.word	_Label_2286
	.word	-60
	.word	4
	.word	_Label_2287
	.word	-64
	.word	4
	.word	_Label_2288
	.word	-68
	.word	4
	.word	_Label_2289
	.word	-72
	.word	4
	.word	_Label_2290
	.word	-100
	.word	28
	.word	_Label_2291
	.word	-104
	.word	4
	.word	_Label_2292
	.word	-108
	.word	4
	.word	_Label_2293
	.word	-392
	.word	284
	.word	_Label_2294
	.word	-396
	.word	4
	.word	_Label_2295
	.word	-400
	.word	4
	.word	_Label_2296
	.word	-404
	.word	4
	.word	_Label_2297
	.word	-408
	.word	4
	.word	_Label_2298
	.word	-412
	.word	4
	.word	_Label_2299
	.word	-416
	.word	4
	.word	_Label_2300
	.word	-420
	.word	4
	.word	_Label_2301
	.word	-424
	.word	4
	.word	_Label_2302
	.word	-428
	.word	4
	.word	_Label_2303
	.word	-432
	.word	4
	.word	_Label_2304
	.word	-436
	.word	4
	.word	_Label_2305
	.word	-440
	.word	4
	.word	_Label_2306
	.word	-444
	.word	4
	.word	_Label_2307
	.word	-448
	.word	4
	.word	_Label_2308
	.word	-452
	.word	4
	.word	_Label_2309
	.word	-456
	.word	4
	.word	_Label_2310
	.word	-460
	.word	4
	.word	_Label_2311
	.word	-500
	.word	40
	.word	_Label_2312
	.word	-504
	.word	4
	.word	_Label_2313
	.word	-508
	.word	4
	.word	_Label_2314
	.word	-912
	.word	404
	.word	_Label_2315
	.word	-916
	.word	4
	.word	_Label_2316
	.word	-920
	.word	4
	.word	_Label_2317
	.word	-924
	.word	4
	.word	_Label_2318
	.word	-928
	.word	4
	.word	_Label_2319
	.word	-932
	.word	4
	.word	_Label_2320
	.word	-936
	.word	4
	.word	_Label_2321
	.word	-940
	.word	4
	.word	_Label_2322
	.word	-944
	.word	4
	.word	0
_Label_2272:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2273:
	.ascii	"Pself\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2271\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2270\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2269\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2268\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2267\0"
	.align
_Label_2279:
	.byte	'?'
	.ascii	"_temp_2266\0"
	.align
_Label_2280:
	.byte	'?'
	.ascii	"_temp_2265\0"
	.align
_Label_2281:
	.byte	'?'
	.ascii	"_temp_2264\0"
	.align
_Label_2282:
	.byte	'?'
	.ascii	"_temp_2263\0"
	.align
_Label_2283:
	.byte	'?'
	.ascii	"_temp_2262\0"
	.align
_Label_2284:
	.byte	'?'
	.ascii	"_temp_2261\0"
	.align
_Label_2285:
	.byte	'?'
	.ascii	"_temp_2260\0"
	.align
_Label_2286:
	.byte	'?'
	.ascii	"_temp_2259\0"
	.align
_Label_2287:
	.byte	'?'
	.ascii	"_temp_2258\0"
	.align
_Label_2288:
	.byte	'?'
	.ascii	"_temp_2253\0"
	.align
_Label_2289:
	.byte	'?'
	.ascii	"_temp_2251\0"
	.align
_Label_2290:
	.byte	'?'
	.ascii	"_temp_2250\0"
	.align
_Label_2291:
	.byte	'?'
	.ascii	"_temp_2249\0"
	.align
_Label_2292:
	.byte	'?'
	.ascii	"_temp_2248\0"
	.align
_Label_2293:
	.byte	'?'
	.ascii	"_temp_2247\0"
	.align
_Label_2294:
	.byte	'?'
	.ascii	"_temp_2246\0"
	.align
_Label_2295:
	.byte	'?'
	.ascii	"_temp_2245\0"
	.align
_Label_2296:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2297:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2298:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
_Label_2299:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2300:
	.byte	'?'
	.ascii	"_temp_2240\0"
	.align
_Label_2301:
	.byte	'?'
	.ascii	"_temp_2239\0"
	.align
_Label_2302:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2303:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2304:
	.byte	'?'
	.ascii	"_temp_2236\0"
	.align
_Label_2305:
	.byte	'?'
	.ascii	"_temp_2235\0"
	.align
_Label_2306:
	.byte	'?'
	.ascii	"_temp_2234\0"
	.align
_Label_2307:
	.byte	'?'
	.ascii	"_temp_2233\0"
	.align
_Label_2308:
	.byte	'?'
	.ascii	"_temp_2232\0"
	.align
_Label_2309:
	.byte	'?'
	.ascii	"_temp_2227\0"
	.align
_Label_2310:
	.byte	'?'
	.ascii	"_temp_2225\0"
	.align
_Label_2311:
	.byte	'?'
	.ascii	"_temp_2224\0"
	.align
_Label_2312:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2313:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2314:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2315:
	.byte	'?'
	.ascii	"_temp_2220\0"
	.align
_Label_2316:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2317:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
_Label_2318:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2319:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2320:
	.byte	'?'
	.ascii	"_temp_2215\0"
	.align
_Label_2321:
	.byte	'?'
	.ascii	"_temp_2214\0"
	.align
_Label_2322:
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
_Label_3146:
	push	r0
	sub	r1,1,r1
	bne	_Label_3146
	mov	2349,r13		! source line 2349
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2351,r13		! source line 2351
	mov	"\0\0SE",r10
!   _temp_2323 = &fileManagerLock
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
!   _temp_2324 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2324  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2352,r13		! source line 2352
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2353,r13		! source line 2353
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2329 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2330 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2329  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2325:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2330 then goto _Label_2328		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2328
_Label_2326:
	mov	2353,r13		! source line 2353
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2331 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2331  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2354,r13		! source line 2354
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2355,r13		! source line 2355
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2332 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2332  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2356,r13		! source line 2356
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2357,r13		! source line 2357
	mov	"\0\0SE",r10
!   _temp_2333 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2333 [i ] into _temp_2334
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
_Label_2327:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2325
! END FOR
_Label_2328:
! CALL STATEMENT...
!   _temp_2335 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2335  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2359,r13		! source line 2359
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2360,r13		! source line 2360
	mov	"\0\0SE",r10
!   _temp_2336 = _function_211_printFCB
	set	_function_211_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2337 = &fcbFreeList
	load	[r14+8],r1
	add	r1,524,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2336  sizeInBytes=4
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
	mov	2361,r13		! source line 2361
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2338 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2338  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2362,r13		! source line 2362
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2363,r13		! source line 2363
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2343 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2344 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2343  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2339:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2344 then goto _Label_2342		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2342
_Label_2340:
	mov	2363,r13		! source line 2363
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2345 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2345  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2364,r13		! source line 2364
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2365,r13		! source line 2365
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2346 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2346  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2366,r13		! source line 2366
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2348 = &openFileTable
	load	[r14+8],r1
	add	r1,536,r1
	store	r1,[r14+-44]
!   Move address of _temp_2348 [i ] into _temp_2349
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
!   _temp_2347 = _temp_2349		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2347  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2367,r13		! source line 2367
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2350 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2350  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2368,r13		! source line 2368
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2369,r13		! source line 2369
	mov	"\0\0SE",r10
!   _temp_2351 = &openFileTable
	load	[r14+8],r1
	add	r1,536,r1
	store	r1,[r14+-32]
!   Move address of _temp_2351 [i ] into _temp_2352
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
_Label_2341:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2339
! END FOR
_Label_2342:
! CALL STATEMENT...
!   _temp_2353 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2353  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2371,r13		! source line 2371
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2372,r13		! source line 2372
	mov	"\0\0SE",r10
!   _temp_2354 = _function_210_printOpen
	set	_function_210_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2355 = &openFileFreeList
	load	[r14+8],r1
	add	r1,916,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2354  sizeInBytes=4
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
	mov	2373,r13		! source line 2373
	mov	"\0\0SE",r10
!   _temp_2356 = &fileManagerLock
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
	mov	2373,r13		! source line 2373
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
	.word	_Label_2357
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2358
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2359
	.word	-12
	.word	4
	.word	_Label_2360
	.word	-16
	.word	4
	.word	_Label_2361
	.word	-20
	.word	4
	.word	_Label_2362
	.word	-24
	.word	4
	.word	_Label_2363
	.word	-28
	.word	4
	.word	_Label_2364
	.word	-32
	.word	4
	.word	_Label_2365
	.word	-36
	.word	4
	.word	_Label_2366
	.word	-40
	.word	4
	.word	_Label_2367
	.word	-44
	.word	4
	.word	_Label_2368
	.word	-48
	.word	4
	.word	_Label_2369
	.word	-52
	.word	4
	.word	_Label_2370
	.word	-56
	.word	4
	.word	_Label_2371
	.word	-60
	.word	4
	.word	_Label_2372
	.word	-64
	.word	4
	.word	_Label_2373
	.word	-68
	.word	4
	.word	_Label_2374
	.word	-72
	.word	4
	.word	_Label_2375
	.word	-76
	.word	4
	.word	_Label_2376
	.word	-80
	.word	4
	.word	_Label_2377
	.word	-84
	.word	4
	.word	_Label_2378
	.word	-88
	.word	4
	.word	_Label_2379
	.word	-92
	.word	4
	.word	_Label_2380
	.word	-96
	.word	4
	.word	_Label_2381
	.word	-100
	.word	4
	.word	_Label_2382
	.word	-104
	.word	4
	.word	_Label_2383
	.word	-108
	.word	4
	.word	_Label_2384
	.word	-112
	.word	4
	.word	_Label_2385
	.word	-116
	.word	4
	.word	0
_Label_2357:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2358:
	.ascii	"Pself\0"
	.align
_Label_2359:
	.byte	'?'
	.ascii	"_temp_2356\0"
	.align
_Label_2360:
	.byte	'?'
	.ascii	"_temp_2355\0"
	.align
_Label_2361:
	.byte	'?'
	.ascii	"_temp_2354\0"
	.align
_Label_2362:
	.byte	'?'
	.ascii	"_temp_2353\0"
	.align
_Label_2363:
	.byte	'?'
	.ascii	"_temp_2352\0"
	.align
_Label_2364:
	.byte	'?'
	.ascii	"_temp_2351\0"
	.align
_Label_2365:
	.byte	'?'
	.ascii	"_temp_2350\0"
	.align
_Label_2366:
	.byte	'?'
	.ascii	"_temp_2349\0"
	.align
_Label_2367:
	.byte	'?'
	.ascii	"_temp_2348\0"
	.align
_Label_2368:
	.byte	'?'
	.ascii	"_temp_2347\0"
	.align
_Label_2369:
	.byte	'?'
	.ascii	"_temp_2346\0"
	.align
_Label_2370:
	.byte	'?'
	.ascii	"_temp_2345\0"
	.align
_Label_2371:
	.byte	'?'
	.ascii	"_temp_2344\0"
	.align
_Label_2372:
	.byte	'?'
	.ascii	"_temp_2343\0"
	.align
_Label_2373:
	.byte	'?'
	.ascii	"_temp_2338\0"
	.align
_Label_2374:
	.byte	'?'
	.ascii	"_temp_2337\0"
	.align
_Label_2375:
	.byte	'?'
	.ascii	"_temp_2336\0"
	.align
_Label_2376:
	.byte	'?'
	.ascii	"_temp_2335\0"
	.align
_Label_2377:
	.byte	'?'
	.ascii	"_temp_2334\0"
	.align
_Label_2378:
	.byte	'?'
	.ascii	"_temp_2333\0"
	.align
_Label_2379:
	.byte	'?'
	.ascii	"_temp_2332\0"
	.align
_Label_2380:
	.byte	'?'
	.ascii	"_temp_2331\0"
	.align
_Label_2381:
	.byte	'?'
	.ascii	"_temp_2330\0"
	.align
_Label_2382:
	.byte	'?'
	.ascii	"_temp_2329\0"
	.align
_Label_2383:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2384:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2385:
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
_Label_3147:
	push	r0
	sub	r1,1,r1
	bne	_Label_3147
	mov	2378,r13		! source line 2378
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2394,r13		! source line 2394
	mov	"\0\0AS",r10
	mov	2394,r13		! source line 2394
	mov	"\0\0SE",r10
!   _temp_2386 = &_P_Kernel_fileManager
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
	mov	2395,r13		! source line 2395
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2387
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2387
	jmp	_Label_2388
_Label_2387:
! THEN...
	mov	2396,r13		! source line 2396
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2396,r13		! source line 2396
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2388:
! SEND STATEMENT...
	mov	2400,r13		! source line 2400
	mov	"\0\0SE",r10
!   _temp_2389 = &fileManagerLock
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
	mov	2401,r13		! source line 2401
	mov	"\0\0WH",r10
_Label_2390:
	mov	2401,r13		! source line 2401
	mov	"\0\0SE",r10
!   _temp_2393 = &openFileFreeList
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
!   if result==true then goto _Label_2391 else goto _Label_2392
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2392
	jmp	_Label_2391
_Label_2391:
	mov	2401,r13		! source line 2401
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2402,r13		! source line 2402
	mov	"\0\0SE",r10
!   _temp_2394 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2395 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,820,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2394  sizeInBytes=4
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
	jmp	_Label_2390
_Label_2392:
! ASSIGNMENT STATEMENT...
	mov	2404,r13		! source line 2404
	mov	"\0\0AS",r10
	mov	2404,r13		! source line 2404
	mov	"\0\0SE",r10
!   _temp_2396 = &openFileFreeList
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
	mov	2407,r13		! source line 2407
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2397 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2397 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2408,r13		! source line 2408
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2398 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2398 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2411,r13		! source line 2411
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2399 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2399 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2413,r13		! source line 2413
	mov	"\0\0SE",r10
!   _temp_2400 = &fileManagerLock
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
	mov	2414,r13		! source line 2414
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
	.word	_Label_2401
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2402
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2403
	.word	12
	.word	4
	.word	_Label_2404
	.word	-12
	.word	4
	.word	_Label_2405
	.word	-16
	.word	4
	.word	_Label_2406
	.word	-20
	.word	4
	.word	_Label_2407
	.word	-24
	.word	4
	.word	_Label_2408
	.word	-28
	.word	4
	.word	_Label_2409
	.word	-32
	.word	4
	.word	_Label_2410
	.word	-36
	.word	4
	.word	_Label_2411
	.word	-40
	.word	4
	.word	_Label_2412
	.word	-44
	.word	4
	.word	_Label_2413
	.word	-48
	.word	4
	.word	_Label_2414
	.word	-52
	.word	4
	.word	_Label_2415
	.word	-56
	.word	4
	.word	0
_Label_2401:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2402:
	.ascii	"Pself\0"
	.align
_Label_2403:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2400\0"
	.align
_Label_2405:
	.byte	'?'
	.ascii	"_temp_2399\0"
	.align
_Label_2406:
	.byte	'?'
	.ascii	"_temp_2398\0"
	.align
_Label_2407:
	.byte	'?'
	.ascii	"_temp_2397\0"
	.align
_Label_2408:
	.byte	'?'
	.ascii	"_temp_2396\0"
	.align
_Label_2409:
	.byte	'?'
	.ascii	"_temp_2395\0"
	.align
_Label_2410:
	.byte	'?'
	.ascii	"_temp_2394\0"
	.align
_Label_2411:
	.byte	'?'
	.ascii	"_temp_2393\0"
	.align
_Label_2412:
	.byte	'?'
	.ascii	"_temp_2389\0"
	.align
_Label_2413:
	.byte	'?'
	.ascii	"_temp_2386\0"
	.align
_Label_2414:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2415:
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
_Label_3148:
	push	r0
	sub	r1,1,r1
	bne	_Label_3148
	mov	2419,r13		! source line 2419
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2444,r13		! source line 2444
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+928],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2447,r13		! source line 2447
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
	mov	2448,r13		! source line 2448
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2449,r13		! source line 2449
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2417		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2417
!	jmp	_Label_2416
_Label_2416:
! THEN...
	mov	2450,r13		! source line 2450
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2418 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2418  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2450,r13		! source line 2450
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2417:
! ASSIGNMENT STATEMENT...
	mov	2454,r13		! source line 2454
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
	mov	2455,r13		! source line 2455
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2456,r13		! source line 2456
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
	mov	2457,r13		! source line 2457
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2460,r13		! source line 2460
	mov	"\0\0WH",r10
_Label_2419:
!   if numFiles <= 0 then goto _Label_2421		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2421
!	jmp	_Label_2420
_Label_2420:
	mov	2460,r13		! source line 2460
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2422 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2422  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2461,r13		! source line 2461
	mov	"\0\0CA",r10
	call	_function_212_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2462,r13		! source line 2462
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2423 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2423  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2463,r13		! source line 2463
	mov	"\0\0CA",r10
	call	_function_212_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2464,r13		! source line 2464
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2424 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2424  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2465,r13		! source line 2465
	mov	"\0\0CA",r10
	call	_function_212_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2466,r13		! source line 2466
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2467,r13		! source line 2467
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2428 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2428 then goto _Label_2426		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2426
!	jmp	_Label_2427
_Label_2427:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2430
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
!   _temp_2429 = _temp_2430		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2429  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2468,r13		! source line 2468
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2425 else goto _Label_2426
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2426
	jmp	_Label_2425
_Label_2425:
! THEN...
	mov	2469,r13		! source line 2469
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2469,r13		! source line 2469
	mov	"\0\0BR",r10
	jmp	_Label_2421
! END IF...
_Label_2426:
! ASSIGNMENT STATEMENT...
	mov	2471,r13		! source line 2471
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2472,r13		! source line 2472
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2419
_Label_2421:
! IF STATEMENT...
	mov	2476,r13		! source line 2476
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2432		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2432
!	jmp	_Label_2431
_Label_2431:
! THEN...
	mov	2477,r13		! source line 2477
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2477,r13		! source line 2477
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2432:
! SEND STATEMENT...
	mov	2480,r13		! source line 2480
	mov	"\0\0SE",r10
!   _temp_2433 = &fileManagerLock
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
	mov	2482,r13		! source line 2482
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2438 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2439 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2438  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2434:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2439 then goto _Label_2437		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2437
_Label_2435:
	mov	2482,r13		! source line 2482
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2483,r13		! source line 2483
	mov	"\0\0AS",r10
!   _temp_2440 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2440 [i ] into _temp_2441
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
!   fcb = _temp_2441		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2484,r13		! source line 2484
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2445 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2444 = *_temp_2445  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2444 != start then goto _Label_2443		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2443
!	jmp	_Label_2442
_Label_2442:
! THEN...
	mov	2485,r13		! source line 2485
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2485,r13		! source line 2485
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2446 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2449 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2448 = *_temp_2449  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2447 = _temp_2448 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2446 = _temp_2447  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2486,r13		! source line 2486
	mov	"\0\0SE",r10
!   _temp_2450 = &fileManagerLock
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
	mov	2487,r13		! source line 2487
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2443:
!   Increment the FOR-LOOP index variable and jump back
_Label_2436:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2434
! END FOR
_Label_2437:
! WHILE STATEMENT...
	mov	2492,r13		! source line 2492
	mov	"\0\0WH",r10
_Label_2451:
	mov	2492,r13		! source line 2492
	mov	"\0\0SE",r10
!   _temp_2454 = &fcbFreeList
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
!   if result==true then goto _Label_2452 else goto _Label_2453
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2453
	jmp	_Label_2452
_Label_2452:
	mov	2492,r13		! source line 2492
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2493,r13		! source line 2493
	mov	"\0\0SE",r10
!   _temp_2455 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2456 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2455  sizeInBytes=4
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
	jmp	_Label_2451
_Label_2453:
! ASSIGNMENT STATEMENT...
	mov	2495,r13		! source line 2495
	mov	"\0\0AS",r10
	mov	2495,r13		! source line 2495
	mov	"\0\0SE",r10
!   _temp_2457 = &fcbFreeList
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
	mov	2498,r13		! source line 2498
	mov	"\0\0SE",r10
!   _temp_2458 = &fileManagerLock
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
	mov	2501,r13		! source line 2501
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2459 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2459 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2502,r13		! source line 2502
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2460 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2460 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2503,r13		! source line 2503
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2461 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2461 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2504,r13		! source line 2504
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2466 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2465 = *_temp_2466  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2465 < 0 then goto _Label_2464		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2464
	jmp	_Label_2462
_Label_2464:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2467 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2467 ) then goto _Label_2463		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2463
!	jmp	_Label_2462
_Label_2462:
! THEN...
	mov	2505,r13		! source line 2505
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2468 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2468  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2505,r13		! source line 2505
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2463:
! RETURN STATEMENT...
	mov	2507,r13		! source line 2507
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
	.word	_Label_2469
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2470
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2471
	.word	12
	.word	4
	.word	_Label_2472
	.word	-12
	.word	4
	.word	_Label_2473
	.word	-16
	.word	4
	.word	_Label_2474
	.word	-20
	.word	4
	.word	_Label_2475
	.word	-24
	.word	4
	.word	_Label_2476
	.word	-28
	.word	4
	.word	_Label_2477
	.word	-32
	.word	4
	.word	_Label_2478
	.word	-36
	.word	4
	.word	_Label_2479
	.word	-40
	.word	4
	.word	_Label_2480
	.word	-44
	.word	4
	.word	_Label_2481
	.word	-48
	.word	4
	.word	_Label_2482
	.word	-52
	.word	4
	.word	_Label_2483
	.word	-56
	.word	4
	.word	_Label_2484
	.word	-60
	.word	4
	.word	_Label_2485
	.word	-64
	.word	4
	.word	_Label_2486
	.word	-68
	.word	4
	.word	_Label_2487
	.word	-72
	.word	4
	.word	_Label_2488
	.word	-76
	.word	4
	.word	_Label_2489
	.word	-80
	.word	4
	.word	_Label_2490
	.word	-84
	.word	4
	.word	_Label_2491
	.word	-88
	.word	4
	.word	_Label_2492
	.word	-92
	.word	4
	.word	_Label_2493
	.word	-96
	.word	4
	.word	_Label_2494
	.word	-100
	.word	4
	.word	_Label_2495
	.word	-104
	.word	4
	.word	_Label_2496
	.word	-108
	.word	4
	.word	_Label_2497
	.word	-112
	.word	4
	.word	_Label_2498
	.word	-116
	.word	4
	.word	_Label_2499
	.word	-120
	.word	4
	.word	_Label_2500
	.word	-124
	.word	4
	.word	_Label_2501
	.word	-128
	.word	4
	.word	_Label_2502
	.word	-132
	.word	4
	.word	_Label_2503
	.word	-136
	.word	4
	.word	_Label_2504
	.word	-140
	.word	4
	.word	_Label_2505
	.word	-144
	.word	4
	.word	_Label_2506
	.word	-148
	.word	4
	.word	_Label_2507
	.word	-152
	.word	4
	.word	_Label_2508
	.word	-156
	.word	4
	.word	_Label_2509
	.word	-160
	.word	4
	.word	0
_Label_2469:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2470:
	.ascii	"Pself\0"
	.align
_Label_2471:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2468\0"
	.align
_Label_2473:
	.byte	'?'
	.ascii	"_temp_2467\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2466\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2465\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2461\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2460\0"
	.align
_Label_2478:
	.byte	'?'
	.ascii	"_temp_2459\0"
	.align
_Label_2479:
	.byte	'?'
	.ascii	"_temp_2458\0"
	.align
_Label_2480:
	.byte	'?'
	.ascii	"_temp_2457\0"
	.align
_Label_2481:
	.byte	'?'
	.ascii	"_temp_2456\0"
	.align
_Label_2482:
	.byte	'?'
	.ascii	"_temp_2455\0"
	.align
_Label_2483:
	.byte	'?'
	.ascii	"_temp_2454\0"
	.align
_Label_2484:
	.byte	'?'
	.ascii	"_temp_2450\0"
	.align
_Label_2485:
	.byte	'?'
	.ascii	"_temp_2449\0"
	.align
_Label_2486:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2487:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2488:
	.byte	'?'
	.ascii	"_temp_2446\0"
	.align
_Label_2489:
	.byte	'?'
	.ascii	"_temp_2445\0"
	.align
_Label_2490:
	.byte	'?'
	.ascii	"_temp_2444\0"
	.align
_Label_2491:
	.byte	'?'
	.ascii	"_temp_2441\0"
	.align
_Label_2492:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2493:
	.byte	'?'
	.ascii	"_temp_2439\0"
	.align
_Label_2494:
	.byte	'?'
	.ascii	"_temp_2438\0"
	.align
_Label_2495:
	.byte	'?'
	.ascii	"_temp_2433\0"
	.align
_Label_2496:
	.byte	'?'
	.ascii	"_temp_2430\0"
	.align
_Label_2497:
	.byte	'?'
	.ascii	"_temp_2429\0"
	.align
_Label_2498:
	.byte	'?'
	.ascii	"_temp_2428\0"
	.align
_Label_2499:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2500:
	.byte	'?'
	.ascii	"_temp_2423\0"
	.align
_Label_2501:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2502:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2503:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2504:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2505:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2506:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2507:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2508:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2509:
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
_Label_3149:
	push	r0
	sub	r1,1,r1
	bne	_Label_3149
	mov	2520,r13		! source line 2520
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2522,r13		! source line 2522
	mov	"\0\0IF",r10
!   _temp_2512 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,932,r1
	store	r1,[r14+-100]
!   if open != _temp_2512 then goto _Label_2511		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2511
!	jmp	_Label_2510
_Label_2510:
! THEN...
	mov	2523,r13		! source line 2523
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2523,r13		! source line 2523
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2511:
! SEND STATEMENT...
	mov	2525,r13		! source line 2525
	mov	"\0\0SE",r10
!   _temp_2513 = &fileManagerLock
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
	mov	2526,r13		! source line 2526
	mov	"\0\0SE",r10
!   _temp_2514 = &_P_Kernel_fileManager
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
	mov	2527,r13		! source line 2527
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2515 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2515  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2528,r13		! source line 2528
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2516 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2519 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2518 = *_temp_2519  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2517 = _temp_2518 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2516 = _temp_2517  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2529,r13		! source line 2529
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2523 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2522 = *_temp_2523  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2522 > 0 then goto _Label_2521		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2521
!	jmp	_Label_2520
_Label_2520:
! THEN...
	mov	2530,r13		! source line 2530
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2530,r13		! source line 2530
	mov	"\0\0SE",r10
!   _temp_2524 = &openFileFreeList
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
	mov	2531,r13		! source line 2531
	mov	"\0\0SE",r10
!   _temp_2525 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2526 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,820,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2525  sizeInBytes=4
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
	mov	2532,r13		! source line 2532
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2527 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2530 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2529 = *_temp_2530  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2528 = _temp_2529 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2527 = _temp_2528  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2533,r13		! source line 2533
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2534 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2533 = *_temp_2534  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2533 > 0 then goto _Label_2532		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2532
!	jmp	_Label_2531
_Label_2531:
! THEN...
	mov	2534,r13		! source line 2534
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2534,r13		! source line 2534
	mov	"\0\0SE",r10
!   _temp_2535 = &fcbFreeList
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
	mov	2535,r13		! source line 2535
	mov	"\0\0SE",r10
!   _temp_2536 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2537 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2536  sizeInBytes=4
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
_Label_2532:
! END IF...
_Label_2521:
! SEND STATEMENT...
	mov	2538,r13		! source line 2538
	mov	"\0\0SE",r10
!   _temp_2538 = &fileManagerLock
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
	mov	2538,r13		! source line 2538
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
	.word	_Label_2539
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2540
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2541
	.word	12
	.word	4
	.word	_Label_2542
	.word	-12
	.word	4
	.word	_Label_2543
	.word	-16
	.word	4
	.word	_Label_2544
	.word	-20
	.word	4
	.word	_Label_2545
	.word	-24
	.word	4
	.word	_Label_2546
	.word	-28
	.word	4
	.word	_Label_2547
	.word	-32
	.word	4
	.word	_Label_2548
	.word	-36
	.word	4
	.word	_Label_2549
	.word	-40
	.word	4
	.word	_Label_2550
	.word	-44
	.word	4
	.word	_Label_2551
	.word	-48
	.word	4
	.word	_Label_2552
	.word	-52
	.word	4
	.word	_Label_2553
	.word	-56
	.word	4
	.word	_Label_2554
	.word	-60
	.word	4
	.word	_Label_2555
	.word	-64
	.word	4
	.word	_Label_2556
	.word	-68
	.word	4
	.word	_Label_2557
	.word	-72
	.word	4
	.word	_Label_2558
	.word	-76
	.word	4
	.word	_Label_2559
	.word	-80
	.word	4
	.word	_Label_2560
	.word	-84
	.word	4
	.word	_Label_2561
	.word	-88
	.word	4
	.word	_Label_2562
	.word	-92
	.word	4
	.word	_Label_2563
	.word	-96
	.word	4
	.word	_Label_2564
	.word	-100
	.word	4
	.word	_Label_2565
	.word	-104
	.word	4
	.word	0
_Label_2539:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2540:
	.ascii	"Pself\0"
	.align
_Label_2541:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2542:
	.byte	'?'
	.ascii	"_temp_2538\0"
	.align
_Label_2543:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2544:
	.byte	'?'
	.ascii	"_temp_2536\0"
	.align
_Label_2545:
	.byte	'?'
	.ascii	"_temp_2535\0"
	.align
_Label_2546:
	.byte	'?'
	.ascii	"_temp_2534\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2533\0"
	.align
_Label_2548:
	.byte	'?'
	.ascii	"_temp_2530\0"
	.align
_Label_2549:
	.byte	'?'
	.ascii	"_temp_2529\0"
	.align
_Label_2550:
	.byte	'?'
	.ascii	"_temp_2528\0"
	.align
_Label_2551:
	.byte	'?'
	.ascii	"_temp_2527\0"
	.align
_Label_2552:
	.byte	'?'
	.ascii	"_temp_2526\0"
	.align
_Label_2553:
	.byte	'?'
	.ascii	"_temp_2525\0"
	.align
_Label_2554:
	.byte	'?'
	.ascii	"_temp_2524\0"
	.align
_Label_2555:
	.byte	'?'
	.ascii	"_temp_2523\0"
	.align
_Label_2556:
	.byte	'?'
	.ascii	"_temp_2522\0"
	.align
_Label_2557:
	.byte	'?'
	.ascii	"_temp_2519\0"
	.align
_Label_2558:
	.byte	'?'
	.ascii	"_temp_2518\0"
	.align
_Label_2559:
	.byte	'?'
	.ascii	"_temp_2517\0"
	.align
_Label_2560:
	.byte	'?'
	.ascii	"_temp_2516\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2515\0"
	.align
_Label_2562:
	.byte	'?'
	.ascii	"_temp_2514\0"
	.align
_Label_2563:
	.byte	'?'
	.ascii	"_temp_2513\0"
	.align
_Label_2564:
	.byte	'?'
	.ascii	"_temp_2512\0"
	.align
_Label_2565:
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
_Label_3150:
	push	r0
	sub	r1,1,r1
	bne	_Label_3150
	mov	2543,r13		! source line 2543
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2548,r13		! source line 2548
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2569 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2568 = *_temp_2569  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2568) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2570 = _temp_2568 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2570 ) then goto _Label_2567		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2567
!	jmp	_Label_2566
_Label_2566:
! THEN...
	mov	2549,r13		! source line 2549
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2549,r13		! source line 2549
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2575 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2574 = *_temp_2575  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2574) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2576 = _temp_2574 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2573 = *_temp_2576  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2573 >= 0 then goto _Label_2572		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2572
!	jmp	_Label_2571
_Label_2571:
! THEN...
	mov	2550,r13		! source line 2550
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2577 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2577  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2550,r13		! source line 2550
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2572:
! ASSIGNMENT STATEMENT...
	mov	2552,r13		! source line 2552
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2579 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2578 = *_temp_2579  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2578) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2580 = _temp_2578 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2580 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2553,r13		! source line 2553
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2584 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2583 = *_temp_2584  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2583) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2585 = _temp_2583 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2582 = *_temp_2585  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2588 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2587 = *_temp_2588  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2587) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2589 = _temp_2587 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2586 = *_temp_2589  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2581 = _temp_2582 + _temp_2586		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2592 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2591 = *_temp_2592  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2591) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2593 = _temp_2591 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2590 = *_temp_2593  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2594 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2581  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2590  sizeInBytes=4
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
_Label_2567:
! RETURN STATEMENT...
	mov	2548,r13		! source line 2548
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
	.word	_Label_2595
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2596
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2597
	.word	12
	.word	4
	.word	_Label_2598
	.word	-12
	.word	4
	.word	_Label_2599
	.word	-16
	.word	4
	.word	_Label_2600
	.word	-20
	.word	4
	.word	_Label_2601
	.word	-24
	.word	4
	.word	_Label_2602
	.word	-28
	.word	4
	.word	_Label_2603
	.word	-32
	.word	4
	.word	_Label_2604
	.word	-36
	.word	4
	.word	_Label_2605
	.word	-40
	.word	4
	.word	_Label_2606
	.word	-44
	.word	4
	.word	_Label_2607
	.word	-48
	.word	4
	.word	_Label_2608
	.word	-52
	.word	4
	.word	_Label_2609
	.word	-56
	.word	4
	.word	_Label_2610
	.word	-60
	.word	4
	.word	_Label_2611
	.word	-64
	.word	4
	.word	_Label_2612
	.word	-68
	.word	4
	.word	_Label_2613
	.word	-72
	.word	4
	.word	_Label_2614
	.word	-76
	.word	4
	.word	_Label_2615
	.word	-80
	.word	4
	.word	_Label_2616
	.word	-84
	.word	4
	.word	_Label_2617
	.word	-88
	.word	4
	.word	_Label_2618
	.word	-92
	.word	4
	.word	_Label_2619
	.word	-96
	.word	4
	.word	_Label_2620
	.word	-100
	.word	4
	.word	_Label_2621
	.word	-104
	.word	4
	.word	_Label_2622
	.word	-108
	.word	4
	.word	0
_Label_2595:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2596:
	.ascii	"Pself\0"
	.align
_Label_2597:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2598:
	.byte	'?'
	.ascii	"_temp_2594\0"
	.align
_Label_2599:
	.byte	'?'
	.ascii	"_temp_2593\0"
	.align
_Label_2600:
	.byte	'?'
	.ascii	"_temp_2592\0"
	.align
_Label_2601:
	.byte	'?'
	.ascii	"_temp_2591\0"
	.align
_Label_2602:
	.byte	'?'
	.ascii	"_temp_2590\0"
	.align
_Label_2603:
	.byte	'?'
	.ascii	"_temp_2589\0"
	.align
_Label_2604:
	.byte	'?'
	.ascii	"_temp_2588\0"
	.align
_Label_2605:
	.byte	'?'
	.ascii	"_temp_2587\0"
	.align
_Label_2606:
	.byte	'?'
	.ascii	"_temp_2586\0"
	.align
_Label_2607:
	.byte	'?'
	.ascii	"_temp_2585\0"
	.align
_Label_2608:
	.byte	'?'
	.ascii	"_temp_2584\0"
	.align
_Label_2609:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2610:
	.byte	'?'
	.ascii	"_temp_2582\0"
	.align
_Label_2611:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2612:
	.byte	'?'
	.ascii	"_temp_2580\0"
	.align
_Label_2613:
	.byte	'?'
	.ascii	"_temp_2579\0"
	.align
_Label_2614:
	.byte	'?'
	.ascii	"_temp_2578\0"
	.align
_Label_2615:
	.byte	'?'
	.ascii	"_temp_2577\0"
	.align
_Label_2616:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
_Label_2617:
	.byte	'?'
	.ascii	"_temp_2575\0"
	.align
_Label_2618:
	.byte	'?'
	.ascii	"_temp_2574\0"
	.align
_Label_2619:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
_Label_2620:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2621:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2622:
	.byte	'?'
	.ascii	"_temp_2568\0"
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
_Label_3151:
	push	r0
	sub	r1,1,r1
	bne	_Label_3151
	mov	2562,r13		! source line 2562
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2577,r13		! source line 2577
	mov	"\0\0SE",r10
!   _temp_2623 = &fileManagerLock
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
	mov	2578,r13		! source line 2578
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2629		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2629
!   _temp_2628 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2630
_Label_2629:
!   _temp_2628 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2630:
!   if _temp_2628 then goto _Label_2627 else goto _Label_2624
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2624
	jmp	_Label_2627
_Label_2627:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2633 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2632 = *_temp_2633  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2632 == 0 then goto _Label_2634		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2634
!   _temp_2631 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2635
_Label_2634:
!   _temp_2631 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2635:
!   if _temp_2631 then goto _Label_2626 else goto _Label_2624
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2624
	jmp	_Label_2626
_Label_2626:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2638 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2637 = *_temp_2638  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2637) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2639 = _temp_2637 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2636 = *_temp_2639  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2636 >= 0 then goto _Label_2625		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2625
!	jmp	_Label_2624
_Label_2624:
! THEN...
	mov	2579,r13		! source line 2579
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2640 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2640  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2579,r13		! source line 2579
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2625:
! ASSIGNMENT STATEMENT...
	mov	2581,r13		! source line 2581
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2641 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2641  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2582,r13		! source line 2582
	mov	"\0\0WH",r10
_Label_2642:
!   if numBytes <= 0 then goto _Label_2644		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2644
!	jmp	_Label_2643
_Label_2643:
	mov	2582,r13		! source line 2582
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2591,r13		! source line 2591
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
	mov	2592,r13		! source line 2592
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
	mov	2596,r13		! source line 2596
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2648 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2647 = *_temp_2648  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2647 == sector then goto _Label_2646		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2646
!	jmp	_Label_2645
_Label_2645:
! THEN...
	mov	2597,r13		! source line 2597
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2597,r13		! source line 2597
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2649) then goto _runtimeErrorNullPointer
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
	mov	2599,r13		! source line 2599
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2652 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2651 = *_temp_2652  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2650 = sector + _temp_2651		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2654 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2653 = *_temp_2654  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2655 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2650  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2653  sizeInBytes=4
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
	mov	2602,r13		! source line 2602
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2656 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2656 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2603,r13		! source line 2603
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2657 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2657 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2646:
! ASSIGNMENT STATEMENT...
	mov	2605,r13		! source line 2605
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2659 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2658 = *_temp_2659  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2658 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2606,r13		! source line 2606
	mov	"\0\0AS",r10
!   _temp_2660 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2660  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2606,r13		! source line 2606
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
	mov	2610,r13		! source line 2610
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2611,r13		! source line 2611
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2612,r13		! source line 2612
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2613,r13		! source line 2613
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2642
_Label_2644:
! SEND STATEMENT...
	mov	2620,r13		! source line 2620
	mov	"\0\0SE",r10
!   _temp_2661 = &fileManagerLock
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
	mov	2621,r13		! source line 2621
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
	.word	_Label_2662
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2663
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2664
	.word	12
	.word	4
	.word	_Label_2665
	.word	16
	.word	4
	.word	_Label_2666
	.word	20
	.word	4
	.word	_Label_2667
	.word	24
	.word	4
	.word	_Label_2668
	.word	-16
	.word	4
	.word	_Label_2669
	.word	-20
	.word	4
	.word	_Label_2670
	.word	-24
	.word	4
	.word	_Label_2671
	.word	-28
	.word	4
	.word	_Label_2672
	.word	-32
	.word	4
	.word	_Label_2673
	.word	-36
	.word	4
	.word	_Label_2674
	.word	-40
	.word	4
	.word	_Label_2675
	.word	-44
	.word	4
	.word	_Label_2676
	.word	-48
	.word	4
	.word	_Label_2677
	.word	-52
	.word	4
	.word	_Label_2678
	.word	-56
	.word	4
	.word	_Label_2679
	.word	-60
	.word	4
	.word	_Label_2680
	.word	-64
	.word	4
	.word	_Label_2681
	.word	-68
	.word	4
	.word	_Label_2682
	.word	-72
	.word	4
	.word	_Label_2683
	.word	-76
	.word	4
	.word	_Label_2684
	.word	-80
	.word	4
	.word	_Label_2685
	.word	-84
	.word	4
	.word	_Label_2686
	.word	-88
	.word	4
	.word	_Label_2687
	.word	-92
	.word	4
	.word	_Label_2688
	.word	-96
	.word	4
	.word	_Label_2689
	.word	-100
	.word	4
	.word	_Label_2690
	.word	-104
	.word	4
	.word	_Label_2691
	.word	-9
	.word	1
	.word	_Label_2692
	.word	-10
	.word	1
	.word	_Label_2693
	.word	-108
	.word	4
	.word	_Label_2694
	.word	-112
	.word	4
	.word	_Label_2695
	.word	-116
	.word	4
	.word	_Label_2696
	.word	-120
	.word	4
	.word	_Label_2697
	.word	-124
	.word	4
	.word	_Label_2698
	.word	-128
	.word	4
	.word	0
_Label_2662:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2663:
	.ascii	"Pself\0"
	.align
_Label_2664:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2665:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2666:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2667:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2661\0"
	.align
_Label_2669:
	.byte	'?'
	.ascii	"_temp_2660\0"
	.align
_Label_2670:
	.byte	'?'
	.ascii	"_temp_2659\0"
	.align
_Label_2671:
	.byte	'?'
	.ascii	"_temp_2658\0"
	.align
_Label_2672:
	.byte	'?'
	.ascii	"_temp_2657\0"
	.align
_Label_2673:
	.byte	'?'
	.ascii	"_temp_2656\0"
	.align
_Label_2674:
	.byte	'?'
	.ascii	"_temp_2655\0"
	.align
_Label_2675:
	.byte	'?'
	.ascii	"_temp_2654\0"
	.align
_Label_2676:
	.byte	'?'
	.ascii	"_temp_2653\0"
	.align
_Label_2677:
	.byte	'?'
	.ascii	"_temp_2652\0"
	.align
_Label_2678:
	.byte	'?'
	.ascii	"_temp_2651\0"
	.align
_Label_2679:
	.byte	'?'
	.ascii	"_temp_2650\0"
	.align
_Label_2680:
	.byte	'?'
	.ascii	"_temp_2649\0"
	.align
_Label_2681:
	.byte	'?'
	.ascii	"_temp_2648\0"
	.align
_Label_2682:
	.byte	'?'
	.ascii	"_temp_2647\0"
	.align
_Label_2683:
	.byte	'?'
	.ascii	"_temp_2641\0"
	.align
_Label_2684:
	.byte	'?'
	.ascii	"_temp_2640\0"
	.align
_Label_2685:
	.byte	'?'
	.ascii	"_temp_2639\0"
	.align
_Label_2686:
	.byte	'?'
	.ascii	"_temp_2638\0"
	.align
_Label_2687:
	.byte	'?'
	.ascii	"_temp_2637\0"
	.align
_Label_2688:
	.byte	'?'
	.ascii	"_temp_2636\0"
	.align
_Label_2689:
	.byte	'?'
	.ascii	"_temp_2633\0"
	.align
_Label_2690:
	.byte	'?'
	.ascii	"_temp_2632\0"
	.align
_Label_2691:
	.byte	'C'
	.ascii	"_temp_2631\0"
	.align
_Label_2692:
	.byte	'C'
	.ascii	"_temp_2628\0"
	.align
_Label_2693:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2694:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2695:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2696:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2697:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2698:
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
_Label_3152:
	push	r0
	sub	r1,1,r1
	bne	_Label_3152
	mov	2626,r13		! source line 2626
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2642,r13		! source line 2642
	mov	"\0\0SE",r10
!   _temp_2699 = &fileManagerLock
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
	mov	2643,r13		! source line 2643
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2705		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2705
!   _temp_2704 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2706
_Label_2705:
!   _temp_2704 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2706:
!   if _temp_2704 then goto _Label_2703 else goto _Label_2700
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2700
	jmp	_Label_2703
_Label_2703:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2709 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2708 = *_temp_2709  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2708 == 0 then goto _Label_2710		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2710
!   _temp_2707 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2711
_Label_2710:
!   _temp_2707 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2711:
!   if _temp_2707 then goto _Label_2702 else goto _Label_2700
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2700
	jmp	_Label_2702
_Label_2702:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2714 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2713 = *_temp_2714  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2713) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2715 = _temp_2713 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2712 = *_temp_2715  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2712 >= 0 then goto _Label_2701		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2701
!	jmp	_Label_2700
_Label_2700:
! THEN...
	mov	2644,r13		! source line 2644
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2716 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2716  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2644,r13		! source line 2644
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2701:
! ASSIGNMENT STATEMENT...
	mov	2646,r13		! source line 2646
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2717 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2717  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2647,r13		! source line 2647
	mov	"\0\0WH",r10
_Label_2718:
!   if numBytes <= 0 then goto _Label_2720		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2720
!	jmp	_Label_2719
_Label_2719:
	mov	2647,r13		! source line 2647
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2656,r13		! source line 2656
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
	mov	2657,r13		! source line 2657
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
	mov	2661,r13		! source line 2661
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2724 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2723 = *_temp_2724  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2723 == sector then goto _Label_2722		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2722
!	jmp	_Label_2721
_Label_2721:
! THEN...
	mov	2663,r13		! source line 2663
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2663,r13		! source line 2663
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2725) then goto _runtimeErrorNullPointer
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
_Label_2722:
! ASSIGNMENT STATEMENT...
	mov	2665,r13		! source line 2665
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2727 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2726 = *_temp_2727  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2726 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2666,r13		! source line 2666
	mov	"\0\0AS",r10
!   _temp_2728 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2728  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2666,r13		! source line 2666
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2667,r13		! source line 2667
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2732 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2731 = *_temp_2732  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2731 != sector then goto _Label_2730		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2730
!	jmp	_Label_2729
_Label_2729:
	jmp	_Label_2733
_Label_2730:
! ELSE...
	mov	2669,r13		! source line 2669
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2669,r13		! source line 2669
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2736
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2736
	jmp	_Label_2735
_Label_2736:
!   if bytesToMove != 8192 then goto _Label_2735		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2735
!	jmp	_Label_2734
_Label_2734:
	jmp	_Label_2737
_Label_2735:
! ELSE...
	mov	2673,r13		! source line 2673
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2673,r13		! source line 2673
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2740 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2739 = *_temp_2740  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2738 = sector + _temp_2739		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2742 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2741 = *_temp_2742  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2743 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2738  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2741  sizeInBytes=4
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
_Label_2737:
! END IF...
_Label_2733:
! ASSIGNMENT STATEMENT...
	mov	2677,r13		! source line 2677
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2744 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2744 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2678,r13		! source line 2678
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2745 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2745 = 1  (sizeInBytes=1)
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
	mov	2682,r13		! source line 2682
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2683,r13		! source line 2683
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2684,r13		! source line 2684
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2685,r13		! source line 2685
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2718
_Label_2720:
! SEND STATEMENT...
	mov	2692,r13		! source line 2692
	mov	"\0\0SE",r10
!   _temp_2746 = &fileManagerLock
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
	mov	2694,r13		! source line 2694
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
	.word	_Label_2747
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2748
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2749
	.word	12
	.word	4
	.word	_Label_2750
	.word	16
	.word	4
	.word	_Label_2751
	.word	20
	.word	4
	.word	_Label_2752
	.word	24
	.word	4
	.word	_Label_2753
	.word	-16
	.word	4
	.word	_Label_2754
	.word	-20
	.word	4
	.word	_Label_2755
	.word	-24
	.word	4
	.word	_Label_2756
	.word	-28
	.word	4
	.word	_Label_2757
	.word	-32
	.word	4
	.word	_Label_2758
	.word	-36
	.word	4
	.word	_Label_2759
	.word	-40
	.word	4
	.word	_Label_2760
	.word	-44
	.word	4
	.word	_Label_2761
	.word	-48
	.word	4
	.word	_Label_2762
	.word	-52
	.word	4
	.word	_Label_2763
	.word	-56
	.word	4
	.word	_Label_2764
	.word	-60
	.word	4
	.word	_Label_2765
	.word	-64
	.word	4
	.word	_Label_2766
	.word	-68
	.word	4
	.word	_Label_2767
	.word	-72
	.word	4
	.word	_Label_2768
	.word	-76
	.word	4
	.word	_Label_2769
	.word	-80
	.word	4
	.word	_Label_2770
	.word	-84
	.word	4
	.word	_Label_2771
	.word	-88
	.word	4
	.word	_Label_2772
	.word	-92
	.word	4
	.word	_Label_2773
	.word	-96
	.word	4
	.word	_Label_2774
	.word	-100
	.word	4
	.word	_Label_2775
	.word	-104
	.word	4
	.word	_Label_2776
	.word	-108
	.word	4
	.word	_Label_2777
	.word	-112
	.word	4
	.word	_Label_2778
	.word	-9
	.word	1
	.word	_Label_2779
	.word	-10
	.word	1
	.word	_Label_2780
	.word	-116
	.word	4
	.word	_Label_2781
	.word	-120
	.word	4
	.word	_Label_2782
	.word	-124
	.word	4
	.word	_Label_2783
	.word	-128
	.word	4
	.word	_Label_2784
	.word	-132
	.word	4
	.word	_Label_2785
	.word	-136
	.word	4
	.word	0
_Label_2747:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_2748:
	.ascii	"Pself\0"
	.align
_Label_2749:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2750:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_2751:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2752:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2746\0"
	.align
_Label_2754:
	.byte	'?'
	.ascii	"_temp_2745\0"
	.align
_Label_2755:
	.byte	'?'
	.ascii	"_temp_2744\0"
	.align
_Label_2756:
	.byte	'?'
	.ascii	"_temp_2743\0"
	.align
_Label_2757:
	.byte	'?'
	.ascii	"_temp_2742\0"
	.align
_Label_2758:
	.byte	'?'
	.ascii	"_temp_2741\0"
	.align
_Label_2759:
	.byte	'?'
	.ascii	"_temp_2740\0"
	.align
_Label_2760:
	.byte	'?'
	.ascii	"_temp_2739\0"
	.align
_Label_2761:
	.byte	'?'
	.ascii	"_temp_2738\0"
	.align
_Label_2762:
	.byte	'?'
	.ascii	"_temp_2732\0"
	.align
_Label_2763:
	.byte	'?'
	.ascii	"_temp_2731\0"
	.align
_Label_2764:
	.byte	'?'
	.ascii	"_temp_2728\0"
	.align
_Label_2765:
	.byte	'?'
	.ascii	"_temp_2727\0"
	.align
_Label_2766:
	.byte	'?'
	.ascii	"_temp_2726\0"
	.align
_Label_2767:
	.byte	'?'
	.ascii	"_temp_2725\0"
	.align
_Label_2768:
	.byte	'?'
	.ascii	"_temp_2724\0"
	.align
_Label_2769:
	.byte	'?'
	.ascii	"_temp_2723\0"
	.align
_Label_2770:
	.byte	'?'
	.ascii	"_temp_2717\0"
	.align
_Label_2771:
	.byte	'?'
	.ascii	"_temp_2716\0"
	.align
_Label_2772:
	.byte	'?'
	.ascii	"_temp_2715\0"
	.align
_Label_2773:
	.byte	'?'
	.ascii	"_temp_2714\0"
	.align
_Label_2774:
	.byte	'?'
	.ascii	"_temp_2713\0"
	.align
_Label_2775:
	.byte	'?'
	.ascii	"_temp_2712\0"
	.align
_Label_2776:
	.byte	'?'
	.ascii	"_temp_2709\0"
	.align
_Label_2777:
	.byte	'?'
	.ascii	"_temp_2708\0"
	.align
_Label_2778:
	.byte	'C'
	.ascii	"_temp_2707\0"
	.align
_Label_2779:
	.byte	'C'
	.ascii	"_temp_2704\0"
	.align
_Label_2780:
	.byte	'?'
	.ascii	"_temp_2699\0"
	.align
_Label_2781:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2782:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2783:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2784:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2785:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_2786
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2786:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2787
	.word	_sourceFileName
	.word	363		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2787:
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
_Label_3153:
	push	r0
	sub	r1,1,r1
	bne	_Label_3153
	mov	2730,r13		! source line 2730
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2731,r13		! source line 2731
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2732,r13		! source line 2732
	mov	"\0\0AS",r10
	mov	2732,r13		! source line 2732
	mov	"\0\0SE",r10
!   _temp_2788 = &_P_Kernel_frameManager
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
	mov	2733,r13		! source line 2733
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2734,r13		! source line 2734
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2735,r13		! source line 2735
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2735,r13		! source line 2735
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
	.word	_Label_2789
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2790
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2791
	.word	-12
	.word	4
	.word	0
_Label_2789:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2790:
	.ascii	"Pself\0"
	.align
_Label_2791:
	.byte	'?'
	.ascii	"_temp_2788\0"
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
_Label_3154:
	push	r0
	sub	r1,1,r1
	bne	_Label_3154
	mov	2740,r13		! source line 2740
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2792 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2792  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2741,r13		! source line 2741
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2742,r13		! source line 2742
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2793 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2793  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2743,r13		! source line 2743
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2744,r13		! source line 2744
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2794 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2794  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2745,r13		! source line 2745
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2746,r13		! source line 2746
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2795 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2795  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2747,r13		! source line 2747
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2748,r13		! source line 2748
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2796 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2796  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2749,r13		! source line 2749
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2750,r13		! source line 2750
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2797 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2797  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2751,r13		! source line 2751
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2752,r13		! source line 2752
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2753,r13		! source line 2753
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2753,r13		! source line 2753
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
	.word	_Label_2798
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2799
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2800
	.word	-12
	.word	4
	.word	_Label_2801
	.word	-16
	.word	4
	.word	_Label_2802
	.word	-20
	.word	4
	.word	_Label_2803
	.word	-24
	.word	4
	.word	_Label_2804
	.word	-28
	.word	4
	.word	_Label_2805
	.word	-32
	.word	4
	.word	0
_Label_2798:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2799:
	.ascii	"Pself\0"
	.align
_Label_2800:
	.byte	'?'
	.ascii	"_temp_2797\0"
	.align
_Label_2801:
	.byte	'?'
	.ascii	"_temp_2796\0"
	.align
_Label_2802:
	.byte	'?'
	.ascii	"_temp_2795\0"
	.align
_Label_2803:
	.byte	'?'
	.ascii	"_temp_2794\0"
	.align
_Label_2804:
	.byte	'?'
	.ascii	"_temp_2793\0"
	.align
_Label_2805:
	.byte	'?'
	.ascii	"_temp_2792\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_2806
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_2806:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2807
	.word	_sourceFileName
	.word	380		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2807:
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
_Label_3155:
	push	r0
	sub	r1,1,r1
	bne	_Label_3155
	mov	2764,r13		! source line 2764
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2808 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2808  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2765,r13		! source line 2765
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2766,r13		! source line 2766
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2809 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2809  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2767,r13		! source line 2767
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2768,r13		! source line 2768
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_2811		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2811
!	jmp	_Label_2810
_Label_2810:
! THEN...
	mov	2769,r13		! source line 2769
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2769,r13		! source line 2769
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
	jmp	_Label_2812
_Label_2811:
! ELSE...
	mov	2771,r13		! source line 2771
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2813 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2813  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2771,r13		! source line 2771
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2812:
! RETURN STATEMENT...
	mov	2768,r13		! source line 2768
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
	.word	_Label_2814
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2815
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2816
	.word	-12
	.word	4
	.word	_Label_2817
	.word	-16
	.word	4
	.word	_Label_2818
	.word	-20
	.word	4
	.word	0
_Label_2814:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2815:
	.ascii	"Pself\0"
	.align
_Label_2816:
	.byte	'?'
	.ascii	"_temp_2813\0"
	.align
_Label_2817:
	.byte	'?'
	.ascii	"_temp_2809\0"
	.align
_Label_2818:
	.byte	'?'
	.ascii	"_temp_2808\0"
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
_Label_3156:
	push	r0
	sub	r1,1,r1
	bne	_Label_3156
	mov	2777,r13		! source line 2777
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2787,r13		! source line 2787
	mov	"\0\0SE",r10
!   _temp_2819 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_2820 = _temp_2819 + 4
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
	mov	2788,r13		! source line 2788
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2789,r13		! source line 2789
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
	mov	2790,r13		! source line 2790
	mov	"\0\0SE",r10
!   _temp_2821 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_2822 = _temp_2821 + 4
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
	mov	2791,r13		! source line 2791
	mov	"\0\0RE",r10
	mov	2791,r13		! source line 2791
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_2825 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2824  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2823  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_2823  (sizeInBytes=1)
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
	.word	_Label_2826
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2827
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2828
	.word	12
	.word	4
	.word	_Label_2829
	.word	16
	.word	4
	.word	_Label_2830
	.word	-16
	.word	4
	.word	_Label_2831
	.word	-20
	.word	4
	.word	_Label_2832
	.word	-9
	.word	1
	.word	_Label_2833
	.word	-24
	.word	4
	.word	_Label_2834
	.word	-28
	.word	4
	.word	_Label_2835
	.word	-32
	.word	4
	.word	_Label_2836
	.word	-36
	.word	4
	.word	_Label_2837
	.word	-40
	.word	4
	.word	0
_Label_2826:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_2827:
	.ascii	"Pself\0"
	.align
_Label_2828:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2829:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2830:
	.byte	'?'
	.ascii	"_temp_2825\0"
	.align
_Label_2831:
	.byte	'?'
	.ascii	"_temp_2824\0"
	.align
_Label_2832:
	.byte	'C'
	.ascii	"_temp_2823\0"
	.align
_Label_2833:
	.byte	'?'
	.ascii	"_temp_2822\0"
	.align
_Label_2834:
	.byte	'?'
	.ascii	"_temp_2821\0"
	.align
_Label_2835:
	.byte	'?'
	.ascii	"_temp_2820\0"
	.align
_Label_2836:
	.byte	'?'
	.ascii	"_temp_2819\0"
	.align
_Label_2837:
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
_Label_3157:
	push	r0
	sub	r1,1,r1
	bne	_Label_3157
	mov	2796,r13		! source line 2796
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2801,r13		! source line 2801
	mov	"\0\0IF",r10
	mov	2801,r13		! source line 2801
	mov	"\0\0SE",r10
!   _temp_2841 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2842) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2841  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2840  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2840 then goto _Label_2839 else goto _Label_2838
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2838
	jmp	_Label_2839
_Label_2838:
! THEN...
	mov	2802,r13		! source line 2802
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2843 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2843  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2802,r13		! source line 2802
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2839:
! RETURN STATEMENT...
	mov	2804,r13		! source line 2804
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
	.word	_Label_2844
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2845
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2846
	.word	-16
	.word	4
	.word	_Label_2847
	.word	-20
	.word	4
	.word	_Label_2848
	.word	-24
	.word	4
	.word	_Label_2849
	.word	-9
	.word	1
	.word	_Label_2850
	.word	-28
	.word	4
	.word	0
_Label_2844:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_2845:
	.ascii	"Pself\0"
	.align
_Label_2846:
	.byte	'?'
	.ascii	"_temp_2843\0"
	.align
_Label_2847:
	.byte	'?'
	.ascii	"_temp_2842\0"
	.align
_Label_2848:
	.byte	'?'
	.ascii	"_temp_2841\0"
	.align
_Label_2849:
	.byte	'C'
	.ascii	"_temp_2840\0"
	.align
_Label_2850:
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
	mov	68,r1
_Label_3158:
	push	r0
	sub	r1,1,r1
	bne	_Label_3158
	mov	2809,r13		! source line 2809
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2835,r13		! source line 2835
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2854 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_2853 = *_temp_2854  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_2853) then goto _Label_2852
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_2852
!	jmp	_Label_2851
_Label_2851:
! THEN...
	mov	2836,r13		! source line 2836
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2855 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_2855  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2836,r13		! source line 2836
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2852:
! IF STATEMENT...
	mov	2840,r13		! source line 2840
	mov	"\0\0IF",r10
	mov	2840,r13		! source line 2840
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_2859) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2858  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_2858 == 1112300152 then goto _Label_2857		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_2857
!	jmp	_Label_2856
_Label_2856:
! THEN...
	mov	2841,r13		! source line 2841
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2860 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_2860  sizeInBytes=4
	load	[r14+-200],r1
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
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2857:
! ASSIGNMENT STATEMENT...
	mov	2846,r13		! source line 2846
	mov	"\0\0AS",r10
	mov	2846,r13		! source line 2846
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_2861) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=textSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2847,r13		! source line 2847
	mov	"\0\0AS",r10
	mov	2847,r13		! source line 2847
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_2862) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=dataSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2848,r13		! source line 2848
	mov	"\0\0AS",r10
	mov	2848,r13		! source line 2848
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2863) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=bssSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	2849,r13		! source line 2849
	mov	"\0\0AS",r10
	mov	2849,r13		! source line 2849
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_2864) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=textStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2850,r13		! source line 2850
	mov	"\0\0AS",r10
	mov	2850,r13		! source line 2850
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_2865) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=dataStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2851,r13		! source line 2851
	mov	"\0\0AS",r10
	mov	2851,r13		! source line 2851
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_2866) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	2854,r13		! source line 2854
	mov	"\0\0IF",r10
!   _temp_2869 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_2869) then goto _Label_2868
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_2868
!	jmp	_Label_2867
_Label_2867:
! THEN...
	mov	2855,r13		! source line 2855
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2870 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_2870  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2855,r13		! source line 2855
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2856,r13		! source line 2856
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2868:
! ASSIGNMENT STATEMENT...
	mov	2858,r13		! source line 2858
	mov	"\0\0AS",r10
!   textSizeInPages = textSize div 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	2862,r13		! source line 2862
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_2872
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_2872
!	jmp	_Label_2871
_Label_2871:
! THEN...
	mov	2863,r13		! source line 2863
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2873 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2873  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2863,r13		! source line 2863
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2864,r13		! source line 2864
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2872:
! IF STATEMENT...
	mov	2868,r13		! source line 2868
	mov	"\0\0IF",r10
!   _temp_2876 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_2876) then goto _Label_2875
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_2875
!	jmp	_Label_2874
_Label_2874:
! THEN...
	mov	2869,r13		! source line 2869
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2877 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2877  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2869,r13		! source line 2869
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2870,r13		! source line 2870
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2875:
! IF STATEMENT...
	mov	2872,r13		! source line 2872
	mov	"\0\0IF",r10
!   _temp_2880 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_2880 then goto _Label_2879		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_2879
!	jmp	_Label_2878
_Label_2878:
! THEN...
	mov	2873,r13		! source line 2873
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2881 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2881  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2873,r13		! source line 2873
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2874,r13		! source line 2874
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2879:
! ASSIGNMENT STATEMENT...
	mov	2876,r13		! source line 2876
	mov	"\0\0AS",r10
!   dataSizeInPages = dataSize div 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	2879,r13		! source line 2879
	mov	"\0\0IF",r10
!   _temp_2884 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_2884) then goto _Label_2883
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_2883
!	jmp	_Label_2882
_Label_2882:
! THEN...
	mov	2880,r13		! source line 2880
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2885 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_2885  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2880,r13		! source line 2880
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2881,r13		! source line 2881
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2883:
! IF STATEMENT...
	mov	2883,r13		! source line 2883
	mov	"\0\0IF",r10
!   _temp_2888 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_2888 then goto _Label_2887		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_2887
!	jmp	_Label_2886
_Label_2886:
! THEN...
	mov	2884,r13		! source line 2884
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2889 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2889  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2884,r13		! source line 2884
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2885,r13		! source line 2885
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2887:
! ASSIGNMENT STATEMENT...
	mov	2887,r13		! source line 2887
	mov	"\0\0AS",r10
!   bssSizeInPages = bssSize div 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2890,r13		! source line 2890
	mov	"\0\0AS",r10
!   _temp_2892 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_2891 = _temp_2892 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_2890 = _temp_2891 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_2890 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2905,r13		! source line 2905
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_2894		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2894
!	jmp	_Label_2893
_Label_2893:
! THEN...
	mov	2906,r13		! source line 2906
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2895 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2895  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2906,r13		! source line 2906
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2896 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2896  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2907,r13		! source line 2907
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2897 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2897  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2908,r13		! source line 2908
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2909,r13		! source line 2909
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2894:
! SEND STATEMENT...
	mov	2911,r13		! source line 2911
	mov	"\0\0SE",r10
!   _temp_2898 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	2917,r13		! source line 2917
	mov	"\0\0IF",r10
	mov	2917,r13		! source line 2917
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_2902) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2901  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_2901 == 707406378 then goto _Label_2900		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2900
!	jmp	_Label_2899
_Label_2899:
! THEN...
	mov	2918,r13		! source line 2918
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2903 = _StringConst_205
	set	_StringConst_205,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2903  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2918,r13		! source line 2918
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2919,r13		! source line 2919
	mov	"\0\0SE",r10
!   _temp_2904 = &_P_Kernel_frameManager
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
	mov	2920,r13		! source line 2920
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2900:
! ASSIGNMENT STATEMENT...
	mov	2924,r13		! source line 2924
	mov	"\0\0AS",r10
!   nextVirtPage = textStart div 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! FOR STATEMENT...
	mov	2925,r13		! source line 2925
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2909 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2910 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2909  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_2905:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2910 then goto _Label_2908		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2908
_Label_2906:
	mov	2925,r13		! source line 2925
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2926,r13		! source line 2926
	mov	"\0\0AS",r10
	mov	2926,r13		! source line 2926
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
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
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2929,r13		! source line 2929
	mov	"\0\0IF",r10
	mov	2929,r13		! source line 2929
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2914) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
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
!   Retrieve Result: targetName=_temp_2913  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2913 then goto _Label_2912 else goto _Label_2911
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2911
	jmp	_Label_2912
_Label_2911:
! THEN...
	mov	2930,r13		! source line 2930
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2915 = _StringConst_206
	set	_StringConst_206,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2915  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2930,r13		! source line 2930
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2931,r13		! source line 2931
	mov	"\0\0SE",r10
!   _temp_2916 = &_P_Kernel_frameManager
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
	mov	2932,r13		! source line 2932
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2912:
! SEND STATEMENT...
	mov	2934,r13		! source line 2934
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
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
	mov	2935,r13		! source line 2935
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2907:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2905
! END FOR
_Label_2908:
! IF STATEMENT...
	mov	2939,r13		! source line 2939
	mov	"\0\0IF",r10
	mov	2939,r13		! source line 2939
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_2920) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2919  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_2919 == 707406378 then goto _Label_2918		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2918
!	jmp	_Label_2917
_Label_2917:
! THEN...
	mov	2940,r13		! source line 2940
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2921 = _StringConst_207
	set	_StringConst_207,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2921  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2940,r13		! source line 2940
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2941,r13		! source line 2941
	mov	"\0\0SE",r10
!   _temp_2922 = &_P_Kernel_frameManager
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
	mov	2942,r13		! source line 2942
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2918:
! FOR STATEMENT...
	mov	2946,r13		! source line 2946
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2927 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2928 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2927  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_2923:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2928 then goto _Label_2926		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2926
_Label_2924:
	mov	2946,r13		! source line 2946
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2947,r13		! source line 2947
	mov	"\0\0AS",r10
	mov	2947,r13		! source line 2947
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
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
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2950,r13		! source line 2950
	mov	"\0\0IF",r10
	mov	2950,r13		! source line 2950
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2932) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
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
!   Retrieve Result: targetName=_temp_2931  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2931 then goto _Label_2930 else goto _Label_2929
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2929
	jmp	_Label_2930
_Label_2929:
! THEN...
	mov	2951,r13		! source line 2951
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2933 = _StringConst_208
	set	_StringConst_208,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2933  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2951,r13		! source line 2951
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2952,r13		! source line 2952
	mov	"\0\0SE",r10
!   _temp_2934 = &_P_Kernel_frameManager
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
	mov	2953,r13		! source line 2953
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2930:
! ASSIGNMENT STATEMENT...
	mov	2955,r13		! source line 2955
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2925:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2923
! END FOR
_Label_2926:
! IF STATEMENT...
	mov	2959,r13		! source line 2959
	mov	"\0\0IF",r10
	mov	2959,r13		! source line 2959
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2938) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2937  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_2937 == 707406378 then goto _Label_2936		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2936
!	jmp	_Label_2935
_Label_2935:
! THEN...
	mov	2960,r13		! source line 2960
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2939 = _StringConst_209
	set	_StringConst_209,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2939  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2960,r13		! source line 2960
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2961,r13		! source line 2961
	mov	"\0\0SE",r10
!   _temp_2940 = &_P_Kernel_frameManager
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
	mov	2962,r13		! source line 2962
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2936:
! ASSIGNMENT STATEMENT...
	mov	2966,r13		! source line 2966
	mov	"\0\0AS",r10
	mov	2966,r13		! source line 2966
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
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
	store	r1,[r14+-228]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=bssSize  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Call the function
	mov	2970,r13		! source line 2970
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2973,r13		! source line 2973
	mov	"\0\0RE",r10
!   ReturnResult: textStart  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_4:
	.word	_sourceFileName
	.word	_Label_2941
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_2942
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2943
	.word	12
	.word	4
	.word	_Label_2944
	.word	-16
	.word	4
	.word	_Label_2945
	.word	-20
	.word	4
	.word	_Label_2946
	.word	-24
	.word	4
	.word	_Label_2947
	.word	-28
	.word	4
	.word	_Label_2948
	.word	-32
	.word	4
	.word	_Label_2949
	.word	-36
	.word	4
	.word	_Label_2950
	.word	-40
	.word	4
	.word	_Label_2951
	.word	-9
	.word	1
	.word	_Label_2952
	.word	-44
	.word	4
	.word	_Label_2953
	.word	-48
	.word	4
	.word	_Label_2954
	.word	-52
	.word	4
	.word	_Label_2955
	.word	-56
	.word	4
	.word	_Label_2956
	.word	-60
	.word	4
	.word	_Label_2957
	.word	-64
	.word	4
	.word	_Label_2958
	.word	-68
	.word	4
	.word	_Label_2959
	.word	-72
	.word	4
	.word	_Label_2960
	.word	-76
	.word	4
	.word	_Label_2961
	.word	-10
	.word	1
	.word	_Label_2962
	.word	-80
	.word	4
	.word	_Label_2963
	.word	-84
	.word	4
	.word	_Label_2964
	.word	-88
	.word	4
	.word	_Label_2965
	.word	-92
	.word	4
	.word	_Label_2966
	.word	-96
	.word	4
	.word	_Label_2967
	.word	-100
	.word	4
	.word	_Label_2968
	.word	-104
	.word	4
	.word	_Label_2969
	.word	-108
	.word	4
	.word	_Label_2970
	.word	-112
	.word	4
	.word	_Label_2971
	.word	-116
	.word	4
	.word	_Label_2972
	.word	-120
	.word	4
	.word	_Label_2973
	.word	-124
	.word	4
	.word	_Label_2974
	.word	-128
	.word	4
	.word	_Label_2975
	.word	-132
	.word	4
	.word	_Label_2976
	.word	-136
	.word	4
	.word	_Label_2977
	.word	-140
	.word	4
	.word	_Label_2978
	.word	-144
	.word	4
	.word	_Label_2979
	.word	-148
	.word	4
	.word	_Label_2980
	.word	-152
	.word	4
	.word	_Label_2981
	.word	-156
	.word	4
	.word	_Label_2982
	.word	-160
	.word	4
	.word	_Label_2983
	.word	-164
	.word	4
	.word	_Label_2984
	.word	-168
	.word	4
	.word	_Label_2985
	.word	-172
	.word	4
	.word	_Label_2986
	.word	-176
	.word	4
	.word	_Label_2987
	.word	-180
	.word	4
	.word	_Label_2988
	.word	-184
	.word	4
	.word	_Label_2989
	.word	-188
	.word	4
	.word	_Label_2990
	.word	-192
	.word	4
	.word	_Label_2991
	.word	-196
	.word	4
	.word	_Label_2992
	.word	-200
	.word	4
	.word	_Label_2993
	.word	-204
	.word	4
	.word	_Label_2994
	.word	-208
	.word	4
	.word	_Label_2995
	.word	-212
	.word	4
	.word	_Label_2996
	.word	-216
	.word	4
	.word	_Label_2997
	.word	-220
	.word	4
	.word	_Label_2998
	.word	-224
	.word	4
	.word	_Label_2999
	.word	-228
	.word	4
	.word	_Label_3000
	.word	-232
	.word	4
	.word	_Label_3001
	.word	-236
	.word	4
	.word	_Label_3002
	.word	-240
	.word	4
	.word	_Label_3003
	.word	-244
	.word	4
	.word	_Label_3004
	.word	-248
	.word	4
	.word	_Label_3005
	.word	-252
	.word	4
	.word	_Label_3006
	.word	-256
	.word	4
	.word	_Label_3007
	.word	-260
	.word	4
	.word	_Label_3008
	.word	-264
	.word	4
	.word	_Label_3009
	.word	-268
	.word	4
	.word	0
_Label_2941:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_2942:
	.ascii	"Pself\0"
	.align
_Label_2943:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2940\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2939\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2938\0"
	.align
_Label_2947:
	.byte	'?'
	.ascii	"_temp_2937\0"
	.align
_Label_2948:
	.byte	'?'
	.ascii	"_temp_2934\0"
	.align
_Label_2949:
	.byte	'?'
	.ascii	"_temp_2933\0"
	.align
_Label_2950:
	.byte	'?'
	.ascii	"_temp_2932\0"
	.align
_Label_2951:
	.byte	'C'
	.ascii	"_temp_2931\0"
	.align
_Label_2952:
	.byte	'?'
	.ascii	"_temp_2928\0"
	.align
_Label_2953:
	.byte	'?'
	.ascii	"_temp_2927\0"
	.align
_Label_2954:
	.byte	'?'
	.ascii	"_temp_2922\0"
	.align
_Label_2955:
	.byte	'?'
	.ascii	"_temp_2921\0"
	.align
_Label_2956:
	.byte	'?'
	.ascii	"_temp_2920\0"
	.align
_Label_2957:
	.byte	'?'
	.ascii	"_temp_2919\0"
	.align
_Label_2958:
	.byte	'?'
	.ascii	"_temp_2916\0"
	.align
_Label_2959:
	.byte	'?'
	.ascii	"_temp_2915\0"
	.align
_Label_2960:
	.byte	'?'
	.ascii	"_temp_2914\0"
	.align
_Label_2961:
	.byte	'C'
	.ascii	"_temp_2913\0"
	.align
_Label_2962:
	.byte	'?'
	.ascii	"_temp_2910\0"
	.align
_Label_2963:
	.byte	'?'
	.ascii	"_temp_2909\0"
	.align
_Label_2964:
	.byte	'?'
	.ascii	"_temp_2904\0"
	.align
_Label_2965:
	.byte	'?'
	.ascii	"_temp_2903\0"
	.align
_Label_2966:
	.byte	'?'
	.ascii	"_temp_2902\0"
	.align
_Label_2967:
	.byte	'?'
	.ascii	"_temp_2901\0"
	.align
_Label_2968:
	.byte	'?'
	.ascii	"_temp_2898\0"
	.align
_Label_2969:
	.byte	'?'
	.ascii	"_temp_2897\0"
	.align
_Label_2970:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_2971:
	.byte	'?'
	.ascii	"_temp_2895\0"
	.align
_Label_2972:
	.byte	'?'
	.ascii	"_temp_2892\0"
	.align
_Label_2973:
	.byte	'?'
	.ascii	"_temp_2891\0"
	.align
_Label_2974:
	.byte	'?'
	.ascii	"_temp_2890\0"
	.align
_Label_2975:
	.byte	'?'
	.ascii	"_temp_2889\0"
	.align
_Label_2976:
	.byte	'?'
	.ascii	"_temp_2888\0"
	.align
_Label_2977:
	.byte	'?'
	.ascii	"_temp_2885\0"
	.align
_Label_2978:
	.byte	'?'
	.ascii	"_temp_2884\0"
	.align
_Label_2979:
	.byte	'?'
	.ascii	"_temp_2881\0"
	.align
_Label_2980:
	.byte	'?'
	.ascii	"_temp_2880\0"
	.align
_Label_2981:
	.byte	'?'
	.ascii	"_temp_2877\0"
	.align
_Label_2982:
	.byte	'?'
	.ascii	"_temp_2876\0"
	.align
_Label_2983:
	.byte	'?'
	.ascii	"_temp_2873\0"
	.align
_Label_2984:
	.byte	'?'
	.ascii	"_temp_2870\0"
	.align
_Label_2985:
	.byte	'?'
	.ascii	"_temp_2869\0"
	.align
_Label_2986:
	.byte	'?'
	.ascii	"_temp_2866\0"
	.align
_Label_2987:
	.byte	'?'
	.ascii	"_temp_2865\0"
	.align
_Label_2988:
	.byte	'?'
	.ascii	"_temp_2864\0"
	.align
_Label_2989:
	.byte	'?'
	.ascii	"_temp_2863\0"
	.align
_Label_2990:
	.byte	'?'
	.ascii	"_temp_2862\0"
	.align
_Label_2991:
	.byte	'?'
	.ascii	"_temp_2861\0"
	.align
_Label_2992:
	.byte	'?'
	.ascii	"_temp_2860\0"
	.align
_Label_2993:
	.byte	'?'
	.ascii	"_temp_2859\0"
	.align
_Label_2994:
	.byte	'?'
	.ascii	"_temp_2858\0"
	.align
_Label_2995:
	.byte	'?'
	.ascii	"_temp_2855\0"
	.align
_Label_2996:
	.byte	'?'
	.ascii	"_temp_2854\0"
	.align
_Label_2997:
	.byte	'?'
	.ascii	"_temp_2853\0"
	.align
_Label_2998:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_2999:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3000:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3001:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3002:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3003:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3004:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3005:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3006:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3007:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3008:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3009:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
