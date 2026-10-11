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

public class TextTransfer
extends ByteArrayTransfer {
    private static TextTransfer _instance = new TextTransfer();
    private static final String CF_UNICODETEXT = "CF_UNICODETEXT";
    private static final String CF_TEXT = "CF_TEXT";
    private static final int CF_UNICODETEXTID = 13;
    private static final int CF_TEXTID = 1;

    private TextTransfer() {
    }

    public static TextTransfer getInstance() {
        return _instance;
    }

    public void javaToNative(Object object, TransferData transferData) {
        if (!this.checkText(object) || !this.isSupportedType(transferData)) {
            DND.error(2003);
        }
        transferData.result = -2147467259;
        String string = (String)object;
        switch (transferData.type) {
            case 13: {
                int charCount = string.length();
                char[] chars = new char[charCount + 1];
                string.getChars(0, charCount, chars, 0);
                int byteCount = chars.length * 2;
                int newPtr = OS.GlobalAlloc(64, byteCount);
                OS.MoveMemory(newPtr, chars, byteCount);
                transferData.stgmedium = new STGMEDIUM();
                transferData.stgmedium.tymed = 1;
                transferData.stgmedium.unionField = newPtr;
                transferData.stgmedium.pUnkForRelease = 0;
                transferData.result = 0;
                break;
            }
            case 1: {
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
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public Object nativeToJava(TransferData transferData) {
        if (!this.isSupportedType(transferData)) return null;
        if (transferData.pIDataObject == 0) {
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
        try {
            switch (transferData.type) {
                case 13: {
                    int size = OS.GlobalSize(hMem) / 2 * 2;
                    if (size == 0) {
                        return null;
                    }
                    char[] chars = new char[size / 2];
                    int ptr = OS.GlobalLock(hMem);
                    if (ptr == 0) {
                        return null;
                    }
                    try {
                        OS.MoveMemory(chars, ptr, size);
                        int length = chars.length;
                        int i = 0;
                        while (i < chars.length) {
                            if (chars[i] == '\u0000') {
                                length = i;
                                break;
                            }
                            ++i;
                        }
                        String string = new String(chars, 0, length);
                        return string;
                    }
                    finally {
                        OS.GlobalUnlock(hMem);
                    }
                }
                case 1: {
                    int lpMultiByteStr = OS.GlobalLock(hMem);
                    if (lpMultiByteStr == 0) {
                        return null;
                    }
                    try {
                        int codePage = OS.GetACP();
                        int cchWideChar = OS.MultiByteToWideChar(codePage, 1, lpMultiByteStr, -1, null, 0);
                        if (cchWideChar == 0) {
                            return null;
                        }
                        char[] lpWideCharStr = new char[cchWideChar - 1];
                        OS.MultiByteToWideChar(codePage, 1, lpMultiByteStr, -1, lpWideCharStr, lpWideCharStr.length);
                        String string = new String(lpWideCharStr);
                        return string;
                    }
                    finally {
                        OS.GlobalUnlock(hMem);
                    }
                }
            }
            return null;
        }
        finally {
            OS.GlobalFree(hMem);
        }
    }

    protected int[] getTypeIds() {
        return new int[]{13, 1};
    }

    protected String[] getTypeNames() {
        return new String[]{CF_UNICODETEXT, CF_TEXT};
    }

    boolean checkText(Object object) {
        return object != null && object instanceof String && ((String)object).length() > 0;
    }

    protected boolean validate(Object object) {
        return this.checkText(object);
    }
}

