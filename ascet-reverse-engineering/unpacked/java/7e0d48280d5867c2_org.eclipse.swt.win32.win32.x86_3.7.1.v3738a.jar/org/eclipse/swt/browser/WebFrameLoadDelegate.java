/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.browser;

import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Enumeration;
import org.eclipse.swt.SWT;
import org.eclipse.swt.browser.Browser;
import org.eclipse.swt.browser.BrowserFunction;
import org.eclipse.swt.browser.LocationEvent;
import org.eclipse.swt.browser.LocationListener;
import org.eclipse.swt.browser.ProgressEvent;
import org.eclipse.swt.browser.ProgressListener;
import org.eclipse.swt.browser.StatusTextEvent;
import org.eclipse.swt.browser.StatusTextListener;
import org.eclipse.swt.browser.TitleEvent;
import org.eclipse.swt.browser.TitleListener;
import org.eclipse.swt.browser.WebKit;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.Compatibility;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.COMObject;
import org.eclipse.swt.internal.ole.win32.GUID;
import org.eclipse.swt.internal.ole.win32.IUnknown;
import org.eclipse.swt.internal.webkit.IWebDataSource;
import org.eclipse.swt.internal.webkit.IWebError;
import org.eclipse.swt.internal.webkit.IWebErrorPrivate;
import org.eclipse.swt.internal.webkit.IWebFrame;
import org.eclipse.swt.internal.webkit.IWebMutableURLRequest;
import org.eclipse.swt.internal.webkit.IWebURLRequest;
import org.eclipse.swt.internal.webkit.IWebView;
import org.eclipse.swt.internal.webkit.WebKit_win32;
import org.eclipse.swt.internal.win32.CERT_CONTEXT;
import org.eclipse.swt.internal.win32.CERT_INFO;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.SYSTEMTIME;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.MessageBox;
import org.eclipse.swt.widgets.Monitor;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.TabFolder;
import org.eclipse.swt.widgets.TabItem;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableColumn;
import org.eclipse.swt.widgets.TableItem;

class WebFrameLoadDelegate {
    COMObject iWebFrameLoadDelegate;
    int refCount = 0;
    Browser browser;
    String html;
    String url;
    static final String OBJECTNAME_EXTERNAL = "external";

    WebFrameLoadDelegate(Browser browser) {
        this.createCOMInterfaces();
        this.browser = browser;
    }

    void addEventHandlers(boolean top) {
        if (top) {
            StringBuffer buffer = new StringBuffer("window.SWTkeyhandler = function SWTkeyhandler(e) {");
            buffer.append("try {e.returnValue = HandleWebKitEvent(e.type, e.keyCode, e.charCode, e.altKey, e.ctrlKey, e.shiftKey, e.metaKey);} catch (e) {}};");
            buffer.append("document.addEventListener('keydown', SWTkeyhandler, true);");
            buffer.append("document.addEventListener('keypress', SWTkeyhandler, true);");
            buffer.append("document.addEventListener('keyup', SWTkeyhandler, true);");
            this.browser.execute(buffer.toString());
            buffer = new StringBuffer("window.SWTmousehandler = function SWTmousehandler(e) {");
            buffer.append("try {e.returnValue = HandleWebKitEvent(e.type, e.screenX, e.screenY, e.detail, e.button + 1, e.altKey, e.ctrlKey, e.shiftKey, e.metaKey, e.relatedTarget != null);} catch (e) {}};");
            buffer.append("document.addEventListener('mousedown', SWTmousehandler, true);");
            buffer.append("document.addEventListener('mouseup', SWTmousehandler, true);");
            buffer.append("document.addEventListener('mousemove', SWTmousehandler, true);");
            buffer.append("document.addEventListener('mousewheel', SWTmousehandler, true);");
            buffer.append("document.addEventListener('dragstart', SWTmousehandler, true);");
            buffer.append("document.addEventListener('mouseover', SWTmousehandler, true);");
            buffer.append("document.addEventListener('mouseout', SWTmousehandler, true);");
            this.browser.execute(buffer.toString());
        } else {
            StringBuffer buffer = new StringBuffer("for (var i = 0; i < frames.length; i++) {");
            buffer.append("frames[i].document.addEventListener('keydown', window.SWTkeyhandler, true);");
            buffer.append("frames[i].document.addEventListener('keypress', window.SWTkeyhandler, true);");
            buffer.append("frames[i].document.addEventListener('keyup', window.SWTkeyhandler, true);");
            buffer.append("frames[i].document.addEventListener('mousedown', window.SWTmousehandler, true);");
            buffer.append("frames[i].document.addEventListener('mouseup', window.SWTmousehandler, true);");
            buffer.append("frames[i].document.addEventListener('mousemove', window.SWTmousehandler, true);");
            buffer.append("frames[i].document.addEventListener('mouseover', window.SWTmousehandler, true);");
            buffer.append("frames[i].document.addEventListener('mouseout', window.SWTmousehandler, true);");
            buffer.append("frames[i].document.addEventListener('mousewheel', window.SWTmousehandler, true);");
            buffer.append("frames[i].document.addEventListener('dragstart', window.SWTmousehandler, true);");
            buffer.append('}');
            this.browser.execute(buffer.toString());
        }
    }

