/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.dnd;

import org.eclipse.swt.dnd.ByteArrayTransfer;
import org.eclipse.swt.dnd.DND;
import org.eclipse.swt.dnd.TransferData;
import org.eclipse.swt.internal.ole.win32.FORMATETC;
import org.eclipse.swt.internal.ole.win32.IDataObject;
import org.eclipse.swt.internal.ole.win32.STGMEDIUM;
import org.eclipse.swt.internal.win32.DROPFILES;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.TCHAR;

public class FileTransfer
extends ByteArrayTransfer {
    private static FileTransfer _instance = new FileTransfer();
    private static final String CF_HDROP = "CF_HDROP ";
    private static final int CF_HDROPID = 15;
    private static final String CF_HDROP_SEPARATOR = "\u0000";

    private FileTransfer() {
    }

    public static FileTransfer getInstance() {
        return _instance;
    }

    public void javaToNative(Object object, TransferData transferData) {
        if (!this.checkFile(object) || !this.isSupportedType(transferData)) {
            DND.error(2003);
        }
        String[] fileNames = (String[])object;
        StringBuffer allFiles = new StringBuffer();
        int i = 0;
        while (i < fileNames.length) {
            allFiles.append(fileNames[i]);
            allFiles.append(CF_HDROP_SEPARATOR);
            ++i;
        }
        TCHAR buffer = new TCHAR(0, allFiles.toString(), true);
        DROPFILES dropfiles = new DROPFILES();
        dropfiles.pFiles = DROPFILES.sizeof;
        dropfiles.pt_y = 0;
        dropfiles.pt_x = 0;
        dropfiles.fNC = 0;
        dropfiles.fWide = OS.IsUnicode ? 1 : 0;
        int byteCount = buffer.length() * TCHAR.sizeof;
        int newPtr = OS.GlobalAlloc(64, DROPFILES.sizeof + byteCount);
        OS.MoveMemory(newPtr, dropfiles, DROPFILES.sizeof);
        OS.MoveMemory(newPtr + DROPFILES.sizeof, buffer, byteCount);
        transferData.stgmedium = new STGMEDIUM();
        transferData.stgmedium.tymed = 1;
        transferData.stgmedium.unionField = newPtr;
        transferData.stgmedium.pUnkForRelease = 0;
        transferData.result = 0;
    }

    public Object nativeToJava(TransferData transferData) {
        if (!this.isSupportedType(transferData) || transferData.pIDataObject == 0) {
            return null;
        }
        IDataObject dataObject = new IDataObject(transferData.pIDataObject);
        dataObject.AddRef();
        FORMATETC formatetc = new FORMATETC();
        formatetc.cfFormat = 15;
        formatetc.ptd = 0;
        formatetc.dwAspect = 1;
        formatetc.lindex = -1;
        formatetc.tymed = 1;
        STGMEDIUM stgmedium = new STGMEDIUM();
        stgmedium.tymed = 1;
        transferData.result = this.getData(dataObject, formatetc, stgmedium);
        dataObject.Release();
        if (transferData.result != 0) {
            return null;
        }
        int count = OS.DragQueryFile(stgmedium.unionField, -1, null, 0);
        String[] fileNames = new String[count];
        int i = 0;
        while (i < count) {
            int size = OS.DragQueryFile(stgmedium.unionField, i, null, 0) + 1;
            TCHAR lpszFile = new TCHAR(0, size);
            OS.DragQueryFile(stgmedium.unionField, i, lpszFile, size);
            fileNames[i] = lpszFile.toString(0, lpszFile.strlen());
            ++i;
        }
        OS.DragFinish(stgmedium.unionField);
        return fileNames;
    }

    protected int[] getTypeIds() {
        return new int[]{15};
    }

    protected String[] getTypeNames() {
        return new String[]{CF_HDROP};
    }

    boolean checkFile(Object object) {
        if (object == null || !(object instanceof String[]) || ((String[])object).length == 0) {
            return false;
        }
        String[] strings = (String[])object;
        int i = 0;
        while (i < strings.length) {
            if (strings[i] == null || strings[i].length() == 0) {
                return false;
            }
            ++i;
        }
        return true;
    }

    protected boolean validate(Object object) {
        return this.checkFile(object);
    }
}

