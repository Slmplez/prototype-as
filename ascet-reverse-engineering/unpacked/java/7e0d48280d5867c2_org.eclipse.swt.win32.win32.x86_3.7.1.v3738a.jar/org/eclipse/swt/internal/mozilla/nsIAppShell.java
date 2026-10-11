/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIAppShell
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 8;
    public static final String NS_IAPPSHELL_IID_STR = "a0757c31-eeac-11d1-9ec1-00aa002fb821";
    public static final nsID NS_IAPPSHELL_IID = new nsID("a0757c31-eeac-11d1-9ec1-00aa002fb821");

    public nsIAppShell(int address) {
        super(address);
    }

    public int Create(int argc, int[] argv) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), argc, argv);
    }

    public int Run() {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress());
    }

    public int Spinup() {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress());
    }

    public int Spindown() {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress());
    }

    public int ListenToEventQueue(int aQueue, int aListen) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), aQueue, aListen);
    }

    public int GetNativeEvent(int aRealEvent, int[] aEvent) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 6, this.getAddress(), aRealEvent, aEvent);
    }

    public int DispatchNativeEvent(int aRealEvent, int aEvent) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 7, this.getAddress(), aRealEvent, aEvent);
    }

    public int Exit() {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 8, this.getAddress());
    }
}

