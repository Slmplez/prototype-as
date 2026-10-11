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

public class HTMLTransfer
extends ByteArrayTransfer {
    static HTMLTransfer _instance = new HTMLTransfer();
    static final String HTML_FORMAT = "HTML Format";
    static final int HTML_FORMATID = HTMLTransfer.registerType("HTML Format");
    static final String NUMBER = "00000000";
    static final String HEADER = "Version:0.9\r\nStartHTML:00000000\r\nEndHTML:00000000\r\nStartFragment:00000000\r\nEndFragment:00000000\r\n";
    static final String PREFIX = "<html><body><!--StartFragment-->";
    static final String SUFFIX = "<!--EndFragment--></body></html>";
    static final String StartFragment = "StartFragment:";
    static final String EndFragment = "EndFragment:";

    private HTMLTransfer() {
    }

    public static HTMLTransfer getInstance() {
        return _instance;
    }

    public void javaToNative(Object object, TransferData transferData) {
        if (!this.checkHTML(object) || !this.isSupportedType(transferData)) {
            DND.error(2003);
        }
        String string = (String)object;
        int count = string.length();
        char[] chars = new char[count + 1];
        string.getChars(0, count, chars, 0);
        int cchMultiByte = OS.WideCharToMultiByte(65001, 0, chars, -1, null, 0, null, null);
        if (cchMultiByte == 0) {
            transferData.stgmedium = new STGMEDIUM();
            transferData.result = -2147221402;
            return;
        }
        int startHTML = HEADER.length();
        int startFragment = startHTML + PREFIX.length();
        int endFragment = startFragment + cchMultiByte - 1;
        int endHTML = endFragment + SUFFIX.length();
        StringBuffer buffer = new StringBuffer(HEADER);
        int maxLength = NUMBER.length();
        int start = buffer.toString().indexOf(NUMBER);
        String temp = Integer.toString(startHTML);
        buffer.replace(start + maxLength - temp.length(), start + maxLength, temp);
        start = buffer.toString().indexOf(NUMBER, start);
        temp = Integer.toString(endHTML);
        buffer.replace(start + maxLength - temp.length(), start + maxLength, temp);
        start = buffer.toString().indexOf(NUMBER, start);
        temp = Integer.toString(startFragment);
        buffer.replace(start + maxLength - temp.length(), start + maxLength, temp);
        start = buffer.toString().indexOf(NUMBER, start);
        temp = Integer.toString(endFragment);
        buffer.replace(start + maxLength - temp.length(), start + maxLength, temp);
        buffer.append(PREFIX);
        buffer.append(string);
        buffer.append(SUFFIX);
        count = buffer.length();
        chars = new char[count + 1];
        buffer.getChars(0, count, chars, 0);
        cchMultiByte = OS.WideCharToMultiByte(65001, 0, chars, -1, null, 0, null, null);
        int lpMultiByteStr = OS.GlobalAlloc(64, cchMultiByte);
        OS.WideCharToMultiByte(65001, 0, chars, -1, lpMultiByteStr, cchMultiByte, null, null);
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
            String s;
            char[] lpWideCharStr;
            int cchWideChar;
            block25: {
                int fragmentEnd;
                int fragmentStart;
                int lpMultiByteStr;
                block24: {
                    block23: {
                        lpMultiByteStr = OS.GlobalLock(hMem);
                        if (lpMultiByteStr == 0) {
                            return null;
                        }
                        cchWideChar = OS.MultiByteToWideChar(65001, 0, lpMultiByteStr, -1, null, 0);
                        if (cchWideChar != 0) break block23;
                        OS.GlobalUnlock(hMem);
                        return null;
                    }
                    try {
                        int end;
                        lpWideCharStr = new char[cchWideChar - 1];
                        OS.MultiByteToWideChar(65001, 0, lpMultiByteStr, -1, lpWideCharStr, lpWideCharStr.length);
                        String string = new String(lpWideCharStr);
                        fragmentStart = 0;
                        fragmentEnd = 0;
                        int start = string.indexOf(StartFragment) + StartFragment.length();
                        for (end = start + 1; end < string.length(); ++end) {
                            s = string.substring(start, end);
                            try {
                                fragmentStart = Integer.parseInt(s);
                                continue;
                            }
                            catch (NumberFormatException numberFormatException) {
                                break;
                            }
                        }
                        start = string.indexOf(EndFragment) + EndFragment.length();
                        for (end = start + 1; end < string.length(); ++end) {
                            s = string.substring(start, end);
                            try {
                                fragmentEnd = Integer.parseInt(s);
                                continue;
                            }
                            catch (NumberFormatException numberFormatException) {
                                break;
                            }
                        }
                        if (fragmentEnd > fragmentStart && fragmentEnd <= OS.strlen(lpMultiByteStr)) break block24;
                    }
                    catch (Throwable throwable) {
                        OS.GlobalUnlock(hMem);
                        throw throwable;
                    }
                    OS.GlobalUnlock(hMem);
                    return null;
                }
                cchWideChar = OS.MultiByteToWideChar(65001, 0, lpMultiByteStr + fragmentStart, fragmentEnd - fragmentStart, lpWideCharStr, lpWideCharStr.length);
                if (cchWideChar != 0) break block25;
                OS.GlobalUnlock(hMem);
                return null;
            }
            s = new String(lpWideCharStr, 0, cchWideChar);
            String foxStart = "<!--StartFragment -->\r\n";
            int prefix = s.indexOf(foxStart);
            if (prefix != -1) {
                s = s.substring(prefix += foxStart.length());
            }
            String string = s;
            OS.GlobalUnlock(hMem);
            return string;
        }
        finally {
            OS.GlobalFree(hMem);
        }
    }

    protected int[] getTypeIds() {
        return new int[]{HTML_FORMATID};
    }

    protected String[] getTypeNames() {
        return new String[]{HTML_FORMAT};
    }

    boolean checkHTML(Object object) {
        return object != null && object instanceof String && ((String)object).length() > 0;
    }

    protected boolean validate(Object object) {
        return this.checkHTML(object);
    }
}