    int AddRef() {
        ++this.refCount;
        return this.refCount;
    }

    void createCOMInterfaces() {
        int[] nArray = new int[17];
        nArray[0] = 2;
        nArray[3] = 2;
        nArray[4] = 2;
        nArray[5] = 3;
        nArray[6] = 2;
        nArray[7] = 3;
        nArray[8] = 3;
        nArray[9] = 2;
        nArray[10] = 3;
        nArray[11] = 2;
        nArray[12] = 5;
        nArray[13] = 2;
        nArray[14] = 2;
        nArray[15] = 3;
        nArray[16] = 4;
        this.iWebFrameLoadDelegate = new COMObject(nArray){

            public int method0(int[] args) {
                return WebFrameLoadDelegate.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return WebFrameLoadDelegate.this.AddRef();
            }

            public int method2(int[] args) {
                return WebFrameLoadDelegate.this.Release();
            }

            public int method3(int[] args) {
                return WebFrameLoadDelegate.this.didStartProvisionalLoadForFrame(args[0], args[1]);
            }

            public int method4(int[] args) {
                return -2147467263;
            }

            public int method5(int[] args) {
                return WebFrameLoadDelegate.this.didFailProvisionalLoadWithError(args[0], args[1], args[2]);
            }

            public int method6(int[] args) {
                return WebFrameLoadDelegate.this.didCommitLoadForFrame(args[0], args[1]);
            }

            public int method7(int[] args) {
                return WebFrameLoadDelegate.this.didReceiveTitle(args[0], args[1], args[2]);
            }

            public int method8(int[] args) {
                return -2147467263;
            }

            public int method9(int[] args) {
                return WebFrameLoadDelegate.this.didFinishLoadForFrame(args[0], args[1]);
            }

            public int method10(int[] args) {
                return -2147467263;
            }

            public int method11(int[] args) {
                return WebFrameLoadDelegate.this.didChangeLocationWithinPageForFrame(args[0], args[1]);
            }

            public int method12(int[] args) {
                return 0;
            }

            public int method13(int[] args) {
                return -2147467263;
            }

            public int method14(int[] args) {
                return 0;
            }

            public int method15(int[] args) {
                return 0;
            }

            public int method16(int[] args) {
                return WebFrameLoadDelegate.this.didClearWindowObject(args[0], args[1], args[2], args[3]);
            }
        };
        int ppVtable = this.iWebFrameLoadDelegate.ppVtable;
        int[] pVtable = new int[1];
        COM.MoveMemory(pVtable, ppVtable, OS.PTR_SIZEOF);
        int[] funcs = new int[17];
        COM.MoveMemory(funcs, pVtable[0], OS.PTR_SIZEOF * funcs.length);
        funcs[12] = WebKit_win32.willPerformClientRedirectToURL_CALLBACK(funcs[12]);
        COM.MoveMemory(pVtable[0], funcs, OS.PTR_SIZEOF * funcs.length);
    }

