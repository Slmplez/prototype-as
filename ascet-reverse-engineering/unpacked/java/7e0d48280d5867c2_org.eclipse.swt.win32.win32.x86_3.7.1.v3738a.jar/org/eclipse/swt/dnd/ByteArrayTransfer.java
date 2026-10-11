/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.dnd;

import org.eclipse.swt.dnd.DND;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.dnd.TransferData;
import org.eclipse.swt.internal.ole.win32.FORMATETC;
import org.eclipse.swt.internal.ole.win32.IDataObject;
import org.eclipse.swt.internal.ole.win32.STGMEDIUM;
import org.eclipse.swt.internal.win32.OS;

public abstract class ByteArrayTransfer
extends Transfer {
    public TransferData[] getSupportedTypes() {
        int[] types = this.getTypeIds();
        TransferData[] data = new TransferData[types.length];
        int i = 0;
        while (i < types.length) {
            data[i] = new TransferData();
            data[i].type = types[i];
            data[i].formatetc = new FORMATETC();
            data[i].formatetc.cfFormat = types[i];
            data[i].formatetc.dwAspect = 1;
            data[i].formatetc.lindex = -1;
            data[i].formatetc.tymed = 1;
            ++i;
        }
        return data;
    }

    public boolean isSupportedType(TransferData transferData) {
        if (transferData == null) {
            return false;
        }
        int[] types = this.getTypeIds();
        int i = 0;
        while (i < types.length) {
            FORMATETC format = transferData.formatetc;
            if (format.cfFormat == types[i] && (format.dwAspect & 1) == 1 && (format.tymed & 1) == 1) {
                return true;
            }
            ++i;
        }
        return false;
    }

    protected void javaToNative(Object object, TransferData transferData) {
        if (!this.checkByteArray(object) || !this.isSupportedType(transferData)) {
            DND.error(2003);
        }
        byte[] data = (byte[])object;
        int size = data.length;
        int newPtr = OS.GlobalAlloc(64, size);
        OS.MoveMemory(newPtr, data, size);
        transferData.stgmedium = new STGMEDIUM();
        transferData.stgmedium.tymed = 1;
        transferData.stgmedium.unionField = newPtr;
        transferData.stgmedium.pUnkForRelease = 0;
        transferData.result = 0;
    }

    protected Object nativeToJava(TransferData transferData) {
        if (!this.isSupportedType(transferData) || transferData.pIDataObject == 0) {
            return null;
        }
        IDataObject data = new IDataObject(transferData.pIDataObject);
        data.AddRef();
        FORMATETC formatetc = transferData.formatetc;
        STGMEDIUM stgmedium = new STGMEDIUM();
        stgmedium.tymed = 1;
        transferData.result = this.getData(data, formatetc, stgmedium);
        data.Release();
        if (transferData.result != 0) {
            return null;
        }
        int hMem = stgmedium.unionField;
        int size = OS.GlobalSize(hMem);
        byte[] buffer = new byte[size];
        int ptr = OS.GlobalLock(hMem);
        OS.MoveMemory(buffer, ptr, size);
        OS.GlobalUnlock(hMem);
        OS.GlobalFree(hMem);
        return buffer;
    }

    boolean checkByteArray(Object object) {
        return object != null && object instanceof byte[] && ((byte[])object).length > 0;
    }
}

