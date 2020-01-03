/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-3-sensrhub.aml, Wed Jan  1 23:03:51 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000264 (612)
 *     Revision         0x02
 *     Checksum         0x6B
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "sensrhub"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20141107 (538185991)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "sensrhub", 0x00000000)
{
    /*
     * External declarations were imported from
     * a reference file -- refs.txt
     */

    External (_GPE.MMTB, MethodObj)    // Imported: 0 Arguments
    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_SB_.GGOV, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.GFX0.DD02._BCM, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.I2C0.DFUD, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.RP09.PEGP.NVST, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.SAT0.SDSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.SAT1.SDSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.SGOV, MethodObj)    // 2 Arguments
    External (BID_, FieldUnitObj)
    External (MDBG, MethodObj)    // Imported: 1 Arguments
    External (SDS0, FieldUnitObj)
    External (USBH, FieldUnitObj)

    Scope (\)
    {
        Device (SHAD)
        {
            Name (_HID, EisaId ("INT33D0"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0C02"))  // _CID: Compatible ID
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If (LOr (And (SDS0, 0x01), And (USBH, 0x01)))
                {
                    Return (0x0F)
                }

                Return (0x00)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (PGCE, 0x00)
                Name (PGCD, 0x00)
                Name (PGCG, 0x2E)
                Name (DFUE, 0x00)
                Name (DFUD, 0x00)
                Name (OLDV, 0x00)
                Name (PGCV, 0x00)
                Name (DFUV, 0x00)
                If (LEqual (Arg0, ToUUID ("03c868d5-563f-42a8-9f57-9a18d949b7cb")))
                {
                    If (LEqual (BID, 0x20))
                    {
                        Store (0x3A, PGCG)
                    }

                    If (LEqual (0x01, ToInteger (Arg1)))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (0x00)
                            {
                                Return (Buffer (0x01)
                                {
                                     0x0F                                           
                                })
                            }
                            Case (0x01)
                            {
                                Store (DerefOf (Index (Arg3, 0x00)), PGCE)
                                Store (DerefOf (Index (Arg3, 0x01)), PGCD)
                                Store (\_SB.GGOV (0x02010016), OLDV)
                                \_SB.SGOV (0x02010016, PGCE)
                                If (LGreater (PGCD, 0x00))
                                {
                                    Sleep (PGCD)
                                    \_SB.GGOV (0x02010016)
                                    OLDV
                                }

                                If (LEqual (\_SB.GGOV (0x02010016), 0x01))
                                {
                                    Sleep (0x96)
                                    If (LEqual (\_SB.GGOV (0x02010014), 0x01)){}
                                    Else
                                    {
                                        Notify (\_SB.PCI0.I2C0.DFUD, 0x01)
                                    }
                                }

                                Return (0x00)
                            }
                            Case (0x02)
                            {
                                Store (DerefOf (Index (Arg3, 0x00)), DFUE)
                                Store (DerefOf (Index (Arg3, 0x01)), DFUD)
                                Store (\_SB.GGOV (0x02010014), OLDV)
                                \_SB.GGOV (0x02010014)
                                DFUE
                                If (LGreater (DFUD, 0x00))
                                {
                                    Sleep (DFUD)
                                    \_SB.GGOV (0x02010014)
                                    OLDV
                                }

                                Return (0x00)
                            }
                            Case (0x03)
                            {
                                Store (\_SB.GGOV (0x02010014), DFUV)
                                Store (\_SB.GGOV (0x02010016), PGCV)
                                Return (Package (0x02)
                                {
                                    PGCV, 
                                    DFUV
                                })
                            }

                        }

                        Return (0x00)
                    }

                    Return (0x00)
                }

                Return (0x00)
            }
        }
    }
}

