/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsIDOMUIEvent;

public class nsIDOMMouseEvent
extends nsIDOMUIEvent {
    static final int LAST_METHOD_ID = nsIDOMUIEvent.LAST_METHOD_ID + 11;
    public static final String NS_IDOMMOUSEEVENT_IID_STR = "ff751edc-8b02-aae7-0010-8301838a3123";
    public static final nsID NS_IDOMMOUSEEVENT_IID = new nsID("ff751edc-8b02-aae7-0010-8301838a3123");

    public nsIDOMMouseEvent(int address) {
        super(address);
    }

    public int GetScreenX(int[] aScreenX) {
        return XPCOM.VtblCall(nsIDOMUIEvent.LAST_METHOD_ID + 1, this.getAddress(), aScreenX);
    }

    public int GetScreenY(int[] aScreenY) {
        return XPCOM.VtblCall(nsIDOMUIEvent.LAST_METHOD_ID + 2, this.getAddress(), aScreenY);
    }

    public int GetClientX(int[] aClientX) {
        return XPCOM.VtblCall(nsIDOMUIEvent.LAST_METHOD_ID + 3, this.getAddress(), aClientX);
    }

    public int GetClientY(int[] aClientY) {
        return XPCOM.VtblCall(nsIDOMUIEvent.LAST_METHOD_ID + 4, this.getAddress(), aClientY);
    }

    public int GetCtrlKey(int[] aCtrlKey) {
        return XPCOM.VtblCall(nsIDOMUIEvent.LAST_METHOD_ID + 5, this.getAddress(), aCtrlKey);
    }

    public int GetShiftKey(int[] aShiftKey) {
        return XPCOM.VtblCall(nsIDOMUIEvent.LAST_METHOD_ID + 6, this.getAddress(), aShiftKey);
    }

    public int GetAltKey(int[] aAltKey) {
        return XPCOM.VtblCall(nsIDOMUIEvent.LAST_METHOD_ID + 7, this.getAddress(), aAltKey);
    }

    public int GetMetaKey(int[] aMetaKey) {
        return XPCOM.VtblCall(nsIDOMUIEvent.LAST_METHOD_ID + 8, this.getAddress(), aMetaKey);
    }

    public int GetButton(short[] aButton) {
        return XPCOM.VtblCall(nsIDOMUIEvent.LAST_METHOD_ID + 9, this.getAddress(), aButton);
    }

    public int GetRelatedTarget(int[] aRelatedTarget) {
        return XPCOM.VtblCall(nsIDOMUIEvent.LAST_METHOD_ID + 10, this.getAddress(), aRelatedTarget);
    }

    public int InitMouseEvent(int typeArg, int canBubbleArg, int cancelableArg, int viewArg, int detailArg, int screenXArg, int screenYArg, int clientXArg, int clientYArg, int ctrlKeyArg, int altKeyArg, int shiftKeyArg, int metaKeyArg, short buttonArg, int relatedTargetArg) {
        return XPCOM.VtblCall(nsIDOMUIEvent.LAST_METHOD_ID + 11, this.getAddress(), typeArg, canBubbleArg, cancelableArg, viewArg, detailArg, screenXArg, screenYArg, clientXArg, clientYArg, ctrlKeyArg, altKeyArg, shiftKeyArg, metaKeyArg, buttonArg, relatedTargetArg);
    }
}

