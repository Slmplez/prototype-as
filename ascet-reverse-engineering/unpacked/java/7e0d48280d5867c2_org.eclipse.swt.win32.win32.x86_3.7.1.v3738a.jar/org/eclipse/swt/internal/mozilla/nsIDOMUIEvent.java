/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsIDOMEvent;

public class nsIDOMUIEvent
extends nsIDOMEvent {
    static final int LAST_METHOD_ID = nsIDOMEvent.LAST_METHOD_ID + 3;
    public static final String NS_IDOMUIEVENT_IID_STR = "a6cf90c3-15b3-11d2-932e-00805f8add32";
    public static final nsID NS_IDOMUIEVENT_IID = new nsID("a6cf90c3-15b3-11d2-932e-00805f8add32");

    public nsIDOMUIEvent(int address) {
        super(address);
    }

    public int GetView(int[] aView) {
        return XPCOM.VtblCall(nsIDOMEvent.LAST_METHOD_ID + 1, this.getAddress(), aView);
    }

    public int GetDetail(int[] aDetail) {
        return XPCOM.VtblCall(nsIDOMEvent.LAST_METHOD_ID + 2, this.getAddress(), aDetail);
    }

    public int InitUIEvent(int typeArg, int canBubbleArg, int cancelableArg, int viewArg, int detailArg) {
        return XPCOM.VtblCall(nsIDOMEvent.LAST_METHOD_ID + 3, this.getAddress(), typeArg, canBubbleArg, cancelableArg, viewArg, detailArg);
    }
}

