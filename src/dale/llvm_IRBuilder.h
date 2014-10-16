#if LLVM_VERSION_MINOR == 2
#include "llvm/IRBuilder.h"
#include "llvm/TypeBuilder.h"
#include "llvm/DataLayout.h"
#elif LLVM_VERSION_MINOR == 3
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/TypeBuilder.h"
#include "llvm/IR/DataLayout.h"
#else
#include "llvm/Support/IRBuilder.h"
#include "llvm/Support/TypeBuilder.h"
#endif
