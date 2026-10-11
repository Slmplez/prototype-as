/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsIXPCSecurityManager;

public class nsIScriptSecurityManager_1_9
extends nsIXPCSecurityManager {
    static final int LAST_METHOD_ID = nsIXPCSecurityManager.LAST_METHOD_ID + 26;
    public static final String NS_ISCRIPTSECURITYMANAGER_IID_STR = "3fffd8e8-3fea-442e-a0ed-2ba81ae197d5";
    public static final nsID NS_ISCRIPTSECURITYMANAGER_IID = new nsID("3fffd8e8-3fea-442e-a0ed-2ba81ae197d5");
    public static final int STANDARD = 0;
    public static final int LOAD_IS_AUTOMATIC_DOCUMENT_REPLACEMENT = 1;
    public static final int ALLOW_CHROME = 2;
    public static final int DISALLOW_INHERIT_PRINCIPAL = 4;
    public static final int DISALLOW_SCRIPT_OR_DATA = 4;
    public static final int DISALLOW_SCRIPT = 8;

    public nsIScriptSecurityManager_1_9(int address) {
        super(address);
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

    public int CanExecuteScripts(int cx, int principal, int[] _retval) {
        return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 9, this.getAddress(), cx, principal, _retval);
    }

    public int GetSubjectPrincipal(int[] _retval) {
        return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 10, this.getAddress(), _retval);
    }

    public int GetSystemPrincipal(int[] _retval) {
        return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 11, this.getAddress(), _retval);
    }

    public int GetCodebasePrincipal(int aURI, int[] _retval) {
        return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 13, this.getAddress(), aURI, _retval);
    }

    public int IsCapabilityEnabled(byte[] capability, int[] _retval) {
        return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 15, this.getAddress(), capability, _retval);
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

    public int GetObjectPrincipal(int cx, int obj, int[] _retval) {
        return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 20, this.getAddress(), cx, obj, _retval);
    }

    public int SubjectPrincipalIsSystem(int[] _retval) {
        return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 21, this.getAddress(), _retval);
    }

    public int CheckSameOrigin(int aJSContext, int aTargetURI) {
        return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 22, this.getAddress(), aJSContext, aTargetURI);
    }

    public int CheckSameOriginURI(int aSourceURI, int aTargetURI, int reportError) {
        return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 23, this.getAddress(), aSourceURI, aTargetURI, reportError);
    }

    public int GetPrincipalFromContext(int cx, int[] _retval) {
        return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 24, this.getAddress(), cx, _retval);
    }

    public int GetChannelPrincipal(int aChannel, int[] _retval) {
        return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 25, this.getAddress(), aChannel, _retval);
    }

    public int IsSystemPrincipal(int aPrincipal, int[] _retval) {
        return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 26, this.getAddress(), aPrincipal, _retval);
    }
}

