/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLSxFzHq.aml, Tue Mar 23 02:00:13 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000008F (143)
 *     Revision         0x02
 *     Checksum         0x2E
 *     OEM ID           "ACDT"
 *     OEM Table ID     "PS2K"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20181213 (538448403)
 */
DefinitionBlock ("", "SSDT", 2, "ACDT", "PS2K", 0x00000000)
{
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)

    Scope (_SB.PCI0.LPCB.PS2K)
    {
        Name (RMCF, Package (0x02)
        {
            "Keyboard", 
            Package (0x02)
            {
                "Custom PS2 Map", 
                Package (0x03)
                {
                    Package (0x00){}, 
                    "1d=e05b", 
                    "e05b=1d"
                }
            }
        })
    }
}

