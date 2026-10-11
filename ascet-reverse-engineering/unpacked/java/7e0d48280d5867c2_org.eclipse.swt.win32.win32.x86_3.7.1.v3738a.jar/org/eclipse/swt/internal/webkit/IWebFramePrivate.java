/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.webkit;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IUnknown;

public class IWebFramePrivate
extends IUnknown {
    public IWebFramePrivate(int address) {
        super(address);
    }

    public int setInPrintingMode(int value, int printDC) {
        return COM.VtblCall(8, this.getAddress(), value, printDC);
    }

    public int getPrintedPageCount(int printDC, int[] pageCount) {
        return COM.VtblCall(9, this.getAddress(), printDC, pageCount);
    }

    public int spoolPages(int printDC, int startPage, int endPage, int[] ctx) {
        return COM.VtblCall(10, this.getAddress(), printDC, startPage, endPage, ctx);
    }
}

