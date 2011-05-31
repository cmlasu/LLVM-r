//===-- OR1KTargetMachine.cpp - Define TargetMachine for OR1K ---------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// Implements the info about OR1K target spec.
//
//===----------------------------------------------------------------------===//

#include "OR1K.h"
#include "OR1KMCAsmInfo.h"
#include "OR1KTargetMachine.h"
#include "llvm/PassManager.h"
#include "llvm/Target/TargetRegistry.h"
using namespace llvm;

extern "C" void LLVMInitializeOR1KTarget() {
  // Register the target.
  RegisterTargetMachine<OR1KTargetMachine> X(TheOR1KTarget);
  RegisterAsmInfo<OR1KMCAsmInfo> A(TheOR1KTarget);
}

// DataLayout --> Big-endian, 32-bit pointer/ABI/alignment
// The stack is always 8 byte aligned
// On function prologue, the stack is created by decrementing
// its pointer. Once decremented, all references are done with positive
// offset from the stack/frame pointer, using StackGrowsUp enables
// an easier handling.
OR1KTargetMachine::
OR1KTargetMachine(const Target &T, const std::string &TT,
                    const std::string &FS):
  LLVMTargetMachine(T, TT),
  Subtarget(TT, FS),
  DataLayout("E-p:32:32-i8:8:8-i16:16:16-i64:32:32-"
             "f64:32:32-v64:32:32-v128:32:32-n32"),
//  TLInfo(*this), TSInfo(*this), InstrInfo(),
  InstrInfo(), TLInfo(*this), TSInfo(*this),
  FrameInfo(TargetFrameInfo::StackGrowsDown, 8, 0) {}

// Install an instruction selector pass using
// the ISelDag to gen OR1K code.
bool OR1KTargetMachine::
addInstSelector(PassManagerBase &PM, CodeGenOpt::Level OptLevel) {
  PM.add(createOR1KISelDag(*this));
  return false;
}

// Implemented by targets that want to run passes immediately before
// machine code is emitted. return true if -print-machineinstrs should
// print out the code after the passes.

bool OR1KTargetMachine::
addPreEmitPass(PassManagerBase &PM, CodeGenOpt::Level OptLevel) {
//  PM.add(createOR1KDelaySlotFillerPass(*this));
  return true;
}
