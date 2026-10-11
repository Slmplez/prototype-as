/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.browser;

import org.eclipse.swt.SWT;
import org.eclipse.swt.browser.AuthenticationEvent;
import org.eclipse.swt.browser.AuthenticationListener;
import org.eclipse.swt.browser.Browser;
import org.eclipse.swt.browser.ProgressEvent;
import org.eclipse.swt.browser.ProgressListener;
import org.eclipse.swt.browser.WebKit;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.C;
import org.eclipse.swt.internal.Compatibility;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.COMObject;
import org.eclipse.swt.internal.ole.win32.GUID;
import org.eclipse.swt.internal.ole.win32.IUnknown;
import org.eclipse.swt.internal.webkit.IWebDataSource;
import org.eclipse.swt.internal.webkit.IWebFrame;
import org.eclipse.swt.internal.webkit.IWebMutableURLRequest;
import org.eclipse.swt.internal.webkit.IWebURLAuthenticationChallenge;
import org.eclipse.swt.internal.webkit.IWebURLAuthenticationChallengeSender;
import org.eclipse.swt.internal.webkit.IWebURLCredential;
import org.eclipse.swt.internal.webkit.IWebURLProtectionSpace;
import org.eclipse.swt.internal.webkit.IWebURLRequest;
import org.eclipse.swt.internal.webkit.IWebView;
import org.eclipse.swt.internal.webkit.WebKit_win32;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Monitor;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Text;

class WebResourceLoadDelegate {
    COMObject iWebResourceLoadDelegate;
    int refCount = 0;
    Browser browser;
    String postData;

    WebResourceLoadDelegate(Browser browser) {
        this.createCOMInterfaces();
        this.browser = browser;
    }

    int AddRef() {
        ++this.refCount;
        return this.refCount;
    }

    void createCOMInterfaces() {
        int[] nArray = new int[12];
        nArray[0] = 2;
        nArray[3] = 4;
        nArray[4] = 6;
        nArray[5] = 4;
        nArray[6] = 4;
        nArray[7] = 4;
        nArray[8] = 4;
        nArray[9] = 3;
        nArray[10] = 4;
        nArray[11] = 3;
        this.iWebResourceLoadDelegate = new COMObject(nArray){

            public int method0(int[] args) {
                return WebResourceLoadDelegate.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return WebResourceLoadDelegate.this.AddRef();
            }

            public int method2(int[] args) {
                return WebResourceLoadDelegate.this.Release();
            }

            public int method3(int[] args) {
                return WebResourceLoadDelegate.this.identifierForInitialRequest(args[0], args[1], args[2], args[3]);
            }

            public int method4(int[] args) {
                return WebResourceLoadDelegate.this.willSendRequest(args[0], args[1], args[2], args[3], args[4], args[5]);
            }

            public int method5(int[] args) {
                return WebResourceLoadDelegate.this.didReceiveAuthenticationChallenge(args[0], args[1], args[2], args[3]);
            }

            public int method6(int[] args) {
                return -2147467263;
            }

            public int method7(int[] args) {
                return 0;
            }

            public int method8(int[] args) {
                return 0;
            }

            public int method9(int[] args) {
                return 0;
            }

            public int method10(int[] args) {
                return 0;
            }

            public int method11(int[] args) {
                return -2147467263;
            }
        };
    }

