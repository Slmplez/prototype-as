/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.dnd;

import org.eclipse.swt.dnd.ByteArrayTransfer;
import org.eclipse.swt.dnd.DND;
import org.eclipse.swt.dnd.TransferData;
import org.eclipse.swt.internal.ole.win32.IDataObject;
import org.eclipse.swt.internal.ole.win32.STGMEDIUM;
import org.eclipse.swt.internal.win32.OS;

public class URLTransfer
extends ByteArrayTransfer {
    static URLTransfer _instance = new URLTransfer();
    static final String CFSTR_INETURLW = "UniformResourceLocatorW";
    static final int CFSTR_INETURLIDW = URLTransfer.registerType("UniformResourceLocatorW");
    static final String CFSTR_INETURL = "UniformResourceLocator";
    static final int CFSTR_INETURLID = URLTransfer.registerType("UniformResourceLocator");

    private URLTransfer() {
    }

    public static URLTransfer getInstance() {
        return _instance;
    }

    public void javaToNative(Object object, TransferData transferData) {
        if (!this.checkURL(object) || !this.isSupportedType(transferData)) {
            DND.error(2003);
        }
        transferData.result = -2147467259;
        String url = (String)object;
        if (transferData.type == CFSTR_INETURLIDW) {
            int charCount = url.length();
            char[] chars = new char[charCount + 1];
            url.getChars(0, charCount, chars, 0);
            int byteCount = chars.length * 2;
            int newPtr = OS.GlobalAlloc(64, byteCount);
            OS.MoveMemory(newPtr, chars, byteCount);
            transferData.stgmedium = new STGMEDIUM();
            transferData.stgmedium.tymed = 1;
            transferData.stgmedium.unionField = newPtr;
            transferData.stgmedium.pUnkForRelease = 0;
            transferData.result = 0;
        } else if (transferData.type == CFSTR_INETURLID) {
            int count = url.length();
            char[] chars = new char[count + 1];
            url.getChars(0, count, chars, 0);
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

    /*
     * Unable to fully structure code
     */
    public Object nativeToJava(TransferData transferData) {
        block22: {
            if (!this.isSupportedType(transferData) || transferData.pIDataObject == 0) {
                return null;
            }
            data = new IDataObject(transferData.pIDataObject);
            data.AddRef();
            stgmedium = new STGMEDIUM();
            formatetc = transferData.formatetc;
            stgmedium.tymed = 1;
            transferData.result = this.getData(data, formatetc, stgmedium);
            data.Release();
            if (transferData.result != 0) {
                return null;
            }
            hMem = stgmedium.unionField;
            if (transferData.type == URLTransfer.CFSTR_INETURLIDW) {
                size = OS.GlobalSize(hMem) / 2 * 2;
                if (size == 0) {
                    return null;
                }
                chars = new char[size / 2];
                ptr = OS.GlobalLock(hMem);
                if (ptr == 0) {
                    return null;
                }
                try {
                    OS.MoveMemory(chars, ptr, size);
                    length = chars.length;
                    i = 0;
                    while (i < chars.length) {
                        if (chars[i] == '\u0000') {
                            length = i;
                            break;
                        }
                        ++i;
                    }
                    var12_16 = new String(chars, 0, length);
                    return var12_16;
                }
                finally {
                    OS.GlobalUnlock(hMem);
                }
            }
            if (transferData.type != URLTransfer.CFSTR_INETURLID) break block22;
            lpMultiByteStr = OS.GlobalLock(hMem);
            if (lpMultiByteStr != 0) ** GOTO lbl-1000
            return null;
lbl-1000:
            // 1 sources

            {
                codePage = OS.GetACP();
                cchWideChar = OS.MultiByteToWideChar(codePage, 1, lpMultiByteStr, -1, null, 0);
                if (cchWideChar != 0) ** break block23
                OS.GlobalUnlock(hMem);
            }
            return null;
            {
                lpWideCharStr = new char[cchWideChar - 1];
                OS.MultiByteToWideChar(codePage, 1, lpMultiByteStr, -1, lpWideCharStr, lpWideCharStr.length);
                var11_18 = new String(lpWideCharStr);
                OS.GlobalUnlock(hMem);
            }
            return var11_18;
            {
                catch (Throwable var10_15) {
                    OS.GlobalUnlock(hMem);
                    throw var10_15;
                }
            }
            finally {
                OS.GlobalFree(hMem);
            }
        }
        return null;
    }

    protected int[] getTypeIds() {
        return new int[]{CFSTR_INETURLIDW, CFSTR_INETURLID};
    }

    protected String[] getTypeNames() {
        return new String[]{CFSTR_INETURLW, CFSTR_INETURL};
    }

    boolean checkURL(Object object) {
        return object != null && object instanceof String && ((String)object).length() > 0;
    }

    protected boolean validate(Object object) {
        return this.checkURL(object);
    }
}

