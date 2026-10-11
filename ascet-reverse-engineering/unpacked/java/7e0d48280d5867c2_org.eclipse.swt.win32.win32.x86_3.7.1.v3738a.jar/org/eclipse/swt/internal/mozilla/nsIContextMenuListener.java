/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIContextMenuListener
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 1;
    public static final String NS_ICONTEXTMENULISTENER_IID_STR = "3478b6b0-3875-11d4-94ef-0020183bf181";
    public static final nsID NS_ICONTEXTMENULISTENER_IID = new nsID("3478b6b0-3875-11d4-94ef-0020183bf181");
    public static final int CONTEXT_NONE = 0;
    public static final int CONTEXT_LINK = 1;
    public static final int CONTEXT_IMAGE = 2;
    public static final int CONTEXT_DOCUMENT = 4;
    public static final int CONTEXT_TEXT = 8;
    public static final int CONTEXT_INPUT = 16;

    public nsIContextMenuListener(int address) {
        super(address);
    }

    public int OnShowContextMenu(int aContextFlags, int aEvent, int aNode) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aContextFlags, aEvent, aNode);
    }
}