    int didReceiveAuthenticationChallenge(int webView, int identifier, int challenge, int dataSource) {
        IWebURLAuthenticationChallenge authenticationChallenge = new IWebURLAuthenticationChallenge(challenge);
        int[] count = new int[1];
        int hr = authenticationChallenge.previousFailureCount(count);
        int[] result = new int[1];
        if (hr == 0 && count[0] < 3) {
            AuthenticationListener[] authenticationListeners = this.browser.webBrowser.authenticationListeners;
            int i = 0;
            while (i < authenticationListeners.length) {
                AuthenticationEvent event = new AuthenticationEvent(this.browser);
                event.location = ((WebKit)this.browser.webBrowser).lastNavigateURL;
                authenticationListeners[i].authenticate(event);
                if (!event.doit) {
                    hr = authenticationChallenge.sender(result);
                    if (hr != 0 || result[0] == 0) {
                        return 0;
                    }
                    IWebURLAuthenticationChallengeSender challengeSender = new IWebURLAuthenticationChallengeSender(result[0]);
                    challengeSender.cancelAuthenticationChallenge(challenge);
                    challengeSender.Release();
                    return 0;
                }
                if (event.user != null && event.password != null && (hr = authenticationChallenge.sender(result)) == 0 && result[0] != 0) {
                    IWebURLAuthenticationChallengeSender challengeSender = new IWebURLAuthenticationChallengeSender(result[0]);
                    result[0] = 0;
                    hr = WebKit_win32.WebKitCreateInstance(WebKit_win32.CLSID_WebURLCredential, 0, WebKit_win32.IID_IWebURLCredential, result);
                    if (hr == 0 && result[0] != 0) {
                        IWebURLCredential credential = new IWebURLCredential(result[0]);
                        int user = WebKit.createBSTR(event.user);
                        int password = WebKit.createBSTR(event.password);
                        credential.initWithUser(user, password, 1);
                        challengeSender.useCredential(credential.getAddress(), challenge);
                        credential.Release();
                    }
                    challengeSender.Release();
                    return 0;
                }
                ++i;
            }
        }
        String[] userReturn = new String[1];
        String[] passwordReturn = new String[1];
        result[0] = 0;
        hr = authenticationChallenge.proposedCredential(result);
        if (hr == 0 && result[0] != 0) {
            IWebURLCredential proposedCredential = new IWebURLCredential(result[0]);
            result[0] = 0;
            hr = proposedCredential.user(result);
            if (hr == 0 && result[0] != 0) {
                userReturn[0] = WebKit.extractBSTR(result[0]);
                COM.SysFreeString(result[0]);
                int[] value = new int[1];
                hr = proposedCredential.hasPassword(value);
                if (hr == 0 && value[0] != 0) {
                    result[0] = 0;
                    hr = proposedCredential.password(result);
                    if (hr == 0 && result[0] != 0) {
                        passwordReturn[0] = WebKit.extractBSTR(result[0]);
                        COM.SysFreeString(result[0]);
                    }
                }
            }
            proposedCredential.Release();
        }
        result[0] = 0;
        hr = authenticationChallenge.protectionSpace(result);
        if (hr != 0 || result[0] == 0) {
            return 0;
        }
        IWebURLProtectionSpace space = new IWebURLProtectionSpace(result[0]);
        String host = null;
        String realm = null;
        result[0] = 0;
        hr = space.host(result);
        if (hr == 0 && result[0] != 0) {
            host = WebKit.extractBSTR(result[0]);
            COM.SysFreeString(result[0]);
            int[] port = new int[1];
            hr = space.port(port);
            if (hr == 0) {
                host = String.valueOf(host) + ":" + port[0];
                result[0] = 0;
                hr = space.realm(result);
                if (hr == 0 && result[0] != 0) {
                    realm = WebKit.extractBSTR(result[0]);
                    COM.SysFreeString(result[0]);
                }
            }
        }
        space.Release();
        boolean response = this.showAuthenticationDialog(userReturn, passwordReturn, host, realm);
        result[0] = 0;
        hr = authenticationChallenge.sender(result);
        if (hr != 0 || result[0] == 0) {
            return 0;
        }
        IWebURLAuthenticationChallengeSender challengeSender = new IWebURLAuthenticationChallengeSender(result[0]);
        if (!response) {
            challengeSender.cancelAuthenticationChallenge(challenge);
            challengeSender.Release();
            return 0;
        }
        result[0] = 0;
        hr = WebKit_win32.WebKitCreateInstance(WebKit_win32.CLSID_WebURLCredential, 0, WebKit_win32.IID_IWebURLCredential, result);
        if (hr == 0 && result[0] != 0) {
            IWebURLCredential credential = new IWebURLCredential(result[0]);
            int user = WebKit.createBSTR(userReturn[0]);
            int password = WebKit.createBSTR(passwordReturn[0]);
            credential.initWithUser(user, password, 1);
            challengeSender.useCredential(credential.getAddress(), challenge);
            credential.Release();
        }
        challengeSender.Release();
        return 0;
    }

