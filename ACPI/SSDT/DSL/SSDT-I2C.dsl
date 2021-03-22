/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLBq1PQJ.aml, Tue Mar 23 01:59:48 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000111 (273)
 *     Revision         0x02
 *     Checksum         0x1E
 *     OEM ID           "ACDT"
 *     OEM Table ID     "_I2C"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200214 (538968596)
 */
DefinitionBlock ("", "SSDT", 2, "ACDT", "_I2C", 0x00000000)
{
    External (_SB_.PCI0.I2C1, DeviceObj)
    External (FMD1, IntObj)
    External (FMH1, IntObj)
    External (FML1, IntObj)
    External (OSYS, IntObj)
    External (SSD1, IntObj)
    External (SSH1, IntObj)
    External (SSL1, IntObj)
    External (TPDM, IntObj)

    Method (PKG3, 3, Serialized)
    {
        Name (PKG, Package (0x03)
        {
            Zero, 
            Zero, 
            Zero
        })
        PKG [Zero] = Arg0
        PKG [One] = Arg1
        PKG [0x02] = Arg2
        Return (PKG) /* \PKG3.PKG_ */
    }

    Scope (_SB.PCI0.I2C1)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (_OSI ("Darwin"))
            {
                TPDM = Zero
                OSYS = 0x07DF
            }
        }

        Method (SSCN, 0, NotSerialized)
        {
            Return (PKG3 (SSH1, SSL1, SSD1))
        }

        Method (FMCN, 0, NotSerialized)
        {
            Return (PKG3 (FMH1, FML1, FMD1))
        }
    }
}

