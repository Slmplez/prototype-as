/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IUnknown;
import org.eclipse.swt.internal.win32.OS;

public class ITypeInfo
extends IUnknown {
    public ITypeInfo(int address) {
        super(address);
    }

    public int GetDocumentation(int index, String[] name, String[] docString, int[] pdwHelpContext, String[] helpFile) {
        int subindex;
        char[] buffer;
        int size;
        int[] pBstrName = null;
        if (name != null) {
            pBstrName = new int[1];
        }
        int[] pBstrDocString = null;
        if (docString != null) {
            pBstrDocString = new int[1];
        }
        int[] pBstrHelpFile = null;
        if (helpFile != null) {
            pBstrHelpFile = new int[1];
        }
        int rc = COM.VtblCall(12, this.address, index, pBstrName, pBstrDocString, pdwHelpContext, pBstrHelpFile);
        if (name != null && pBstrName[0] != 0) {
            size = COM.SysStringByteLen(pBstrName[0]);
            if (size > 0) {
                buffer = new char[(size + 1) / 2];
                COM.MoveMemory(buffer, pBstrName[0], size);
                name[0] = new String(buffer);
                subindex = name[0].indexOf("\u0000");
                if (subindex > 0) {
                    name[0] = name[0].substring(0, subindex);
                }
            }
            COM.SysFreeString(pBstrName[0]);
        }
        if (docString != null && pBstrDocString[0] != 0) {
            size = COM.SysStringByteLen(pBstrDocString[0]);
            if (size > 0) {
                buffer = new char[(size + 1) / 2];
                COM.MoveMemory(buffer, pBstrDocString[0], size);
                docString[0] = new String(buffer);
                subindex = docString[0].indexOf("\u0000");
                if (subindex > 0) {
                    docString[0] = docString[0].substring(0, subindex);
                }
            }
            COM.SysFreeString(pBstrDocString[0]);
        }
        if (helpFile != null && pBstrHelpFile[0] != 0) {
            size = COM.SysStringByteLen(pBstrHelpFile[0]);
            if (size > 0) {
                buffer = new char[(size + 1) / 2];
                COM.MoveMemory(buffer, pBstrHelpFile[0], size);
                helpFile[0] = new String(buffer);
                subindex = helpFile[0].indexOf("\u0000");
                if (subindex > 0) {
                    helpFile[0] = helpFile[0].substring(0, subindex);
                }
            }
            COM.SysFreeString(pBstrHelpFile[0]);
        }
        return rc;
    }

    public int GetFuncDesc(int index, int[] ppFuncDesc) {
        return COM.VtblCall(5, this.address, index, ppFuncDesc);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public int GetIDsOfNames(String[] rgszNames, int cNames, int[] pMemId) {
        size = rgszNames.length;
        hHeap = OS.GetProcessHeap();
        ppNames = OS.HeapAlloc(hHeap, 8, size * OS.PTR_SIZEOF);
        memTracker = new int[size];
        try {
            i = 0;
            while (i < size) {
                nameSize = rgszNames[i].length();
                buffer = new char[nameSize + 1];
                rgszNames[i].getChars(0, nameSize, buffer, 0);
                pName = OS.HeapAlloc(hHeap, 8, buffer.length * 2);
                OS.MoveMemory(pName, buffer, buffer.length * 2);
                COM.MoveMemory(ppNames + OS.PTR_SIZEOF * i, new int[]{pName}, OS.PTR_SIZEOF);
                memTracker[i] = pName;
                ++i;
            }
            var13_12 = COM.VtblCall(10, this.address, ppNames, cNames, pMemId);
            return var13_12;
        }
        finally {
            i = 0;
            ** while (i < memTracker.length)
        }
lbl-1000:
        // 1 sources

        {
            OS.HeapFree(hHeap, 0, memTracker[i]);
            ++i;
            continue;
        }
lbl26:
        // 1 sources

        OS.HeapFree(hHeap, 0, ppNames);
        return var13_12;
    }

    public int GetImplTypeFlags(int index, int[] pImplTypeFlags) {
        return COM.VtblCall(9, this.address, index, pImplTypeFlags);
    }

    public int GetNames(int memid, String[] names, int cMaxNames, int[] pcNames) {
        int nameSize = names.length;
        int[] rgBstrNames = new int[nameSize];
        int rc = COM.VtblCall(7, this.address, memid, rgBstrNames, nameSize, pcNames);
        if (rc == 0) {
            int i = 0;
            while (i < pcNames[0]) {
                int size = COM.SysStringByteLen(rgBstrNames[i]);
                if (size > 0) {
                    char[] buffer = new char[(size + 1) / 2];
                    COM.MoveMemory(buffer, rgBstrNames[i], size);
                    names[i] = new String(buffer);
                    int subindex = names[i].indexOf("\u0000");
                    if (subindex > 0) {
                        names[i] = names[i].substring(0, subindex);
                    }
                }
                COM.SysFreeString(rgBstrNames[i]);
                ++i;
            }
        }
        return rc;
    }

    public int GetRefTypeInfo(int hRefType, int[] ppTInfo) {
        return COM.VtblCall(14, this.address, hRefType, ppTInfo);
    }

    public int GetRefTypeOfImplType(int index, int[] pRefType) {
        return COM.VtblCall(8, this.address, index, pRefType);
    }

    public int GetTypeAttr(int[] ppTypeAttr) {
        return COM.VtblCall(3, this.address, ppTypeAttr);
    }

    public int GetVarDesc(int index, int[] ppVarDesc) {
        return COM.VtblCall(6, this.address, index, ppVarDesc);
    }

    public int ReleaseFuncDesc(int pFuncDesc) {
        return COM.VtblCall(20, this.address, pFuncDesc);
    }

    public int ReleaseTypeAttr(int pTypeAttr) {
        return COM.VtblCall(19, this.address, pTypeAttr);
    }

    public int ReleaseVarDesc(int pVarDesc) {
        return COM.VtblCall(21, this.address, pVarDesc);
    }
}

