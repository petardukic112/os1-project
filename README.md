# RISC-V Operating System Project

A small educational operating-system kernel implemented for the RISC-V architecture. The project provides basic memory management, thread scheduling, synchronization primitives, supervisor traps, and C/C++ system-call APIs.

## Features

- RISC-V supervisor-mode trap handling
- Context switching
- Thread creation and dispatching
- Cooperative and preemptive scheduler support
- First-fit or block-based memory allocation
- Kernel semaphores
- Blocking and signal operations
- C and C++ system-call interfaces
- Console input and output
- Thread sleep support
- Consumer-producer and synchronization tests
- QEMU and GDB debugging support

## Project Structure

| Path | Description |
|---|---|
| `src/` | Kernel implementation |
| `h/` | Kernel headers |
| `test/` | Kernel API and consumer-producer tests |
| `lib/` | Hardware, console, and memory support libraries |
| `build/` | Generated object files, dependencies, and listings |
| `kernel.ld` | Kernel linker script |
| `kernel.asm` | Generated disassembled kernel image |
| `Makefile` | Build, execution, and debugging configuration |

## Core Components

- **MemoryAllocator** — manages kernel memory allocation and deallocation.
- **TCB** — represents threads and stores their execution context.
- **Scheduler** — maintains the ready queue and selects threads for execution.
- **KernelSem** — implements kernel semaphore operations.
- **Riscv** — manages RISC-V status registers, traps, interrupts, and system calls.
- **Context switching** — implemented using RISC-V assembly.
- **Syscall APIs** — expose kernel functionality through C and C++ interfaces.

## Available APIs

The kernel includes APIs for:

- Memory allocation and release
- Thread creation and termination
- Thread dispatching
- Semaphore creation, closing, waiting, and signaling
- Sleeping
- Console input and output

C declarations are located in `h/syscall_c.h`, while C++ wrappers are provided in `h/syscall_cpp.hpp`.

## Requirements

- Linux environment
- RISC-V GNU toolchain
- `qemu-system-riscv64`
- GNU Make
- GDB with RISC-V support, preferably `gdb-multiarch`

The Makefile searches for an appropriate RISC-V toolchain prefix and exits with an error if one cannot be found.

## Build

Build the kernel image:

```bash
make
```

This produces the `kernel` executable and `kernel.asm` disassembly.

Clean generated files:

```bash
make clean
```

## Run with QEMU

Start the kernel in QEMU:

```bash
make qemu
```

The default configuration uses:

- RISC-V virtual machine
- 128 MB of memory
- One CPU core
- BIOS disabled
- No graphical output

## Debug with GDB

Start QEMU with GDB support:

```bash
make qemu-gdb
```

Then run GDB in another terminal:

```bash
gdb-multiarch
```

The project generates `.gdbinit` with a dynamically assigned GDB TCP port.

## Tests

The `test/` directory contains tests for:

- C and C++ thread APIs
- C and C++ consumer-producer synchronization
- C semaphore APIs
- C++ synchronization APIs
- Thread sleeping
- System-mode behavior
- Test-specific console output and locking

Set `LEVEL_N_IMPLEMENTED` to `1` for every completed assignment level, where `N` is the corresponding task number. Call `userMain()` after kernel initialization and select tests through the test interface.

## License

This project includes the modified xV6/xv6 license and permits use, copying, modification, distribution, sublicensing, and sale of the software, subject to the license notice and disclaimer included in the `LICENSE` file.
