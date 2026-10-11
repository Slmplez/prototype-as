/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsIXPCSecurityManager;

public class nsIScriptSecurityManager_1_9_1
extends nsIXPCSecurityManager {
    static final int LAST_METHOD_ID = nsIXPCSecurityManager.LAST_METHOD_ID + 26;
    public static final String NS_ISCRIPTSECURITYMANAGER_IID_STR = "f8e350b9-9f31-451a-8c8f-d10fea26b780";
    public static final nsID NS_ISCRIPTSECURITYMANAGER_IID = new nsID("f8e350b9-9f31-451a-8c8f-d10fea26b780");
    public static final int STANDARD = 0;
    public static final int LOAD_IS_AUTOMATIC_DOCUMENT_REPLACEMENT = 1;
    public static final int ALLOW_CHROME = 2;
    public static final int DISALLOW_INHERIT_PRINCIPAL = 4;
    public static final int DISALLOW_SCRIPT_OR_DATA = 4;
    public static final int DISALLOW_SCRIPT = 8;

    public nsIScriptSecurityManager_1_9_1(int address) {
        super(address);
    }

    public int CheckConnect(int aJSContext, int aTargetURI, byte[] aClassName, byte[] aProperty) {
        return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 2, this.getAddress(), aJSContext, aTargetURI, aClassName, aProperty);
    }

    public int CheckLoadURIFromScript(int cx, int uri) {
        return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 3, this.getAddress(), cx, uri);
    }

    public int CheckLoadURIWithPrincipal(int aPrincipal, int uri, int flags) {
        return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 4, this.getAddress(), aPrincipal, uri, flags);
    }

    public int CheckLoadURI(int from, int uri, int flags) {
        return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 5, this.getAddress(), from, uri, flags);
    }

    public int CheckLoadURIStrWithPrincipal(int aPrincipal, int uri, int flags) {
        return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 6, this.getAddress(), aPrincipal, uri, flags);
    }

    public int CheckLoadURIStr(int from, int uri, int flags) {
        return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 7, this.getAddress(), from, uri, flags);
    }

    public int CheckFunctionAccess(int cx, int funObj, int targetObj) {
        return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 8, this.getAddress(), cx, funObj, targetObj);
    }

    public int GetSystemPrincipal(int[] _retval) {
        return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 11, this.getAddress(), _retval);
    }

    public int EnableCapability(byte[] capability) {
        return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 16, this.getAddress(), capability);
    }

    public int RevertCapability(byte[] capability) {
        return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 17, this.getAddress(), capability);
    }

    public int DisableCapability(byte[] capability) {
        return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 18, this.getAddress(), capability);
    }

    public int CheckSameOrigin(int aJSContext, int aTargetURI) {
        return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 22, this.getAddress(), aJSContext, aTargetURI);
    }

    public int CheckSameOriginURI(int aSourceURI, int aTargetURI, int reportError) {
        return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 23, this.getAddress(), aSourceURI, aTargetURI, reportError);
    }
}

