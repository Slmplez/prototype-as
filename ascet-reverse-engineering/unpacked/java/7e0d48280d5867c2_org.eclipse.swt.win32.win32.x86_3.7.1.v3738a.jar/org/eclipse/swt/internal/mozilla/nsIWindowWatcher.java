/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIWindowWatcher
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 11;
    public static final String NS_IWINDOWWATCHER_IID_STR = "002286a8-494b-43b3-8ddd-49e3fc50622b";
    public static final nsID NS_IWINDOWWATCHER_IID = new nsID("002286a8-494b-43b3-8ddd-49e3fc50622b");

    public nsIWindowWatcher(int address) {
        super(address);
    }

    public int OpenWindow(int aParent, byte[] aUrl, byte[] aName, byte[] aFeatures, int aArguments, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aParent, aUrl, aName, aFeatures, aArguments, _retval);
    }

    public int RegisterNotification(int aObserver) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), aObserver);
    }

    public int UnregisterNotification(int aObserver) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), aObserver);
    }

    public int GetWindowEnumerator(int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), _retval);
    }

    public int GetNewPrompter(int aParent, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), aParent, _retval);
    }

    public int GetNewAuthPrompter(int aParent, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 6, this.getAddress(), aParent, _retval);
    }

    public int SetWindowCreator(int creator) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 7, this.getAddress(), creator);
    }

    public int GetChromeForWindow(int aWindow, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 8, this.getAddress(), aWindow, _retval);
    }

    public int GetWindowByName(char[] aTargetName, int aCurrentWindow, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 9, this.getAddress(), aTargetName, aCurrentWindow, _retval);
    }

    public int GetActiveWindow(int[] aActiveWindow) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 10, this.getAddress(), aActiveWindow);
    }

    public int SetActiveWindow(int aActiveWindow) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 11, this.getAddress(), aActiveWindow);
    }
}

