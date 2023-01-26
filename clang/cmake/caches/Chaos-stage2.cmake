set(LLVM_ENABLE_PROJECTS "clang;clang-tools-extra;lld;lldb;openmp" CACHE STRING "" FORCE)
set(LLVM_ENABLE_RUNTIMES "compiler-rt;libcxx;libcxxabi" CACHE STRING "" FORCE)

set(LLVM_TARGETS_TO_BUILD Native CACHE STRING "" FORCE)

set(CMAKE_BUILD_TYPE Release CACHE STRING "" FORCE)
set(CMAKE_C_FLAGS_RELEASE "-O3 -gline-tables-only -DNDEBUG" CACHE STRING "" FORCE)
set(CMAKE_CXX_FLAGS_RELEASE "-O3 -gline-tables-only -DNDEBUG" CACHE STRING "" FORCE)

set(LLVM_PARALLEL_COMPILE_JOBS 16 CACHE STRING "" FORCE)
set(LLVM_PARALLEL_LINK_JOBS 1 CACHE STRING "" FORCE)
set(LLVM_BINUTILS_INCDIR "/usr/lib/binutils-2.39/include" CACHE STRING "" FORCE)
set(LLDB_ENABLE_PYTHON OFF CACHE BOOL "" FORCE)

# setup toolchain
set(LLVM_INSTALL_TOOLCHAIN_ONLY ON CACHE BOOL "" FORCE)
set(LLVM_TOOLCHAIN_TOOLS
  dsymutil
  llvm-ar
  llvm-cov
  llvm-cxxfilt
  llvm-dlltool
  llvm-dwarfdump
  llvm-lib
  llvm-profdata
  llvm-objdump
  llvm-ml
  llvm-mt
  llvm-nm
  llvm-rc
  llvm-size
  liblldb
  lldb
  lldb-server
  CACHE STRING "" FORCE)

set(LLVM_DISTRIBUTION_COMPONENTS
  clang
  clangd
  lld
  LTO
  LLVMgold
  clang-check
  clang-format
  clang-include-fixer
  clang-rename
  clang-resource-headers
  clang-tidy
  builtins
  runtimes
  ${LLVM_TOOLCHAIN_TOOLS}
  CACHE STRING "" FORCE)