    int didChangeLocationWithinPageForFrame(int webView, int frame) {
        int i;
        IWebFrame iwebframe = new IWebFrame(frame);
        int[] result = new int[1];
        int hr = iwebframe.dataSource(result);
        if (hr != 0 || result[0] == 0) {
            return 0;
        }
        IWebDataSource dataSource = new IWebDataSource(result[0]);
        result[0] = 0;
        hr = dataSource.request(result);
        dataSource.Release();
        if (hr != 0 || result[0] == 0) {
            return 0;
        }
        IWebURLRequest request = new IWebURLRequest(result[0]);
        result[0] = 0;
        hr = request.URL(result);
        request.Release();
        if (hr != 0 || result[0] == 0) {
            return 0;
        }
        String url2 = WebKit.extractBSTR(result[0]);
        COM.SysFreeString(result[0]);
        if (url2.length() == 0) {
            return 0;
        }
        if (url2.equals("file:///")) {
            url2 = "about:blank";
        } else {
            int length = "file:///".length();
            if (url2.startsWith("file:///") && url2.charAt(length) == '#') {
                url2 = "about:blank" + url2.substring(length);
            }
        }
        Display display = this.browser.getDisplay();
        result[0] = 0;
        IWebView iWebView = new IWebView(webView);
        hr = iWebView.mainFrame(result);
        boolean top = false;
        if (hr == 0 && result[0] != 0) {
            top = frame == result[0];
            new IWebFrame(result[0]).Release();
        }
        if (top) {
            StatusTextEvent statusText = new StatusTextEvent(this.browser);
            statusText.display = display;
            statusText.widget = this.browser;
            statusText.text = url2;
            StatusTextListener[] statusTextListeners = this.browser.webBrowser.statusTextListeners;
            i = 0;
            while (i < statusTextListeners.length) {
                statusTextListeners[i].changed(statusText);
                ++i;
            }
        }
        LocationEvent location = new LocationEvent(this.browser);
        location.display = display;
        location.widget = this.browser;
        location.location = url2;
        location.top = top;
        LocationListener[] locationListeners = this.browser.webBrowser.locationListeners;
        i = 0;
        while (i < locationListeners.length) {
            locationListeners[i].changed(location);
            ++i;
        }
        return 0;
    }

    int didClearWindowObject(int webView, int context, int windowScriptObject, int frame) {
        WebKit_win32.JSGlobalContextRetain(context);
        int globalObject = WebKit_win32.JSContextGetGlobalObject(context);
        int privateData = ((WebKit)this.browser.webBrowser).webViewData;
        int externalObject = WebKit_win32.JSObjectMake(context, WebKit.ExternalClass, privateData);
        byte[] bytes = null;
        try {
            bytes = "external\u0000".getBytes("UTF-8");
        }
        catch (UnsupportedEncodingException unsupportedEncodingException) {
            bytes = "external\u0000".getBytes();
        }
        int name = WebKit_win32.JSStringCreateWithUTF8CString(bytes);
        WebKit_win32.JSObjectSetProperty(context, globalObject, name, externalObject, 0, null);
        WebKit_win32.JSStringRelease(name);
        Enumeration elements = this.browser.webBrowser.functions.elements();
        while (elements.hasMoreElements()) {
            BrowserFunction current = (BrowserFunction)elements.nextElement();
            this.browser.execute(current.functionString);
        }
        IWebView iwebView = new IWebView(webView);
        int[] mainFrame = new int[1];
        iwebView.mainFrame(mainFrame);
        boolean top = mainFrame[0] == frame;
        new IWebFrame(mainFrame[0]).Release();
        this.addEventHandlers(top);
        return 0;
    }

