/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.browser;

import org.eclipse.swt.SWT;
import org.eclipse.swt.browser.AuthenticationEvent;
import org.eclipse.swt.browser.Browser;
import org.eclipse.swt.browser.Mozilla;
import org.eclipse.swt.browser.MozillaDelegate;
import org.eclipse.swt.browser.PromptDialog;
import org.eclipse.swt.internal.C;
import org.eclipse.swt.internal.Compatibility;
import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.XPCOMObject;
import org.eclipse.swt.internal.mozilla.nsEmbedString;
import org.eclipse.swt.internal.mozilla.nsIAuthInformation;
import org.eclipse.swt.internal.mozilla.nsIChannel;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsIDOMWindow;
import org.eclipse.swt.internal.mozilla.nsIMemory;
import org.eclipse.swt.internal.mozilla.nsIPromptService;
import org.eclipse.swt.internal.mozilla.nsIPromptService2;
import org.eclipse.swt.internal.mozilla.nsIServiceManager;
import org.eclipse.swt.internal.mozilla.nsISupports;
import org.eclipse.swt.internal.mozilla.nsIURI;
import org.eclipse.swt.widgets.MessageBox;
import org.eclipse.swt.widgets.Shell;

class PromptService2 {
    XPCOMObject supports;
    XPCOMObject promptService;
    XPCOMObject promptService2;
    int refCount = 0;
    static final String[] certErrorCodes = new String[]{"ssl_error_bad_cert_domain", "sec_error_ca_cert_invalid", "sec_error_expired_certificate", "sec_error_expired_issuer_certificate", "sec_error_inadequate_key_usage", "sec_error_unknown_issuer", "sec_error_untrusted_cert", "sec_error_untrusted_issuer"};

    PromptService2() {
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
                return PromptService2.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return PromptService2.this.AddRef();
            }

