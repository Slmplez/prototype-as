/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.DISPPARAMS;
import org.eclipse.swt.internal.ole.win32.EXCEPINFO;
import org.eclipse.swt.internal.ole.win32.GUID;
import org.eclipse.swt.internal.ole.win32.IUnknown;
import org.eclipse.swt.internal.win32.OS;

public class IDispatch
extends IUnknown {
    public IDispatch(int address) {
        super(address);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public int GetIDsOfNames(GUID riid, String[] rgszNames, int cNames, int lcid, int[] rgDispId) {
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
            var15_14 = COM.VtblCall(5, this.address, new GUID(), ppNames, cNames, lcid, rgDispId);
            return var15_14;
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
        return var15_14;
    }

    public int GetTypeInfo(int iTInfo, int lcid, int[] ppTInfo) {
        return COM.VtblCall(4, this.address, iTInfo, lcid, ppTInfo);
    }

    public int GetTypeInfoCount(int[] pctinfo) {
        return COM.VtblCall(3, this.address, pctinfo);
    }

    public int Invoke(int dispIdMember, GUID riid, int lcid, int dwFlags, DISPPARAMS pDispParams, int pVarResult, EXCEPINFO pExcepInfo, int[] pArgErr) {
        return COM.VtblCall(6, this.address, dispIdMember, riid, lcid, dwFlags, pDispParams, pVarResult, pExcepInfo, pArgErr);
    }
}

