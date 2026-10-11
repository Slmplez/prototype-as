/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIPromptService
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 9;
    public static final String NS_IPROMPTSERVICE_IID_STR = "1630c61a-325e-49ca-8759-a31b16c47aa5";
    public static final nsID NS_IPROMPTSERVICE_IID = new nsID("1630c61a-325e-49ca-8759-a31b16c47aa5");
    public static final int BUTTON_POS_0 = 1;
    public static final int BUTTON_POS_1 = 256;
    public static final int BUTTON_POS_2 = 65536;
    public static final int BUTTON_TITLE_OK = 1;
    public static final int BUTTON_TITLE_CANCEL = 2;
    public static final int BUTTON_TITLE_YES = 3;
    public static final int BUTTON_TITLE_NO = 4;
    public static final int BUTTON_TITLE_SAVE = 5;
    public static final int BUTTON_TITLE_DONT_SAVE = 6;
    public static final int BUTTON_TITLE_REVERT = 7;
    public static final int BUTTON_TITLE_IS_STRING = 127;
    public static final int BUTTON_POS_0_DEFAULT = 0;
    public static final int BUTTON_POS_1_DEFAULT = 0x1000000;
    public static final int BUTTON_POS_2_DEFAULT = 0x2000000;
    public static final int BUTTON_DELAY_ENABLE = 0x4000000;
    public static final int STD_OK_CANCEL_BUTTONS = 513;
    public static final int STD_YES_NO_BUTTONS = 1027;

    public nsIPromptService(int address) {
        super(address);
    }

    public int Alert(int aParent, char[] aDialogTitle, char[] aText) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aParent, aDialogTitle, aText);
    }

    public int AlertCheck(int aParent, char[] aDialogTitle, char[] aText, char[] aCheckMsg, int[] aCheckState) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), aParent, aDialogTitle, aText, aCheckMsg, aCheckState);
    }

    public int Confirm(int aParent, char[] aDialogTitle, char[] aText, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), aParent, aDialogTitle, aText, _retval);
    }

    public int ConfirmCheck(int aParent, char[] aDialogTitle, char[] aText, char[] aCheckMsg, int[] aCheckState, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), aParent, aDialogTitle, aText, aCheckMsg, aCheckState, _retval);
    }

    public int ConfirmEx(int aParent, char[] aDialogTitle, char[] aText, int aButtonFlags, char[] aButton0Title, char[] aButton1Title, char[] aButton2Title, char[] aCheckMsg, int[] aCheckState, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), aParent, aDialogTitle, aText, aButtonFlags, aButton0Title, aButton1Title, aButton2Title, aCheckMsg, aCheckState, _retval);
    }

    public int Prompt(int aParent, char[] aDialogTitle, char[] aText, int[] aValue, char[] aCheckMsg, int[] aCheckState, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 6, this.getAddress(), aParent, aDialogTitle, aText, aValue, aCheckMsg, aCheckState, _retval);
    }

    public int PromptUsernameAndPassword(int aParent, char[] aDialogTitle, char[] aText, int[] aUsername, int[] aPassword, char[] aCheckMsg, int[] aCheckState, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 7, this.getAddress(), aParent, aDialogTitle, aText, aUsername, aPassword, aCheckMsg, aCheckState, _retval);
    }

    public int PromptPassword(int aParent, char[] aDialogTitle, char[] aText, int[] aPassword, char[] aCheckMsg, int[] aCheckState, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 8, this.getAddress(), aParent, aDialogTitle, aText, aPassword, aCheckMsg, aCheckState, _retval);
    }

    public int Select(int aParent, char[] aDialogTitle, char[] aText, int aCount, int[] aSelectList, int[] aOutSelection, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 9, this.getAddress(), aParent, aDialogTitle, aText, aCount, aSelectList, aOutSelection, _retval);
    }
}

