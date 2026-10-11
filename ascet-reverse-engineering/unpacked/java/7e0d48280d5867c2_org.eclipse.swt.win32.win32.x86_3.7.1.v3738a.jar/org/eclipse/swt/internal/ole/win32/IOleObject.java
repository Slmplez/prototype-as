/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IUnknown;
import org.eclipse.swt.internal.win32.MSG;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.SIZE;

public class IOleObject
extends IUnknown {
    public IOleObject(int address) {
        super(address);
    }

    public int Advise(int pAdvSink, int[] pdwConnection) {
        return COM.VtblCall(19, this.address, pAdvSink, pdwConnection);
    }

    public int Close(int dwSaveOption) {
        return COM.VtblCall(6, this.address, dwSaveOption);
    }

    public int DoVerb(int iVerb, MSG lpmsg, int pActiveSite, int lindex, int hwndParent, RECT lprcPosRect) {
        return COM.VtblCall(11, this.address, iVerb, lpmsg, pActiveSite, lindex, hwndParent, lprcPosRect);
    }

    public int GetClientSite(int[] ppvClientSite) {
        return COM.VtblCall(4, this.address, ppvClientSite);
    }

    public int GetExtent(int dwDrawAspect, SIZE pSizel) {
        return COM.VtblCall(18, this.address, dwDrawAspect, pSizel);
    }

    public int SetClientSite(int pClientSite) {
        return COM.VtblCall(3, this.address, pClientSite);
    }

    public int SetExtent(int dwDrawAspect, SIZE pSizel) {
        return COM.VtblCall(17, this.address, dwDrawAspect, pSizel);
    }

    public int SetHostNames(String szContainerApp, String szContainerObj) {
        char[] buffer1 = null;
        if (szContainerApp != null) {
            int count1 = szContainerApp.length();
            buffer1 = new char[count1 + 1];
            szContainerApp.getChars(0, count1, buffer1, 0);
        }
        char[] buffer2 = null;
        if (szContainerObj != null) {
            int count2 = szContainerObj.length();
            buffer2 = new char[count2 + 1];
            szContainerObj.getChars(0, count2, buffer2, 0);
        }
        return COM.VtblCall(5, this.address, buffer1, buffer2);
    }

    public int Unadvise(int token) {
        return COM.VtblCall(20, this.address, token);
    }

    public int Update() {
        return COM.VtblCall(13, this.address);
    }
}

