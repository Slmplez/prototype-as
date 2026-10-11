/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.dnd;

import org.eclipse.swt.internal.ole.win32.FORMATETC;
import org.eclipse.swt.internal.ole.win32.STGMEDIUM;

public class TransferData {
    public int type;
    public FORMATETC formatetc;
    public STGMEDIUM stgmedium;
    public int result = -2147467259;
    public int pIDataObject;

    static boolean sameType(TransferData data1, TransferData data2) {
        if (data1 == data2) {
            return true;
        }
        if (data1 == null || data2 == null) {
            return false;
        }
        return data1.type == data2.type && data1.formatetc.cfFormat == data2.formatetc.cfFormat && data1.formatetc.dwAspect == data2.formatetc.dwAspect && data1.formatetc.tymed == data2.formatetc.tymed;
    }
}