    int didCommitLoadForFrame(int webview, int frame) {
        IWebFrame iWebFrame = new IWebFrame(frame);
        int[] result = new int[1];
        int hr = iWebFrame.dataSource(result);
        if (hr != 0 || result[0] == 0) {
            return 0;
        }
        IWebDataSource dataSource = new IWebDataSource(result[0]);
        result[0] = 0;
        hr = dataSource.request(result);
        dataSource.Release();
        if (hr != 0 || result[0] == 0) {
            return 0;
        }
        IWebMutableURLRequest request = new IWebMutableURLRequest(result[0]);
        result[0] = 0;
        hr = request.URL(result);
        request.Release();
        if (hr != 0 || result[0] == 0) {
            return 0;
        }
        String url2 = WebKit.extractBSTR(result[0]);
        COM.SysFreeString(result[0]);
        if (url2.length() == 0) {
            return 0;
        }
        if (url2.equals("file:///")) {
            url2 = "about:blank";
        } else {
            int length = "file:///".length();
            if (url2.startsWith("file:///") && url2.charAt(length) == '#') {
                url2 = "about:blank" + url2.substring(length);
            }
        }
        Display display = this.browser.getDisplay();
        result[0] = 0;
        IWebView iwebView = new IWebView(webview);
        hr = iwebView.mainFrame(result);
        boolean top = false;
        if (hr == 0 && result[0] != 0) {
            top = frame == result[0];
            new IWebFrame(result[0]).Release();
        }
        if (top) {
            this.url = url2;
            if (url2.startsWith("about:blank") && this.html != null) {
                return 0;
            }
            Enumeration elements = this.browser.webBrowser.functions.elements();
            while (elements.hasMoreElements()) {
                BrowserFunction function = (BrowserFunction)elements.nextElement();
                this.browser.webBrowser.execute(function.functionString);
            }
            ProgressEvent progress = new ProgressEvent(this.browser);
            progress.display = display;
            progress.widget = this.browser;
            progress.current = 1;
            progress.total = 100;
            ProgressListener[] progressListeners = this.browser.webBrowser.progressListeners;
            int i = 0;
            while (i < progressListeners.length) {
                progressListeners[i].changed(progress);
                ++i;
            }
            if (this.browser.isDisposed()) {
                return 0;
            }
            StatusTextEvent statusText = new StatusTextEvent(this.browser);
            statusText.display = display;
            statusText.widget = this.browser;
            statusText.text = url2;
            StatusTextListener[] statusTextListeners = this.browser.webBrowser.statusTextListeners;
            int i2 = 0;
            while (i2 < statusTextListeners.length) {
                statusTextListeners[i2].changed(statusText);
                ++i2;
            }
            if (this.browser.isDisposed()) {
                return 0;
            }
        }
        LocationEvent location = new LocationEvent(this.browser);
        location.display = display;
        location.widget = this.browser;
        location.location = url2;
        location.top = top;
        LocationListener[] locationListeners = this.browser.webBrowser.locationListeners;
        int i = 0;
        while (i < locationListeners.length) {
            locationListeners[i].changed(location);
            ++i;
        }
        return 0;
    }