            public int method2(int[] args) {
                return PromptService2.this.Release();
            }
        };
        int[] nArray2 = new int[12];
        nArray2[0] = 2;
        nArray2[3] = 3;
        nArray2[4] = 5;
        nArray2[5] = 4;
        nArray2[6] = 6;
        nArray2[7] = 10;
        nArray2[8] = 7;
        nArray2[9] = 8;
        nArray2[10] = 7;
        nArray2[11] = 7;
        this.promptService = new XPCOMObject(nArray2){

            public int method0(int[] args) {
                return PromptService2.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return PromptService2.this.AddRef();
            }

            public int method2(int[] args) {
                return PromptService2.this.Release();
            }

            public int method3(int[] args) {
                return PromptService2.this.Alert(args[0], args[1], args[2]);
            }

            public int method4(int[] args) {
                return PromptService2.this.AlertCheck(args[0], args[1], args[2], args[3], args[4]);
            }

            public int method5(int[] args) {
                return PromptService2.this.Confirm(args[0], args[1], args[2], args[3]);
            }

            public int method6(int[] args) {
                return PromptService2.this.ConfirmCheck(args[0], args[1], args[2], args[3], args[4], args[5]);
            }

            public int method7(int[] args) {
                return PromptService2.this.ConfirmEx(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9]);
            }

            public int method8(int[] args) {
                return PromptService2.this.Prompt(args[0], args[1], args[2], args[3], args[4], args[5], args[6]);
            }

            public int method9(int[] args) {
                return PromptService2.this.PromptUsernameAndPassword(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7]);
            }

            public int method10(int[] args) {
                return PromptService2.this.PromptPassword(args[0], args[1], args[2], args[3], args[4], args[5], args[6]);
            }

            public int method11(int[] args) {
                return PromptService2.this.Select(args[0], args[1], args[2], args[3], args[4], args[5], args[6]);
            }
        };
        int[] nArray3 = new int[14];
        nArray3[0] = 2;
        nArray3[3] = 3;
        nArray3[4] = 5;
        nArray3[5] = 4;
        nArray3[6] = 6;
        nArray3[7] = 10;
        nArray3[8] = 7;
        nArray3[9] = 8;
        nArray3[10] = 7;
        nArray3[11] = 7;
        nArray3[12] = 7;
        nArray3[13] = 9;
        this.promptService2 = new XPCOMObject(nArray3){

            public int method0(int[] args) {
                return PromptService2.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return PromptService2.this.AddRef();
            }

            public int method2(int[] args) {
                return PromptService2.this.Release();
            }

            public int method3(int[] args) {
                return PromptService2.this.Alert(args[0], args[1], args[2]);
            }

            public int method4(int[] args) {
                return PromptService2.this.AlertCheck(args[0], args[1], args[2], args[3], args[4]);
            }

            public int method5(int[] args) {
                return PromptService2.this.Confirm(args[0], args[1], args[2], args[3]);
            }

            public int method6(int[] args) {
                return PromptService2.this.ConfirmCheck(args[0], args[1], args[2], args[3], args[4], args[5]);
            }

            public int method7(int[] args) {
                return PromptService2.this.ConfirmEx(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9]);
            }

            public int method8(int[] args) {
                return PromptService2.this.Prompt(args[0], args[1], args[2], args[3], args[4], args[5], args[6]);
            }

            public int method9(int[] args) {
                return PromptService2.this.PromptUsernameAndPassword(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7]);
            }

            public int method10(int[] args) {
                return PromptService2.this.PromptPassword(args[0], args[1], args[2], args[3], args[4], args[5], args[6]);
            }

            public int method11(int[] args) {
                return PromptService2.this.Select(args[0], args[1], args[2], args[3], args[4], args[5], args[6]);
            }

            public int method12(int[] args) {
                return PromptService2.this.PromptAuth(args[0], args[1], args[2], args[3], args[4], args[5], args[6]);
            }

            public int method13(int[] args) {
                return PromptService2.this.AsyncPromptAuth(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8]);
            }
        };
    }

    void disposeCOMInterfaces() {
        if (this.supports != null) {
            this.supports.dispose();
            this.supports = null;
        }
        if (this.promptService != null) {
            this.promptService.dispose();
            this.promptService = null;
        }
        if (this.promptService2 != null) {
            this.promptService2.dispose();
            this.promptService2 = null;
        }
    }

    int getAddress() {
        return this.promptService2.getAddress();
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
        if (guid.Equals(nsIPromptService.NS_IPROMPTSERVICE_IID)) {
            XPCOM.memmove(ppvObject, new int[]{this.promptService.getAddress()}, C.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (guid.Equals(nsIPromptService2.NS_IPROMPTSERVICE2_IID)) {
            XPCOM.memmove(ppvObject, new int[]{this.promptService2.getAddress()}, C.PTR_SIZEOF);
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

    Browser getBrowser(int aDOMWindow) {
        if (aDOMWindow == 0) {
            return null;
        }
        nsIDOMWindow window = new nsIDOMWindow(aDOMWindow);
        return Mozilla.findBrowser(window);
    }

    String getLabel(int buttonFlag, int index, int buttonTitle) {
        String label = null;
        int flag = (buttonFlag & 255 * index) / index;
        switch (flag) {
            case 2: {
                label = SWT.getMessage("SWT_Cancel");
                break;
            }
            case 4: {
                label = SWT.getMessage("SWT_No");
                break;
            }
            case 1: {
                label = SWT.getMessage("SWT_OK");
                break;
            }
            case 5: {
                label = SWT.getMessage("SWT_Save");
                break;
            }
            case 3: {
                label = SWT.getMessage("SWT_Yes");
                break;
            }
            case 127: {
                int length = XPCOM.strlen_PRUnichar(buttonTitle);
                char[] dest = new char[length];
                XPCOM.memmove(dest, buttonTitle, length * 2);
                label = new String(dest);
            }
        }
        return label;
    }

    int Alert(int aParent, int aDialogTitle, int aText) {
        Browser browser = this.getBrowser(aParent);
        int length = XPCOM.strlen_PRUnichar(aDialogTitle);
        char[] dest = new char[length];
        XPCOM.memmove(dest, aDialogTitle, length * 2);
        String titleLabel = new String(dest);
        length = XPCOM.strlen_PRUnichar(aText);
        dest = new char[length];
        XPCOM.memmove(dest, aText, length * 2);
        String textLabel = new String(dest);
        if (browser != null) {
            int i = 0;
            while (i < certErrorCodes.length) {
                if (textLabel.indexOf(certErrorCodes[i]) != -1) {
                    Mozilla mozilla = (Mozilla)browser.webBrowser;
                    mozilla.isRetrievingBadCert = true;
                    browser.setUrl(mozilla.lastNavigateURL);
                    return 0;
                }
                ++i;
            }
        }
        Shell shell = browser == null ? new Shell() : browser.getShell();
        MessageBox messageBox = new MessageBox(shell, 40);
        messageBox.setText(titleLabel);
        messageBox.setMessage(textLabel);
        messageBox.open();
        return 0;
    }

    int AlertCheck(int aParent, int aDialogTitle, int aText, int aCheckMsg, int aCheckState) {
        Browser browser = this.getBrowser(aParent);
        int length = XPCOM.strlen_PRUnichar(aDialogTitle);
        char[] dest = new char[length];
        XPCOM.memmove(dest, aDialogTitle, length * 2);
        String titleLabel = new String(dest);
        length = XPCOM.strlen_PRUnichar(aText);
        dest = new char[length];
        XPCOM.memmove(dest, aText, length * 2);
        String textLabel = new String(dest);
        length = XPCOM.strlen_PRUnichar(aCheckMsg);
        dest = new char[length];
        XPCOM.memmove(dest, aCheckMsg, length * 2);
        String checkLabel = new String(dest);
        Shell shell = browser == null ? new Shell() : browser.getShell();
        PromptDialog dialog = new PromptDialog(shell);
        int[] check = new int[1];
        if (aCheckState != 0) {
            XPCOM.memmove(check, aCheckState, 4);
        }
        dialog.alertCheck(titleLabel, textLabel, checkLabel, check);
        if (aCheckState != 0) {
            XPCOM.memmove(aCheckState, check, 4);
        }
        return 0;
    }

    int AsyncPromptAuth(int aParent, int aChannel, int aCallback, int aContext, int level, int authInfo, int checkboxLabel, int checkValue, int _retval) {
        return -2147467263;
    }

    int Confirm(int aParent, int aDialogTitle, int aText, int _retval) {
        Browser browser = this.getBrowser(aParent);
        if (browser != null && ((Mozilla)browser.webBrowser).ignoreAllMessages) {
            XPCOM.memmove(_retval, new int[]{1}, 4);
            return 0;
        }
        int length = XPCOM.strlen_PRUnichar(aDialogTitle);
        char[] dest = new char[length];
        XPCOM.memmove(dest, aDialogTitle, length * 2);
        String titleLabel = new String(dest);
        length = XPCOM.strlen_PRUnichar(aText);
        dest = new char[length];
        XPCOM.memmove(dest, aText, length * 2);
        String textLabel = new String(dest);
        Shell shell = browser == null ? new Shell() : browser.getShell();
        MessageBox messageBox = new MessageBox(shell, 292);
        messageBox.setText(titleLabel);
        messageBox.setMessage(textLabel);
        int id = messageBox.open();
        int[] result = new int[]{id == 32 ? 1 : 0};
        XPCOM.memmove(_retval, result, 4);
        return 0;
    }

    int ConfirmCheck(int aParent, int aDialogTitle, int aText, int aCheckMsg, int aCheckState, int _retval) {
        return -2147467263;
    }

    int ConfirmEx(int aParent, int aDialogTitle, int aText, int aButtonFlags, int aButton0Title, int aButton1Title, int aButton2Title, int aCheckMsg, int aCheckState, int _retval) {
        Browser browser = this.getBrowser(aParent);
        int length = XPCOM.strlen_PRUnichar(aDialogTitle);
        char[] dest = new char[length];
        XPCOM.memmove(dest, aDialogTitle, length * 2);
        String titleLabel = new String(dest);
        length = XPCOM.strlen_PRUnichar(aText);
        dest = new char[length];
        XPCOM.memmove(dest, aText, length * 2);
        String textLabel = new String(dest);
        String checkLabel = null;
        if (aCheckMsg != 0) {
            length = XPCOM.strlen_PRUnichar(aCheckMsg);
            dest = new char[length];
            XPCOM.memmove(dest, aCheckMsg, length * 2);
            checkLabel = new String(dest);
        }
        String button0Label = this.getLabel(aButtonFlags, 1, aButton0Title);
        String button1Label = this.getLabel(aButtonFlags, 256, aButton1Title);
        String button2Label = this.getLabel(aButtonFlags, 65536, aButton2Title);
        int defaultIndex = 0;
        if ((aButtonFlags & 0x1000000) != 0) {
            defaultIndex = 1;
        } else if ((aButtonFlags & 0x2000000) != 0) {
            defaultIndex = 2;
        }
        Shell shell = browser == null ? new Shell() : browser.getShell();
        PromptDialog dialog = new PromptDialog(shell);
        int[] check = new int[1];
        int[] result = new int[1];
        if (aCheckState != 0) {
            XPCOM.memmove(check, aCheckState, 4);
        }
        dialog.confirmEx(titleLabel, textLabel, checkLabel, button0Label, button1Label, button2Label, defaultIndex, check, result);
        if (aCheckState != 0) {
            XPCOM.memmove(aCheckState, check, 4);
        }
        XPCOM.memmove(_retval, result, 4);
        return 0;
    }

    int Prompt(int aParent, int aDialogTitle, int aText, int aValue, int aCheckMsg, int aCheckState, int _retval) {
        char[] dest;
        int length;
        Browser browser = this.getBrowser(aParent);
        String titleLabel = null;
        String checkLabel = null;
        String[] valueLabel = new String[1];
        if (aDialogTitle != 0) {
            length = XPCOM.strlen_PRUnichar(aDialogTitle);
            dest = new char[length];
            XPCOM.memmove(dest, aDialogTitle, length * 2);
            titleLabel = new String(dest);
        }
        length = XPCOM.strlen_PRUnichar(aText);
        dest = new char[length];
        XPCOM.memmove(dest, aText, length * 2);
        String textLabel = new String(dest);
        int[] valueAddr = new int[1];
        XPCOM.memmove(valueAddr, aValue, C.PTR_SIZEOF);
        if (valueAddr[0] != 0) {
            length = XPCOM.strlen_PRUnichar(valueAddr[0]);
            dest = new char[length];
            XPCOM.memmove(dest, valueAddr[0], length * 2);
            valueLabel[0] = new String(dest);
        }
        if (aCheckMsg != 0 && (length = XPCOM.strlen_PRUnichar(aCheckMsg)) > 0) {
            dest = new char[length];
            XPCOM.memmove(dest, aCheckMsg, length * 2);
            checkLabel = new String(dest);
        }
        Shell shell = browser == null ? new Shell() : browser.getShell();
        PromptDialog dialog = new PromptDialog(shell);
        int[] check = new int[1];
        int[] result = new int[1];
        if (aCheckState != 0) {
            XPCOM.memmove(check, aCheckState, 4);
        }
        dialog.prompt(titleLabel, textLabel, checkLabel, valueLabel, check, result);
        XPCOM.memmove(_retval, result, 4);
        if (result[0] == 1 && valueLabel[0] != null) {
            int[] result2 = new int[1];
            int rc = XPCOM.NS_GetServiceManager(result2);
            if (rc != 0) {
                SWT.error(rc);
            }
            if (result2[0] == 0) {
                SWT.error(-2147467262);
            }
            nsIServiceManager serviceManager = new nsIServiceManager(result2[0]);
            result2[0] = 0;
            byte[] aContractID = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/xpcom/memory-service;1", true);
            rc = serviceManager.GetServiceByContractID(aContractID, nsIMemory.NS_IMEMORY_IID, result2);
            if (rc != 0) {
                SWT.error(rc);
            }
            if (result2[0] == 0) {
                SWT.error(-2147467262);
            }
            serviceManager.Release();
            nsIMemory memory = new nsIMemory(result2[0]);
            result2[0] = 0;
            int cnt = valueLabel[0].length();
            char[] buffer = new char[cnt + 1];
            valueLabel[0].getChars(0, cnt, buffer, 0);
            int size = buffer.length * 2;
            int ptr = memory.Alloc(size);
            XPCOM.memmove(ptr, buffer, size);
            XPCOM.memmove(aValue, new int[]{ptr}, C.PTR_SIZEOF);
            if (valueAddr[0] != 0) {
                memory.Free(valueAddr[0]);
            }
            memory.Release();
        }
        if (aCheckState != 0) {
            XPCOM.memmove(aCheckState, check, 4);
        }
        return 0;
    }

    int PromptAuth(int aParent, int aChannel, int level, int authInfo, int checkboxLabel, int checkboxValue, int _retval) {
        int host;
        nsIURI nsURI;
        int ptr;
        int rc;
        nsIAuthInformation auth = new nsIAuthInformation(authInfo);
        Browser browser = this.getBrowser(aParent);
        if (browser != null) {
            Mozilla mozilla = (Mozilla)browser.webBrowser;
            if (mozilla.authCount++ < 3) {
                int i = 0;
                while (i < mozilla.authenticationListeners.length) {
                    AuthenticationEvent event = new AuthenticationEvent(browser);
                    event.location = mozilla.lastNavigateURL;
                    mozilla.authenticationListeners[i].authenticate(event);
                    if (!event.doit) {
                        XPCOM.memmove(_retval, new int[1], 4);
                        return 0;
                    }
                    if (event.user != null && event.password != null) {
                        nsEmbedString string = new nsEmbedString(event.user);
                        int rc2 = auth.SetUsername(string.getAddress());
                        if (rc2 != 0) {
                            SWT.error(rc2);
                        }
                        string.dispose();
                        string = new nsEmbedString(event.password);
                        rc2 = auth.SetPassword(string.getAddress());
                        if (rc2 != 0) {
                            SWT.error(rc2);
                        }
                        string.dispose();
                        XPCOM.memmove(_retval, new int[]{1}, 4);
                        return 0;
                    }
                    ++i;
                }
            }
        }
        String checkLabel = null;
        int[] checkValue = new int[1];
        String[] userLabel = new String[1];
        String[] passLabel = new String[1];
        String title = SWT.getMessage("SWT_Authentication_Required");
        if (checkboxLabel != 0 && checkboxValue != 0) {
            int length = XPCOM.strlen_PRUnichar(checkboxLabel);
            char[] dest = new char[length];
            XPCOM.memmove(dest, checkboxLabel, length * 2);
            checkLabel = new String(dest);
            XPCOM.memmove(checkValue, checkboxValue, 4);
        }
        if ((rc = auth.GetUsername(ptr = XPCOM.nsEmbedString_new())) != 0) {
            SWT.error(rc);
        }
        int length = XPCOM.nsEmbedString_Length(ptr);
        int buffer = XPCOM.nsEmbedString_get(ptr);
        char[] chars = new char[length];
        XPCOM.memmove(chars, buffer, length * 2);
        userLabel[0] = new String(chars);
        XPCOM.nsEmbedString_delete(ptr);
        ptr = XPCOM.nsEmbedString_new();
        rc = auth.GetPassword(ptr);
        if (rc != 0) {
            SWT.error(rc);
        }
        length = XPCOM.nsEmbedString_Length(ptr);
        buffer = XPCOM.nsEmbedString_get(ptr);
        chars = new char[length];
        XPCOM.memmove(chars, buffer, length * 2);
        passLabel[0] = new String(chars);
        XPCOM.nsEmbedString_delete(ptr);
        ptr = XPCOM.nsEmbedString_new();
        rc = auth.GetRealm(ptr);
        if (rc != 0) {
            SWT.error(rc);
        }
        length = XPCOM.nsEmbedString_Length(ptr);
        buffer = XPCOM.nsEmbedString_get(ptr);
        chars = new char[length];
        XPCOM.memmove(chars, buffer, length * 2);
        String realm = new String(chars);
        XPCOM.nsEmbedString_delete(ptr);
        nsIChannel channel = new nsIChannel(aChannel);
        int[] uri = new int[1];
        rc = channel.GetURI(uri);
        if (rc != 0) {
            SWT.error(rc);
        }
        if (uri[0] == 0) {
            Mozilla.error(-2147467262);
        }
        if ((rc = (nsURI = new nsIURI(uri[0])).GetHost(host = XPCOM.nsEmbedCString_new())) != 0) {
            SWT.error(rc);
        }
        length = XPCOM.nsEmbedCString_Length(host);
        buffer = XPCOM.nsEmbedCString_get(host);
        byte[] bytes = new byte[length];
        XPCOM.memmove(bytes, buffer, length);
        String hostString = new String(bytes);
        XPCOM.nsEmbedCString_delete(host);
        nsURI.Release();
        String message = realm.length() > 0 && hostString.length() > 0 ? Compatibility.getMessage("SWT_Enter_Username_and_Password", new String[]{realm, hostString}) : "";
        Shell shell = browser == null ? new Shell() : browser.getShell();
        PromptDialog dialog = new PromptDialog(shell);
        int[] result = new int[1];
        dialog.promptUsernameAndPassword(title, message, checkLabel, userLabel, passLabel, checkValue, result);
        XPCOM.memmove(_retval, result, 4);
        if (result[0] == 1) {
            nsEmbedString string = new nsEmbedString(userLabel[0]);
            rc = auth.SetUsername(string.getAddress());
            if (rc != 0) {
                SWT.error(rc);
            }
            string.dispose();
            string = new nsEmbedString(passLabel[0]);
            rc = auth.SetPassword(string.getAddress());
            if (rc != 0) {
                SWT.error(rc);
            }
            string.dispose();
        }
        if (checkboxValue != 0) {
            XPCOM.memmove(checkboxValue, checkValue, 4);
        }
        return 0;
    }

    int PromptUsernameAndPassword(int aParent, int aDialogTitle, int aText, int aUsername, int aPassword, int aCheckMsg, int aCheckState, int _retval) {
        Browser browser = this.getBrowser(aParent);
        String user = null;
        String password = null;
        if (browser != null) {
            Mozilla mozilla = (Mozilla)browser.webBrowser;
            if (mozilla.authCount++ < 3) {
                int i = 0;
                while (i < mozilla.authenticationListeners.length) {
                    AuthenticationEvent event = new AuthenticationEvent(browser);
                    event.location = mozilla.lastNavigateURL;
                    mozilla.authenticationListeners[i].authenticate(event);
                    if (!event.doit) {
                        XPCOM.memmove(_retval, new int[1], 4);
                        return 0;
                    }
                    if (event.user != null && event.password != null) {
                        user = event.user;
                        password = event.password;
                        XPCOM.memmove(_retval, new int[]{1}, 4);
                        break;
                    }
                    ++i;
                }
            }
        }
        if (user == null) {
            String titleLabel;
            char[] dest;
            int length;
            String checkLabel = null;
            String[] userLabel = new String[1];
            String[] passLabel = new String[1];
            if (aDialogTitle != 0) {
                length = XPCOM.strlen_PRUnichar(aDialogTitle);
                dest = new char[length];
                XPCOM.memmove(dest, aDialogTitle, length * 2);
                titleLabel = new String(dest);
            } else {
                titleLabel = SWT.getMessage("SWT_Authentication_Required");
            }
            length = XPCOM.strlen_PRUnichar(aText);
            dest = new char[length];
            XPCOM.memmove(dest, aText, length * 2);
            String textLabel = new String(dest);
            int[] userAddr = new int[1];
            XPCOM.memmove(userAddr, aUsername, C.PTR_SIZEOF);
            if (userAddr[0] != 0) {
                length = XPCOM.strlen_PRUnichar(userAddr[0]);
                dest = new char[length];
                XPCOM.memmove(dest, userAddr[0], length * 2);
                userLabel[0] = new String(dest);
            }
            int[] passAddr = new int[1];
            XPCOM.memmove(passAddr, aPassword, C.PTR_SIZEOF);
            if (passAddr[0] != 0) {
                length = XPCOM.strlen_PRUnichar(passAddr[0]);
                dest = new char[length];
                XPCOM.memmove(dest, passAddr[0], length * 2);
                passLabel[0] = new String(dest);
            }
            if (aCheckMsg != 0 && (length = XPCOM.strlen_PRUnichar(aCheckMsg)) > 0) {
                dest = new char[length];
                XPCOM.memmove(dest, aCheckMsg, length * 2);
                checkLabel = new String(dest);
            }
            Shell shell = browser == null ? new Shell() : browser.getShell();
            PromptDialog dialog = new PromptDialog(shell);
            int[] check = new int[1];
            int[] result = new int[1];
            if (aCheckState != 0) {
                XPCOM.memmove(check, aCheckState, 4);
            }
            dialog.promptUsernameAndPassword(titleLabel, textLabel, checkLabel, userLabel, passLabel, check, result);
            XPCOM.memmove(_retval, result, 4);
            if (result[0] == 1) {
                user = userLabel[0];
                password = passLabel[0];
            }
            if (aCheckState != 0) {
                XPCOM.memmove(aCheckState, check, 4);
            }
        }
        if (user != null) {
            int[] userAddr = new int[1];
            XPCOM.memmove(userAddr, aUsername, C.PTR_SIZEOF);
            int[] passAddr = new int[1];
            XPCOM.memmove(passAddr, aPassword, C.PTR_SIZEOF);
            int[] result = new int[1];
            int rc = XPCOM.NS_GetServiceManager(result);
            if (rc != 0) {
                SWT.error(rc);
            }
            if (result[0] == 0) {
                SWT.error(-2147467262);
            }
            nsIServiceManager serviceManager = new nsIServiceManager(result[0]);
            result[0] = 0;
            byte[] aContractID = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/xpcom/memory-service;1", true);
            rc = serviceManager.GetServiceByContractID(aContractID, nsIMemory.NS_IMEMORY_IID, result);
            if (rc != 0) {
                SWT.error(rc);
            }
            if (result[0] == 0) {
                SWT.error(-2147467262);
            }
            serviceManager.Release();
            nsIMemory memory = new nsIMemory(result[0]);
            result[0] = 0;
            if (userAddr[0] != 0) {
                memory.Free(userAddr[0]);
            }
            if (passAddr[0] != 0) {
                memory.Free(passAddr[0]);
            }
            memory.Release();
            int cnt = user.length();
            char[] buffer = new char[cnt + 1];
            user.getChars(0, cnt, buffer, 0);
            int size = buffer.length * 2;
            int ptr = C.malloc(size);
            XPCOM.memmove(ptr, buffer, size);
            XPCOM.memmove(aUsername, new int[]{ptr}, C.PTR_SIZEOF);
            cnt = password.length();
            buffer = new char[cnt + 1];
            password.getChars(0, cnt, buffer, 0);
            size = buffer.length * 2;
            ptr = C.malloc(size);
            XPCOM.memmove(ptr, buffer, size);
            XPCOM.memmove(aPassword, new int[]{ptr}, C.PTR_SIZEOF);
        }
        return 0;
    }

    int PromptPassword(int aParent, int aDialogTitle, int aText, int aPassword, int aCheckMsg, int aCheckState, int _retval) {
        return -2147467263;
    }

    int Select(int aParent, int aDialogTitle, int aText, int aCount, int aSelectList, int aOutSelection, int _retval) {
        return -2147467263;
    }
}

