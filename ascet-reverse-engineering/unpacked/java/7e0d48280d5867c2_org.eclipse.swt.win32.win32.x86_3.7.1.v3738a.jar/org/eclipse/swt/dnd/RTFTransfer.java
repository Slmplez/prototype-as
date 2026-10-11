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
import org.eclipse.swt.internal.win32.OS;

public class RTFTransfer
extends ByteArrayTransfer {
    private static RTFTransfer _instance = new RTFTransfer();
    private static final String CF_RTF = "Rich Text Format";
    private static final int CF_RTFID = RTFTransfer.registerType("Rich Text Format");

    private RTFTransfer() {
    }

    public static RTFTransfer getInstance() {
        return _instance;
    }

    public void javaToNative(Object object, TransferData transferData) {
        if (!this.checkRTF(object) || !this.isSupportedType(transferData)) {
            DND.error(2003);
        }
        String string = (String)object;
        int count = string.length();
        char[] chars = new char[count + 1];
        string.getChars(0, count, chars, 0);
        int codePage = OS.GetACP();
        int cchMultiByte = OS.WideCharToMultiByte(codePage, 0, chars, -1, null, 0, null, null);
        if (cchMultiByte == 0) {
            transferData.stgmedium = new STGMEDIUM();
            transferData.result = -2147221402;
            return;
        }
        int lpMultiByteStr = OS.GlobalAlloc(64, cchMultiByte);
        OS.WideCharToMultiByte(codePage, 0, chars, -1, lpMultiByteStr, cchMultiByte, null, null);
        transferData.stgmedium = new STGMEDIUM();
        transferData.stgmedium.tymed = 1;
        transferData.stgmedium.unionField = lpMultiByteStr;
        transferData.stgmedium.pUnkForRelease = 0;
        transferData.result = 0;
    }

    public Object nativeToJava(TransferData transferData) {
        if (!this.isSupportedType(transferData) || transferData.pIDataObject == 0) {
            return null;
        }
        IDataObject data = new IDataObject(transferData.pIDataObject);
        data.AddRef();
        STGMEDIUM stgmedium = new STGMEDIUM();
        FORMATETC formatetc = transferData.formatetc;
        stgmedium.tymed = 1;
        transferData.result = this.getData(data, formatetc, stgmedium);
        data.Release();
        if (transferData.result != 0) {
            return null;
        }
        int hMem = stgmedium.unionField;
        try {
            int cchWideChar;
            int codePage;
            int lpMultiByteStr;
            block12: {
                lpMultiByteStr = OS.GlobalLock(hMem);
                if (lpMultiByteStr == 0) {
                    return null;
                }
                try {
                    codePage = OS.GetACP();
                    cchWideChar = OS.MultiByteToWideChar(codePage, 1, lpMultiByteStr, -1, null, 0);
                    if (cchWideChar != 0) break block12;
                }
                catch (Throwable throwable) {
                    OS.GlobalUnlock(hMem);
                    throw throwable;
                }
                OS.GlobalUnlock(hMem);
                return null;
            }
            char[] lpWideCharStr = new char[cchWideChar - 1];
            OS.MultiByteToWideChar(codePage, 1, lpMultiByteStr, -1, lpWideCharStr, lpWideCharStr.length);
            String string = new String(lpWideCharStr);
            OS.GlobalUnlock(hMem);
            return string;
        }
        finally {
            OS.GlobalFree(hMem);
        }
    }

    protected int[] getTypeIds() {
        return new int[]{CF_RTFID};
    }

    protected String[] getTypeNames() {
        return new String[]{CF_RTF};
    }

    boolean checkRTF(Object object) {
        return object != null && object instanceof String && ((String)object).length() > 0;
    }

    protected boolean validate(Object object) {
        return this.checkRTF(object);
    }
}