    int didFailProvisionalLoadWithError(int webView, int error, int frame) {
        IWebError iweberror = new IWebError(error);
        int[] errorCode = new int[1];
        int hr = iweberror.code(errorCode);
        if (-1000 < errorCode[0]) {
            return 0;
        }
        String failingURLString = null;
        int[] failingURL = new int[1];
        hr = iweberror.failingURL(failingURL);
        if (hr == 0 && failingURL[0] != 0) {
            failingURLString = WebKit.extractBSTR(failingURL[0]);
            COM.SysFreeString(failingURL[0]);
        }
        if (failingURLString != null && -1204 <= errorCode[0] && errorCode[0] <= -1200) {
            int[] result = new int[1];
            hr = iweberror.localizedDescription(result);
            if (hr != 0 || result[0] == 0) {
                return 0;
            }
            String description = WebKit.extractBSTR(result[0]);
            COM.SysFreeString(result[0]);
            result[0] = 0;
            hr = iweberror.QueryInterface(WebKit_win32.IID_IWebErrorPrivate, result);
            if (hr != 0 || result[0] == 0) {
                return 0;
            }
            IWebErrorPrivate webErrorPrivate = new IWebErrorPrivate(result[0]);
            result[0] = 0;
            int[] certificate = new int[1];
            hr = webErrorPrivate.sslPeerCertificate(certificate);
            webErrorPrivate.Release();
            if (hr != 0 || certificate[0] == 0) {
                return 0;
            }
            if (this.showCertificateDialog(webView, failingURLString, description, certificate[0])) {
                IWebFrame iWebFrame = new IWebFrame(frame);
                hr = WebKit_win32.WebKitCreateInstance(WebKit_win32.CLSID_WebMutableURLRequest, 0, WebKit_win32.IID_IWebMutableURLRequest, result);
                if (hr != 0 || result[0] == 0) {
                    certificate[0] = 0;
                    return 0;
                }
                IWebMutableURLRequest request = new IWebMutableURLRequest(result[0]);
                request.setURL(failingURL[0]);
                request.setAllowsAnyHTTPSCertificate();
                iWebFrame.loadRequest(request.getAddress());
                request.Release();
            }
            certificate[0] = 0;
            return 0;
        }
        int[] result = new int[1];
        hr = iweberror.localizedDescription(result);
        if (hr != 0 || result[0] == 0) {
            return 0;
        }
        String description = WebKit.extractBSTR(result[0]);
        COM.SysFreeString(result[0]);
        if (!this.browser.isDisposed()) {
            String message = failingURLString != null ? String.valueOf(failingURLString) + "\n\n" : "";
            message = String.valueOf(message) + Compatibility.getMessage("SWT_Page_Load_Failed", new Object[]{description});
            MessageBox messageBox = new MessageBox(this.browser.getShell(), 33);
            messageBox.setMessage(message);
            messageBox.open();
        }
        return 0;
    }

    int didFinishLoadForFrame(int webview, int frame) {
        IWebView iWebView = new IWebView(webview);
        int[] iWebFrame = new int[1];
        int hr = iWebView.mainFrame(iWebFrame);
        if (hr != 0 || iWebFrame[0] == 0) {
            return 0;
        }
        boolean top = frame == iWebFrame[0];
        new IWebFrame(iWebFrame[0]).Release();
        if (!top) {
            return 0;
        }
        if (this.html != null && this.getUrl().startsWith("about:blank")) {
            ((WebKit)this.browser.webBrowser).loadingText = true;
            int string = WebKit.createBSTR(this.html);
            int URLString = ((WebKit)this.browser.webBrowser).untrustedText ? WebKit.createBSTR("about:blank") : WebKit.createBSTR("file:///");
            IWebFrame mainFrame = new IWebFrame(frame);
            mainFrame.loadHTMLString(string, URLString);
            this.html = null;
        }
        if (!((WebKit)this.browser.webBrowser).loadingText) {
            int i;
            if (this.browser.isDisposed()) {
                return 0;
            }
            Display display = this.browser.getDisplay();
            IWebFrame mainFrame = new IWebFrame(frame);
            int[] result = new int[1];
            hr = mainFrame.dataSource(result);
            if (hr != 0 || result[0] == 0) {
                return 0;
            }
            IWebDataSource dataSource = new IWebDataSource(result[0]);
            result[0] = 0;
            hr = dataSource.pageTitle(result);
            dataSource.Release();
            if (hr != 0) {
                return 0;
            }
            String title = null;
            if (result[0] != 0) {
                title = WebKit.extractBSTR(result[0]);
                COM.SysFreeString(result[0]);
            }
            if (title == null || title.length() == 0) {
                TitleEvent newEvent = new TitleEvent(this.browser);
                newEvent.display = display;
                newEvent.widget = this.browser;
                newEvent.title = this.getUrl();
                TitleListener[] titleListeners = this.browser.webBrowser.titleListeners;
                i = 0;
                while (i < titleListeners.length) {
                    titleListeners[i].changed(newEvent);
                    ++i;
                }
                if (this.browser.isDisposed()) {
                    return 0;
                }
            }
            ProgressEvent progress = new ProgressEvent(this.browser);
            progress.display = display;
            progress.widget = this.browser;
            progress.current = 100;
            progress.total = 100;
            ProgressListener[] progressListeners = this.browser.webBrowser.progressListeners;
            i = 0;
            while (i < progressListeners.length) {
                progressListeners[i].completed(progress);
                ++i;
            }
            if (this.browser.isDisposed()) {
                return 0;
            }
        }
        ((WebKit)this.browser.webBrowser).loadingText = false;
        return 0;
    }

