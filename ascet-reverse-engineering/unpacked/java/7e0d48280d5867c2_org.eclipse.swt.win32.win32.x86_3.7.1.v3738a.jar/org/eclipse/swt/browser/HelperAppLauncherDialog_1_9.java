/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.browser;

import org.eclipse.swt.browser.Mozilla;
import org.eclipse.swt.internal.C;
import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.XPCOMObject;
import org.eclipse.swt.internal.mozilla.nsEmbedString;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsIHelperAppLauncherDialog_1_9;
import org.eclipse.swt.internal.mozilla.nsIHelperAppLauncher_1_9;
import org.eclipse.swt.internal.mozilla.nsISupports;
import org.eclipse.swt.widgets.FileDialog;
import org.eclipse.swt.widgets.Shell;

class HelperAppLauncherDialog_1_9 {
    XPCOMObject supports;
    XPCOMObject helperAppLauncherDialog;
    int refCount = 0;

    HelperAppLauncherDialog_1_9() {
        this.createCOMInterfaces();
    }

    int AddRef() {
        ++this.refCount;
        return this.refCount;
    }

    void createCOMInterfaces() {
        int[] nArray = new int[3];
        nArray[0] = 2;
        this.supports = new XPCOMObject(nArray){

            public int method0(int[] args) {
                return HelperAppLauncherDialog_1_9.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return HelperAppLauncherDialog_1_9.this.AddRef();
            }

            public int method2(int[] args) {
                return HelperAppLauncherDialog_1_9.this.Release();
            }
        };
        int[] nArray2 = new int[5];
        nArray2[0] = 2;
        nArray2[3] = 3;
        nArray2[4] = 6;
        this.helperAppLauncherDialog = new XPCOMObject(nArray2){

            public int method0(int[] args) {
                return HelperAppLauncherDialog_1_9.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return HelperAppLauncherDialog_1_9.this.AddRef();
            }

            public int method2(int[] args) {
                return HelperAppLauncherDialog_1_9.this.Release();
            }

            public int method3(int[] args) {
                return HelperAppLauncherDialog_1_9.this.Show(args[0], args[1], args[2]);
            }

            public int method4(int[] args) {
                return HelperAppLauncherDialog_1_9.this.PromptForSaveToFile(args[0], args[1], args[2], args[3], args[4], args[5]);
            }
        };
    }

    void disposeCOMInterfaces() {
        if (this.supports != null) {
            this.supports.dispose();
            this.supports = null;
        }
        if (this.helperAppLauncherDialog != null) {
            this.helperAppLauncherDialog.dispose();
            this.helperAppLauncherDialog = null;
        }
    }

    int getAddress() {
        return this.helperAppLauncherDialog.getAddress();
    }

    int QueryInterface(int riid, int ppvObject) {
        if (riid == 0 || ppvObject == 0) {
            return -2147467262;
        }
        nsID guid = new nsID();
        XPCOM.memmove(guid, riid, 16);
        if (guid.Equals(nsISupports.NS_ISUPPORTS_IID)) {
            XPCOM.memmove(ppvObject, new int[]{this.supports.getAddress()}, C.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (guid.Equals(nsIHelperAppLauncherDialog_1_9.NS_IHELPERAPPLAUNCHERDIALOG_IID)) {
            XPCOM.memmove(ppvObject, new int[]{this.helperAppLauncherDialog.getAddress()}, C.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        XPCOM.memmove(ppvObject, new int[1], C.PTR_SIZEOF);
        return -2147467262;
    }

    int Release() {
        --this.refCount;
        if (this.refCount == 0) {
            this.disposeCOMInterfaces();
        }
        return this.refCount;
    }

    int Show(int aLauncher, int aContext, int aReason) {
        nsIHelperAppLauncher_1_9 helperAppLauncher = new nsIHelperAppLauncher_1_9(aLauncher);
        return helperAppLauncher.SaveToDisk(0, 0);
    }

    int PromptForSaveToFile(int aLauncher, int aWindowContext, int aDefaultFileName, int aSuggestedFileExtension, int aForcePrompt, int _retval) {
        int length = XPCOM.strlen_PRUnichar(aDefaultFileName);
        char[] dest = new char[length];
        XPCOM.memmove(dest, aDefaultFileName, length * 2);
        String defaultFile = new String(dest);
        length = XPCOM.strlen_PRUnichar(aSuggestedFileExtension);
        dest = new char[length];
        XPCOM.memmove(dest, aSuggestedFileExtension, length * 2);
        String suggestedFileExtension = new String(dest);
        Shell shell = new Shell();
        FileDialog fileDialog = new FileDialog(shell, 8192);
        fileDialog.setFileName(defaultFile);
        fileDialog.setFilterExtensions(new String[]{suggestedFileExtension});
        String name = fileDialog.open();
        shell.close();
        if (name == null) {
            nsIHelperAppLauncher_1_9 launcher = new nsIHelperAppLauncher_1_9(aLauncher);
            int rc = launcher.Cancel(-2142568446);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            return -2147467259;
        }
        nsEmbedString path = new nsEmbedString(name);
        int[] result = new int[1];
        int rc = XPCOM.NS_NewLocalFile(path.getAddress(), 1, result);
        path.dispose();
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467261);
        }
        XPCOM.memmove(_retval, result, C.PTR_SIZEOF);
        return 0;
    }
}

