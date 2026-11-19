
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	2a813103          	ld	sp,680(sp) # 8000a2a8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	3b1050ef          	jal	ra,80005bcc <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    add sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04a13823          	sd	a0,80(sp)
    80001024:	04b13c23          	sd	a1,88(sp)
    80001028:	06c13023          	sd	a2,96(sp)
    8000102c:	06d13423          	sd	a3,104(sp)
    80001030:	06e13823          	sd	a4,112(sp)
    80001034:	06f13c23          	sd	a5,120(sp)
    80001038:	09013023          	sd	a6,128(sp)
    8000103c:	09113423          	sd	a7,136(sp)
    80001040:	09213823          	sd	s2,144(sp)
    80001044:	09313c23          	sd	s3,152(sp)
    80001048:	0b413023          	sd	s4,160(sp)
    8000104c:	0b513423          	sd	s5,168(sp)
    80001050:	0b613823          	sd	s6,176(sp)
    80001054:	0b713c23          	sd	s7,184(sp)
    80001058:	0d813023          	sd	s8,192(sp)
    8000105c:	0d913423          	sd	s9,200(sp)
    80001060:	0da13823          	sd	s10,208(sp)
    80001064:	0db13c23          	sd	s11,216(sp)
    80001068:	0fc13023          	sd	t3,224(sp)
    8000106c:	0fd13423          	sd	t4,232(sp)
    80001070:	0fe13823          	sd	t5,240(sp)
    80001074:	0ff13c23          	sd	t6,248(sp)
    ret
    80001078:	00008067          	ret

000000008000107c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000107c:	01813183          	ld	gp,24(sp)
    80001080:	02013203          	ld	tp,32(sp)
    80001084:	02813283          	ld	t0,40(sp)
    80001088:	03013303          	ld	t1,48(sp)
    8000108c:	03813383          	ld	t2,56(sp)
    80001090:	04013403          	ld	s0,64(sp)
    80001094:	04813483          	ld	s1,72(sp)
    80001098:	05013503          	ld	a0,80(sp)
    8000109c:	05813583          	ld	a1,88(sp)
    800010a0:	06013603          	ld	a2,96(sp)
    800010a4:	06813683          	ld	a3,104(sp)
    800010a8:	07013703          	ld	a4,112(sp)
    800010ac:	07813783          	ld	a5,120(sp)
    800010b0:	08013803          	ld	a6,128(sp)
    800010b4:	08813883          	ld	a7,136(sp)
    800010b8:	09013903          	ld	s2,144(sp)
    800010bc:	09813983          	ld	s3,152(sp)
    800010c0:	0a013a03          	ld	s4,160(sp)
    800010c4:	0a813a83          	ld	s5,168(sp)
    800010c8:	0b013b03          	ld	s6,176(sp)
    800010cc:	0b813b83          	ld	s7,184(sp)
    800010d0:	0c013c03          	ld	s8,192(sp)
    800010d4:	0c813c83          	ld	s9,200(sp)
    800010d8:	0d013d03          	ld	s10,208(sp)
    800010dc:	0d813d83          	ld	s11,216(sp)
    800010e0:	0e013e03          	ld	t3,224(sp)
    800010e4:	0e813e83          	ld	t4,232(sp)
    800010e8:	0f013f03          	ld	t5,240(sp)
    800010ec:	0f813f83          	ld	t6,248(sp)
    add sp, sp, 256
    800010f0:	10010113          	addi	sp,sp,256
    ret
    800010f4:	00008067          	ret
	...

0000000080001100 <_ZN5Riscv14SupervisorTrapEv>:

.align 4
.global _ZN5Riscv14SupervisorTrapEv
.type _ZN5Riscv14SupervisorTrapEv, @function
_ZN5Riscv14SupervisorTrapEv:
    addi sp, sp, -8*32
    80001100:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index*8(sp)
    .endr
    80001104:	00013023          	sd	zero,0(sp)
    80001108:	00113423          	sd	ra,8(sp)
    8000110c:	00213823          	sd	sp,16(sp)
    80001110:	00313c23          	sd	gp,24(sp)
    80001114:	02413023          	sd	tp,32(sp)
    80001118:	02513423          	sd	t0,40(sp)
    8000111c:	02613823          	sd	t1,48(sp)
    80001120:	02713c23          	sd	t2,56(sp)
    80001124:	04813023          	sd	s0,64(sp)
    80001128:	04913423          	sd	s1,72(sp)
    8000112c:	04a13823          	sd	a0,80(sp)
    80001130:	04b13c23          	sd	a1,88(sp)
    80001134:	06c13023          	sd	a2,96(sp)
    80001138:	06d13423          	sd	a3,104(sp)
    8000113c:	06e13823          	sd	a4,112(sp)
    80001140:	06f13c23          	sd	a5,120(sp)
    80001144:	09013023          	sd	a6,128(sp)
    80001148:	09113423          	sd	a7,136(sp)
    8000114c:	09213823          	sd	s2,144(sp)
    80001150:	09313c23          	sd	s3,152(sp)
    80001154:	0b413023          	sd	s4,160(sp)
    80001158:	0b513423          	sd	s5,168(sp)
    8000115c:	0b613823          	sd	s6,176(sp)
    80001160:	0b713c23          	sd	s7,184(sp)
    80001164:	0d813023          	sd	s8,192(sp)
    80001168:	0d913423          	sd	s9,200(sp)
    8000116c:	0da13823          	sd	s10,208(sp)
    80001170:	0db13c23          	sd	s11,216(sp)
    80001174:	0fc13023          	sd	t3,224(sp)
    80001178:	0fd13423          	sd	t4,232(sp)
    8000117c:	0fe13823          	sd	t5,240(sp)
    80001180:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001184:	631000ef          	jal	ra,80001fb4 <_ZN5Riscv20handleSupervisorTrapEv>

    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index*8(sp)
    .endr
    80001188:	00013003          	ld	zero,0(sp)
    8000118c:	00813083          	ld	ra,8(sp)
    80001190:	01013103          	ld	sp,16(sp)
    80001194:	01813183          	ld	gp,24(sp)
    80001198:	02013203          	ld	tp,32(sp)
    8000119c:	02813283          	ld	t0,40(sp)
    800011a0:	03013303          	ld	t1,48(sp)
    800011a4:	03813383          	ld	t2,56(sp)
    800011a8:	04013403          	ld	s0,64(sp)
    800011ac:	04813483          	ld	s1,72(sp)
    800011b0:	05013503          	ld	a0,80(sp)
    800011b4:	05813583          	ld	a1,88(sp)
    800011b8:	06013603          	ld	a2,96(sp)
    800011bc:	06813683          	ld	a3,104(sp)
    800011c0:	07013703          	ld	a4,112(sp)
    800011c4:	07813783          	ld	a5,120(sp)
    800011c8:	08013803          	ld	a6,128(sp)
    800011cc:	08813883          	ld	a7,136(sp)
    800011d0:	09013903          	ld	s2,144(sp)
    800011d4:	09813983          	ld	s3,152(sp)
    800011d8:	0a013a03          	ld	s4,160(sp)
    800011dc:	0a813a83          	ld	s5,168(sp)
    800011e0:	0b013b03          	ld	s6,176(sp)
    800011e4:	0b813b83          	ld	s7,184(sp)
    800011e8:	0c013c03          	ld	s8,192(sp)
    800011ec:	0c813c83          	ld	s9,200(sp)
    800011f0:	0d013d03          	ld	s10,208(sp)
    800011f4:	0d813d83          	ld	s11,216(sp)
    800011f8:	0e013e03          	ld	t3,224(sp)
    800011fc:	0e813e83          	ld	t4,232(sp)
    80001200:	0f013f03          	ld	t5,240(sp)
    80001204:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 8*32
    80001208:	10010113          	addi	sp,sp,256

    8000120c:	10200073          	sret

0000000080001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    # a0 - &old->context
    # a1 - &running->context
    sd ra, 0 * 8 (a0)
    80001210:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8 (a0)
    80001214:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8 (a1)
    80001218:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8 (a1)
    8000121c:	0085b103          	ld	sp,8(a1)

    80001220:	00008067          	ret

0000000080001224 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001224:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001228:	00b29a63          	bne	t0,a1,8000123c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000122c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001230:	fe029ae3          	bnez	t0,80001224 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001234:	00000513          	li	a0,0
    jr ra                  # Return.
    80001238:	00008067          	ret

000000008000123c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000123c:	00100513          	li	a0,1
    80001240:	00008067          	ret

0000000080001244 <_Z9mem_allocm>:
#include "../h/syscall_c.h"

#include "../h/print.hpp"
#include "../h/riscv.hpp"

void* mem_alloc (size_t size) {
    80001244:	ff010113          	addi	sp,sp,-16
    80001248:	00813423          	sd	s0,8(sp)
    8000124c:	01010413          	addi	s0,sp,16
    uint64 sizeInBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001250:	03f50593          	addi	a1,a0,63

    register uint64 x0 asm("a0") = 0x01;
    80001254:	00100513          	li	a0,1
    register uint64 x1 asm("a1") = sizeInBlocks;
    80001258:	0065d593          	srli	a1,a1,0x6

    __asm__ volatile ("ecall"
        : "+r"(x0)
        : "r"(x1)
        : "memory");
    8000125c:	00000073          	ecall

    return (void*)x0;
}
    80001260:	00813403          	ld	s0,8(sp)
    80001264:	01010113          	addi	sp,sp,16
    80001268:	00008067          	ret

000000008000126c <_Z8mem_freePv>:

int mem_free (void* address) {
    8000126c:	ff010113          	addi	sp,sp,-16
    80001270:	00813423          	sd	s0,8(sp)
    80001274:	01010413          	addi	s0,sp,16
    80001278:	00050593          	mv	a1,a0
    register uint64 x0 asm("a0") = 0x02;
    8000127c:	00200513          	li	a0,2
    register uint64 x1 asm("a1") = (uint64)address;

    __asm__ volatile ("ecall"
        : "+r"(x0)
        : "r"(x1)
        : "memory");
    80001280:	00000073          	ecall

    return (int)x0;
}
    80001284:	0005051b          	sext.w	a0,a0
    80001288:	00813403          	ld	s0,8(sp)
    8000128c:	01010113          	addi	sp,sp,16
    80001290:	00008067          	ret

0000000080001294 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create(
    thread_t* handle,
    void(*start_routine)(void*),
    void* arg
) {
    80001294:	ff010113          	addi	sp,sp,-16
    80001298:	00813423          	sd	s0,8(sp)
    8000129c:	01010413          	addi	s0,sp,16
    800012a0:	00050713          	mv	a4,a0
    800012a4:	00058793          	mv	a5,a1
    800012a8:	00060693          	mv	a3,a2
    register uint64 x0 asm("a0") = 0x11;
    800012ac:	01100513          	li	a0,17
    register uint64 x1 asm("a1") = (uint64)handle;
    800012b0:	00070593          	mv	a1,a4
    register uint64 x2 asm("a2") = (uint64)start_routine;
    800012b4:	00078613          	mv	a2,a5
    register uint64 x3 asm("a3") = (uint64)arg;

    __asm__ volatile ("ecall"
        : "+r"(x0)
        : "r"(x1), "r"(x2), "r"(x3)
        : "memory");
    800012b8:	00000073          	ecall

    return (int)x0;
}
    800012bc:	0005051b          	sext.w	a0,a0
    800012c0:	00813403          	ld	s0,8(sp)
    800012c4:	01010113          	addi	sp,sp,16
    800012c8:	00008067          	ret

00000000800012cc <_Z11thread_exitv>:

int thread_exit () {
    800012cc:	ff010113          	addi	sp,sp,-16
    800012d0:	00813423          	sd	s0,8(sp)
    800012d4:	01010413          	addi	s0,sp,16
    register uint64 x0 asm("a0") = 0x12;
    800012d8:	01200513          	li	a0,18

    __asm__ volatile ("ecall"
        : "+r"(x0)
        :
        : "memory");
    800012dc:	00000073          	ecall

    return (int)x0;
}
    800012e0:	0005051b          	sext.w	a0,a0
    800012e4:	00813403          	ld	s0,8(sp)
    800012e8:	01010113          	addi	sp,sp,16
    800012ec:	00008067          	ret

00000000800012f0 <_Z15thread_dispatchv>:

void thread_dispatch () {
    800012f0:	ff010113          	addi	sp,sp,-16
    800012f4:	00813423          	sd	s0,8(sp)
    800012f8:	01010413          	addi	s0,sp,16
    register uint64 x0 asm("a0") = 0x13;
    800012fc:	01300513          	li	a0,19

    __asm__ volatile ("ecall"
        : "+r"(x0)
        :
        : "memory");
    80001300:	00000073          	ecall
}
    80001304:	00813403          	ld	s0,8(sp)
    80001308:	01010113          	addi	sp,sp,16
    8000130c:	00008067          	ret

0000000080001310 <_Z8sem_openPP9KernelSemm>:

int sem_open (
    sem_t* handle,
    uint64 init
) {
    80001310:	ff010113          	addi	sp,sp,-16
    80001314:	00813423          	sd	s0,8(sp)
    80001318:	01010413          	addi	s0,sp,16
    8000131c:	00050793          	mv	a5,a0
    80001320:	00058613          	mv	a2,a1
    register uint64 x0 asm("a0") = 0x21;
    80001324:	02100513          	li	a0,33
    register uint64 x1 asm("a1") = (uint64)handle;
    80001328:	00078593          	mv	a1,a5
    register uint64 x2 asm("a2") = init;

    __asm__ volatile ("ecall"
        : "+r"(x0)
        : "r"(x1), "r"(x2)
        : "memory");
    8000132c:	00000073          	ecall

    return (int)x0;
}
    80001330:	0005051b          	sext.w	a0,a0
    80001334:	00813403          	ld	s0,8(sp)
    80001338:	01010113          	addi	sp,sp,16
    8000133c:	00008067          	ret

0000000080001340 <_Z9sem_closeP9KernelSem>:

int sem_close (sem_t handle) {
    80001340:	ff010113          	addi	sp,sp,-16
    80001344:	00813423          	sd	s0,8(sp)
    80001348:	01010413          	addi	s0,sp,16
    8000134c:	00050593          	mv	a1,a0
    register uint64 x0 asm("a0") = 0x22;
    80001350:	02200513          	li	a0,34
    register uint64 x1 asm("a1") = (uint64)handle;

    __asm__ volatile ("ecall"
        : "+r"(x0)
        : "r"(x1)
        : "memory");
    80001354:	00000073          	ecall

    return (int)x0;
}
    80001358:	0005051b          	sext.w	a0,a0
    8000135c:	00813403          	ld	s0,8(sp)
    80001360:	01010113          	addi	sp,sp,16
    80001364:	00008067          	ret

0000000080001368 <_Z8sem_waitP9KernelSem>:

int sem_wait (sem_t id) {
    80001368:	ff010113          	addi	sp,sp,-16
    8000136c:	00813423          	sd	s0,8(sp)
    80001370:	01010413          	addi	s0,sp,16
    80001374:	00050593          	mv	a1,a0
    register uint64 x0 asm("a0") = 0x23;
    80001378:	02300513          	li	a0,35
    register uint64 x1 asm("a1") = (uint64)id;

    __asm__ volatile ("ecall"
        : "+r"(x0)
        : "r"(x1)
        : "memory");
    8000137c:	00000073          	ecall

    return (int)x0;
}
    80001380:	0005051b          	sext.w	a0,a0
    80001384:	00813403          	ld	s0,8(sp)
    80001388:	01010113          	addi	sp,sp,16
    8000138c:	00008067          	ret

0000000080001390 <_Z10sem_signalP9KernelSem>:

int sem_signal (sem_t id) {
    80001390:	ff010113          	addi	sp,sp,-16
    80001394:	00813423          	sd	s0,8(sp)
    80001398:	01010413          	addi	s0,sp,16
    8000139c:	00050593          	mv	a1,a0
    register uint64 x0 asm("a0") = 0x24;
    800013a0:	02400513          	li	a0,36
    register uint64 x1 asm("a1") = (uint64)id;

    __asm__ volatile ("ecall"
        : "+r"(x0)
        : "r"(x1)
        : "memory");
    800013a4:	00000073          	ecall

    return (int)x0;
}
    800013a8:	0005051b          	sext.w	a0,a0
    800013ac:	00813403          	ld	s0,8(sp)
    800013b0:	01010113          	addi	sp,sp,16
    800013b4:	00008067          	ret

00000000800013b8 <_Z10sem_wait_nP9KernelSemj>:

int sem_wait_n(sem_t id, unsigned n) {
    800013b8:	ff010113          	addi	sp,sp,-16
    800013bc:	00813423          	sd	s0,8(sp)
    800013c0:	01010413          	addi	s0,sp,16
    800013c4:	00050793          	mv	a5,a0
    800013c8:	00058613          	mv	a2,a1
    register uint64 x0 asm("a0") = 0x25;
    800013cc:	02500513          	li	a0,37
    register uint64 x1 asm("a1") = (uint64)id;
    800013d0:	00078593          	mv	a1,a5
    register uint64 x2 asm("a2") = n;
    800013d4:	02061613          	slli	a2,a2,0x20
    800013d8:	02065613          	srli	a2,a2,0x20

    __asm__ volatile ("ecall"
        : "+r"(x0)
        : "r"(x1), "r"(x2)
        : "memory");
    800013dc:	00000073          	ecall

    return (int)x0;
}
    800013e0:	0005051b          	sext.w	a0,a0
    800013e4:	00813403          	ld	s0,8(sp)
    800013e8:	01010113          	addi	sp,sp,16
    800013ec:	00008067          	ret

00000000800013f0 <_Z12sem_signal_nP9KernelSemj>:

int sem_signal_n(sem_t id, unsigned n) {
    800013f0:	ff010113          	addi	sp,sp,-16
    800013f4:	00813423          	sd	s0,8(sp)
    800013f8:	01010413          	addi	s0,sp,16
    800013fc:	00050793          	mv	a5,a0
    80001400:	00058613          	mv	a2,a1
    register uint64 x0 asm("a0") = 0x26;
    80001404:	02600513          	li	a0,38
    register uint64 x1 asm("a1") = (uint64)id;
    80001408:	00078593          	mv	a1,a5
    register uint64 x2 asm("a2") = n;
    8000140c:	02061613          	slli	a2,a2,0x20
    80001410:	02065613          	srli	a2,a2,0x20

    __asm__ volatile ("ecall"
        : "+r"(x0)
        : "r"(x1), "r"(x2)
        : "memory");
    80001414:	00000073          	ecall

    return (int)x0;
}
    80001418:	0005051b          	sext.w	a0,a0
    8000141c:	00813403          	ld	s0,8(sp)
    80001420:	01010113          	addi	sp,sp,16
    80001424:	00008067          	ret

0000000080001428 <_Z10time_sleepm>:

int time_sleep (time_t time) {
    80001428:	ff010113          	addi	sp,sp,-16
    8000142c:	00813423          	sd	s0,8(sp)
    80001430:	01010413          	addi	s0,sp,16
    return 0;
}
    80001434:	00000513          	li	a0,0
    80001438:	00813403          	ld	s0,8(sp)
    8000143c:	01010113          	addi	sp,sp,16
    80001440:	00008067          	ret

0000000080001444 <_Z4getcv>:

char getc () {
    80001444:	ff010113          	addi	sp,sp,-16
    80001448:	00813423          	sd	s0,8(sp)
    8000144c:	01010413          	addi	s0,sp,16
    register uint64 x0 asm("a0") = 0x41;
    80001450:	04100513          	li	a0,65

    __asm__ volatile ("ecall"
        : "+r"(x0)
        :
        : "memory");
    80001454:	00000073          	ecall

    return (char)x0;
}
    80001458:	0ff57513          	andi	a0,a0,255
    8000145c:	00813403          	ld	s0,8(sp)
    80001460:	01010113          	addi	sp,sp,16
    80001464:	00008067          	ret

0000000080001468 <_Z4putcc>:

void putc (char c) {
    80001468:	ff010113          	addi	sp,sp,-16
    8000146c:	00813423          	sd	s0,8(sp)
    80001470:	01010413          	addi	s0,sp,16
    80001474:	00050593          	mv	a1,a0
    register uint64 x0 asm("a0") = 0x42;
    80001478:	04200513          	li	a0,66
    register uint64 x1 asm("a1") = (uint64)c;

    __asm__ volatile ("ecall"
        : "+r"(x0)
        : "r"(x1)
        : "memory");
    8000147c:	00000073          	ecall
    80001480:	00813403          	ld	s0,8(sp)
    80001484:	01010113          	addi	sp,sp,16
    80001488:	00008067          	ret

000000008000148c <_ZN9KernelSem8sem_openEi>:

#include "../h/print.hpp"
#include "../test/printing.hpp"


KernelSem *KernelSem::sem_open(int value) {
    8000148c:	fe010113          	addi	sp,sp,-32
    80001490:	00113c23          	sd	ra,24(sp)
    80001494:	00813823          	sd	s0,16(sp)
    80001498:	00913423          	sd	s1,8(sp)
    8000149c:	02010413          	addi	s0,sp,32
    800014a0:	00050493          	mv	s1,a0
    return new KernelSem(value);
    800014a4:	01800513          	li	a0,24
    800014a8:	00000097          	auipc	ra,0x0
    800014ac:	788080e7          	jalr	1928(ra) # 80001c30 <_Znwm>

    void signal(uint64 val);

private:

    KernelSem(int value) : value(value) {}
    800014b0:	00952023          	sw	s1,0(a0)
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    800014b4:	00053423          	sd	zero,8(a0)
    800014b8:	00053823          	sd	zero,16(a0)
}
    800014bc:	01813083          	ld	ra,24(sp)
    800014c0:	01013403          	ld	s0,16(sp)
    800014c4:	00813483          	ld	s1,8(sp)
    800014c8:	02010113          	addi	sp,sp,32
    800014cc:	00008067          	ret

00000000800014d0 <_ZN9KernelSem9sem_closeEv>:


void KernelSem::sem_close() {
    800014d0:	fe010113          	addi	sp,sp,-32
    800014d4:	00113c23          	sd	ra,24(sp)
    800014d8:	00813823          	sd	s0,16(sp)
    800014dc:	00913423          	sd	s1,8(sp)
    800014e0:	01213023          	sd	s2,0(sp)
    800014e4:	02010413          	addi	s0,sp,32
    800014e8:	00050493          	mv	s1,a0
    TCB* curr = nullptr;
    800014ec:	0200006f          	j	8000150c <_ZN9KernelSem9sem_closeEv+0x3c>
    }
    T *removeFirst() {
        if (!head) return nullptr;
        Elem *elem = head;
        head = head->next;
        if (!head) tail = nullptr;
    800014f0:	0004b823          	sd	zero,16(s1)
        T * value = elem->data;
    800014f4:	00053903          	ld	s2,0(a0)
        delete elem;
    800014f8:	00000097          	auipc	ra,0x0
    800014fc:	788080e7          	jalr	1928(ra) # 80001c80 <_ZdlPv>
    while (blocked.peekFirst()) {
        curr = blocked.removeFirst();
        Scheduler::put(curr);
    80001500:	00090513          	mv	a0,s2
    80001504:	00001097          	auipc	ra,0x1
    80001508:	e7c080e7          	jalr	-388(ra) # 80002380 <_ZN9Scheduler3putEP3TCB>
        return value;

    }

    T *peekFirst() {
        if (!head) return nullptr;
    8000150c:	0084b503          	ld	a0,8(s1)
    80001510:	00050e63          	beqz	a0,8000152c <_ZN9KernelSem9sem_closeEv+0x5c>
        return head->data;
    80001514:	00053783          	ld	a5,0(a0)
    while (blocked.peekFirst()) {
    80001518:	00078a63          	beqz	a5,8000152c <_ZN9KernelSem9sem_closeEv+0x5c>
        head = head->next;
    8000151c:	00853783          	ld	a5,8(a0)
    80001520:	00f4b423          	sd	a5,8(s1)
        if (!head) tail = nullptr;
    80001524:	fc0798e3          	bnez	a5,800014f4 <_ZN9KernelSem9sem_closeEv+0x24>
    80001528:	fc9ff06f          	j	800014f0 <_ZN9KernelSem9sem_closeEv+0x20>
    }
}
    8000152c:	01813083          	ld	ra,24(sp)
    80001530:	01013403          	ld	s0,16(sp)
    80001534:	00813483          	ld	s1,8(sp)
    80001538:	00013903          	ld	s2,0(sp)
    8000153c:	02010113          	addi	sp,sp,32
    80001540:	00008067          	ret

0000000080001544 <_ZN9KernelSem4waitEm>:


void KernelSem::wait(uint64 val) {
    80001544:	fd010113          	addi	sp,sp,-48
    80001548:	02113423          	sd	ra,40(sp)
    8000154c:	02813023          	sd	s0,32(sp)
    80001550:	00913c23          	sd	s1,24(sp)
    80001554:	01213823          	sd	s2,16(sp)
    80001558:	01313423          	sd	s3,8(sp)
    8000155c:	03010413          	addi	s0,sp,48
    80001560:	00050493          	mv	s1,a0
    80001564:	00058913          	mv	s2,a1
        return head == nullptr;
    80001568:	00853783          	ld	a5,8(a0)
    if (blocked.isEmpty() && value >= (long)val) {
    8000156c:	06078863          	beqz	a5,800015dc <_ZN9KernelSem4waitEm+0x98>
        value -= val;
    } else {
        blocked.addLast(TCB::running);
    80001570:	00009797          	auipc	a5,0x9
    80001574:	d407b783          	ld	a5,-704(a5) # 8000a2b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001578:	0007b983          	ld	s3,0(a5)
        Elem *elem = new Elem(data, nullptr);
    8000157c:	01000513          	li	a0,16
    80001580:	00000097          	auipc	ra,0x0
    80001584:	6b0080e7          	jalr	1712(ra) # 80001c30 <_Znwm>
        Elem(T *data, Elem* next) : data(data), next(next) {}
    80001588:	01353023          	sd	s3,0(a0)
    8000158c:	00053423          	sd	zero,8(a0)
        if (tail) {
    80001590:	0104b783          	ld	a5,16(s1)
    80001594:	04078e63          	beqz	a5,800015f0 <_ZN9KernelSem4waitEm+0xac>
            tail->next = elem;
    80001598:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    8000159c:	00a4b823          	sd	a0,16(s1)
        TCB::running->setBlockedVal(val);
    800015a0:	00009797          	auipc	a5,0x9
    800015a4:	d107b783          	ld	a5,-752(a5) # 8000a2b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800015a8:	0007b783          	ld	a5,0(a5)

    void setBlocked(bool val) { blocked = val; }

    int getBlockedVal() { return blockedVal; }

    void setBlockedVal(uint64 val) { blockedVal = val; }
    800015ac:	0327b823          	sd	s2,48(a5)
    void setBlocked(bool val) { blocked = val; }
    800015b0:	00100713          	li	a4,1
    800015b4:	02e784a3          	sb	a4,41(a5)
        TCB::running->setBlocked(true);
        TCB::dispatch();
    800015b8:	00000097          	auipc	ra,0x0
    800015bc:	188080e7          	jalr	392(ra) # 80001740 <_ZN3TCB8dispatchEv>
    }
}
    800015c0:	02813083          	ld	ra,40(sp)
    800015c4:	02013403          	ld	s0,32(sp)
    800015c8:	01813483          	ld	s1,24(sp)
    800015cc:	01013903          	ld	s2,16(sp)
    800015d0:	00813983          	ld	s3,8(sp)
    800015d4:	03010113          	addi	sp,sp,48
    800015d8:	00008067          	ret
    if (blocked.isEmpty() && value >= (long)val) {
    800015dc:	00052583          	lw	a1,0(a0)
    800015e0:	f925c8e3          	blt	a1,s2,80001570 <_ZN9KernelSem4waitEm+0x2c>
        value -= val;
    800015e4:	412585bb          	subw	a1,a1,s2
    800015e8:	00b52023          	sw	a1,0(a0)
    800015ec:	fd5ff06f          	j	800015c0 <_ZN9KernelSem4waitEm+0x7c>
            head = tail = elem;
    800015f0:	00a4b823          	sd	a0,16(s1)
    800015f4:	00a4b423          	sd	a0,8(s1)
    800015f8:	fa9ff06f          	j	800015a0 <_ZN9KernelSem4waitEm+0x5c>

00000000800015fc <_ZN9KernelSem6signalEm>:


void KernelSem::signal(uint64 val) {
    800015fc:	fe010113          	addi	sp,sp,-32
    80001600:	00113c23          	sd	ra,24(sp)
    80001604:	00813823          	sd	s0,16(sp)
    80001608:	00913423          	sd	s1,8(sp)
    8000160c:	01213023          	sd	s2,0(sp)
    80001610:	02010413          	addi	s0,sp,32
    80001614:	00050493          	mv	s1,a0
    value += val;
    80001618:	00052783          	lw	a5,0(a0)
    8000161c:	00b787bb          	addw	a5,a5,a1
    80001620:	00f52023          	sw	a5,0(a0)
    80001624:	0400006f          	j	80001664 <_ZN9KernelSem6signalEm+0x68>
        if (!head) return nullptr;
    80001628:	00050793          	mv	a5,a0
    8000162c:	0480006f          	j	80001674 <_ZN9KernelSem6signalEm+0x78>
        if (!head) tail = nullptr;
    80001630:	0004b823          	sd	zero,16(s1)
        T * value = elem->data;
    80001634:	00053903          	ld	s2,0(a0)
        delete elem;
    80001638:	00000097          	auipc	ra,0x0
    8000163c:	648080e7          	jalr	1608(ra) # 80001c80 <_ZdlPv>
    int getBlockedVal() { return blockedVal; }
    80001640:	03092703          	lw	a4,48(s2)
    while (!blocked.isEmpty() && blocked.peekFirst()->getBlockedVal() <= value) {
        TCB* curr = blocked.removeFirst();
        value -= curr->getBlockedVal();
    80001644:	0004a783          	lw	a5,0(s1)
    80001648:	40e787bb          	subw	a5,a5,a4
    8000164c:	00f4a023          	sw	a5,0(s1)
    void setBlocked(bool val) { blocked = val; }
    80001650:	020904a3          	sb	zero,41(s2)
    void setBlockedVal(uint64 val) { blockedVal = val; }
    80001654:	02093823          	sd	zero,48(s2)
        curr->setBlocked(false);
        curr->setBlockedVal(0);
        Scheduler::put(curr);
    80001658:	00090513          	mv	a0,s2
    8000165c:	00001097          	auipc	ra,0x1
    80001660:	d24080e7          	jalr	-732(ra) # 80002380 <_ZN9Scheduler3putEP3TCB>
        return head == nullptr;
    80001664:	0084b503          	ld	a0,8(s1)
    while (!blocked.isEmpty() && blocked.peekFirst()->getBlockedVal() <= value) {
    80001668:	02050a63          	beqz	a0,8000169c <_ZN9KernelSem6signalEm+0xa0>
        if (!head) return nullptr;
    8000166c:	fa050ee3          	beqz	a0,80001628 <_ZN9KernelSem6signalEm+0x2c>
        return head->data;
    80001670:	00053783          	ld	a5,0(a0)
    int getBlockedVal() { return blockedVal; }
    80001674:	0307a783          	lw	a5,48(a5)
    80001678:	0004a703          	lw	a4,0(s1)
    8000167c:	02f74063          	blt	a4,a5,8000169c <_ZN9KernelSem6signalEm+0xa0>
        if (!head) return nullptr;
    80001680:	00050a63          	beqz	a0,80001694 <_ZN9KernelSem6signalEm+0x98>
        head = head->next;
    80001684:	00853783          	ld	a5,8(a0)
    80001688:	00f4b423          	sd	a5,8(s1)
        if (!head) tail = nullptr;
    8000168c:	fa0794e3          	bnez	a5,80001634 <_ZN9KernelSem6signalEm+0x38>
    80001690:	fa1ff06f          	j	80001630 <_ZN9KernelSem6signalEm+0x34>
        if (!head) return nullptr;
    80001694:	00050913          	mv	s2,a0
    80001698:	fa9ff06f          	j	80001640 <_ZN9KernelSem6signalEm+0x44>
    }
}
    8000169c:	01813083          	ld	ra,24(sp)
    800016a0:	01013403          	ld	s0,16(sp)
    800016a4:	00813483          	ld	s1,8(sp)
    800016a8:	00013903          	ld	s2,0(sp)
    800016ac:	02010113          	addi	sp,sp,32
    800016b0:	00008067          	ret

00000000800016b4 <main>:
#include "../h/scheduler.hpp"
#include "../h/syscall_cpp.hpp"

extern void userMain();

int main() {
    800016b4:	ff010113          	addi	sp,sp,-16
    800016b8:	00113423          	sd	ra,8(sp)
    800016bc:	00813023          	sd	s0,0(sp)
    800016c0:	01010413          	addi	s0,sp,16

    MemoryAllocator::initFree();
    800016c4:	00000097          	auipc	ra,0x0
    800016c8:	508080e7          	jalr	1288(ra) # 80001bcc <_ZN15MemoryAllocator8initFreeEv>
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800016cc:	10200793          	li	a5,258
    800016d0:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SPP | Riscv::SSTATUS_SIE);
    Riscv::w_stvec( (uint64)&Riscv::SupervisorTrap );
    800016d4:	00009797          	auipc	a5,0x9
    800016d8:	bcc7b783          	ld	a5,-1076(a5) # 8000a2a0 <_GLOBAL_OFFSET_TABLE_+0x18>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800016dc:	10579073          	csrw	stvec,a5

    TCB::running = new TCB(nullptr, nullptr);
    800016e0:	03800513          	li	a0,56
    800016e4:	00000097          	auipc	ra,0x0
    800016e8:	54c080e7          	jalr	1356(ra) # 80001c30 <_Znwm>
                                blocked(false)
    800016ec:	00053023          	sd	zero,0(a0)
    800016f0:	00053423          	sd	zero,8(a0)
    800016f4:	00053823          	sd	zero,16(a0)
    800016f8:	00053c23          	sd	zero,24(a0)
    800016fc:	02053023          	sd	zero,32(a0)
    80001700:	02050423          	sb	zero,40(a0)
    80001704:	020504a3          	sb	zero,41(a0)
    80001708:	00009797          	auipc	a5,0x9
    8000170c:	ba87b783          	ld	a5,-1112(a5) # 8000a2b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001710:	00a7b023          	sd	a0,0(a5)

    userMain();
    80001714:	00004097          	auipc	ra,0x4
    80001718:	93c080e7          	jalr	-1732(ra) # 80005050 <_Z8userMainv>
    //Threads_C_API_testA();

    *(int*)0x100000 = 0x5555;
    8000171c:	00100737          	lui	a4,0x100
    80001720:	000057b7          	lui	a5,0x5
    80001724:	5557879b          	addiw	a5,a5,1365
    80001728:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
    int* ptr = (int*)0x100000;
    *ptr = 0x5555;


    return 0;*/
}
    8000172c:	00000513          	li	a0,0
    80001730:	00813083          	ld	ra,8(sp)
    80001734:	00013403          	ld	s0,0(sp)
    80001738:	01010113          	addi	sp,sp,16
    8000173c:	00008067          	ret

0000000080001740 <_ZN3TCB8dispatchEv>:
#include "../h/riscv.hpp"

TCB* TCB::running = nullptr;


void TCB::dispatch() {
    80001740:	fe010113          	addi	sp,sp,-32
    80001744:	00113c23          	sd	ra,24(sp)
    80001748:	00813823          	sd	s0,16(sp)
    8000174c:	00913423          	sd	s1,8(sp)
    80001750:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80001754:	00009497          	auipc	s1,0x9
    80001758:	bbc4b483          	ld	s1,-1092(s1) # 8000a310 <_ZN3TCB7runningE>

    static TCB* running;

    void setFinished(bool val) { finished = val; }

    bool isFinished() { return finished; }
    8000175c:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished() && !old->isBlocked()) Scheduler::put(old);
    80001760:	00079663          	bnez	a5,8000176c <_ZN3TCB8dispatchEv+0x2c>

    bool isBlocked() { return blocked; }
    80001764:	0294c783          	lbu	a5,41(s1)
    80001768:	02078c63          	beqz	a5,800017a0 <_ZN3TCB8dispatchEv+0x60>
    running = Scheduler::get();
    8000176c:	00001097          	auipc	ra,0x1
    80001770:	bac080e7          	jalr	-1108(ra) # 80002318 <_ZN9Scheduler3getEv>
    80001774:	00009797          	auipc	a5,0x9
    80001778:	b8a7be23          	sd	a0,-1124(a5) # 8000a310 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    8000177c:	01850593          	addi	a1,a0,24
    80001780:	01848513          	addi	a0,s1,24
    80001784:	00000097          	auipc	ra,0x0
    80001788:	a8c080e7          	jalr	-1396(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    8000178c:	01813083          	ld	ra,24(sp)
    80001790:	01013403          	ld	s0,16(sp)
    80001794:	00813483          	ld	s1,8(sp)
    80001798:	02010113          	addi	sp,sp,32
    8000179c:	00008067          	ret
    if (!old->isFinished() && !old->isBlocked()) Scheduler::put(old);
    800017a0:	00048513          	mv	a0,s1
    800017a4:	00001097          	auipc	ra,0x1
    800017a8:	bdc080e7          	jalr	-1060(ra) # 80002380 <_ZN9Scheduler3putEP3TCB>
    800017ac:	fc1ff06f          	j	8000176c <_ZN3TCB8dispatchEv+0x2c>

00000000800017b0 <_ZN3TCB13threadWrapperEv>:

void TCB::threadWrapper() {
    800017b0:	ff010113          	addi	sp,sp,-16
    800017b4:	00113423          	sd	ra,8(sp)
    800017b8:	00813023          	sd	s0,0(sp)
    800017bc:	01010413          	addi	s0,sp,16
    Riscv::thread_setup();
    800017c0:	00000097          	auipc	ra,0x0
    800017c4:	7cc080e7          	jalr	1996(ra) # 80001f8c <_ZN5Riscv12thread_setupEv>
    running->body(running->arg);
    800017c8:	00009797          	auipc	a5,0x9
    800017cc:	b487b783          	ld	a5,-1208(a5) # 8000a310 <_ZN3TCB7runningE>
    800017d0:	0007b703          	ld	a4,0(a5)
    800017d4:	0087b503          	ld	a0,8(a5)
    800017d8:	000700e7          	jalr	a4
    thread_exit();
    800017dc:	00000097          	auipc	ra,0x0
    800017e0:	af0080e7          	jalr	-1296(ra) # 800012cc <_Z11thread_exitv>
}
    800017e4:	00813083          	ld	ra,8(sp)
    800017e8:	00013403          	ld	s0,0(sp)
    800017ec:	01010113          	addi	sp,sp,16
    800017f0:	00008067          	ret

00000000800017f4 <_ZN15MemoryAllocator9mem_allocEm>:
#include "../lib/hw.h"
#include "../h/print.hpp"
dataBlock* MemoryAllocator::free = nullptr;
dataBlock* MemoryAllocator::allocated = nullptr;

void *MemoryAllocator::mem_alloc(size_t size) {
    800017f4:	ff010113          	addi	sp,sp,-16
    800017f8:	00813423          	sd	s0,8(sp)
    800017fc:	01010413          	addi	s0,sp,16
    //int blockSize = ((size + MEM_BLOCK_SIZE - 1 + sizeof(dataBlock) + sizeof(footer)) / MEM_BLOCK_SIZE) * MEM_BLOCK_SIZE;
    uint64 blockSize = ((size * MEM_BLOCK_SIZE +  sizeof(dataBlock) + sizeof(footer) + MEM_BLOCK_SIZE -  1) / MEM_BLOCK_SIZE) * MEM_BLOCK_SIZE;
    80001800:	00651793          	slli	a5,a0,0x6
    80001804:	04078793          	addi	a5,a5,64
    for (dataBlock* curr = MemoryAllocator::free; curr != nullptr; curr = curr->next) {
    80001808:	00009717          	auipc	a4,0x9
    8000180c:	b1073703          	ld	a4,-1264(a4) # 8000a318 <_ZN15MemoryAllocator4freeE>
    80001810:	00070513          	mv	a0,a4
    80001814:	0a050e63          	beqz	a0,800018d0 <_ZN15MemoryAllocator9mem_allocEm+0xdc>

        if (curr->size < blockSize) continue;
    80001818:	01053683          	ld	a3,16(a0)
    8000181c:	0cf6e063          	bltu	a3,a5,800018dc <_ZN15MemoryAllocator9mem_allocEm+0xe8>

        if (curr == MemoryAllocator::free) {
    80001820:	0ce50263          	beq	a0,a4,800018e4 <_ZN15MemoryAllocator9mem_allocEm+0xf0>
            if (curr->next)
                curr->next->prev = nullptr;
            MemoryAllocator::free = curr->next;
        } else {
            curr->prev->next = curr->next;
    80001824:	00853703          	ld	a4,8(a0)
    80001828:	00053683          	ld	a3,0(a0)
    8000182c:	00d73023          	sd	a3,0(a4)
            if (curr->next)
    80001830:	00053703          	ld	a4,0(a0)
    80001834:	00070663          	beqz	a4,80001840 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
                curr->next->prev = curr->prev;
    80001838:	00853683          	ld	a3,8(a0)
    8000183c:	00d73423          	sd	a3,8(a4)
        }

        size_t currSize = curr->size;
    80001840:	01053683          	ld	a3,16(a0)

        dataBlock* newBlock = (dataBlock*) curr;
        newBlock->prev = nullptr;
    80001844:	00053423          	sd	zero,8(a0)
        if (MemoryAllocator::allocated) {
    80001848:	00009717          	auipc	a4,0x9
    8000184c:	ad873703          	ld	a4,-1320(a4) # 8000a320 <_ZN15MemoryAllocator9allocatedE>
    80001850:	0a070863          	beqz	a4,80001900 <_ZN15MemoryAllocator9mem_allocEm+0x10c>
            newBlock->next = MemoryAllocator::allocated;
    80001854:	00e53023          	sd	a4,0(a0)
            MemoryAllocator::allocated->prev = newBlock;
    80001858:	00009717          	auipc	a4,0x9
    8000185c:	ac873703          	ld	a4,-1336(a4) # 8000a320 <_ZN15MemoryAllocator9allocatedE>
    80001860:	00a73423          	sd	a0,8(a4)
        } else {
            newBlock->next = nullptr;
        }
        newBlock->size = blockSize;
    80001864:	00f53823          	sd	a5,16(a0)
        footer* f = (footer*)((char*)newBlock + blockSize - sizeof(footer));
    80001868:	ff078713          	addi	a4,a5,-16
    8000186c:	00e50733          	add	a4,a0,a4
        f->size = blockSize;
    80001870:	00f73023          	sd	a5,0(a4)
        f->isFree = false;
    80001874:	00070423          	sb	zero,8(a4)
        MemoryAllocator::allocated = newBlock;
    80001878:	00009717          	auipc	a4,0x9
    8000187c:	aaa73423          	sd	a0,-1368(a4) # 8000a320 <_ZN15MemoryAllocator9allocatedE>

        if (currSize > blockSize) {
    80001880:	04d7f663          	bgeu	a5,a3,800018cc <_ZN15MemoryAllocator9mem_allocEm+0xd8>
            dataBlock* freeBlock = (dataBlock*) ((char*)newBlock + blockSize);
    80001884:	00f50733          	add	a4,a0,a5
            freeBlock->prev = nullptr;
    80001888:	00073423          	sd	zero,8(a4)

            freeBlock->next = MemoryAllocator::free;
    8000188c:	00009617          	auipc	a2,0x9
    80001890:	a8c60613          	addi	a2,a2,-1396 # 8000a318 <_ZN15MemoryAllocator4freeE>
    80001894:	00063583          	ld	a1,0(a2)
    80001898:	00b73023          	sd	a1,0(a4)
            if (MemoryAllocator::free)
    8000189c:	00063603          	ld	a2,0(a2)
    800018a0:	00060463          	beqz	a2,800018a8 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
                MemoryAllocator::free->prev = freeBlock;
    800018a4:	00e63423          	sd	a4,8(a2)
            MemoryAllocator::free = freeBlock;
    800018a8:	00009617          	auipc	a2,0x9
    800018ac:	a6e63823          	sd	a4,-1424(a2) # 8000a318 <_ZN15MemoryAllocator4freeE>
            freeBlock->size = currSize - blockSize;
    800018b0:	40f687b3          	sub	a5,a3,a5
    800018b4:	00f73823          	sd	a5,16(a4)
            footer* ft = (footer*)((char*)freeBlock + freeBlock->size - sizeof(footer));
    800018b8:	ff078693          	addi	a3,a5,-16
    800018bc:	00d70733          	add	a4,a4,a3
            ft->size = freeBlock->size;
    800018c0:	00f73023          	sd	a5,0(a4)
            ft->isFree = true;
    800018c4:	00100793          	li	a5,1
    800018c8:	00f70423          	sb	a5,8(a4)

        }

        return (void*)(((char*)newBlock + sizeof(dataBlock)));
    800018cc:	01850513          	addi	a0,a0,24
    }
    return nullptr;
}
    800018d0:	00813403          	ld	s0,8(sp)
    800018d4:	01010113          	addi	sp,sp,16
    800018d8:	00008067          	ret
    for (dataBlock* curr = MemoryAllocator::free; curr != nullptr; curr = curr->next) {
    800018dc:	00053503          	ld	a0,0(a0)
    800018e0:	f35ff06f          	j	80001814 <_ZN15MemoryAllocator9mem_allocEm+0x20>
            if (curr->next)
    800018e4:	00053703          	ld	a4,0(a0)
    800018e8:	00070463          	beqz	a4,800018f0 <_ZN15MemoryAllocator9mem_allocEm+0xfc>
                curr->next->prev = nullptr;
    800018ec:	00073423          	sd	zero,8(a4)
            MemoryAllocator::free = curr->next;
    800018f0:	00053703          	ld	a4,0(a0)
    800018f4:	00009697          	auipc	a3,0x9
    800018f8:	a2e6b223          	sd	a4,-1500(a3) # 8000a318 <_ZN15MemoryAllocator4freeE>
    800018fc:	f45ff06f          	j	80001840 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
            newBlock->next = nullptr;
    80001900:	00053023          	sd	zero,0(a0)
    80001904:	f61ff06f          	j	80001864 <_ZN15MemoryAllocator9mem_allocEm+0x70>

0000000080001908 <_ZN15MemoryAllocator8mem_freeEPv>:


int MemoryAllocator::mem_free(void *address) {
    80001908:	ff010113          	addi	sp,sp,-16
    8000190c:	00813423          	sd	s0,8(sp)
    80001910:	01010413          	addi	s0,sp,16
    if (address == nullptr || (uint64)address < sizeof(dataBlock))
    80001914:	2a050463          	beqz	a0,80001bbc <_ZN15MemoryAllocator8mem_freeEPv+0x2b4>
    80001918:	00050793          	mv	a5,a0
    8000191c:	01700713          	li	a4,23
    80001920:	2aa77263          	bgeu	a4,a0,80001bc4 <_ZN15MemoryAllocator8mem_freeEPv+0x2bc>
        return -2;

    dataBlock* curr = (dataBlock*)((char*)address - sizeof(dataBlock));
    80001924:	fe850693          	addi	a3,a0,-24
    footer* cf = (footer*)((char*)curr + curr->size - sizeof(footer));
    80001928:	ff853703          	ld	a4,-8(a0)
    8000192c:	ff070613          	addi	a2,a4,-16
    80001930:	00c688b3          	add	a7,a3,a2

    dataBlock* next = nullptr;
    footer* nf = nullptr;
    if ( (void*)((char*)curr + curr->size) <= (void*)((char*)HEAP_END_ADDR - MEM_BLOCK_SIZE)) {
    80001934:	00e68733          	add	a4,a3,a4
    80001938:	00009617          	auipc	a2,0x9
    8000193c:	98063603          	ld	a2,-1664(a2) # 8000a2b8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001940:	00063603          	ld	a2,0(a2)
    80001944:	fc060613          	addi	a2,a2,-64
    80001948:	00e66a63          	bltu	a2,a4,8000195c <_ZN15MemoryAllocator8mem_freeEPv+0x54>
        next = (dataBlock*)((char*)curr + curr->size);
        nf = (footer*)((char*)next + next->size - sizeof(footer));
    8000194c:	01073583          	ld	a1,16(a4)
    80001950:	ff058593          	addi	a1,a1,-16
    80001954:	00b70633          	add	a2,a4,a1
    80001958:	00c0006f          	j	80001964 <_ZN15MemoryAllocator8mem_freeEPv+0x5c>
    footer* nf = nullptr;
    8000195c:	00000613          	li	a2,0
    dataBlock* next = nullptr;
    80001960:	00000713          	li	a4,0
    }

    dataBlock* prev = nullptr;
    footer* pf = nullptr;
    if ((void*)curr >= (void*)((char*)HEAP_START_ADDR + MEM_BLOCK_SIZE)) {
    80001964:	00009597          	auipc	a1,0x9
    80001968:	9345b583          	ld	a1,-1740(a1) # 8000a298 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000196c:	0005b583          	ld	a1,0(a1)
    80001970:	04058593          	addi	a1,a1,64
    80001974:	00b6ea63          	bltu	a3,a1,80001988 <_ZN15MemoryAllocator8mem_freeEPv+0x80>
        pf = (footer*)((char*)curr - sizeof(footer));
    80001978:	fd878813          	addi	a6,a5,-40
        prev = (dataBlock*)((char*)curr - pf->size);
    8000197c:	fd87b583          	ld	a1,-40(a5)
    80001980:	40b685b3          	sub	a1,a3,a1
    80001984:	00c0006f          	j	80001990 <_ZN15MemoryAllocator8mem_freeEPv+0x88>
    footer* pf = nullptr;
    80001988:	00000813          	li	a6,0
    dataBlock* prev = nullptr;
    8000198c:	00000593          	li	a1,0
    }


    int x = 0;
    if ( nf != nullptr && nf->isFree ) x += 2;
    80001990:	0a060a63          	beqz	a2,80001a44 <_ZN15MemoryAllocator8mem_freeEPv+0x13c>
    80001994:	00864503          	lbu	a0,8(a2)
    80001998:	0a051a63          	bnez	a0,80001a4c <_ZN15MemoryAllocator8mem_freeEPv+0x144>
    if ( pf != nullptr && pf->isFree ) x += 4;
    8000199c:	00080863          	beqz	a6,800019ac <_ZN15MemoryAllocator8mem_freeEPv+0xa4>
    800019a0:	00884803          	lbu	a6,8(a6)
    800019a4:	00080463          	beqz	a6,800019ac <_ZN15MemoryAllocator8mem_freeEPv+0xa4>
    800019a8:	0045051b          	addiw	a0,a0,4


    if (curr == MemoryAllocator::allocated) {
    800019ac:	00009817          	auipc	a6,0x9
    800019b0:	97483803          	ld	a6,-1676(a6) # 8000a320 <_ZN15MemoryAllocator9allocatedE>
    800019b4:	0ad80063          	beq	a6,a3,80001a54 <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
        if (curr->next)
            curr->next->prev = nullptr;
        MemoryAllocator::allocated = curr->next;
    } else {
        curr->prev->next = curr->next;
    800019b8:	ff07b303          	ld	t1,-16(a5)
    800019bc:	fe87b803          	ld	a6,-24(a5)
    800019c0:	01033023          	sd	a6,0(t1)
        if (curr->next)
    800019c4:	00080663          	beqz	a6,800019d0 <_ZN15MemoryAllocator8mem_freeEPv+0xc8>
            curr->next->prev = curr->prev;
    800019c8:	ff07b303          	ld	t1,-16(a5)
    800019cc:	00683423          	sd	t1,8(a6)
    }


    switch (x) {
    800019d0:	00400813          	li	a6,4
    800019d4:	19050663          	beq	a0,a6,80001b60 <_ZN15MemoryAllocator8mem_freeEPv+0x258>
    800019d8:	0aa84063          	blt	a6,a0,80001a78 <_ZN15MemoryAllocator8mem_freeEPv+0x170>
    800019dc:	12050863          	beqz	a0,80001b0c <_ZN15MemoryAllocator8mem_freeEPv+0x204>
    800019e0:	00200613          	li	a2,2
    800019e4:	08c51663          	bne	a0,a2,80001a70 <_ZN15MemoryAllocator8mem_freeEPv+0x168>
            if (curr->next)
                curr->next->prev = curr;
            MemoryAllocator::free = curr;
            break;
        case 2: // next block is free, previous block is allocated
            if (next == MemoryAllocator::free) {
    800019e8:	00009617          	auipc	a2,0x9
    800019ec:	93063603          	ld	a2,-1744(a2) # 8000a318 <_ZN15MemoryAllocator4freeE>
    800019f0:	14e60863          	beq	a2,a4,80001b40 <_ZN15MemoryAllocator8mem_freeEPv+0x238>
                if (next->next)
                    next->next->prev = curr;
                curr->prev = nullptr;
                MemoryAllocator::free = curr;
            } else {
                next->prev->next = curr;
    800019f4:	00873603          	ld	a2,8(a4)
    800019f8:	00d63023          	sd	a3,0(a2)
                if (next->next)
    800019fc:	00073603          	ld	a2,0(a4)
    80001a00:	00060463          	beqz	a2,80001a08 <_ZN15MemoryAllocator8mem_freeEPv+0x100>
                    next->next->prev = curr;
    80001a04:	00d63423          	sd	a3,8(a2)
                curr->next = next->next;
    80001a08:	00073603          	ld	a2,0(a4)
    80001a0c:	fec7b423          	sd	a2,-24(a5)
                curr->prev = next->prev;
    80001a10:	00873603          	ld	a2,8(a4)
    80001a14:	fec7b823          	sd	a2,-16(a5)
            }
            curr->size = curr->size + next->size;
    80001a18:	ff87b603          	ld	a2,-8(a5)
    80001a1c:	01073703          	ld	a4,16(a4)
    80001a20:	00e60733          	add	a4,a2,a4
    80001a24:	fee7bc23          	sd	a4,-8(a5)
            cf = (footer*)((char*)curr + curr->size - sizeof(footer));
    80001a28:	ff070793          	addi	a5,a4,-16
    80001a2c:	00f686b3          	add	a3,a3,a5
            cf->size = curr->size;
    80001a30:	00e6b023          	sd	a4,0(a3)
            cf->isFree = true;
    80001a34:	00100793          	li	a5,1
    80001a38:	00f68423          	sb	a5,8(a3)
            nf->isFree = true;
            break;
        default:
            return -1;
    }
    return 0;
    80001a3c:	00000513          	li	a0,0
            break;
    80001a40:	0c00006f          	j	80001b00 <_ZN15MemoryAllocator8mem_freeEPv+0x1f8>
    int x = 0;
    80001a44:	00000513          	li	a0,0
    80001a48:	f55ff06f          	j	8000199c <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    if ( nf != nullptr && nf->isFree ) x += 2;
    80001a4c:	00200513          	li	a0,2
    80001a50:	f4dff06f          	j	8000199c <_ZN15MemoryAllocator8mem_freeEPv+0x94>
        if (curr->next)
    80001a54:	fe87b803          	ld	a6,-24(a5)
    80001a58:	00080463          	beqz	a6,80001a60 <_ZN15MemoryAllocator8mem_freeEPv+0x158>
            curr->next->prev = nullptr;
    80001a5c:	00083423          	sd	zero,8(a6)
        MemoryAllocator::allocated = curr->next;
    80001a60:	fe87b803          	ld	a6,-24(a5)
    80001a64:	00009317          	auipc	t1,0x9
    80001a68:	8b033e23          	sd	a6,-1860(t1) # 8000a320 <_ZN15MemoryAllocator9allocatedE>
    80001a6c:	f65ff06f          	j	800019d0 <_ZN15MemoryAllocator8mem_freeEPv+0xc8>
    switch (x) {
    80001a70:	fff00513          	li	a0,-1
    80001a74:	08c0006f          	j	80001b00 <_ZN15MemoryAllocator8mem_freeEPv+0x1f8>
    80001a78:	00600693          	li	a3,6
    80001a7c:	08d51063          	bne	a0,a3,80001afc <_ZN15MemoryAllocator8mem_freeEPv+0x1f4>
            if (prev == MemoryAllocator::free) {
    80001a80:	00009697          	auipc	a3,0x9
    80001a84:	8986b683          	ld	a3,-1896(a3) # 8000a318 <_ZN15MemoryAllocator4freeE>
    80001a88:	0eb68e63          	beq	a3,a1,80001b84 <_ZN15MemoryAllocator8mem_freeEPv+0x27c>
                prev->prev->next = prev->next;
    80001a8c:	0085b503          	ld	a0,8(a1)
    80001a90:	0005b683          	ld	a3,0(a1)
    80001a94:	00d53023          	sd	a3,0(a0)
                if (prev->next)
    80001a98:	00068663          	beqz	a3,80001aa4 <_ZN15MemoryAllocator8mem_freeEPv+0x19c>
                    prev->next->prev=prev->prev;
    80001a9c:	0085b503          	ld	a0,8(a1)
    80001aa0:	00a6b423          	sd	a0,8(a3)
            if (next == MemoryAllocator::free) {
    80001aa4:	00009697          	auipc	a3,0x9
    80001aa8:	8746b683          	ld	a3,-1932(a3) # 8000a318 <_ZN15MemoryAllocator4freeE>
    80001aac:	0ee68a63          	beq	a3,a4,80001ba0 <_ZN15MemoryAllocator8mem_freeEPv+0x298>
                prev->prev = next->prev;
    80001ab0:	00873683          	ld	a3,8(a4)
    80001ab4:	00d5b423          	sd	a3,8(a1)
                next->prev->next = prev;
    80001ab8:	00b6b023          	sd	a1,0(a3)
                if (next->next)
    80001abc:	00073683          	ld	a3,0(a4)
    80001ac0:	00068463          	beqz	a3,80001ac8 <_ZN15MemoryAllocator8mem_freeEPv+0x1c0>
                    next->next->prev = prev;
    80001ac4:	00b6b423          	sd	a1,8(a3)
                prev->next = next->next;
    80001ac8:	00073683          	ld	a3,0(a4)
    80001acc:	00d5b023          	sd	a3,0(a1)
            prev->size = prev->size + curr->size + next->size;
    80001ad0:	0105b683          	ld	a3,16(a1)
    80001ad4:	ff87b783          	ld	a5,-8(a5)
    80001ad8:	00f687b3          	add	a5,a3,a5
    80001adc:	01073703          	ld	a4,16(a4)
    80001ae0:	00e787b3          	add	a5,a5,a4
    80001ae4:	00f5b823          	sd	a5,16(a1)
            nf->size = prev->size;
    80001ae8:	00f63023          	sd	a5,0(a2)
            nf->isFree = true;
    80001aec:	00100793          	li	a5,1
    80001af0:	00f60423          	sb	a5,8(a2)
    return 0;
    80001af4:	00000513          	li	a0,0
            break;
    80001af8:	0080006f          	j	80001b00 <_ZN15MemoryAllocator8mem_freeEPv+0x1f8>
    switch (x) {
    80001afc:	fff00513          	li	a0,-1
}
    80001b00:	00813403          	ld	s0,8(sp)
    80001b04:	01010113          	addi	sp,sp,16
    80001b08:	00008067          	ret
            cf->isFree = true;
    80001b0c:	00100713          	li	a4,1
    80001b10:	00e88423          	sb	a4,8(a7)
            cf->size = curr->size;
    80001b14:	ff87b703          	ld	a4,-8(a5)
    80001b18:	00e8b023          	sd	a4,0(a7)
            curr->prev = nullptr;
    80001b1c:	fe07b823          	sd	zero,-16(a5)
            curr->next = MemoryAllocator::free;
    80001b20:	00008717          	auipc	a4,0x8
    80001b24:	7f873703          	ld	a4,2040(a4) # 8000a318 <_ZN15MemoryAllocator4freeE>
    80001b28:	fee7b423          	sd	a4,-24(a5)
            if (curr->next)
    80001b2c:	00070463          	beqz	a4,80001b34 <_ZN15MemoryAllocator8mem_freeEPv+0x22c>
                curr->next->prev = curr;
    80001b30:	00d73423          	sd	a3,8(a4)
            MemoryAllocator::free = curr;
    80001b34:	00008797          	auipc	a5,0x8
    80001b38:	7ed7b223          	sd	a3,2020(a5) # 8000a318 <_ZN15MemoryAllocator4freeE>
            break;
    80001b3c:	fc5ff06f          	j	80001b00 <_ZN15MemoryAllocator8mem_freeEPv+0x1f8>
                curr->next = next->next;
    80001b40:	00073603          	ld	a2,0(a4)
    80001b44:	fec7b423          	sd	a2,-24(a5)
                if (next->next)
    80001b48:	00060463          	beqz	a2,80001b50 <_ZN15MemoryAllocator8mem_freeEPv+0x248>
                    next->next->prev = curr;
    80001b4c:	00d63423          	sd	a3,8(a2)
                curr->prev = nullptr;
    80001b50:	fe07b823          	sd	zero,-16(a5)
                MemoryAllocator::free = curr;
    80001b54:	00008617          	auipc	a2,0x8
    80001b58:	7cd63223          	sd	a3,1988(a2) # 8000a318 <_ZN15MemoryAllocator4freeE>
    80001b5c:	ebdff06f          	j	80001a18 <_ZN15MemoryAllocator8mem_freeEPv+0x110>
            prev->size = prev->size + curr->size;
    80001b60:	0105b703          	ld	a4,16(a1)
    80001b64:	ff87b783          	ld	a5,-8(a5)
    80001b68:	00f707b3          	add	a5,a4,a5
    80001b6c:	00f5b823          	sd	a5,16(a1)
            cf->size = prev->size;
    80001b70:	00f8b023          	sd	a5,0(a7)
            cf->isFree = true;
    80001b74:	00100793          	li	a5,1
    80001b78:	00f88423          	sb	a5,8(a7)
    return 0;
    80001b7c:	00000513          	li	a0,0
            break;
    80001b80:	f81ff06f          	j	80001b00 <_ZN15MemoryAllocator8mem_freeEPv+0x1f8>
                if (prev->next)
    80001b84:	0005b683          	ld	a3,0(a1)
    80001b88:	00068463          	beqz	a3,80001b90 <_ZN15MemoryAllocator8mem_freeEPv+0x288>
                    prev->next->prev = nullptr;
    80001b8c:	0006b423          	sd	zero,8(a3)
                MemoryAllocator::free = prev->next;
    80001b90:	0005b683          	ld	a3,0(a1)
    80001b94:	00008517          	auipc	a0,0x8
    80001b98:	78d53223          	sd	a3,1924(a0) # 8000a318 <_ZN15MemoryAllocator4freeE>
    80001b9c:	f09ff06f          	j	80001aa4 <_ZN15MemoryAllocator8mem_freeEPv+0x19c>
                prev->next = next->next;
    80001ba0:	00073683          	ld	a3,0(a4)
    80001ba4:	00d5b023          	sd	a3,0(a1)
                if (next->next)
    80001ba8:	00068463          	beqz	a3,80001bb0 <_ZN15MemoryAllocator8mem_freeEPv+0x2a8>
                    next->next->prev = prev;
    80001bac:	00b6b423          	sd	a1,8(a3)
                MemoryAllocator::free = prev;
    80001bb0:	00008697          	auipc	a3,0x8
    80001bb4:	76b6b423          	sd	a1,1896(a3) # 8000a318 <_ZN15MemoryAllocator4freeE>
    80001bb8:	f19ff06f          	j	80001ad0 <_ZN15MemoryAllocator8mem_freeEPv+0x1c8>
        return -2;
    80001bbc:	ffe00513          	li	a0,-2
    80001bc0:	f41ff06f          	j	80001b00 <_ZN15MemoryAllocator8mem_freeEPv+0x1f8>
    80001bc4:	ffe00513          	li	a0,-2
    80001bc8:	f39ff06f          	j	80001b00 <_ZN15MemoryAllocator8mem_freeEPv+0x1f8>

0000000080001bcc <_ZN15MemoryAllocator8initFreeEv>:


void MemoryAllocator::initFree() {
    80001bcc:	ff010113          	addi	sp,sp,-16
    80001bd0:	00813423          	sd	s0,8(sp)
    80001bd4:	01010413          	addi	s0,sp,16
    dataBlock* start = (dataBlock*)HEAP_START_ADDR;
    80001bd8:	00008617          	auipc	a2,0x8
    80001bdc:	6c063603          	ld	a2,1728(a2) # 8000a298 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001be0:	00063783          	ld	a5,0(a2)
    footer* end = (footer*)((char*)HEAP_END_ADDR - sizeof(footer));
    80001be4:	00008717          	auipc	a4,0x8
    80001be8:	6d473703          	ld	a4,1748(a4) # 8000a2b8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001bec:	00073683          	ld	a3,0(a4)
    start->next =  start->prev = nullptr;
    80001bf0:	0007b423          	sd	zero,8(a5)
    80001bf4:	0007b023          	sd	zero,0(a5)
    start->size = (size_t)((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR);
    80001bf8:	00073703          	ld	a4,0(a4)
    80001bfc:	00063603          	ld	a2,0(a2)
    80001c00:	40c70733          	sub	a4,a4,a2
    80001c04:	00e7b823          	sd	a4,16(a5)
    end->size = start->size;
    80001c08:	fee6b823          	sd	a4,-16(a3)
    end->isFree = true;
    80001c0c:	00100713          	li	a4,1
    80001c10:	fee68c23          	sb	a4,-8(a3)
    MemoryAllocator::free = start;
    80001c14:	00008717          	auipc	a4,0x8
    80001c18:	70470713          	addi	a4,a4,1796 # 8000a318 <_ZN15MemoryAllocator4freeE>
    80001c1c:	00f73023          	sd	a5,0(a4)
    MemoryAllocator::allocated = nullptr;
    80001c20:	00073423          	sd	zero,8(a4)
}
    80001c24:	00813403          	ld	s0,8(sp)
    80001c28:	01010113          	addi	sp,sp,16
    80001c2c:	00008067          	ret

0000000080001c30 <_Znwm>:
#include  "../lib/mem.h"
#include "../h/syscall_c.h"

void *operator new(uint64 n){
    80001c30:	ff010113          	addi	sp,sp,-16
    80001c34:	00113423          	sd	ra,8(sp)
    80001c38:	00813023          	sd	s0,0(sp)
    80001c3c:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001c40:	fffff097          	auipc	ra,0xfffff
    80001c44:	604080e7          	jalr	1540(ra) # 80001244 <_Z9mem_allocm>
}
    80001c48:	00813083          	ld	ra,8(sp)
    80001c4c:	00013403          	ld	s0,0(sp)
    80001c50:	01010113          	addi	sp,sp,16
    80001c54:	00008067          	ret

0000000080001c58 <_Znam>:

void *operator new[](uint64 n) {
    80001c58:	ff010113          	addi	sp,sp,-16
    80001c5c:	00113423          	sd	ra,8(sp)
    80001c60:	00813023          	sd	s0,0(sp)
    80001c64:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001c68:	fffff097          	auipc	ra,0xfffff
    80001c6c:	5dc080e7          	jalr	1500(ra) # 80001244 <_Z9mem_allocm>
}
    80001c70:	00813083          	ld	ra,8(sp)
    80001c74:	00013403          	ld	s0,0(sp)
    80001c78:	01010113          	addi	sp,sp,16
    80001c7c:	00008067          	ret

0000000080001c80 <_ZdlPv>:

void operator delete(void *p) noexcept {
    80001c80:	ff010113          	addi	sp,sp,-16
    80001c84:	00113423          	sd	ra,8(sp)
    80001c88:	00813023          	sd	s0,0(sp)
    80001c8c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001c90:	fffff097          	auipc	ra,0xfffff
    80001c94:	5dc080e7          	jalr	1500(ra) # 8000126c <_Z8mem_freePv>
}
    80001c98:	00813083          	ld	ra,8(sp)
    80001c9c:	00013403          	ld	s0,0(sp)
    80001ca0:	01010113          	addi	sp,sp,16
    80001ca4:	00008067          	ret

0000000080001ca8 <_ZdaPv>:

void operator delete[](void *p) noexcept {
    80001ca8:	ff010113          	addi	sp,sp,-16
    80001cac:	00113423          	sd	ra,8(sp)
    80001cb0:	00813023          	sd	s0,0(sp)
    80001cb4:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001cb8:	fffff097          	auipc	ra,0xfffff
    80001cbc:	5b4080e7          	jalr	1460(ra) # 8000126c <_Z8mem_freePv>
    80001cc0:	00813083          	ld	ra,8(sp)
    80001cc4:	00013403          	ld	s0,0(sp)
    80001cc8:	01010113          	addi	sp,sp,16
    80001ccc:	00008067          	ret

0000000080001cd0 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *), void *arg) : body(body), arg(arg) {
}


Thread::~Thread(){
    80001cd0:	ff010113          	addi	sp,sp,-16
    80001cd4:	00813423          	sd	s0,8(sp)
    80001cd8:	01010413          	addi	s0,sp,16

}
    80001cdc:	00813403          	ld	s0,8(sp)
    80001ce0:	01010113          	addi	sp,sp,16
    80001ce4:	00008067          	ret

0000000080001ce8 <_ZN6ThreadD0Ev>:
Thread::~Thread(){
    80001ce8:	ff010113          	addi	sp,sp,-16
    80001cec:	00113423          	sd	ra,8(sp)
    80001cf0:	00813023          	sd	s0,0(sp)
    80001cf4:	01010413          	addi	s0,sp,16
}
    80001cf8:	00000097          	auipc	ra,0x0
    80001cfc:	f88080e7          	jalr	-120(ra) # 80001c80 <_ZdlPv>
    80001d00:	00813083          	ld	ra,8(sp)
    80001d04:	00013403          	ld	s0,0(sp)
    80001d08:	01010113          	addi	sp,sp,16
    80001d0c:	00008067          	ret

0000000080001d10 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80001d10:	ff010113          	addi	sp,sp,-16
    80001d14:	00113423          	sd	ra,8(sp)
    80001d18:	00813023          	sd	s0,0(sp)
    80001d1c:	01010413          	addi	s0,sp,16
    80001d20:	00008797          	auipc	a5,0x8
    80001d24:	3b078793          	addi	a5,a5,944 # 8000a0d0 <_ZTV9Semaphore+0x10>
    80001d28:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001d2c:	00853503          	ld	a0,8(a0)
    80001d30:	fffff097          	auipc	ra,0xfffff
    80001d34:	610080e7          	jalr	1552(ra) # 80001340 <_Z9sem_closeP9KernelSem>
}
    80001d38:	00813083          	ld	ra,8(sp)
    80001d3c:	00013403          	ld	s0,0(sp)
    80001d40:	01010113          	addi	sp,sp,16
    80001d44:	00008067          	ret

0000000080001d48 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001d48:	fe010113          	addi	sp,sp,-32
    80001d4c:	00113c23          	sd	ra,24(sp)
    80001d50:	00813823          	sd	s0,16(sp)
    80001d54:	00913423          	sd	s1,8(sp)
    80001d58:	02010413          	addi	s0,sp,32
    80001d5c:	00050493          	mv	s1,a0
}
    80001d60:	00000097          	auipc	ra,0x0
    80001d64:	fb0080e7          	jalr	-80(ra) # 80001d10 <_ZN9SemaphoreD1Ev>
    80001d68:	00048513          	mv	a0,s1
    80001d6c:	00000097          	auipc	ra,0x0
    80001d70:	f14080e7          	jalr	-236(ra) # 80001c80 <_ZdlPv>
    80001d74:	01813083          	ld	ra,24(sp)
    80001d78:	01013403          	ld	s0,16(sp)
    80001d7c:	00813483          	ld	s1,8(sp)
    80001d80:	02010113          	addi	sp,sp,32
    80001d84:	00008067          	ret

0000000080001d88 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) : body(body), arg(arg) {
    80001d88:	ff010113          	addi	sp,sp,-16
    80001d8c:	00813423          	sd	s0,8(sp)
    80001d90:	01010413          	addi	s0,sp,16
    80001d94:	00008797          	auipc	a5,0x8
    80001d98:	31478793          	addi	a5,a5,788 # 8000a0a8 <_ZTV6Thread+0x10>
    80001d9c:	00f53023          	sd	a5,0(a0)
    80001da0:	00b53823          	sd	a1,16(a0)
    80001da4:	00c53c23          	sd	a2,24(a0)
}
    80001da8:	00813403          	ld	s0,8(sp)
    80001dac:	01010113          	addi	sp,sp,16
    80001db0:	00008067          	ret

0000000080001db4 <_ZN6Thread5startEv>:
int Thread::start() {
    80001db4:	ff010113          	addi	sp,sp,-16
    80001db8:	00113423          	sd	ra,8(sp)
    80001dbc:	00813023          	sd	s0,0(sp)
    80001dc0:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, body, arg);
    80001dc4:	01853603          	ld	a2,24(a0)
    80001dc8:	01053583          	ld	a1,16(a0)
    80001dcc:	00850513          	addi	a0,a0,8
    80001dd0:	fffff097          	auipc	ra,0xfffff
    80001dd4:	4c4080e7          	jalr	1220(ra) # 80001294 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001dd8:	00813083          	ld	ra,8(sp)
    80001ddc:	00013403          	ld	s0,0(sp)
    80001de0:	01010113          	addi	sp,sp,16
    80001de4:	00008067          	ret

0000000080001de8 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001de8:	ff010113          	addi	sp,sp,-16
    80001dec:	00113423          	sd	ra,8(sp)
    80001df0:	00813023          	sd	s0,0(sp)
    80001df4:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001df8:	fffff097          	auipc	ra,0xfffff
    80001dfc:	4f8080e7          	jalr	1272(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80001e00:	00813083          	ld	ra,8(sp)
    80001e04:	00013403          	ld	s0,0(sp)
    80001e08:	01010113          	addi	sp,sp,16
    80001e0c:	00008067          	ret

0000000080001e10 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001e10:	ff010113          	addi	sp,sp,-16
    80001e14:	00813423          	sd	s0,8(sp)
    80001e18:	01010413          	addi	s0,sp,16
    80001e1c:	00008797          	auipc	a5,0x8
    80001e20:	28c78793          	addi	a5,a5,652 # 8000a0a8 <_ZTV6Thread+0x10>
    80001e24:	00f53023          	sd	a5,0(a0)
    arg = this;
    80001e28:	00a53c23          	sd	a0,24(a0)
    body = &runTrampoline;
    80001e2c:	00000797          	auipc	a5,0x0
    80001e30:	13478793          	addi	a5,a5,308 # 80001f60 <_ZN6Thread13runTrampolineEPv>
    80001e34:	00f53823          	sd	a5,16(a0)
}
    80001e38:	00813403          	ld	s0,8(sp)
    80001e3c:	01010113          	addi	sp,sp,16
    80001e40:	00008067          	ret

0000000080001e44 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80001e44:	ff010113          	addi	sp,sp,-16
    80001e48:	00113423          	sd	ra,8(sp)
    80001e4c:	00813023          	sd	s0,0(sp)
    80001e50:	01010413          	addi	s0,sp,16
    80001e54:	00008797          	auipc	a5,0x8
    80001e58:	27c78793          	addi	a5,a5,636 # 8000a0d0 <_ZTV9Semaphore+0x10>
    80001e5c:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80001e60:	02059593          	slli	a1,a1,0x20
    80001e64:	0205d593          	srli	a1,a1,0x20
    80001e68:	00850513          	addi	a0,a0,8
    80001e6c:	fffff097          	auipc	ra,0xfffff
    80001e70:	4a4080e7          	jalr	1188(ra) # 80001310 <_Z8sem_openPP9KernelSemm>
}
    80001e74:	00813083          	ld	ra,8(sp)
    80001e78:	00013403          	ld	s0,0(sp)
    80001e7c:	01010113          	addi	sp,sp,16
    80001e80:	00008067          	ret

0000000080001e84 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80001e84:	ff010113          	addi	sp,sp,-16
    80001e88:	00113423          	sd	ra,8(sp)
    80001e8c:	00813023          	sd	s0,0(sp)
    80001e90:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001e94:	00853503          	ld	a0,8(a0)
    80001e98:	fffff097          	auipc	ra,0xfffff
    80001e9c:	4d0080e7          	jalr	1232(ra) # 80001368 <_Z8sem_waitP9KernelSem>
}
    80001ea0:	00813083          	ld	ra,8(sp)
    80001ea4:	00013403          	ld	s0,0(sp)
    80001ea8:	01010113          	addi	sp,sp,16
    80001eac:	00008067          	ret

0000000080001eb0 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80001eb0:	ff010113          	addi	sp,sp,-16
    80001eb4:	00113423          	sd	ra,8(sp)
    80001eb8:	00813023          	sd	s0,0(sp)
    80001ebc:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001ec0:	00853503          	ld	a0,8(a0)
    80001ec4:	fffff097          	auipc	ra,0xfffff
    80001ec8:	4cc080e7          	jalr	1228(ra) # 80001390 <_Z10sem_signalP9KernelSem>
}
    80001ecc:	00813083          	ld	ra,8(sp)
    80001ed0:	00013403          	ld	s0,0(sp)
    80001ed4:	01010113          	addi	sp,sp,16
    80001ed8:	00008067          	ret

0000000080001edc <_ZN7Console4getcEv>:

char Console::getc() {
    80001edc:	ff010113          	addi	sp,sp,-16
    80001ee0:	00113423          	sd	ra,8(sp)
    80001ee4:	00813023          	sd	s0,0(sp)
    80001ee8:	01010413          	addi	s0,sp,16
    return ::getc();
    80001eec:	fffff097          	auipc	ra,0xfffff
    80001ef0:	558080e7          	jalr	1368(ra) # 80001444 <_Z4getcv>
}
    80001ef4:	00813083          	ld	ra,8(sp)
    80001ef8:	00013403          	ld	s0,0(sp)
    80001efc:	01010113          	addi	sp,sp,16
    80001f00:	00008067          	ret

0000000080001f04 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80001f04:	ff010113          	addi	sp,sp,-16
    80001f08:	00113423          	sd	ra,8(sp)
    80001f0c:	00813023          	sd	s0,0(sp)
    80001f10:	01010413          	addi	s0,sp,16
    ::putc(c);
    80001f14:	fffff097          	auipc	ra,0xfffff
    80001f18:	554080e7          	jalr	1364(ra) # 80001468 <_Z4putcc>
}
    80001f1c:	00813083          	ld	ra,8(sp)
    80001f20:	00013403          	ld	s0,0(sp)
    80001f24:	01010113          	addi	sp,sp,16
    80001f28:	00008067          	ret

0000000080001f2c <_ZN6Thread5sleepEm>:

int Thread::sleep(time_t) {
    80001f2c:	ff010113          	addi	sp,sp,-16
    80001f30:	00813423          	sd	s0,8(sp)
    80001f34:	01010413          	addi	s0,sp,16
    return 0;
}
    80001f38:	00000513          	li	a0,0
    80001f3c:	00813403          	ld	s0,8(sp)
    80001f40:	01010113          	addi	sp,sp,16
    80001f44:	00008067          	ret

0000000080001f48 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80001f48:	ff010113          	addi	sp,sp,-16
    80001f4c:	00813423          	sd	s0,8(sp)
    80001f50:	01010413          	addi	s0,sp,16
    80001f54:	00813403          	ld	s0,8(sp)
    80001f58:	01010113          	addi	sp,sp,16
    80001f5c:	00008067          	ret

0000000080001f60 <_ZN6Thread13runTrampolineEPv>:
private:
    static void runTrampoline(void* t) {
    80001f60:	ff010113          	addi	sp,sp,-16
    80001f64:	00113423          	sd	ra,8(sp)
    80001f68:	00813023          	sd	s0,0(sp)
    80001f6c:	01010413          	addi	s0,sp,16
        ((Thread*)t)->run();
    80001f70:	00053783          	ld	a5,0(a0)
    80001f74:	0107b783          	ld	a5,16(a5)
    80001f78:	000780e7          	jalr	a5
    }
    80001f7c:	00813083          	ld	ra,8(sp)
    80001f80:	00013403          	ld	s0,0(sp)
    80001f84:	01010113          	addi	sp,sp,16
    80001f88:	00008067          	ret

0000000080001f8c <_ZN5Riscv12thread_setupEv>:
#include "../lib/console.h"
#include "../h/tcb.hpp"
#include "../h/kernelSem.hpp"


void Riscv::thread_setup() {
    80001f8c:	ff010113          	addi	sp,sp,-16
    80001f90:	00813423          	sd	s0,8(sp)
    80001f94:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001f98:	10000793          	li	a5,256
    80001f9c:	1007b073          	csrc	sstatus,a5
   mc_sstatus(SSTATUS_SPP);
    __asm__ volatile("csrw sepc, ra");
    80001fa0:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001fa4:	10200073          	sret
}
    80001fa8:	00813403          	ld	s0,8(sp)
    80001fac:	01010113          	addi	sp,sp,16
    80001fb0:	00008067          	ret

0000000080001fb4 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    80001fb4:	f9010113          	addi	sp,sp,-112
    80001fb8:	06113423          	sd	ra,104(sp)
    80001fbc:	06813023          	sd	s0,96(sp)
    80001fc0:	04913c23          	sd	s1,88(sp)
    80001fc4:	05213823          	sd	s2,80(sp)
    80001fc8:	05313423          	sd	s3,72(sp)
    80001fcc:	05413023          	sd	s4,64(sp)
    80001fd0:	03513c23          	sd	s5,56(sp)
    80001fd4:	07010413          	addi	s0,sp,112
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001fd8:	142027f3          	csrr	a5,scause
    80001fdc:	faf43423          	sd	a5,-88(s0)
    return scause;
    80001fe0:	fa843483          	ld	s1,-88(s0)
    uint64 scause = r_scause();

    if (scause == 0x0000000000000008ULL || scause == 0x0000000000000009ULL) {
    80001fe4:	ff848713          	addi	a4,s1,-8
    80001fe8:	00100793          	li	a5,1
    80001fec:	02e7f863          	bgeu	a5,a4,8000201c <_ZN5Riscv20handleSupervisorTrapEv+0x68>
        }

        w_sstatus(sstatus);
        w_sepc(sepc);

    } else if (scause == 0x8000000000000009ULL) {
    80001ff0:	fff00793          	li	a5,-1
    80001ff4:	03f79793          	slli	a5,a5,0x3f
    80001ff8:	00978793          	addi	a5,a5,9
    80001ffc:	26f48863          	beq	s1,a5,8000226c <_ZN5Riscv20handleSupervisorTrapEv+0x2b8>
        console_handler();
    } else if (scause == 0x8000000000000001ULL) {
    80002000:	fff00793          	li	a5,-1
    80002004:	03f79793          	slli	a5,a5,0x3f
    80002008:	00178793          	addi	a5,a5,1
    8000200c:	26f49663          	bne	s1,a5,80002278 <_ZN5Riscv20handleSupervisorTrapEv+0x2c4>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002010:	00200793          	li	a5,2
    80002014:	1447b073          	csrc	sip,a5
}
    80002018:	0780006f          	j	80002090 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000201c:	141027f3          	csrr	a5,sepc
    80002020:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80002024:	fb843783          	ld	a5,-72(s0)
        volatile uint64 sepc = r_sepc() + 4;
    80002028:	00478793          	addi	a5,a5,4
    8000202c:	f8f43823          	sd	a5,-112(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002030:	100027f3          	csrr	a5,sstatus
    80002034:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80002038:	fb043783          	ld	a5,-80(s0)
        volatile uint64 sstatus = r_sstatus();
    8000203c:	f8f43c23          	sd	a5,-104(s0)
        __asm__ volatile ("ld %[x], 10 * 8(fp)" : [x] "=r"(op));
    80002040:	05043783          	ld	a5,80(s0)
        switch (op) {
    80002044:	04200713          	li	a4,66
    80002048:	02f76c63          	bltu	a4,a5,80002080 <_ZN5Riscv20handleSupervisorTrapEv+0xcc>
    8000204c:	00279793          	slli	a5,a5,0x2
    80002050:	00006717          	auipc	a4,0x6
    80002054:	fd870713          	addi	a4,a4,-40 # 80008028 <CONSOLE_STATUS+0x18>
    80002058:	00e787b3          	add	a5,a5,a4
    8000205c:	0007a783          	lw	a5,0(a5)
    80002060:	00e787b3          	add	a5,a5,a4
    80002064:	00078067          	jr	a5
                __asm__ volatile ("ld %[x], 11 * 8(fp)" : [x] "=r"(sizeInBlocks));
    80002068:	05843783          	ld	a5,88(s0)
    8000206c:	faf43023          	sd	a5,-96(s0)
                uint64 address = (uint64)MemoryAllocator::mem_alloc(sizeInBlocks);
    80002070:	fa043503          	ld	a0,-96(s0)
    80002074:	fffff097          	auipc	ra,0xfffff
    80002078:	780080e7          	jalr	1920(ra) # 800017f4 <_ZN15MemoryAllocator9mem_allocEm>
                __asm__ volatile ("sd %[x], 10 * 8(fp)" : : [x]"r"(address));
    8000207c:	04a43823          	sd	a0,80(s0)
        w_sstatus(sstatus);
    80002080:	f9843783          	ld	a5,-104(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002084:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80002088:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    8000208c:	14179073          	csrw	sepc,a5
        __putc(scause + '0');
        printStringA("\n");
        *(int*)0x100000 = 0x5555;
    }

}
    80002090:	06813083          	ld	ra,104(sp)
    80002094:	06013403          	ld	s0,96(sp)
    80002098:	05813483          	ld	s1,88(sp)
    8000209c:	05013903          	ld	s2,80(sp)
    800020a0:	04813983          	ld	s3,72(sp)
    800020a4:	04013a03          	ld	s4,64(sp)
    800020a8:	03813a83          	ld	s5,56(sp)
    800020ac:	07010113          	addi	sp,sp,112
    800020b0:	00008067          	ret
                __asm__ volatile ("ld %[x], 11 * 8(fp)" : [x] "=r"(address));
    800020b4:	05843503          	ld	a0,88(s0)
                uint64 result = MemoryAllocator::mem_free(address);
    800020b8:	00000097          	auipc	ra,0x0
    800020bc:	850080e7          	jalr	-1968(ra) # 80001908 <_ZN15MemoryAllocator8mem_freeEPv>
                __asm__ volatile ("sd %[x], 10 * 8(fp)" : : [x]"r"(result));
    800020c0:	04a43823          	sd	a0,80(s0)
                break;
    800020c4:	fbdff06f          	j	80002080 <_ZN5Riscv20handleSupervisorTrapEv+0xcc>
                __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r" (handle));
    800020c8:	05843a03          	ld	s4,88(s0)
                __asm__ volatile ("ld %0, 12 * 8(fp)" : "=r" (start_routine));
    800020cc:	06043983          	ld	s3,96(s0)
                __asm__ volatile ("ld %0, 13 * 8(fp)" : "=r" (arg));
    800020d0:	06843a83          	ld	s5,104(s0)
                TCB* tcb = new TCB((void(*)(void*))start_routine, (void*)arg);
    800020d4:	03800513          	li	a0,56
    800020d8:	00000097          	auipc	ra,0x0
    800020dc:	b58080e7          	jalr	-1192(ra) # 80001c30 <_Znwm>
    800020e0:	00050493          	mv	s1,a0
    800020e4:	00098913          	mv	s2,s3
    800020e8:	01353023          	sd	s3,0(a0)
    800020ec:	01553423          	sd	s5,8(a0)
                                stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    800020f0:	00098a63          	beqz	s3,80002104 <_ZN5Riscv20handleSupervisorTrapEv+0x150>
    800020f4:	00002537          	lui	a0,0x2
    800020f8:	00000097          	auipc	ra,0x0
    800020fc:	b60080e7          	jalr	-1184(ra) # 80001c58 <_Znam>
    80002100:	0080006f          	j	80002108 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
    80002104:	00000513          	li	a0,0
                                blocked(false)
    80002108:	00a4b823          	sd	a0,16(s1)
                                context({body != nullptr ? (uint64)&threadWrapper : 0,
    8000210c:	02090e63          	beqz	s2,80002148 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
    80002110:	00008797          	auipc	a5,0x8
    80002114:	1807b783          	ld	a5,384(a5) # 8000a290 <_GLOBAL_OFFSET_TABLE_+0x8>
                                blocked(false)
    80002118:	00f4bc23          	sd	a5,24(s1)
                                          stack != nullptr ? (uint64)(stack + STACK_SIZE) : 0
    8000211c:	02050a63          	beqz	a0,80002150 <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
    80002120:	000027b7          	lui	a5,0x2
    80002124:	00f50533          	add	a0,a0,a5
                                blocked(false)
    80002128:	02a4b023          	sd	a0,32(s1)
    8000212c:	02048423          	sb	zero,40(s1)
    80002130:	020484a3          	sb	zero,41(s1)
        if (body != nullptr) Scheduler::put(this);
    80002134:	02090263          	beqz	s2,80002158 <_ZN5Riscv20handleSupervisorTrapEv+0x1a4>
    80002138:	00048513          	mv	a0,s1
    8000213c:	00000097          	auipc	ra,0x0
    80002140:	244080e7          	jalr	580(ra) # 80002380 <_ZN9Scheduler3putEP3TCB>
    80002144:	0140006f          	j	80002158 <_ZN5Riscv20handleSupervisorTrapEv+0x1a4>
                                context({body != nullptr ? (uint64)&threadWrapper : 0,
    80002148:	00000793          	li	a5,0
    8000214c:	fcdff06f          	j	80002118 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
                                          stack != nullptr ? (uint64)(stack + STACK_SIZE) : 0
    80002150:	00000513          	li	a0,0
    80002154:	fd5ff06f          	j	80002128 <_ZN5Riscv20handleSupervisorTrapEv+0x174>
                *((TCB**)handle) = tcb;
    80002158:	009a3023          	sd	s1,0(s4)
                __asm__ volatile ("sd %0, 10 * 8(fp)" : : "r" (0x0));
    8000215c:	00000793          	li	a5,0
    80002160:	04f43823          	sd	a5,80(s0)
                break;
    80002164:	f1dff06f          	j	80002080 <_ZN5Riscv20handleSupervisorTrapEv+0xcc>
                __asm__ volatile ("sd %0, 10 * 8(fp)" : : "r" (0x0));
    80002168:	00000793          	li	a5,0
    8000216c:	04f43823          	sd	a5,80(s0)
                TCB::running->setFinished(true);
    80002170:	00008797          	auipc	a5,0x8
    80002174:	1407b783          	ld	a5,320(a5) # 8000a2b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002178:	0007b783          	ld	a5,0(a5)
    void setFinished(bool val) { finished = val; }
    8000217c:	00100713          	li	a4,1
    80002180:	02e78423          	sb	a4,40(a5)
                TCB::dispatch();
    80002184:	fffff097          	auipc	ra,0xfffff
    80002188:	5bc080e7          	jalr	1468(ra) # 80001740 <_ZN3TCB8dispatchEv>
                break;
    8000218c:	ef5ff06f          	j	80002080 <_ZN5Riscv20handleSupervisorTrapEv+0xcc>
                TCB::dispatch();
    80002190:	fffff097          	auipc	ra,0xfffff
    80002194:	5b0080e7          	jalr	1456(ra) # 80001740 <_ZN3TCB8dispatchEv>
                break;
    80002198:	ee9ff06f          	j	80002080 <_ZN5Riscv20handleSupervisorTrapEv+0xcc>
                __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r" (handle));
    8000219c:	05843483          	ld	s1,88(s0)
                __asm__ volatile ("ld %0, 12 * 8(fp)" : "=r" (init));
    800021a0:	06043503          	ld	a0,96(s0)
                KernelSem* sem = KernelSem::sem_open(init);
    800021a4:	0005051b          	sext.w	a0,a0
    800021a8:	fffff097          	auipc	ra,0xfffff
    800021ac:	2e4080e7          	jalr	740(ra) # 8000148c <_ZN9KernelSem8sem_openEi>
                *((KernelSem**)handle) = sem;
    800021b0:	00a4b023          	sd	a0,0(s1)
                __asm__ volatile ("sd %0, 10 * 8(fp)" : : "r" (0x0));
    800021b4:	00000793          	li	a5,0
    800021b8:	04f43823          	sd	a5,80(s0)
                break;
    800021bc:	ec5ff06f          	j	80002080 <_ZN5Riscv20handleSupervisorTrapEv+0xcc>
                __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r" (handle));
    800021c0:	05843503          	ld	a0,88(s0)
                handle->sem_close();
    800021c4:	fffff097          	auipc	ra,0xfffff
    800021c8:	30c080e7          	jalr	780(ra) # 800014d0 <_ZN9KernelSem9sem_closeEv>
                __asm__ volatile ("sd %0, 10 * 8(fp)" : : "r" (0x0));
    800021cc:	00000793          	li	a5,0
    800021d0:	04f43823          	sd	a5,80(s0)
                break;
    800021d4:	eadff06f          	j	80002080 <_ZN5Riscv20handleSupervisorTrapEv+0xcc>
                __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r" (handle));
    800021d8:	05843503          	ld	a0,88(s0)
                handle->wait(1);
    800021dc:	00100593          	li	a1,1
    800021e0:	fffff097          	auipc	ra,0xfffff
    800021e4:	364080e7          	jalr	868(ra) # 80001544 <_ZN9KernelSem4waitEm>
                __asm__ volatile ("sd %0, 10 * 8(fp)" : : "r" (0x0));
    800021e8:	00000793          	li	a5,0
    800021ec:	04f43823          	sd	a5,80(s0)
                break;
    800021f0:	e91ff06f          	j	80002080 <_ZN5Riscv20handleSupervisorTrapEv+0xcc>
                __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r" (handle));
    800021f4:	05843503          	ld	a0,88(s0)
                handle->signal(1);
    800021f8:	00100593          	li	a1,1
    800021fc:	fffff097          	auipc	ra,0xfffff
    80002200:	400080e7          	jalr	1024(ra) # 800015fc <_ZN9KernelSem6signalEm>
                __asm__ volatile ("sd %0, 10 * 8(fp)" : : "r" (0x0));
    80002204:	00000793          	li	a5,0
    80002208:	04f43823          	sd	a5,80(s0)
                break;
    8000220c:	e75ff06f          	j	80002080 <_ZN5Riscv20handleSupervisorTrapEv+0xcc>
                __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r" (handle));
    80002210:	05843503          	ld	a0,88(s0)
                __asm__ volatile ("ld %0, 12 * 8(fp)" : "=r" (val));
    80002214:	06043583          	ld	a1,96(s0)
                handle->wait(val);
    80002218:	fffff097          	auipc	ra,0xfffff
    8000221c:	32c080e7          	jalr	812(ra) # 80001544 <_ZN9KernelSem4waitEm>
                __asm__ volatile ("sd %0, 10 * 8(fp)" : : "r" (0x0));
    80002220:	00000793          	li	a5,0
    80002224:	04f43823          	sd	a5,80(s0)
                break;
    80002228:	e59ff06f          	j	80002080 <_ZN5Riscv20handleSupervisorTrapEv+0xcc>
                __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r" (handle));
    8000222c:	05843503          	ld	a0,88(s0)
                __asm__ volatile ("ld %0, 12 * 8(fp)" : "=r" (val));
    80002230:	06043583          	ld	a1,96(s0)
                handle->signal(val);
    80002234:	fffff097          	auipc	ra,0xfffff
    80002238:	3c8080e7          	jalr	968(ra) # 800015fc <_ZN9KernelSem6signalEm>
                __asm__ volatile ("sd %0, 10 * 8(fp)" : : "r" (0x0));
    8000223c:	00000793          	li	a5,0
    80002240:	04f43823          	sd	a5,80(s0)
                break;
    80002244:	e3dff06f          	j	80002080 <_ZN5Riscv20handleSupervisorTrapEv+0xcc>
                char c = __getc();
    80002248:	00006097          	auipc	ra,0x6
    8000224c:	a80080e7          	jalr	-1408(ra) # 80007cc8 <__getc>
                __asm__ volatile ("sd %0, 10 * 8(fp)" : : "r" (c));
    80002250:	04a43823          	sd	a0,80(s0)
                break;
    80002254:	e2dff06f          	j	80002080 <_ZN5Riscv20handleSupervisorTrapEv+0xcc>
                __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r" (c));
    80002258:	05843503          	ld	a0,88(s0)
                __putc(c);
    8000225c:	0ff57513          	andi	a0,a0,255
    80002260:	00006097          	auipc	ra,0x6
    80002264:	a2c080e7          	jalr	-1492(ra) # 80007c8c <__putc>
                break;
    80002268:	e19ff06f          	j	80002080 <_ZN5Riscv20handleSupervisorTrapEv+0xcc>
        console_handler();
    8000226c:	00006097          	auipc	ra,0x6
    80002270:	a94080e7          	jalr	-1388(ra) # 80007d00 <console_handler>
    80002274:	e1dff06f          	j	80002090 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
        printStringA("error:");
    80002278:	00006517          	auipc	a0,0x6
    8000227c:	da850513          	addi	a0,a0,-600 # 80008020 <CONSOLE_STATUS+0x10>
    80002280:	00000097          	auipc	ra,0x0
    80002284:	1a0080e7          	jalr	416(ra) # 80002420 <_Z12printStringAPKc>
        __putc(scause + '0');
    80002288:	0304851b          	addiw	a0,s1,48
    8000228c:	0ff57513          	andi	a0,a0,255
    80002290:	00006097          	auipc	ra,0x6
    80002294:	9fc080e7          	jalr	-1540(ra) # 80007c8c <__putc>
        printStringA("\n");
    80002298:	00006517          	auipc	a0,0x6
    8000229c:	21850513          	addi	a0,a0,536 # 800084b0 <_ZZ13printIntegerAlE6digits+0x378>
    800022a0:	00000097          	auipc	ra,0x0
    800022a4:	180080e7          	jalr	384(ra) # 80002420 <_Z12printStringAPKc>
        *(int*)0x100000 = 0x5555;
    800022a8:	00100737          	lui	a4,0x100
    800022ac:	000057b7          	lui	a5,0x5
    800022b0:	5557879b          	addiw	a5,a5,1365
    800022b4:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
}
    800022b8:	dd9ff06f          	j	80002090 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
    800022bc:	00050913          	mv	s2,a0
                TCB* tcb = new TCB((void(*)(void*))start_routine, (void*)arg);
    800022c0:	00048513          	mv	a0,s1
    800022c4:	00000097          	auipc	ra,0x0
    800022c8:	9bc080e7          	jalr	-1604(ra) # 80001c80 <_ZdlPv>
    800022cc:	00090513          	mv	a0,s2
    800022d0:	00009097          	auipc	ra,0x9
    800022d4:	188080e7          	jalr	392(ra) # 8000b458 <_Unwind_Resume>

00000000800022d8 <_Z41__static_initialization_and_destruction_0ii>:
    return readyCoroutineQueue.removeFirst();
}

void Scheduler::put(TCB *tcb) {
    readyCoroutineQueue.addLast(tcb);
}
    800022d8:	ff010113          	addi	sp,sp,-16
    800022dc:	00813423          	sd	s0,8(sp)
    800022e0:	01010413          	addi	s0,sp,16
    800022e4:	00100793          	li	a5,1
    800022e8:	00f50863          	beq	a0,a5,800022f8 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800022ec:	00813403          	ld	s0,8(sp)
    800022f0:	01010113          	addi	sp,sp,16
    800022f4:	00008067          	ret
    800022f8:	000107b7          	lui	a5,0x10
    800022fc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002300:	fef596e3          	bne	a1,a5,800022ec <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80002304:	00008797          	auipc	a5,0x8
    80002308:	02478793          	addi	a5,a5,36 # 8000a328 <_ZN9Scheduler19readyCoroutineQueueE>
    8000230c:	0007b023          	sd	zero,0(a5)
    80002310:	0007b423          	sd	zero,8(a5)
    80002314:	fd9ff06f          	j	800022ec <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002318 <_ZN9Scheduler3getEv>:
TCB *Scheduler::get() {
    80002318:	fe010113          	addi	sp,sp,-32
    8000231c:	00113c23          	sd	ra,24(sp)
    80002320:	00813823          	sd	s0,16(sp)
    80002324:	00913423          	sd	s1,8(sp)
    80002328:	02010413          	addi	s0,sp,32
        if (!head) return nullptr;
    8000232c:	00008517          	auipc	a0,0x8
    80002330:	ffc53503          	ld	a0,-4(a0) # 8000a328 <_ZN9Scheduler19readyCoroutineQueueE>
    80002334:	04050263          	beqz	a0,80002378 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80002338:	00853783          	ld	a5,8(a0)
    8000233c:	00008717          	auipc	a4,0x8
    80002340:	fef73623          	sd	a5,-20(a4) # 8000a328 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) tail = nullptr;
    80002344:	02078463          	beqz	a5,8000236c <_ZN9Scheduler3getEv+0x54>
        T * value = elem->data;
    80002348:	00053483          	ld	s1,0(a0)
        delete elem;
    8000234c:	00000097          	auipc	ra,0x0
    80002350:	934080e7          	jalr	-1740(ra) # 80001c80 <_ZdlPv>
}
    80002354:	00048513          	mv	a0,s1
    80002358:	01813083          	ld	ra,24(sp)
    8000235c:	01013403          	ld	s0,16(sp)
    80002360:	00813483          	ld	s1,8(sp)
    80002364:	02010113          	addi	sp,sp,32
    80002368:	00008067          	ret
        if (!head) tail = nullptr;
    8000236c:	00008797          	auipc	a5,0x8
    80002370:	fc07b223          	sd	zero,-60(a5) # 8000a330 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002374:	fd5ff06f          	j	80002348 <_ZN9Scheduler3getEv+0x30>
        if (!head) return nullptr;
    80002378:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    8000237c:	fd9ff06f          	j	80002354 <_ZN9Scheduler3getEv+0x3c>

0000000080002380 <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB *tcb) {
    80002380:	fe010113          	addi	sp,sp,-32
    80002384:	00113c23          	sd	ra,24(sp)
    80002388:	00813823          	sd	s0,16(sp)
    8000238c:	00913423          	sd	s1,8(sp)
    80002390:	02010413          	addi	s0,sp,32
    80002394:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, nullptr);
    80002398:	01000513          	li	a0,16
    8000239c:	00000097          	auipc	ra,0x0
    800023a0:	894080e7          	jalr	-1900(ra) # 80001c30 <_Znwm>
        Elem(T *data, Elem* next) : data(data), next(next) {}
    800023a4:	00953023          	sd	s1,0(a0)
    800023a8:	00053423          	sd	zero,8(a0)
        if (tail) {
    800023ac:	00008797          	auipc	a5,0x8
    800023b0:	f847b783          	ld	a5,-124(a5) # 8000a330 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800023b4:	02078263          	beqz	a5,800023d8 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    800023b8:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800023bc:	00008797          	auipc	a5,0x8
    800023c0:	f6a7ba23          	sd	a0,-140(a5) # 8000a330 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
}
    800023c4:	01813083          	ld	ra,24(sp)
    800023c8:	01013403          	ld	s0,16(sp)
    800023cc:	00813483          	ld	s1,8(sp)
    800023d0:	02010113          	addi	sp,sp,32
    800023d4:	00008067          	ret
            head = tail = elem;
    800023d8:	00008797          	auipc	a5,0x8
    800023dc:	f5078793          	addi	a5,a5,-176 # 8000a328 <_ZN9Scheduler19readyCoroutineQueueE>
    800023e0:	00a7b423          	sd	a0,8(a5)
    800023e4:	00a7b023          	sd	a0,0(a5)
    800023e8:	fddff06f          	j	800023c4 <_ZN9Scheduler3putEP3TCB+0x44>

00000000800023ec <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    800023ec:	ff010113          	addi	sp,sp,-16
    800023f0:	00113423          	sd	ra,8(sp)
    800023f4:	00813023          	sd	s0,0(sp)
    800023f8:	01010413          	addi	s0,sp,16
    800023fc:	000105b7          	lui	a1,0x10
    80002400:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002404:	00100513          	li	a0,1
    80002408:	00000097          	auipc	ra,0x0
    8000240c:	ed0080e7          	jalr	-304(ra) # 800022d8 <_Z41__static_initialization_and_destruction_0ii>
    80002410:	00813083          	ld	ra,8(sp)
    80002414:	00013403          	ld	s0,0(sp)
    80002418:	01010113          	addi	sp,sp,16
    8000241c:	00008067          	ret

0000000080002420 <_Z12printStringAPKc>:
#include "../h/print.hpp"
#include "../lib/console.h"

void printStringA (char const *string) {
    80002420:	fe010113          	addi	sp,sp,-32
    80002424:	00113c23          	sd	ra,24(sp)
    80002428:	00813823          	sd	s0,16(sp)
    8000242c:	00913423          	sd	s1,8(sp)
    80002430:	02010413          	addi	s0,sp,32
    80002434:	00050493          	mv	s1,a0
    while (*string != '\0') {
    80002438:	0004c503          	lbu	a0,0(s1)
    8000243c:	00050a63          	beqz	a0,80002450 <_Z12printStringAPKc+0x30>
        __putc(*string);
    80002440:	00006097          	auipc	ra,0x6
    80002444:	84c080e7          	jalr	-1972(ra) # 80007c8c <__putc>
        string++;
    80002448:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    8000244c:	fedff06f          	j	80002438 <_Z12printStringAPKc+0x18>
    }
}
    80002450:	01813083          	ld	ra,24(sp)
    80002454:	01013403          	ld	s0,16(sp)
    80002458:	00813483          	ld	s1,8(sp)
    8000245c:	02010113          	addi	sp,sp,32
    80002460:	00008067          	ret

0000000080002464 <_Z13printIntegerAl>:

void printIntegerA (long integer) {
    80002464:	fd010113          	addi	sp,sp,-48
    80002468:	02113423          	sd	ra,40(sp)
    8000246c:	02813023          	sd	s0,32(sp)
    80002470:	00913c23          	sd	s1,24(sp)
    80002474:	03010413          	addi	s0,sp,48
    char buf[16];
    int i, neg;
    long x;

    neg = 0;
    if (integer < 0) {
    80002478:	06054c63          	bltz	a0,800024f0 <_Z13printIntegerAl+0x8c>
    neg = 0;
    8000247c:	00000593          	li	a1,0
        x = -integer;
    } else {
        x = integer;
    }

    i = 0;
    80002480:	00000493          	li	s1,0
    do {
        buf[i++] =  digits[x % 10];
    80002484:	00a00713          	li	a4,10
    80002488:	02e56633          	rem	a2,a0,a4
    8000248c:	00048693          	mv	a3,s1
    80002490:	0014849b          	addiw	s1,s1,1
    80002494:	00006797          	auipc	a5,0x6
    80002498:	ca478793          	addi	a5,a5,-860 # 80008138 <_ZZ13printIntegerAlE6digits>
    8000249c:	00c787b3          	add	a5,a5,a2
    800024a0:	0007c603          	lbu	a2,0(a5)
    800024a4:	fe040793          	addi	a5,s0,-32
    800024a8:	00d787b3          	add	a5,a5,a3
    800024ac:	fec78823          	sb	a2,-16(a5)
    } while ( (x /= 10) != 0);
    800024b0:	02e54533          	div	a0,a0,a4
    800024b4:	fc0518e3          	bnez	a0,80002484 <_Z13printIntegerAl+0x20>

    if (neg)
    800024b8:	00058c63          	beqz	a1,800024d0 <_Z13printIntegerAl+0x6c>
        buf[i++] = '-';
    800024bc:	fe040793          	addi	a5,s0,-32
    800024c0:	009784b3          	add	s1,a5,s1
    800024c4:	02d00793          	li	a5,45
    800024c8:	fef48823          	sb	a5,-16(s1)
    800024cc:	0026849b          	addiw	s1,a3,2

    while (--i >= 0)
    800024d0:	fff4849b          	addiw	s1,s1,-1
    800024d4:	0204c463          	bltz	s1,800024fc <_Z13printIntegerAl+0x98>
        __putc(buf[i]);
    800024d8:	fe040793          	addi	a5,s0,-32
    800024dc:	009787b3          	add	a5,a5,s1
    800024e0:	ff07c503          	lbu	a0,-16(a5)
    800024e4:	00005097          	auipc	ra,0x5
    800024e8:	7a8080e7          	jalr	1960(ra) # 80007c8c <__putc>
    800024ec:	fe5ff06f          	j	800024d0 <_Z13printIntegerAl+0x6c>
        x = -integer;
    800024f0:	40a00533          	neg	a0,a0
        neg = 1;
    800024f4:	00100593          	li	a1,1
    800024f8:	f89ff06f          	j	80002480 <_Z13printIntegerAl+0x1c>

    800024fc:	02813083          	ld	ra,40(sp)
    80002500:	02013403          	ld	s0,32(sp)
    80002504:	01813483          	ld	s1,24(sp)
    80002508:	03010113          	addi	sp,sp,48
    8000250c:	00008067          	ret

0000000080002510 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002510:	fe010113          	addi	sp,sp,-32
    80002514:	00113c23          	sd	ra,24(sp)
    80002518:	00813823          	sd	s0,16(sp)
    8000251c:	00913423          	sd	s1,8(sp)
    80002520:	01213023          	sd	s2,0(sp)
    80002524:	02010413          	addi	s0,sp,32
    80002528:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000252c:	00000913          	li	s2,0
    80002530:	00c0006f          	j	8000253c <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x2d) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002534:	fffff097          	auipc	ra,0xfffff
    80002538:	dbc080e7          	jalr	-580(ra) # 800012f0 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x2d) {
    8000253c:	fffff097          	auipc	ra,0xfffff
    80002540:	f08080e7          	jalr	-248(ra) # 80001444 <_Z4getcv>
    80002544:	0005059b          	sext.w	a1,a0
    80002548:	02d00793          	li	a5,45
    8000254c:	02f58a63          	beq	a1,a5,80002580 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002550:	0084b503          	ld	a0,8(s1)
    80002554:	00003097          	auipc	ra,0x3
    80002558:	3f4080e7          	jalr	1012(ra) # 80005948 <_ZN6Buffer3putEi>
        i++;
    8000255c:	0019071b          	addiw	a4,s2,1
    80002560:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002564:	0004a683          	lw	a3,0(s1)
    80002568:	0026979b          	slliw	a5,a3,0x2
    8000256c:	00d787bb          	addw	a5,a5,a3
    80002570:	0017979b          	slliw	a5,a5,0x1
    80002574:	02f767bb          	remw	a5,a4,a5
    80002578:	fc0792e3          	bnez	a5,8000253c <_ZL16producerKeyboardPv+0x2c>
    8000257c:	fb9ff06f          	j	80002534 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002580:	00100793          	li	a5,1
    80002584:	00008717          	auipc	a4,0x8
    80002588:	daf72a23          	sw	a5,-588(a4) # 8000a338 <_ZL9threadEnd>
    data->buffer->put('!');
    8000258c:	02100593          	li	a1,33
    80002590:	0084b503          	ld	a0,8(s1)
    80002594:	00003097          	auipc	ra,0x3
    80002598:	3b4080e7          	jalr	948(ra) # 80005948 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    8000259c:	0104b503          	ld	a0,16(s1)
    800025a0:	fffff097          	auipc	ra,0xfffff
    800025a4:	df0080e7          	jalr	-528(ra) # 80001390 <_Z10sem_signalP9KernelSem>
}
    800025a8:	01813083          	ld	ra,24(sp)
    800025ac:	01013403          	ld	s0,16(sp)
    800025b0:	00813483          	ld	s1,8(sp)
    800025b4:	00013903          	ld	s2,0(sp)
    800025b8:	02010113          	addi	sp,sp,32
    800025bc:	00008067          	ret

00000000800025c0 <_ZL8producerPv>:

static void producer(void *arg) {
    800025c0:	fe010113          	addi	sp,sp,-32
    800025c4:	00113c23          	sd	ra,24(sp)
    800025c8:	00813823          	sd	s0,16(sp)
    800025cc:	00913423          	sd	s1,8(sp)
    800025d0:	01213023          	sd	s2,0(sp)
    800025d4:	02010413          	addi	s0,sp,32
    800025d8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800025dc:	00000913          	li	s2,0
    800025e0:	00c0006f          	j	800025ec <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800025e4:	fffff097          	auipc	ra,0xfffff
    800025e8:	d0c080e7          	jalr	-756(ra) # 800012f0 <_Z15thread_dispatchv>
    while (!threadEnd) {
    800025ec:	00008797          	auipc	a5,0x8
    800025f0:	d4c7a783          	lw	a5,-692(a5) # 8000a338 <_ZL9threadEnd>
    800025f4:	02079e63          	bnez	a5,80002630 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800025f8:	0004a583          	lw	a1,0(s1)
    800025fc:	0305859b          	addiw	a1,a1,48
    80002600:	0084b503          	ld	a0,8(s1)
    80002604:	00003097          	auipc	ra,0x3
    80002608:	344080e7          	jalr	836(ra) # 80005948 <_ZN6Buffer3putEi>
        i++;
    8000260c:	0019071b          	addiw	a4,s2,1
    80002610:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002614:	0004a683          	lw	a3,0(s1)
    80002618:	0026979b          	slliw	a5,a3,0x2
    8000261c:	00d787bb          	addw	a5,a5,a3
    80002620:	0017979b          	slliw	a5,a5,0x1
    80002624:	02f767bb          	remw	a5,a4,a5
    80002628:	fc0792e3          	bnez	a5,800025ec <_ZL8producerPv+0x2c>
    8000262c:	fb9ff06f          	j	800025e4 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002630:	0104b503          	ld	a0,16(s1)
    80002634:	fffff097          	auipc	ra,0xfffff
    80002638:	d5c080e7          	jalr	-676(ra) # 80001390 <_Z10sem_signalP9KernelSem>
}
    8000263c:	01813083          	ld	ra,24(sp)
    80002640:	01013403          	ld	s0,16(sp)
    80002644:	00813483          	ld	s1,8(sp)
    80002648:	00013903          	ld	s2,0(sp)
    8000264c:	02010113          	addi	sp,sp,32
    80002650:	00008067          	ret

0000000080002654 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002654:	fd010113          	addi	sp,sp,-48
    80002658:	02113423          	sd	ra,40(sp)
    8000265c:	02813023          	sd	s0,32(sp)
    80002660:	00913c23          	sd	s1,24(sp)
    80002664:	01213823          	sd	s2,16(sp)
    80002668:	01313423          	sd	s3,8(sp)
    8000266c:	03010413          	addi	s0,sp,48
    80002670:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002674:	00000993          	li	s3,0
    80002678:	01c0006f          	j	80002694 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    8000267c:	fffff097          	auipc	ra,0xfffff
    80002680:	c74080e7          	jalr	-908(ra) # 800012f0 <_Z15thread_dispatchv>
    80002684:	0500006f          	j	800026d4 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002688:	00a00513          	li	a0,10
    8000268c:	fffff097          	auipc	ra,0xfffff
    80002690:	ddc080e7          	jalr	-548(ra) # 80001468 <_Z4putcc>
    while (!threadEnd) {
    80002694:	00008797          	auipc	a5,0x8
    80002698:	ca47a783          	lw	a5,-860(a5) # 8000a338 <_ZL9threadEnd>
    8000269c:	06079063          	bnez	a5,800026fc <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    800026a0:	00893503          	ld	a0,8(s2)
    800026a4:	00003097          	auipc	ra,0x3
    800026a8:	334080e7          	jalr	820(ra) # 800059d8 <_ZN6Buffer3getEv>
        i++;
    800026ac:	0019849b          	addiw	s1,s3,1
    800026b0:	0004899b          	sext.w	s3,s1
        putc(key);
    800026b4:	0ff57513          	andi	a0,a0,255
    800026b8:	fffff097          	auipc	ra,0xfffff
    800026bc:	db0080e7          	jalr	-592(ra) # 80001468 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800026c0:	00092703          	lw	a4,0(s2)
    800026c4:	0027179b          	slliw	a5,a4,0x2
    800026c8:	00e787bb          	addw	a5,a5,a4
    800026cc:	02f4e7bb          	remw	a5,s1,a5
    800026d0:	fa0786e3          	beqz	a5,8000267c <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    800026d4:	05000793          	li	a5,80
    800026d8:	02f4e4bb          	remw	s1,s1,a5
    800026dc:	fa049ce3          	bnez	s1,80002694 <_ZL8consumerPv+0x40>
    800026e0:	fa9ff06f          	j	80002688 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800026e4:	00893503          	ld	a0,8(s2)
    800026e8:	00003097          	auipc	ra,0x3
    800026ec:	2f0080e7          	jalr	752(ra) # 800059d8 <_ZN6Buffer3getEv>
        putc(key);
    800026f0:	0ff57513          	andi	a0,a0,255
    800026f4:	fffff097          	auipc	ra,0xfffff
    800026f8:	d74080e7          	jalr	-652(ra) # 80001468 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800026fc:	00893503          	ld	a0,8(s2)
    80002700:	00003097          	auipc	ra,0x3
    80002704:	364080e7          	jalr	868(ra) # 80005a64 <_ZN6Buffer6getCntEv>
    80002708:	fca04ee3          	bgtz	a0,800026e4 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    8000270c:	01093503          	ld	a0,16(s2)
    80002710:	fffff097          	auipc	ra,0xfffff
    80002714:	c80080e7          	jalr	-896(ra) # 80001390 <_Z10sem_signalP9KernelSem>
}
    80002718:	02813083          	ld	ra,40(sp)
    8000271c:	02013403          	ld	s0,32(sp)
    80002720:	01813483          	ld	s1,24(sp)
    80002724:	01013903          	ld	s2,16(sp)
    80002728:	00813983          	ld	s3,8(sp)
    8000272c:	03010113          	addi	sp,sp,48
    80002730:	00008067          	ret

0000000080002734 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002734:	f9010113          	addi	sp,sp,-112
    80002738:	06113423          	sd	ra,104(sp)
    8000273c:	06813023          	sd	s0,96(sp)
    80002740:	04913c23          	sd	s1,88(sp)
    80002744:	05213823          	sd	s2,80(sp)
    80002748:	05313423          	sd	s3,72(sp)
    8000274c:	05413023          	sd	s4,64(sp)
    80002750:	03513c23          	sd	s5,56(sp)
    80002754:	03613823          	sd	s6,48(sp)
    80002758:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    8000275c:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002760:	00006517          	auipc	a0,0x6
    80002764:	9e850513          	addi	a0,a0,-1560 # 80008148 <_ZZ13printIntegerAlE6digits+0x10>
    80002768:	00002097          	auipc	ra,0x2
    8000276c:	220080e7          	jalr	544(ra) # 80004988 <_Z11printStringPKc>
    getString(input, 30);
    80002770:	01e00593          	li	a1,30
    80002774:	fa040493          	addi	s1,s0,-96
    80002778:	00048513          	mv	a0,s1
    8000277c:	00002097          	auipc	ra,0x2
    80002780:	294080e7          	jalr	660(ra) # 80004a10 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002784:	00048513          	mv	a0,s1
    80002788:	00002097          	auipc	ra,0x2
    8000278c:	360080e7          	jalr	864(ra) # 80004ae8 <_Z11stringToIntPKc>
    80002790:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002794:	00006517          	auipc	a0,0x6
    80002798:	9d450513          	addi	a0,a0,-1580 # 80008168 <_ZZ13printIntegerAlE6digits+0x30>
    8000279c:	00002097          	auipc	ra,0x2
    800027a0:	1ec080e7          	jalr	492(ra) # 80004988 <_Z11printStringPKc>
    getString(input, 30);
    800027a4:	01e00593          	li	a1,30
    800027a8:	00048513          	mv	a0,s1
    800027ac:	00002097          	auipc	ra,0x2
    800027b0:	264080e7          	jalr	612(ra) # 80004a10 <_Z9getStringPci>
    n = stringToInt(input);
    800027b4:	00048513          	mv	a0,s1
    800027b8:	00002097          	auipc	ra,0x2
    800027bc:	330080e7          	jalr	816(ra) # 80004ae8 <_Z11stringToIntPKc>
    800027c0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800027c4:	00006517          	auipc	a0,0x6
    800027c8:	9c450513          	addi	a0,a0,-1596 # 80008188 <_ZZ13printIntegerAlE6digits+0x50>
    800027cc:	00002097          	auipc	ra,0x2
    800027d0:	1bc080e7          	jalr	444(ra) # 80004988 <_Z11printStringPKc>
    800027d4:	00000613          	li	a2,0
    800027d8:	00a00593          	li	a1,10
    800027dc:	00090513          	mv	a0,s2
    800027e0:	00002097          	auipc	ra,0x2
    800027e4:	358080e7          	jalr	856(ra) # 80004b38 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800027e8:	00006517          	auipc	a0,0x6
    800027ec:	9b850513          	addi	a0,a0,-1608 # 800081a0 <_ZZ13printIntegerAlE6digits+0x68>
    800027f0:	00002097          	auipc	ra,0x2
    800027f4:	198080e7          	jalr	408(ra) # 80004988 <_Z11printStringPKc>
    800027f8:	00000613          	li	a2,0
    800027fc:	00a00593          	li	a1,10
    80002800:	00048513          	mv	a0,s1
    80002804:	00002097          	auipc	ra,0x2
    80002808:	334080e7          	jalr	820(ra) # 80004b38 <_Z8printIntiii>
    printString(".\n");
    8000280c:	00006517          	auipc	a0,0x6
    80002810:	9ac50513          	addi	a0,a0,-1620 # 800081b8 <_ZZ13printIntegerAlE6digits+0x80>
    80002814:	00002097          	auipc	ra,0x2
    80002818:	174080e7          	jalr	372(ra) # 80004988 <_Z11printStringPKc>
    if(threadNum > n) {
    8000281c:	0324c463          	blt	s1,s2,80002844 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80002820:	03205c63          	blez	s2,80002858 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80002824:	03800513          	li	a0,56
    80002828:	fffff097          	auipc	ra,0xfffff
    8000282c:	408080e7          	jalr	1032(ra) # 80001c30 <_Znwm>
    80002830:	00050a13          	mv	s4,a0
    80002834:	00048593          	mv	a1,s1
    80002838:	00003097          	auipc	ra,0x3
    8000283c:	074080e7          	jalr	116(ra) # 800058ac <_ZN6BufferC1Ei>
    80002840:	0300006f          	j	80002870 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80002844:	00006517          	auipc	a0,0x6
    80002848:	97c50513          	addi	a0,a0,-1668 # 800081c0 <_ZZ13printIntegerAlE6digits+0x88>
    8000284c:	00002097          	auipc	ra,0x2
    80002850:	13c080e7          	jalr	316(ra) # 80004988 <_Z11printStringPKc>
        return;
    80002854:	0140006f          	j	80002868 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80002858:	00006517          	auipc	a0,0x6
    8000285c:	9a850513          	addi	a0,a0,-1624 # 80008200 <_ZZ13printIntegerAlE6digits+0xc8>
    80002860:	00002097          	auipc	ra,0x2
    80002864:	128080e7          	jalr	296(ra) # 80004988 <_Z11printStringPKc>
        return;
    80002868:	000b0113          	mv	sp,s6
    8000286c:	1500006f          	j	800029bc <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80002870:	00000593          	li	a1,0
    80002874:	00008517          	auipc	a0,0x8
    80002878:	acc50513          	addi	a0,a0,-1332 # 8000a340 <_ZL10waitForAll>
    8000287c:	fffff097          	auipc	ra,0xfffff
    80002880:	a94080e7          	jalr	-1388(ra) # 80001310 <_Z8sem_openPP9KernelSemm>
    thread_t threads[threadNum];
    80002884:	00391793          	slli	a5,s2,0x3
    80002888:	00f78793          	addi	a5,a5,15
    8000288c:	ff07f793          	andi	a5,a5,-16
    80002890:	40f10133          	sub	sp,sp,a5
    80002894:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80002898:	0019071b          	addiw	a4,s2,1
    8000289c:	00171793          	slli	a5,a4,0x1
    800028a0:	00e787b3          	add	a5,a5,a4
    800028a4:	00379793          	slli	a5,a5,0x3
    800028a8:	00f78793          	addi	a5,a5,15
    800028ac:	ff07f793          	andi	a5,a5,-16
    800028b0:	40f10133          	sub	sp,sp,a5
    800028b4:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    800028b8:	00191613          	slli	a2,s2,0x1
    800028bc:	012607b3          	add	a5,a2,s2
    800028c0:	00379793          	slli	a5,a5,0x3
    800028c4:	00f987b3          	add	a5,s3,a5
    800028c8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800028cc:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800028d0:	00008717          	auipc	a4,0x8
    800028d4:	a7073703          	ld	a4,-1424(a4) # 8000a340 <_ZL10waitForAll>
    800028d8:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800028dc:	00078613          	mv	a2,a5
    800028e0:	00000597          	auipc	a1,0x0
    800028e4:	d7458593          	addi	a1,a1,-652 # 80002654 <_ZL8consumerPv>
    800028e8:	f9840513          	addi	a0,s0,-104
    800028ec:	fffff097          	auipc	ra,0xfffff
    800028f0:	9a8080e7          	jalr	-1624(ra) # 80001294 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800028f4:	00000493          	li	s1,0
    800028f8:	0280006f          	j	80002920 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800028fc:	00000597          	auipc	a1,0x0
    80002900:	c1458593          	addi	a1,a1,-1004 # 80002510 <_ZL16producerKeyboardPv>
                      data + i);
    80002904:	00179613          	slli	a2,a5,0x1
    80002908:	00f60633          	add	a2,a2,a5
    8000290c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80002910:	00c98633          	add	a2,s3,a2
    80002914:	fffff097          	auipc	ra,0xfffff
    80002918:	980080e7          	jalr	-1664(ra) # 80001294 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000291c:	0014849b          	addiw	s1,s1,1
    80002920:	0524d263          	bge	s1,s2,80002964 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80002924:	00149793          	slli	a5,s1,0x1
    80002928:	009787b3          	add	a5,a5,s1
    8000292c:	00379793          	slli	a5,a5,0x3
    80002930:	00f987b3          	add	a5,s3,a5
    80002934:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80002938:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    8000293c:	00008717          	auipc	a4,0x8
    80002940:	a0473703          	ld	a4,-1532(a4) # 8000a340 <_ZL10waitForAll>
    80002944:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80002948:	00048793          	mv	a5,s1
    8000294c:	00349513          	slli	a0,s1,0x3
    80002950:	00aa8533          	add	a0,s5,a0
    80002954:	fa9054e3          	blez	s1,800028fc <_Z22producerConsumer_C_APIv+0x1c8>
    80002958:	00000597          	auipc	a1,0x0
    8000295c:	c6858593          	addi	a1,a1,-920 # 800025c0 <_ZL8producerPv>
    80002960:	fa5ff06f          	j	80002904 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80002964:	fffff097          	auipc	ra,0xfffff
    80002968:	98c080e7          	jalr	-1652(ra) # 800012f0 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    8000296c:	00000493          	li	s1,0
    80002970:	00994e63          	blt	s2,s1,8000298c <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80002974:	00008517          	auipc	a0,0x8
    80002978:	9cc53503          	ld	a0,-1588(a0) # 8000a340 <_ZL10waitForAll>
    8000297c:	fffff097          	auipc	ra,0xfffff
    80002980:	9ec080e7          	jalr	-1556(ra) # 80001368 <_Z8sem_waitP9KernelSem>
    for (int i = 0; i <= threadNum; i++) {
    80002984:	0014849b          	addiw	s1,s1,1
    80002988:	fe9ff06f          	j	80002970 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    8000298c:	00008517          	auipc	a0,0x8
    80002990:	9b453503          	ld	a0,-1612(a0) # 8000a340 <_ZL10waitForAll>
    80002994:	fffff097          	auipc	ra,0xfffff
    80002998:	9ac080e7          	jalr	-1620(ra) # 80001340 <_Z9sem_closeP9KernelSem>
    delete buffer;
    8000299c:	000a0e63          	beqz	s4,800029b8 <_Z22producerConsumer_C_APIv+0x284>
    800029a0:	000a0513          	mv	a0,s4
    800029a4:	00003097          	auipc	ra,0x3
    800029a8:	148080e7          	jalr	328(ra) # 80005aec <_ZN6BufferD1Ev>
    800029ac:	000a0513          	mv	a0,s4
    800029b0:	fffff097          	auipc	ra,0xfffff
    800029b4:	2d0080e7          	jalr	720(ra) # 80001c80 <_ZdlPv>
    800029b8:	000b0113          	mv	sp,s6

}
    800029bc:	f9040113          	addi	sp,s0,-112
    800029c0:	06813083          	ld	ra,104(sp)
    800029c4:	06013403          	ld	s0,96(sp)
    800029c8:	05813483          	ld	s1,88(sp)
    800029cc:	05013903          	ld	s2,80(sp)
    800029d0:	04813983          	ld	s3,72(sp)
    800029d4:	04013a03          	ld	s4,64(sp)
    800029d8:	03813a83          	ld	s5,56(sp)
    800029dc:	03013b03          	ld	s6,48(sp)
    800029e0:	07010113          	addi	sp,sp,112
    800029e4:	00008067          	ret
    800029e8:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800029ec:	000a0513          	mv	a0,s4
    800029f0:	fffff097          	auipc	ra,0xfffff
    800029f4:	290080e7          	jalr	656(ra) # 80001c80 <_ZdlPv>
    800029f8:	00048513          	mv	a0,s1
    800029fc:	00009097          	auipc	ra,0x9
    80002a00:	a5c080e7          	jalr	-1444(ra) # 8000b458 <_Unwind_Resume>

0000000080002a04 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002a04:	fe010113          	addi	sp,sp,-32
    80002a08:	00113c23          	sd	ra,24(sp)
    80002a0c:	00813823          	sd	s0,16(sp)
    80002a10:	00913423          	sd	s1,8(sp)
    80002a14:	01213023          	sd	s2,0(sp)
    80002a18:	02010413          	addi	s0,sp,32
    80002a1c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002a20:	00100793          	li	a5,1
    80002a24:	02a7f863          	bgeu	a5,a0,80002a54 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002a28:	00a00793          	li	a5,10
    80002a2c:	02f577b3          	remu	a5,a0,a5
    80002a30:	02078e63          	beqz	a5,80002a6c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002a34:	fff48513          	addi	a0,s1,-1
    80002a38:	00000097          	auipc	ra,0x0
    80002a3c:	fcc080e7          	jalr	-52(ra) # 80002a04 <_ZL9fibonaccim>
    80002a40:	00050913          	mv	s2,a0
    80002a44:	ffe48513          	addi	a0,s1,-2
    80002a48:	00000097          	auipc	ra,0x0
    80002a4c:	fbc080e7          	jalr	-68(ra) # 80002a04 <_ZL9fibonaccim>
    80002a50:	00a90533          	add	a0,s2,a0
}
    80002a54:	01813083          	ld	ra,24(sp)
    80002a58:	01013403          	ld	s0,16(sp)
    80002a5c:	00813483          	ld	s1,8(sp)
    80002a60:	00013903          	ld	s2,0(sp)
    80002a64:	02010113          	addi	sp,sp,32
    80002a68:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002a6c:	fffff097          	auipc	ra,0xfffff
    80002a70:	884080e7          	jalr	-1916(ra) # 800012f0 <_Z15thread_dispatchv>
    80002a74:	fc1ff06f          	j	80002a34 <_ZL9fibonaccim+0x30>

0000000080002a78 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80002a78:	fe010113          	addi	sp,sp,-32
    80002a7c:	00113c23          	sd	ra,24(sp)
    80002a80:	00813823          	sd	s0,16(sp)
    80002a84:	00913423          	sd	s1,8(sp)
    80002a88:	01213023          	sd	s2,0(sp)
    80002a8c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002a90:	00000913          	li	s2,0
    80002a94:	0380006f          	j	80002acc <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002a98:	fffff097          	auipc	ra,0xfffff
    80002a9c:	858080e7          	jalr	-1960(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002aa0:	00148493          	addi	s1,s1,1
    80002aa4:	000027b7          	lui	a5,0x2
    80002aa8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002aac:	0097ee63          	bltu	a5,s1,80002ac8 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002ab0:	00000713          	li	a4,0
    80002ab4:	000077b7          	lui	a5,0x7
    80002ab8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002abc:	fce7eee3          	bltu	a5,a4,80002a98 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002ac0:	00170713          	addi	a4,a4,1
    80002ac4:	ff1ff06f          	j	80002ab4 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002ac8:	00190913          	addi	s2,s2,1
    80002acc:	00900793          	li	a5,9
    80002ad0:	0527e063          	bltu	a5,s2,80002b10 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002ad4:	00005517          	auipc	a0,0x5
    80002ad8:	75c50513          	addi	a0,a0,1884 # 80008230 <_ZZ13printIntegerAlE6digits+0xf8>
    80002adc:	00002097          	auipc	ra,0x2
    80002ae0:	eac080e7          	jalr	-340(ra) # 80004988 <_Z11printStringPKc>
    80002ae4:	00000613          	li	a2,0
    80002ae8:	00a00593          	li	a1,10
    80002aec:	0009051b          	sext.w	a0,s2
    80002af0:	00002097          	auipc	ra,0x2
    80002af4:	048080e7          	jalr	72(ra) # 80004b38 <_Z8printIntiii>
    80002af8:	00006517          	auipc	a0,0x6
    80002afc:	9b850513          	addi	a0,a0,-1608 # 800084b0 <_ZZ13printIntegerAlE6digits+0x378>
    80002b00:	00002097          	auipc	ra,0x2
    80002b04:	e88080e7          	jalr	-376(ra) # 80004988 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002b08:	00000493          	li	s1,0
    80002b0c:	f99ff06f          	j	80002aa4 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002b10:	00005517          	auipc	a0,0x5
    80002b14:	72850513          	addi	a0,a0,1832 # 80008238 <_ZZ13printIntegerAlE6digits+0x100>
    80002b18:	00002097          	auipc	ra,0x2
    80002b1c:	e70080e7          	jalr	-400(ra) # 80004988 <_Z11printStringPKc>
    finishedA = true;
    80002b20:	00100793          	li	a5,1
    80002b24:	00008717          	auipc	a4,0x8
    80002b28:	82f70223          	sb	a5,-2012(a4) # 8000a348 <_ZL9finishedA>
}
    80002b2c:	01813083          	ld	ra,24(sp)
    80002b30:	01013403          	ld	s0,16(sp)
    80002b34:	00813483          	ld	s1,8(sp)
    80002b38:	00013903          	ld	s2,0(sp)
    80002b3c:	02010113          	addi	sp,sp,32
    80002b40:	00008067          	ret

0000000080002b44 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80002b44:	fe010113          	addi	sp,sp,-32
    80002b48:	00113c23          	sd	ra,24(sp)
    80002b4c:	00813823          	sd	s0,16(sp)
    80002b50:	00913423          	sd	s1,8(sp)
    80002b54:	01213023          	sd	s2,0(sp)
    80002b58:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002b5c:	00000913          	li	s2,0
    80002b60:	0380006f          	j	80002b98 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002b64:	ffffe097          	auipc	ra,0xffffe
    80002b68:	78c080e7          	jalr	1932(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002b6c:	00148493          	addi	s1,s1,1
    80002b70:	000027b7          	lui	a5,0x2
    80002b74:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002b78:	0097ee63          	bltu	a5,s1,80002b94 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002b7c:	00000713          	li	a4,0
    80002b80:	000077b7          	lui	a5,0x7
    80002b84:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002b88:	fce7eee3          	bltu	a5,a4,80002b64 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80002b8c:	00170713          	addi	a4,a4,1
    80002b90:	ff1ff06f          	j	80002b80 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002b94:	00190913          	addi	s2,s2,1
    80002b98:	00f00793          	li	a5,15
    80002b9c:	0527e063          	bltu	a5,s2,80002bdc <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002ba0:	00005517          	auipc	a0,0x5
    80002ba4:	6a850513          	addi	a0,a0,1704 # 80008248 <_ZZ13printIntegerAlE6digits+0x110>
    80002ba8:	00002097          	auipc	ra,0x2
    80002bac:	de0080e7          	jalr	-544(ra) # 80004988 <_Z11printStringPKc>
    80002bb0:	00000613          	li	a2,0
    80002bb4:	00a00593          	li	a1,10
    80002bb8:	0009051b          	sext.w	a0,s2
    80002bbc:	00002097          	auipc	ra,0x2
    80002bc0:	f7c080e7          	jalr	-132(ra) # 80004b38 <_Z8printIntiii>
    80002bc4:	00006517          	auipc	a0,0x6
    80002bc8:	8ec50513          	addi	a0,a0,-1812 # 800084b0 <_ZZ13printIntegerAlE6digits+0x378>
    80002bcc:	00002097          	auipc	ra,0x2
    80002bd0:	dbc080e7          	jalr	-580(ra) # 80004988 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002bd4:	00000493          	li	s1,0
    80002bd8:	f99ff06f          	j	80002b70 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002bdc:	00005517          	auipc	a0,0x5
    80002be0:	67450513          	addi	a0,a0,1652 # 80008250 <_ZZ13printIntegerAlE6digits+0x118>
    80002be4:	00002097          	auipc	ra,0x2
    80002be8:	da4080e7          	jalr	-604(ra) # 80004988 <_Z11printStringPKc>
    finishedB = true;
    80002bec:	00100793          	li	a5,1
    80002bf0:	00007717          	auipc	a4,0x7
    80002bf4:	74f70ca3          	sb	a5,1881(a4) # 8000a349 <_ZL9finishedB>
    thread_dispatch();
    80002bf8:	ffffe097          	auipc	ra,0xffffe
    80002bfc:	6f8080e7          	jalr	1784(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80002c00:	01813083          	ld	ra,24(sp)
    80002c04:	01013403          	ld	s0,16(sp)
    80002c08:	00813483          	ld	s1,8(sp)
    80002c0c:	00013903          	ld	s2,0(sp)
    80002c10:	02010113          	addi	sp,sp,32
    80002c14:	00008067          	ret

0000000080002c18 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80002c18:	fe010113          	addi	sp,sp,-32
    80002c1c:	00113c23          	sd	ra,24(sp)
    80002c20:	00813823          	sd	s0,16(sp)
    80002c24:	00913423          	sd	s1,8(sp)
    80002c28:	01213023          	sd	s2,0(sp)
    80002c2c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002c30:	00000493          	li	s1,0
    80002c34:	0400006f          	j	80002c74 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002c38:	00005517          	auipc	a0,0x5
    80002c3c:	62850513          	addi	a0,a0,1576 # 80008260 <_ZZ13printIntegerAlE6digits+0x128>
    80002c40:	00002097          	auipc	ra,0x2
    80002c44:	d48080e7          	jalr	-696(ra) # 80004988 <_Z11printStringPKc>
    80002c48:	00000613          	li	a2,0
    80002c4c:	00a00593          	li	a1,10
    80002c50:	00048513          	mv	a0,s1
    80002c54:	00002097          	auipc	ra,0x2
    80002c58:	ee4080e7          	jalr	-284(ra) # 80004b38 <_Z8printIntiii>
    80002c5c:	00006517          	auipc	a0,0x6
    80002c60:	85450513          	addi	a0,a0,-1964 # 800084b0 <_ZZ13printIntegerAlE6digits+0x378>
    80002c64:	00002097          	auipc	ra,0x2
    80002c68:	d24080e7          	jalr	-732(ra) # 80004988 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002c6c:	0014849b          	addiw	s1,s1,1
    80002c70:	0ff4f493          	andi	s1,s1,255
    80002c74:	00200793          	li	a5,2
    80002c78:	fc97f0e3          	bgeu	a5,s1,80002c38 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80002c7c:	00005517          	auipc	a0,0x5
    80002c80:	5ec50513          	addi	a0,a0,1516 # 80008268 <_ZZ13printIntegerAlE6digits+0x130>
    80002c84:	00002097          	auipc	ra,0x2
    80002c88:	d04080e7          	jalr	-764(ra) # 80004988 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002c8c:	00700313          	li	t1,7
    thread_dispatch();
    80002c90:	ffffe097          	auipc	ra,0xffffe
    80002c94:	660080e7          	jalr	1632(ra) # 800012f0 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002c98:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80002c9c:	00005517          	auipc	a0,0x5
    80002ca0:	5dc50513          	addi	a0,a0,1500 # 80008278 <_ZZ13printIntegerAlE6digits+0x140>
    80002ca4:	00002097          	auipc	ra,0x2
    80002ca8:	ce4080e7          	jalr	-796(ra) # 80004988 <_Z11printStringPKc>
    80002cac:	00000613          	li	a2,0
    80002cb0:	00a00593          	li	a1,10
    80002cb4:	0009051b          	sext.w	a0,s2
    80002cb8:	00002097          	auipc	ra,0x2
    80002cbc:	e80080e7          	jalr	-384(ra) # 80004b38 <_Z8printIntiii>
    80002cc0:	00005517          	auipc	a0,0x5
    80002cc4:	7f050513          	addi	a0,a0,2032 # 800084b0 <_ZZ13printIntegerAlE6digits+0x378>
    80002cc8:	00002097          	auipc	ra,0x2
    80002ccc:	cc0080e7          	jalr	-832(ra) # 80004988 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002cd0:	00c00513          	li	a0,12
    80002cd4:	00000097          	auipc	ra,0x0
    80002cd8:	d30080e7          	jalr	-720(ra) # 80002a04 <_ZL9fibonaccim>
    80002cdc:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002ce0:	00005517          	auipc	a0,0x5
    80002ce4:	5a050513          	addi	a0,a0,1440 # 80008280 <_ZZ13printIntegerAlE6digits+0x148>
    80002ce8:	00002097          	auipc	ra,0x2
    80002cec:	ca0080e7          	jalr	-864(ra) # 80004988 <_Z11printStringPKc>
    80002cf0:	00000613          	li	a2,0
    80002cf4:	00a00593          	li	a1,10
    80002cf8:	0009051b          	sext.w	a0,s2
    80002cfc:	00002097          	auipc	ra,0x2
    80002d00:	e3c080e7          	jalr	-452(ra) # 80004b38 <_Z8printIntiii>
    80002d04:	00005517          	auipc	a0,0x5
    80002d08:	7ac50513          	addi	a0,a0,1964 # 800084b0 <_ZZ13printIntegerAlE6digits+0x378>
    80002d0c:	00002097          	auipc	ra,0x2
    80002d10:	c7c080e7          	jalr	-900(ra) # 80004988 <_Z11printStringPKc>
    80002d14:	0400006f          	j	80002d54 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002d18:	00005517          	auipc	a0,0x5
    80002d1c:	54850513          	addi	a0,a0,1352 # 80008260 <_ZZ13printIntegerAlE6digits+0x128>
    80002d20:	00002097          	auipc	ra,0x2
    80002d24:	c68080e7          	jalr	-920(ra) # 80004988 <_Z11printStringPKc>
    80002d28:	00000613          	li	a2,0
    80002d2c:	00a00593          	li	a1,10
    80002d30:	00048513          	mv	a0,s1
    80002d34:	00002097          	auipc	ra,0x2
    80002d38:	e04080e7          	jalr	-508(ra) # 80004b38 <_Z8printIntiii>
    80002d3c:	00005517          	auipc	a0,0x5
    80002d40:	77450513          	addi	a0,a0,1908 # 800084b0 <_ZZ13printIntegerAlE6digits+0x378>
    80002d44:	00002097          	auipc	ra,0x2
    80002d48:	c44080e7          	jalr	-956(ra) # 80004988 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002d4c:	0014849b          	addiw	s1,s1,1
    80002d50:	0ff4f493          	andi	s1,s1,255
    80002d54:	00500793          	li	a5,5
    80002d58:	fc97f0e3          	bgeu	a5,s1,80002d18 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80002d5c:	00005517          	auipc	a0,0x5
    80002d60:	4dc50513          	addi	a0,a0,1244 # 80008238 <_ZZ13printIntegerAlE6digits+0x100>
    80002d64:	00002097          	auipc	ra,0x2
    80002d68:	c24080e7          	jalr	-988(ra) # 80004988 <_Z11printStringPKc>
    finishedC = true;
    80002d6c:	00100793          	li	a5,1
    80002d70:	00007717          	auipc	a4,0x7
    80002d74:	5cf70d23          	sb	a5,1498(a4) # 8000a34a <_ZL9finishedC>
    thread_dispatch();
    80002d78:	ffffe097          	auipc	ra,0xffffe
    80002d7c:	578080e7          	jalr	1400(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80002d80:	01813083          	ld	ra,24(sp)
    80002d84:	01013403          	ld	s0,16(sp)
    80002d88:	00813483          	ld	s1,8(sp)
    80002d8c:	00013903          	ld	s2,0(sp)
    80002d90:	02010113          	addi	sp,sp,32
    80002d94:	00008067          	ret

0000000080002d98 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80002d98:	fe010113          	addi	sp,sp,-32
    80002d9c:	00113c23          	sd	ra,24(sp)
    80002da0:	00813823          	sd	s0,16(sp)
    80002da4:	00913423          	sd	s1,8(sp)
    80002da8:	01213023          	sd	s2,0(sp)
    80002dac:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002db0:	00a00493          	li	s1,10
    80002db4:	0400006f          	j	80002df4 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002db8:	00005517          	auipc	a0,0x5
    80002dbc:	4d850513          	addi	a0,a0,1240 # 80008290 <_ZZ13printIntegerAlE6digits+0x158>
    80002dc0:	00002097          	auipc	ra,0x2
    80002dc4:	bc8080e7          	jalr	-1080(ra) # 80004988 <_Z11printStringPKc>
    80002dc8:	00000613          	li	a2,0
    80002dcc:	00a00593          	li	a1,10
    80002dd0:	00048513          	mv	a0,s1
    80002dd4:	00002097          	auipc	ra,0x2
    80002dd8:	d64080e7          	jalr	-668(ra) # 80004b38 <_Z8printIntiii>
    80002ddc:	00005517          	auipc	a0,0x5
    80002de0:	6d450513          	addi	a0,a0,1748 # 800084b0 <_ZZ13printIntegerAlE6digits+0x378>
    80002de4:	00002097          	auipc	ra,0x2
    80002de8:	ba4080e7          	jalr	-1116(ra) # 80004988 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002dec:	0014849b          	addiw	s1,s1,1
    80002df0:	0ff4f493          	andi	s1,s1,255
    80002df4:	00c00793          	li	a5,12
    80002df8:	fc97f0e3          	bgeu	a5,s1,80002db8 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80002dfc:	00005517          	auipc	a0,0x5
    80002e00:	49c50513          	addi	a0,a0,1180 # 80008298 <_ZZ13printIntegerAlE6digits+0x160>
    80002e04:	00002097          	auipc	ra,0x2
    80002e08:	b84080e7          	jalr	-1148(ra) # 80004988 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002e0c:	00500313          	li	t1,5
    thread_dispatch();
    80002e10:	ffffe097          	auipc	ra,0xffffe
    80002e14:	4e0080e7          	jalr	1248(ra) # 800012f0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002e18:	01000513          	li	a0,16
    80002e1c:	00000097          	auipc	ra,0x0
    80002e20:	be8080e7          	jalr	-1048(ra) # 80002a04 <_ZL9fibonaccim>
    80002e24:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002e28:	00005517          	auipc	a0,0x5
    80002e2c:	48050513          	addi	a0,a0,1152 # 800082a8 <_ZZ13printIntegerAlE6digits+0x170>
    80002e30:	00002097          	auipc	ra,0x2
    80002e34:	b58080e7          	jalr	-1192(ra) # 80004988 <_Z11printStringPKc>
    80002e38:	00000613          	li	a2,0
    80002e3c:	00a00593          	li	a1,10
    80002e40:	0009051b          	sext.w	a0,s2
    80002e44:	00002097          	auipc	ra,0x2
    80002e48:	cf4080e7          	jalr	-780(ra) # 80004b38 <_Z8printIntiii>
    80002e4c:	00005517          	auipc	a0,0x5
    80002e50:	66450513          	addi	a0,a0,1636 # 800084b0 <_ZZ13printIntegerAlE6digits+0x378>
    80002e54:	00002097          	auipc	ra,0x2
    80002e58:	b34080e7          	jalr	-1228(ra) # 80004988 <_Z11printStringPKc>
    80002e5c:	0400006f          	j	80002e9c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002e60:	00005517          	auipc	a0,0x5
    80002e64:	43050513          	addi	a0,a0,1072 # 80008290 <_ZZ13printIntegerAlE6digits+0x158>
    80002e68:	00002097          	auipc	ra,0x2
    80002e6c:	b20080e7          	jalr	-1248(ra) # 80004988 <_Z11printStringPKc>
    80002e70:	00000613          	li	a2,0
    80002e74:	00a00593          	li	a1,10
    80002e78:	00048513          	mv	a0,s1
    80002e7c:	00002097          	auipc	ra,0x2
    80002e80:	cbc080e7          	jalr	-836(ra) # 80004b38 <_Z8printIntiii>
    80002e84:	00005517          	auipc	a0,0x5
    80002e88:	62c50513          	addi	a0,a0,1580 # 800084b0 <_ZZ13printIntegerAlE6digits+0x378>
    80002e8c:	00002097          	auipc	ra,0x2
    80002e90:	afc080e7          	jalr	-1284(ra) # 80004988 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002e94:	0014849b          	addiw	s1,s1,1
    80002e98:	0ff4f493          	andi	s1,s1,255
    80002e9c:	00f00793          	li	a5,15
    80002ea0:	fc97f0e3          	bgeu	a5,s1,80002e60 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80002ea4:	00005517          	auipc	a0,0x5
    80002ea8:	41450513          	addi	a0,a0,1044 # 800082b8 <_ZZ13printIntegerAlE6digits+0x180>
    80002eac:	00002097          	auipc	ra,0x2
    80002eb0:	adc080e7          	jalr	-1316(ra) # 80004988 <_Z11printStringPKc>
    finishedD = true;
    80002eb4:	00100793          	li	a5,1
    80002eb8:	00007717          	auipc	a4,0x7
    80002ebc:	48f709a3          	sb	a5,1171(a4) # 8000a34b <_ZL9finishedD>
    thread_dispatch();
    80002ec0:	ffffe097          	auipc	ra,0xffffe
    80002ec4:	430080e7          	jalr	1072(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80002ec8:	01813083          	ld	ra,24(sp)
    80002ecc:	01013403          	ld	s0,16(sp)
    80002ed0:	00813483          	ld	s1,8(sp)
    80002ed4:	00013903          	ld	s2,0(sp)
    80002ed8:	02010113          	addi	sp,sp,32
    80002edc:	00008067          	ret

0000000080002ee0 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80002ee0:	fc010113          	addi	sp,sp,-64
    80002ee4:	02113c23          	sd	ra,56(sp)
    80002ee8:	02813823          	sd	s0,48(sp)
    80002eec:	02913423          	sd	s1,40(sp)
    80002ef0:	03213023          	sd	s2,32(sp)
    80002ef4:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80002ef8:	02000513          	li	a0,32
    80002efc:	fffff097          	auipc	ra,0xfffff
    80002f00:	d34080e7          	jalr	-716(ra) # 80001c30 <_Znwm>
    80002f04:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80002f08:	fffff097          	auipc	ra,0xfffff
    80002f0c:	f08080e7          	jalr	-248(ra) # 80001e10 <_ZN6ThreadC1Ev>
    80002f10:	00007797          	auipc	a5,0x7
    80002f14:	1e078793          	addi	a5,a5,480 # 8000a0f0 <_ZTV7WorkerA+0x10>
    80002f18:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80002f1c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80002f20:	00005517          	auipc	a0,0x5
    80002f24:	3a850513          	addi	a0,a0,936 # 800082c8 <_ZZ13printIntegerAlE6digits+0x190>
    80002f28:	00002097          	auipc	ra,0x2
    80002f2c:	a60080e7          	jalr	-1440(ra) # 80004988 <_Z11printStringPKc>


    threads[1] = new WorkerB();
    80002f30:	02000513          	li	a0,32
    80002f34:	fffff097          	auipc	ra,0xfffff
    80002f38:	cfc080e7          	jalr	-772(ra) # 80001c30 <_Znwm>
    80002f3c:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80002f40:	fffff097          	auipc	ra,0xfffff
    80002f44:	ed0080e7          	jalr	-304(ra) # 80001e10 <_ZN6ThreadC1Ev>
    80002f48:	00007797          	auipc	a5,0x7
    80002f4c:	1d078793          	addi	a5,a5,464 # 8000a118 <_ZTV7WorkerB+0x10>
    80002f50:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80002f54:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80002f58:	00005517          	auipc	a0,0x5
    80002f5c:	38850513          	addi	a0,a0,904 # 800082e0 <_ZZ13printIntegerAlE6digits+0x1a8>
    80002f60:	00002097          	auipc	ra,0x2
    80002f64:	a28080e7          	jalr	-1496(ra) # 80004988 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80002f68:	02000513          	li	a0,32
    80002f6c:	fffff097          	auipc	ra,0xfffff
    80002f70:	cc4080e7          	jalr	-828(ra) # 80001c30 <_Znwm>
    80002f74:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80002f78:	fffff097          	auipc	ra,0xfffff
    80002f7c:	e98080e7          	jalr	-360(ra) # 80001e10 <_ZN6ThreadC1Ev>
    80002f80:	00007797          	auipc	a5,0x7
    80002f84:	1c078793          	addi	a5,a5,448 # 8000a140 <_ZTV7WorkerC+0x10>
    80002f88:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80002f8c:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80002f90:	00005517          	auipc	a0,0x5
    80002f94:	36850513          	addi	a0,a0,872 # 800082f8 <_ZZ13printIntegerAlE6digits+0x1c0>
    80002f98:	00002097          	auipc	ra,0x2
    80002f9c:	9f0080e7          	jalr	-1552(ra) # 80004988 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80002fa0:	02000513          	li	a0,32
    80002fa4:	fffff097          	auipc	ra,0xfffff
    80002fa8:	c8c080e7          	jalr	-884(ra) # 80001c30 <_Znwm>
    80002fac:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80002fb0:	fffff097          	auipc	ra,0xfffff
    80002fb4:	e60080e7          	jalr	-416(ra) # 80001e10 <_ZN6ThreadC1Ev>
    80002fb8:	00007797          	auipc	a5,0x7
    80002fbc:	1b078793          	addi	a5,a5,432 # 8000a168 <_ZTV7WorkerD+0x10>
    80002fc0:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80002fc4:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80002fc8:	00005517          	auipc	a0,0x5
    80002fcc:	34850513          	addi	a0,a0,840 # 80008310 <_ZZ13printIntegerAlE6digits+0x1d8>
    80002fd0:	00002097          	auipc	ra,0x2
    80002fd4:	9b8080e7          	jalr	-1608(ra) # 80004988 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80002fd8:	00000493          	li	s1,0
    80002fdc:	00300793          	li	a5,3
    80002fe0:	0297c663          	blt	a5,s1,8000300c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80002fe4:	00349793          	slli	a5,s1,0x3
    80002fe8:	fe040713          	addi	a4,s0,-32
    80002fec:	00f707b3          	add	a5,a4,a5
    80002ff0:	fe07b503          	ld	a0,-32(a5)
    80002ff4:	fffff097          	auipc	ra,0xfffff
    80002ff8:	dc0080e7          	jalr	-576(ra) # 80001db4 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80002ffc:	0014849b          	addiw	s1,s1,1
    80003000:	fddff06f          	j	80002fdc <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003004:	fffff097          	auipc	ra,0xfffff
    80003008:	de4080e7          	jalr	-540(ra) # 80001de8 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000300c:	00007797          	auipc	a5,0x7
    80003010:	33c7c783          	lbu	a5,828(a5) # 8000a348 <_ZL9finishedA>
    80003014:	fe0788e3          	beqz	a5,80003004 <_Z20Threads_CPP_API_testv+0x124>
    80003018:	00007797          	auipc	a5,0x7
    8000301c:	3317c783          	lbu	a5,817(a5) # 8000a349 <_ZL9finishedB>
    80003020:	fe0782e3          	beqz	a5,80003004 <_Z20Threads_CPP_API_testv+0x124>
    80003024:	00007797          	auipc	a5,0x7
    80003028:	3267c783          	lbu	a5,806(a5) # 8000a34a <_ZL9finishedC>
    8000302c:	fc078ce3          	beqz	a5,80003004 <_Z20Threads_CPP_API_testv+0x124>
    80003030:	00007797          	auipc	a5,0x7
    80003034:	31b7c783          	lbu	a5,795(a5) # 8000a34b <_ZL9finishedD>
    80003038:	fc0786e3          	beqz	a5,80003004 <_Z20Threads_CPP_API_testv+0x124>
    8000303c:	fc040493          	addi	s1,s0,-64
    80003040:	0080006f          	j	80003048 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003044:	00848493          	addi	s1,s1,8
    80003048:	fe040793          	addi	a5,s0,-32
    8000304c:	08f48663          	beq	s1,a5,800030d8 <_Z20Threads_CPP_API_testv+0x1f8>
    80003050:	0004b503          	ld	a0,0(s1)
    80003054:	fe0508e3          	beqz	a0,80003044 <_Z20Threads_CPP_API_testv+0x164>
    80003058:	00053783          	ld	a5,0(a0)
    8000305c:	0087b783          	ld	a5,8(a5)
    80003060:	000780e7          	jalr	a5
    80003064:	fe1ff06f          	j	80003044 <_Z20Threads_CPP_API_testv+0x164>
    80003068:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    8000306c:	00048513          	mv	a0,s1
    80003070:	fffff097          	auipc	ra,0xfffff
    80003074:	c10080e7          	jalr	-1008(ra) # 80001c80 <_ZdlPv>
    80003078:	00090513          	mv	a0,s2
    8000307c:	00008097          	auipc	ra,0x8
    80003080:	3dc080e7          	jalr	988(ra) # 8000b458 <_Unwind_Resume>
    80003084:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003088:	00048513          	mv	a0,s1
    8000308c:	fffff097          	auipc	ra,0xfffff
    80003090:	bf4080e7          	jalr	-1036(ra) # 80001c80 <_ZdlPv>
    80003094:	00090513          	mv	a0,s2
    80003098:	00008097          	auipc	ra,0x8
    8000309c:	3c0080e7          	jalr	960(ra) # 8000b458 <_Unwind_Resume>
    800030a0:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800030a4:	00048513          	mv	a0,s1
    800030a8:	fffff097          	auipc	ra,0xfffff
    800030ac:	bd8080e7          	jalr	-1064(ra) # 80001c80 <_ZdlPv>
    800030b0:	00090513          	mv	a0,s2
    800030b4:	00008097          	auipc	ra,0x8
    800030b8:	3a4080e7          	jalr	932(ra) # 8000b458 <_Unwind_Resume>
    800030bc:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800030c0:	00048513          	mv	a0,s1
    800030c4:	fffff097          	auipc	ra,0xfffff
    800030c8:	bbc080e7          	jalr	-1092(ra) # 80001c80 <_ZdlPv>
    800030cc:	00090513          	mv	a0,s2
    800030d0:	00008097          	auipc	ra,0x8
    800030d4:	388080e7          	jalr	904(ra) # 8000b458 <_Unwind_Resume>
}
    800030d8:	03813083          	ld	ra,56(sp)
    800030dc:	03013403          	ld	s0,48(sp)
    800030e0:	02813483          	ld	s1,40(sp)
    800030e4:	02013903          	ld	s2,32(sp)
    800030e8:	04010113          	addi	sp,sp,64
    800030ec:	00008067          	ret

00000000800030f0 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800030f0:	ff010113          	addi	sp,sp,-16
    800030f4:	00113423          	sd	ra,8(sp)
    800030f8:	00813023          	sd	s0,0(sp)
    800030fc:	01010413          	addi	s0,sp,16
    80003100:	00007797          	auipc	a5,0x7
    80003104:	ff078793          	addi	a5,a5,-16 # 8000a0f0 <_ZTV7WorkerA+0x10>
    80003108:	00f53023          	sd	a5,0(a0)
    8000310c:	fffff097          	auipc	ra,0xfffff
    80003110:	bc4080e7          	jalr	-1084(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    80003114:	00813083          	ld	ra,8(sp)
    80003118:	00013403          	ld	s0,0(sp)
    8000311c:	01010113          	addi	sp,sp,16
    80003120:	00008067          	ret

0000000080003124 <_ZN7WorkerAD0Ev>:
    80003124:	fe010113          	addi	sp,sp,-32
    80003128:	00113c23          	sd	ra,24(sp)
    8000312c:	00813823          	sd	s0,16(sp)
    80003130:	00913423          	sd	s1,8(sp)
    80003134:	02010413          	addi	s0,sp,32
    80003138:	00050493          	mv	s1,a0
    8000313c:	00007797          	auipc	a5,0x7
    80003140:	fb478793          	addi	a5,a5,-76 # 8000a0f0 <_ZTV7WorkerA+0x10>
    80003144:	00f53023          	sd	a5,0(a0)
    80003148:	fffff097          	auipc	ra,0xfffff
    8000314c:	b88080e7          	jalr	-1144(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    80003150:	00048513          	mv	a0,s1
    80003154:	fffff097          	auipc	ra,0xfffff
    80003158:	b2c080e7          	jalr	-1236(ra) # 80001c80 <_ZdlPv>
    8000315c:	01813083          	ld	ra,24(sp)
    80003160:	01013403          	ld	s0,16(sp)
    80003164:	00813483          	ld	s1,8(sp)
    80003168:	02010113          	addi	sp,sp,32
    8000316c:	00008067          	ret

0000000080003170 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003170:	ff010113          	addi	sp,sp,-16
    80003174:	00113423          	sd	ra,8(sp)
    80003178:	00813023          	sd	s0,0(sp)
    8000317c:	01010413          	addi	s0,sp,16
    80003180:	00007797          	auipc	a5,0x7
    80003184:	f9878793          	addi	a5,a5,-104 # 8000a118 <_ZTV7WorkerB+0x10>
    80003188:	00f53023          	sd	a5,0(a0)
    8000318c:	fffff097          	auipc	ra,0xfffff
    80003190:	b44080e7          	jalr	-1212(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    80003194:	00813083          	ld	ra,8(sp)
    80003198:	00013403          	ld	s0,0(sp)
    8000319c:	01010113          	addi	sp,sp,16
    800031a0:	00008067          	ret

00000000800031a4 <_ZN7WorkerBD0Ev>:
    800031a4:	fe010113          	addi	sp,sp,-32
    800031a8:	00113c23          	sd	ra,24(sp)
    800031ac:	00813823          	sd	s0,16(sp)
    800031b0:	00913423          	sd	s1,8(sp)
    800031b4:	02010413          	addi	s0,sp,32
    800031b8:	00050493          	mv	s1,a0
    800031bc:	00007797          	auipc	a5,0x7
    800031c0:	f5c78793          	addi	a5,a5,-164 # 8000a118 <_ZTV7WorkerB+0x10>
    800031c4:	00f53023          	sd	a5,0(a0)
    800031c8:	fffff097          	auipc	ra,0xfffff
    800031cc:	b08080e7          	jalr	-1272(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    800031d0:	00048513          	mv	a0,s1
    800031d4:	fffff097          	auipc	ra,0xfffff
    800031d8:	aac080e7          	jalr	-1364(ra) # 80001c80 <_ZdlPv>
    800031dc:	01813083          	ld	ra,24(sp)
    800031e0:	01013403          	ld	s0,16(sp)
    800031e4:	00813483          	ld	s1,8(sp)
    800031e8:	02010113          	addi	sp,sp,32
    800031ec:	00008067          	ret

00000000800031f0 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800031f0:	ff010113          	addi	sp,sp,-16
    800031f4:	00113423          	sd	ra,8(sp)
    800031f8:	00813023          	sd	s0,0(sp)
    800031fc:	01010413          	addi	s0,sp,16
    80003200:	00007797          	auipc	a5,0x7
    80003204:	f4078793          	addi	a5,a5,-192 # 8000a140 <_ZTV7WorkerC+0x10>
    80003208:	00f53023          	sd	a5,0(a0)
    8000320c:	fffff097          	auipc	ra,0xfffff
    80003210:	ac4080e7          	jalr	-1340(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    80003214:	00813083          	ld	ra,8(sp)
    80003218:	00013403          	ld	s0,0(sp)
    8000321c:	01010113          	addi	sp,sp,16
    80003220:	00008067          	ret

0000000080003224 <_ZN7WorkerCD0Ev>:
    80003224:	fe010113          	addi	sp,sp,-32
    80003228:	00113c23          	sd	ra,24(sp)
    8000322c:	00813823          	sd	s0,16(sp)
    80003230:	00913423          	sd	s1,8(sp)
    80003234:	02010413          	addi	s0,sp,32
    80003238:	00050493          	mv	s1,a0
    8000323c:	00007797          	auipc	a5,0x7
    80003240:	f0478793          	addi	a5,a5,-252 # 8000a140 <_ZTV7WorkerC+0x10>
    80003244:	00f53023          	sd	a5,0(a0)
    80003248:	fffff097          	auipc	ra,0xfffff
    8000324c:	a88080e7          	jalr	-1400(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    80003250:	00048513          	mv	a0,s1
    80003254:	fffff097          	auipc	ra,0xfffff
    80003258:	a2c080e7          	jalr	-1492(ra) # 80001c80 <_ZdlPv>
    8000325c:	01813083          	ld	ra,24(sp)
    80003260:	01013403          	ld	s0,16(sp)
    80003264:	00813483          	ld	s1,8(sp)
    80003268:	02010113          	addi	sp,sp,32
    8000326c:	00008067          	ret

0000000080003270 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003270:	ff010113          	addi	sp,sp,-16
    80003274:	00113423          	sd	ra,8(sp)
    80003278:	00813023          	sd	s0,0(sp)
    8000327c:	01010413          	addi	s0,sp,16
    80003280:	00007797          	auipc	a5,0x7
    80003284:	ee878793          	addi	a5,a5,-280 # 8000a168 <_ZTV7WorkerD+0x10>
    80003288:	00f53023          	sd	a5,0(a0)
    8000328c:	fffff097          	auipc	ra,0xfffff
    80003290:	a44080e7          	jalr	-1468(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    80003294:	00813083          	ld	ra,8(sp)
    80003298:	00013403          	ld	s0,0(sp)
    8000329c:	01010113          	addi	sp,sp,16
    800032a0:	00008067          	ret

00000000800032a4 <_ZN7WorkerDD0Ev>:
    800032a4:	fe010113          	addi	sp,sp,-32
    800032a8:	00113c23          	sd	ra,24(sp)
    800032ac:	00813823          	sd	s0,16(sp)
    800032b0:	00913423          	sd	s1,8(sp)
    800032b4:	02010413          	addi	s0,sp,32
    800032b8:	00050493          	mv	s1,a0
    800032bc:	00007797          	auipc	a5,0x7
    800032c0:	eac78793          	addi	a5,a5,-340 # 8000a168 <_ZTV7WorkerD+0x10>
    800032c4:	00f53023          	sd	a5,0(a0)
    800032c8:	fffff097          	auipc	ra,0xfffff
    800032cc:	a08080e7          	jalr	-1528(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    800032d0:	00048513          	mv	a0,s1
    800032d4:	fffff097          	auipc	ra,0xfffff
    800032d8:	9ac080e7          	jalr	-1620(ra) # 80001c80 <_ZdlPv>
    800032dc:	01813083          	ld	ra,24(sp)
    800032e0:	01013403          	ld	s0,16(sp)
    800032e4:	00813483          	ld	s1,8(sp)
    800032e8:	02010113          	addi	sp,sp,32
    800032ec:	00008067          	ret

00000000800032f0 <_ZN7WorkerA3runEv>:
    void run() override {
    800032f0:	ff010113          	addi	sp,sp,-16
    800032f4:	00113423          	sd	ra,8(sp)
    800032f8:	00813023          	sd	s0,0(sp)
    800032fc:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003300:	00000593          	li	a1,0
    80003304:	fffff097          	auipc	ra,0xfffff
    80003308:	774080e7          	jalr	1908(ra) # 80002a78 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000330c:	00813083          	ld	ra,8(sp)
    80003310:	00013403          	ld	s0,0(sp)
    80003314:	01010113          	addi	sp,sp,16
    80003318:	00008067          	ret

000000008000331c <_ZN7WorkerB3runEv>:
    void run() override {
    8000331c:	ff010113          	addi	sp,sp,-16
    80003320:	00113423          	sd	ra,8(sp)
    80003324:	00813023          	sd	s0,0(sp)
    80003328:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    8000332c:	00000593          	li	a1,0
    80003330:	00000097          	auipc	ra,0x0
    80003334:	814080e7          	jalr	-2028(ra) # 80002b44 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003338:	00813083          	ld	ra,8(sp)
    8000333c:	00013403          	ld	s0,0(sp)
    80003340:	01010113          	addi	sp,sp,16
    80003344:	00008067          	ret

0000000080003348 <_ZN7WorkerC3runEv>:
    void run() override {
    80003348:	ff010113          	addi	sp,sp,-16
    8000334c:	00113423          	sd	ra,8(sp)
    80003350:	00813023          	sd	s0,0(sp)
    80003354:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003358:	00000593          	li	a1,0
    8000335c:	00000097          	auipc	ra,0x0
    80003360:	8bc080e7          	jalr	-1860(ra) # 80002c18 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003364:	00813083          	ld	ra,8(sp)
    80003368:	00013403          	ld	s0,0(sp)
    8000336c:	01010113          	addi	sp,sp,16
    80003370:	00008067          	ret

0000000080003374 <_ZN7WorkerD3runEv>:
    void run() override {
    80003374:	ff010113          	addi	sp,sp,-16
    80003378:	00113423          	sd	ra,8(sp)
    8000337c:	00813023          	sd	s0,0(sp)
    80003380:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003384:	00000593          	li	a1,0
    80003388:	00000097          	auipc	ra,0x0
    8000338c:	a10080e7          	jalr	-1520(ra) # 80002d98 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003390:	00813083          	ld	ra,8(sp)
    80003394:	00013403          	ld	s0,0(sp)
    80003398:	01010113          	addi	sp,sp,16
    8000339c:	00008067          	ret

00000000800033a0 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800033a0:	f8010113          	addi	sp,sp,-128
    800033a4:	06113c23          	sd	ra,120(sp)
    800033a8:	06813823          	sd	s0,112(sp)
    800033ac:	06913423          	sd	s1,104(sp)
    800033b0:	07213023          	sd	s2,96(sp)
    800033b4:	05313c23          	sd	s3,88(sp)
    800033b8:	05413823          	sd	s4,80(sp)
    800033bc:	05513423          	sd	s5,72(sp)
    800033c0:	05613023          	sd	s6,64(sp)
    800033c4:	03713c23          	sd	s7,56(sp)
    800033c8:	03813823          	sd	s8,48(sp)
    800033cc:	03913423          	sd	s9,40(sp)
    800033d0:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800033d4:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800033d8:	00005517          	auipc	a0,0x5
    800033dc:	d7050513          	addi	a0,a0,-656 # 80008148 <_ZZ13printIntegerAlE6digits+0x10>
    800033e0:	00001097          	auipc	ra,0x1
    800033e4:	5a8080e7          	jalr	1448(ra) # 80004988 <_Z11printStringPKc>
    getString(input, 30);
    800033e8:	01e00593          	li	a1,30
    800033ec:	f8040493          	addi	s1,s0,-128
    800033f0:	00048513          	mv	a0,s1
    800033f4:	00001097          	auipc	ra,0x1
    800033f8:	61c080e7          	jalr	1564(ra) # 80004a10 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800033fc:	00048513          	mv	a0,s1
    80003400:	00001097          	auipc	ra,0x1
    80003404:	6e8080e7          	jalr	1768(ra) # 80004ae8 <_Z11stringToIntPKc>
    80003408:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    8000340c:	00005517          	auipc	a0,0x5
    80003410:	d5c50513          	addi	a0,a0,-676 # 80008168 <_ZZ13printIntegerAlE6digits+0x30>
    80003414:	00001097          	auipc	ra,0x1
    80003418:	574080e7          	jalr	1396(ra) # 80004988 <_Z11printStringPKc>
    getString(input, 30);
    8000341c:	01e00593          	li	a1,30
    80003420:	00048513          	mv	a0,s1
    80003424:	00001097          	auipc	ra,0x1
    80003428:	5ec080e7          	jalr	1516(ra) # 80004a10 <_Z9getStringPci>
    n = stringToInt(input);
    8000342c:	00048513          	mv	a0,s1
    80003430:	00001097          	auipc	ra,0x1
    80003434:	6b8080e7          	jalr	1720(ra) # 80004ae8 <_Z11stringToIntPKc>
    80003438:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    8000343c:	00005517          	auipc	a0,0x5
    80003440:	d4c50513          	addi	a0,a0,-692 # 80008188 <_ZZ13printIntegerAlE6digits+0x50>
    80003444:	00001097          	auipc	ra,0x1
    80003448:	544080e7          	jalr	1348(ra) # 80004988 <_Z11printStringPKc>
    printInt(threadNum);
    8000344c:	00000613          	li	a2,0
    80003450:	00a00593          	li	a1,10
    80003454:	00098513          	mv	a0,s3
    80003458:	00001097          	auipc	ra,0x1
    8000345c:	6e0080e7          	jalr	1760(ra) # 80004b38 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003460:	00005517          	auipc	a0,0x5
    80003464:	d4050513          	addi	a0,a0,-704 # 800081a0 <_ZZ13printIntegerAlE6digits+0x68>
    80003468:	00001097          	auipc	ra,0x1
    8000346c:	520080e7          	jalr	1312(ra) # 80004988 <_Z11printStringPKc>
    printInt(n);
    80003470:	00000613          	li	a2,0
    80003474:	00a00593          	li	a1,10
    80003478:	00048513          	mv	a0,s1
    8000347c:	00001097          	auipc	ra,0x1
    80003480:	6bc080e7          	jalr	1724(ra) # 80004b38 <_Z8printIntiii>
    printString(".\n");
    80003484:	00005517          	auipc	a0,0x5
    80003488:	d3450513          	addi	a0,a0,-716 # 800081b8 <_ZZ13printIntegerAlE6digits+0x80>
    8000348c:	00001097          	auipc	ra,0x1
    80003490:	4fc080e7          	jalr	1276(ra) # 80004988 <_Z11printStringPKc>
    if (threadNum > n) {
    80003494:	0334c463          	blt	s1,s3,800034bc <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003498:	03305c63          	blez	s3,800034d0 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    8000349c:	03800513          	li	a0,56
    800034a0:	ffffe097          	auipc	ra,0xffffe
    800034a4:	790080e7          	jalr	1936(ra) # 80001c30 <_Znwm>
    800034a8:	00050a93          	mv	s5,a0
    800034ac:	00048593          	mv	a1,s1
    800034b0:	00001097          	auipc	ra,0x1
    800034b4:	7a8080e7          	jalr	1960(ra) # 80004c58 <_ZN9BufferCPPC1Ei>
    800034b8:	0300006f          	j	800034e8 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800034bc:	00005517          	auipc	a0,0x5
    800034c0:	d0450513          	addi	a0,a0,-764 # 800081c0 <_ZZ13printIntegerAlE6digits+0x88>
    800034c4:	00001097          	auipc	ra,0x1
    800034c8:	4c4080e7          	jalr	1220(ra) # 80004988 <_Z11printStringPKc>
        return;
    800034cc:	0140006f          	j	800034e0 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800034d0:	00005517          	auipc	a0,0x5
    800034d4:	d3050513          	addi	a0,a0,-720 # 80008200 <_ZZ13printIntegerAlE6digits+0xc8>
    800034d8:	00001097          	auipc	ra,0x1
    800034dc:	4b0080e7          	jalr	1200(ra) # 80004988 <_Z11printStringPKc>
        return;
    800034e0:	000c0113          	mv	sp,s8
    800034e4:	2140006f          	j	800036f8 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800034e8:	01000513          	li	a0,16
    800034ec:	ffffe097          	auipc	ra,0xffffe
    800034f0:	744080e7          	jalr	1860(ra) # 80001c30 <_Znwm>
    800034f4:	00050913          	mv	s2,a0
    800034f8:	00000593          	li	a1,0
    800034fc:	fffff097          	auipc	ra,0xfffff
    80003500:	948080e7          	jalr	-1720(ra) # 80001e44 <_ZN9SemaphoreC1Ej>
    80003504:	00007797          	auipc	a5,0x7
    80003508:	e527ba23          	sd	s2,-428(a5) # 8000a358 <_ZL10waitForAll>
    Thread *producers[threadNum];
    8000350c:	00399793          	slli	a5,s3,0x3
    80003510:	00f78793          	addi	a5,a5,15
    80003514:	ff07f793          	andi	a5,a5,-16
    80003518:	40f10133          	sub	sp,sp,a5
    8000351c:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003520:	0019871b          	addiw	a4,s3,1
    80003524:	00171793          	slli	a5,a4,0x1
    80003528:	00e787b3          	add	a5,a5,a4
    8000352c:	00379793          	slli	a5,a5,0x3
    80003530:	00f78793          	addi	a5,a5,15
    80003534:	ff07f793          	andi	a5,a5,-16
    80003538:	40f10133          	sub	sp,sp,a5
    8000353c:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003540:	00199493          	slli	s1,s3,0x1
    80003544:	013484b3          	add	s1,s1,s3
    80003548:	00349493          	slli	s1,s1,0x3
    8000354c:	009b04b3          	add	s1,s6,s1
    80003550:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003554:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003558:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    8000355c:	02800513          	li	a0,40
    80003560:	ffffe097          	auipc	ra,0xffffe
    80003564:	6d0080e7          	jalr	1744(ra) # 80001c30 <_Znwm>
    80003568:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    8000356c:	fffff097          	auipc	ra,0xfffff
    80003570:	8a4080e7          	jalr	-1884(ra) # 80001e10 <_ZN6ThreadC1Ev>
    80003574:	00007797          	auipc	a5,0x7
    80003578:	c6c78793          	addi	a5,a5,-916 # 8000a1e0 <_ZTV8Consumer+0x10>
    8000357c:	00fbb023          	sd	a5,0(s7)
    80003580:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003584:	000b8513          	mv	a0,s7
    80003588:	fffff097          	auipc	ra,0xfffff
    8000358c:	82c080e7          	jalr	-2004(ra) # 80001db4 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003590:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003594:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003598:	00007797          	auipc	a5,0x7
    8000359c:	dc07b783          	ld	a5,-576(a5) # 8000a358 <_ZL10waitForAll>
    800035a0:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800035a4:	02800513          	li	a0,40
    800035a8:	ffffe097          	auipc	ra,0xffffe
    800035ac:	688080e7          	jalr	1672(ra) # 80001c30 <_Znwm>
    800035b0:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800035b4:	fffff097          	auipc	ra,0xfffff
    800035b8:	85c080e7          	jalr	-1956(ra) # 80001e10 <_ZN6ThreadC1Ev>
    800035bc:	00007797          	auipc	a5,0x7
    800035c0:	bd478793          	addi	a5,a5,-1068 # 8000a190 <_ZTV16ProducerKeyborad+0x10>
    800035c4:	00f4b023          	sd	a5,0(s1)
    800035c8:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800035cc:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    800035d0:	00048513          	mv	a0,s1
    800035d4:	ffffe097          	auipc	ra,0xffffe
    800035d8:	7e0080e7          	jalr	2016(ra) # 80001db4 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800035dc:	00100913          	li	s2,1
    800035e0:	0300006f          	j	80003610 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800035e4:	00007797          	auipc	a5,0x7
    800035e8:	bd478793          	addi	a5,a5,-1068 # 8000a1b8 <_ZTV8Producer+0x10>
    800035ec:	00fcb023          	sd	a5,0(s9)
    800035f0:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800035f4:	00391793          	slli	a5,s2,0x3
    800035f8:	00fa07b3          	add	a5,s4,a5
    800035fc:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003600:	000c8513          	mv	a0,s9
    80003604:	ffffe097          	auipc	ra,0xffffe
    80003608:	7b0080e7          	jalr	1968(ra) # 80001db4 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    8000360c:	0019091b          	addiw	s2,s2,1
    80003610:	05395263          	bge	s2,s3,80003654 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003614:	00191493          	slli	s1,s2,0x1
    80003618:	012484b3          	add	s1,s1,s2
    8000361c:	00349493          	slli	s1,s1,0x3
    80003620:	009b04b3          	add	s1,s6,s1
    80003624:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003628:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    8000362c:	00007797          	auipc	a5,0x7
    80003630:	d2c7b783          	ld	a5,-724(a5) # 8000a358 <_ZL10waitForAll>
    80003634:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003638:	02800513          	li	a0,40
    8000363c:	ffffe097          	auipc	ra,0xffffe
    80003640:	5f4080e7          	jalr	1524(ra) # 80001c30 <_Znwm>
    80003644:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003648:	ffffe097          	auipc	ra,0xffffe
    8000364c:	7c8080e7          	jalr	1992(ra) # 80001e10 <_ZN6ThreadC1Ev>
    80003650:	f95ff06f          	j	800035e4 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003654:	ffffe097          	auipc	ra,0xffffe
    80003658:	794080e7          	jalr	1940(ra) # 80001de8 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    8000365c:	00000493          	li	s1,0
    80003660:	0099ce63          	blt	s3,s1,8000367c <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003664:	00007517          	auipc	a0,0x7
    80003668:	cf453503          	ld	a0,-780(a0) # 8000a358 <_ZL10waitForAll>
    8000366c:	fffff097          	auipc	ra,0xfffff
    80003670:	818080e7          	jalr	-2024(ra) # 80001e84 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003674:	0014849b          	addiw	s1,s1,1
    80003678:	fe9ff06f          	j	80003660 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    8000367c:	00007517          	auipc	a0,0x7
    80003680:	cdc53503          	ld	a0,-804(a0) # 8000a358 <_ZL10waitForAll>
    80003684:	00050863          	beqz	a0,80003694 <_Z20testConsumerProducerv+0x2f4>
    80003688:	00053783          	ld	a5,0(a0)
    8000368c:	0087b783          	ld	a5,8(a5)
    80003690:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003694:	00000493          	li	s1,0
    80003698:	0080006f          	j	800036a0 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    8000369c:	0014849b          	addiw	s1,s1,1
    800036a0:	0334d263          	bge	s1,s3,800036c4 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    800036a4:	00349793          	slli	a5,s1,0x3
    800036a8:	00fa07b3          	add	a5,s4,a5
    800036ac:	0007b503          	ld	a0,0(a5)
    800036b0:	fe0506e3          	beqz	a0,8000369c <_Z20testConsumerProducerv+0x2fc>
    800036b4:	00053783          	ld	a5,0(a0)
    800036b8:	0087b783          	ld	a5,8(a5)
    800036bc:	000780e7          	jalr	a5
    800036c0:	fddff06f          	j	8000369c <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    800036c4:	000b8a63          	beqz	s7,800036d8 <_Z20testConsumerProducerv+0x338>
    800036c8:	000bb783          	ld	a5,0(s7)
    800036cc:	0087b783          	ld	a5,8(a5)
    800036d0:	000b8513          	mv	a0,s7
    800036d4:	000780e7          	jalr	a5
    delete buffer;
    800036d8:	000a8e63          	beqz	s5,800036f4 <_Z20testConsumerProducerv+0x354>
    800036dc:	000a8513          	mv	a0,s5
    800036e0:	00002097          	auipc	ra,0x2
    800036e4:	870080e7          	jalr	-1936(ra) # 80004f50 <_ZN9BufferCPPD1Ev>
    800036e8:	000a8513          	mv	a0,s5
    800036ec:	ffffe097          	auipc	ra,0xffffe
    800036f0:	594080e7          	jalr	1428(ra) # 80001c80 <_ZdlPv>
    800036f4:	000c0113          	mv	sp,s8
}
    800036f8:	f8040113          	addi	sp,s0,-128
    800036fc:	07813083          	ld	ra,120(sp)
    80003700:	07013403          	ld	s0,112(sp)
    80003704:	06813483          	ld	s1,104(sp)
    80003708:	06013903          	ld	s2,96(sp)
    8000370c:	05813983          	ld	s3,88(sp)
    80003710:	05013a03          	ld	s4,80(sp)
    80003714:	04813a83          	ld	s5,72(sp)
    80003718:	04013b03          	ld	s6,64(sp)
    8000371c:	03813b83          	ld	s7,56(sp)
    80003720:	03013c03          	ld	s8,48(sp)
    80003724:	02813c83          	ld	s9,40(sp)
    80003728:	08010113          	addi	sp,sp,128
    8000372c:	00008067          	ret
    80003730:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003734:	000a8513          	mv	a0,s5
    80003738:	ffffe097          	auipc	ra,0xffffe
    8000373c:	548080e7          	jalr	1352(ra) # 80001c80 <_ZdlPv>
    80003740:	00048513          	mv	a0,s1
    80003744:	00008097          	auipc	ra,0x8
    80003748:	d14080e7          	jalr	-748(ra) # 8000b458 <_Unwind_Resume>
    8000374c:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003750:	00090513          	mv	a0,s2
    80003754:	ffffe097          	auipc	ra,0xffffe
    80003758:	52c080e7          	jalr	1324(ra) # 80001c80 <_ZdlPv>
    8000375c:	00048513          	mv	a0,s1
    80003760:	00008097          	auipc	ra,0x8
    80003764:	cf8080e7          	jalr	-776(ra) # 8000b458 <_Unwind_Resume>
    80003768:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    8000376c:	000b8513          	mv	a0,s7
    80003770:	ffffe097          	auipc	ra,0xffffe
    80003774:	510080e7          	jalr	1296(ra) # 80001c80 <_ZdlPv>
    80003778:	00048513          	mv	a0,s1
    8000377c:	00008097          	auipc	ra,0x8
    80003780:	cdc080e7          	jalr	-804(ra) # 8000b458 <_Unwind_Resume>
    80003784:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003788:	00048513          	mv	a0,s1
    8000378c:	ffffe097          	auipc	ra,0xffffe
    80003790:	4f4080e7          	jalr	1268(ra) # 80001c80 <_ZdlPv>
    80003794:	00090513          	mv	a0,s2
    80003798:	00008097          	auipc	ra,0x8
    8000379c:	cc0080e7          	jalr	-832(ra) # 8000b458 <_Unwind_Resume>
    800037a0:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    800037a4:	000c8513          	mv	a0,s9
    800037a8:	ffffe097          	auipc	ra,0xffffe
    800037ac:	4d8080e7          	jalr	1240(ra) # 80001c80 <_ZdlPv>
    800037b0:	00048513          	mv	a0,s1
    800037b4:	00008097          	auipc	ra,0x8
    800037b8:	ca4080e7          	jalr	-860(ra) # 8000b458 <_Unwind_Resume>

00000000800037bc <_ZN8Consumer3runEv>:
    void run() override {
    800037bc:	fd010113          	addi	sp,sp,-48
    800037c0:	02113423          	sd	ra,40(sp)
    800037c4:	02813023          	sd	s0,32(sp)
    800037c8:	00913c23          	sd	s1,24(sp)
    800037cc:	01213823          	sd	s2,16(sp)
    800037d0:	01313423          	sd	s3,8(sp)
    800037d4:	03010413          	addi	s0,sp,48
    800037d8:	00050913          	mv	s2,a0
        int i = 0;
    800037dc:	00000993          	li	s3,0
    800037e0:	0100006f          	j	800037f0 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    800037e4:	00a00513          	li	a0,10
    800037e8:	ffffe097          	auipc	ra,0xffffe
    800037ec:	71c080e7          	jalr	1820(ra) # 80001f04 <_ZN7Console4putcEc>
        while (!threadEnd) {
    800037f0:	00007797          	auipc	a5,0x7
    800037f4:	b607a783          	lw	a5,-1184(a5) # 8000a350 <_ZL9threadEnd>
    800037f8:	04079a63          	bnez	a5,8000384c <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800037fc:	02093783          	ld	a5,32(s2)
    80003800:	0087b503          	ld	a0,8(a5)
    80003804:	00001097          	auipc	ra,0x1
    80003808:	638080e7          	jalr	1592(ra) # 80004e3c <_ZN9BufferCPP3getEv>
            i++;
    8000380c:	0019849b          	addiw	s1,s3,1
    80003810:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80003814:	0ff57513          	andi	a0,a0,255
    80003818:	ffffe097          	auipc	ra,0xffffe
    8000381c:	6ec080e7          	jalr	1772(ra) # 80001f04 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80003820:	05000793          	li	a5,80
    80003824:	02f4e4bb          	remw	s1,s1,a5
    80003828:	fc0494e3          	bnez	s1,800037f0 <_ZN8Consumer3runEv+0x34>
    8000382c:	fb9ff06f          	j	800037e4 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80003830:	02093783          	ld	a5,32(s2)
    80003834:	0087b503          	ld	a0,8(a5)
    80003838:	00001097          	auipc	ra,0x1
    8000383c:	604080e7          	jalr	1540(ra) # 80004e3c <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80003840:	0ff57513          	andi	a0,a0,255
    80003844:	ffffe097          	auipc	ra,0xffffe
    80003848:	6c0080e7          	jalr	1728(ra) # 80001f04 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    8000384c:	02093783          	ld	a5,32(s2)
    80003850:	0087b503          	ld	a0,8(a5)
    80003854:	00001097          	auipc	ra,0x1
    80003858:	674080e7          	jalr	1652(ra) # 80004ec8 <_ZN9BufferCPP6getCntEv>
    8000385c:	fca04ae3          	bgtz	a0,80003830 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80003860:	02093783          	ld	a5,32(s2)
    80003864:	0107b503          	ld	a0,16(a5)
    80003868:	ffffe097          	auipc	ra,0xffffe
    8000386c:	648080e7          	jalr	1608(ra) # 80001eb0 <_ZN9Semaphore6signalEv>
    }
    80003870:	02813083          	ld	ra,40(sp)
    80003874:	02013403          	ld	s0,32(sp)
    80003878:	01813483          	ld	s1,24(sp)
    8000387c:	01013903          	ld	s2,16(sp)
    80003880:	00813983          	ld	s3,8(sp)
    80003884:	03010113          	addi	sp,sp,48
    80003888:	00008067          	ret

000000008000388c <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    8000388c:	ff010113          	addi	sp,sp,-16
    80003890:	00113423          	sd	ra,8(sp)
    80003894:	00813023          	sd	s0,0(sp)
    80003898:	01010413          	addi	s0,sp,16
    8000389c:	00007797          	auipc	a5,0x7
    800038a0:	94478793          	addi	a5,a5,-1724 # 8000a1e0 <_ZTV8Consumer+0x10>
    800038a4:	00f53023          	sd	a5,0(a0)
    800038a8:	ffffe097          	auipc	ra,0xffffe
    800038ac:	428080e7          	jalr	1064(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    800038b0:	00813083          	ld	ra,8(sp)
    800038b4:	00013403          	ld	s0,0(sp)
    800038b8:	01010113          	addi	sp,sp,16
    800038bc:	00008067          	ret

00000000800038c0 <_ZN8ConsumerD0Ev>:
    800038c0:	fe010113          	addi	sp,sp,-32
    800038c4:	00113c23          	sd	ra,24(sp)
    800038c8:	00813823          	sd	s0,16(sp)
    800038cc:	00913423          	sd	s1,8(sp)
    800038d0:	02010413          	addi	s0,sp,32
    800038d4:	00050493          	mv	s1,a0
    800038d8:	00007797          	auipc	a5,0x7
    800038dc:	90878793          	addi	a5,a5,-1784 # 8000a1e0 <_ZTV8Consumer+0x10>
    800038e0:	00f53023          	sd	a5,0(a0)
    800038e4:	ffffe097          	auipc	ra,0xffffe
    800038e8:	3ec080e7          	jalr	1004(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    800038ec:	00048513          	mv	a0,s1
    800038f0:	ffffe097          	auipc	ra,0xffffe
    800038f4:	390080e7          	jalr	912(ra) # 80001c80 <_ZdlPv>
    800038f8:	01813083          	ld	ra,24(sp)
    800038fc:	01013403          	ld	s0,16(sp)
    80003900:	00813483          	ld	s1,8(sp)
    80003904:	02010113          	addi	sp,sp,32
    80003908:	00008067          	ret

000000008000390c <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    8000390c:	ff010113          	addi	sp,sp,-16
    80003910:	00113423          	sd	ra,8(sp)
    80003914:	00813023          	sd	s0,0(sp)
    80003918:	01010413          	addi	s0,sp,16
    8000391c:	00007797          	auipc	a5,0x7
    80003920:	87478793          	addi	a5,a5,-1932 # 8000a190 <_ZTV16ProducerKeyborad+0x10>
    80003924:	00f53023          	sd	a5,0(a0)
    80003928:	ffffe097          	auipc	ra,0xffffe
    8000392c:	3a8080e7          	jalr	936(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    80003930:	00813083          	ld	ra,8(sp)
    80003934:	00013403          	ld	s0,0(sp)
    80003938:	01010113          	addi	sp,sp,16
    8000393c:	00008067          	ret

0000000080003940 <_ZN16ProducerKeyboradD0Ev>:
    80003940:	fe010113          	addi	sp,sp,-32
    80003944:	00113c23          	sd	ra,24(sp)
    80003948:	00813823          	sd	s0,16(sp)
    8000394c:	00913423          	sd	s1,8(sp)
    80003950:	02010413          	addi	s0,sp,32
    80003954:	00050493          	mv	s1,a0
    80003958:	00007797          	auipc	a5,0x7
    8000395c:	83878793          	addi	a5,a5,-1992 # 8000a190 <_ZTV16ProducerKeyborad+0x10>
    80003960:	00f53023          	sd	a5,0(a0)
    80003964:	ffffe097          	auipc	ra,0xffffe
    80003968:	36c080e7          	jalr	876(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    8000396c:	00048513          	mv	a0,s1
    80003970:	ffffe097          	auipc	ra,0xffffe
    80003974:	310080e7          	jalr	784(ra) # 80001c80 <_ZdlPv>
    80003978:	01813083          	ld	ra,24(sp)
    8000397c:	01013403          	ld	s0,16(sp)
    80003980:	00813483          	ld	s1,8(sp)
    80003984:	02010113          	addi	sp,sp,32
    80003988:	00008067          	ret

000000008000398c <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    8000398c:	ff010113          	addi	sp,sp,-16
    80003990:	00113423          	sd	ra,8(sp)
    80003994:	00813023          	sd	s0,0(sp)
    80003998:	01010413          	addi	s0,sp,16
    8000399c:	00007797          	auipc	a5,0x7
    800039a0:	81c78793          	addi	a5,a5,-2020 # 8000a1b8 <_ZTV8Producer+0x10>
    800039a4:	00f53023          	sd	a5,0(a0)
    800039a8:	ffffe097          	auipc	ra,0xffffe
    800039ac:	328080e7          	jalr	808(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    800039b0:	00813083          	ld	ra,8(sp)
    800039b4:	00013403          	ld	s0,0(sp)
    800039b8:	01010113          	addi	sp,sp,16
    800039bc:	00008067          	ret

00000000800039c0 <_ZN8ProducerD0Ev>:
    800039c0:	fe010113          	addi	sp,sp,-32
    800039c4:	00113c23          	sd	ra,24(sp)
    800039c8:	00813823          	sd	s0,16(sp)
    800039cc:	00913423          	sd	s1,8(sp)
    800039d0:	02010413          	addi	s0,sp,32
    800039d4:	00050493          	mv	s1,a0
    800039d8:	00006797          	auipc	a5,0x6
    800039dc:	7e078793          	addi	a5,a5,2016 # 8000a1b8 <_ZTV8Producer+0x10>
    800039e0:	00f53023          	sd	a5,0(a0)
    800039e4:	ffffe097          	auipc	ra,0xffffe
    800039e8:	2ec080e7          	jalr	748(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    800039ec:	00048513          	mv	a0,s1
    800039f0:	ffffe097          	auipc	ra,0xffffe
    800039f4:	290080e7          	jalr	656(ra) # 80001c80 <_ZdlPv>
    800039f8:	01813083          	ld	ra,24(sp)
    800039fc:	01013403          	ld	s0,16(sp)
    80003a00:	00813483          	ld	s1,8(sp)
    80003a04:	02010113          	addi	sp,sp,32
    80003a08:	00008067          	ret

0000000080003a0c <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80003a0c:	fe010113          	addi	sp,sp,-32
    80003a10:	00113c23          	sd	ra,24(sp)
    80003a14:	00813823          	sd	s0,16(sp)
    80003a18:	00913423          	sd	s1,8(sp)
    80003a1c:	02010413          	addi	s0,sp,32
    80003a20:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80003a24:	ffffe097          	auipc	ra,0xffffe
    80003a28:	a20080e7          	jalr	-1504(ra) # 80001444 <_Z4getcv>
    80003a2c:	0005059b          	sext.w	a1,a0
    80003a30:	01b00793          	li	a5,27
    80003a34:	00f58c63          	beq	a1,a5,80003a4c <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80003a38:	0204b783          	ld	a5,32(s1)
    80003a3c:	0087b503          	ld	a0,8(a5)
    80003a40:	00001097          	auipc	ra,0x1
    80003a44:	36c080e7          	jalr	876(ra) # 80004dac <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80003a48:	fddff06f          	j	80003a24 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80003a4c:	00100793          	li	a5,1
    80003a50:	00007717          	auipc	a4,0x7
    80003a54:	90f72023          	sw	a5,-1792(a4) # 8000a350 <_ZL9threadEnd>
        td->buffer->put('!');
    80003a58:	0204b783          	ld	a5,32(s1)
    80003a5c:	02100593          	li	a1,33
    80003a60:	0087b503          	ld	a0,8(a5)
    80003a64:	00001097          	auipc	ra,0x1
    80003a68:	348080e7          	jalr	840(ra) # 80004dac <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80003a6c:	0204b783          	ld	a5,32(s1)
    80003a70:	0107b503          	ld	a0,16(a5)
    80003a74:	ffffe097          	auipc	ra,0xffffe
    80003a78:	43c080e7          	jalr	1084(ra) # 80001eb0 <_ZN9Semaphore6signalEv>
    }
    80003a7c:	01813083          	ld	ra,24(sp)
    80003a80:	01013403          	ld	s0,16(sp)
    80003a84:	00813483          	ld	s1,8(sp)
    80003a88:	02010113          	addi	sp,sp,32
    80003a8c:	00008067          	ret

0000000080003a90 <_ZN8Producer3runEv>:
    void run() override {
    80003a90:	fe010113          	addi	sp,sp,-32
    80003a94:	00113c23          	sd	ra,24(sp)
    80003a98:	00813823          	sd	s0,16(sp)
    80003a9c:	00913423          	sd	s1,8(sp)
    80003aa0:	01213023          	sd	s2,0(sp)
    80003aa4:	02010413          	addi	s0,sp,32
    80003aa8:	00050493          	mv	s1,a0
        int i = 0;
    80003aac:	00000913          	li	s2,0
        while (!threadEnd) {
    80003ab0:	00007797          	auipc	a5,0x7
    80003ab4:	8a07a783          	lw	a5,-1888(a5) # 8000a350 <_ZL9threadEnd>
    80003ab8:	04079263          	bnez	a5,80003afc <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80003abc:	0204b783          	ld	a5,32(s1)
    80003ac0:	0007a583          	lw	a1,0(a5)
    80003ac4:	0305859b          	addiw	a1,a1,48
    80003ac8:	0087b503          	ld	a0,8(a5)
    80003acc:	00001097          	auipc	ra,0x1
    80003ad0:	2e0080e7          	jalr	736(ra) # 80004dac <_ZN9BufferCPP3putEi>
            i++;
    80003ad4:	0019071b          	addiw	a4,s2,1
    80003ad8:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80003adc:	0204b783          	ld	a5,32(s1)
    80003ae0:	0007a783          	lw	a5,0(a5)
    80003ae4:	00e787bb          	addw	a5,a5,a4
    80003ae8:	00500513          	li	a0,5
    80003aec:	02a7e53b          	remw	a0,a5,a0
    80003af0:	ffffe097          	auipc	ra,0xffffe
    80003af4:	43c080e7          	jalr	1084(ra) # 80001f2c <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80003af8:	fb9ff06f          	j	80003ab0 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80003afc:	0204b783          	ld	a5,32(s1)
    80003b00:	0107b503          	ld	a0,16(a5)
    80003b04:	ffffe097          	auipc	ra,0xffffe
    80003b08:	3ac080e7          	jalr	940(ra) # 80001eb0 <_ZN9Semaphore6signalEv>
    }
    80003b0c:	01813083          	ld	ra,24(sp)
    80003b10:	01013403          	ld	s0,16(sp)
    80003b14:	00813483          	ld	s1,8(sp)
    80003b18:	00013903          	ld	s2,0(sp)
    80003b1c:	02010113          	addi	sp,sp,32
    80003b20:	00008067          	ret

0000000080003b24 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003b24:	fe010113          	addi	sp,sp,-32
    80003b28:	00113c23          	sd	ra,24(sp)
    80003b2c:	00813823          	sd	s0,16(sp)
    80003b30:	00913423          	sd	s1,8(sp)
    80003b34:	01213023          	sd	s2,0(sp)
    80003b38:	02010413          	addi	s0,sp,32
    80003b3c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003b40:	00100793          	li	a5,1
    80003b44:	02a7f863          	bgeu	a5,a0,80003b74 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003b48:	00a00793          	li	a5,10
    80003b4c:	02f577b3          	remu	a5,a0,a5
    80003b50:	02078e63          	beqz	a5,80003b8c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003b54:	fff48513          	addi	a0,s1,-1
    80003b58:	00000097          	auipc	ra,0x0
    80003b5c:	fcc080e7          	jalr	-52(ra) # 80003b24 <_ZL9fibonaccim>
    80003b60:	00050913          	mv	s2,a0
    80003b64:	ffe48513          	addi	a0,s1,-2
    80003b68:	00000097          	auipc	ra,0x0
    80003b6c:	fbc080e7          	jalr	-68(ra) # 80003b24 <_ZL9fibonaccim>
    80003b70:	00a90533          	add	a0,s2,a0
}
    80003b74:	01813083          	ld	ra,24(sp)
    80003b78:	01013403          	ld	s0,16(sp)
    80003b7c:	00813483          	ld	s1,8(sp)
    80003b80:	00013903          	ld	s2,0(sp)
    80003b84:	02010113          	addi	sp,sp,32
    80003b88:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003b8c:	ffffd097          	auipc	ra,0xffffd
    80003b90:	764080e7          	jalr	1892(ra) # 800012f0 <_Z15thread_dispatchv>
    80003b94:	fc1ff06f          	j	80003b54 <_ZL9fibonaccim+0x30>

0000000080003b98 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003b98:	fe010113          	addi	sp,sp,-32
    80003b9c:	00113c23          	sd	ra,24(sp)
    80003ba0:	00813823          	sd	s0,16(sp)
    80003ba4:	00913423          	sd	s1,8(sp)
    80003ba8:	01213023          	sd	s2,0(sp)
    80003bac:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003bb0:	00a00493          	li	s1,10
    80003bb4:	0400006f          	j	80003bf4 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003bb8:	00004517          	auipc	a0,0x4
    80003bbc:	6d850513          	addi	a0,a0,1752 # 80008290 <_ZZ13printIntegerAlE6digits+0x158>
    80003bc0:	00001097          	auipc	ra,0x1
    80003bc4:	dc8080e7          	jalr	-568(ra) # 80004988 <_Z11printStringPKc>
    80003bc8:	00000613          	li	a2,0
    80003bcc:	00a00593          	li	a1,10
    80003bd0:	00048513          	mv	a0,s1
    80003bd4:	00001097          	auipc	ra,0x1
    80003bd8:	f64080e7          	jalr	-156(ra) # 80004b38 <_Z8printIntiii>
    80003bdc:	00005517          	auipc	a0,0x5
    80003be0:	8d450513          	addi	a0,a0,-1836 # 800084b0 <_ZZ13printIntegerAlE6digits+0x378>
    80003be4:	00001097          	auipc	ra,0x1
    80003be8:	da4080e7          	jalr	-604(ra) # 80004988 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003bec:	0014849b          	addiw	s1,s1,1
    80003bf0:	0ff4f493          	andi	s1,s1,255
    80003bf4:	00c00793          	li	a5,12
    80003bf8:	fc97f0e3          	bgeu	a5,s1,80003bb8 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003bfc:	00004517          	auipc	a0,0x4
    80003c00:	69c50513          	addi	a0,a0,1692 # 80008298 <_ZZ13printIntegerAlE6digits+0x160>
    80003c04:	00001097          	auipc	ra,0x1
    80003c08:	d84080e7          	jalr	-636(ra) # 80004988 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003c0c:	00500313          	li	t1,5
    thread_dispatch();
    80003c10:	ffffd097          	auipc	ra,0xffffd
    80003c14:	6e0080e7          	jalr	1760(ra) # 800012f0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003c18:	01000513          	li	a0,16
    80003c1c:	00000097          	auipc	ra,0x0
    80003c20:	f08080e7          	jalr	-248(ra) # 80003b24 <_ZL9fibonaccim>
    80003c24:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003c28:	00004517          	auipc	a0,0x4
    80003c2c:	68050513          	addi	a0,a0,1664 # 800082a8 <_ZZ13printIntegerAlE6digits+0x170>
    80003c30:	00001097          	auipc	ra,0x1
    80003c34:	d58080e7          	jalr	-680(ra) # 80004988 <_Z11printStringPKc>
    80003c38:	00000613          	li	a2,0
    80003c3c:	00a00593          	li	a1,10
    80003c40:	0009051b          	sext.w	a0,s2
    80003c44:	00001097          	auipc	ra,0x1
    80003c48:	ef4080e7          	jalr	-268(ra) # 80004b38 <_Z8printIntiii>
    80003c4c:	00005517          	auipc	a0,0x5
    80003c50:	86450513          	addi	a0,a0,-1948 # 800084b0 <_ZZ13printIntegerAlE6digits+0x378>
    80003c54:	00001097          	auipc	ra,0x1
    80003c58:	d34080e7          	jalr	-716(ra) # 80004988 <_Z11printStringPKc>
    80003c5c:	0400006f          	j	80003c9c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003c60:	00004517          	auipc	a0,0x4
    80003c64:	63050513          	addi	a0,a0,1584 # 80008290 <_ZZ13printIntegerAlE6digits+0x158>
    80003c68:	00001097          	auipc	ra,0x1
    80003c6c:	d20080e7          	jalr	-736(ra) # 80004988 <_Z11printStringPKc>
    80003c70:	00000613          	li	a2,0
    80003c74:	00a00593          	li	a1,10
    80003c78:	00048513          	mv	a0,s1
    80003c7c:	00001097          	auipc	ra,0x1
    80003c80:	ebc080e7          	jalr	-324(ra) # 80004b38 <_Z8printIntiii>
    80003c84:	00005517          	auipc	a0,0x5
    80003c88:	82c50513          	addi	a0,a0,-2004 # 800084b0 <_ZZ13printIntegerAlE6digits+0x378>
    80003c8c:	00001097          	auipc	ra,0x1
    80003c90:	cfc080e7          	jalr	-772(ra) # 80004988 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003c94:	0014849b          	addiw	s1,s1,1
    80003c98:	0ff4f493          	andi	s1,s1,255
    80003c9c:	00f00793          	li	a5,15
    80003ca0:	fc97f0e3          	bgeu	a5,s1,80003c60 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003ca4:	00004517          	auipc	a0,0x4
    80003ca8:	61450513          	addi	a0,a0,1556 # 800082b8 <_ZZ13printIntegerAlE6digits+0x180>
    80003cac:	00001097          	auipc	ra,0x1
    80003cb0:	cdc080e7          	jalr	-804(ra) # 80004988 <_Z11printStringPKc>
    finishedD = true;
    80003cb4:	00100793          	li	a5,1
    80003cb8:	00006717          	auipc	a4,0x6
    80003cbc:	6af70423          	sb	a5,1704(a4) # 8000a360 <_ZL9finishedD>
    thread_dispatch();
    80003cc0:	ffffd097          	auipc	ra,0xffffd
    80003cc4:	630080e7          	jalr	1584(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80003cc8:	01813083          	ld	ra,24(sp)
    80003ccc:	01013403          	ld	s0,16(sp)
    80003cd0:	00813483          	ld	s1,8(sp)
    80003cd4:	00013903          	ld	s2,0(sp)
    80003cd8:	02010113          	addi	sp,sp,32
    80003cdc:	00008067          	ret

0000000080003ce0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003ce0:	fe010113          	addi	sp,sp,-32
    80003ce4:	00113c23          	sd	ra,24(sp)
    80003ce8:	00813823          	sd	s0,16(sp)
    80003cec:	00913423          	sd	s1,8(sp)
    80003cf0:	01213023          	sd	s2,0(sp)
    80003cf4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003cf8:	00000493          	li	s1,0
    80003cfc:	0400006f          	j	80003d3c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003d00:	00004517          	auipc	a0,0x4
    80003d04:	56050513          	addi	a0,a0,1376 # 80008260 <_ZZ13printIntegerAlE6digits+0x128>
    80003d08:	00001097          	auipc	ra,0x1
    80003d0c:	c80080e7          	jalr	-896(ra) # 80004988 <_Z11printStringPKc>
    80003d10:	00000613          	li	a2,0
    80003d14:	00a00593          	li	a1,10
    80003d18:	00048513          	mv	a0,s1
    80003d1c:	00001097          	auipc	ra,0x1
    80003d20:	e1c080e7          	jalr	-484(ra) # 80004b38 <_Z8printIntiii>
    80003d24:	00004517          	auipc	a0,0x4
    80003d28:	78c50513          	addi	a0,a0,1932 # 800084b0 <_ZZ13printIntegerAlE6digits+0x378>
    80003d2c:	00001097          	auipc	ra,0x1
    80003d30:	c5c080e7          	jalr	-932(ra) # 80004988 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003d34:	0014849b          	addiw	s1,s1,1
    80003d38:	0ff4f493          	andi	s1,s1,255
    80003d3c:	00200793          	li	a5,2
    80003d40:	fc97f0e3          	bgeu	a5,s1,80003d00 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003d44:	00004517          	auipc	a0,0x4
    80003d48:	52450513          	addi	a0,a0,1316 # 80008268 <_ZZ13printIntegerAlE6digits+0x130>
    80003d4c:	00001097          	auipc	ra,0x1
    80003d50:	c3c080e7          	jalr	-964(ra) # 80004988 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003d54:	00700313          	li	t1,7
    thread_dispatch();
    80003d58:	ffffd097          	auipc	ra,0xffffd
    80003d5c:	598080e7          	jalr	1432(ra) # 800012f0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003d60:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003d64:	00004517          	auipc	a0,0x4
    80003d68:	51450513          	addi	a0,a0,1300 # 80008278 <_ZZ13printIntegerAlE6digits+0x140>
    80003d6c:	00001097          	auipc	ra,0x1
    80003d70:	c1c080e7          	jalr	-996(ra) # 80004988 <_Z11printStringPKc>
    80003d74:	00000613          	li	a2,0
    80003d78:	00a00593          	li	a1,10
    80003d7c:	0009051b          	sext.w	a0,s2
    80003d80:	00001097          	auipc	ra,0x1
    80003d84:	db8080e7          	jalr	-584(ra) # 80004b38 <_Z8printIntiii>
    80003d88:	00004517          	auipc	a0,0x4
    80003d8c:	72850513          	addi	a0,a0,1832 # 800084b0 <_ZZ13printIntegerAlE6digits+0x378>
    80003d90:	00001097          	auipc	ra,0x1
    80003d94:	bf8080e7          	jalr	-1032(ra) # 80004988 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003d98:	00c00513          	li	a0,12
    80003d9c:	00000097          	auipc	ra,0x0
    80003da0:	d88080e7          	jalr	-632(ra) # 80003b24 <_ZL9fibonaccim>
    80003da4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003da8:	00004517          	auipc	a0,0x4
    80003dac:	4d850513          	addi	a0,a0,1240 # 80008280 <_ZZ13printIntegerAlE6digits+0x148>
    80003db0:	00001097          	auipc	ra,0x1
    80003db4:	bd8080e7          	jalr	-1064(ra) # 80004988 <_Z11printStringPKc>
    80003db8:	00000613          	li	a2,0
    80003dbc:	00a00593          	li	a1,10
    80003dc0:	0009051b          	sext.w	a0,s2
    80003dc4:	00001097          	auipc	ra,0x1
    80003dc8:	d74080e7          	jalr	-652(ra) # 80004b38 <_Z8printIntiii>
    80003dcc:	00004517          	auipc	a0,0x4
    80003dd0:	6e450513          	addi	a0,a0,1764 # 800084b0 <_ZZ13printIntegerAlE6digits+0x378>
    80003dd4:	00001097          	auipc	ra,0x1
    80003dd8:	bb4080e7          	jalr	-1100(ra) # 80004988 <_Z11printStringPKc>
    80003ddc:	0400006f          	j	80003e1c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80003de0:	00004517          	auipc	a0,0x4
    80003de4:	48050513          	addi	a0,a0,1152 # 80008260 <_ZZ13printIntegerAlE6digits+0x128>
    80003de8:	00001097          	auipc	ra,0x1
    80003dec:	ba0080e7          	jalr	-1120(ra) # 80004988 <_Z11printStringPKc>
    80003df0:	00000613          	li	a2,0
    80003df4:	00a00593          	li	a1,10
    80003df8:	00048513          	mv	a0,s1
    80003dfc:	00001097          	auipc	ra,0x1
    80003e00:	d3c080e7          	jalr	-708(ra) # 80004b38 <_Z8printIntiii>
    80003e04:	00004517          	auipc	a0,0x4
    80003e08:	6ac50513          	addi	a0,a0,1708 # 800084b0 <_ZZ13printIntegerAlE6digits+0x378>
    80003e0c:	00001097          	auipc	ra,0x1
    80003e10:	b7c080e7          	jalr	-1156(ra) # 80004988 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003e14:	0014849b          	addiw	s1,s1,1
    80003e18:	0ff4f493          	andi	s1,s1,255
    80003e1c:	00500793          	li	a5,5
    80003e20:	fc97f0e3          	bgeu	a5,s1,80003de0 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80003e24:	00004517          	auipc	a0,0x4
    80003e28:	41450513          	addi	a0,a0,1044 # 80008238 <_ZZ13printIntegerAlE6digits+0x100>
    80003e2c:	00001097          	auipc	ra,0x1
    80003e30:	b5c080e7          	jalr	-1188(ra) # 80004988 <_Z11printStringPKc>
    finishedC = true;
    80003e34:	00100793          	li	a5,1
    80003e38:	00006717          	auipc	a4,0x6
    80003e3c:	52f704a3          	sb	a5,1321(a4) # 8000a361 <_ZL9finishedC>
    thread_dispatch();
    80003e40:	ffffd097          	auipc	ra,0xffffd
    80003e44:	4b0080e7          	jalr	1200(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80003e48:	01813083          	ld	ra,24(sp)
    80003e4c:	01013403          	ld	s0,16(sp)
    80003e50:	00813483          	ld	s1,8(sp)
    80003e54:	00013903          	ld	s2,0(sp)
    80003e58:	02010113          	addi	sp,sp,32
    80003e5c:	00008067          	ret

0000000080003e60 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80003e60:	fe010113          	addi	sp,sp,-32
    80003e64:	00113c23          	sd	ra,24(sp)
    80003e68:	00813823          	sd	s0,16(sp)
    80003e6c:	00913423          	sd	s1,8(sp)
    80003e70:	01213023          	sd	s2,0(sp)
    80003e74:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003e78:	00000913          	li	s2,0
    80003e7c:	0380006f          	j	80003eb4 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80003e80:	ffffd097          	auipc	ra,0xffffd
    80003e84:	470080e7          	jalr	1136(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003e88:	00148493          	addi	s1,s1,1
    80003e8c:	000027b7          	lui	a5,0x2
    80003e90:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003e94:	0097ee63          	bltu	a5,s1,80003eb0 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003e98:	00000713          	li	a4,0
    80003e9c:	000077b7          	lui	a5,0x7
    80003ea0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003ea4:	fce7eee3          	bltu	a5,a4,80003e80 <_ZL11workerBodyBPv+0x20>
    80003ea8:	00170713          	addi	a4,a4,1
    80003eac:	ff1ff06f          	j	80003e9c <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003eb0:	00190913          	addi	s2,s2,1
    80003eb4:	00f00793          	li	a5,15
    80003eb8:	0527e063          	bltu	a5,s2,80003ef8 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003ebc:	00004517          	auipc	a0,0x4
    80003ec0:	38c50513          	addi	a0,a0,908 # 80008248 <_ZZ13printIntegerAlE6digits+0x110>
    80003ec4:	00001097          	auipc	ra,0x1
    80003ec8:	ac4080e7          	jalr	-1340(ra) # 80004988 <_Z11printStringPKc>
    80003ecc:	00000613          	li	a2,0
    80003ed0:	00a00593          	li	a1,10
    80003ed4:	0009051b          	sext.w	a0,s2
    80003ed8:	00001097          	auipc	ra,0x1
    80003edc:	c60080e7          	jalr	-928(ra) # 80004b38 <_Z8printIntiii>
    80003ee0:	00004517          	auipc	a0,0x4
    80003ee4:	5d050513          	addi	a0,a0,1488 # 800084b0 <_ZZ13printIntegerAlE6digits+0x378>
    80003ee8:	00001097          	auipc	ra,0x1
    80003eec:	aa0080e7          	jalr	-1376(ra) # 80004988 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003ef0:	00000493          	li	s1,0
    80003ef4:	f99ff06f          	j	80003e8c <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80003ef8:	00004517          	auipc	a0,0x4
    80003efc:	35850513          	addi	a0,a0,856 # 80008250 <_ZZ13printIntegerAlE6digits+0x118>
    80003f00:	00001097          	auipc	ra,0x1
    80003f04:	a88080e7          	jalr	-1400(ra) # 80004988 <_Z11printStringPKc>
    finishedB = true;
    80003f08:	00100793          	li	a5,1
    80003f0c:	00006717          	auipc	a4,0x6
    80003f10:	44f70b23          	sb	a5,1110(a4) # 8000a362 <_ZL9finishedB>
    thread_dispatch();
    80003f14:	ffffd097          	auipc	ra,0xffffd
    80003f18:	3dc080e7          	jalr	988(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80003f1c:	01813083          	ld	ra,24(sp)
    80003f20:	01013403          	ld	s0,16(sp)
    80003f24:	00813483          	ld	s1,8(sp)
    80003f28:	00013903          	ld	s2,0(sp)
    80003f2c:	02010113          	addi	sp,sp,32
    80003f30:	00008067          	ret

0000000080003f34 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80003f34:	fe010113          	addi	sp,sp,-32
    80003f38:	00113c23          	sd	ra,24(sp)
    80003f3c:	00813823          	sd	s0,16(sp)
    80003f40:	00913423          	sd	s1,8(sp)
    80003f44:	01213023          	sd	s2,0(sp)
    80003f48:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003f4c:	00000913          	li	s2,0
    80003f50:	0380006f          	j	80003f88 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80003f54:	ffffd097          	auipc	ra,0xffffd
    80003f58:	39c080e7          	jalr	924(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003f5c:	00148493          	addi	s1,s1,1
    80003f60:	000027b7          	lui	a5,0x2
    80003f64:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003f68:	0097ee63          	bltu	a5,s1,80003f84 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003f6c:	00000713          	li	a4,0
    80003f70:	000077b7          	lui	a5,0x7
    80003f74:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003f78:	fce7eee3          	bltu	a5,a4,80003f54 <_ZL11workerBodyAPv+0x20>
    80003f7c:	00170713          	addi	a4,a4,1
    80003f80:	ff1ff06f          	j	80003f70 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003f84:	00190913          	addi	s2,s2,1
    80003f88:	00900793          	li	a5,9
    80003f8c:	0527e063          	bltu	a5,s2,80003fcc <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003f90:	00004517          	auipc	a0,0x4
    80003f94:	2a050513          	addi	a0,a0,672 # 80008230 <_ZZ13printIntegerAlE6digits+0xf8>
    80003f98:	00001097          	auipc	ra,0x1
    80003f9c:	9f0080e7          	jalr	-1552(ra) # 80004988 <_Z11printStringPKc>
    80003fa0:	00000613          	li	a2,0
    80003fa4:	00a00593          	li	a1,10
    80003fa8:	0009051b          	sext.w	a0,s2
    80003fac:	00001097          	auipc	ra,0x1
    80003fb0:	b8c080e7          	jalr	-1140(ra) # 80004b38 <_Z8printIntiii>
    80003fb4:	00004517          	auipc	a0,0x4
    80003fb8:	4fc50513          	addi	a0,a0,1276 # 800084b0 <_ZZ13printIntegerAlE6digits+0x378>
    80003fbc:	00001097          	auipc	ra,0x1
    80003fc0:	9cc080e7          	jalr	-1588(ra) # 80004988 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003fc4:	00000493          	li	s1,0
    80003fc8:	f99ff06f          	j	80003f60 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80003fcc:	00004517          	auipc	a0,0x4
    80003fd0:	26c50513          	addi	a0,a0,620 # 80008238 <_ZZ13printIntegerAlE6digits+0x100>
    80003fd4:	00001097          	auipc	ra,0x1
    80003fd8:	9b4080e7          	jalr	-1612(ra) # 80004988 <_Z11printStringPKc>
    finishedA = true;
    80003fdc:	00100793          	li	a5,1
    80003fe0:	00006717          	auipc	a4,0x6
    80003fe4:	38f701a3          	sb	a5,899(a4) # 8000a363 <_ZL9finishedA>
}
    80003fe8:	01813083          	ld	ra,24(sp)
    80003fec:	01013403          	ld	s0,16(sp)
    80003ff0:	00813483          	ld	s1,8(sp)
    80003ff4:	00013903          	ld	s2,0(sp)
    80003ff8:	02010113          	addi	sp,sp,32
    80003ffc:	00008067          	ret

0000000080004000 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004000:	fd010113          	addi	sp,sp,-48
    80004004:	02113423          	sd	ra,40(sp)
    80004008:	02813023          	sd	s0,32(sp)
    8000400c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004010:	00000613          	li	a2,0
    80004014:	00000597          	auipc	a1,0x0
    80004018:	f2058593          	addi	a1,a1,-224 # 80003f34 <_ZL11workerBodyAPv>
    8000401c:	fd040513          	addi	a0,s0,-48
    80004020:	ffffd097          	auipc	ra,0xffffd
    80004024:	274080e7          	jalr	628(ra) # 80001294 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004028:	00004517          	auipc	a0,0x4
    8000402c:	2a050513          	addi	a0,a0,672 # 800082c8 <_ZZ13printIntegerAlE6digits+0x190>
    80004030:	00001097          	auipc	ra,0x1
    80004034:	958080e7          	jalr	-1704(ra) # 80004988 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004038:	00000613          	li	a2,0
    8000403c:	00000597          	auipc	a1,0x0
    80004040:	e2458593          	addi	a1,a1,-476 # 80003e60 <_ZL11workerBodyBPv>
    80004044:	fd840513          	addi	a0,s0,-40
    80004048:	ffffd097          	auipc	ra,0xffffd
    8000404c:	24c080e7          	jalr	588(ra) # 80001294 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004050:	00004517          	auipc	a0,0x4
    80004054:	29050513          	addi	a0,a0,656 # 800082e0 <_ZZ13printIntegerAlE6digits+0x1a8>
    80004058:	00001097          	auipc	ra,0x1
    8000405c:	930080e7          	jalr	-1744(ra) # 80004988 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004060:	00000613          	li	a2,0
    80004064:	00000597          	auipc	a1,0x0
    80004068:	c7c58593          	addi	a1,a1,-900 # 80003ce0 <_ZL11workerBodyCPv>
    8000406c:	fe040513          	addi	a0,s0,-32
    80004070:	ffffd097          	auipc	ra,0xffffd
    80004074:	224080e7          	jalr	548(ra) # 80001294 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004078:	00004517          	auipc	a0,0x4
    8000407c:	28050513          	addi	a0,a0,640 # 800082f8 <_ZZ13printIntegerAlE6digits+0x1c0>
    80004080:	00001097          	auipc	ra,0x1
    80004084:	908080e7          	jalr	-1784(ra) # 80004988 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004088:	00000613          	li	a2,0
    8000408c:	00000597          	auipc	a1,0x0
    80004090:	b0c58593          	addi	a1,a1,-1268 # 80003b98 <_ZL11workerBodyDPv>
    80004094:	fe840513          	addi	a0,s0,-24
    80004098:	ffffd097          	auipc	ra,0xffffd
    8000409c:	1fc080e7          	jalr	508(ra) # 80001294 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800040a0:	00004517          	auipc	a0,0x4
    800040a4:	27050513          	addi	a0,a0,624 # 80008310 <_ZZ13printIntegerAlE6digits+0x1d8>
    800040a8:	00001097          	auipc	ra,0x1
    800040ac:	8e0080e7          	jalr	-1824(ra) # 80004988 <_Z11printStringPKc>
    800040b0:	00c0006f          	j	800040bc <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        //printStringA("%");
        thread_dispatch();
    800040b4:	ffffd097          	auipc	ra,0xffffd
    800040b8:	23c080e7          	jalr	572(ra) # 800012f0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800040bc:	00006797          	auipc	a5,0x6
    800040c0:	2a77c783          	lbu	a5,679(a5) # 8000a363 <_ZL9finishedA>
    800040c4:	fe0788e3          	beqz	a5,800040b4 <_Z18Threads_C_API_testv+0xb4>
    800040c8:	00006797          	auipc	a5,0x6
    800040cc:	29a7c783          	lbu	a5,666(a5) # 8000a362 <_ZL9finishedB>
    800040d0:	fe0782e3          	beqz	a5,800040b4 <_Z18Threads_C_API_testv+0xb4>
    800040d4:	00006797          	auipc	a5,0x6
    800040d8:	28d7c783          	lbu	a5,653(a5) # 8000a361 <_ZL9finishedC>
    800040dc:	fc078ce3          	beqz	a5,800040b4 <_Z18Threads_C_API_testv+0xb4>
    800040e0:	00006797          	auipc	a5,0x6
    800040e4:	2807c783          	lbu	a5,640(a5) # 8000a360 <_ZL9finishedD>
    800040e8:	fc0786e3          	beqz	a5,800040b4 <_Z18Threads_C_API_testv+0xb4>
    }

    //printStringA("kraj funkcije");
}
    800040ec:	02813083          	ld	ra,40(sp)
    800040f0:	02013403          	ld	s0,32(sp)
    800040f4:	03010113          	addi	sp,sp,48
    800040f8:	00008067          	ret

00000000800040fc <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800040fc:	fd010113          	addi	sp,sp,-48
    80004100:	02113423          	sd	ra,40(sp)
    80004104:	02813023          	sd	s0,32(sp)
    80004108:	00913c23          	sd	s1,24(sp)
    8000410c:	01213823          	sd	s2,16(sp)
    80004110:	01313423          	sd	s3,8(sp)
    80004114:	03010413          	addi	s0,sp,48
    80004118:	00050993          	mv	s3,a0
    8000411c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004120:	00000913          	li	s2,0
    80004124:	00c0006f          	j	80004130 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x2d) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004128:	ffffe097          	auipc	ra,0xffffe
    8000412c:	cc0080e7          	jalr	-832(ra) # 80001de8 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x2d) {
    80004130:	ffffd097          	auipc	ra,0xffffd
    80004134:	314080e7          	jalr	788(ra) # 80001444 <_Z4getcv>
    80004138:	0005059b          	sext.w	a1,a0
    8000413c:	02d00793          	li	a5,45
    80004140:	02f58a63          	beq	a1,a5,80004174 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004144:	0084b503          	ld	a0,8(s1)
    80004148:	00001097          	auipc	ra,0x1
    8000414c:	c64080e7          	jalr	-924(ra) # 80004dac <_ZN9BufferCPP3putEi>
        i++;
    80004150:	0019071b          	addiw	a4,s2,1
    80004154:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004158:	0004a683          	lw	a3,0(s1)
    8000415c:	0026979b          	slliw	a5,a3,0x2
    80004160:	00d787bb          	addw	a5,a5,a3
    80004164:	0017979b          	slliw	a5,a5,0x1
    80004168:	02f767bb          	remw	a5,a4,a5
    8000416c:	fc0792e3          	bnez	a5,80004130 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004170:	fb9ff06f          	j	80004128 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004174:	00100793          	li	a5,1
    80004178:	00006717          	auipc	a4,0x6
    8000417c:	1ef72823          	sw	a5,496(a4) # 8000a368 <_ZL9threadEnd>
    td->buffer->put('!');
    80004180:	0209b783          	ld	a5,32(s3)
    80004184:	02100593          	li	a1,33
    80004188:	0087b503          	ld	a0,8(a5)
    8000418c:	00001097          	auipc	ra,0x1
    80004190:	c20080e7          	jalr	-992(ra) # 80004dac <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004194:	0104b503          	ld	a0,16(s1)
    80004198:	ffffe097          	auipc	ra,0xffffe
    8000419c:	d18080e7          	jalr	-744(ra) # 80001eb0 <_ZN9Semaphore6signalEv>
}
    800041a0:	02813083          	ld	ra,40(sp)
    800041a4:	02013403          	ld	s0,32(sp)
    800041a8:	01813483          	ld	s1,24(sp)
    800041ac:	01013903          	ld	s2,16(sp)
    800041b0:	00813983          	ld	s3,8(sp)
    800041b4:	03010113          	addi	sp,sp,48
    800041b8:	00008067          	ret

00000000800041bc <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800041bc:	fe010113          	addi	sp,sp,-32
    800041c0:	00113c23          	sd	ra,24(sp)
    800041c4:	00813823          	sd	s0,16(sp)
    800041c8:	00913423          	sd	s1,8(sp)
    800041cc:	01213023          	sd	s2,0(sp)
    800041d0:	02010413          	addi	s0,sp,32
    800041d4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800041d8:	00000913          	li	s2,0
    800041dc:	00c0006f          	j	800041e8 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800041e0:	ffffe097          	auipc	ra,0xffffe
    800041e4:	c08080e7          	jalr	-1016(ra) # 80001de8 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800041e8:	00006797          	auipc	a5,0x6
    800041ec:	1807a783          	lw	a5,384(a5) # 8000a368 <_ZL9threadEnd>
    800041f0:	02079e63          	bnez	a5,8000422c <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800041f4:	0004a583          	lw	a1,0(s1)
    800041f8:	0305859b          	addiw	a1,a1,48
    800041fc:	0084b503          	ld	a0,8(s1)
    80004200:	00001097          	auipc	ra,0x1
    80004204:	bac080e7          	jalr	-1108(ra) # 80004dac <_ZN9BufferCPP3putEi>
        i++;
    80004208:	0019071b          	addiw	a4,s2,1
    8000420c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004210:	0004a683          	lw	a3,0(s1)
    80004214:	0026979b          	slliw	a5,a3,0x2
    80004218:	00d787bb          	addw	a5,a5,a3
    8000421c:	0017979b          	slliw	a5,a5,0x1
    80004220:	02f767bb          	remw	a5,a4,a5
    80004224:	fc0792e3          	bnez	a5,800041e8 <_ZN12ProducerSync8producerEPv+0x2c>
    80004228:	fb9ff06f          	j	800041e0 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    8000422c:	0104b503          	ld	a0,16(s1)
    80004230:	ffffe097          	auipc	ra,0xffffe
    80004234:	c80080e7          	jalr	-896(ra) # 80001eb0 <_ZN9Semaphore6signalEv>
}
    80004238:	01813083          	ld	ra,24(sp)
    8000423c:	01013403          	ld	s0,16(sp)
    80004240:	00813483          	ld	s1,8(sp)
    80004244:	00013903          	ld	s2,0(sp)
    80004248:	02010113          	addi	sp,sp,32
    8000424c:	00008067          	ret

0000000080004250 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004250:	fd010113          	addi	sp,sp,-48
    80004254:	02113423          	sd	ra,40(sp)
    80004258:	02813023          	sd	s0,32(sp)
    8000425c:	00913c23          	sd	s1,24(sp)
    80004260:	01213823          	sd	s2,16(sp)
    80004264:	01313423          	sd	s3,8(sp)
    80004268:	01413023          	sd	s4,0(sp)
    8000426c:	03010413          	addi	s0,sp,48
    80004270:	00050993          	mv	s3,a0
    80004274:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004278:	00000a13          	li	s4,0
    8000427c:	01c0006f          	j	80004298 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004280:	ffffe097          	auipc	ra,0xffffe
    80004284:	b68080e7          	jalr	-1176(ra) # 80001de8 <_ZN6Thread8dispatchEv>
    80004288:	0500006f          	j	800042d8 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000428c:	00a00513          	li	a0,10
    80004290:	ffffd097          	auipc	ra,0xffffd
    80004294:	1d8080e7          	jalr	472(ra) # 80001468 <_Z4putcc>
    while (!threadEnd) {
    80004298:	00006797          	auipc	a5,0x6
    8000429c:	0d07a783          	lw	a5,208(a5) # 8000a368 <_ZL9threadEnd>
    800042a0:	06079263          	bnez	a5,80004304 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800042a4:	00893503          	ld	a0,8(s2)
    800042a8:	00001097          	auipc	ra,0x1
    800042ac:	b94080e7          	jalr	-1132(ra) # 80004e3c <_ZN9BufferCPP3getEv>
        i++;
    800042b0:	001a049b          	addiw	s1,s4,1
    800042b4:	00048a1b          	sext.w	s4,s1
        putc(key);
    800042b8:	0ff57513          	andi	a0,a0,255
    800042bc:	ffffd097          	auipc	ra,0xffffd
    800042c0:	1ac080e7          	jalr	428(ra) # 80001468 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800042c4:	00092703          	lw	a4,0(s2)
    800042c8:	0027179b          	slliw	a5,a4,0x2
    800042cc:	00e787bb          	addw	a5,a5,a4
    800042d0:	02f4e7bb          	remw	a5,s1,a5
    800042d4:	fa0786e3          	beqz	a5,80004280 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800042d8:	05000793          	li	a5,80
    800042dc:	02f4e4bb          	remw	s1,s1,a5
    800042e0:	fa049ce3          	bnez	s1,80004298 <_ZN12ConsumerSync8consumerEPv+0x48>
    800042e4:	fa9ff06f          	j	8000428c <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800042e8:	0209b783          	ld	a5,32(s3)
    800042ec:	0087b503          	ld	a0,8(a5)
    800042f0:	00001097          	auipc	ra,0x1
    800042f4:	b4c080e7          	jalr	-1204(ra) # 80004e3c <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800042f8:	0ff57513          	andi	a0,a0,255
    800042fc:	ffffe097          	auipc	ra,0xffffe
    80004300:	c08080e7          	jalr	-1016(ra) # 80001f04 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004304:	0209b783          	ld	a5,32(s3)
    80004308:	0087b503          	ld	a0,8(a5)
    8000430c:	00001097          	auipc	ra,0x1
    80004310:	bbc080e7          	jalr	-1092(ra) # 80004ec8 <_ZN9BufferCPP6getCntEv>
    80004314:	fca04ae3          	bgtz	a0,800042e8 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004318:	01093503          	ld	a0,16(s2)
    8000431c:	ffffe097          	auipc	ra,0xffffe
    80004320:	b94080e7          	jalr	-1132(ra) # 80001eb0 <_ZN9Semaphore6signalEv>
}
    80004324:	02813083          	ld	ra,40(sp)
    80004328:	02013403          	ld	s0,32(sp)
    8000432c:	01813483          	ld	s1,24(sp)
    80004330:	01013903          	ld	s2,16(sp)
    80004334:	00813983          	ld	s3,8(sp)
    80004338:	00013a03          	ld	s4,0(sp)
    8000433c:	03010113          	addi	sp,sp,48
    80004340:	00008067          	ret

0000000080004344 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004344:	f8010113          	addi	sp,sp,-128
    80004348:	06113c23          	sd	ra,120(sp)
    8000434c:	06813823          	sd	s0,112(sp)
    80004350:	06913423          	sd	s1,104(sp)
    80004354:	07213023          	sd	s2,96(sp)
    80004358:	05313c23          	sd	s3,88(sp)
    8000435c:	05413823          	sd	s4,80(sp)
    80004360:	05513423          	sd	s5,72(sp)
    80004364:	05613023          	sd	s6,64(sp)
    80004368:	03713c23          	sd	s7,56(sp)
    8000436c:	03813823          	sd	s8,48(sp)
    80004370:	03913423          	sd	s9,40(sp)
    80004374:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004378:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    8000437c:	00004517          	auipc	a0,0x4
    80004380:	dcc50513          	addi	a0,a0,-564 # 80008148 <_ZZ13printIntegerAlE6digits+0x10>
    80004384:	00000097          	auipc	ra,0x0
    80004388:	604080e7          	jalr	1540(ra) # 80004988 <_Z11printStringPKc>
    getString(input, 30);
    8000438c:	01e00593          	li	a1,30
    80004390:	f8040493          	addi	s1,s0,-128
    80004394:	00048513          	mv	a0,s1
    80004398:	00000097          	auipc	ra,0x0
    8000439c:	678080e7          	jalr	1656(ra) # 80004a10 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800043a0:	00048513          	mv	a0,s1
    800043a4:	00000097          	auipc	ra,0x0
    800043a8:	744080e7          	jalr	1860(ra) # 80004ae8 <_Z11stringToIntPKc>
    800043ac:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800043b0:	00004517          	auipc	a0,0x4
    800043b4:	db850513          	addi	a0,a0,-584 # 80008168 <_ZZ13printIntegerAlE6digits+0x30>
    800043b8:	00000097          	auipc	ra,0x0
    800043bc:	5d0080e7          	jalr	1488(ra) # 80004988 <_Z11printStringPKc>
    getString(input, 30);
    800043c0:	01e00593          	li	a1,30
    800043c4:	00048513          	mv	a0,s1
    800043c8:	00000097          	auipc	ra,0x0
    800043cc:	648080e7          	jalr	1608(ra) # 80004a10 <_Z9getStringPci>
    n = stringToInt(input);
    800043d0:	00048513          	mv	a0,s1
    800043d4:	00000097          	auipc	ra,0x0
    800043d8:	714080e7          	jalr	1812(ra) # 80004ae8 <_Z11stringToIntPKc>
    800043dc:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800043e0:	00004517          	auipc	a0,0x4
    800043e4:	da850513          	addi	a0,a0,-600 # 80008188 <_ZZ13printIntegerAlE6digits+0x50>
    800043e8:	00000097          	auipc	ra,0x0
    800043ec:	5a0080e7          	jalr	1440(ra) # 80004988 <_Z11printStringPKc>
    800043f0:	00000613          	li	a2,0
    800043f4:	00a00593          	li	a1,10
    800043f8:	00090513          	mv	a0,s2
    800043fc:	00000097          	auipc	ra,0x0
    80004400:	73c080e7          	jalr	1852(ra) # 80004b38 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004404:	00004517          	auipc	a0,0x4
    80004408:	d9c50513          	addi	a0,a0,-612 # 800081a0 <_ZZ13printIntegerAlE6digits+0x68>
    8000440c:	00000097          	auipc	ra,0x0
    80004410:	57c080e7          	jalr	1404(ra) # 80004988 <_Z11printStringPKc>
    80004414:	00000613          	li	a2,0
    80004418:	00a00593          	li	a1,10
    8000441c:	00048513          	mv	a0,s1
    80004420:	00000097          	auipc	ra,0x0
    80004424:	718080e7          	jalr	1816(ra) # 80004b38 <_Z8printIntiii>
    printString(".\n");
    80004428:	00004517          	auipc	a0,0x4
    8000442c:	d9050513          	addi	a0,a0,-624 # 800081b8 <_ZZ13printIntegerAlE6digits+0x80>
    80004430:	00000097          	auipc	ra,0x0
    80004434:	558080e7          	jalr	1368(ra) # 80004988 <_Z11printStringPKc>
    if(threadNum > n) {
    80004438:	0324c463          	blt	s1,s2,80004460 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    8000443c:	03205c63          	blez	s2,80004474 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004440:	03800513          	li	a0,56
    80004444:	ffffd097          	auipc	ra,0xffffd
    80004448:	7ec080e7          	jalr	2028(ra) # 80001c30 <_Znwm>
    8000444c:	00050a93          	mv	s5,a0
    80004450:	00048593          	mv	a1,s1
    80004454:	00001097          	auipc	ra,0x1
    80004458:	804080e7          	jalr	-2044(ra) # 80004c58 <_ZN9BufferCPPC1Ei>
    8000445c:	0300006f          	j	8000448c <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004460:	00004517          	auipc	a0,0x4
    80004464:	d6050513          	addi	a0,a0,-672 # 800081c0 <_ZZ13printIntegerAlE6digits+0x88>
    80004468:	00000097          	auipc	ra,0x0
    8000446c:	520080e7          	jalr	1312(ra) # 80004988 <_Z11printStringPKc>
        return;
    80004470:	0140006f          	j	80004484 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004474:	00004517          	auipc	a0,0x4
    80004478:	d8c50513          	addi	a0,a0,-628 # 80008200 <_ZZ13printIntegerAlE6digits+0xc8>
    8000447c:	00000097          	auipc	ra,0x0
    80004480:	50c080e7          	jalr	1292(ra) # 80004988 <_Z11printStringPKc>
        return;
    80004484:	000b8113          	mv	sp,s7
    80004488:	2380006f          	j	800046c0 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    8000448c:	01000513          	li	a0,16
    80004490:	ffffd097          	auipc	ra,0xffffd
    80004494:	7a0080e7          	jalr	1952(ra) # 80001c30 <_Znwm>
    80004498:	00050493          	mv	s1,a0
    8000449c:	00000593          	li	a1,0
    800044a0:	ffffe097          	auipc	ra,0xffffe
    800044a4:	9a4080e7          	jalr	-1628(ra) # 80001e44 <_ZN9SemaphoreC1Ej>
    800044a8:	00006797          	auipc	a5,0x6
    800044ac:	ec97b423          	sd	s1,-312(a5) # 8000a370 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800044b0:	00391793          	slli	a5,s2,0x3
    800044b4:	00f78793          	addi	a5,a5,15
    800044b8:	ff07f793          	andi	a5,a5,-16
    800044bc:	40f10133          	sub	sp,sp,a5
    800044c0:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800044c4:	0019071b          	addiw	a4,s2,1
    800044c8:	00171793          	slli	a5,a4,0x1
    800044cc:	00e787b3          	add	a5,a5,a4
    800044d0:	00379793          	slli	a5,a5,0x3
    800044d4:	00f78793          	addi	a5,a5,15
    800044d8:	ff07f793          	andi	a5,a5,-16
    800044dc:	40f10133          	sub	sp,sp,a5
    800044e0:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800044e4:	00191c13          	slli	s8,s2,0x1
    800044e8:	012c07b3          	add	a5,s8,s2
    800044ec:	00379793          	slli	a5,a5,0x3
    800044f0:	00fa07b3          	add	a5,s4,a5
    800044f4:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800044f8:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800044fc:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004500:	02800513          	li	a0,40
    80004504:	ffffd097          	auipc	ra,0xffffd
    80004508:	72c080e7          	jalr	1836(ra) # 80001c30 <_Znwm>
    8000450c:	00050b13          	mv	s6,a0
    80004510:	012c0c33          	add	s8,s8,s2
    80004514:	003c1c13          	slli	s8,s8,0x3
    80004518:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    8000451c:	ffffe097          	auipc	ra,0xffffe
    80004520:	8f4080e7          	jalr	-1804(ra) # 80001e10 <_ZN6ThreadC1Ev>
    80004524:	00006797          	auipc	a5,0x6
    80004528:	d3478793          	addi	a5,a5,-716 # 8000a258 <_ZTV12ConsumerSync+0x10>
    8000452c:	00fb3023          	sd	a5,0(s6)
    80004530:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004534:	000b0513          	mv	a0,s6
    80004538:	ffffe097          	auipc	ra,0xffffe
    8000453c:	87c080e7          	jalr	-1924(ra) # 80001db4 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004540:	00000493          	li	s1,0
    80004544:	0380006f          	j	8000457c <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004548:	00006797          	auipc	a5,0x6
    8000454c:	ce878793          	addi	a5,a5,-792 # 8000a230 <_ZTV12ProducerSync+0x10>
    80004550:	00fcb023          	sd	a5,0(s9)
    80004554:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004558:	00349793          	slli	a5,s1,0x3
    8000455c:	00f987b3          	add	a5,s3,a5
    80004560:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004564:	00349793          	slli	a5,s1,0x3
    80004568:	00f987b3          	add	a5,s3,a5
    8000456c:	0007b503          	ld	a0,0(a5)
    80004570:	ffffe097          	auipc	ra,0xffffe
    80004574:	844080e7          	jalr	-1980(ra) # 80001db4 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004578:	0014849b          	addiw	s1,s1,1
    8000457c:	0b24d063          	bge	s1,s2,8000461c <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004580:	00149793          	slli	a5,s1,0x1
    80004584:	009787b3          	add	a5,a5,s1
    80004588:	00379793          	slli	a5,a5,0x3
    8000458c:	00fa07b3          	add	a5,s4,a5
    80004590:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004594:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004598:	00006717          	auipc	a4,0x6
    8000459c:	dd873703          	ld	a4,-552(a4) # 8000a370 <_ZL10waitForAll>
    800045a0:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800045a4:	02905863          	blez	s1,800045d4 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    800045a8:	02800513          	li	a0,40
    800045ac:	ffffd097          	auipc	ra,0xffffd
    800045b0:	684080e7          	jalr	1668(ra) # 80001c30 <_Znwm>
    800045b4:	00050c93          	mv	s9,a0
    800045b8:	00149c13          	slli	s8,s1,0x1
    800045bc:	009c0c33          	add	s8,s8,s1
    800045c0:	003c1c13          	slli	s8,s8,0x3
    800045c4:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800045c8:	ffffe097          	auipc	ra,0xffffe
    800045cc:	848080e7          	jalr	-1976(ra) # 80001e10 <_ZN6ThreadC1Ev>
    800045d0:	f79ff06f          	j	80004548 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800045d4:	02800513          	li	a0,40
    800045d8:	ffffd097          	auipc	ra,0xffffd
    800045dc:	658080e7          	jalr	1624(ra) # 80001c30 <_Znwm>
    800045e0:	00050c93          	mv	s9,a0
    800045e4:	00149c13          	slli	s8,s1,0x1
    800045e8:	009c0c33          	add	s8,s8,s1
    800045ec:	003c1c13          	slli	s8,s8,0x3
    800045f0:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800045f4:	ffffe097          	auipc	ra,0xffffe
    800045f8:	81c080e7          	jalr	-2020(ra) # 80001e10 <_ZN6ThreadC1Ev>
    800045fc:	00006797          	auipc	a5,0x6
    80004600:	c0c78793          	addi	a5,a5,-1012 # 8000a208 <_ZTV16ProducerKeyboard+0x10>
    80004604:	00fcb023          	sd	a5,0(s9)
    80004608:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    8000460c:	00349793          	slli	a5,s1,0x3
    80004610:	00f987b3          	add	a5,s3,a5
    80004614:	0197b023          	sd	s9,0(a5)
    80004618:	f4dff06f          	j	80004564 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    8000461c:	ffffd097          	auipc	ra,0xffffd
    80004620:	7cc080e7          	jalr	1996(ra) # 80001de8 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004624:	00000493          	li	s1,0
    80004628:	00994e63          	blt	s2,s1,80004644 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    8000462c:	00006517          	auipc	a0,0x6
    80004630:	d4453503          	ld	a0,-700(a0) # 8000a370 <_ZL10waitForAll>
    80004634:	ffffe097          	auipc	ra,0xffffe
    80004638:	850080e7          	jalr	-1968(ra) # 80001e84 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000463c:	0014849b          	addiw	s1,s1,1
    80004640:	fe9ff06f          	j	80004628 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004644:	00000493          	li	s1,0
    80004648:	0080006f          	j	80004650 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    8000464c:	0014849b          	addiw	s1,s1,1
    80004650:	0324d263          	bge	s1,s2,80004674 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004654:	00349793          	slli	a5,s1,0x3
    80004658:	00f987b3          	add	a5,s3,a5
    8000465c:	0007b503          	ld	a0,0(a5)
    80004660:	fe0506e3          	beqz	a0,8000464c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004664:	00053783          	ld	a5,0(a0)
    80004668:	0087b783          	ld	a5,8(a5)
    8000466c:	000780e7          	jalr	a5
    80004670:	fddff06f          	j	8000464c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004674:	000b0a63          	beqz	s6,80004688 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004678:	000b3783          	ld	a5,0(s6)
    8000467c:	0087b783          	ld	a5,8(a5)
    80004680:	000b0513          	mv	a0,s6
    80004684:	000780e7          	jalr	a5
    delete waitForAll;
    80004688:	00006517          	auipc	a0,0x6
    8000468c:	ce853503          	ld	a0,-792(a0) # 8000a370 <_ZL10waitForAll>
    80004690:	00050863          	beqz	a0,800046a0 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004694:	00053783          	ld	a5,0(a0)
    80004698:	0087b783          	ld	a5,8(a5)
    8000469c:	000780e7          	jalr	a5
    delete buffer;
    800046a0:	000a8e63          	beqz	s5,800046bc <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    800046a4:	000a8513          	mv	a0,s5
    800046a8:	00001097          	auipc	ra,0x1
    800046ac:	8a8080e7          	jalr	-1880(ra) # 80004f50 <_ZN9BufferCPPD1Ev>
    800046b0:	000a8513          	mv	a0,s5
    800046b4:	ffffd097          	auipc	ra,0xffffd
    800046b8:	5cc080e7          	jalr	1484(ra) # 80001c80 <_ZdlPv>
    800046bc:	000b8113          	mv	sp,s7

}
    800046c0:	f8040113          	addi	sp,s0,-128
    800046c4:	07813083          	ld	ra,120(sp)
    800046c8:	07013403          	ld	s0,112(sp)
    800046cc:	06813483          	ld	s1,104(sp)
    800046d0:	06013903          	ld	s2,96(sp)
    800046d4:	05813983          	ld	s3,88(sp)
    800046d8:	05013a03          	ld	s4,80(sp)
    800046dc:	04813a83          	ld	s5,72(sp)
    800046e0:	04013b03          	ld	s6,64(sp)
    800046e4:	03813b83          	ld	s7,56(sp)
    800046e8:	03013c03          	ld	s8,48(sp)
    800046ec:	02813c83          	ld	s9,40(sp)
    800046f0:	08010113          	addi	sp,sp,128
    800046f4:	00008067          	ret
    800046f8:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800046fc:	000a8513          	mv	a0,s5
    80004700:	ffffd097          	auipc	ra,0xffffd
    80004704:	580080e7          	jalr	1408(ra) # 80001c80 <_ZdlPv>
    80004708:	00048513          	mv	a0,s1
    8000470c:	00007097          	auipc	ra,0x7
    80004710:	d4c080e7          	jalr	-692(ra) # 8000b458 <_Unwind_Resume>
    80004714:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004718:	00048513          	mv	a0,s1
    8000471c:	ffffd097          	auipc	ra,0xffffd
    80004720:	564080e7          	jalr	1380(ra) # 80001c80 <_ZdlPv>
    80004724:	00090513          	mv	a0,s2
    80004728:	00007097          	auipc	ra,0x7
    8000472c:	d30080e7          	jalr	-720(ra) # 8000b458 <_Unwind_Resume>
    80004730:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004734:	000b0513          	mv	a0,s6
    80004738:	ffffd097          	auipc	ra,0xffffd
    8000473c:	548080e7          	jalr	1352(ra) # 80001c80 <_ZdlPv>
    80004740:	00048513          	mv	a0,s1
    80004744:	00007097          	auipc	ra,0x7
    80004748:	d14080e7          	jalr	-748(ra) # 8000b458 <_Unwind_Resume>
    8000474c:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004750:	000c8513          	mv	a0,s9
    80004754:	ffffd097          	auipc	ra,0xffffd
    80004758:	52c080e7          	jalr	1324(ra) # 80001c80 <_ZdlPv>
    8000475c:	00048513          	mv	a0,s1
    80004760:	00007097          	auipc	ra,0x7
    80004764:	cf8080e7          	jalr	-776(ra) # 8000b458 <_Unwind_Resume>
    80004768:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    8000476c:	000c8513          	mv	a0,s9
    80004770:	ffffd097          	auipc	ra,0xffffd
    80004774:	510080e7          	jalr	1296(ra) # 80001c80 <_ZdlPv>
    80004778:	00048513          	mv	a0,s1
    8000477c:	00007097          	auipc	ra,0x7
    80004780:	cdc080e7          	jalr	-804(ra) # 8000b458 <_Unwind_Resume>

0000000080004784 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004784:	ff010113          	addi	sp,sp,-16
    80004788:	00113423          	sd	ra,8(sp)
    8000478c:	00813023          	sd	s0,0(sp)
    80004790:	01010413          	addi	s0,sp,16
    80004794:	00006797          	auipc	a5,0x6
    80004798:	ac478793          	addi	a5,a5,-1340 # 8000a258 <_ZTV12ConsumerSync+0x10>
    8000479c:	00f53023          	sd	a5,0(a0)
    800047a0:	ffffd097          	auipc	ra,0xffffd
    800047a4:	530080e7          	jalr	1328(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    800047a8:	00813083          	ld	ra,8(sp)
    800047ac:	00013403          	ld	s0,0(sp)
    800047b0:	01010113          	addi	sp,sp,16
    800047b4:	00008067          	ret

00000000800047b8 <_ZN12ConsumerSyncD0Ev>:
    800047b8:	fe010113          	addi	sp,sp,-32
    800047bc:	00113c23          	sd	ra,24(sp)
    800047c0:	00813823          	sd	s0,16(sp)
    800047c4:	00913423          	sd	s1,8(sp)
    800047c8:	02010413          	addi	s0,sp,32
    800047cc:	00050493          	mv	s1,a0
    800047d0:	00006797          	auipc	a5,0x6
    800047d4:	a8878793          	addi	a5,a5,-1400 # 8000a258 <_ZTV12ConsumerSync+0x10>
    800047d8:	00f53023          	sd	a5,0(a0)
    800047dc:	ffffd097          	auipc	ra,0xffffd
    800047e0:	4f4080e7          	jalr	1268(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    800047e4:	00048513          	mv	a0,s1
    800047e8:	ffffd097          	auipc	ra,0xffffd
    800047ec:	498080e7          	jalr	1176(ra) # 80001c80 <_ZdlPv>
    800047f0:	01813083          	ld	ra,24(sp)
    800047f4:	01013403          	ld	s0,16(sp)
    800047f8:	00813483          	ld	s1,8(sp)
    800047fc:	02010113          	addi	sp,sp,32
    80004800:	00008067          	ret

0000000080004804 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80004804:	ff010113          	addi	sp,sp,-16
    80004808:	00113423          	sd	ra,8(sp)
    8000480c:	00813023          	sd	s0,0(sp)
    80004810:	01010413          	addi	s0,sp,16
    80004814:	00006797          	auipc	a5,0x6
    80004818:	a1c78793          	addi	a5,a5,-1508 # 8000a230 <_ZTV12ProducerSync+0x10>
    8000481c:	00f53023          	sd	a5,0(a0)
    80004820:	ffffd097          	auipc	ra,0xffffd
    80004824:	4b0080e7          	jalr	1200(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    80004828:	00813083          	ld	ra,8(sp)
    8000482c:	00013403          	ld	s0,0(sp)
    80004830:	01010113          	addi	sp,sp,16
    80004834:	00008067          	ret

0000000080004838 <_ZN12ProducerSyncD0Ev>:
    80004838:	fe010113          	addi	sp,sp,-32
    8000483c:	00113c23          	sd	ra,24(sp)
    80004840:	00813823          	sd	s0,16(sp)
    80004844:	00913423          	sd	s1,8(sp)
    80004848:	02010413          	addi	s0,sp,32
    8000484c:	00050493          	mv	s1,a0
    80004850:	00006797          	auipc	a5,0x6
    80004854:	9e078793          	addi	a5,a5,-1568 # 8000a230 <_ZTV12ProducerSync+0x10>
    80004858:	00f53023          	sd	a5,0(a0)
    8000485c:	ffffd097          	auipc	ra,0xffffd
    80004860:	474080e7          	jalr	1140(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    80004864:	00048513          	mv	a0,s1
    80004868:	ffffd097          	auipc	ra,0xffffd
    8000486c:	418080e7          	jalr	1048(ra) # 80001c80 <_ZdlPv>
    80004870:	01813083          	ld	ra,24(sp)
    80004874:	01013403          	ld	s0,16(sp)
    80004878:	00813483          	ld	s1,8(sp)
    8000487c:	02010113          	addi	sp,sp,32
    80004880:	00008067          	ret

0000000080004884 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80004884:	ff010113          	addi	sp,sp,-16
    80004888:	00113423          	sd	ra,8(sp)
    8000488c:	00813023          	sd	s0,0(sp)
    80004890:	01010413          	addi	s0,sp,16
    80004894:	00006797          	auipc	a5,0x6
    80004898:	97478793          	addi	a5,a5,-1676 # 8000a208 <_ZTV16ProducerKeyboard+0x10>
    8000489c:	00f53023          	sd	a5,0(a0)
    800048a0:	ffffd097          	auipc	ra,0xffffd
    800048a4:	430080e7          	jalr	1072(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    800048a8:	00813083          	ld	ra,8(sp)
    800048ac:	00013403          	ld	s0,0(sp)
    800048b0:	01010113          	addi	sp,sp,16
    800048b4:	00008067          	ret

00000000800048b8 <_ZN16ProducerKeyboardD0Ev>:
    800048b8:	fe010113          	addi	sp,sp,-32
    800048bc:	00113c23          	sd	ra,24(sp)
    800048c0:	00813823          	sd	s0,16(sp)
    800048c4:	00913423          	sd	s1,8(sp)
    800048c8:	02010413          	addi	s0,sp,32
    800048cc:	00050493          	mv	s1,a0
    800048d0:	00006797          	auipc	a5,0x6
    800048d4:	93878793          	addi	a5,a5,-1736 # 8000a208 <_ZTV16ProducerKeyboard+0x10>
    800048d8:	00f53023          	sd	a5,0(a0)
    800048dc:	ffffd097          	auipc	ra,0xffffd
    800048e0:	3f4080e7          	jalr	1012(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    800048e4:	00048513          	mv	a0,s1
    800048e8:	ffffd097          	auipc	ra,0xffffd
    800048ec:	398080e7          	jalr	920(ra) # 80001c80 <_ZdlPv>
    800048f0:	01813083          	ld	ra,24(sp)
    800048f4:	01013403          	ld	s0,16(sp)
    800048f8:	00813483          	ld	s1,8(sp)
    800048fc:	02010113          	addi	sp,sp,32
    80004900:	00008067          	ret

0000000080004904 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80004904:	ff010113          	addi	sp,sp,-16
    80004908:	00113423          	sd	ra,8(sp)
    8000490c:	00813023          	sd	s0,0(sp)
    80004910:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80004914:	02053583          	ld	a1,32(a0)
    80004918:	fffff097          	auipc	ra,0xfffff
    8000491c:	7e4080e7          	jalr	2020(ra) # 800040fc <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80004920:	00813083          	ld	ra,8(sp)
    80004924:	00013403          	ld	s0,0(sp)
    80004928:	01010113          	addi	sp,sp,16
    8000492c:	00008067          	ret

0000000080004930 <_ZN12ProducerSync3runEv>:
    void run() override {
    80004930:	ff010113          	addi	sp,sp,-16
    80004934:	00113423          	sd	ra,8(sp)
    80004938:	00813023          	sd	s0,0(sp)
    8000493c:	01010413          	addi	s0,sp,16
        producer(td);
    80004940:	02053583          	ld	a1,32(a0)
    80004944:	00000097          	auipc	ra,0x0
    80004948:	878080e7          	jalr	-1928(ra) # 800041bc <_ZN12ProducerSync8producerEPv>
    }
    8000494c:	00813083          	ld	ra,8(sp)
    80004950:	00013403          	ld	s0,0(sp)
    80004954:	01010113          	addi	sp,sp,16
    80004958:	00008067          	ret

000000008000495c <_ZN12ConsumerSync3runEv>:
    void run() override {
    8000495c:	ff010113          	addi	sp,sp,-16
    80004960:	00113423          	sd	ra,8(sp)
    80004964:	00813023          	sd	s0,0(sp)
    80004968:	01010413          	addi	s0,sp,16
        consumer(td);
    8000496c:	02053583          	ld	a1,32(a0)
    80004970:	00000097          	auipc	ra,0x0
    80004974:	8e0080e7          	jalr	-1824(ra) # 80004250 <_ZN12ConsumerSync8consumerEPv>
    }
    80004978:	00813083          	ld	ra,8(sp)
    8000497c:	00013403          	ld	s0,0(sp)
    80004980:	01010113          	addi	sp,sp,16
    80004984:	00008067          	ret

0000000080004988 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004988:	fe010113          	addi	sp,sp,-32
    8000498c:	00113c23          	sd	ra,24(sp)
    80004990:	00813823          	sd	s0,16(sp)
    80004994:	00913423          	sd	s1,8(sp)
    80004998:	02010413          	addi	s0,sp,32
    8000499c:	00050493          	mv	s1,a0
    LOCK();
    800049a0:	00100613          	li	a2,1
    800049a4:	00000593          	li	a1,0
    800049a8:	00006517          	auipc	a0,0x6
    800049ac:	9d050513          	addi	a0,a0,-1584 # 8000a378 <lockPrint>
    800049b0:	ffffd097          	auipc	ra,0xffffd
    800049b4:	874080e7          	jalr	-1932(ra) # 80001224 <copy_and_swap>
    800049b8:	00050863          	beqz	a0,800049c8 <_Z11printStringPKc+0x40>
    800049bc:	ffffd097          	auipc	ra,0xffffd
    800049c0:	934080e7          	jalr	-1740(ra) # 800012f0 <_Z15thread_dispatchv>
    800049c4:	fddff06f          	j	800049a0 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800049c8:	0004c503          	lbu	a0,0(s1)
    800049cc:	00050a63          	beqz	a0,800049e0 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800049d0:	ffffd097          	auipc	ra,0xffffd
    800049d4:	a98080e7          	jalr	-1384(ra) # 80001468 <_Z4putcc>
        string++;
    800049d8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800049dc:	fedff06f          	j	800049c8 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800049e0:	00000613          	li	a2,0
    800049e4:	00100593          	li	a1,1
    800049e8:	00006517          	auipc	a0,0x6
    800049ec:	99050513          	addi	a0,a0,-1648 # 8000a378 <lockPrint>
    800049f0:	ffffd097          	auipc	ra,0xffffd
    800049f4:	834080e7          	jalr	-1996(ra) # 80001224 <copy_and_swap>
    800049f8:	fe0514e3          	bnez	a0,800049e0 <_Z11printStringPKc+0x58>
}
    800049fc:	01813083          	ld	ra,24(sp)
    80004a00:	01013403          	ld	s0,16(sp)
    80004a04:	00813483          	ld	s1,8(sp)
    80004a08:	02010113          	addi	sp,sp,32
    80004a0c:	00008067          	ret

0000000080004a10 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004a10:	fd010113          	addi	sp,sp,-48
    80004a14:	02113423          	sd	ra,40(sp)
    80004a18:	02813023          	sd	s0,32(sp)
    80004a1c:	00913c23          	sd	s1,24(sp)
    80004a20:	01213823          	sd	s2,16(sp)
    80004a24:	01313423          	sd	s3,8(sp)
    80004a28:	01413023          	sd	s4,0(sp)
    80004a2c:	03010413          	addi	s0,sp,48
    80004a30:	00050993          	mv	s3,a0
    80004a34:	00058a13          	mv	s4,a1
    LOCK();
    80004a38:	00100613          	li	a2,1
    80004a3c:	00000593          	li	a1,0
    80004a40:	00006517          	auipc	a0,0x6
    80004a44:	93850513          	addi	a0,a0,-1736 # 8000a378 <lockPrint>
    80004a48:	ffffc097          	auipc	ra,0xffffc
    80004a4c:	7dc080e7          	jalr	2012(ra) # 80001224 <copy_and_swap>
    80004a50:	00050863          	beqz	a0,80004a60 <_Z9getStringPci+0x50>
    80004a54:	ffffd097          	auipc	ra,0xffffd
    80004a58:	89c080e7          	jalr	-1892(ra) # 800012f0 <_Z15thread_dispatchv>
    80004a5c:	fddff06f          	j	80004a38 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004a60:	00000913          	li	s2,0
    80004a64:	00090493          	mv	s1,s2
    80004a68:	0019091b          	addiw	s2,s2,1
    80004a6c:	03495a63          	bge	s2,s4,80004aa0 <_Z9getStringPci+0x90>
        cc = getc();
    80004a70:	ffffd097          	auipc	ra,0xffffd
    80004a74:	9d4080e7          	jalr	-1580(ra) # 80001444 <_Z4getcv>
        if(cc < 1)
    80004a78:	02050463          	beqz	a0,80004aa0 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80004a7c:	009984b3          	add	s1,s3,s1
    80004a80:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004a84:	00a00793          	li	a5,10
    80004a88:	00f50a63          	beq	a0,a5,80004a9c <_Z9getStringPci+0x8c>
    80004a8c:	00d00793          	li	a5,13
    80004a90:	fcf51ae3          	bne	a0,a5,80004a64 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80004a94:	00090493          	mv	s1,s2
    80004a98:	0080006f          	j	80004aa0 <_Z9getStringPci+0x90>
    80004a9c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004aa0:	009984b3          	add	s1,s3,s1
    80004aa4:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004aa8:	00000613          	li	a2,0
    80004aac:	00100593          	li	a1,1
    80004ab0:	00006517          	auipc	a0,0x6
    80004ab4:	8c850513          	addi	a0,a0,-1848 # 8000a378 <lockPrint>
    80004ab8:	ffffc097          	auipc	ra,0xffffc
    80004abc:	76c080e7          	jalr	1900(ra) # 80001224 <copy_and_swap>
    80004ac0:	fe0514e3          	bnez	a0,80004aa8 <_Z9getStringPci+0x98>
    return buf;
}
    80004ac4:	00098513          	mv	a0,s3
    80004ac8:	02813083          	ld	ra,40(sp)
    80004acc:	02013403          	ld	s0,32(sp)
    80004ad0:	01813483          	ld	s1,24(sp)
    80004ad4:	01013903          	ld	s2,16(sp)
    80004ad8:	00813983          	ld	s3,8(sp)
    80004adc:	00013a03          	ld	s4,0(sp)
    80004ae0:	03010113          	addi	sp,sp,48
    80004ae4:	00008067          	ret

0000000080004ae8 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004ae8:	ff010113          	addi	sp,sp,-16
    80004aec:	00813423          	sd	s0,8(sp)
    80004af0:	01010413          	addi	s0,sp,16
    80004af4:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004af8:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004afc:	0006c603          	lbu	a2,0(a3)
    80004b00:	fd06071b          	addiw	a4,a2,-48
    80004b04:	0ff77713          	andi	a4,a4,255
    80004b08:	00900793          	li	a5,9
    80004b0c:	02e7e063          	bltu	a5,a4,80004b2c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004b10:	0025179b          	slliw	a5,a0,0x2
    80004b14:	00a787bb          	addw	a5,a5,a0
    80004b18:	0017979b          	slliw	a5,a5,0x1
    80004b1c:	00168693          	addi	a3,a3,1
    80004b20:	00c787bb          	addw	a5,a5,a2
    80004b24:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004b28:	fd5ff06f          	j	80004afc <_Z11stringToIntPKc+0x14>
    return n;
}
    80004b2c:	00813403          	ld	s0,8(sp)
    80004b30:	01010113          	addi	sp,sp,16
    80004b34:	00008067          	ret

0000000080004b38 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80004b38:	fc010113          	addi	sp,sp,-64
    80004b3c:	02113c23          	sd	ra,56(sp)
    80004b40:	02813823          	sd	s0,48(sp)
    80004b44:	02913423          	sd	s1,40(sp)
    80004b48:	03213023          	sd	s2,32(sp)
    80004b4c:	01313c23          	sd	s3,24(sp)
    80004b50:	04010413          	addi	s0,sp,64
    80004b54:	00050493          	mv	s1,a0
    80004b58:	00058913          	mv	s2,a1
    80004b5c:	00060993          	mv	s3,a2
    LOCK();
    80004b60:	00100613          	li	a2,1
    80004b64:	00000593          	li	a1,0
    80004b68:	00006517          	auipc	a0,0x6
    80004b6c:	81050513          	addi	a0,a0,-2032 # 8000a378 <lockPrint>
    80004b70:	ffffc097          	auipc	ra,0xffffc
    80004b74:	6b4080e7          	jalr	1716(ra) # 80001224 <copy_and_swap>
    80004b78:	00050863          	beqz	a0,80004b88 <_Z8printIntiii+0x50>
    80004b7c:	ffffc097          	auipc	ra,0xffffc
    80004b80:	774080e7          	jalr	1908(ra) # 800012f0 <_Z15thread_dispatchv>
    80004b84:	fddff06f          	j	80004b60 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004b88:	00098463          	beqz	s3,80004b90 <_Z8printIntiii+0x58>
    80004b8c:	0804c463          	bltz	s1,80004c14 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004b90:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004b94:	00000593          	li	a1,0
    }

    i = 0;
    80004b98:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004b9c:	0009079b          	sext.w	a5,s2
    80004ba0:	0325773b          	remuw	a4,a0,s2
    80004ba4:	00048613          	mv	a2,s1
    80004ba8:	0014849b          	addiw	s1,s1,1
    80004bac:	02071693          	slli	a3,a4,0x20
    80004bb0:	0206d693          	srli	a3,a3,0x20
    80004bb4:	00005717          	auipc	a4,0x5
    80004bb8:	6bc70713          	addi	a4,a4,1724 # 8000a270 <digits>
    80004bbc:	00d70733          	add	a4,a4,a3
    80004bc0:	00074683          	lbu	a3,0(a4)
    80004bc4:	fd040713          	addi	a4,s0,-48
    80004bc8:	00c70733          	add	a4,a4,a2
    80004bcc:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004bd0:	0005071b          	sext.w	a4,a0
    80004bd4:	0325553b          	divuw	a0,a0,s2
    80004bd8:	fcf772e3          	bgeu	a4,a5,80004b9c <_Z8printIntiii+0x64>
    if(neg)
    80004bdc:	00058c63          	beqz	a1,80004bf4 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80004be0:	fd040793          	addi	a5,s0,-48
    80004be4:	009784b3          	add	s1,a5,s1
    80004be8:	02d00793          	li	a5,45
    80004bec:	fef48823          	sb	a5,-16(s1)
    80004bf0:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80004bf4:	fff4849b          	addiw	s1,s1,-1
    80004bf8:	0204c463          	bltz	s1,80004c20 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80004bfc:	fd040793          	addi	a5,s0,-48
    80004c00:	009787b3          	add	a5,a5,s1
    80004c04:	ff07c503          	lbu	a0,-16(a5)
    80004c08:	ffffd097          	auipc	ra,0xffffd
    80004c0c:	860080e7          	jalr	-1952(ra) # 80001468 <_Z4putcc>
    80004c10:	fe5ff06f          	j	80004bf4 <_Z8printIntiii+0xbc>
        x = -xx;
    80004c14:	4090053b          	negw	a0,s1
        neg = 1;
    80004c18:	00100593          	li	a1,1
        x = -xx;
    80004c1c:	f7dff06f          	j	80004b98 <_Z8printIntiii+0x60>

    UNLOCK();
    80004c20:	00000613          	li	a2,0
    80004c24:	00100593          	li	a1,1
    80004c28:	00005517          	auipc	a0,0x5
    80004c2c:	75050513          	addi	a0,a0,1872 # 8000a378 <lockPrint>
    80004c30:	ffffc097          	auipc	ra,0xffffc
    80004c34:	5f4080e7          	jalr	1524(ra) # 80001224 <copy_and_swap>
    80004c38:	fe0514e3          	bnez	a0,80004c20 <_Z8printIntiii+0xe8>
    80004c3c:	03813083          	ld	ra,56(sp)
    80004c40:	03013403          	ld	s0,48(sp)
    80004c44:	02813483          	ld	s1,40(sp)
    80004c48:	02013903          	ld	s2,32(sp)
    80004c4c:	01813983          	ld	s3,24(sp)
    80004c50:	04010113          	addi	sp,sp,64
    80004c54:	00008067          	ret

0000000080004c58 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004c58:	fd010113          	addi	sp,sp,-48
    80004c5c:	02113423          	sd	ra,40(sp)
    80004c60:	02813023          	sd	s0,32(sp)
    80004c64:	00913c23          	sd	s1,24(sp)
    80004c68:	01213823          	sd	s2,16(sp)
    80004c6c:	01313423          	sd	s3,8(sp)
    80004c70:	03010413          	addi	s0,sp,48
    80004c74:	00050493          	mv	s1,a0
    80004c78:	00058913          	mv	s2,a1
    80004c7c:	0015879b          	addiw	a5,a1,1
    80004c80:	0007851b          	sext.w	a0,a5
    80004c84:	00f4a023          	sw	a5,0(s1)
    80004c88:	0004a823          	sw	zero,16(s1)
    80004c8c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004c90:	00251513          	slli	a0,a0,0x2
    80004c94:	ffffc097          	auipc	ra,0xffffc
    80004c98:	5b0080e7          	jalr	1456(ra) # 80001244 <_Z9mem_allocm>
    80004c9c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80004ca0:	01000513          	li	a0,16
    80004ca4:	ffffd097          	auipc	ra,0xffffd
    80004ca8:	f8c080e7          	jalr	-116(ra) # 80001c30 <_Znwm>
    80004cac:	00050993          	mv	s3,a0
    80004cb0:	00000593          	li	a1,0
    80004cb4:	ffffd097          	auipc	ra,0xffffd
    80004cb8:	190080e7          	jalr	400(ra) # 80001e44 <_ZN9SemaphoreC1Ej>
    80004cbc:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80004cc0:	01000513          	li	a0,16
    80004cc4:	ffffd097          	auipc	ra,0xffffd
    80004cc8:	f6c080e7          	jalr	-148(ra) # 80001c30 <_Znwm>
    80004ccc:	00050993          	mv	s3,a0
    80004cd0:	00090593          	mv	a1,s2
    80004cd4:	ffffd097          	auipc	ra,0xffffd
    80004cd8:	170080e7          	jalr	368(ra) # 80001e44 <_ZN9SemaphoreC1Ej>
    80004cdc:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80004ce0:	01000513          	li	a0,16
    80004ce4:	ffffd097          	auipc	ra,0xffffd
    80004ce8:	f4c080e7          	jalr	-180(ra) # 80001c30 <_Znwm>
    80004cec:	00050913          	mv	s2,a0
    80004cf0:	00100593          	li	a1,1
    80004cf4:	ffffd097          	auipc	ra,0xffffd
    80004cf8:	150080e7          	jalr	336(ra) # 80001e44 <_ZN9SemaphoreC1Ej>
    80004cfc:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80004d00:	01000513          	li	a0,16
    80004d04:	ffffd097          	auipc	ra,0xffffd
    80004d08:	f2c080e7          	jalr	-212(ra) # 80001c30 <_Znwm>
    80004d0c:	00050913          	mv	s2,a0
    80004d10:	00100593          	li	a1,1
    80004d14:	ffffd097          	auipc	ra,0xffffd
    80004d18:	130080e7          	jalr	304(ra) # 80001e44 <_ZN9SemaphoreC1Ej>
    80004d1c:	0324b823          	sd	s2,48(s1)
}
    80004d20:	02813083          	ld	ra,40(sp)
    80004d24:	02013403          	ld	s0,32(sp)
    80004d28:	01813483          	ld	s1,24(sp)
    80004d2c:	01013903          	ld	s2,16(sp)
    80004d30:	00813983          	ld	s3,8(sp)
    80004d34:	03010113          	addi	sp,sp,48
    80004d38:	00008067          	ret
    80004d3c:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80004d40:	00098513          	mv	a0,s3
    80004d44:	ffffd097          	auipc	ra,0xffffd
    80004d48:	f3c080e7          	jalr	-196(ra) # 80001c80 <_ZdlPv>
    80004d4c:	00048513          	mv	a0,s1
    80004d50:	00006097          	auipc	ra,0x6
    80004d54:	708080e7          	jalr	1800(ra) # 8000b458 <_Unwind_Resume>
    80004d58:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80004d5c:	00098513          	mv	a0,s3
    80004d60:	ffffd097          	auipc	ra,0xffffd
    80004d64:	f20080e7          	jalr	-224(ra) # 80001c80 <_ZdlPv>
    80004d68:	00048513          	mv	a0,s1
    80004d6c:	00006097          	auipc	ra,0x6
    80004d70:	6ec080e7          	jalr	1772(ra) # 8000b458 <_Unwind_Resume>
    80004d74:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80004d78:	00090513          	mv	a0,s2
    80004d7c:	ffffd097          	auipc	ra,0xffffd
    80004d80:	f04080e7          	jalr	-252(ra) # 80001c80 <_ZdlPv>
    80004d84:	00048513          	mv	a0,s1
    80004d88:	00006097          	auipc	ra,0x6
    80004d8c:	6d0080e7          	jalr	1744(ra) # 8000b458 <_Unwind_Resume>
    80004d90:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80004d94:	00090513          	mv	a0,s2
    80004d98:	ffffd097          	auipc	ra,0xffffd
    80004d9c:	ee8080e7          	jalr	-280(ra) # 80001c80 <_ZdlPv>
    80004da0:	00048513          	mv	a0,s1
    80004da4:	00006097          	auipc	ra,0x6
    80004da8:	6b4080e7          	jalr	1716(ra) # 8000b458 <_Unwind_Resume>

0000000080004dac <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80004dac:	fe010113          	addi	sp,sp,-32
    80004db0:	00113c23          	sd	ra,24(sp)
    80004db4:	00813823          	sd	s0,16(sp)
    80004db8:	00913423          	sd	s1,8(sp)
    80004dbc:	01213023          	sd	s2,0(sp)
    80004dc0:	02010413          	addi	s0,sp,32
    80004dc4:	00050493          	mv	s1,a0
    80004dc8:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80004dcc:	01853503          	ld	a0,24(a0)
    80004dd0:	ffffd097          	auipc	ra,0xffffd
    80004dd4:	0b4080e7          	jalr	180(ra) # 80001e84 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80004dd8:	0304b503          	ld	a0,48(s1)
    80004ddc:	ffffd097          	auipc	ra,0xffffd
    80004de0:	0a8080e7          	jalr	168(ra) # 80001e84 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80004de4:	0084b783          	ld	a5,8(s1)
    80004de8:	0144a703          	lw	a4,20(s1)
    80004dec:	00271713          	slli	a4,a4,0x2
    80004df0:	00e787b3          	add	a5,a5,a4
    80004df4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004df8:	0144a783          	lw	a5,20(s1)
    80004dfc:	0017879b          	addiw	a5,a5,1
    80004e00:	0004a703          	lw	a4,0(s1)
    80004e04:	02e7e7bb          	remw	a5,a5,a4
    80004e08:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80004e0c:	0304b503          	ld	a0,48(s1)
    80004e10:	ffffd097          	auipc	ra,0xffffd
    80004e14:	0a0080e7          	jalr	160(ra) # 80001eb0 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80004e18:	0204b503          	ld	a0,32(s1)
    80004e1c:	ffffd097          	auipc	ra,0xffffd
    80004e20:	094080e7          	jalr	148(ra) # 80001eb0 <_ZN9Semaphore6signalEv>

}
    80004e24:	01813083          	ld	ra,24(sp)
    80004e28:	01013403          	ld	s0,16(sp)
    80004e2c:	00813483          	ld	s1,8(sp)
    80004e30:	00013903          	ld	s2,0(sp)
    80004e34:	02010113          	addi	sp,sp,32
    80004e38:	00008067          	ret

0000000080004e3c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80004e3c:	fe010113          	addi	sp,sp,-32
    80004e40:	00113c23          	sd	ra,24(sp)
    80004e44:	00813823          	sd	s0,16(sp)
    80004e48:	00913423          	sd	s1,8(sp)
    80004e4c:	01213023          	sd	s2,0(sp)
    80004e50:	02010413          	addi	s0,sp,32
    80004e54:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80004e58:	02053503          	ld	a0,32(a0)
    80004e5c:	ffffd097          	auipc	ra,0xffffd
    80004e60:	028080e7          	jalr	40(ra) # 80001e84 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80004e64:	0284b503          	ld	a0,40(s1)
    80004e68:	ffffd097          	auipc	ra,0xffffd
    80004e6c:	01c080e7          	jalr	28(ra) # 80001e84 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80004e70:	0084b703          	ld	a4,8(s1)
    80004e74:	0104a783          	lw	a5,16(s1)
    80004e78:	00279693          	slli	a3,a5,0x2
    80004e7c:	00d70733          	add	a4,a4,a3
    80004e80:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004e84:	0017879b          	addiw	a5,a5,1
    80004e88:	0004a703          	lw	a4,0(s1)
    80004e8c:	02e7e7bb          	remw	a5,a5,a4
    80004e90:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80004e94:	0284b503          	ld	a0,40(s1)
    80004e98:	ffffd097          	auipc	ra,0xffffd
    80004e9c:	018080e7          	jalr	24(ra) # 80001eb0 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80004ea0:	0184b503          	ld	a0,24(s1)
    80004ea4:	ffffd097          	auipc	ra,0xffffd
    80004ea8:	00c080e7          	jalr	12(ra) # 80001eb0 <_ZN9Semaphore6signalEv>

    return ret;
}
    80004eac:	00090513          	mv	a0,s2
    80004eb0:	01813083          	ld	ra,24(sp)
    80004eb4:	01013403          	ld	s0,16(sp)
    80004eb8:	00813483          	ld	s1,8(sp)
    80004ebc:	00013903          	ld	s2,0(sp)
    80004ec0:	02010113          	addi	sp,sp,32
    80004ec4:	00008067          	ret

0000000080004ec8 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80004ec8:	fe010113          	addi	sp,sp,-32
    80004ecc:	00113c23          	sd	ra,24(sp)
    80004ed0:	00813823          	sd	s0,16(sp)
    80004ed4:	00913423          	sd	s1,8(sp)
    80004ed8:	01213023          	sd	s2,0(sp)
    80004edc:	02010413          	addi	s0,sp,32
    80004ee0:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80004ee4:	02853503          	ld	a0,40(a0)
    80004ee8:	ffffd097          	auipc	ra,0xffffd
    80004eec:	f9c080e7          	jalr	-100(ra) # 80001e84 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80004ef0:	0304b503          	ld	a0,48(s1)
    80004ef4:	ffffd097          	auipc	ra,0xffffd
    80004ef8:	f90080e7          	jalr	-112(ra) # 80001e84 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80004efc:	0144a783          	lw	a5,20(s1)
    80004f00:	0104a903          	lw	s2,16(s1)
    80004f04:	0327ce63          	blt	a5,s2,80004f40 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80004f08:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80004f0c:	0304b503          	ld	a0,48(s1)
    80004f10:	ffffd097          	auipc	ra,0xffffd
    80004f14:	fa0080e7          	jalr	-96(ra) # 80001eb0 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80004f18:	0284b503          	ld	a0,40(s1)
    80004f1c:	ffffd097          	auipc	ra,0xffffd
    80004f20:	f94080e7          	jalr	-108(ra) # 80001eb0 <_ZN9Semaphore6signalEv>

    return ret;
}
    80004f24:	00090513          	mv	a0,s2
    80004f28:	01813083          	ld	ra,24(sp)
    80004f2c:	01013403          	ld	s0,16(sp)
    80004f30:	00813483          	ld	s1,8(sp)
    80004f34:	00013903          	ld	s2,0(sp)
    80004f38:	02010113          	addi	sp,sp,32
    80004f3c:	00008067          	ret
        ret = cap - head + tail;
    80004f40:	0004a703          	lw	a4,0(s1)
    80004f44:	4127093b          	subw	s2,a4,s2
    80004f48:	00f9093b          	addw	s2,s2,a5
    80004f4c:	fc1ff06f          	j	80004f0c <_ZN9BufferCPP6getCntEv+0x44>

0000000080004f50 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80004f50:	fe010113          	addi	sp,sp,-32
    80004f54:	00113c23          	sd	ra,24(sp)
    80004f58:	00813823          	sd	s0,16(sp)
    80004f5c:	00913423          	sd	s1,8(sp)
    80004f60:	02010413          	addi	s0,sp,32
    80004f64:	00050493          	mv	s1,a0
    Console::putc('\n');
    80004f68:	00a00513          	li	a0,10
    80004f6c:	ffffd097          	auipc	ra,0xffffd
    80004f70:	f98080e7          	jalr	-104(ra) # 80001f04 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80004f74:	00003517          	auipc	a0,0x3
    80004f78:	3b450513          	addi	a0,a0,948 # 80008328 <_ZZ13printIntegerAlE6digits+0x1f0>
    80004f7c:	00000097          	auipc	ra,0x0
    80004f80:	a0c080e7          	jalr	-1524(ra) # 80004988 <_Z11printStringPKc>
    while (getCnt()) {
    80004f84:	00048513          	mv	a0,s1
    80004f88:	00000097          	auipc	ra,0x0
    80004f8c:	f40080e7          	jalr	-192(ra) # 80004ec8 <_ZN9BufferCPP6getCntEv>
    80004f90:	02050c63          	beqz	a0,80004fc8 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80004f94:	0084b783          	ld	a5,8(s1)
    80004f98:	0104a703          	lw	a4,16(s1)
    80004f9c:	00271713          	slli	a4,a4,0x2
    80004fa0:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80004fa4:	0007c503          	lbu	a0,0(a5)
    80004fa8:	ffffd097          	auipc	ra,0xffffd
    80004fac:	f5c080e7          	jalr	-164(ra) # 80001f04 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80004fb0:	0104a783          	lw	a5,16(s1)
    80004fb4:	0017879b          	addiw	a5,a5,1
    80004fb8:	0004a703          	lw	a4,0(s1)
    80004fbc:	02e7e7bb          	remw	a5,a5,a4
    80004fc0:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80004fc4:	fc1ff06f          	j	80004f84 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80004fc8:	02100513          	li	a0,33
    80004fcc:	ffffd097          	auipc	ra,0xffffd
    80004fd0:	f38080e7          	jalr	-200(ra) # 80001f04 <_ZN7Console4putcEc>
    Console::putc('\n');
    80004fd4:	00a00513          	li	a0,10
    80004fd8:	ffffd097          	auipc	ra,0xffffd
    80004fdc:	f2c080e7          	jalr	-212(ra) # 80001f04 <_ZN7Console4putcEc>
    mem_free(buffer);
    80004fe0:	0084b503          	ld	a0,8(s1)
    80004fe4:	ffffc097          	auipc	ra,0xffffc
    80004fe8:	288080e7          	jalr	648(ra) # 8000126c <_Z8mem_freePv>
    delete itemAvailable;
    80004fec:	0204b503          	ld	a0,32(s1)
    80004ff0:	00050863          	beqz	a0,80005000 <_ZN9BufferCPPD1Ev+0xb0>
    80004ff4:	00053783          	ld	a5,0(a0)
    80004ff8:	0087b783          	ld	a5,8(a5)
    80004ffc:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005000:	0184b503          	ld	a0,24(s1)
    80005004:	00050863          	beqz	a0,80005014 <_ZN9BufferCPPD1Ev+0xc4>
    80005008:	00053783          	ld	a5,0(a0)
    8000500c:	0087b783          	ld	a5,8(a5)
    80005010:	000780e7          	jalr	a5
    delete mutexTail;
    80005014:	0304b503          	ld	a0,48(s1)
    80005018:	00050863          	beqz	a0,80005028 <_ZN9BufferCPPD1Ev+0xd8>
    8000501c:	00053783          	ld	a5,0(a0)
    80005020:	0087b783          	ld	a5,8(a5)
    80005024:	000780e7          	jalr	a5
    delete mutexHead;
    80005028:	0284b503          	ld	a0,40(s1)
    8000502c:	00050863          	beqz	a0,8000503c <_ZN9BufferCPPD1Ev+0xec>
    80005030:	00053783          	ld	a5,0(a0)
    80005034:	0087b783          	ld	a5,8(a5)
    80005038:	000780e7          	jalr	a5
}
    8000503c:	01813083          	ld	ra,24(sp)
    80005040:	01013403          	ld	s0,16(sp)
    80005044:	00813483          	ld	s1,8(sp)
    80005048:	02010113          	addi	sp,sp,32
    8000504c:	00008067          	ret

0000000080005050 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005050:	fe010113          	addi	sp,sp,-32
    80005054:	00113c23          	sd	ra,24(sp)
    80005058:	00813823          	sd	s0,16(sp)
    8000505c:	00913423          	sd	s1,8(sp)
    80005060:	01213023          	sd	s2,0(sp)
    80005064:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005068:	00003517          	auipc	a0,0x3
    8000506c:	2d850513          	addi	a0,a0,728 # 80008340 <_ZZ13printIntegerAlE6digits+0x208>
    80005070:	00000097          	auipc	ra,0x0
    80005074:	918080e7          	jalr	-1768(ra) # 80004988 <_Z11printStringPKc>
    int test = getc() - '0';
    80005078:	ffffc097          	auipc	ra,0xffffc
    8000507c:	3cc080e7          	jalr	972(ra) # 80001444 <_Z4getcv>
    80005080:	00050913          	mv	s2,a0
    80005084:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005088:	ffffc097          	auipc	ra,0xffffc
    8000508c:	3bc080e7          	jalr	956(ra) # 80001444 <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80005090:	fcb9091b          	addiw	s2,s2,-53
    80005094:	00100793          	li	a5,1
    80005098:	0327f463          	bgeu	a5,s2,800050c0 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    8000509c:	00700793          	li	a5,7
    800050a0:	0e97e263          	bltu	a5,s1,80005184 <_Z8userMainv+0x134>
    800050a4:	00249493          	slli	s1,s1,0x2
    800050a8:	00003717          	auipc	a4,0x3
    800050ac:	4b070713          	addi	a4,a4,1200 # 80008558 <_ZZ13printIntegerAlE6digits+0x420>
    800050b0:	00e484b3          	add	s1,s1,a4
    800050b4:	0004a783          	lw	a5,0(s1)
    800050b8:	00e787b3          	add	a5,a5,a4
    800050bc:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    800050c0:	00003517          	auipc	a0,0x3
    800050c4:	2a050513          	addi	a0,a0,672 # 80008360 <_ZZ13printIntegerAlE6digits+0x228>
    800050c8:	00000097          	auipc	ra,0x0
    800050cc:	8c0080e7          	jalr	-1856(ra) # 80004988 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800050d0:	01813083          	ld	ra,24(sp)
    800050d4:	01013403          	ld	s0,16(sp)
    800050d8:	00813483          	ld	s1,8(sp)
    800050dc:	00013903          	ld	s2,0(sp)
    800050e0:	02010113          	addi	sp,sp,32
    800050e4:	00008067          	ret
            Threads_C_API_test();
    800050e8:	fffff097          	auipc	ra,0xfffff
    800050ec:	f18080e7          	jalr	-232(ra) # 80004000 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800050f0:	00003517          	auipc	a0,0x3
    800050f4:	2a050513          	addi	a0,a0,672 # 80008390 <_ZZ13printIntegerAlE6digits+0x258>
    800050f8:	00000097          	auipc	ra,0x0
    800050fc:	890080e7          	jalr	-1904(ra) # 80004988 <_Z11printStringPKc>
            break;
    80005100:	fd1ff06f          	j	800050d0 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80005104:	ffffe097          	auipc	ra,0xffffe
    80005108:	ddc080e7          	jalr	-548(ra) # 80002ee0 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    8000510c:	00003517          	auipc	a0,0x3
    80005110:	2c450513          	addi	a0,a0,708 # 800083d0 <_ZZ13printIntegerAlE6digits+0x298>
    80005114:	00000097          	auipc	ra,0x0
    80005118:	874080e7          	jalr	-1932(ra) # 80004988 <_Z11printStringPKc>
            break;
    8000511c:	fb5ff06f          	j	800050d0 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80005120:	ffffd097          	auipc	ra,0xffffd
    80005124:	614080e7          	jalr	1556(ra) # 80002734 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005128:	00003517          	auipc	a0,0x3
    8000512c:	2e850513          	addi	a0,a0,744 # 80008410 <_ZZ13printIntegerAlE6digits+0x2d8>
    80005130:	00000097          	auipc	ra,0x0
    80005134:	858080e7          	jalr	-1960(ra) # 80004988 <_Z11printStringPKc>
            break;
    80005138:	f99ff06f          	j	800050d0 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    8000513c:	fffff097          	auipc	ra,0xfffff
    80005140:	208080e7          	jalr	520(ra) # 80004344 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005144:	00003517          	auipc	a0,0x3
    80005148:	31c50513          	addi	a0,a0,796 # 80008460 <_ZZ13printIntegerAlE6digits+0x328>
    8000514c:	00000097          	auipc	ra,0x0
    80005150:	83c080e7          	jalr	-1988(ra) # 80004988 <_Z11printStringPKc>
            break;
    80005154:	f7dff06f          	j	800050d0 <_Z8userMainv+0x80>
            System_Mode_test();
    80005158:	00000097          	auipc	ra,0x0
    8000515c:	658080e7          	jalr	1624(ra) # 800057b0 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005160:	00003517          	auipc	a0,0x3
    80005164:	35850513          	addi	a0,a0,856 # 800084b8 <_ZZ13printIntegerAlE6digits+0x380>
    80005168:	00000097          	auipc	ra,0x0
    8000516c:	820080e7          	jalr	-2016(ra) # 80004988 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005170:	00003517          	auipc	a0,0x3
    80005174:	36850513          	addi	a0,a0,872 # 800084d8 <_ZZ13printIntegerAlE6digits+0x3a0>
    80005178:	00000097          	auipc	ra,0x0
    8000517c:	810080e7          	jalr	-2032(ra) # 80004988 <_Z11printStringPKc>
            break;
    80005180:	f51ff06f          	j	800050d0 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005184:	00003517          	auipc	a0,0x3
    80005188:	3ac50513          	addi	a0,a0,940 # 80008530 <_ZZ13printIntegerAlE6digits+0x3f8>
    8000518c:	fffff097          	auipc	ra,0xfffff
    80005190:	7fc080e7          	jalr	2044(ra) # 80004988 <_Z11printStringPKc>
    80005194:	f3dff06f          	j	800050d0 <_Z8userMainv+0x80>

0000000080005198 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005198:	fe010113          	addi	sp,sp,-32
    8000519c:	00113c23          	sd	ra,24(sp)
    800051a0:	00813823          	sd	s0,16(sp)
    800051a4:	00913423          	sd	s1,8(sp)
    800051a8:	01213023          	sd	s2,0(sp)
    800051ac:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800051b0:	00053903          	ld	s2,0(a0)
    int i = 6;
    800051b4:	00600493          	li	s1,6
    while (--i > 0) {
    800051b8:	fff4849b          	addiw	s1,s1,-1
    800051bc:	04905463          	blez	s1,80005204 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    800051c0:	00003517          	auipc	a0,0x3
    800051c4:	3b850513          	addi	a0,a0,952 # 80008578 <_ZZ13printIntegerAlE6digits+0x440>
    800051c8:	fffff097          	auipc	ra,0xfffff
    800051cc:	7c0080e7          	jalr	1984(ra) # 80004988 <_Z11printStringPKc>
        printInt(sleep_time);
    800051d0:	00000613          	li	a2,0
    800051d4:	00a00593          	li	a1,10
    800051d8:	0009051b          	sext.w	a0,s2
    800051dc:	00000097          	auipc	ra,0x0
    800051e0:	95c080e7          	jalr	-1700(ra) # 80004b38 <_Z8printIntiii>
        printString(" !\n");
    800051e4:	00003517          	auipc	a0,0x3
    800051e8:	39c50513          	addi	a0,a0,924 # 80008580 <_ZZ13printIntegerAlE6digits+0x448>
    800051ec:	fffff097          	auipc	ra,0xfffff
    800051f0:	79c080e7          	jalr	1948(ra) # 80004988 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800051f4:	00090513          	mv	a0,s2
    800051f8:	ffffc097          	auipc	ra,0xffffc
    800051fc:	230080e7          	jalr	560(ra) # 80001428 <_Z10time_sleepm>
    while (--i > 0) {
    80005200:	fb9ff06f          	j	800051b8 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005204:	00a00793          	li	a5,10
    80005208:	02f95933          	divu	s2,s2,a5
    8000520c:	fff90913          	addi	s2,s2,-1
    80005210:	00005797          	auipc	a5,0x5
    80005214:	17078793          	addi	a5,a5,368 # 8000a380 <_ZL8finished>
    80005218:	01278933          	add	s2,a5,s2
    8000521c:	00100793          	li	a5,1
    80005220:	00f90023          	sb	a5,0(s2)
}
    80005224:	01813083          	ld	ra,24(sp)
    80005228:	01013403          	ld	s0,16(sp)
    8000522c:	00813483          	ld	s1,8(sp)
    80005230:	00013903          	ld	s2,0(sp)
    80005234:	02010113          	addi	sp,sp,32
    80005238:	00008067          	ret

000000008000523c <_Z12testSleepingv>:

void testSleeping() {
    8000523c:	fc010113          	addi	sp,sp,-64
    80005240:	02113c23          	sd	ra,56(sp)
    80005244:	02813823          	sd	s0,48(sp)
    80005248:	02913423          	sd	s1,40(sp)
    8000524c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005250:	00a00793          	li	a5,10
    80005254:	fcf43823          	sd	a5,-48(s0)
    80005258:	01400793          	li	a5,20
    8000525c:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005260:	00000493          	li	s1,0
    80005264:	02c0006f          	j	80005290 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005268:	00349793          	slli	a5,s1,0x3
    8000526c:	fd040613          	addi	a2,s0,-48
    80005270:	00f60633          	add	a2,a2,a5
    80005274:	00000597          	auipc	a1,0x0
    80005278:	f2458593          	addi	a1,a1,-220 # 80005198 <_ZL9sleepyRunPv>
    8000527c:	fc040513          	addi	a0,s0,-64
    80005280:	00f50533          	add	a0,a0,a5
    80005284:	ffffc097          	auipc	ra,0xffffc
    80005288:	010080e7          	jalr	16(ra) # 80001294 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    8000528c:	0014849b          	addiw	s1,s1,1
    80005290:	00100793          	li	a5,1
    80005294:	fc97dae3          	bge	a5,s1,80005268 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005298:	00005797          	auipc	a5,0x5
    8000529c:	0e87c783          	lbu	a5,232(a5) # 8000a380 <_ZL8finished>
    800052a0:	fe078ce3          	beqz	a5,80005298 <_Z12testSleepingv+0x5c>
    800052a4:	00005797          	auipc	a5,0x5
    800052a8:	0dd7c783          	lbu	a5,221(a5) # 8000a381 <_ZL8finished+0x1>
    800052ac:	fe0786e3          	beqz	a5,80005298 <_Z12testSleepingv+0x5c>
}
    800052b0:	03813083          	ld	ra,56(sp)
    800052b4:	03013403          	ld	s0,48(sp)
    800052b8:	02813483          	ld	s1,40(sp)
    800052bc:	04010113          	addi	sp,sp,64
    800052c0:	00008067          	ret

00000000800052c4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800052c4:	fe010113          	addi	sp,sp,-32
    800052c8:	00113c23          	sd	ra,24(sp)
    800052cc:	00813823          	sd	s0,16(sp)
    800052d0:	00913423          	sd	s1,8(sp)
    800052d4:	01213023          	sd	s2,0(sp)
    800052d8:	02010413          	addi	s0,sp,32
    800052dc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800052e0:	00100793          	li	a5,1
    800052e4:	02a7f863          	bgeu	a5,a0,80005314 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800052e8:	00a00793          	li	a5,10
    800052ec:	02f577b3          	remu	a5,a0,a5
    800052f0:	02078e63          	beqz	a5,8000532c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800052f4:	fff48513          	addi	a0,s1,-1
    800052f8:	00000097          	auipc	ra,0x0
    800052fc:	fcc080e7          	jalr	-52(ra) # 800052c4 <_ZL9fibonaccim>
    80005300:	00050913          	mv	s2,a0
    80005304:	ffe48513          	addi	a0,s1,-2
    80005308:	00000097          	auipc	ra,0x0
    8000530c:	fbc080e7          	jalr	-68(ra) # 800052c4 <_ZL9fibonaccim>
    80005310:	00a90533          	add	a0,s2,a0
}
    80005314:	01813083          	ld	ra,24(sp)
    80005318:	01013403          	ld	s0,16(sp)
    8000531c:	00813483          	ld	s1,8(sp)
    80005320:	00013903          	ld	s2,0(sp)
    80005324:	02010113          	addi	sp,sp,32
    80005328:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000532c:	ffffc097          	auipc	ra,0xffffc
    80005330:	fc4080e7          	jalr	-60(ra) # 800012f0 <_Z15thread_dispatchv>
    80005334:	fc1ff06f          	j	800052f4 <_ZL9fibonaccim+0x30>

0000000080005338 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005338:	fe010113          	addi	sp,sp,-32
    8000533c:	00113c23          	sd	ra,24(sp)
    80005340:	00813823          	sd	s0,16(sp)
    80005344:	00913423          	sd	s1,8(sp)
    80005348:	01213023          	sd	s2,0(sp)
    8000534c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005350:	00a00493          	li	s1,10
    80005354:	0400006f          	j	80005394 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005358:	00003517          	auipc	a0,0x3
    8000535c:	f3850513          	addi	a0,a0,-200 # 80008290 <_ZZ13printIntegerAlE6digits+0x158>
    80005360:	fffff097          	auipc	ra,0xfffff
    80005364:	628080e7          	jalr	1576(ra) # 80004988 <_Z11printStringPKc>
    80005368:	00000613          	li	a2,0
    8000536c:	00a00593          	li	a1,10
    80005370:	00048513          	mv	a0,s1
    80005374:	fffff097          	auipc	ra,0xfffff
    80005378:	7c4080e7          	jalr	1988(ra) # 80004b38 <_Z8printIntiii>
    8000537c:	00003517          	auipc	a0,0x3
    80005380:	13450513          	addi	a0,a0,308 # 800084b0 <_ZZ13printIntegerAlE6digits+0x378>
    80005384:	fffff097          	auipc	ra,0xfffff
    80005388:	604080e7          	jalr	1540(ra) # 80004988 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000538c:	0014849b          	addiw	s1,s1,1
    80005390:	0ff4f493          	andi	s1,s1,255
    80005394:	00c00793          	li	a5,12
    80005398:	fc97f0e3          	bgeu	a5,s1,80005358 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000539c:	00003517          	auipc	a0,0x3
    800053a0:	efc50513          	addi	a0,a0,-260 # 80008298 <_ZZ13printIntegerAlE6digits+0x160>
    800053a4:	fffff097          	auipc	ra,0xfffff
    800053a8:	5e4080e7          	jalr	1508(ra) # 80004988 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800053ac:	00500313          	li	t1,5
    thread_dispatch();
    800053b0:	ffffc097          	auipc	ra,0xffffc
    800053b4:	f40080e7          	jalr	-192(ra) # 800012f0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800053b8:	01000513          	li	a0,16
    800053bc:	00000097          	auipc	ra,0x0
    800053c0:	f08080e7          	jalr	-248(ra) # 800052c4 <_ZL9fibonaccim>
    800053c4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800053c8:	00003517          	auipc	a0,0x3
    800053cc:	ee050513          	addi	a0,a0,-288 # 800082a8 <_ZZ13printIntegerAlE6digits+0x170>
    800053d0:	fffff097          	auipc	ra,0xfffff
    800053d4:	5b8080e7          	jalr	1464(ra) # 80004988 <_Z11printStringPKc>
    800053d8:	00000613          	li	a2,0
    800053dc:	00a00593          	li	a1,10
    800053e0:	0009051b          	sext.w	a0,s2
    800053e4:	fffff097          	auipc	ra,0xfffff
    800053e8:	754080e7          	jalr	1876(ra) # 80004b38 <_Z8printIntiii>
    800053ec:	00003517          	auipc	a0,0x3
    800053f0:	0c450513          	addi	a0,a0,196 # 800084b0 <_ZZ13printIntegerAlE6digits+0x378>
    800053f4:	fffff097          	auipc	ra,0xfffff
    800053f8:	594080e7          	jalr	1428(ra) # 80004988 <_Z11printStringPKc>
    800053fc:	0400006f          	j	8000543c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005400:	00003517          	auipc	a0,0x3
    80005404:	e9050513          	addi	a0,a0,-368 # 80008290 <_ZZ13printIntegerAlE6digits+0x158>
    80005408:	fffff097          	auipc	ra,0xfffff
    8000540c:	580080e7          	jalr	1408(ra) # 80004988 <_Z11printStringPKc>
    80005410:	00000613          	li	a2,0
    80005414:	00a00593          	li	a1,10
    80005418:	00048513          	mv	a0,s1
    8000541c:	fffff097          	auipc	ra,0xfffff
    80005420:	71c080e7          	jalr	1820(ra) # 80004b38 <_Z8printIntiii>
    80005424:	00003517          	auipc	a0,0x3
    80005428:	08c50513          	addi	a0,a0,140 # 800084b0 <_ZZ13printIntegerAlE6digits+0x378>
    8000542c:	fffff097          	auipc	ra,0xfffff
    80005430:	55c080e7          	jalr	1372(ra) # 80004988 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005434:	0014849b          	addiw	s1,s1,1
    80005438:	0ff4f493          	andi	s1,s1,255
    8000543c:	00f00793          	li	a5,15
    80005440:	fc97f0e3          	bgeu	a5,s1,80005400 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005444:	00003517          	auipc	a0,0x3
    80005448:	e7450513          	addi	a0,a0,-396 # 800082b8 <_ZZ13printIntegerAlE6digits+0x180>
    8000544c:	fffff097          	auipc	ra,0xfffff
    80005450:	53c080e7          	jalr	1340(ra) # 80004988 <_Z11printStringPKc>
    finishedD = true;
    80005454:	00100793          	li	a5,1
    80005458:	00005717          	auipc	a4,0x5
    8000545c:	f2f70523          	sb	a5,-214(a4) # 8000a382 <_ZL9finishedD>
    thread_dispatch();
    80005460:	ffffc097          	auipc	ra,0xffffc
    80005464:	e90080e7          	jalr	-368(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80005468:	01813083          	ld	ra,24(sp)
    8000546c:	01013403          	ld	s0,16(sp)
    80005470:	00813483          	ld	s1,8(sp)
    80005474:	00013903          	ld	s2,0(sp)
    80005478:	02010113          	addi	sp,sp,32
    8000547c:	00008067          	ret

0000000080005480 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005480:	fe010113          	addi	sp,sp,-32
    80005484:	00113c23          	sd	ra,24(sp)
    80005488:	00813823          	sd	s0,16(sp)
    8000548c:	00913423          	sd	s1,8(sp)
    80005490:	01213023          	sd	s2,0(sp)
    80005494:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005498:	00000493          	li	s1,0
    8000549c:	0400006f          	j	800054dc <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800054a0:	00003517          	auipc	a0,0x3
    800054a4:	dc050513          	addi	a0,a0,-576 # 80008260 <_ZZ13printIntegerAlE6digits+0x128>
    800054a8:	fffff097          	auipc	ra,0xfffff
    800054ac:	4e0080e7          	jalr	1248(ra) # 80004988 <_Z11printStringPKc>
    800054b0:	00000613          	li	a2,0
    800054b4:	00a00593          	li	a1,10
    800054b8:	00048513          	mv	a0,s1
    800054bc:	fffff097          	auipc	ra,0xfffff
    800054c0:	67c080e7          	jalr	1660(ra) # 80004b38 <_Z8printIntiii>
    800054c4:	00003517          	auipc	a0,0x3
    800054c8:	fec50513          	addi	a0,a0,-20 # 800084b0 <_ZZ13printIntegerAlE6digits+0x378>
    800054cc:	fffff097          	auipc	ra,0xfffff
    800054d0:	4bc080e7          	jalr	1212(ra) # 80004988 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800054d4:	0014849b          	addiw	s1,s1,1
    800054d8:	0ff4f493          	andi	s1,s1,255
    800054dc:	00200793          	li	a5,2
    800054e0:	fc97f0e3          	bgeu	a5,s1,800054a0 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800054e4:	00003517          	auipc	a0,0x3
    800054e8:	d8450513          	addi	a0,a0,-636 # 80008268 <_ZZ13printIntegerAlE6digits+0x130>
    800054ec:	fffff097          	auipc	ra,0xfffff
    800054f0:	49c080e7          	jalr	1180(ra) # 80004988 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800054f4:	00700313          	li	t1,7
    thread_dispatch();
    800054f8:	ffffc097          	auipc	ra,0xffffc
    800054fc:	df8080e7          	jalr	-520(ra) # 800012f0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005500:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005504:	00003517          	auipc	a0,0x3
    80005508:	d7450513          	addi	a0,a0,-652 # 80008278 <_ZZ13printIntegerAlE6digits+0x140>
    8000550c:	fffff097          	auipc	ra,0xfffff
    80005510:	47c080e7          	jalr	1148(ra) # 80004988 <_Z11printStringPKc>
    80005514:	00000613          	li	a2,0
    80005518:	00a00593          	li	a1,10
    8000551c:	0009051b          	sext.w	a0,s2
    80005520:	fffff097          	auipc	ra,0xfffff
    80005524:	618080e7          	jalr	1560(ra) # 80004b38 <_Z8printIntiii>
    80005528:	00003517          	auipc	a0,0x3
    8000552c:	f8850513          	addi	a0,a0,-120 # 800084b0 <_ZZ13printIntegerAlE6digits+0x378>
    80005530:	fffff097          	auipc	ra,0xfffff
    80005534:	458080e7          	jalr	1112(ra) # 80004988 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005538:	00c00513          	li	a0,12
    8000553c:	00000097          	auipc	ra,0x0
    80005540:	d88080e7          	jalr	-632(ra) # 800052c4 <_ZL9fibonaccim>
    80005544:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005548:	00003517          	auipc	a0,0x3
    8000554c:	d3850513          	addi	a0,a0,-712 # 80008280 <_ZZ13printIntegerAlE6digits+0x148>
    80005550:	fffff097          	auipc	ra,0xfffff
    80005554:	438080e7          	jalr	1080(ra) # 80004988 <_Z11printStringPKc>
    80005558:	00000613          	li	a2,0
    8000555c:	00a00593          	li	a1,10
    80005560:	0009051b          	sext.w	a0,s2
    80005564:	fffff097          	auipc	ra,0xfffff
    80005568:	5d4080e7          	jalr	1492(ra) # 80004b38 <_Z8printIntiii>
    8000556c:	00003517          	auipc	a0,0x3
    80005570:	f4450513          	addi	a0,a0,-188 # 800084b0 <_ZZ13printIntegerAlE6digits+0x378>
    80005574:	fffff097          	auipc	ra,0xfffff
    80005578:	414080e7          	jalr	1044(ra) # 80004988 <_Z11printStringPKc>
    8000557c:	0400006f          	j	800055bc <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005580:	00003517          	auipc	a0,0x3
    80005584:	ce050513          	addi	a0,a0,-800 # 80008260 <_ZZ13printIntegerAlE6digits+0x128>
    80005588:	fffff097          	auipc	ra,0xfffff
    8000558c:	400080e7          	jalr	1024(ra) # 80004988 <_Z11printStringPKc>
    80005590:	00000613          	li	a2,0
    80005594:	00a00593          	li	a1,10
    80005598:	00048513          	mv	a0,s1
    8000559c:	fffff097          	auipc	ra,0xfffff
    800055a0:	59c080e7          	jalr	1436(ra) # 80004b38 <_Z8printIntiii>
    800055a4:	00003517          	auipc	a0,0x3
    800055a8:	f0c50513          	addi	a0,a0,-244 # 800084b0 <_ZZ13printIntegerAlE6digits+0x378>
    800055ac:	fffff097          	auipc	ra,0xfffff
    800055b0:	3dc080e7          	jalr	988(ra) # 80004988 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800055b4:	0014849b          	addiw	s1,s1,1
    800055b8:	0ff4f493          	andi	s1,s1,255
    800055bc:	00500793          	li	a5,5
    800055c0:	fc97f0e3          	bgeu	a5,s1,80005580 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800055c4:	00003517          	auipc	a0,0x3
    800055c8:	c7450513          	addi	a0,a0,-908 # 80008238 <_ZZ13printIntegerAlE6digits+0x100>
    800055cc:	fffff097          	auipc	ra,0xfffff
    800055d0:	3bc080e7          	jalr	956(ra) # 80004988 <_Z11printStringPKc>
    finishedC = true;
    800055d4:	00100793          	li	a5,1
    800055d8:	00005717          	auipc	a4,0x5
    800055dc:	daf705a3          	sb	a5,-597(a4) # 8000a383 <_ZL9finishedC>
    thread_dispatch();
    800055e0:	ffffc097          	auipc	ra,0xffffc
    800055e4:	d10080e7          	jalr	-752(ra) # 800012f0 <_Z15thread_dispatchv>
}
    800055e8:	01813083          	ld	ra,24(sp)
    800055ec:	01013403          	ld	s0,16(sp)
    800055f0:	00813483          	ld	s1,8(sp)
    800055f4:	00013903          	ld	s2,0(sp)
    800055f8:	02010113          	addi	sp,sp,32
    800055fc:	00008067          	ret

0000000080005600 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005600:	fe010113          	addi	sp,sp,-32
    80005604:	00113c23          	sd	ra,24(sp)
    80005608:	00813823          	sd	s0,16(sp)
    8000560c:	00913423          	sd	s1,8(sp)
    80005610:	01213023          	sd	s2,0(sp)
    80005614:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005618:	00000913          	li	s2,0
    8000561c:	0400006f          	j	8000565c <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005620:	ffffc097          	auipc	ra,0xffffc
    80005624:	cd0080e7          	jalr	-816(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005628:	00148493          	addi	s1,s1,1
    8000562c:	000027b7          	lui	a5,0x2
    80005630:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005634:	0097ee63          	bltu	a5,s1,80005650 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005638:	00000713          	li	a4,0
    8000563c:	000077b7          	lui	a5,0x7
    80005640:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005644:	fce7eee3          	bltu	a5,a4,80005620 <_ZL11workerBodyBPv+0x20>
    80005648:	00170713          	addi	a4,a4,1
    8000564c:	ff1ff06f          	j	8000563c <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005650:	00a00793          	li	a5,10
    80005654:	04f90663          	beq	s2,a5,800056a0 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005658:	00190913          	addi	s2,s2,1
    8000565c:	00f00793          	li	a5,15
    80005660:	0527e463          	bltu	a5,s2,800056a8 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005664:	00003517          	auipc	a0,0x3
    80005668:	be450513          	addi	a0,a0,-1052 # 80008248 <_ZZ13printIntegerAlE6digits+0x110>
    8000566c:	fffff097          	auipc	ra,0xfffff
    80005670:	31c080e7          	jalr	796(ra) # 80004988 <_Z11printStringPKc>
    80005674:	00000613          	li	a2,0
    80005678:	00a00593          	li	a1,10
    8000567c:	0009051b          	sext.w	a0,s2
    80005680:	fffff097          	auipc	ra,0xfffff
    80005684:	4b8080e7          	jalr	1208(ra) # 80004b38 <_Z8printIntiii>
    80005688:	00003517          	auipc	a0,0x3
    8000568c:	e2850513          	addi	a0,a0,-472 # 800084b0 <_ZZ13printIntegerAlE6digits+0x378>
    80005690:	fffff097          	auipc	ra,0xfffff
    80005694:	2f8080e7          	jalr	760(ra) # 80004988 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005698:	00000493          	li	s1,0
    8000569c:	f91ff06f          	j	8000562c <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800056a0:	14102ff3          	csrr	t6,sepc
    800056a4:	fb5ff06f          	j	80005658 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800056a8:	00003517          	auipc	a0,0x3
    800056ac:	ba850513          	addi	a0,a0,-1112 # 80008250 <_ZZ13printIntegerAlE6digits+0x118>
    800056b0:	fffff097          	auipc	ra,0xfffff
    800056b4:	2d8080e7          	jalr	728(ra) # 80004988 <_Z11printStringPKc>
    finishedB = true;
    800056b8:	00100793          	li	a5,1
    800056bc:	00005717          	auipc	a4,0x5
    800056c0:	ccf70423          	sb	a5,-824(a4) # 8000a384 <_ZL9finishedB>
    thread_dispatch();
    800056c4:	ffffc097          	auipc	ra,0xffffc
    800056c8:	c2c080e7          	jalr	-980(ra) # 800012f0 <_Z15thread_dispatchv>
}
    800056cc:	01813083          	ld	ra,24(sp)
    800056d0:	01013403          	ld	s0,16(sp)
    800056d4:	00813483          	ld	s1,8(sp)
    800056d8:	00013903          	ld	s2,0(sp)
    800056dc:	02010113          	addi	sp,sp,32
    800056e0:	00008067          	ret

00000000800056e4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800056e4:	fe010113          	addi	sp,sp,-32
    800056e8:	00113c23          	sd	ra,24(sp)
    800056ec:	00813823          	sd	s0,16(sp)
    800056f0:	00913423          	sd	s1,8(sp)
    800056f4:	01213023          	sd	s2,0(sp)
    800056f8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800056fc:	00000913          	li	s2,0
    80005700:	0380006f          	j	80005738 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005704:	ffffc097          	auipc	ra,0xffffc
    80005708:	bec080e7          	jalr	-1044(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000570c:	00148493          	addi	s1,s1,1
    80005710:	000027b7          	lui	a5,0x2
    80005714:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005718:	0097ee63          	bltu	a5,s1,80005734 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000571c:	00000713          	li	a4,0
    80005720:	000077b7          	lui	a5,0x7
    80005724:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005728:	fce7eee3          	bltu	a5,a4,80005704 <_ZL11workerBodyAPv+0x20>
    8000572c:	00170713          	addi	a4,a4,1
    80005730:	ff1ff06f          	j	80005720 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005734:	00190913          	addi	s2,s2,1
    80005738:	00900793          	li	a5,9
    8000573c:	0527e063          	bltu	a5,s2,8000577c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005740:	00003517          	auipc	a0,0x3
    80005744:	af050513          	addi	a0,a0,-1296 # 80008230 <_ZZ13printIntegerAlE6digits+0xf8>
    80005748:	fffff097          	auipc	ra,0xfffff
    8000574c:	240080e7          	jalr	576(ra) # 80004988 <_Z11printStringPKc>
    80005750:	00000613          	li	a2,0
    80005754:	00a00593          	li	a1,10
    80005758:	0009051b          	sext.w	a0,s2
    8000575c:	fffff097          	auipc	ra,0xfffff
    80005760:	3dc080e7          	jalr	988(ra) # 80004b38 <_Z8printIntiii>
    80005764:	00003517          	auipc	a0,0x3
    80005768:	d4c50513          	addi	a0,a0,-692 # 800084b0 <_ZZ13printIntegerAlE6digits+0x378>
    8000576c:	fffff097          	auipc	ra,0xfffff
    80005770:	21c080e7          	jalr	540(ra) # 80004988 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005774:	00000493          	li	s1,0
    80005778:	f99ff06f          	j	80005710 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    8000577c:	00003517          	auipc	a0,0x3
    80005780:	abc50513          	addi	a0,a0,-1348 # 80008238 <_ZZ13printIntegerAlE6digits+0x100>
    80005784:	fffff097          	auipc	ra,0xfffff
    80005788:	204080e7          	jalr	516(ra) # 80004988 <_Z11printStringPKc>
    finishedA = true;
    8000578c:	00100793          	li	a5,1
    80005790:	00005717          	auipc	a4,0x5
    80005794:	bef70aa3          	sb	a5,-1035(a4) # 8000a385 <_ZL9finishedA>
}
    80005798:	01813083          	ld	ra,24(sp)
    8000579c:	01013403          	ld	s0,16(sp)
    800057a0:	00813483          	ld	s1,8(sp)
    800057a4:	00013903          	ld	s2,0(sp)
    800057a8:	02010113          	addi	sp,sp,32
    800057ac:	00008067          	ret

00000000800057b0 <_Z16System_Mode_testv>:


void System_Mode_test() {
    800057b0:	fd010113          	addi	sp,sp,-48
    800057b4:	02113423          	sd	ra,40(sp)
    800057b8:	02813023          	sd	s0,32(sp)
    800057bc:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800057c0:	00000613          	li	a2,0
    800057c4:	00000597          	auipc	a1,0x0
    800057c8:	f2058593          	addi	a1,a1,-224 # 800056e4 <_ZL11workerBodyAPv>
    800057cc:	fd040513          	addi	a0,s0,-48
    800057d0:	ffffc097          	auipc	ra,0xffffc
    800057d4:	ac4080e7          	jalr	-1340(ra) # 80001294 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800057d8:	00003517          	auipc	a0,0x3
    800057dc:	af050513          	addi	a0,a0,-1296 # 800082c8 <_ZZ13printIntegerAlE6digits+0x190>
    800057e0:	fffff097          	auipc	ra,0xfffff
    800057e4:	1a8080e7          	jalr	424(ra) # 80004988 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800057e8:	00000613          	li	a2,0
    800057ec:	00000597          	auipc	a1,0x0
    800057f0:	e1458593          	addi	a1,a1,-492 # 80005600 <_ZL11workerBodyBPv>
    800057f4:	fd840513          	addi	a0,s0,-40
    800057f8:	ffffc097          	auipc	ra,0xffffc
    800057fc:	a9c080e7          	jalr	-1380(ra) # 80001294 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005800:	00003517          	auipc	a0,0x3
    80005804:	ae050513          	addi	a0,a0,-1312 # 800082e0 <_ZZ13printIntegerAlE6digits+0x1a8>
    80005808:	fffff097          	auipc	ra,0xfffff
    8000580c:	180080e7          	jalr	384(ra) # 80004988 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005810:	00000613          	li	a2,0
    80005814:	00000597          	auipc	a1,0x0
    80005818:	c6c58593          	addi	a1,a1,-916 # 80005480 <_ZL11workerBodyCPv>
    8000581c:	fe040513          	addi	a0,s0,-32
    80005820:	ffffc097          	auipc	ra,0xffffc
    80005824:	a74080e7          	jalr	-1420(ra) # 80001294 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80005828:	00003517          	auipc	a0,0x3
    8000582c:	ad050513          	addi	a0,a0,-1328 # 800082f8 <_ZZ13printIntegerAlE6digits+0x1c0>
    80005830:	fffff097          	auipc	ra,0xfffff
    80005834:	158080e7          	jalr	344(ra) # 80004988 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005838:	00000613          	li	a2,0
    8000583c:	00000597          	auipc	a1,0x0
    80005840:	afc58593          	addi	a1,a1,-1284 # 80005338 <_ZL11workerBodyDPv>
    80005844:	fe840513          	addi	a0,s0,-24
    80005848:	ffffc097          	auipc	ra,0xffffc
    8000584c:	a4c080e7          	jalr	-1460(ra) # 80001294 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005850:	00003517          	auipc	a0,0x3
    80005854:	ac050513          	addi	a0,a0,-1344 # 80008310 <_ZZ13printIntegerAlE6digits+0x1d8>
    80005858:	fffff097          	auipc	ra,0xfffff
    8000585c:	130080e7          	jalr	304(ra) # 80004988 <_Z11printStringPKc>
    80005860:	00c0006f          	j	8000586c <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005864:	ffffc097          	auipc	ra,0xffffc
    80005868:	a8c080e7          	jalr	-1396(ra) # 800012f0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000586c:	00005797          	auipc	a5,0x5
    80005870:	b197c783          	lbu	a5,-1255(a5) # 8000a385 <_ZL9finishedA>
    80005874:	fe0788e3          	beqz	a5,80005864 <_Z16System_Mode_testv+0xb4>
    80005878:	00005797          	auipc	a5,0x5
    8000587c:	b0c7c783          	lbu	a5,-1268(a5) # 8000a384 <_ZL9finishedB>
    80005880:	fe0782e3          	beqz	a5,80005864 <_Z16System_Mode_testv+0xb4>
    80005884:	00005797          	auipc	a5,0x5
    80005888:	aff7c783          	lbu	a5,-1281(a5) # 8000a383 <_ZL9finishedC>
    8000588c:	fc078ce3          	beqz	a5,80005864 <_Z16System_Mode_testv+0xb4>
    80005890:	00005797          	auipc	a5,0x5
    80005894:	af27c783          	lbu	a5,-1294(a5) # 8000a382 <_ZL9finishedD>
    80005898:	fc0786e3          	beqz	a5,80005864 <_Z16System_Mode_testv+0xb4>
    }

}
    8000589c:	02813083          	ld	ra,40(sp)
    800058a0:	02013403          	ld	s0,32(sp)
    800058a4:	03010113          	addi	sp,sp,48
    800058a8:	00008067          	ret

00000000800058ac <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800058ac:	fe010113          	addi	sp,sp,-32
    800058b0:	00113c23          	sd	ra,24(sp)
    800058b4:	00813823          	sd	s0,16(sp)
    800058b8:	00913423          	sd	s1,8(sp)
    800058bc:	01213023          	sd	s2,0(sp)
    800058c0:	02010413          	addi	s0,sp,32
    800058c4:	00050493          	mv	s1,a0
    800058c8:	00058913          	mv	s2,a1
    800058cc:	0015879b          	addiw	a5,a1,1
    800058d0:	0007851b          	sext.w	a0,a5
    800058d4:	00f4a023          	sw	a5,0(s1)
    800058d8:	0004a823          	sw	zero,16(s1)
    800058dc:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800058e0:	00251513          	slli	a0,a0,0x2
    800058e4:	ffffc097          	auipc	ra,0xffffc
    800058e8:	960080e7          	jalr	-1696(ra) # 80001244 <_Z9mem_allocm>
    800058ec:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800058f0:	00000593          	li	a1,0
    800058f4:	02048513          	addi	a0,s1,32
    800058f8:	ffffc097          	auipc	ra,0xffffc
    800058fc:	a18080e7          	jalr	-1512(ra) # 80001310 <_Z8sem_openPP9KernelSemm>
    sem_open(&spaceAvailable, _cap);
    80005900:	00090593          	mv	a1,s2
    80005904:	01848513          	addi	a0,s1,24
    80005908:	ffffc097          	auipc	ra,0xffffc
    8000590c:	a08080e7          	jalr	-1528(ra) # 80001310 <_Z8sem_openPP9KernelSemm>
    sem_open(&mutexHead, 1);
    80005910:	00100593          	li	a1,1
    80005914:	02848513          	addi	a0,s1,40
    80005918:	ffffc097          	auipc	ra,0xffffc
    8000591c:	9f8080e7          	jalr	-1544(ra) # 80001310 <_Z8sem_openPP9KernelSemm>
    sem_open(&mutexTail, 1);
    80005920:	00100593          	li	a1,1
    80005924:	03048513          	addi	a0,s1,48
    80005928:	ffffc097          	auipc	ra,0xffffc
    8000592c:	9e8080e7          	jalr	-1560(ra) # 80001310 <_Z8sem_openPP9KernelSemm>
}
    80005930:	01813083          	ld	ra,24(sp)
    80005934:	01013403          	ld	s0,16(sp)
    80005938:	00813483          	ld	s1,8(sp)
    8000593c:	00013903          	ld	s2,0(sp)
    80005940:	02010113          	addi	sp,sp,32
    80005944:	00008067          	ret

0000000080005948 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005948:	fe010113          	addi	sp,sp,-32
    8000594c:	00113c23          	sd	ra,24(sp)
    80005950:	00813823          	sd	s0,16(sp)
    80005954:	00913423          	sd	s1,8(sp)
    80005958:	01213023          	sd	s2,0(sp)
    8000595c:	02010413          	addi	s0,sp,32
    80005960:	00050493          	mv	s1,a0
    80005964:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005968:	01853503          	ld	a0,24(a0)
    8000596c:	ffffc097          	auipc	ra,0xffffc
    80005970:	9fc080e7          	jalr	-1540(ra) # 80001368 <_Z8sem_waitP9KernelSem>

    sem_wait(mutexTail);
    80005974:	0304b503          	ld	a0,48(s1)
    80005978:	ffffc097          	auipc	ra,0xffffc
    8000597c:	9f0080e7          	jalr	-1552(ra) # 80001368 <_Z8sem_waitP9KernelSem>
    buffer[tail] = val;
    80005980:	0084b783          	ld	a5,8(s1)
    80005984:	0144a703          	lw	a4,20(s1)
    80005988:	00271713          	slli	a4,a4,0x2
    8000598c:	00e787b3          	add	a5,a5,a4
    80005990:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005994:	0144a783          	lw	a5,20(s1)
    80005998:	0017879b          	addiw	a5,a5,1
    8000599c:	0004a703          	lw	a4,0(s1)
    800059a0:	02e7e7bb          	remw	a5,a5,a4
    800059a4:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800059a8:	0304b503          	ld	a0,48(s1)
    800059ac:	ffffc097          	auipc	ra,0xffffc
    800059b0:	9e4080e7          	jalr	-1564(ra) # 80001390 <_Z10sem_signalP9KernelSem>

    sem_signal(itemAvailable);
    800059b4:	0204b503          	ld	a0,32(s1)
    800059b8:	ffffc097          	auipc	ra,0xffffc
    800059bc:	9d8080e7          	jalr	-1576(ra) # 80001390 <_Z10sem_signalP9KernelSem>

}
    800059c0:	01813083          	ld	ra,24(sp)
    800059c4:	01013403          	ld	s0,16(sp)
    800059c8:	00813483          	ld	s1,8(sp)
    800059cc:	00013903          	ld	s2,0(sp)
    800059d0:	02010113          	addi	sp,sp,32
    800059d4:	00008067          	ret

00000000800059d8 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800059d8:	fe010113          	addi	sp,sp,-32
    800059dc:	00113c23          	sd	ra,24(sp)
    800059e0:	00813823          	sd	s0,16(sp)
    800059e4:	00913423          	sd	s1,8(sp)
    800059e8:	01213023          	sd	s2,0(sp)
    800059ec:	02010413          	addi	s0,sp,32
    800059f0:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800059f4:	02053503          	ld	a0,32(a0)
    800059f8:	ffffc097          	auipc	ra,0xffffc
    800059fc:	970080e7          	jalr	-1680(ra) # 80001368 <_Z8sem_waitP9KernelSem>

    sem_wait(mutexHead);
    80005a00:	0284b503          	ld	a0,40(s1)
    80005a04:	ffffc097          	auipc	ra,0xffffc
    80005a08:	964080e7          	jalr	-1692(ra) # 80001368 <_Z8sem_waitP9KernelSem>

    int ret = buffer[head];
    80005a0c:	0084b703          	ld	a4,8(s1)
    80005a10:	0104a783          	lw	a5,16(s1)
    80005a14:	00279693          	slli	a3,a5,0x2
    80005a18:	00d70733          	add	a4,a4,a3
    80005a1c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005a20:	0017879b          	addiw	a5,a5,1
    80005a24:	0004a703          	lw	a4,0(s1)
    80005a28:	02e7e7bb          	remw	a5,a5,a4
    80005a2c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005a30:	0284b503          	ld	a0,40(s1)
    80005a34:	ffffc097          	auipc	ra,0xffffc
    80005a38:	95c080e7          	jalr	-1700(ra) # 80001390 <_Z10sem_signalP9KernelSem>

    sem_signal(spaceAvailable);
    80005a3c:	0184b503          	ld	a0,24(s1)
    80005a40:	ffffc097          	auipc	ra,0xffffc
    80005a44:	950080e7          	jalr	-1712(ra) # 80001390 <_Z10sem_signalP9KernelSem>

    return ret;
}
    80005a48:	00090513          	mv	a0,s2
    80005a4c:	01813083          	ld	ra,24(sp)
    80005a50:	01013403          	ld	s0,16(sp)
    80005a54:	00813483          	ld	s1,8(sp)
    80005a58:	00013903          	ld	s2,0(sp)
    80005a5c:	02010113          	addi	sp,sp,32
    80005a60:	00008067          	ret

0000000080005a64 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005a64:	fe010113          	addi	sp,sp,-32
    80005a68:	00113c23          	sd	ra,24(sp)
    80005a6c:	00813823          	sd	s0,16(sp)
    80005a70:	00913423          	sd	s1,8(sp)
    80005a74:	01213023          	sd	s2,0(sp)
    80005a78:	02010413          	addi	s0,sp,32
    80005a7c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005a80:	02853503          	ld	a0,40(a0)
    80005a84:	ffffc097          	auipc	ra,0xffffc
    80005a88:	8e4080e7          	jalr	-1820(ra) # 80001368 <_Z8sem_waitP9KernelSem>
    sem_wait(mutexTail);
    80005a8c:	0304b503          	ld	a0,48(s1)
    80005a90:	ffffc097          	auipc	ra,0xffffc
    80005a94:	8d8080e7          	jalr	-1832(ra) # 80001368 <_Z8sem_waitP9KernelSem>

    if (tail >= head) {
    80005a98:	0144a783          	lw	a5,20(s1)
    80005a9c:	0104a903          	lw	s2,16(s1)
    80005aa0:	0327ce63          	blt	a5,s2,80005adc <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005aa4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80005aa8:	0304b503          	ld	a0,48(s1)
    80005aac:	ffffc097          	auipc	ra,0xffffc
    80005ab0:	8e4080e7          	jalr	-1820(ra) # 80001390 <_Z10sem_signalP9KernelSem>
    sem_signal(mutexHead);
    80005ab4:	0284b503          	ld	a0,40(s1)
    80005ab8:	ffffc097          	auipc	ra,0xffffc
    80005abc:	8d8080e7          	jalr	-1832(ra) # 80001390 <_Z10sem_signalP9KernelSem>

    return ret;
}
    80005ac0:	00090513          	mv	a0,s2
    80005ac4:	01813083          	ld	ra,24(sp)
    80005ac8:	01013403          	ld	s0,16(sp)
    80005acc:	00813483          	ld	s1,8(sp)
    80005ad0:	00013903          	ld	s2,0(sp)
    80005ad4:	02010113          	addi	sp,sp,32
    80005ad8:	00008067          	ret
        ret = cap - head + tail;
    80005adc:	0004a703          	lw	a4,0(s1)
    80005ae0:	4127093b          	subw	s2,a4,s2
    80005ae4:	00f9093b          	addw	s2,s2,a5
    80005ae8:	fc1ff06f          	j	80005aa8 <_ZN6Buffer6getCntEv+0x44>

0000000080005aec <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80005aec:	fe010113          	addi	sp,sp,-32
    80005af0:	00113c23          	sd	ra,24(sp)
    80005af4:	00813823          	sd	s0,16(sp)
    80005af8:	00913423          	sd	s1,8(sp)
    80005afc:	02010413          	addi	s0,sp,32
    80005b00:	00050493          	mv	s1,a0
    putc('\n');
    80005b04:	00a00513          	li	a0,10
    80005b08:	ffffc097          	auipc	ra,0xffffc
    80005b0c:	960080e7          	jalr	-1696(ra) # 80001468 <_Z4putcc>
    printString("Buffer deleted!\n");
    80005b10:	00003517          	auipc	a0,0x3
    80005b14:	81850513          	addi	a0,a0,-2024 # 80008328 <_ZZ13printIntegerAlE6digits+0x1f0>
    80005b18:	fffff097          	auipc	ra,0xfffff
    80005b1c:	e70080e7          	jalr	-400(ra) # 80004988 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005b20:	00048513          	mv	a0,s1
    80005b24:	00000097          	auipc	ra,0x0
    80005b28:	f40080e7          	jalr	-192(ra) # 80005a64 <_ZN6Buffer6getCntEv>
    80005b2c:	02a05c63          	blez	a0,80005b64 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005b30:	0084b783          	ld	a5,8(s1)
    80005b34:	0104a703          	lw	a4,16(s1)
    80005b38:	00271713          	slli	a4,a4,0x2
    80005b3c:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005b40:	0007c503          	lbu	a0,0(a5)
    80005b44:	ffffc097          	auipc	ra,0xffffc
    80005b48:	924080e7          	jalr	-1756(ra) # 80001468 <_Z4putcc>
        head = (head + 1) % cap;
    80005b4c:	0104a783          	lw	a5,16(s1)
    80005b50:	0017879b          	addiw	a5,a5,1
    80005b54:	0004a703          	lw	a4,0(s1)
    80005b58:	02e7e7bb          	remw	a5,a5,a4
    80005b5c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005b60:	fc1ff06f          	j	80005b20 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005b64:	02100513          	li	a0,33
    80005b68:	ffffc097          	auipc	ra,0xffffc
    80005b6c:	900080e7          	jalr	-1792(ra) # 80001468 <_Z4putcc>
    putc('\n');
    80005b70:	00a00513          	li	a0,10
    80005b74:	ffffc097          	auipc	ra,0xffffc
    80005b78:	8f4080e7          	jalr	-1804(ra) # 80001468 <_Z4putcc>
    mem_free(buffer);
    80005b7c:	0084b503          	ld	a0,8(s1)
    80005b80:	ffffb097          	auipc	ra,0xffffb
    80005b84:	6ec080e7          	jalr	1772(ra) # 8000126c <_Z8mem_freePv>
    sem_close(itemAvailable);
    80005b88:	0204b503          	ld	a0,32(s1)
    80005b8c:	ffffb097          	auipc	ra,0xffffb
    80005b90:	7b4080e7          	jalr	1972(ra) # 80001340 <_Z9sem_closeP9KernelSem>
    sem_close(spaceAvailable);
    80005b94:	0184b503          	ld	a0,24(s1)
    80005b98:	ffffb097          	auipc	ra,0xffffb
    80005b9c:	7a8080e7          	jalr	1960(ra) # 80001340 <_Z9sem_closeP9KernelSem>
    sem_close(mutexTail);
    80005ba0:	0304b503          	ld	a0,48(s1)
    80005ba4:	ffffb097          	auipc	ra,0xffffb
    80005ba8:	79c080e7          	jalr	1948(ra) # 80001340 <_Z9sem_closeP9KernelSem>
    sem_close(mutexHead);
    80005bac:	0284b503          	ld	a0,40(s1)
    80005bb0:	ffffb097          	auipc	ra,0xffffb
    80005bb4:	790080e7          	jalr	1936(ra) # 80001340 <_Z9sem_closeP9KernelSem>
}
    80005bb8:	01813083          	ld	ra,24(sp)
    80005bbc:	01013403          	ld	s0,16(sp)
    80005bc0:	00813483          	ld	s1,8(sp)
    80005bc4:	02010113          	addi	sp,sp,32
    80005bc8:	00008067          	ret

0000000080005bcc <start>:
    80005bcc:	ff010113          	addi	sp,sp,-16
    80005bd0:	00813423          	sd	s0,8(sp)
    80005bd4:	01010413          	addi	s0,sp,16
    80005bd8:	300027f3          	csrr	a5,mstatus
    80005bdc:	ffffe737          	lui	a4,0xffffe
    80005be0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff320f>
    80005be4:	00e7f7b3          	and	a5,a5,a4
    80005be8:	00001737          	lui	a4,0x1
    80005bec:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005bf0:	00e7e7b3          	or	a5,a5,a4
    80005bf4:	30079073          	csrw	mstatus,a5
    80005bf8:	00000797          	auipc	a5,0x0
    80005bfc:	16078793          	addi	a5,a5,352 # 80005d58 <system_main>
    80005c00:	34179073          	csrw	mepc,a5
    80005c04:	00000793          	li	a5,0
    80005c08:	18079073          	csrw	satp,a5
    80005c0c:	000107b7          	lui	a5,0x10
    80005c10:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005c14:	30279073          	csrw	medeleg,a5
    80005c18:	30379073          	csrw	mideleg,a5
    80005c1c:	104027f3          	csrr	a5,sie
    80005c20:	2227e793          	ori	a5,a5,546
    80005c24:	10479073          	csrw	sie,a5
    80005c28:	fff00793          	li	a5,-1
    80005c2c:	00a7d793          	srli	a5,a5,0xa
    80005c30:	3b079073          	csrw	pmpaddr0,a5
    80005c34:	00f00793          	li	a5,15
    80005c38:	3a079073          	csrw	pmpcfg0,a5
    80005c3c:	f14027f3          	csrr	a5,mhartid
    80005c40:	0200c737          	lui	a4,0x200c
    80005c44:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005c48:	0007869b          	sext.w	a3,a5
    80005c4c:	00269713          	slli	a4,a3,0x2
    80005c50:	000f4637          	lui	a2,0xf4
    80005c54:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005c58:	00d70733          	add	a4,a4,a3
    80005c5c:	0037979b          	slliw	a5,a5,0x3
    80005c60:	020046b7          	lui	a3,0x2004
    80005c64:	00d787b3          	add	a5,a5,a3
    80005c68:	00c585b3          	add	a1,a1,a2
    80005c6c:	00371693          	slli	a3,a4,0x3
    80005c70:	00004717          	auipc	a4,0x4
    80005c74:	72070713          	addi	a4,a4,1824 # 8000a390 <timer_scratch>
    80005c78:	00b7b023          	sd	a1,0(a5)
    80005c7c:	00d70733          	add	a4,a4,a3
    80005c80:	00f73c23          	sd	a5,24(a4)
    80005c84:	02c73023          	sd	a2,32(a4)
    80005c88:	34071073          	csrw	mscratch,a4
    80005c8c:	00000797          	auipc	a5,0x0
    80005c90:	6e478793          	addi	a5,a5,1764 # 80006370 <timervec>
    80005c94:	30579073          	csrw	mtvec,a5
    80005c98:	300027f3          	csrr	a5,mstatus
    80005c9c:	0087e793          	ori	a5,a5,8
    80005ca0:	30079073          	csrw	mstatus,a5
    80005ca4:	304027f3          	csrr	a5,mie
    80005ca8:	0807e793          	ori	a5,a5,128
    80005cac:	30479073          	csrw	mie,a5
    80005cb0:	f14027f3          	csrr	a5,mhartid
    80005cb4:	0007879b          	sext.w	a5,a5
    80005cb8:	00078213          	mv	tp,a5
    80005cbc:	30200073          	mret
    80005cc0:	00813403          	ld	s0,8(sp)
    80005cc4:	01010113          	addi	sp,sp,16
    80005cc8:	00008067          	ret

0000000080005ccc <timerinit>:
    80005ccc:	ff010113          	addi	sp,sp,-16
    80005cd0:	00813423          	sd	s0,8(sp)
    80005cd4:	01010413          	addi	s0,sp,16
    80005cd8:	f14027f3          	csrr	a5,mhartid
    80005cdc:	0200c737          	lui	a4,0x200c
    80005ce0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005ce4:	0007869b          	sext.w	a3,a5
    80005ce8:	00269713          	slli	a4,a3,0x2
    80005cec:	000f4637          	lui	a2,0xf4
    80005cf0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005cf4:	00d70733          	add	a4,a4,a3
    80005cf8:	0037979b          	slliw	a5,a5,0x3
    80005cfc:	020046b7          	lui	a3,0x2004
    80005d00:	00d787b3          	add	a5,a5,a3
    80005d04:	00c585b3          	add	a1,a1,a2
    80005d08:	00371693          	slli	a3,a4,0x3
    80005d0c:	00004717          	auipc	a4,0x4
    80005d10:	68470713          	addi	a4,a4,1668 # 8000a390 <timer_scratch>
    80005d14:	00b7b023          	sd	a1,0(a5)
    80005d18:	00d70733          	add	a4,a4,a3
    80005d1c:	00f73c23          	sd	a5,24(a4)
    80005d20:	02c73023          	sd	a2,32(a4)
    80005d24:	34071073          	csrw	mscratch,a4
    80005d28:	00000797          	auipc	a5,0x0
    80005d2c:	64878793          	addi	a5,a5,1608 # 80006370 <timervec>
    80005d30:	30579073          	csrw	mtvec,a5
    80005d34:	300027f3          	csrr	a5,mstatus
    80005d38:	0087e793          	ori	a5,a5,8
    80005d3c:	30079073          	csrw	mstatus,a5
    80005d40:	304027f3          	csrr	a5,mie
    80005d44:	0807e793          	ori	a5,a5,128
    80005d48:	30479073          	csrw	mie,a5
    80005d4c:	00813403          	ld	s0,8(sp)
    80005d50:	01010113          	addi	sp,sp,16
    80005d54:	00008067          	ret

0000000080005d58 <system_main>:
    80005d58:	fe010113          	addi	sp,sp,-32
    80005d5c:	00813823          	sd	s0,16(sp)
    80005d60:	00913423          	sd	s1,8(sp)
    80005d64:	00113c23          	sd	ra,24(sp)
    80005d68:	02010413          	addi	s0,sp,32
    80005d6c:	00000097          	auipc	ra,0x0
    80005d70:	0c4080e7          	jalr	196(ra) # 80005e30 <cpuid>
    80005d74:	00004497          	auipc	s1,0x4
    80005d78:	56c48493          	addi	s1,s1,1388 # 8000a2e0 <started>
    80005d7c:	02050263          	beqz	a0,80005da0 <system_main+0x48>
    80005d80:	0004a783          	lw	a5,0(s1)
    80005d84:	0007879b          	sext.w	a5,a5
    80005d88:	fe078ce3          	beqz	a5,80005d80 <system_main+0x28>
    80005d8c:	0ff0000f          	fence
    80005d90:	00003517          	auipc	a0,0x3
    80005d94:	82850513          	addi	a0,a0,-2008 # 800085b8 <_ZZ13printIntegerAlE6digits+0x480>
    80005d98:	00001097          	auipc	ra,0x1
    80005d9c:	a74080e7          	jalr	-1420(ra) # 8000680c <panic>
    80005da0:	00001097          	auipc	ra,0x1
    80005da4:	9c8080e7          	jalr	-1592(ra) # 80006768 <consoleinit>
    80005da8:	00001097          	auipc	ra,0x1
    80005dac:	154080e7          	jalr	340(ra) # 80006efc <printfinit>
    80005db0:	00002517          	auipc	a0,0x2
    80005db4:	70050513          	addi	a0,a0,1792 # 800084b0 <_ZZ13printIntegerAlE6digits+0x378>
    80005db8:	00001097          	auipc	ra,0x1
    80005dbc:	ab0080e7          	jalr	-1360(ra) # 80006868 <__printf>
    80005dc0:	00002517          	auipc	a0,0x2
    80005dc4:	7c850513          	addi	a0,a0,1992 # 80008588 <_ZZ13printIntegerAlE6digits+0x450>
    80005dc8:	00001097          	auipc	ra,0x1
    80005dcc:	aa0080e7          	jalr	-1376(ra) # 80006868 <__printf>
    80005dd0:	00002517          	auipc	a0,0x2
    80005dd4:	6e050513          	addi	a0,a0,1760 # 800084b0 <_ZZ13printIntegerAlE6digits+0x378>
    80005dd8:	00001097          	auipc	ra,0x1
    80005ddc:	a90080e7          	jalr	-1392(ra) # 80006868 <__printf>
    80005de0:	00001097          	auipc	ra,0x1
    80005de4:	4a8080e7          	jalr	1192(ra) # 80007288 <kinit>
    80005de8:	00000097          	auipc	ra,0x0
    80005dec:	148080e7          	jalr	328(ra) # 80005f30 <trapinit>
    80005df0:	00000097          	auipc	ra,0x0
    80005df4:	16c080e7          	jalr	364(ra) # 80005f5c <trapinithart>
    80005df8:	00000097          	auipc	ra,0x0
    80005dfc:	5b8080e7          	jalr	1464(ra) # 800063b0 <plicinit>
    80005e00:	00000097          	auipc	ra,0x0
    80005e04:	5d8080e7          	jalr	1496(ra) # 800063d8 <plicinithart>
    80005e08:	00000097          	auipc	ra,0x0
    80005e0c:	078080e7          	jalr	120(ra) # 80005e80 <userinit>
    80005e10:	0ff0000f          	fence
    80005e14:	00100793          	li	a5,1
    80005e18:	00002517          	auipc	a0,0x2
    80005e1c:	78850513          	addi	a0,a0,1928 # 800085a0 <_ZZ13printIntegerAlE6digits+0x468>
    80005e20:	00f4a023          	sw	a5,0(s1)
    80005e24:	00001097          	auipc	ra,0x1
    80005e28:	a44080e7          	jalr	-1468(ra) # 80006868 <__printf>
    80005e2c:	0000006f          	j	80005e2c <system_main+0xd4>

0000000080005e30 <cpuid>:
    80005e30:	ff010113          	addi	sp,sp,-16
    80005e34:	00813423          	sd	s0,8(sp)
    80005e38:	01010413          	addi	s0,sp,16
    80005e3c:	00020513          	mv	a0,tp
    80005e40:	00813403          	ld	s0,8(sp)
    80005e44:	0005051b          	sext.w	a0,a0
    80005e48:	01010113          	addi	sp,sp,16
    80005e4c:	00008067          	ret

0000000080005e50 <mycpu>:
    80005e50:	ff010113          	addi	sp,sp,-16
    80005e54:	00813423          	sd	s0,8(sp)
    80005e58:	01010413          	addi	s0,sp,16
    80005e5c:	00020793          	mv	a5,tp
    80005e60:	00813403          	ld	s0,8(sp)
    80005e64:	0007879b          	sext.w	a5,a5
    80005e68:	00779793          	slli	a5,a5,0x7
    80005e6c:	00005517          	auipc	a0,0x5
    80005e70:	55450513          	addi	a0,a0,1364 # 8000b3c0 <cpus>
    80005e74:	00f50533          	add	a0,a0,a5
    80005e78:	01010113          	addi	sp,sp,16
    80005e7c:	00008067          	ret

0000000080005e80 <userinit>:
    80005e80:	ff010113          	addi	sp,sp,-16
    80005e84:	00813423          	sd	s0,8(sp)
    80005e88:	01010413          	addi	s0,sp,16
    80005e8c:	00813403          	ld	s0,8(sp)
    80005e90:	01010113          	addi	sp,sp,16
    80005e94:	ffffc317          	auipc	t1,0xffffc
    80005e98:	82030067          	jr	-2016(t1) # 800016b4 <main>

0000000080005e9c <either_copyout>:
    80005e9c:	ff010113          	addi	sp,sp,-16
    80005ea0:	00813023          	sd	s0,0(sp)
    80005ea4:	00113423          	sd	ra,8(sp)
    80005ea8:	01010413          	addi	s0,sp,16
    80005eac:	02051663          	bnez	a0,80005ed8 <either_copyout+0x3c>
    80005eb0:	00058513          	mv	a0,a1
    80005eb4:	00060593          	mv	a1,a2
    80005eb8:	0006861b          	sext.w	a2,a3
    80005ebc:	00002097          	auipc	ra,0x2
    80005ec0:	c58080e7          	jalr	-936(ra) # 80007b14 <__memmove>
    80005ec4:	00813083          	ld	ra,8(sp)
    80005ec8:	00013403          	ld	s0,0(sp)
    80005ecc:	00000513          	li	a0,0
    80005ed0:	01010113          	addi	sp,sp,16
    80005ed4:	00008067          	ret
    80005ed8:	00002517          	auipc	a0,0x2
    80005edc:	70850513          	addi	a0,a0,1800 # 800085e0 <_ZZ13printIntegerAlE6digits+0x4a8>
    80005ee0:	00001097          	auipc	ra,0x1
    80005ee4:	92c080e7          	jalr	-1748(ra) # 8000680c <panic>

0000000080005ee8 <either_copyin>:
    80005ee8:	ff010113          	addi	sp,sp,-16
    80005eec:	00813023          	sd	s0,0(sp)
    80005ef0:	00113423          	sd	ra,8(sp)
    80005ef4:	01010413          	addi	s0,sp,16
    80005ef8:	02059463          	bnez	a1,80005f20 <either_copyin+0x38>
    80005efc:	00060593          	mv	a1,a2
    80005f00:	0006861b          	sext.w	a2,a3
    80005f04:	00002097          	auipc	ra,0x2
    80005f08:	c10080e7          	jalr	-1008(ra) # 80007b14 <__memmove>
    80005f0c:	00813083          	ld	ra,8(sp)
    80005f10:	00013403          	ld	s0,0(sp)
    80005f14:	00000513          	li	a0,0
    80005f18:	01010113          	addi	sp,sp,16
    80005f1c:	00008067          	ret
    80005f20:	00002517          	auipc	a0,0x2
    80005f24:	6e850513          	addi	a0,a0,1768 # 80008608 <_ZZ13printIntegerAlE6digits+0x4d0>
    80005f28:	00001097          	auipc	ra,0x1
    80005f2c:	8e4080e7          	jalr	-1820(ra) # 8000680c <panic>

0000000080005f30 <trapinit>:
    80005f30:	ff010113          	addi	sp,sp,-16
    80005f34:	00813423          	sd	s0,8(sp)
    80005f38:	01010413          	addi	s0,sp,16
    80005f3c:	00813403          	ld	s0,8(sp)
    80005f40:	00002597          	auipc	a1,0x2
    80005f44:	6f058593          	addi	a1,a1,1776 # 80008630 <_ZZ13printIntegerAlE6digits+0x4f8>
    80005f48:	00005517          	auipc	a0,0x5
    80005f4c:	4f850513          	addi	a0,a0,1272 # 8000b440 <tickslock>
    80005f50:	01010113          	addi	sp,sp,16
    80005f54:	00001317          	auipc	t1,0x1
    80005f58:	5c430067          	jr	1476(t1) # 80007518 <initlock>

0000000080005f5c <trapinithart>:
    80005f5c:	ff010113          	addi	sp,sp,-16
    80005f60:	00813423          	sd	s0,8(sp)
    80005f64:	01010413          	addi	s0,sp,16
    80005f68:	00000797          	auipc	a5,0x0
    80005f6c:	2f878793          	addi	a5,a5,760 # 80006260 <kernelvec>
    80005f70:	10579073          	csrw	stvec,a5
    80005f74:	00813403          	ld	s0,8(sp)
    80005f78:	01010113          	addi	sp,sp,16
    80005f7c:	00008067          	ret

0000000080005f80 <usertrap>:
    80005f80:	ff010113          	addi	sp,sp,-16
    80005f84:	00813423          	sd	s0,8(sp)
    80005f88:	01010413          	addi	s0,sp,16
    80005f8c:	00813403          	ld	s0,8(sp)
    80005f90:	01010113          	addi	sp,sp,16
    80005f94:	00008067          	ret

0000000080005f98 <usertrapret>:
    80005f98:	ff010113          	addi	sp,sp,-16
    80005f9c:	00813423          	sd	s0,8(sp)
    80005fa0:	01010413          	addi	s0,sp,16
    80005fa4:	00813403          	ld	s0,8(sp)
    80005fa8:	01010113          	addi	sp,sp,16
    80005fac:	00008067          	ret

0000000080005fb0 <kerneltrap>:
    80005fb0:	fe010113          	addi	sp,sp,-32
    80005fb4:	00813823          	sd	s0,16(sp)
    80005fb8:	00113c23          	sd	ra,24(sp)
    80005fbc:	00913423          	sd	s1,8(sp)
    80005fc0:	02010413          	addi	s0,sp,32
    80005fc4:	142025f3          	csrr	a1,scause
    80005fc8:	100027f3          	csrr	a5,sstatus
    80005fcc:	0027f793          	andi	a5,a5,2
    80005fd0:	10079c63          	bnez	a5,800060e8 <kerneltrap+0x138>
    80005fd4:	142027f3          	csrr	a5,scause
    80005fd8:	0207ce63          	bltz	a5,80006014 <kerneltrap+0x64>
    80005fdc:	00002517          	auipc	a0,0x2
    80005fe0:	69c50513          	addi	a0,a0,1692 # 80008678 <_ZZ13printIntegerAlE6digits+0x540>
    80005fe4:	00001097          	auipc	ra,0x1
    80005fe8:	884080e7          	jalr	-1916(ra) # 80006868 <__printf>
    80005fec:	141025f3          	csrr	a1,sepc
    80005ff0:	14302673          	csrr	a2,stval
    80005ff4:	00002517          	auipc	a0,0x2
    80005ff8:	69450513          	addi	a0,a0,1684 # 80008688 <_ZZ13printIntegerAlE6digits+0x550>
    80005ffc:	00001097          	auipc	ra,0x1
    80006000:	86c080e7          	jalr	-1940(ra) # 80006868 <__printf>
    80006004:	00002517          	auipc	a0,0x2
    80006008:	69c50513          	addi	a0,a0,1692 # 800086a0 <_ZZ13printIntegerAlE6digits+0x568>
    8000600c:	00001097          	auipc	ra,0x1
    80006010:	800080e7          	jalr	-2048(ra) # 8000680c <panic>
    80006014:	0ff7f713          	andi	a4,a5,255
    80006018:	00900693          	li	a3,9
    8000601c:	04d70063          	beq	a4,a3,8000605c <kerneltrap+0xac>
    80006020:	fff00713          	li	a4,-1
    80006024:	03f71713          	slli	a4,a4,0x3f
    80006028:	00170713          	addi	a4,a4,1
    8000602c:	fae798e3          	bne	a5,a4,80005fdc <kerneltrap+0x2c>
    80006030:	00000097          	auipc	ra,0x0
    80006034:	e00080e7          	jalr	-512(ra) # 80005e30 <cpuid>
    80006038:	06050663          	beqz	a0,800060a4 <kerneltrap+0xf4>
    8000603c:	144027f3          	csrr	a5,sip
    80006040:	ffd7f793          	andi	a5,a5,-3
    80006044:	14479073          	csrw	sip,a5
    80006048:	01813083          	ld	ra,24(sp)
    8000604c:	01013403          	ld	s0,16(sp)
    80006050:	00813483          	ld	s1,8(sp)
    80006054:	02010113          	addi	sp,sp,32
    80006058:	00008067          	ret
    8000605c:	00000097          	auipc	ra,0x0
    80006060:	3c8080e7          	jalr	968(ra) # 80006424 <plic_claim>
    80006064:	00a00793          	li	a5,10
    80006068:	00050493          	mv	s1,a0
    8000606c:	06f50863          	beq	a0,a5,800060dc <kerneltrap+0x12c>
    80006070:	fc050ce3          	beqz	a0,80006048 <kerneltrap+0x98>
    80006074:	00050593          	mv	a1,a0
    80006078:	00002517          	auipc	a0,0x2
    8000607c:	5e050513          	addi	a0,a0,1504 # 80008658 <_ZZ13printIntegerAlE6digits+0x520>
    80006080:	00000097          	auipc	ra,0x0
    80006084:	7e8080e7          	jalr	2024(ra) # 80006868 <__printf>
    80006088:	01013403          	ld	s0,16(sp)
    8000608c:	01813083          	ld	ra,24(sp)
    80006090:	00048513          	mv	a0,s1
    80006094:	00813483          	ld	s1,8(sp)
    80006098:	02010113          	addi	sp,sp,32
    8000609c:	00000317          	auipc	t1,0x0
    800060a0:	3c030067          	jr	960(t1) # 8000645c <plic_complete>
    800060a4:	00005517          	auipc	a0,0x5
    800060a8:	39c50513          	addi	a0,a0,924 # 8000b440 <tickslock>
    800060ac:	00001097          	auipc	ra,0x1
    800060b0:	490080e7          	jalr	1168(ra) # 8000753c <acquire>
    800060b4:	00004717          	auipc	a4,0x4
    800060b8:	23070713          	addi	a4,a4,560 # 8000a2e4 <ticks>
    800060bc:	00072783          	lw	a5,0(a4)
    800060c0:	00005517          	auipc	a0,0x5
    800060c4:	38050513          	addi	a0,a0,896 # 8000b440 <tickslock>
    800060c8:	0017879b          	addiw	a5,a5,1
    800060cc:	00f72023          	sw	a5,0(a4)
    800060d0:	00001097          	auipc	ra,0x1
    800060d4:	538080e7          	jalr	1336(ra) # 80007608 <release>
    800060d8:	f65ff06f          	j	8000603c <kerneltrap+0x8c>
    800060dc:	00001097          	auipc	ra,0x1
    800060e0:	094080e7          	jalr	148(ra) # 80007170 <uartintr>
    800060e4:	fa5ff06f          	j	80006088 <kerneltrap+0xd8>
    800060e8:	00002517          	auipc	a0,0x2
    800060ec:	55050513          	addi	a0,a0,1360 # 80008638 <_ZZ13printIntegerAlE6digits+0x500>
    800060f0:	00000097          	auipc	ra,0x0
    800060f4:	71c080e7          	jalr	1820(ra) # 8000680c <panic>

00000000800060f8 <clockintr>:
    800060f8:	fe010113          	addi	sp,sp,-32
    800060fc:	00813823          	sd	s0,16(sp)
    80006100:	00913423          	sd	s1,8(sp)
    80006104:	00113c23          	sd	ra,24(sp)
    80006108:	02010413          	addi	s0,sp,32
    8000610c:	00005497          	auipc	s1,0x5
    80006110:	33448493          	addi	s1,s1,820 # 8000b440 <tickslock>
    80006114:	00048513          	mv	a0,s1
    80006118:	00001097          	auipc	ra,0x1
    8000611c:	424080e7          	jalr	1060(ra) # 8000753c <acquire>
    80006120:	00004717          	auipc	a4,0x4
    80006124:	1c470713          	addi	a4,a4,452 # 8000a2e4 <ticks>
    80006128:	00072783          	lw	a5,0(a4)
    8000612c:	01013403          	ld	s0,16(sp)
    80006130:	01813083          	ld	ra,24(sp)
    80006134:	00048513          	mv	a0,s1
    80006138:	0017879b          	addiw	a5,a5,1
    8000613c:	00813483          	ld	s1,8(sp)
    80006140:	00f72023          	sw	a5,0(a4)
    80006144:	02010113          	addi	sp,sp,32
    80006148:	00001317          	auipc	t1,0x1
    8000614c:	4c030067          	jr	1216(t1) # 80007608 <release>

0000000080006150 <devintr>:
    80006150:	142027f3          	csrr	a5,scause
    80006154:	00000513          	li	a0,0
    80006158:	0007c463          	bltz	a5,80006160 <devintr+0x10>
    8000615c:	00008067          	ret
    80006160:	fe010113          	addi	sp,sp,-32
    80006164:	00813823          	sd	s0,16(sp)
    80006168:	00113c23          	sd	ra,24(sp)
    8000616c:	00913423          	sd	s1,8(sp)
    80006170:	02010413          	addi	s0,sp,32
    80006174:	0ff7f713          	andi	a4,a5,255
    80006178:	00900693          	li	a3,9
    8000617c:	04d70c63          	beq	a4,a3,800061d4 <devintr+0x84>
    80006180:	fff00713          	li	a4,-1
    80006184:	03f71713          	slli	a4,a4,0x3f
    80006188:	00170713          	addi	a4,a4,1
    8000618c:	00e78c63          	beq	a5,a4,800061a4 <devintr+0x54>
    80006190:	01813083          	ld	ra,24(sp)
    80006194:	01013403          	ld	s0,16(sp)
    80006198:	00813483          	ld	s1,8(sp)
    8000619c:	02010113          	addi	sp,sp,32
    800061a0:	00008067          	ret
    800061a4:	00000097          	auipc	ra,0x0
    800061a8:	c8c080e7          	jalr	-884(ra) # 80005e30 <cpuid>
    800061ac:	06050663          	beqz	a0,80006218 <devintr+0xc8>
    800061b0:	144027f3          	csrr	a5,sip
    800061b4:	ffd7f793          	andi	a5,a5,-3
    800061b8:	14479073          	csrw	sip,a5
    800061bc:	01813083          	ld	ra,24(sp)
    800061c0:	01013403          	ld	s0,16(sp)
    800061c4:	00813483          	ld	s1,8(sp)
    800061c8:	00200513          	li	a0,2
    800061cc:	02010113          	addi	sp,sp,32
    800061d0:	00008067          	ret
    800061d4:	00000097          	auipc	ra,0x0
    800061d8:	250080e7          	jalr	592(ra) # 80006424 <plic_claim>
    800061dc:	00a00793          	li	a5,10
    800061e0:	00050493          	mv	s1,a0
    800061e4:	06f50663          	beq	a0,a5,80006250 <devintr+0x100>
    800061e8:	00100513          	li	a0,1
    800061ec:	fa0482e3          	beqz	s1,80006190 <devintr+0x40>
    800061f0:	00048593          	mv	a1,s1
    800061f4:	00002517          	auipc	a0,0x2
    800061f8:	46450513          	addi	a0,a0,1124 # 80008658 <_ZZ13printIntegerAlE6digits+0x520>
    800061fc:	00000097          	auipc	ra,0x0
    80006200:	66c080e7          	jalr	1644(ra) # 80006868 <__printf>
    80006204:	00048513          	mv	a0,s1
    80006208:	00000097          	auipc	ra,0x0
    8000620c:	254080e7          	jalr	596(ra) # 8000645c <plic_complete>
    80006210:	00100513          	li	a0,1
    80006214:	f7dff06f          	j	80006190 <devintr+0x40>
    80006218:	00005517          	auipc	a0,0x5
    8000621c:	22850513          	addi	a0,a0,552 # 8000b440 <tickslock>
    80006220:	00001097          	auipc	ra,0x1
    80006224:	31c080e7          	jalr	796(ra) # 8000753c <acquire>
    80006228:	00004717          	auipc	a4,0x4
    8000622c:	0bc70713          	addi	a4,a4,188 # 8000a2e4 <ticks>
    80006230:	00072783          	lw	a5,0(a4)
    80006234:	00005517          	auipc	a0,0x5
    80006238:	20c50513          	addi	a0,a0,524 # 8000b440 <tickslock>
    8000623c:	0017879b          	addiw	a5,a5,1
    80006240:	00f72023          	sw	a5,0(a4)
    80006244:	00001097          	auipc	ra,0x1
    80006248:	3c4080e7          	jalr	964(ra) # 80007608 <release>
    8000624c:	f65ff06f          	j	800061b0 <devintr+0x60>
    80006250:	00001097          	auipc	ra,0x1
    80006254:	f20080e7          	jalr	-224(ra) # 80007170 <uartintr>
    80006258:	fadff06f          	j	80006204 <devintr+0xb4>
    8000625c:	0000                	unimp
	...

0000000080006260 <kernelvec>:
    80006260:	f0010113          	addi	sp,sp,-256
    80006264:	00113023          	sd	ra,0(sp)
    80006268:	00213423          	sd	sp,8(sp)
    8000626c:	00313823          	sd	gp,16(sp)
    80006270:	00413c23          	sd	tp,24(sp)
    80006274:	02513023          	sd	t0,32(sp)
    80006278:	02613423          	sd	t1,40(sp)
    8000627c:	02713823          	sd	t2,48(sp)
    80006280:	02813c23          	sd	s0,56(sp)
    80006284:	04913023          	sd	s1,64(sp)
    80006288:	04a13423          	sd	a0,72(sp)
    8000628c:	04b13823          	sd	a1,80(sp)
    80006290:	04c13c23          	sd	a2,88(sp)
    80006294:	06d13023          	sd	a3,96(sp)
    80006298:	06e13423          	sd	a4,104(sp)
    8000629c:	06f13823          	sd	a5,112(sp)
    800062a0:	07013c23          	sd	a6,120(sp)
    800062a4:	09113023          	sd	a7,128(sp)
    800062a8:	09213423          	sd	s2,136(sp)
    800062ac:	09313823          	sd	s3,144(sp)
    800062b0:	09413c23          	sd	s4,152(sp)
    800062b4:	0b513023          	sd	s5,160(sp)
    800062b8:	0b613423          	sd	s6,168(sp)
    800062bc:	0b713823          	sd	s7,176(sp)
    800062c0:	0b813c23          	sd	s8,184(sp)
    800062c4:	0d913023          	sd	s9,192(sp)
    800062c8:	0da13423          	sd	s10,200(sp)
    800062cc:	0db13823          	sd	s11,208(sp)
    800062d0:	0dc13c23          	sd	t3,216(sp)
    800062d4:	0fd13023          	sd	t4,224(sp)
    800062d8:	0fe13423          	sd	t5,232(sp)
    800062dc:	0ff13823          	sd	t6,240(sp)
    800062e0:	cd1ff0ef          	jal	ra,80005fb0 <kerneltrap>
    800062e4:	00013083          	ld	ra,0(sp)
    800062e8:	00813103          	ld	sp,8(sp)
    800062ec:	01013183          	ld	gp,16(sp)
    800062f0:	02013283          	ld	t0,32(sp)
    800062f4:	02813303          	ld	t1,40(sp)
    800062f8:	03013383          	ld	t2,48(sp)
    800062fc:	03813403          	ld	s0,56(sp)
    80006300:	04013483          	ld	s1,64(sp)
    80006304:	04813503          	ld	a0,72(sp)
    80006308:	05013583          	ld	a1,80(sp)
    8000630c:	05813603          	ld	a2,88(sp)
    80006310:	06013683          	ld	a3,96(sp)
    80006314:	06813703          	ld	a4,104(sp)
    80006318:	07013783          	ld	a5,112(sp)
    8000631c:	07813803          	ld	a6,120(sp)
    80006320:	08013883          	ld	a7,128(sp)
    80006324:	08813903          	ld	s2,136(sp)
    80006328:	09013983          	ld	s3,144(sp)
    8000632c:	09813a03          	ld	s4,152(sp)
    80006330:	0a013a83          	ld	s5,160(sp)
    80006334:	0a813b03          	ld	s6,168(sp)
    80006338:	0b013b83          	ld	s7,176(sp)
    8000633c:	0b813c03          	ld	s8,184(sp)
    80006340:	0c013c83          	ld	s9,192(sp)
    80006344:	0c813d03          	ld	s10,200(sp)
    80006348:	0d013d83          	ld	s11,208(sp)
    8000634c:	0d813e03          	ld	t3,216(sp)
    80006350:	0e013e83          	ld	t4,224(sp)
    80006354:	0e813f03          	ld	t5,232(sp)
    80006358:	0f013f83          	ld	t6,240(sp)
    8000635c:	10010113          	addi	sp,sp,256
    80006360:	10200073          	sret
    80006364:	00000013          	nop
    80006368:	00000013          	nop
    8000636c:	00000013          	nop

0000000080006370 <timervec>:
    80006370:	34051573          	csrrw	a0,mscratch,a0
    80006374:	00b53023          	sd	a1,0(a0)
    80006378:	00c53423          	sd	a2,8(a0)
    8000637c:	00d53823          	sd	a3,16(a0)
    80006380:	01853583          	ld	a1,24(a0)
    80006384:	02053603          	ld	a2,32(a0)
    80006388:	0005b683          	ld	a3,0(a1)
    8000638c:	00c686b3          	add	a3,a3,a2
    80006390:	00d5b023          	sd	a3,0(a1)
    80006394:	00200593          	li	a1,2
    80006398:	14459073          	csrw	sip,a1
    8000639c:	01053683          	ld	a3,16(a0)
    800063a0:	00853603          	ld	a2,8(a0)
    800063a4:	00053583          	ld	a1,0(a0)
    800063a8:	34051573          	csrrw	a0,mscratch,a0
    800063ac:	30200073          	mret

00000000800063b0 <plicinit>:
    800063b0:	ff010113          	addi	sp,sp,-16
    800063b4:	00813423          	sd	s0,8(sp)
    800063b8:	01010413          	addi	s0,sp,16
    800063bc:	00813403          	ld	s0,8(sp)
    800063c0:	0c0007b7          	lui	a5,0xc000
    800063c4:	00100713          	li	a4,1
    800063c8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800063cc:	00e7a223          	sw	a4,4(a5)
    800063d0:	01010113          	addi	sp,sp,16
    800063d4:	00008067          	ret

00000000800063d8 <plicinithart>:
    800063d8:	ff010113          	addi	sp,sp,-16
    800063dc:	00813023          	sd	s0,0(sp)
    800063e0:	00113423          	sd	ra,8(sp)
    800063e4:	01010413          	addi	s0,sp,16
    800063e8:	00000097          	auipc	ra,0x0
    800063ec:	a48080e7          	jalr	-1464(ra) # 80005e30 <cpuid>
    800063f0:	0085171b          	slliw	a4,a0,0x8
    800063f4:	0c0027b7          	lui	a5,0xc002
    800063f8:	00e787b3          	add	a5,a5,a4
    800063fc:	40200713          	li	a4,1026
    80006400:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006404:	00813083          	ld	ra,8(sp)
    80006408:	00013403          	ld	s0,0(sp)
    8000640c:	00d5151b          	slliw	a0,a0,0xd
    80006410:	0c2017b7          	lui	a5,0xc201
    80006414:	00a78533          	add	a0,a5,a0
    80006418:	00052023          	sw	zero,0(a0)
    8000641c:	01010113          	addi	sp,sp,16
    80006420:	00008067          	ret

0000000080006424 <plic_claim>:
    80006424:	ff010113          	addi	sp,sp,-16
    80006428:	00813023          	sd	s0,0(sp)
    8000642c:	00113423          	sd	ra,8(sp)
    80006430:	01010413          	addi	s0,sp,16
    80006434:	00000097          	auipc	ra,0x0
    80006438:	9fc080e7          	jalr	-1540(ra) # 80005e30 <cpuid>
    8000643c:	00813083          	ld	ra,8(sp)
    80006440:	00013403          	ld	s0,0(sp)
    80006444:	00d5151b          	slliw	a0,a0,0xd
    80006448:	0c2017b7          	lui	a5,0xc201
    8000644c:	00a78533          	add	a0,a5,a0
    80006450:	00452503          	lw	a0,4(a0)
    80006454:	01010113          	addi	sp,sp,16
    80006458:	00008067          	ret

000000008000645c <plic_complete>:
    8000645c:	fe010113          	addi	sp,sp,-32
    80006460:	00813823          	sd	s0,16(sp)
    80006464:	00913423          	sd	s1,8(sp)
    80006468:	00113c23          	sd	ra,24(sp)
    8000646c:	02010413          	addi	s0,sp,32
    80006470:	00050493          	mv	s1,a0
    80006474:	00000097          	auipc	ra,0x0
    80006478:	9bc080e7          	jalr	-1604(ra) # 80005e30 <cpuid>
    8000647c:	01813083          	ld	ra,24(sp)
    80006480:	01013403          	ld	s0,16(sp)
    80006484:	00d5179b          	slliw	a5,a0,0xd
    80006488:	0c201737          	lui	a4,0xc201
    8000648c:	00f707b3          	add	a5,a4,a5
    80006490:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006494:	00813483          	ld	s1,8(sp)
    80006498:	02010113          	addi	sp,sp,32
    8000649c:	00008067          	ret

00000000800064a0 <consolewrite>:
    800064a0:	fb010113          	addi	sp,sp,-80
    800064a4:	04813023          	sd	s0,64(sp)
    800064a8:	04113423          	sd	ra,72(sp)
    800064ac:	02913c23          	sd	s1,56(sp)
    800064b0:	03213823          	sd	s2,48(sp)
    800064b4:	03313423          	sd	s3,40(sp)
    800064b8:	03413023          	sd	s4,32(sp)
    800064bc:	01513c23          	sd	s5,24(sp)
    800064c0:	05010413          	addi	s0,sp,80
    800064c4:	06c05c63          	blez	a2,8000653c <consolewrite+0x9c>
    800064c8:	00060993          	mv	s3,a2
    800064cc:	00050a13          	mv	s4,a0
    800064d0:	00058493          	mv	s1,a1
    800064d4:	00000913          	li	s2,0
    800064d8:	fff00a93          	li	s5,-1
    800064dc:	01c0006f          	j	800064f8 <consolewrite+0x58>
    800064e0:	fbf44503          	lbu	a0,-65(s0)
    800064e4:	0019091b          	addiw	s2,s2,1
    800064e8:	00148493          	addi	s1,s1,1
    800064ec:	00001097          	auipc	ra,0x1
    800064f0:	a9c080e7          	jalr	-1380(ra) # 80006f88 <uartputc>
    800064f4:	03298063          	beq	s3,s2,80006514 <consolewrite+0x74>
    800064f8:	00048613          	mv	a2,s1
    800064fc:	00100693          	li	a3,1
    80006500:	000a0593          	mv	a1,s4
    80006504:	fbf40513          	addi	a0,s0,-65
    80006508:	00000097          	auipc	ra,0x0
    8000650c:	9e0080e7          	jalr	-1568(ra) # 80005ee8 <either_copyin>
    80006510:	fd5518e3          	bne	a0,s5,800064e0 <consolewrite+0x40>
    80006514:	04813083          	ld	ra,72(sp)
    80006518:	04013403          	ld	s0,64(sp)
    8000651c:	03813483          	ld	s1,56(sp)
    80006520:	02813983          	ld	s3,40(sp)
    80006524:	02013a03          	ld	s4,32(sp)
    80006528:	01813a83          	ld	s5,24(sp)
    8000652c:	00090513          	mv	a0,s2
    80006530:	03013903          	ld	s2,48(sp)
    80006534:	05010113          	addi	sp,sp,80
    80006538:	00008067          	ret
    8000653c:	00000913          	li	s2,0
    80006540:	fd5ff06f          	j	80006514 <consolewrite+0x74>

0000000080006544 <consoleread>:
    80006544:	f9010113          	addi	sp,sp,-112
    80006548:	06813023          	sd	s0,96(sp)
    8000654c:	04913c23          	sd	s1,88(sp)
    80006550:	05213823          	sd	s2,80(sp)
    80006554:	05313423          	sd	s3,72(sp)
    80006558:	05413023          	sd	s4,64(sp)
    8000655c:	03513c23          	sd	s5,56(sp)
    80006560:	03613823          	sd	s6,48(sp)
    80006564:	03713423          	sd	s7,40(sp)
    80006568:	03813023          	sd	s8,32(sp)
    8000656c:	06113423          	sd	ra,104(sp)
    80006570:	01913c23          	sd	s9,24(sp)
    80006574:	07010413          	addi	s0,sp,112
    80006578:	00060b93          	mv	s7,a2
    8000657c:	00050913          	mv	s2,a0
    80006580:	00058c13          	mv	s8,a1
    80006584:	00060b1b          	sext.w	s6,a2
    80006588:	00005497          	auipc	s1,0x5
    8000658c:	ee048493          	addi	s1,s1,-288 # 8000b468 <cons>
    80006590:	00400993          	li	s3,4
    80006594:	fff00a13          	li	s4,-1
    80006598:	00a00a93          	li	s5,10
    8000659c:	05705e63          	blez	s7,800065f8 <consoleread+0xb4>
    800065a0:	09c4a703          	lw	a4,156(s1)
    800065a4:	0984a783          	lw	a5,152(s1)
    800065a8:	0007071b          	sext.w	a4,a4
    800065ac:	08e78463          	beq	a5,a4,80006634 <consoleread+0xf0>
    800065b0:	07f7f713          	andi	a4,a5,127
    800065b4:	00e48733          	add	a4,s1,a4
    800065b8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800065bc:	0017869b          	addiw	a3,a5,1
    800065c0:	08d4ac23          	sw	a3,152(s1)
    800065c4:	00070c9b          	sext.w	s9,a4
    800065c8:	0b370663          	beq	a4,s3,80006674 <consoleread+0x130>
    800065cc:	00100693          	li	a3,1
    800065d0:	f9f40613          	addi	a2,s0,-97
    800065d4:	000c0593          	mv	a1,s8
    800065d8:	00090513          	mv	a0,s2
    800065dc:	f8e40fa3          	sb	a4,-97(s0)
    800065e0:	00000097          	auipc	ra,0x0
    800065e4:	8bc080e7          	jalr	-1860(ra) # 80005e9c <either_copyout>
    800065e8:	01450863          	beq	a0,s4,800065f8 <consoleread+0xb4>
    800065ec:	001c0c13          	addi	s8,s8,1
    800065f0:	fffb8b9b          	addiw	s7,s7,-1
    800065f4:	fb5c94e3          	bne	s9,s5,8000659c <consoleread+0x58>
    800065f8:	000b851b          	sext.w	a0,s7
    800065fc:	06813083          	ld	ra,104(sp)
    80006600:	06013403          	ld	s0,96(sp)
    80006604:	05813483          	ld	s1,88(sp)
    80006608:	05013903          	ld	s2,80(sp)
    8000660c:	04813983          	ld	s3,72(sp)
    80006610:	04013a03          	ld	s4,64(sp)
    80006614:	03813a83          	ld	s5,56(sp)
    80006618:	02813b83          	ld	s7,40(sp)
    8000661c:	02013c03          	ld	s8,32(sp)
    80006620:	01813c83          	ld	s9,24(sp)
    80006624:	40ab053b          	subw	a0,s6,a0
    80006628:	03013b03          	ld	s6,48(sp)
    8000662c:	07010113          	addi	sp,sp,112
    80006630:	00008067          	ret
    80006634:	00001097          	auipc	ra,0x1
    80006638:	1d8080e7          	jalr	472(ra) # 8000780c <push_on>
    8000663c:	0984a703          	lw	a4,152(s1)
    80006640:	09c4a783          	lw	a5,156(s1)
    80006644:	0007879b          	sext.w	a5,a5
    80006648:	fef70ce3          	beq	a4,a5,80006640 <consoleread+0xfc>
    8000664c:	00001097          	auipc	ra,0x1
    80006650:	234080e7          	jalr	564(ra) # 80007880 <pop_on>
    80006654:	0984a783          	lw	a5,152(s1)
    80006658:	07f7f713          	andi	a4,a5,127
    8000665c:	00e48733          	add	a4,s1,a4
    80006660:	01874703          	lbu	a4,24(a4)
    80006664:	0017869b          	addiw	a3,a5,1
    80006668:	08d4ac23          	sw	a3,152(s1)
    8000666c:	00070c9b          	sext.w	s9,a4
    80006670:	f5371ee3          	bne	a4,s3,800065cc <consoleread+0x88>
    80006674:	000b851b          	sext.w	a0,s7
    80006678:	f96bf2e3          	bgeu	s7,s6,800065fc <consoleread+0xb8>
    8000667c:	08f4ac23          	sw	a5,152(s1)
    80006680:	f7dff06f          	j	800065fc <consoleread+0xb8>

0000000080006684 <consputc>:
    80006684:	10000793          	li	a5,256
    80006688:	00f50663          	beq	a0,a5,80006694 <consputc+0x10>
    8000668c:	00001317          	auipc	t1,0x1
    80006690:	9f430067          	jr	-1548(t1) # 80007080 <uartputc_sync>
    80006694:	ff010113          	addi	sp,sp,-16
    80006698:	00113423          	sd	ra,8(sp)
    8000669c:	00813023          	sd	s0,0(sp)
    800066a0:	01010413          	addi	s0,sp,16
    800066a4:	00800513          	li	a0,8
    800066a8:	00001097          	auipc	ra,0x1
    800066ac:	9d8080e7          	jalr	-1576(ra) # 80007080 <uartputc_sync>
    800066b0:	02000513          	li	a0,32
    800066b4:	00001097          	auipc	ra,0x1
    800066b8:	9cc080e7          	jalr	-1588(ra) # 80007080 <uartputc_sync>
    800066bc:	00013403          	ld	s0,0(sp)
    800066c0:	00813083          	ld	ra,8(sp)
    800066c4:	00800513          	li	a0,8
    800066c8:	01010113          	addi	sp,sp,16
    800066cc:	00001317          	auipc	t1,0x1
    800066d0:	9b430067          	jr	-1612(t1) # 80007080 <uartputc_sync>

00000000800066d4 <consoleintr>:
    800066d4:	fe010113          	addi	sp,sp,-32
    800066d8:	00813823          	sd	s0,16(sp)
    800066dc:	00913423          	sd	s1,8(sp)
    800066e0:	01213023          	sd	s2,0(sp)
    800066e4:	00113c23          	sd	ra,24(sp)
    800066e8:	02010413          	addi	s0,sp,32
    800066ec:	00005917          	auipc	s2,0x5
    800066f0:	d7c90913          	addi	s2,s2,-644 # 8000b468 <cons>
    800066f4:	00050493          	mv	s1,a0
    800066f8:	00090513          	mv	a0,s2
    800066fc:	00001097          	auipc	ra,0x1
    80006700:	e40080e7          	jalr	-448(ra) # 8000753c <acquire>
    80006704:	02048c63          	beqz	s1,8000673c <consoleintr+0x68>
    80006708:	0a092783          	lw	a5,160(s2)
    8000670c:	09892703          	lw	a4,152(s2)
    80006710:	07f00693          	li	a3,127
    80006714:	40e7873b          	subw	a4,a5,a4
    80006718:	02e6e263          	bltu	a3,a4,8000673c <consoleintr+0x68>
    8000671c:	00d00713          	li	a4,13
    80006720:	04e48063          	beq	s1,a4,80006760 <consoleintr+0x8c>
    80006724:	07f7f713          	andi	a4,a5,127
    80006728:	00e90733          	add	a4,s2,a4
    8000672c:	0017879b          	addiw	a5,a5,1
    80006730:	0af92023          	sw	a5,160(s2)
    80006734:	00970c23          	sb	s1,24(a4)
    80006738:	08f92e23          	sw	a5,156(s2)
    8000673c:	01013403          	ld	s0,16(sp)
    80006740:	01813083          	ld	ra,24(sp)
    80006744:	00813483          	ld	s1,8(sp)
    80006748:	00013903          	ld	s2,0(sp)
    8000674c:	00005517          	auipc	a0,0x5
    80006750:	d1c50513          	addi	a0,a0,-740 # 8000b468 <cons>
    80006754:	02010113          	addi	sp,sp,32
    80006758:	00001317          	auipc	t1,0x1
    8000675c:	eb030067          	jr	-336(t1) # 80007608 <release>
    80006760:	00a00493          	li	s1,10
    80006764:	fc1ff06f          	j	80006724 <consoleintr+0x50>

0000000080006768 <consoleinit>:
    80006768:	fe010113          	addi	sp,sp,-32
    8000676c:	00113c23          	sd	ra,24(sp)
    80006770:	00813823          	sd	s0,16(sp)
    80006774:	00913423          	sd	s1,8(sp)
    80006778:	02010413          	addi	s0,sp,32
    8000677c:	00005497          	auipc	s1,0x5
    80006780:	cec48493          	addi	s1,s1,-788 # 8000b468 <cons>
    80006784:	00048513          	mv	a0,s1
    80006788:	00002597          	auipc	a1,0x2
    8000678c:	f2858593          	addi	a1,a1,-216 # 800086b0 <_ZZ13printIntegerAlE6digits+0x578>
    80006790:	00001097          	auipc	ra,0x1
    80006794:	d88080e7          	jalr	-632(ra) # 80007518 <initlock>
    80006798:	00000097          	auipc	ra,0x0
    8000679c:	7ac080e7          	jalr	1964(ra) # 80006f44 <uartinit>
    800067a0:	01813083          	ld	ra,24(sp)
    800067a4:	01013403          	ld	s0,16(sp)
    800067a8:	00000797          	auipc	a5,0x0
    800067ac:	d9c78793          	addi	a5,a5,-612 # 80006544 <consoleread>
    800067b0:	0af4bc23          	sd	a5,184(s1)
    800067b4:	00000797          	auipc	a5,0x0
    800067b8:	cec78793          	addi	a5,a5,-788 # 800064a0 <consolewrite>
    800067bc:	0cf4b023          	sd	a5,192(s1)
    800067c0:	00813483          	ld	s1,8(sp)
    800067c4:	02010113          	addi	sp,sp,32
    800067c8:	00008067          	ret

00000000800067cc <console_read>:
    800067cc:	ff010113          	addi	sp,sp,-16
    800067d0:	00813423          	sd	s0,8(sp)
    800067d4:	01010413          	addi	s0,sp,16
    800067d8:	00813403          	ld	s0,8(sp)
    800067dc:	00005317          	auipc	t1,0x5
    800067e0:	d4433303          	ld	t1,-700(t1) # 8000b520 <devsw+0x10>
    800067e4:	01010113          	addi	sp,sp,16
    800067e8:	00030067          	jr	t1

00000000800067ec <console_write>:
    800067ec:	ff010113          	addi	sp,sp,-16
    800067f0:	00813423          	sd	s0,8(sp)
    800067f4:	01010413          	addi	s0,sp,16
    800067f8:	00813403          	ld	s0,8(sp)
    800067fc:	00005317          	auipc	t1,0x5
    80006800:	d2c33303          	ld	t1,-724(t1) # 8000b528 <devsw+0x18>
    80006804:	01010113          	addi	sp,sp,16
    80006808:	00030067          	jr	t1

000000008000680c <panic>:
    8000680c:	fe010113          	addi	sp,sp,-32
    80006810:	00113c23          	sd	ra,24(sp)
    80006814:	00813823          	sd	s0,16(sp)
    80006818:	00913423          	sd	s1,8(sp)
    8000681c:	02010413          	addi	s0,sp,32
    80006820:	00050493          	mv	s1,a0
    80006824:	00002517          	auipc	a0,0x2
    80006828:	e9450513          	addi	a0,a0,-364 # 800086b8 <_ZZ13printIntegerAlE6digits+0x580>
    8000682c:	00005797          	auipc	a5,0x5
    80006830:	d807ae23          	sw	zero,-612(a5) # 8000b5c8 <pr+0x18>
    80006834:	00000097          	auipc	ra,0x0
    80006838:	034080e7          	jalr	52(ra) # 80006868 <__printf>
    8000683c:	00048513          	mv	a0,s1
    80006840:	00000097          	auipc	ra,0x0
    80006844:	028080e7          	jalr	40(ra) # 80006868 <__printf>
    80006848:	00002517          	auipc	a0,0x2
    8000684c:	c6850513          	addi	a0,a0,-920 # 800084b0 <_ZZ13printIntegerAlE6digits+0x378>
    80006850:	00000097          	auipc	ra,0x0
    80006854:	018080e7          	jalr	24(ra) # 80006868 <__printf>
    80006858:	00100793          	li	a5,1
    8000685c:	00004717          	auipc	a4,0x4
    80006860:	a8f72623          	sw	a5,-1396(a4) # 8000a2e8 <panicked>
    80006864:	0000006f          	j	80006864 <panic+0x58>

0000000080006868 <__printf>:
    80006868:	f3010113          	addi	sp,sp,-208
    8000686c:	08813023          	sd	s0,128(sp)
    80006870:	07313423          	sd	s3,104(sp)
    80006874:	09010413          	addi	s0,sp,144
    80006878:	05813023          	sd	s8,64(sp)
    8000687c:	08113423          	sd	ra,136(sp)
    80006880:	06913c23          	sd	s1,120(sp)
    80006884:	07213823          	sd	s2,112(sp)
    80006888:	07413023          	sd	s4,96(sp)
    8000688c:	05513c23          	sd	s5,88(sp)
    80006890:	05613823          	sd	s6,80(sp)
    80006894:	05713423          	sd	s7,72(sp)
    80006898:	03913c23          	sd	s9,56(sp)
    8000689c:	03a13823          	sd	s10,48(sp)
    800068a0:	03b13423          	sd	s11,40(sp)
    800068a4:	00005317          	auipc	t1,0x5
    800068a8:	d0c30313          	addi	t1,t1,-756 # 8000b5b0 <pr>
    800068ac:	01832c03          	lw	s8,24(t1)
    800068b0:	00b43423          	sd	a1,8(s0)
    800068b4:	00c43823          	sd	a2,16(s0)
    800068b8:	00d43c23          	sd	a3,24(s0)
    800068bc:	02e43023          	sd	a4,32(s0)
    800068c0:	02f43423          	sd	a5,40(s0)
    800068c4:	03043823          	sd	a6,48(s0)
    800068c8:	03143c23          	sd	a7,56(s0)
    800068cc:	00050993          	mv	s3,a0
    800068d0:	4a0c1663          	bnez	s8,80006d7c <__printf+0x514>
    800068d4:	60098c63          	beqz	s3,80006eec <__printf+0x684>
    800068d8:	0009c503          	lbu	a0,0(s3)
    800068dc:	00840793          	addi	a5,s0,8
    800068e0:	f6f43c23          	sd	a5,-136(s0)
    800068e4:	00000493          	li	s1,0
    800068e8:	22050063          	beqz	a0,80006b08 <__printf+0x2a0>
    800068ec:	00002a37          	lui	s4,0x2
    800068f0:	00018ab7          	lui	s5,0x18
    800068f4:	000f4b37          	lui	s6,0xf4
    800068f8:	00989bb7          	lui	s7,0x989
    800068fc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006900:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006904:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006908:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000690c:	00148c9b          	addiw	s9,s1,1
    80006910:	02500793          	li	a5,37
    80006914:	01998933          	add	s2,s3,s9
    80006918:	38f51263          	bne	a0,a5,80006c9c <__printf+0x434>
    8000691c:	00094783          	lbu	a5,0(s2)
    80006920:	00078c9b          	sext.w	s9,a5
    80006924:	1e078263          	beqz	a5,80006b08 <__printf+0x2a0>
    80006928:	0024849b          	addiw	s1,s1,2
    8000692c:	07000713          	li	a4,112
    80006930:	00998933          	add	s2,s3,s1
    80006934:	38e78a63          	beq	a5,a4,80006cc8 <__printf+0x460>
    80006938:	20f76863          	bltu	a4,a5,80006b48 <__printf+0x2e0>
    8000693c:	42a78863          	beq	a5,a0,80006d6c <__printf+0x504>
    80006940:	06400713          	li	a4,100
    80006944:	40e79663          	bne	a5,a4,80006d50 <__printf+0x4e8>
    80006948:	f7843783          	ld	a5,-136(s0)
    8000694c:	0007a603          	lw	a2,0(a5)
    80006950:	00878793          	addi	a5,a5,8
    80006954:	f6f43c23          	sd	a5,-136(s0)
    80006958:	42064a63          	bltz	a2,80006d8c <__printf+0x524>
    8000695c:	00a00713          	li	a4,10
    80006960:	02e677bb          	remuw	a5,a2,a4
    80006964:	00002d97          	auipc	s11,0x2
    80006968:	d7cd8d93          	addi	s11,s11,-644 # 800086e0 <digits>
    8000696c:	00900593          	li	a1,9
    80006970:	0006051b          	sext.w	a0,a2
    80006974:	00000c93          	li	s9,0
    80006978:	02079793          	slli	a5,a5,0x20
    8000697c:	0207d793          	srli	a5,a5,0x20
    80006980:	00fd87b3          	add	a5,s11,a5
    80006984:	0007c783          	lbu	a5,0(a5)
    80006988:	02e656bb          	divuw	a3,a2,a4
    8000698c:	f8f40023          	sb	a5,-128(s0)
    80006990:	14c5d863          	bge	a1,a2,80006ae0 <__printf+0x278>
    80006994:	06300593          	li	a1,99
    80006998:	00100c93          	li	s9,1
    8000699c:	02e6f7bb          	remuw	a5,a3,a4
    800069a0:	02079793          	slli	a5,a5,0x20
    800069a4:	0207d793          	srli	a5,a5,0x20
    800069a8:	00fd87b3          	add	a5,s11,a5
    800069ac:	0007c783          	lbu	a5,0(a5)
    800069b0:	02e6d73b          	divuw	a4,a3,a4
    800069b4:	f8f400a3          	sb	a5,-127(s0)
    800069b8:	12a5f463          	bgeu	a1,a0,80006ae0 <__printf+0x278>
    800069bc:	00a00693          	li	a3,10
    800069c0:	00900593          	li	a1,9
    800069c4:	02d777bb          	remuw	a5,a4,a3
    800069c8:	02079793          	slli	a5,a5,0x20
    800069cc:	0207d793          	srli	a5,a5,0x20
    800069d0:	00fd87b3          	add	a5,s11,a5
    800069d4:	0007c503          	lbu	a0,0(a5)
    800069d8:	02d757bb          	divuw	a5,a4,a3
    800069dc:	f8a40123          	sb	a0,-126(s0)
    800069e0:	48e5f263          	bgeu	a1,a4,80006e64 <__printf+0x5fc>
    800069e4:	06300513          	li	a0,99
    800069e8:	02d7f5bb          	remuw	a1,a5,a3
    800069ec:	02059593          	slli	a1,a1,0x20
    800069f0:	0205d593          	srli	a1,a1,0x20
    800069f4:	00bd85b3          	add	a1,s11,a1
    800069f8:	0005c583          	lbu	a1,0(a1)
    800069fc:	02d7d7bb          	divuw	a5,a5,a3
    80006a00:	f8b401a3          	sb	a1,-125(s0)
    80006a04:	48e57263          	bgeu	a0,a4,80006e88 <__printf+0x620>
    80006a08:	3e700513          	li	a0,999
    80006a0c:	02d7f5bb          	remuw	a1,a5,a3
    80006a10:	02059593          	slli	a1,a1,0x20
    80006a14:	0205d593          	srli	a1,a1,0x20
    80006a18:	00bd85b3          	add	a1,s11,a1
    80006a1c:	0005c583          	lbu	a1,0(a1)
    80006a20:	02d7d7bb          	divuw	a5,a5,a3
    80006a24:	f8b40223          	sb	a1,-124(s0)
    80006a28:	46e57663          	bgeu	a0,a4,80006e94 <__printf+0x62c>
    80006a2c:	02d7f5bb          	remuw	a1,a5,a3
    80006a30:	02059593          	slli	a1,a1,0x20
    80006a34:	0205d593          	srli	a1,a1,0x20
    80006a38:	00bd85b3          	add	a1,s11,a1
    80006a3c:	0005c583          	lbu	a1,0(a1)
    80006a40:	02d7d7bb          	divuw	a5,a5,a3
    80006a44:	f8b402a3          	sb	a1,-123(s0)
    80006a48:	46ea7863          	bgeu	s4,a4,80006eb8 <__printf+0x650>
    80006a4c:	02d7f5bb          	remuw	a1,a5,a3
    80006a50:	02059593          	slli	a1,a1,0x20
    80006a54:	0205d593          	srli	a1,a1,0x20
    80006a58:	00bd85b3          	add	a1,s11,a1
    80006a5c:	0005c583          	lbu	a1,0(a1)
    80006a60:	02d7d7bb          	divuw	a5,a5,a3
    80006a64:	f8b40323          	sb	a1,-122(s0)
    80006a68:	3eeaf863          	bgeu	s5,a4,80006e58 <__printf+0x5f0>
    80006a6c:	02d7f5bb          	remuw	a1,a5,a3
    80006a70:	02059593          	slli	a1,a1,0x20
    80006a74:	0205d593          	srli	a1,a1,0x20
    80006a78:	00bd85b3          	add	a1,s11,a1
    80006a7c:	0005c583          	lbu	a1,0(a1)
    80006a80:	02d7d7bb          	divuw	a5,a5,a3
    80006a84:	f8b403a3          	sb	a1,-121(s0)
    80006a88:	42eb7e63          	bgeu	s6,a4,80006ec4 <__printf+0x65c>
    80006a8c:	02d7f5bb          	remuw	a1,a5,a3
    80006a90:	02059593          	slli	a1,a1,0x20
    80006a94:	0205d593          	srli	a1,a1,0x20
    80006a98:	00bd85b3          	add	a1,s11,a1
    80006a9c:	0005c583          	lbu	a1,0(a1)
    80006aa0:	02d7d7bb          	divuw	a5,a5,a3
    80006aa4:	f8b40423          	sb	a1,-120(s0)
    80006aa8:	42ebfc63          	bgeu	s7,a4,80006ee0 <__printf+0x678>
    80006aac:	02079793          	slli	a5,a5,0x20
    80006ab0:	0207d793          	srli	a5,a5,0x20
    80006ab4:	00fd8db3          	add	s11,s11,a5
    80006ab8:	000dc703          	lbu	a4,0(s11)
    80006abc:	00a00793          	li	a5,10
    80006ac0:	00900c93          	li	s9,9
    80006ac4:	f8e404a3          	sb	a4,-119(s0)
    80006ac8:	00065c63          	bgez	a2,80006ae0 <__printf+0x278>
    80006acc:	f9040713          	addi	a4,s0,-112
    80006ad0:	00f70733          	add	a4,a4,a5
    80006ad4:	02d00693          	li	a3,45
    80006ad8:	fed70823          	sb	a3,-16(a4)
    80006adc:	00078c93          	mv	s9,a5
    80006ae0:	f8040793          	addi	a5,s0,-128
    80006ae4:	01978cb3          	add	s9,a5,s9
    80006ae8:	f7f40d13          	addi	s10,s0,-129
    80006aec:	000cc503          	lbu	a0,0(s9)
    80006af0:	fffc8c93          	addi	s9,s9,-1
    80006af4:	00000097          	auipc	ra,0x0
    80006af8:	b90080e7          	jalr	-1136(ra) # 80006684 <consputc>
    80006afc:	ffac98e3          	bne	s9,s10,80006aec <__printf+0x284>
    80006b00:	00094503          	lbu	a0,0(s2)
    80006b04:	e00514e3          	bnez	a0,8000690c <__printf+0xa4>
    80006b08:	1a0c1663          	bnez	s8,80006cb4 <__printf+0x44c>
    80006b0c:	08813083          	ld	ra,136(sp)
    80006b10:	08013403          	ld	s0,128(sp)
    80006b14:	07813483          	ld	s1,120(sp)
    80006b18:	07013903          	ld	s2,112(sp)
    80006b1c:	06813983          	ld	s3,104(sp)
    80006b20:	06013a03          	ld	s4,96(sp)
    80006b24:	05813a83          	ld	s5,88(sp)
    80006b28:	05013b03          	ld	s6,80(sp)
    80006b2c:	04813b83          	ld	s7,72(sp)
    80006b30:	04013c03          	ld	s8,64(sp)
    80006b34:	03813c83          	ld	s9,56(sp)
    80006b38:	03013d03          	ld	s10,48(sp)
    80006b3c:	02813d83          	ld	s11,40(sp)
    80006b40:	0d010113          	addi	sp,sp,208
    80006b44:	00008067          	ret
    80006b48:	07300713          	li	a4,115
    80006b4c:	1ce78a63          	beq	a5,a4,80006d20 <__printf+0x4b8>
    80006b50:	07800713          	li	a4,120
    80006b54:	1ee79e63          	bne	a5,a4,80006d50 <__printf+0x4e8>
    80006b58:	f7843783          	ld	a5,-136(s0)
    80006b5c:	0007a703          	lw	a4,0(a5)
    80006b60:	00878793          	addi	a5,a5,8
    80006b64:	f6f43c23          	sd	a5,-136(s0)
    80006b68:	28074263          	bltz	a4,80006dec <__printf+0x584>
    80006b6c:	00002d97          	auipc	s11,0x2
    80006b70:	b74d8d93          	addi	s11,s11,-1164 # 800086e0 <digits>
    80006b74:	00f77793          	andi	a5,a4,15
    80006b78:	00fd87b3          	add	a5,s11,a5
    80006b7c:	0007c683          	lbu	a3,0(a5)
    80006b80:	00f00613          	li	a2,15
    80006b84:	0007079b          	sext.w	a5,a4
    80006b88:	f8d40023          	sb	a3,-128(s0)
    80006b8c:	0047559b          	srliw	a1,a4,0x4
    80006b90:	0047569b          	srliw	a3,a4,0x4
    80006b94:	00000c93          	li	s9,0
    80006b98:	0ee65063          	bge	a2,a4,80006c78 <__printf+0x410>
    80006b9c:	00f6f693          	andi	a3,a3,15
    80006ba0:	00dd86b3          	add	a3,s11,a3
    80006ba4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006ba8:	0087d79b          	srliw	a5,a5,0x8
    80006bac:	00100c93          	li	s9,1
    80006bb0:	f8d400a3          	sb	a3,-127(s0)
    80006bb4:	0cb67263          	bgeu	a2,a1,80006c78 <__printf+0x410>
    80006bb8:	00f7f693          	andi	a3,a5,15
    80006bbc:	00dd86b3          	add	a3,s11,a3
    80006bc0:	0006c583          	lbu	a1,0(a3)
    80006bc4:	00f00613          	li	a2,15
    80006bc8:	0047d69b          	srliw	a3,a5,0x4
    80006bcc:	f8b40123          	sb	a1,-126(s0)
    80006bd0:	0047d593          	srli	a1,a5,0x4
    80006bd4:	28f67e63          	bgeu	a2,a5,80006e70 <__printf+0x608>
    80006bd8:	00f6f693          	andi	a3,a3,15
    80006bdc:	00dd86b3          	add	a3,s11,a3
    80006be0:	0006c503          	lbu	a0,0(a3)
    80006be4:	0087d813          	srli	a6,a5,0x8
    80006be8:	0087d69b          	srliw	a3,a5,0x8
    80006bec:	f8a401a3          	sb	a0,-125(s0)
    80006bf0:	28b67663          	bgeu	a2,a1,80006e7c <__printf+0x614>
    80006bf4:	00f6f693          	andi	a3,a3,15
    80006bf8:	00dd86b3          	add	a3,s11,a3
    80006bfc:	0006c583          	lbu	a1,0(a3)
    80006c00:	00c7d513          	srli	a0,a5,0xc
    80006c04:	00c7d69b          	srliw	a3,a5,0xc
    80006c08:	f8b40223          	sb	a1,-124(s0)
    80006c0c:	29067a63          	bgeu	a2,a6,80006ea0 <__printf+0x638>
    80006c10:	00f6f693          	andi	a3,a3,15
    80006c14:	00dd86b3          	add	a3,s11,a3
    80006c18:	0006c583          	lbu	a1,0(a3)
    80006c1c:	0107d813          	srli	a6,a5,0x10
    80006c20:	0107d69b          	srliw	a3,a5,0x10
    80006c24:	f8b402a3          	sb	a1,-123(s0)
    80006c28:	28a67263          	bgeu	a2,a0,80006eac <__printf+0x644>
    80006c2c:	00f6f693          	andi	a3,a3,15
    80006c30:	00dd86b3          	add	a3,s11,a3
    80006c34:	0006c683          	lbu	a3,0(a3)
    80006c38:	0147d79b          	srliw	a5,a5,0x14
    80006c3c:	f8d40323          	sb	a3,-122(s0)
    80006c40:	21067663          	bgeu	a2,a6,80006e4c <__printf+0x5e4>
    80006c44:	02079793          	slli	a5,a5,0x20
    80006c48:	0207d793          	srli	a5,a5,0x20
    80006c4c:	00fd8db3          	add	s11,s11,a5
    80006c50:	000dc683          	lbu	a3,0(s11)
    80006c54:	00800793          	li	a5,8
    80006c58:	00700c93          	li	s9,7
    80006c5c:	f8d403a3          	sb	a3,-121(s0)
    80006c60:	00075c63          	bgez	a4,80006c78 <__printf+0x410>
    80006c64:	f9040713          	addi	a4,s0,-112
    80006c68:	00f70733          	add	a4,a4,a5
    80006c6c:	02d00693          	li	a3,45
    80006c70:	fed70823          	sb	a3,-16(a4)
    80006c74:	00078c93          	mv	s9,a5
    80006c78:	f8040793          	addi	a5,s0,-128
    80006c7c:	01978cb3          	add	s9,a5,s9
    80006c80:	f7f40d13          	addi	s10,s0,-129
    80006c84:	000cc503          	lbu	a0,0(s9)
    80006c88:	fffc8c93          	addi	s9,s9,-1
    80006c8c:	00000097          	auipc	ra,0x0
    80006c90:	9f8080e7          	jalr	-1544(ra) # 80006684 <consputc>
    80006c94:	ff9d18e3          	bne	s10,s9,80006c84 <__printf+0x41c>
    80006c98:	0100006f          	j	80006ca8 <__printf+0x440>
    80006c9c:	00000097          	auipc	ra,0x0
    80006ca0:	9e8080e7          	jalr	-1560(ra) # 80006684 <consputc>
    80006ca4:	000c8493          	mv	s1,s9
    80006ca8:	00094503          	lbu	a0,0(s2)
    80006cac:	c60510e3          	bnez	a0,8000690c <__printf+0xa4>
    80006cb0:	e40c0ee3          	beqz	s8,80006b0c <__printf+0x2a4>
    80006cb4:	00005517          	auipc	a0,0x5
    80006cb8:	8fc50513          	addi	a0,a0,-1796 # 8000b5b0 <pr>
    80006cbc:	00001097          	auipc	ra,0x1
    80006cc0:	94c080e7          	jalr	-1716(ra) # 80007608 <release>
    80006cc4:	e49ff06f          	j	80006b0c <__printf+0x2a4>
    80006cc8:	f7843783          	ld	a5,-136(s0)
    80006ccc:	03000513          	li	a0,48
    80006cd0:	01000d13          	li	s10,16
    80006cd4:	00878713          	addi	a4,a5,8
    80006cd8:	0007bc83          	ld	s9,0(a5)
    80006cdc:	f6e43c23          	sd	a4,-136(s0)
    80006ce0:	00000097          	auipc	ra,0x0
    80006ce4:	9a4080e7          	jalr	-1628(ra) # 80006684 <consputc>
    80006ce8:	07800513          	li	a0,120
    80006cec:	00000097          	auipc	ra,0x0
    80006cf0:	998080e7          	jalr	-1640(ra) # 80006684 <consputc>
    80006cf4:	00002d97          	auipc	s11,0x2
    80006cf8:	9ecd8d93          	addi	s11,s11,-1556 # 800086e0 <digits>
    80006cfc:	03ccd793          	srli	a5,s9,0x3c
    80006d00:	00fd87b3          	add	a5,s11,a5
    80006d04:	0007c503          	lbu	a0,0(a5)
    80006d08:	fffd0d1b          	addiw	s10,s10,-1
    80006d0c:	004c9c93          	slli	s9,s9,0x4
    80006d10:	00000097          	auipc	ra,0x0
    80006d14:	974080e7          	jalr	-1676(ra) # 80006684 <consputc>
    80006d18:	fe0d12e3          	bnez	s10,80006cfc <__printf+0x494>
    80006d1c:	f8dff06f          	j	80006ca8 <__printf+0x440>
    80006d20:	f7843783          	ld	a5,-136(s0)
    80006d24:	0007bc83          	ld	s9,0(a5)
    80006d28:	00878793          	addi	a5,a5,8
    80006d2c:	f6f43c23          	sd	a5,-136(s0)
    80006d30:	000c9a63          	bnez	s9,80006d44 <__printf+0x4dc>
    80006d34:	1080006f          	j	80006e3c <__printf+0x5d4>
    80006d38:	001c8c93          	addi	s9,s9,1
    80006d3c:	00000097          	auipc	ra,0x0
    80006d40:	948080e7          	jalr	-1720(ra) # 80006684 <consputc>
    80006d44:	000cc503          	lbu	a0,0(s9)
    80006d48:	fe0518e3          	bnez	a0,80006d38 <__printf+0x4d0>
    80006d4c:	f5dff06f          	j	80006ca8 <__printf+0x440>
    80006d50:	02500513          	li	a0,37
    80006d54:	00000097          	auipc	ra,0x0
    80006d58:	930080e7          	jalr	-1744(ra) # 80006684 <consputc>
    80006d5c:	000c8513          	mv	a0,s9
    80006d60:	00000097          	auipc	ra,0x0
    80006d64:	924080e7          	jalr	-1756(ra) # 80006684 <consputc>
    80006d68:	f41ff06f          	j	80006ca8 <__printf+0x440>
    80006d6c:	02500513          	li	a0,37
    80006d70:	00000097          	auipc	ra,0x0
    80006d74:	914080e7          	jalr	-1772(ra) # 80006684 <consputc>
    80006d78:	f31ff06f          	j	80006ca8 <__printf+0x440>
    80006d7c:	00030513          	mv	a0,t1
    80006d80:	00000097          	auipc	ra,0x0
    80006d84:	7bc080e7          	jalr	1980(ra) # 8000753c <acquire>
    80006d88:	b4dff06f          	j	800068d4 <__printf+0x6c>
    80006d8c:	40c0053b          	negw	a0,a2
    80006d90:	00a00713          	li	a4,10
    80006d94:	02e576bb          	remuw	a3,a0,a4
    80006d98:	00002d97          	auipc	s11,0x2
    80006d9c:	948d8d93          	addi	s11,s11,-1720 # 800086e0 <digits>
    80006da0:	ff700593          	li	a1,-9
    80006da4:	02069693          	slli	a3,a3,0x20
    80006da8:	0206d693          	srli	a3,a3,0x20
    80006dac:	00dd86b3          	add	a3,s11,a3
    80006db0:	0006c683          	lbu	a3,0(a3)
    80006db4:	02e557bb          	divuw	a5,a0,a4
    80006db8:	f8d40023          	sb	a3,-128(s0)
    80006dbc:	10b65e63          	bge	a2,a1,80006ed8 <__printf+0x670>
    80006dc0:	06300593          	li	a1,99
    80006dc4:	02e7f6bb          	remuw	a3,a5,a4
    80006dc8:	02069693          	slli	a3,a3,0x20
    80006dcc:	0206d693          	srli	a3,a3,0x20
    80006dd0:	00dd86b3          	add	a3,s11,a3
    80006dd4:	0006c683          	lbu	a3,0(a3)
    80006dd8:	02e7d73b          	divuw	a4,a5,a4
    80006ddc:	00200793          	li	a5,2
    80006de0:	f8d400a3          	sb	a3,-127(s0)
    80006de4:	bca5ece3          	bltu	a1,a0,800069bc <__printf+0x154>
    80006de8:	ce5ff06f          	j	80006acc <__printf+0x264>
    80006dec:	40e007bb          	negw	a5,a4
    80006df0:	00002d97          	auipc	s11,0x2
    80006df4:	8f0d8d93          	addi	s11,s11,-1808 # 800086e0 <digits>
    80006df8:	00f7f693          	andi	a3,a5,15
    80006dfc:	00dd86b3          	add	a3,s11,a3
    80006e00:	0006c583          	lbu	a1,0(a3)
    80006e04:	ff100613          	li	a2,-15
    80006e08:	0047d69b          	srliw	a3,a5,0x4
    80006e0c:	f8b40023          	sb	a1,-128(s0)
    80006e10:	0047d59b          	srliw	a1,a5,0x4
    80006e14:	0ac75e63          	bge	a4,a2,80006ed0 <__printf+0x668>
    80006e18:	00f6f693          	andi	a3,a3,15
    80006e1c:	00dd86b3          	add	a3,s11,a3
    80006e20:	0006c603          	lbu	a2,0(a3)
    80006e24:	00f00693          	li	a3,15
    80006e28:	0087d79b          	srliw	a5,a5,0x8
    80006e2c:	f8c400a3          	sb	a2,-127(s0)
    80006e30:	d8b6e4e3          	bltu	a3,a1,80006bb8 <__printf+0x350>
    80006e34:	00200793          	li	a5,2
    80006e38:	e2dff06f          	j	80006c64 <__printf+0x3fc>
    80006e3c:	00002c97          	auipc	s9,0x2
    80006e40:	884c8c93          	addi	s9,s9,-1916 # 800086c0 <_ZZ13printIntegerAlE6digits+0x588>
    80006e44:	02800513          	li	a0,40
    80006e48:	ef1ff06f          	j	80006d38 <__printf+0x4d0>
    80006e4c:	00700793          	li	a5,7
    80006e50:	00600c93          	li	s9,6
    80006e54:	e0dff06f          	j	80006c60 <__printf+0x3f8>
    80006e58:	00700793          	li	a5,7
    80006e5c:	00600c93          	li	s9,6
    80006e60:	c69ff06f          	j	80006ac8 <__printf+0x260>
    80006e64:	00300793          	li	a5,3
    80006e68:	00200c93          	li	s9,2
    80006e6c:	c5dff06f          	j	80006ac8 <__printf+0x260>
    80006e70:	00300793          	li	a5,3
    80006e74:	00200c93          	li	s9,2
    80006e78:	de9ff06f          	j	80006c60 <__printf+0x3f8>
    80006e7c:	00400793          	li	a5,4
    80006e80:	00300c93          	li	s9,3
    80006e84:	dddff06f          	j	80006c60 <__printf+0x3f8>
    80006e88:	00400793          	li	a5,4
    80006e8c:	00300c93          	li	s9,3
    80006e90:	c39ff06f          	j	80006ac8 <__printf+0x260>
    80006e94:	00500793          	li	a5,5
    80006e98:	00400c93          	li	s9,4
    80006e9c:	c2dff06f          	j	80006ac8 <__printf+0x260>
    80006ea0:	00500793          	li	a5,5
    80006ea4:	00400c93          	li	s9,4
    80006ea8:	db9ff06f          	j	80006c60 <__printf+0x3f8>
    80006eac:	00600793          	li	a5,6
    80006eb0:	00500c93          	li	s9,5
    80006eb4:	dadff06f          	j	80006c60 <__printf+0x3f8>
    80006eb8:	00600793          	li	a5,6
    80006ebc:	00500c93          	li	s9,5
    80006ec0:	c09ff06f          	j	80006ac8 <__printf+0x260>
    80006ec4:	00800793          	li	a5,8
    80006ec8:	00700c93          	li	s9,7
    80006ecc:	bfdff06f          	j	80006ac8 <__printf+0x260>
    80006ed0:	00100793          	li	a5,1
    80006ed4:	d91ff06f          	j	80006c64 <__printf+0x3fc>
    80006ed8:	00100793          	li	a5,1
    80006edc:	bf1ff06f          	j	80006acc <__printf+0x264>
    80006ee0:	00900793          	li	a5,9
    80006ee4:	00800c93          	li	s9,8
    80006ee8:	be1ff06f          	j	80006ac8 <__printf+0x260>
    80006eec:	00001517          	auipc	a0,0x1
    80006ef0:	7dc50513          	addi	a0,a0,2012 # 800086c8 <_ZZ13printIntegerAlE6digits+0x590>
    80006ef4:	00000097          	auipc	ra,0x0
    80006ef8:	918080e7          	jalr	-1768(ra) # 8000680c <panic>

0000000080006efc <printfinit>:
    80006efc:	fe010113          	addi	sp,sp,-32
    80006f00:	00813823          	sd	s0,16(sp)
    80006f04:	00913423          	sd	s1,8(sp)
    80006f08:	00113c23          	sd	ra,24(sp)
    80006f0c:	02010413          	addi	s0,sp,32
    80006f10:	00004497          	auipc	s1,0x4
    80006f14:	6a048493          	addi	s1,s1,1696 # 8000b5b0 <pr>
    80006f18:	00048513          	mv	a0,s1
    80006f1c:	00001597          	auipc	a1,0x1
    80006f20:	7bc58593          	addi	a1,a1,1980 # 800086d8 <_ZZ13printIntegerAlE6digits+0x5a0>
    80006f24:	00000097          	auipc	ra,0x0
    80006f28:	5f4080e7          	jalr	1524(ra) # 80007518 <initlock>
    80006f2c:	01813083          	ld	ra,24(sp)
    80006f30:	01013403          	ld	s0,16(sp)
    80006f34:	0004ac23          	sw	zero,24(s1)
    80006f38:	00813483          	ld	s1,8(sp)
    80006f3c:	02010113          	addi	sp,sp,32
    80006f40:	00008067          	ret

0000000080006f44 <uartinit>:
    80006f44:	ff010113          	addi	sp,sp,-16
    80006f48:	00813423          	sd	s0,8(sp)
    80006f4c:	01010413          	addi	s0,sp,16
    80006f50:	100007b7          	lui	a5,0x10000
    80006f54:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80006f58:	f8000713          	li	a4,-128
    80006f5c:	00e781a3          	sb	a4,3(a5)
    80006f60:	00300713          	li	a4,3
    80006f64:	00e78023          	sb	a4,0(a5)
    80006f68:	000780a3          	sb	zero,1(a5)
    80006f6c:	00e781a3          	sb	a4,3(a5)
    80006f70:	00700693          	li	a3,7
    80006f74:	00d78123          	sb	a3,2(a5)
    80006f78:	00e780a3          	sb	a4,1(a5)
    80006f7c:	00813403          	ld	s0,8(sp)
    80006f80:	01010113          	addi	sp,sp,16
    80006f84:	00008067          	ret

0000000080006f88 <uartputc>:
    80006f88:	00003797          	auipc	a5,0x3
    80006f8c:	3607a783          	lw	a5,864(a5) # 8000a2e8 <panicked>
    80006f90:	00078463          	beqz	a5,80006f98 <uartputc+0x10>
    80006f94:	0000006f          	j	80006f94 <uartputc+0xc>
    80006f98:	fd010113          	addi	sp,sp,-48
    80006f9c:	02813023          	sd	s0,32(sp)
    80006fa0:	00913c23          	sd	s1,24(sp)
    80006fa4:	01213823          	sd	s2,16(sp)
    80006fa8:	01313423          	sd	s3,8(sp)
    80006fac:	02113423          	sd	ra,40(sp)
    80006fb0:	03010413          	addi	s0,sp,48
    80006fb4:	00003917          	auipc	s2,0x3
    80006fb8:	33c90913          	addi	s2,s2,828 # 8000a2f0 <uart_tx_r>
    80006fbc:	00093783          	ld	a5,0(s2)
    80006fc0:	00003497          	auipc	s1,0x3
    80006fc4:	33848493          	addi	s1,s1,824 # 8000a2f8 <uart_tx_w>
    80006fc8:	0004b703          	ld	a4,0(s1)
    80006fcc:	02078693          	addi	a3,a5,32
    80006fd0:	00050993          	mv	s3,a0
    80006fd4:	02e69c63          	bne	a3,a4,8000700c <uartputc+0x84>
    80006fd8:	00001097          	auipc	ra,0x1
    80006fdc:	834080e7          	jalr	-1996(ra) # 8000780c <push_on>
    80006fe0:	00093783          	ld	a5,0(s2)
    80006fe4:	0004b703          	ld	a4,0(s1)
    80006fe8:	02078793          	addi	a5,a5,32
    80006fec:	00e79463          	bne	a5,a4,80006ff4 <uartputc+0x6c>
    80006ff0:	0000006f          	j	80006ff0 <uartputc+0x68>
    80006ff4:	00001097          	auipc	ra,0x1
    80006ff8:	88c080e7          	jalr	-1908(ra) # 80007880 <pop_on>
    80006ffc:	00093783          	ld	a5,0(s2)
    80007000:	0004b703          	ld	a4,0(s1)
    80007004:	02078693          	addi	a3,a5,32
    80007008:	fce688e3          	beq	a3,a4,80006fd8 <uartputc+0x50>
    8000700c:	01f77693          	andi	a3,a4,31
    80007010:	00004597          	auipc	a1,0x4
    80007014:	5c058593          	addi	a1,a1,1472 # 8000b5d0 <uart_tx_buf>
    80007018:	00d586b3          	add	a3,a1,a3
    8000701c:	00170713          	addi	a4,a4,1
    80007020:	01368023          	sb	s3,0(a3)
    80007024:	00e4b023          	sd	a4,0(s1)
    80007028:	10000637          	lui	a2,0x10000
    8000702c:	02f71063          	bne	a4,a5,8000704c <uartputc+0xc4>
    80007030:	0340006f          	j	80007064 <uartputc+0xdc>
    80007034:	00074703          	lbu	a4,0(a4)
    80007038:	00f93023          	sd	a5,0(s2)
    8000703c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007040:	00093783          	ld	a5,0(s2)
    80007044:	0004b703          	ld	a4,0(s1)
    80007048:	00f70e63          	beq	a4,a5,80007064 <uartputc+0xdc>
    8000704c:	00564683          	lbu	a3,5(a2)
    80007050:	01f7f713          	andi	a4,a5,31
    80007054:	00e58733          	add	a4,a1,a4
    80007058:	0206f693          	andi	a3,a3,32
    8000705c:	00178793          	addi	a5,a5,1
    80007060:	fc069ae3          	bnez	a3,80007034 <uartputc+0xac>
    80007064:	02813083          	ld	ra,40(sp)
    80007068:	02013403          	ld	s0,32(sp)
    8000706c:	01813483          	ld	s1,24(sp)
    80007070:	01013903          	ld	s2,16(sp)
    80007074:	00813983          	ld	s3,8(sp)
    80007078:	03010113          	addi	sp,sp,48
    8000707c:	00008067          	ret

0000000080007080 <uartputc_sync>:
    80007080:	ff010113          	addi	sp,sp,-16
    80007084:	00813423          	sd	s0,8(sp)
    80007088:	01010413          	addi	s0,sp,16
    8000708c:	00003717          	auipc	a4,0x3
    80007090:	25c72703          	lw	a4,604(a4) # 8000a2e8 <panicked>
    80007094:	02071663          	bnez	a4,800070c0 <uartputc_sync+0x40>
    80007098:	00050793          	mv	a5,a0
    8000709c:	100006b7          	lui	a3,0x10000
    800070a0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800070a4:	02077713          	andi	a4,a4,32
    800070a8:	fe070ce3          	beqz	a4,800070a0 <uartputc_sync+0x20>
    800070ac:	0ff7f793          	andi	a5,a5,255
    800070b0:	00f68023          	sb	a5,0(a3)
    800070b4:	00813403          	ld	s0,8(sp)
    800070b8:	01010113          	addi	sp,sp,16
    800070bc:	00008067          	ret
    800070c0:	0000006f          	j	800070c0 <uartputc_sync+0x40>

00000000800070c4 <uartstart>:
    800070c4:	ff010113          	addi	sp,sp,-16
    800070c8:	00813423          	sd	s0,8(sp)
    800070cc:	01010413          	addi	s0,sp,16
    800070d0:	00003617          	auipc	a2,0x3
    800070d4:	22060613          	addi	a2,a2,544 # 8000a2f0 <uart_tx_r>
    800070d8:	00003517          	auipc	a0,0x3
    800070dc:	22050513          	addi	a0,a0,544 # 8000a2f8 <uart_tx_w>
    800070e0:	00063783          	ld	a5,0(a2)
    800070e4:	00053703          	ld	a4,0(a0)
    800070e8:	04f70263          	beq	a4,a5,8000712c <uartstart+0x68>
    800070ec:	100005b7          	lui	a1,0x10000
    800070f0:	00004817          	auipc	a6,0x4
    800070f4:	4e080813          	addi	a6,a6,1248 # 8000b5d0 <uart_tx_buf>
    800070f8:	01c0006f          	j	80007114 <uartstart+0x50>
    800070fc:	0006c703          	lbu	a4,0(a3)
    80007100:	00f63023          	sd	a5,0(a2)
    80007104:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007108:	00063783          	ld	a5,0(a2)
    8000710c:	00053703          	ld	a4,0(a0)
    80007110:	00f70e63          	beq	a4,a5,8000712c <uartstart+0x68>
    80007114:	01f7f713          	andi	a4,a5,31
    80007118:	00e806b3          	add	a3,a6,a4
    8000711c:	0055c703          	lbu	a4,5(a1)
    80007120:	00178793          	addi	a5,a5,1
    80007124:	02077713          	andi	a4,a4,32
    80007128:	fc071ae3          	bnez	a4,800070fc <uartstart+0x38>
    8000712c:	00813403          	ld	s0,8(sp)
    80007130:	01010113          	addi	sp,sp,16
    80007134:	00008067          	ret

0000000080007138 <uartgetc>:
    80007138:	ff010113          	addi	sp,sp,-16
    8000713c:	00813423          	sd	s0,8(sp)
    80007140:	01010413          	addi	s0,sp,16
    80007144:	10000737          	lui	a4,0x10000
    80007148:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000714c:	0017f793          	andi	a5,a5,1
    80007150:	00078c63          	beqz	a5,80007168 <uartgetc+0x30>
    80007154:	00074503          	lbu	a0,0(a4)
    80007158:	0ff57513          	andi	a0,a0,255
    8000715c:	00813403          	ld	s0,8(sp)
    80007160:	01010113          	addi	sp,sp,16
    80007164:	00008067          	ret
    80007168:	fff00513          	li	a0,-1
    8000716c:	ff1ff06f          	j	8000715c <uartgetc+0x24>

0000000080007170 <uartintr>:
    80007170:	100007b7          	lui	a5,0x10000
    80007174:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007178:	0017f793          	andi	a5,a5,1
    8000717c:	0a078463          	beqz	a5,80007224 <uartintr+0xb4>
    80007180:	fe010113          	addi	sp,sp,-32
    80007184:	00813823          	sd	s0,16(sp)
    80007188:	00913423          	sd	s1,8(sp)
    8000718c:	00113c23          	sd	ra,24(sp)
    80007190:	02010413          	addi	s0,sp,32
    80007194:	100004b7          	lui	s1,0x10000
    80007198:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000719c:	0ff57513          	andi	a0,a0,255
    800071a0:	fffff097          	auipc	ra,0xfffff
    800071a4:	534080e7          	jalr	1332(ra) # 800066d4 <consoleintr>
    800071a8:	0054c783          	lbu	a5,5(s1)
    800071ac:	0017f793          	andi	a5,a5,1
    800071b0:	fe0794e3          	bnez	a5,80007198 <uartintr+0x28>
    800071b4:	00003617          	auipc	a2,0x3
    800071b8:	13c60613          	addi	a2,a2,316 # 8000a2f0 <uart_tx_r>
    800071bc:	00003517          	auipc	a0,0x3
    800071c0:	13c50513          	addi	a0,a0,316 # 8000a2f8 <uart_tx_w>
    800071c4:	00063783          	ld	a5,0(a2)
    800071c8:	00053703          	ld	a4,0(a0)
    800071cc:	04f70263          	beq	a4,a5,80007210 <uartintr+0xa0>
    800071d0:	100005b7          	lui	a1,0x10000
    800071d4:	00004817          	auipc	a6,0x4
    800071d8:	3fc80813          	addi	a6,a6,1020 # 8000b5d0 <uart_tx_buf>
    800071dc:	01c0006f          	j	800071f8 <uartintr+0x88>
    800071e0:	0006c703          	lbu	a4,0(a3)
    800071e4:	00f63023          	sd	a5,0(a2)
    800071e8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800071ec:	00063783          	ld	a5,0(a2)
    800071f0:	00053703          	ld	a4,0(a0)
    800071f4:	00f70e63          	beq	a4,a5,80007210 <uartintr+0xa0>
    800071f8:	01f7f713          	andi	a4,a5,31
    800071fc:	00e806b3          	add	a3,a6,a4
    80007200:	0055c703          	lbu	a4,5(a1)
    80007204:	00178793          	addi	a5,a5,1
    80007208:	02077713          	andi	a4,a4,32
    8000720c:	fc071ae3          	bnez	a4,800071e0 <uartintr+0x70>
    80007210:	01813083          	ld	ra,24(sp)
    80007214:	01013403          	ld	s0,16(sp)
    80007218:	00813483          	ld	s1,8(sp)
    8000721c:	02010113          	addi	sp,sp,32
    80007220:	00008067          	ret
    80007224:	00003617          	auipc	a2,0x3
    80007228:	0cc60613          	addi	a2,a2,204 # 8000a2f0 <uart_tx_r>
    8000722c:	00003517          	auipc	a0,0x3
    80007230:	0cc50513          	addi	a0,a0,204 # 8000a2f8 <uart_tx_w>
    80007234:	00063783          	ld	a5,0(a2)
    80007238:	00053703          	ld	a4,0(a0)
    8000723c:	04f70263          	beq	a4,a5,80007280 <uartintr+0x110>
    80007240:	100005b7          	lui	a1,0x10000
    80007244:	00004817          	auipc	a6,0x4
    80007248:	38c80813          	addi	a6,a6,908 # 8000b5d0 <uart_tx_buf>
    8000724c:	01c0006f          	j	80007268 <uartintr+0xf8>
    80007250:	0006c703          	lbu	a4,0(a3)
    80007254:	00f63023          	sd	a5,0(a2)
    80007258:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000725c:	00063783          	ld	a5,0(a2)
    80007260:	00053703          	ld	a4,0(a0)
    80007264:	02f70063          	beq	a4,a5,80007284 <uartintr+0x114>
    80007268:	01f7f713          	andi	a4,a5,31
    8000726c:	00e806b3          	add	a3,a6,a4
    80007270:	0055c703          	lbu	a4,5(a1)
    80007274:	00178793          	addi	a5,a5,1
    80007278:	02077713          	andi	a4,a4,32
    8000727c:	fc071ae3          	bnez	a4,80007250 <uartintr+0xe0>
    80007280:	00008067          	ret
    80007284:	00008067          	ret

0000000080007288 <kinit>:
    80007288:	fc010113          	addi	sp,sp,-64
    8000728c:	02913423          	sd	s1,40(sp)
    80007290:	fffff7b7          	lui	a5,0xfffff
    80007294:	00005497          	auipc	s1,0x5
    80007298:	35b48493          	addi	s1,s1,859 # 8000c5ef <end+0xfff>
    8000729c:	02813823          	sd	s0,48(sp)
    800072a0:	01313c23          	sd	s3,24(sp)
    800072a4:	00f4f4b3          	and	s1,s1,a5
    800072a8:	02113c23          	sd	ra,56(sp)
    800072ac:	03213023          	sd	s2,32(sp)
    800072b0:	01413823          	sd	s4,16(sp)
    800072b4:	01513423          	sd	s5,8(sp)
    800072b8:	04010413          	addi	s0,sp,64
    800072bc:	000017b7          	lui	a5,0x1
    800072c0:	01100993          	li	s3,17
    800072c4:	00f487b3          	add	a5,s1,a5
    800072c8:	01b99993          	slli	s3,s3,0x1b
    800072cc:	06f9e063          	bltu	s3,a5,8000732c <kinit+0xa4>
    800072d0:	00004a97          	auipc	s5,0x4
    800072d4:	320a8a93          	addi	s5,s5,800 # 8000b5f0 <end>
    800072d8:	0754ec63          	bltu	s1,s5,80007350 <kinit+0xc8>
    800072dc:	0734fa63          	bgeu	s1,s3,80007350 <kinit+0xc8>
    800072e0:	00088a37          	lui	s4,0x88
    800072e4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800072e8:	00003917          	auipc	s2,0x3
    800072ec:	01890913          	addi	s2,s2,24 # 8000a300 <kmem>
    800072f0:	00ca1a13          	slli	s4,s4,0xc
    800072f4:	0140006f          	j	80007308 <kinit+0x80>
    800072f8:	000017b7          	lui	a5,0x1
    800072fc:	00f484b3          	add	s1,s1,a5
    80007300:	0554e863          	bltu	s1,s5,80007350 <kinit+0xc8>
    80007304:	0534f663          	bgeu	s1,s3,80007350 <kinit+0xc8>
    80007308:	00001637          	lui	a2,0x1
    8000730c:	00100593          	li	a1,1
    80007310:	00048513          	mv	a0,s1
    80007314:	00000097          	auipc	ra,0x0
    80007318:	5e4080e7          	jalr	1508(ra) # 800078f8 <__memset>
    8000731c:	00093783          	ld	a5,0(s2)
    80007320:	00f4b023          	sd	a5,0(s1)
    80007324:	00993023          	sd	s1,0(s2)
    80007328:	fd4498e3          	bne	s1,s4,800072f8 <kinit+0x70>
    8000732c:	03813083          	ld	ra,56(sp)
    80007330:	03013403          	ld	s0,48(sp)
    80007334:	02813483          	ld	s1,40(sp)
    80007338:	02013903          	ld	s2,32(sp)
    8000733c:	01813983          	ld	s3,24(sp)
    80007340:	01013a03          	ld	s4,16(sp)
    80007344:	00813a83          	ld	s5,8(sp)
    80007348:	04010113          	addi	sp,sp,64
    8000734c:	00008067          	ret
    80007350:	00001517          	auipc	a0,0x1
    80007354:	3a850513          	addi	a0,a0,936 # 800086f8 <digits+0x18>
    80007358:	fffff097          	auipc	ra,0xfffff
    8000735c:	4b4080e7          	jalr	1204(ra) # 8000680c <panic>

0000000080007360 <freerange>:
    80007360:	fc010113          	addi	sp,sp,-64
    80007364:	000017b7          	lui	a5,0x1
    80007368:	02913423          	sd	s1,40(sp)
    8000736c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007370:	009504b3          	add	s1,a0,s1
    80007374:	fffff537          	lui	a0,0xfffff
    80007378:	02813823          	sd	s0,48(sp)
    8000737c:	02113c23          	sd	ra,56(sp)
    80007380:	03213023          	sd	s2,32(sp)
    80007384:	01313c23          	sd	s3,24(sp)
    80007388:	01413823          	sd	s4,16(sp)
    8000738c:	01513423          	sd	s5,8(sp)
    80007390:	01613023          	sd	s6,0(sp)
    80007394:	04010413          	addi	s0,sp,64
    80007398:	00a4f4b3          	and	s1,s1,a0
    8000739c:	00f487b3          	add	a5,s1,a5
    800073a0:	06f5e463          	bltu	a1,a5,80007408 <freerange+0xa8>
    800073a4:	00004a97          	auipc	s5,0x4
    800073a8:	24ca8a93          	addi	s5,s5,588 # 8000b5f0 <end>
    800073ac:	0954e263          	bltu	s1,s5,80007430 <freerange+0xd0>
    800073b0:	01100993          	li	s3,17
    800073b4:	01b99993          	slli	s3,s3,0x1b
    800073b8:	0734fc63          	bgeu	s1,s3,80007430 <freerange+0xd0>
    800073bc:	00058a13          	mv	s4,a1
    800073c0:	00003917          	auipc	s2,0x3
    800073c4:	f4090913          	addi	s2,s2,-192 # 8000a300 <kmem>
    800073c8:	00002b37          	lui	s6,0x2
    800073cc:	0140006f          	j	800073e0 <freerange+0x80>
    800073d0:	000017b7          	lui	a5,0x1
    800073d4:	00f484b3          	add	s1,s1,a5
    800073d8:	0554ec63          	bltu	s1,s5,80007430 <freerange+0xd0>
    800073dc:	0534fa63          	bgeu	s1,s3,80007430 <freerange+0xd0>
    800073e0:	00001637          	lui	a2,0x1
    800073e4:	00100593          	li	a1,1
    800073e8:	00048513          	mv	a0,s1
    800073ec:	00000097          	auipc	ra,0x0
    800073f0:	50c080e7          	jalr	1292(ra) # 800078f8 <__memset>
    800073f4:	00093703          	ld	a4,0(s2)
    800073f8:	016487b3          	add	a5,s1,s6
    800073fc:	00e4b023          	sd	a4,0(s1)
    80007400:	00993023          	sd	s1,0(s2)
    80007404:	fcfa76e3          	bgeu	s4,a5,800073d0 <freerange+0x70>
    80007408:	03813083          	ld	ra,56(sp)
    8000740c:	03013403          	ld	s0,48(sp)
    80007410:	02813483          	ld	s1,40(sp)
    80007414:	02013903          	ld	s2,32(sp)
    80007418:	01813983          	ld	s3,24(sp)
    8000741c:	01013a03          	ld	s4,16(sp)
    80007420:	00813a83          	ld	s5,8(sp)
    80007424:	00013b03          	ld	s6,0(sp)
    80007428:	04010113          	addi	sp,sp,64
    8000742c:	00008067          	ret
    80007430:	00001517          	auipc	a0,0x1
    80007434:	2c850513          	addi	a0,a0,712 # 800086f8 <digits+0x18>
    80007438:	fffff097          	auipc	ra,0xfffff
    8000743c:	3d4080e7          	jalr	980(ra) # 8000680c <panic>

0000000080007440 <kfree>:
    80007440:	fe010113          	addi	sp,sp,-32
    80007444:	00813823          	sd	s0,16(sp)
    80007448:	00113c23          	sd	ra,24(sp)
    8000744c:	00913423          	sd	s1,8(sp)
    80007450:	02010413          	addi	s0,sp,32
    80007454:	03451793          	slli	a5,a0,0x34
    80007458:	04079c63          	bnez	a5,800074b0 <kfree+0x70>
    8000745c:	00004797          	auipc	a5,0x4
    80007460:	19478793          	addi	a5,a5,404 # 8000b5f0 <end>
    80007464:	00050493          	mv	s1,a0
    80007468:	04f56463          	bltu	a0,a5,800074b0 <kfree+0x70>
    8000746c:	01100793          	li	a5,17
    80007470:	01b79793          	slli	a5,a5,0x1b
    80007474:	02f57e63          	bgeu	a0,a5,800074b0 <kfree+0x70>
    80007478:	00001637          	lui	a2,0x1
    8000747c:	00100593          	li	a1,1
    80007480:	00000097          	auipc	ra,0x0
    80007484:	478080e7          	jalr	1144(ra) # 800078f8 <__memset>
    80007488:	00003797          	auipc	a5,0x3
    8000748c:	e7878793          	addi	a5,a5,-392 # 8000a300 <kmem>
    80007490:	0007b703          	ld	a4,0(a5)
    80007494:	01813083          	ld	ra,24(sp)
    80007498:	01013403          	ld	s0,16(sp)
    8000749c:	00e4b023          	sd	a4,0(s1)
    800074a0:	0097b023          	sd	s1,0(a5)
    800074a4:	00813483          	ld	s1,8(sp)
    800074a8:	02010113          	addi	sp,sp,32
    800074ac:	00008067          	ret
    800074b0:	00001517          	auipc	a0,0x1
    800074b4:	24850513          	addi	a0,a0,584 # 800086f8 <digits+0x18>
    800074b8:	fffff097          	auipc	ra,0xfffff
    800074bc:	354080e7          	jalr	852(ra) # 8000680c <panic>

00000000800074c0 <kalloc>:
    800074c0:	fe010113          	addi	sp,sp,-32
    800074c4:	00813823          	sd	s0,16(sp)
    800074c8:	00913423          	sd	s1,8(sp)
    800074cc:	00113c23          	sd	ra,24(sp)
    800074d0:	02010413          	addi	s0,sp,32
    800074d4:	00003797          	auipc	a5,0x3
    800074d8:	e2c78793          	addi	a5,a5,-468 # 8000a300 <kmem>
    800074dc:	0007b483          	ld	s1,0(a5)
    800074e0:	02048063          	beqz	s1,80007500 <kalloc+0x40>
    800074e4:	0004b703          	ld	a4,0(s1)
    800074e8:	00001637          	lui	a2,0x1
    800074ec:	00500593          	li	a1,5
    800074f0:	00048513          	mv	a0,s1
    800074f4:	00e7b023          	sd	a4,0(a5)
    800074f8:	00000097          	auipc	ra,0x0
    800074fc:	400080e7          	jalr	1024(ra) # 800078f8 <__memset>
    80007500:	01813083          	ld	ra,24(sp)
    80007504:	01013403          	ld	s0,16(sp)
    80007508:	00048513          	mv	a0,s1
    8000750c:	00813483          	ld	s1,8(sp)
    80007510:	02010113          	addi	sp,sp,32
    80007514:	00008067          	ret

0000000080007518 <initlock>:
    80007518:	ff010113          	addi	sp,sp,-16
    8000751c:	00813423          	sd	s0,8(sp)
    80007520:	01010413          	addi	s0,sp,16
    80007524:	00813403          	ld	s0,8(sp)
    80007528:	00b53423          	sd	a1,8(a0)
    8000752c:	00052023          	sw	zero,0(a0)
    80007530:	00053823          	sd	zero,16(a0)
    80007534:	01010113          	addi	sp,sp,16
    80007538:	00008067          	ret

000000008000753c <acquire>:
    8000753c:	fe010113          	addi	sp,sp,-32
    80007540:	00813823          	sd	s0,16(sp)
    80007544:	00913423          	sd	s1,8(sp)
    80007548:	00113c23          	sd	ra,24(sp)
    8000754c:	01213023          	sd	s2,0(sp)
    80007550:	02010413          	addi	s0,sp,32
    80007554:	00050493          	mv	s1,a0
    80007558:	10002973          	csrr	s2,sstatus
    8000755c:	100027f3          	csrr	a5,sstatus
    80007560:	ffd7f793          	andi	a5,a5,-3
    80007564:	10079073          	csrw	sstatus,a5
    80007568:	fffff097          	auipc	ra,0xfffff
    8000756c:	8e8080e7          	jalr	-1816(ra) # 80005e50 <mycpu>
    80007570:	07852783          	lw	a5,120(a0)
    80007574:	06078e63          	beqz	a5,800075f0 <acquire+0xb4>
    80007578:	fffff097          	auipc	ra,0xfffff
    8000757c:	8d8080e7          	jalr	-1832(ra) # 80005e50 <mycpu>
    80007580:	07852783          	lw	a5,120(a0)
    80007584:	0004a703          	lw	a4,0(s1)
    80007588:	0017879b          	addiw	a5,a5,1
    8000758c:	06f52c23          	sw	a5,120(a0)
    80007590:	04071063          	bnez	a4,800075d0 <acquire+0x94>
    80007594:	00100713          	li	a4,1
    80007598:	00070793          	mv	a5,a4
    8000759c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800075a0:	0007879b          	sext.w	a5,a5
    800075a4:	fe079ae3          	bnez	a5,80007598 <acquire+0x5c>
    800075a8:	0ff0000f          	fence
    800075ac:	fffff097          	auipc	ra,0xfffff
    800075b0:	8a4080e7          	jalr	-1884(ra) # 80005e50 <mycpu>
    800075b4:	01813083          	ld	ra,24(sp)
    800075b8:	01013403          	ld	s0,16(sp)
    800075bc:	00a4b823          	sd	a0,16(s1)
    800075c0:	00013903          	ld	s2,0(sp)
    800075c4:	00813483          	ld	s1,8(sp)
    800075c8:	02010113          	addi	sp,sp,32
    800075cc:	00008067          	ret
    800075d0:	0104b903          	ld	s2,16(s1)
    800075d4:	fffff097          	auipc	ra,0xfffff
    800075d8:	87c080e7          	jalr	-1924(ra) # 80005e50 <mycpu>
    800075dc:	faa91ce3          	bne	s2,a0,80007594 <acquire+0x58>
    800075e0:	00001517          	auipc	a0,0x1
    800075e4:	12050513          	addi	a0,a0,288 # 80008700 <digits+0x20>
    800075e8:	fffff097          	auipc	ra,0xfffff
    800075ec:	224080e7          	jalr	548(ra) # 8000680c <panic>
    800075f0:	00195913          	srli	s2,s2,0x1
    800075f4:	fffff097          	auipc	ra,0xfffff
    800075f8:	85c080e7          	jalr	-1956(ra) # 80005e50 <mycpu>
    800075fc:	00197913          	andi	s2,s2,1
    80007600:	07252e23          	sw	s2,124(a0)
    80007604:	f75ff06f          	j	80007578 <acquire+0x3c>

0000000080007608 <release>:
    80007608:	fe010113          	addi	sp,sp,-32
    8000760c:	00813823          	sd	s0,16(sp)
    80007610:	00113c23          	sd	ra,24(sp)
    80007614:	00913423          	sd	s1,8(sp)
    80007618:	01213023          	sd	s2,0(sp)
    8000761c:	02010413          	addi	s0,sp,32
    80007620:	00052783          	lw	a5,0(a0)
    80007624:	00079a63          	bnez	a5,80007638 <release+0x30>
    80007628:	00001517          	auipc	a0,0x1
    8000762c:	0e050513          	addi	a0,a0,224 # 80008708 <digits+0x28>
    80007630:	fffff097          	auipc	ra,0xfffff
    80007634:	1dc080e7          	jalr	476(ra) # 8000680c <panic>
    80007638:	01053903          	ld	s2,16(a0)
    8000763c:	00050493          	mv	s1,a0
    80007640:	fffff097          	auipc	ra,0xfffff
    80007644:	810080e7          	jalr	-2032(ra) # 80005e50 <mycpu>
    80007648:	fea910e3          	bne	s2,a0,80007628 <release+0x20>
    8000764c:	0004b823          	sd	zero,16(s1)
    80007650:	0ff0000f          	fence
    80007654:	0f50000f          	fence	iorw,ow
    80007658:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000765c:	ffffe097          	auipc	ra,0xffffe
    80007660:	7f4080e7          	jalr	2036(ra) # 80005e50 <mycpu>
    80007664:	100027f3          	csrr	a5,sstatus
    80007668:	0027f793          	andi	a5,a5,2
    8000766c:	04079a63          	bnez	a5,800076c0 <release+0xb8>
    80007670:	07852783          	lw	a5,120(a0)
    80007674:	02f05e63          	blez	a5,800076b0 <release+0xa8>
    80007678:	fff7871b          	addiw	a4,a5,-1
    8000767c:	06e52c23          	sw	a4,120(a0)
    80007680:	00071c63          	bnez	a4,80007698 <release+0x90>
    80007684:	07c52783          	lw	a5,124(a0)
    80007688:	00078863          	beqz	a5,80007698 <release+0x90>
    8000768c:	100027f3          	csrr	a5,sstatus
    80007690:	0027e793          	ori	a5,a5,2
    80007694:	10079073          	csrw	sstatus,a5
    80007698:	01813083          	ld	ra,24(sp)
    8000769c:	01013403          	ld	s0,16(sp)
    800076a0:	00813483          	ld	s1,8(sp)
    800076a4:	00013903          	ld	s2,0(sp)
    800076a8:	02010113          	addi	sp,sp,32
    800076ac:	00008067          	ret
    800076b0:	00001517          	auipc	a0,0x1
    800076b4:	07850513          	addi	a0,a0,120 # 80008728 <digits+0x48>
    800076b8:	fffff097          	auipc	ra,0xfffff
    800076bc:	154080e7          	jalr	340(ra) # 8000680c <panic>
    800076c0:	00001517          	auipc	a0,0x1
    800076c4:	05050513          	addi	a0,a0,80 # 80008710 <digits+0x30>
    800076c8:	fffff097          	auipc	ra,0xfffff
    800076cc:	144080e7          	jalr	324(ra) # 8000680c <panic>

00000000800076d0 <holding>:
    800076d0:	00052783          	lw	a5,0(a0)
    800076d4:	00079663          	bnez	a5,800076e0 <holding+0x10>
    800076d8:	00000513          	li	a0,0
    800076dc:	00008067          	ret
    800076e0:	fe010113          	addi	sp,sp,-32
    800076e4:	00813823          	sd	s0,16(sp)
    800076e8:	00913423          	sd	s1,8(sp)
    800076ec:	00113c23          	sd	ra,24(sp)
    800076f0:	02010413          	addi	s0,sp,32
    800076f4:	01053483          	ld	s1,16(a0)
    800076f8:	ffffe097          	auipc	ra,0xffffe
    800076fc:	758080e7          	jalr	1880(ra) # 80005e50 <mycpu>
    80007700:	01813083          	ld	ra,24(sp)
    80007704:	01013403          	ld	s0,16(sp)
    80007708:	40a48533          	sub	a0,s1,a0
    8000770c:	00153513          	seqz	a0,a0
    80007710:	00813483          	ld	s1,8(sp)
    80007714:	02010113          	addi	sp,sp,32
    80007718:	00008067          	ret

000000008000771c <push_off>:
    8000771c:	fe010113          	addi	sp,sp,-32
    80007720:	00813823          	sd	s0,16(sp)
    80007724:	00113c23          	sd	ra,24(sp)
    80007728:	00913423          	sd	s1,8(sp)
    8000772c:	02010413          	addi	s0,sp,32
    80007730:	100024f3          	csrr	s1,sstatus
    80007734:	100027f3          	csrr	a5,sstatus
    80007738:	ffd7f793          	andi	a5,a5,-3
    8000773c:	10079073          	csrw	sstatus,a5
    80007740:	ffffe097          	auipc	ra,0xffffe
    80007744:	710080e7          	jalr	1808(ra) # 80005e50 <mycpu>
    80007748:	07852783          	lw	a5,120(a0)
    8000774c:	02078663          	beqz	a5,80007778 <push_off+0x5c>
    80007750:	ffffe097          	auipc	ra,0xffffe
    80007754:	700080e7          	jalr	1792(ra) # 80005e50 <mycpu>
    80007758:	07852783          	lw	a5,120(a0)
    8000775c:	01813083          	ld	ra,24(sp)
    80007760:	01013403          	ld	s0,16(sp)
    80007764:	0017879b          	addiw	a5,a5,1
    80007768:	06f52c23          	sw	a5,120(a0)
    8000776c:	00813483          	ld	s1,8(sp)
    80007770:	02010113          	addi	sp,sp,32
    80007774:	00008067          	ret
    80007778:	0014d493          	srli	s1,s1,0x1
    8000777c:	ffffe097          	auipc	ra,0xffffe
    80007780:	6d4080e7          	jalr	1748(ra) # 80005e50 <mycpu>
    80007784:	0014f493          	andi	s1,s1,1
    80007788:	06952e23          	sw	s1,124(a0)
    8000778c:	fc5ff06f          	j	80007750 <push_off+0x34>

0000000080007790 <pop_off>:
    80007790:	ff010113          	addi	sp,sp,-16
    80007794:	00813023          	sd	s0,0(sp)
    80007798:	00113423          	sd	ra,8(sp)
    8000779c:	01010413          	addi	s0,sp,16
    800077a0:	ffffe097          	auipc	ra,0xffffe
    800077a4:	6b0080e7          	jalr	1712(ra) # 80005e50 <mycpu>
    800077a8:	100027f3          	csrr	a5,sstatus
    800077ac:	0027f793          	andi	a5,a5,2
    800077b0:	04079663          	bnez	a5,800077fc <pop_off+0x6c>
    800077b4:	07852783          	lw	a5,120(a0)
    800077b8:	02f05a63          	blez	a5,800077ec <pop_off+0x5c>
    800077bc:	fff7871b          	addiw	a4,a5,-1
    800077c0:	06e52c23          	sw	a4,120(a0)
    800077c4:	00071c63          	bnez	a4,800077dc <pop_off+0x4c>
    800077c8:	07c52783          	lw	a5,124(a0)
    800077cc:	00078863          	beqz	a5,800077dc <pop_off+0x4c>
    800077d0:	100027f3          	csrr	a5,sstatus
    800077d4:	0027e793          	ori	a5,a5,2
    800077d8:	10079073          	csrw	sstatus,a5
    800077dc:	00813083          	ld	ra,8(sp)
    800077e0:	00013403          	ld	s0,0(sp)
    800077e4:	01010113          	addi	sp,sp,16
    800077e8:	00008067          	ret
    800077ec:	00001517          	auipc	a0,0x1
    800077f0:	f3c50513          	addi	a0,a0,-196 # 80008728 <digits+0x48>
    800077f4:	fffff097          	auipc	ra,0xfffff
    800077f8:	018080e7          	jalr	24(ra) # 8000680c <panic>
    800077fc:	00001517          	auipc	a0,0x1
    80007800:	f1450513          	addi	a0,a0,-236 # 80008710 <digits+0x30>
    80007804:	fffff097          	auipc	ra,0xfffff
    80007808:	008080e7          	jalr	8(ra) # 8000680c <panic>

000000008000780c <push_on>:
    8000780c:	fe010113          	addi	sp,sp,-32
    80007810:	00813823          	sd	s0,16(sp)
    80007814:	00113c23          	sd	ra,24(sp)
    80007818:	00913423          	sd	s1,8(sp)
    8000781c:	02010413          	addi	s0,sp,32
    80007820:	100024f3          	csrr	s1,sstatus
    80007824:	100027f3          	csrr	a5,sstatus
    80007828:	0027e793          	ori	a5,a5,2
    8000782c:	10079073          	csrw	sstatus,a5
    80007830:	ffffe097          	auipc	ra,0xffffe
    80007834:	620080e7          	jalr	1568(ra) # 80005e50 <mycpu>
    80007838:	07852783          	lw	a5,120(a0)
    8000783c:	02078663          	beqz	a5,80007868 <push_on+0x5c>
    80007840:	ffffe097          	auipc	ra,0xffffe
    80007844:	610080e7          	jalr	1552(ra) # 80005e50 <mycpu>
    80007848:	07852783          	lw	a5,120(a0)
    8000784c:	01813083          	ld	ra,24(sp)
    80007850:	01013403          	ld	s0,16(sp)
    80007854:	0017879b          	addiw	a5,a5,1
    80007858:	06f52c23          	sw	a5,120(a0)
    8000785c:	00813483          	ld	s1,8(sp)
    80007860:	02010113          	addi	sp,sp,32
    80007864:	00008067          	ret
    80007868:	0014d493          	srli	s1,s1,0x1
    8000786c:	ffffe097          	auipc	ra,0xffffe
    80007870:	5e4080e7          	jalr	1508(ra) # 80005e50 <mycpu>
    80007874:	0014f493          	andi	s1,s1,1
    80007878:	06952e23          	sw	s1,124(a0)
    8000787c:	fc5ff06f          	j	80007840 <push_on+0x34>

0000000080007880 <pop_on>:
    80007880:	ff010113          	addi	sp,sp,-16
    80007884:	00813023          	sd	s0,0(sp)
    80007888:	00113423          	sd	ra,8(sp)
    8000788c:	01010413          	addi	s0,sp,16
    80007890:	ffffe097          	auipc	ra,0xffffe
    80007894:	5c0080e7          	jalr	1472(ra) # 80005e50 <mycpu>
    80007898:	100027f3          	csrr	a5,sstatus
    8000789c:	0027f793          	andi	a5,a5,2
    800078a0:	04078463          	beqz	a5,800078e8 <pop_on+0x68>
    800078a4:	07852783          	lw	a5,120(a0)
    800078a8:	02f05863          	blez	a5,800078d8 <pop_on+0x58>
    800078ac:	fff7879b          	addiw	a5,a5,-1
    800078b0:	06f52c23          	sw	a5,120(a0)
    800078b4:	07853783          	ld	a5,120(a0)
    800078b8:	00079863          	bnez	a5,800078c8 <pop_on+0x48>
    800078bc:	100027f3          	csrr	a5,sstatus
    800078c0:	ffd7f793          	andi	a5,a5,-3
    800078c4:	10079073          	csrw	sstatus,a5
    800078c8:	00813083          	ld	ra,8(sp)
    800078cc:	00013403          	ld	s0,0(sp)
    800078d0:	01010113          	addi	sp,sp,16
    800078d4:	00008067          	ret
    800078d8:	00001517          	auipc	a0,0x1
    800078dc:	e7850513          	addi	a0,a0,-392 # 80008750 <digits+0x70>
    800078e0:	fffff097          	auipc	ra,0xfffff
    800078e4:	f2c080e7          	jalr	-212(ra) # 8000680c <panic>
    800078e8:	00001517          	auipc	a0,0x1
    800078ec:	e4850513          	addi	a0,a0,-440 # 80008730 <digits+0x50>
    800078f0:	fffff097          	auipc	ra,0xfffff
    800078f4:	f1c080e7          	jalr	-228(ra) # 8000680c <panic>

00000000800078f8 <__memset>:
    800078f8:	ff010113          	addi	sp,sp,-16
    800078fc:	00813423          	sd	s0,8(sp)
    80007900:	01010413          	addi	s0,sp,16
    80007904:	1a060e63          	beqz	a2,80007ac0 <__memset+0x1c8>
    80007908:	40a007b3          	neg	a5,a0
    8000790c:	0077f793          	andi	a5,a5,7
    80007910:	00778693          	addi	a3,a5,7
    80007914:	00b00813          	li	a6,11
    80007918:	0ff5f593          	andi	a1,a1,255
    8000791c:	fff6071b          	addiw	a4,a2,-1
    80007920:	1b06e663          	bltu	a3,a6,80007acc <__memset+0x1d4>
    80007924:	1cd76463          	bltu	a4,a3,80007aec <__memset+0x1f4>
    80007928:	1a078e63          	beqz	a5,80007ae4 <__memset+0x1ec>
    8000792c:	00b50023          	sb	a1,0(a0)
    80007930:	00100713          	li	a4,1
    80007934:	1ae78463          	beq	a5,a4,80007adc <__memset+0x1e4>
    80007938:	00b500a3          	sb	a1,1(a0)
    8000793c:	00200713          	li	a4,2
    80007940:	1ae78a63          	beq	a5,a4,80007af4 <__memset+0x1fc>
    80007944:	00b50123          	sb	a1,2(a0)
    80007948:	00300713          	li	a4,3
    8000794c:	18e78463          	beq	a5,a4,80007ad4 <__memset+0x1dc>
    80007950:	00b501a3          	sb	a1,3(a0)
    80007954:	00400713          	li	a4,4
    80007958:	1ae78263          	beq	a5,a4,80007afc <__memset+0x204>
    8000795c:	00b50223          	sb	a1,4(a0)
    80007960:	00500713          	li	a4,5
    80007964:	1ae78063          	beq	a5,a4,80007b04 <__memset+0x20c>
    80007968:	00b502a3          	sb	a1,5(a0)
    8000796c:	00700713          	li	a4,7
    80007970:	18e79e63          	bne	a5,a4,80007b0c <__memset+0x214>
    80007974:	00b50323          	sb	a1,6(a0)
    80007978:	00700e93          	li	t4,7
    8000797c:	00859713          	slli	a4,a1,0x8
    80007980:	00e5e733          	or	a4,a1,a4
    80007984:	01059e13          	slli	t3,a1,0x10
    80007988:	01c76e33          	or	t3,a4,t3
    8000798c:	01859313          	slli	t1,a1,0x18
    80007990:	006e6333          	or	t1,t3,t1
    80007994:	02059893          	slli	a7,a1,0x20
    80007998:	40f60e3b          	subw	t3,a2,a5
    8000799c:	011368b3          	or	a7,t1,a7
    800079a0:	02859813          	slli	a6,a1,0x28
    800079a4:	0108e833          	or	a6,a7,a6
    800079a8:	03059693          	slli	a3,a1,0x30
    800079ac:	003e589b          	srliw	a7,t3,0x3
    800079b0:	00d866b3          	or	a3,a6,a3
    800079b4:	03859713          	slli	a4,a1,0x38
    800079b8:	00389813          	slli	a6,a7,0x3
    800079bc:	00f507b3          	add	a5,a0,a5
    800079c0:	00e6e733          	or	a4,a3,a4
    800079c4:	000e089b          	sext.w	a7,t3
    800079c8:	00f806b3          	add	a3,a6,a5
    800079cc:	00e7b023          	sd	a4,0(a5)
    800079d0:	00878793          	addi	a5,a5,8
    800079d4:	fed79ce3          	bne	a5,a3,800079cc <__memset+0xd4>
    800079d8:	ff8e7793          	andi	a5,t3,-8
    800079dc:	0007871b          	sext.w	a4,a5
    800079e0:	01d787bb          	addw	a5,a5,t4
    800079e4:	0ce88e63          	beq	a7,a4,80007ac0 <__memset+0x1c8>
    800079e8:	00f50733          	add	a4,a0,a5
    800079ec:	00b70023          	sb	a1,0(a4)
    800079f0:	0017871b          	addiw	a4,a5,1
    800079f4:	0cc77663          	bgeu	a4,a2,80007ac0 <__memset+0x1c8>
    800079f8:	00e50733          	add	a4,a0,a4
    800079fc:	00b70023          	sb	a1,0(a4)
    80007a00:	0027871b          	addiw	a4,a5,2
    80007a04:	0ac77e63          	bgeu	a4,a2,80007ac0 <__memset+0x1c8>
    80007a08:	00e50733          	add	a4,a0,a4
    80007a0c:	00b70023          	sb	a1,0(a4)
    80007a10:	0037871b          	addiw	a4,a5,3
    80007a14:	0ac77663          	bgeu	a4,a2,80007ac0 <__memset+0x1c8>
    80007a18:	00e50733          	add	a4,a0,a4
    80007a1c:	00b70023          	sb	a1,0(a4)
    80007a20:	0047871b          	addiw	a4,a5,4
    80007a24:	08c77e63          	bgeu	a4,a2,80007ac0 <__memset+0x1c8>
    80007a28:	00e50733          	add	a4,a0,a4
    80007a2c:	00b70023          	sb	a1,0(a4)
    80007a30:	0057871b          	addiw	a4,a5,5
    80007a34:	08c77663          	bgeu	a4,a2,80007ac0 <__memset+0x1c8>
    80007a38:	00e50733          	add	a4,a0,a4
    80007a3c:	00b70023          	sb	a1,0(a4)
    80007a40:	0067871b          	addiw	a4,a5,6
    80007a44:	06c77e63          	bgeu	a4,a2,80007ac0 <__memset+0x1c8>
    80007a48:	00e50733          	add	a4,a0,a4
    80007a4c:	00b70023          	sb	a1,0(a4)
    80007a50:	0077871b          	addiw	a4,a5,7
    80007a54:	06c77663          	bgeu	a4,a2,80007ac0 <__memset+0x1c8>
    80007a58:	00e50733          	add	a4,a0,a4
    80007a5c:	00b70023          	sb	a1,0(a4)
    80007a60:	0087871b          	addiw	a4,a5,8
    80007a64:	04c77e63          	bgeu	a4,a2,80007ac0 <__memset+0x1c8>
    80007a68:	00e50733          	add	a4,a0,a4
    80007a6c:	00b70023          	sb	a1,0(a4)
    80007a70:	0097871b          	addiw	a4,a5,9
    80007a74:	04c77663          	bgeu	a4,a2,80007ac0 <__memset+0x1c8>
    80007a78:	00e50733          	add	a4,a0,a4
    80007a7c:	00b70023          	sb	a1,0(a4)
    80007a80:	00a7871b          	addiw	a4,a5,10
    80007a84:	02c77e63          	bgeu	a4,a2,80007ac0 <__memset+0x1c8>
    80007a88:	00e50733          	add	a4,a0,a4
    80007a8c:	00b70023          	sb	a1,0(a4)
    80007a90:	00b7871b          	addiw	a4,a5,11
    80007a94:	02c77663          	bgeu	a4,a2,80007ac0 <__memset+0x1c8>
    80007a98:	00e50733          	add	a4,a0,a4
    80007a9c:	00b70023          	sb	a1,0(a4)
    80007aa0:	00c7871b          	addiw	a4,a5,12
    80007aa4:	00c77e63          	bgeu	a4,a2,80007ac0 <__memset+0x1c8>
    80007aa8:	00e50733          	add	a4,a0,a4
    80007aac:	00b70023          	sb	a1,0(a4)
    80007ab0:	00d7879b          	addiw	a5,a5,13
    80007ab4:	00c7f663          	bgeu	a5,a2,80007ac0 <__memset+0x1c8>
    80007ab8:	00f507b3          	add	a5,a0,a5
    80007abc:	00b78023          	sb	a1,0(a5)
    80007ac0:	00813403          	ld	s0,8(sp)
    80007ac4:	01010113          	addi	sp,sp,16
    80007ac8:	00008067          	ret
    80007acc:	00b00693          	li	a3,11
    80007ad0:	e55ff06f          	j	80007924 <__memset+0x2c>
    80007ad4:	00300e93          	li	t4,3
    80007ad8:	ea5ff06f          	j	8000797c <__memset+0x84>
    80007adc:	00100e93          	li	t4,1
    80007ae0:	e9dff06f          	j	8000797c <__memset+0x84>
    80007ae4:	00000e93          	li	t4,0
    80007ae8:	e95ff06f          	j	8000797c <__memset+0x84>
    80007aec:	00000793          	li	a5,0
    80007af0:	ef9ff06f          	j	800079e8 <__memset+0xf0>
    80007af4:	00200e93          	li	t4,2
    80007af8:	e85ff06f          	j	8000797c <__memset+0x84>
    80007afc:	00400e93          	li	t4,4
    80007b00:	e7dff06f          	j	8000797c <__memset+0x84>
    80007b04:	00500e93          	li	t4,5
    80007b08:	e75ff06f          	j	8000797c <__memset+0x84>
    80007b0c:	00600e93          	li	t4,6
    80007b10:	e6dff06f          	j	8000797c <__memset+0x84>

0000000080007b14 <__memmove>:
    80007b14:	ff010113          	addi	sp,sp,-16
    80007b18:	00813423          	sd	s0,8(sp)
    80007b1c:	01010413          	addi	s0,sp,16
    80007b20:	0e060863          	beqz	a2,80007c10 <__memmove+0xfc>
    80007b24:	fff6069b          	addiw	a3,a2,-1
    80007b28:	0006881b          	sext.w	a6,a3
    80007b2c:	0ea5e863          	bltu	a1,a0,80007c1c <__memmove+0x108>
    80007b30:	00758713          	addi	a4,a1,7
    80007b34:	00a5e7b3          	or	a5,a1,a0
    80007b38:	40a70733          	sub	a4,a4,a0
    80007b3c:	0077f793          	andi	a5,a5,7
    80007b40:	00f73713          	sltiu	a4,a4,15
    80007b44:	00174713          	xori	a4,a4,1
    80007b48:	0017b793          	seqz	a5,a5
    80007b4c:	00e7f7b3          	and	a5,a5,a4
    80007b50:	10078863          	beqz	a5,80007c60 <__memmove+0x14c>
    80007b54:	00900793          	li	a5,9
    80007b58:	1107f463          	bgeu	a5,a6,80007c60 <__memmove+0x14c>
    80007b5c:	0036581b          	srliw	a6,a2,0x3
    80007b60:	fff8081b          	addiw	a6,a6,-1
    80007b64:	02081813          	slli	a6,a6,0x20
    80007b68:	01d85893          	srli	a7,a6,0x1d
    80007b6c:	00858813          	addi	a6,a1,8
    80007b70:	00058793          	mv	a5,a1
    80007b74:	00050713          	mv	a4,a0
    80007b78:	01088833          	add	a6,a7,a6
    80007b7c:	0007b883          	ld	a7,0(a5)
    80007b80:	00878793          	addi	a5,a5,8
    80007b84:	00870713          	addi	a4,a4,8
    80007b88:	ff173c23          	sd	a7,-8(a4)
    80007b8c:	ff0798e3          	bne	a5,a6,80007b7c <__memmove+0x68>
    80007b90:	ff867713          	andi	a4,a2,-8
    80007b94:	02071793          	slli	a5,a4,0x20
    80007b98:	0207d793          	srli	a5,a5,0x20
    80007b9c:	00f585b3          	add	a1,a1,a5
    80007ba0:	40e686bb          	subw	a3,a3,a4
    80007ba4:	00f507b3          	add	a5,a0,a5
    80007ba8:	06e60463          	beq	a2,a4,80007c10 <__memmove+0xfc>
    80007bac:	0005c703          	lbu	a4,0(a1)
    80007bb0:	00e78023          	sb	a4,0(a5)
    80007bb4:	04068e63          	beqz	a3,80007c10 <__memmove+0xfc>
    80007bb8:	0015c603          	lbu	a2,1(a1)
    80007bbc:	00100713          	li	a4,1
    80007bc0:	00c780a3          	sb	a2,1(a5)
    80007bc4:	04e68663          	beq	a3,a4,80007c10 <__memmove+0xfc>
    80007bc8:	0025c603          	lbu	a2,2(a1)
    80007bcc:	00200713          	li	a4,2
    80007bd0:	00c78123          	sb	a2,2(a5)
    80007bd4:	02e68e63          	beq	a3,a4,80007c10 <__memmove+0xfc>
    80007bd8:	0035c603          	lbu	a2,3(a1)
    80007bdc:	00300713          	li	a4,3
    80007be0:	00c781a3          	sb	a2,3(a5)
    80007be4:	02e68663          	beq	a3,a4,80007c10 <__memmove+0xfc>
    80007be8:	0045c603          	lbu	a2,4(a1)
    80007bec:	00400713          	li	a4,4
    80007bf0:	00c78223          	sb	a2,4(a5)
    80007bf4:	00e68e63          	beq	a3,a4,80007c10 <__memmove+0xfc>
    80007bf8:	0055c603          	lbu	a2,5(a1)
    80007bfc:	00500713          	li	a4,5
    80007c00:	00c782a3          	sb	a2,5(a5)
    80007c04:	00e68663          	beq	a3,a4,80007c10 <__memmove+0xfc>
    80007c08:	0065c703          	lbu	a4,6(a1)
    80007c0c:	00e78323          	sb	a4,6(a5)
    80007c10:	00813403          	ld	s0,8(sp)
    80007c14:	01010113          	addi	sp,sp,16
    80007c18:	00008067          	ret
    80007c1c:	02061713          	slli	a4,a2,0x20
    80007c20:	02075713          	srli	a4,a4,0x20
    80007c24:	00e587b3          	add	a5,a1,a4
    80007c28:	f0f574e3          	bgeu	a0,a5,80007b30 <__memmove+0x1c>
    80007c2c:	02069613          	slli	a2,a3,0x20
    80007c30:	02065613          	srli	a2,a2,0x20
    80007c34:	fff64613          	not	a2,a2
    80007c38:	00e50733          	add	a4,a0,a4
    80007c3c:	00c78633          	add	a2,a5,a2
    80007c40:	fff7c683          	lbu	a3,-1(a5)
    80007c44:	fff78793          	addi	a5,a5,-1
    80007c48:	fff70713          	addi	a4,a4,-1
    80007c4c:	00d70023          	sb	a3,0(a4)
    80007c50:	fec798e3          	bne	a5,a2,80007c40 <__memmove+0x12c>
    80007c54:	00813403          	ld	s0,8(sp)
    80007c58:	01010113          	addi	sp,sp,16
    80007c5c:	00008067          	ret
    80007c60:	02069713          	slli	a4,a3,0x20
    80007c64:	02075713          	srli	a4,a4,0x20
    80007c68:	00170713          	addi	a4,a4,1
    80007c6c:	00e50733          	add	a4,a0,a4
    80007c70:	00050793          	mv	a5,a0
    80007c74:	0005c683          	lbu	a3,0(a1)
    80007c78:	00178793          	addi	a5,a5,1
    80007c7c:	00158593          	addi	a1,a1,1
    80007c80:	fed78fa3          	sb	a3,-1(a5)
    80007c84:	fee798e3          	bne	a5,a4,80007c74 <__memmove+0x160>
    80007c88:	f89ff06f          	j	80007c10 <__memmove+0xfc>

0000000080007c8c <__putc>:
    80007c8c:	fe010113          	addi	sp,sp,-32
    80007c90:	00813823          	sd	s0,16(sp)
    80007c94:	00113c23          	sd	ra,24(sp)
    80007c98:	02010413          	addi	s0,sp,32
    80007c9c:	00050793          	mv	a5,a0
    80007ca0:	fef40593          	addi	a1,s0,-17
    80007ca4:	00100613          	li	a2,1
    80007ca8:	00000513          	li	a0,0
    80007cac:	fef407a3          	sb	a5,-17(s0)
    80007cb0:	fffff097          	auipc	ra,0xfffff
    80007cb4:	b3c080e7          	jalr	-1220(ra) # 800067ec <console_write>
    80007cb8:	01813083          	ld	ra,24(sp)
    80007cbc:	01013403          	ld	s0,16(sp)
    80007cc0:	02010113          	addi	sp,sp,32
    80007cc4:	00008067          	ret

0000000080007cc8 <__getc>:
    80007cc8:	fe010113          	addi	sp,sp,-32
    80007ccc:	00813823          	sd	s0,16(sp)
    80007cd0:	00113c23          	sd	ra,24(sp)
    80007cd4:	02010413          	addi	s0,sp,32
    80007cd8:	fe840593          	addi	a1,s0,-24
    80007cdc:	00100613          	li	a2,1
    80007ce0:	00000513          	li	a0,0
    80007ce4:	fffff097          	auipc	ra,0xfffff
    80007ce8:	ae8080e7          	jalr	-1304(ra) # 800067cc <console_read>
    80007cec:	fe844503          	lbu	a0,-24(s0)
    80007cf0:	01813083          	ld	ra,24(sp)
    80007cf4:	01013403          	ld	s0,16(sp)
    80007cf8:	02010113          	addi	sp,sp,32
    80007cfc:	00008067          	ret

0000000080007d00 <console_handler>:
    80007d00:	fe010113          	addi	sp,sp,-32
    80007d04:	00813823          	sd	s0,16(sp)
    80007d08:	00113c23          	sd	ra,24(sp)
    80007d0c:	00913423          	sd	s1,8(sp)
    80007d10:	02010413          	addi	s0,sp,32
    80007d14:	14202773          	csrr	a4,scause
    80007d18:	100027f3          	csrr	a5,sstatus
    80007d1c:	0027f793          	andi	a5,a5,2
    80007d20:	06079e63          	bnez	a5,80007d9c <console_handler+0x9c>
    80007d24:	00074c63          	bltz	a4,80007d3c <console_handler+0x3c>
    80007d28:	01813083          	ld	ra,24(sp)
    80007d2c:	01013403          	ld	s0,16(sp)
    80007d30:	00813483          	ld	s1,8(sp)
    80007d34:	02010113          	addi	sp,sp,32
    80007d38:	00008067          	ret
    80007d3c:	0ff77713          	andi	a4,a4,255
    80007d40:	00900793          	li	a5,9
    80007d44:	fef712e3          	bne	a4,a5,80007d28 <console_handler+0x28>
    80007d48:	ffffe097          	auipc	ra,0xffffe
    80007d4c:	6dc080e7          	jalr	1756(ra) # 80006424 <plic_claim>
    80007d50:	00a00793          	li	a5,10
    80007d54:	00050493          	mv	s1,a0
    80007d58:	02f50c63          	beq	a0,a5,80007d90 <console_handler+0x90>
    80007d5c:	fc0506e3          	beqz	a0,80007d28 <console_handler+0x28>
    80007d60:	00050593          	mv	a1,a0
    80007d64:	00001517          	auipc	a0,0x1
    80007d68:	8f450513          	addi	a0,a0,-1804 # 80008658 <_ZZ13printIntegerAlE6digits+0x520>
    80007d6c:	fffff097          	auipc	ra,0xfffff
    80007d70:	afc080e7          	jalr	-1284(ra) # 80006868 <__printf>
    80007d74:	01013403          	ld	s0,16(sp)
    80007d78:	01813083          	ld	ra,24(sp)
    80007d7c:	00048513          	mv	a0,s1
    80007d80:	00813483          	ld	s1,8(sp)
    80007d84:	02010113          	addi	sp,sp,32
    80007d88:	ffffe317          	auipc	t1,0xffffe
    80007d8c:	6d430067          	jr	1748(t1) # 8000645c <plic_complete>
    80007d90:	fffff097          	auipc	ra,0xfffff
    80007d94:	3e0080e7          	jalr	992(ra) # 80007170 <uartintr>
    80007d98:	fddff06f          	j	80007d74 <console_handler+0x74>
    80007d9c:	00001517          	auipc	a0,0x1
    80007da0:	9bc50513          	addi	a0,a0,-1604 # 80008758 <digits+0x78>
    80007da4:	fffff097          	auipc	ra,0xfffff
    80007da8:	a68080e7          	jalr	-1432(ra) # 8000680c <panic>
	...