    void disposeCOMInterfaces() {
        if (this.iWebResourceLoadDelegate != null) {
            this.iWebResourceLoadDelegate.dispose();
            this.iWebResourceLoadDelegate = null;
        }
    }

    int getAddress() {
        return this.iWebResourceLoadDelegate.getAddress();
    }

    int identifierForInitialRequest(int webView, int request, int dataSource, int identifier) {
        if (this.browser.isDisposed()) {
            return 0;
        }
        IWebDataSource source = new IWebDataSource(dataSource);
        int[] frame = new int[1];
        int hr = source.webFrame(frame);
        if (hr != 0 || frame[0] == 0) {
            return 0;
        }
        new IWebFrame(frame[0]).Release();
        int[] mainFrame = new int[1];
        IWebView iWebView = new IWebView(webView);
        hr = iWebView.mainFrame(mainFrame);
        if (hr != 0 || mainFrame[0] == 0) {
            return 0;
        }
        new IWebFrame(mainFrame[0]).Release();
        if (frame[0] == mainFrame[0]) {
            int ptr = OS.malloc(8);
            iWebView.estimatedProgress(ptr);
            double[] estimate = new double[1];
            OS.MoveMemory(estimate, ptr, 8);
            OS.free(ptr);
            int progress = (int)(estimate[0] * 100.0);
            ProgressEvent progressEvent = new ProgressEvent(this.browser);
            progressEvent.display = this.browser.getDisplay();
            progressEvent.widget = this.browser;
            progressEvent.current = progress;
            progressEvent.total = Math.max(progress, 100);
            ProgressListener[] progressListeners = this.browser.webBrowser.progressListeners;
            int i = 0;
            while (i < progressListeners.length) {
                progressListeners[i].changed(progressEvent);
                ++i;
            }
        }
        return 0;
    }

    int QueryInterface(int riid, int ppvObject) {
        if (riid == 0 || ppvObject == 0) {
            return -2147024809;
        }
        GUID guid = new GUID();
        COM.MoveMemory(guid, riid, GUID.sizeof);
        if (COM.IsEqualGUID(guid, COM.IIDIUnknown)) {
            COM.MoveMemory(ppvObject, new int[]{this.iWebResourceLoadDelegate.getAddress()}, OS.PTR_SIZEOF);
            new IUnknown(this.iWebResourceLoadDelegate.getAddress()).AddRef();
            return 0;
        }
        if (COM.IsEqualGUID(guid, WebKit_win32.IID_IWebResourceLoadDelegate)) {
            COM.MoveMemory(ppvObject, new int[]{this.iWebResourceLoadDelegate.getAddress()}, OS.PTR_SIZEOF);
            new IUnknown(this.iWebResourceLoadDelegate.getAddress()).AddRef();
            return 0;
        }
        COM.MoveMemory(ppvObject, new int[1], OS.PTR_SIZEOF);
        return -2147467262;
    }

    int Release() {
        --this.refCount;
        if (this.refCount == 0) {
            this.disposeCOMInterfaces();
        }
        return this.refCount;
    }