    int didReceiveTitle(int webView, int title, int frame) {
        IWebView iWebView = new IWebView(webView);
        int[] mainFrame = new int[1];
        int hr = iWebView.mainFrame(mainFrame);
        if (hr != 0 || frame == 0) {
            return 0;
        }
        if (frame == mainFrame[0]) {
            String newTitle = WebKit.extractBSTR(title);
            TitleEvent newEvent = new TitleEvent(this.browser);
            newEvent.display = this.browser.getDisplay();
            newEvent.widget = this.browser;
            newEvent.title = newTitle;
            TitleListener[] titleListeners = this.browser.webBrowser.titleListeners;
            int i = 0;
            while (i < titleListeners.length) {
                titleListeners[i].changed(newEvent);
                ++i;
            }
        }
        new IWebFrame(mainFrame[0]).Release();
        return 0;
    }

    int didStartProvisionalLoadForFrame(int webView, int frame) {
        return 0;
    }

    void disposeCOMInterfaces() {
        if (this.iWebFrameLoadDelegate != null) {
            this.iWebFrameLoadDelegate.dispose();
            this.iWebFrameLoadDelegate = null;
        }
    }

    int getAddress() {
        return this.iWebFrameLoadDelegate.getAddress();
    }

    String getUrl() {
        if (this.url == null || this.url.length() == 0) {
            return "about:blank";
        }
        return this.url;
    }

