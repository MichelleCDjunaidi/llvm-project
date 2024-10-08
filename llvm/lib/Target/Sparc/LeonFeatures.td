//===-- LeonFeatures.td - Describe the Leon Features -------*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
//
//===----------------------------------------------------------------------===//


//===----------------------------------------------------------------------===//
// UMAC and SMAC support for LEON3 and LEON4 processors.
//===----------------------------------------------------------------------===//

//support to casa instruction; for leon3 subtarget only
def UMACSMACSupport : SubtargetFeature<
  "hasumacsmac",
  "HasUmacSmac",
  "true",
  "Enable UMAC and SMAC for LEON3 and LEON4 processors"
>;


//===----------------------------------------------------------------------===//
// CASA Support differs between LEON3-FT GR712RC and LEON3-FT UT699
// We need to have the option to switch this on and off.
//===----------------------------------------------------------------------===//

//support to casa instruction; for leon3 subtarget only
def LeonCASA : SubtargetFeature<
  "hasleoncasa",
  "HasLeonCasa",
  "true",
  "Enable CASA instruction for LEON3 and LEON4 processors"
>;

def InsertNOPLoad: SubtargetFeature<
  "insertnopload",
  "InsertNOPLoad",
  "true",
  "LEON3 erratum fix: Insert a NOP instruction after every single-cycle load instruction when the next instruction is another load/store instruction"
>;

def DetectRoundChange : SubtargetFeature<
  "detectroundchange",
  "DetectRoundChange",
  "true",
  "LEON3 erratum detection: Detects any rounding mode change "
  "request: use only the round-to-nearest rounding mode"
>;

def FixAllFDIVSQRT : SubtargetFeature<
  "fixallfdivsqrt",
  "FixAllFDIVSQRT",
  "true",
  "LEON erratum fix: Fix FDIVS/FDIVD/FSQRTS/FSQRTD instructions with NOPs and floating-point store"
>;

def LeonCycleCounter
  : SubtargetFeature<"leoncyclecounter", "HasLeonCycleCounter", "true",
                     "Use the Leon cycle counter register">;

def FixTN0009 : SubtargetFeature<
  "fix-tn0009",
  "FixTN0009",
  "true",
  "Enable workaround for errata described in GRLIB-TN-0009"
>;

def FixTN0010 : SubtargetFeature<
  "fix-tn0010",
  "FixTN0010",
  "true",
  "Enable workaround for errata described in GRLIB-TN-0010"
>;

def FixTN0011 : SubtargetFeature<
  "fix-tn0011",
  "FixTN0011",
  "true",
  "Enable workaround for errata described in GRLIB-TN-0011"
>;

def FixTN0012 : SubtargetFeature<
  "fix-tn0012",
  "FixTN0012",
  "true",
  "Enable workaround for errata described in GRLIB-TN-0012"
>;

def FixTN0013 : SubtargetFeature<
  "fix-tn0013",
  "FixTN0013",
  "true",
  "Enable workaround for errata described in GRLIB-TN-0013"
>;
