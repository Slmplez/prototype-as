/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.dnd;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.COMObject;
import org.eclipse.swt.internal.ole.win32.FORMATETC;
import org.eclipse.swt.internal.ole.win32.GUID;
import org.eclipse.swt.internal.win32.OS;

final class OleEnumFORMATETC {
    private COMObject iUnknown;
    private COMObject iEnumFORMATETC;
    private int refCount;
    private int index;
    private FORMATETC[] formats;

    OleEnumFORMATETC() {
        this.createCOMInterfaces();
    }

    int AddRef() {
        ++this.refCount;
        return this.refCount;
    }

    private void createCOMInterfaces() {
        int[] nArray = new int[3];
        nArray[0] = 2;
        this.iUnknown = new COMObject(nArray){

            public int method0(int[] args) {
                return OleEnumFORMATETC.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return OleEnumFORMATETC.this.AddRef();
            }

            public int method2(int[] args) {
                return OleEnumFORMATETC.this.Release();
            }
        };
        int[] nArray2 = new int[7];
        nArray2[0] = 2;
        nArray2[3] = 3;
        nArray2[4] = 1;
        nArray2[6] = 1;
        this.iEnumFORMATETC = new COMObject(nArray2){

            public int method0(int[] args) {
                return OleEnumFORMATETC.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return OleEnumFORMATETC.this.AddRef();
            }

            public int method2(int[] args) {
                return OleEnumFORMATETC.this.Release();
            }

            public int method3(int[] args) {
                return OleEnumFORMATETC.this.Next(args[0], args[1], args[2]);
            }

            public int method4(int[] args) {
                return OleEnumFORMATETC.this.Skip(args[0]);
            }

            public int method5(int[] args) {
                return OleEnumFORMATETC.this.Reset();
            }
        };
    }

    private void disposeCOMInterfaces() {
        if (this.iUnknown != null) {
            this.iUnknown.dispose();
        }
        this.iUnknown = null;
        if (this.iEnumFORMATETC != null) {
            this.iEnumFORMATETC.dispose();
        }
        this.iEnumFORMATETC = null;
    }

    int getAddress() {
        return this.iEnumFORMATETC.getAddress();
    }

    private FORMATETC[] getNextItems(int numItems) {
        if (this.formats == null || numItems < 1) {
            return null;
        }
        int endIndex = this.index + numItems - 1;
        if (endIndex > this.formats.length - 1) {
            endIndex = this.formats.length - 1;
        }
        if (this.index > endIndex) {
            return null;
        }
        FORMATETC[] items = new FORMATETC[endIndex - this.index + 1];
        int i = 0;
        while (i < items.length) {
            items[i] = this.formats[this.index];
            ++this.index;
            ++i;
        }
        return items;
    }

    private int Next(int celt, int rgelt, int pceltFetched) {
        if (rgelt == 0) {
            return -2147024809;
        }
        if (pceltFetched == 0 && celt != 1) {
            return -2147024809;
        }
        FORMATETC[] nextItems = this.getNextItems(celt);
        if (nextItems != null) {
            int i = 0;
            while (i < nextItems.length) {
                COM.MoveMemory(rgelt + i * FORMATETC.sizeof, nextItems[i], FORMATETC.sizeof);
                ++i;
            }
            if (pceltFetched != 0) {
                COM.MoveMemory(pceltFetched, new int[]{nextItems.length}, 4);
            }
            if (nextItems.length == celt) {
                return 0;
            }
        } else {
            if (pceltFetched != 0) {
                COM.MoveMemory(pceltFetched, new int[1], 4);
            }
            COM.MoveMemory(rgelt, new FORMATETC(), FORMATETC.sizeof);
        }
        return 1;
    }

    private int QueryInterface(int riid, int ppvObject) {
        if (riid == 0 || ppvObject == 0) {
            return -2147467262;
        }
        GUID guid = new GUID();
        COM.MoveMemory(guid, riid, GUID.sizeof);
        if (COM.IsEqualGUID(guid, COM.IIDIUnknown)) {
            COM.MoveMemory(ppvObject, new int[]{this.iUnknown.getAddress()}, OS.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (COM.IsEqualGUID(guid, COM.IIDIEnumFORMATETC)) {
            COM.MoveMemory(ppvObject, new int[]{this.iEnumFORMATETC.getAddress()}, OS.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        COM.MoveMemory(ppvObject, new int[1], OS.PTR_SIZEOF);
        return -2147467262;
    }

    int Release() {
        --this.refCount;
        if (this.refCount == 0) {
            this.disposeCOMInterfaces();
            if (COM.FreeUnusedLibraries) {
                COM.CoFreeUnusedLibraries();
            }
        }
        return this.refCount;
    }

    private int Reset() {
        this.index = 0;
        return 0;
    }

    void setFormats(FORMATETC[] newFormats) {
        this.formats = newFormats;
        this.index = 0;
    }

    private int Skip(int celt) {
        if (celt < 1) {
            return -2147024809;
        }
        this.index += celt;
        if (this.index > this.formats.length - 1) {
            this.index = this.formats.length - 1;
            return 1;
        }
        return 0;
    }
}

