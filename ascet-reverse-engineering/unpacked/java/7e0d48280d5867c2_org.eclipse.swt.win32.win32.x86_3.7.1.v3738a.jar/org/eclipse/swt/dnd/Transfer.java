/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.dnd;

import org.eclipse.swt.dnd.TransferData;
import org.eclipse.swt.internal.ole.win32.FORMATETC;
import org.eclipse.swt.internal.ole.win32.IDataObject;
import org.eclipse.swt.internal.ole.win32.STGMEDIUM;
import org.eclipse.swt.internal.win32.MSG;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.TCHAR;

public abstract class Transfer {
    private static final int RETRY_LIMIT = 10;

    int getData(IDataObject dataObject, FORMATETC pFormatetc, STGMEDIUM pmedium) {
        if (dataObject.GetData(pFormatetc, pmedium) == 0) {
            return 0;
        }
        try {
            Thread.sleep(50L);
        }
        catch (Throwable throwable) {}
        int result = dataObject.GetData(pFormatetc, pmedium);
        int retryCount = 0;
        while (result != 0 && retryCount++ < 10) {
            MSG msg = new MSG();
            OS.PeekMessage(msg, 0, 0, 0, 2);
            try {
                Thread.sleep(50L);
            }
            catch (Throwable throwable) {}
            result = dataObject.GetData(pFormatetc, pmedium);
        }
        return result;
    }

    public abstract TransferData[] getSupportedTypes();

    public abstract boolean isSupportedType(TransferData var1);

    protected abstract int[] getTypeIds();

    protected abstract String[] getTypeNames();

    protected abstract void javaToNative(Object var1, TransferData var2);

    protected abstract Object nativeToJava(TransferData var1);

    public static int registerType(String formatName) {
        TCHAR chFormatName = new TCHAR(0, formatName, true);
        return OS.RegisterClipboardFormat(chFormatName);
    }

    protected boolean validate(Object object) {
        return true;
    }
}

