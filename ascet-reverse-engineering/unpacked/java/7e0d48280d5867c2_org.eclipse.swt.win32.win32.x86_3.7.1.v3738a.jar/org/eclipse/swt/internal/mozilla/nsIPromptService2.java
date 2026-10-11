/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsIPromptService;

public class nsIPromptService2
extends nsIPromptService {
    static final int LAST_METHOD_ID = nsIPromptService.LAST_METHOD_ID + 2;
    public static final String NS_IPROMPTSERVICE2_IID_STR = "cf86d196-dbee-4482-9dfa-3477aa128319";
    public static final nsID NS_IPROMPTSERVICE2_IID = new nsID("cf86d196-dbee-4482-9dfa-3477aa128319");

    public nsIPromptService2(int address) {
        super(address);
    }

    public int PromptAuth(int aParent, int aChannel, int level, int authInfo, char[] checkboxLabel, int[] checkValue, int[] _retval) {
        return XPCOM.VtblCall(nsIPromptService.LAST_METHOD_ID + 1, this.getAddress(), aParent, aChannel, level, authInfo, checkboxLabel, checkValue, _retval);
    }

    public int AsyncPromptAuth(int aParent, int aChannel, int aCallback, int aContext, int level, int authInfo, char[] checkboxLabel, int[] checkValue, int[] _retval) {
        return XPCOM.VtblCall(nsIPromptService.LAST_METHOD_ID + 2, this.getAddress(), aParent, aChannel, aCallback, aContext, level, authInfo, checkboxLabel, checkValue, _retval);
    }
}

