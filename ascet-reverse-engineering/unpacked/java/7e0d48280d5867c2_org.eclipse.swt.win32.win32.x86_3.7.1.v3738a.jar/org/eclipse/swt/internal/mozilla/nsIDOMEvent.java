/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIDOMEvent
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 10;
    public static final String NS_IDOMEVENT_IID_STR = "a66b7b80-ff46-bd97-0080-5f8ae38add32";
    public static final nsID NS_IDOMEVENT_IID = new nsID("a66b7b80-ff46-bd97-0080-5f8ae38add32");
    public static final int CAPTURING_PHASE = 1;
    public static final int AT_TARGET = 2;
    public static final int BUBBLING_PHASE = 3;

    public nsIDOMEvent(int address) {
        super(address);
    }

    public int GetType(int aType) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aType);
    }

    public int GetTarget(int[] aTarget) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), aTarget);
    }

    public int GetCurrentTarget(int[] aCurrentTarget) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), aCurrentTarget);
    }

    public int GetEventPhase(short[] aEventPhase) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), aEventPhase);
    }

    public int GetBubbles(int[] aBubbles) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), aBubbles);
    }

    public int GetCancelable(int[] aCancelable) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 6, this.getAddress(), aCancelable);
    }

    public int GetTimeStamp(int[] aTimeStamp) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 7, this.getAddress(), aTimeStamp);
    }

    public int StopPropagation() {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 8, this.getAddress());
    }

    public int PreventDefault() {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 9, this.getAddress());
    }

    public int InitEvent(int eventTypeArg, int canBubbleArg, int cancelableArg) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 10, this.getAddress(), eventTypeArg, canBubbleArg, cancelableArg);
    }
}