    boolean showAuthenticationDialog(final String[] user, final String[] password, String host, String realm) {
        Shell parent = this.browser.getShell();
        final Shell shell = new Shell(parent);
        shell.setLayout(new GridLayout());
        String title = SWT.getMessage("SWT_Authentication_Required");
        shell.setText(title);
        Label label = new Label(shell, 64);
        label.setText(Compatibility.getMessage("SWT_Enter_Username_and_Password", new String[]{realm, host}));
        GridData data = new GridData();
        Monitor monitor = this.browser.getMonitor();
        int maxWidth = monitor.getBounds().width * 2 / 3;
        int width = label.computeSize((int)-1, (int)-1).x;
        data.widthHint = Math.min(width, maxWidth);
        data.horizontalAlignment = 4;
        data.grabExcessHorizontalSpace = true;
        label.setLayoutData(data);
        Label userLabel = new Label(shell, 0);
        userLabel.setText(SWT.getMessage("SWT_Username"));
        final Text userText = new Text(shell, 2048);
        if (user[0] != null) {
            userText.setText(user[0]);
        }
        data = new GridData();
        data.horizontalAlignment = 4;
        data.grabExcessHorizontalSpace = true;
        userText.setLayoutData(data);
        Label passwordLabel = new Label(shell, 0);
        passwordLabel.setText(SWT.getMessage("SWT_Password"));
        final Text passwordText = new Text(shell, 0x400800);
        if (password[0] != null) {
            passwordText.setText(password[0]);
        }
        data = new GridData();
        data.horizontalAlignment = 4;
        data.grabExcessHorizontalSpace = true;
        passwordText.setLayoutData(data);
        final boolean[] result = new boolean[1];
        final Button[] buttons = new Button[2];
        Listener listener = new Listener(){

            public void handleEvent(Event event) {
                user[0] = userText.getText();
                password[0] = passwordText.getText();
                result[0] = event.widget == buttons[1];
                shell.close();
            }
        };
        Composite composite = new Composite(shell, 0);
        data = new GridData();
        data.horizontalAlignment = 3;
        composite.setLayoutData(data);
        composite.setLayout(new GridLayout(2, true));
        buttons[0] = new Button(composite, 8);
        buttons[0].setText(SWT.getMessage("SWT_Cancel"));
        buttons[0].setLayoutData(new GridData(768));
        buttons[0].addListener(13, listener);
        buttons[1] = new Button(composite, 8);
        buttons[1].setText(SWT.getMessage("SWT_OK"));
        buttons[1].setLayoutData(new GridData(768));
        buttons[1].addListener(13, listener);
        shell.setDefaultButton(buttons[1]);
        shell.pack();
        Rectangle parentSize = parent.getBounds();
        Rectangle shellSize = shell.getBounds();
        int x = parent.getLocation().x + (parentSize.width - shellSize.width) / 2;
        int y = parent.getLocation().y + (parentSize.height - shellSize.height) / 2;
        shell.setLocation(x, y);
        shell.open();
        Display display = this.browser.getDisplay();
        while (!shell.isDisposed()) {
            if (display.readAndDispatch()) continue;
            display.sleep();
        }
        return result[0];
    }

    int willSendRequest(int webView, int identifier, int request, int redirectResponse, int dataSource, int newRequest) {
        IWebURLRequest req = new IWebURLRequest(request);
        int[] result = new int[1];
        int hr = req.URL(result);
        if (hr == 0 && result[0] != 0) {
            String url = WebKit.extractBSTR(result[0]);
            COM.SysFreeString(result[0]);
            if (url.startsWith("file://") && !url.startsWith("file:///")) {
                int length = "file://".length();
                url = "file:///" + url.substring(length);
                result[0] = 0;
                hr = req.mutableCopy(result);
                if (hr == 0 && result[0] != 0) {
                    IWebMutableURLRequest mReq = new IWebMutableURLRequest(result[0]);
                    int urlString = WebKit.createBSTR(url);
                    mReq.setURL(urlString);
                    OS.MoveMemory(newRequest, new int[]{mReq.getAddress()}, C.PTR_SIZEOF);
                    return 0;
                }
            }
        }
        req.AddRef();
        OS.MoveMemory(newRequest, new int[]{request}, C.PTR_SIZEOF);
        return 0;
    }
}

