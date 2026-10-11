/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIWebProgress
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 4;
    public static final String NS_IWEBPROGRESS_IID_STR = "570f39d0-efd0-11d3-b093-00a024ffc08c";
    public static final nsID NS_IWEBPROGRESS_IID = new nsID("570f39d0-efd0-11d3-b093-00a024ffc08c");
    public static final int NOTIFY_STATE_REQUEST = 1;
    public static final int NOTIFY_STATE_DOCUMENT = 2;
    public static final int NOTIFY_STATE_NETWORK = 4;
    public static final int NOTIFY_STATE_WINDOW = 8;
    public static final int NOTIFY_STATE_ALL = 15;
    public static final int NOTIFY_PROGRESS = 16;
    public static final int NOTIFY_STATUS = 32;
    public static final int NOTIFY_SECURITY = 64;
    public static final int NOTIFY_LOCATION = 128;
    public static final int NOTIFY_ALL = 255;

    public nsIWebProgress(int address) {
        super(address);
    }

    public int AddProgressListener(int listener, int aNotifyMask) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), listener, aNotifyMask);
    }

    public int RemoveProgressListener(int listener) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), listener);
    }

    public int GetDOMWindow(int[] aDOMWindow) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), aDOMWindow);
    }

    public int GetIsLoadingDocument(int[] aIsLoadingDocument) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), aIsLoadingDocument);
    }
}