    int QueryInterface(int riid, int ppvObject) {
        if (riid == 0 || ppvObject == 0) {
            return -2147024809;
        }
        GUID guid = new GUID();
        COM.MoveMemory(guid, riid, GUID.sizeof);
        if (COM.IsEqualGUID(guid, COM.IIDIUnknown)) {
            COM.MoveMemory(ppvObject, new int[]{this.iWebFrameLoadDelegate.getAddress()}, OS.PTR_SIZEOF);
            new IUnknown(this.iWebFrameLoadDelegate.getAddress()).AddRef();
            return 0;
        }
        if (COM.IsEqualGUID(guid, WebKit_win32.IID_IWebFrameLoadDelegate)) {
            COM.MoveMemory(ppvObject, new int[]{this.iWebFrameLoadDelegate.getAddress()}, OS.PTR_SIZEOF);
            new IUnknown(this.iWebFrameLoadDelegate.getAddress()).AddRef();
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

    boolean showCertificateDialog(int webView, String failingUrlString, String description, final int certificate) {
        Shell parent = this.browser.getShell();
        final Shell shell = new Shell(parent, 67680);
        shell.setText(Compatibility.getMessage("SWT_InvalidCert_Title"));
        shell.setLayout(new GridLayout());
        Label label = new Label(shell, 64);
        String host = null;
        try {
            host = new URL(failingUrlString).getHost();
        }
        catch (MalformedURLException malformedURLException) {
            host = failingUrlString;
        }
        StringBuffer message = new StringBuffer("\n");
        message.append(Compatibility.getMessage("SWT_InvalidCert_Message", new String[]{host}));
        message.append("\n\n");
        message.append(Compatibility.getMessage(description));
        message.append("\n");
        message.append(Compatibility.getMessage("SWT_InvalidCert_Connect"));
        message.append("\n");
        label.setText(message.toString());
        GridData data = new GridData();
        Monitor monitor = this.browser.getMonitor();
        int maxWidth = monitor.getBounds().width * 2 / 3;
        int width = label.computeSize((int)-1, (int)-1).x;
        data.widthHint = Math.min(width, maxWidth);
        data.horizontalAlignment = 4;
        data.grabExcessHorizontalSpace = true;
        label.setLayoutData(data);
        final boolean[] result = new boolean[1];
        final Button[] buttons = new Button[3];
        Listener listener = new Listener(){

            public void handleEvent(Event event) {
                if (event.widget == buttons[2]) {
                    WebFrameLoadDelegate.this.showCertificate(shell, certificate);
                } else {
                    result[0] = event.widget == buttons[0];
                    shell.close();
                }
            }
        };
        Composite composite = new Composite(shell, 0);
        data = new GridData();
        data.horizontalAlignment = 3;
        composite.setLayoutData(data);
        composite.setLayout(new GridLayout(3, true));
        buttons[0] = new Button(composite, 8);
        buttons[0].setText(SWT.getMessage("SWT_Continue"));
        buttons[0].setLayoutData(new GridData(768));
        buttons[0].addListener(13, listener);
        buttons[1] = new Button(composite, 8);
        buttons[1].setText(SWT.getMessage("SWT_Cancel"));
        buttons[1].setLayoutData(new GridData(768));
        buttons[1].addListener(13, listener);
        buttons[2] = new Button(composite, 8);
        buttons[2].setText(SWT.getMessage("SWT_ViewCertificate"));
        buttons[2].setLayoutData(new GridData(768));
        buttons[2].addListener(13, listener);
        shell.setDefaultButton(buttons[0]);
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

    void showCertificate(Shell parent, int certificate) {
        CERT_CONTEXT context = new CERT_CONTEXT();
        OS.MoveMemory(context, certificate, CERT_CONTEXT.sizeof);
        CERT_INFO info = new CERT_INFO();
        OS.MoveMemory(info, context.pCertInfo, CERT_INFO.sizeof);
        int length = OS.CertNameToStr(1, info.Issuer, 1, null, 0);
        TCHAR tchar = new TCHAR(0, length);
        OS.CertNameToStr(1, info.Issuer, 1, tchar, length);
        String issuer = tchar.toString(0, tchar.strlen());
        length = OS.CertNameToStr(1, info.Subject, 1, null, 0);
        tchar = new TCHAR(0, length);
        OS.CertNameToStr(1, info.Subject, 1, tchar, length);
        String subject = tchar.toString(0, tchar.strlen());
        SYSTEMTIME systemTime = new SYSTEMTIME();
        OS.FileTimeToSystemTime(info.NotBefore, systemTime);
        String validFrom = String.valueOf(systemTime.wDay) + "/" + systemTime.wMonth + "/" + systemTime.wYear;
        String validFromTime = String.valueOf(systemTime.wHour) + ":" + systemTime.wMinute + ":" + systemTime.wSecond;
        systemTime = new SYSTEMTIME();
        OS.FileTimeToSystemTime(info.NotAfter, systemTime);
        String validTo = String.valueOf(systemTime.wDay) + "/" + systemTime.wMonth + "/" + systemTime.wYear;
        String validToTime = String.valueOf(systemTime.wHour) + ":" + systemTime.wMinute + ":" + systemTime.wSecond;
        length = info.SerialNumber.cbData;
        byte[] serialNumber = new byte[length];
        OS.MoveMemory(serialNumber, info.SerialNumber.pbData, length);
        String hexSerialNumber = new String();
        int i = length - 1;
        while (i >= 0) {
            int number = 0xFF & serialNumber[i];
            String hex = Integer.toHexString(number);
            if (hex.length() == 1) {
                hexSerialNumber = String.valueOf(hexSerialNumber) + "0";
            }
            hexSerialNumber = String.valueOf(hexSerialNumber) + hex + " ";
            --i;
        }
        final Shell dialog = new Shell(parent, 67680);
        dialog.setText(SWT.getMessage("SWT_Certificate"));
        dialog.setLayout(new GridLayout(1, false));
        TabFolder tabFolder = new TabFolder(dialog, 0);
        tabFolder.setLayoutData(new GridData(4, 4, true, true, 1, 1));
        tabFolder.setLayout(new FillLayout());
        TabItem general = new TabItem(tabFolder, 0);
        general.setText(SWT.getMessage("SWT_General"));
        Composite composite = new Composite(tabFolder, 2048);
        composite.setLayout(new GridLayout(1, false));
        Label issuedTo = new Label(composite, 0);
        issuedTo.setLayoutData(new GridData(1, 0x1000000, false, false));
        issuedTo.setText(Compatibility.getMessage("SWT_IssuedTo", new Object[]{subject}));
        Label issuedBy = new Label(composite, 0);
        issuedBy.setLayoutData(new GridData(1, 0x1000000, false, false));
        issuedBy.setText(Compatibility.getMessage("SWT_IssuedFrom", new Object[]{issuer}));
        Label valid = new Label(composite, 0);
        valid.setLayoutData(new GridData(1, 0x1000000, false, false));
        valid.setText(Compatibility.getMessage("SWT_ValidFromTo", new Object[]{validFrom, validTo}));
        general.setControl(composite);
        TabItem details = new TabItem(tabFolder, 0);
        details.setText(SWT.getMessage("SWT_Details"));
        Table table = new Table(tabFolder, 67588);
        table.setHeaderVisible(true);
        TableColumn tableColumn = new TableColumn(table, 16384);
        tableColumn.setText(SWT.getMessage("SWT_Field"));
        tableColumn = new TableColumn(table, 0);
        tableColumn.setText(SWT.getMessage("SWT_Value"));
        TableItem tableItem = new TableItem(table, 0);
        String version = "V" + String.valueOf(info.dwVersion + 1);
        tableItem.setText(new String[]{SWT.getMessage("SWT_Version"), version});
        tableItem = new TableItem(table, 0);
        tableItem.setText(new String[]{SWT.getMessage("SWT_SerialNumber"), hexSerialNumber});
        tableItem = new TableItem(table, 0);
        tableItem.setText(new String[]{SWT.getMessage("SWT_Issuer"), issuer});
        tableItem = new TableItem(table, 0);
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append(validFrom);
        stringBuffer2.append(", ");
        stringBuffer2.append(validFromTime);
        stringBuffer2.append(" GMT");
        tableItem.setText(new String[]{SWT.getMessage("SWT_ValidFrom"), stringBuffer2.toString()});
        tableItem = new TableItem(table, 0);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(validTo);
        stringBuffer.append(", ");
        stringBuffer.append(validToTime);
        stringBuffer.append(" GMT");
        tableItem.setText(new String[]{SWT.getMessage("SWT_ValidTo"), stringBuffer.toString()});
        tableItem = new TableItem(table, 0);
        tableItem.setText(new String[]{SWT.getMessage("SWT_Subject"), subject});
        int i2 = 0;
        while (i2 < table.getColumnCount()) {
            table.getColumn(i2).pack();
            ++i2;
        }
        details.setControl(table);
        Button ok = new Button(dialog, 8);
        GridData layoutData = new GridData(0x1000008, 0x1000000, false, false);
        layoutData.widthHint = 75;
        ok.setLayoutData(layoutData);
        ok.setText(SWT.getMessage("SWT_OK"));
        ok.addSelectionListener(new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                dialog.dispose();
            }
        });
        dialog.setDefaultButton(ok);
        dialog.pack();
        Rectangle parentSize = parent.getBounds();
        Rectangle dialogSize = dialog.getBounds();
        int x = parent.getLocation().x + (parentSize.width - dialogSize.width) / 2;
        int y = parent.getLocation().y + (parentSize.height - dialogSize.height) / 2;
        dialog.setLocation(x, y);
        dialog.open();
        Display display = this.browser.getDisplay();
        while (!dialog.isDisposed()) {
            if (display.readAndDispatch()) continue;
            display.sleep();
        }
    }
}

