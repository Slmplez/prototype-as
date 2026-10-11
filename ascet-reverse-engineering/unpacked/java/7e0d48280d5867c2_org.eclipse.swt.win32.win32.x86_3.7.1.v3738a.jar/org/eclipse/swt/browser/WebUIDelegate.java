/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.browser;

import org.eclipse.swt.SWT;
import org.eclipse.swt.browser.Browser;
import org.eclipse.swt.browser.CloseWindowListener;
import org.eclipse.swt.browser.OpenWindowListener;
import org.eclipse.swt.browser.StatusTextEvent;
import org.eclipse.swt.browser.StatusTextListener;
import org.eclipse.swt.browser.VisibilityWindowListener;
import org.eclipse.swt.browser.WebKit;
import org.eclipse.swt.browser.WindowEvent;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.C;
import org.eclipse.swt.internal.Compatibility;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.COMObject;
import org.eclipse.swt.internal.ole.win32.GUID;
import org.eclipse.swt.internal.ole.win32.IPropertyBag;
import org.eclipse.swt.internal.ole.win32.IUnknown;
import org.eclipse.swt.internal.ole.win32.VARIANT;
import org.eclipse.swt.internal.webkit.IWebDataSource;
import org.eclipse.swt.internal.webkit.IWebFrame;
import org.eclipse.swt.internal.webkit.IWebFramePrivate;
import org.eclipse.swt.internal.webkit.IWebOpenPanelResultListener;
import org.eclipse.swt.internal.webkit.IWebURLRequest;
import org.eclipse.swt.internal.webkit.IWebView;
import org.eclipse.swt.internal.webkit.WebKit_win32;
import org.eclipse.swt.internal.win32.DOCINFO;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.PRINTDLG;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.FileDialog;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MessageBox;
import org.eclipse.swt.widgets.Monitor;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Text;
import org.eclipse.swt.widgets.Widget;

class WebUIDelegate {
    COMObject iWebUIDelegate;
    int refCount = 0;
    String lastHoveredLinkURL;
    Browser browser;
    Point size;
    Point location;
    boolean menuBar = true;
    boolean toolBar = true;
    boolean statusBar = true;
    boolean prompt = true;

    WebUIDelegate(Browser browser) {
        this.createCOMInterfaces();
        this.browser = browser;
    }

    int AddRef() {
        ++this.refCount;
        return this.refCount;
    }

    int canTakeFocus(int sender, int forward, int result) {
        OS.MoveMemory(result, new int[]{1}, 4);
        return 0;
    }

    int contextMenuItemsForElement(int sender, int element, int defaultItemsHMenu, int resultHMenu) {
        Point pt = this.browser.getDisplay().getCursorLocation();
        Event event = new Event();
        event.x = pt.x;
        event.y = pt.y;
        this.browser.notifyListeners(35, event);
        if (event.doit) {
            Menu menu = this.browser.getMenu();
            if (menu != null && !menu.isDisposed()) {
                if (event.x != pt.x || event.y != pt.y) {
                    menu.setLocation(event.x, event.y);
                }
                menu.setVisible(true);
            } else {
                OS.MoveMemory(resultHMenu, new int[]{defaultItemsHMenu}, C.PTR_SIZEOF);
                return 0;
            }
        }
        OS.MoveMemory(resultHMenu, new int[1], C.PTR_SIZEOF);
        return 0;
    }

    void createCOMInterfaces() {
        int[] nArray = new int[66];
        nArray[0] = 2;
        nArray[3] = 3;
        nArray[4] = 1;
        nArray[5] = 1;
        nArray[6] = 1;
        nArray[7] = 1;
        nArray[8] = 2;
        nArray[9] = 2;
        nArray[10] = 2;
        nArray[11] = 2;
        nArray[12] = 2;
        nArray[13] = 2;
        nArray[14] = 2;
        nArray[15] = 2;
        nArray[16] = 2;
        nArray[17] = 2;
        nArray[18] = 2;
        nArray[19] = 2;
        nArray[20] = 2;
        nArray[21] = 2;
        nArray[22] = 2;
        nArray[23] = 3;
        nArray[24] = 4;
        nArray[25] = 4;
        nArray[26] = 2;
        nArray[27] = 3;
        nArray[28] = 4;
        nArray[29] = 4;
        nArray[30] = 3;
        nArray[31] = 3;
        nArray[32] = 3;
        nArray[33] = 3;
        nArray[34] = 5;
        nArray[35] = 3;
        nArray[36] = 1;
        nArray[37] = 3;
        nArray[38] = 2;
        nArray[39] = 2;
        nArray[40] = 2;
        nArray[41] = 2;
        nArray[42] = 3;
        nArray[43] = 2;
        nArray[44] = 3;
        nArray[45] = 1;
        nArray[46] = 1;
        nArray[49] = 1;
        nArray[50] = 1;
        nArray[51] = 2;
        nArray[52] = 2;
        nArray[53] = 2;
        nArray[54] = 2;
        nArray[55] = 3;
        nArray[56] = 5;
        nArray[57] = 2;
        nArray[58] = 2;
        nArray[59] = 3;
        nArray[60] = 1;
        nArray[61] = 2;
        nArray[62] = 2;
        nArray[63] = 4;
        nArray[64] = 10;
        nArray[65] = 3;
        this.iWebUIDelegate = new COMObject(nArray){

            public int method0(int[] args) {
                return WebUIDelegate.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return WebUIDelegate.this.AddRef();
            }

            public int method2(int[] args) {
                return WebUIDelegate.this.Release();
            }

            public int method3(int[] args) {
                return WebUIDelegate.this.createWebViewWithRequest(args[0], args[1], args[2]);
            }

            public int method4(int[] args) {
                return WebUIDelegate.this.webViewShow(args[0]);
            }

            public int method5(int[] args) {
                return WebUIDelegate.this.webViewClose(args[0]);
            }

            public int method6(int[] args) {
                return -2147467263;
            }

            public int method7(int[] args) {
                return -2147467263;
            }

            public int method8(int[] args) {
                return -2147467263;
            }

            public int method9(int[] args) {
                return -2147467263;
            }

            public int method10(int[] args) {
                return WebUIDelegate.this.setStatusText(args[0], args[1]);
            }

            public int method11(int[] args) {
                return -2147467263;
            }

            public int method12(int[] args) {
                return -2147467263;
            }

            public int method13(int[] args) {
                return WebUIDelegate.this.setToolbarsVisible(args[0], args[1]);
            }

            public int method14(int[] args) {
                return -2147467263;
            }

            public int method15(int[] args) {
                return WebUIDelegate.this.setStatusBarVisible(args[0], args[1]);
            }

            public int method16(int[] args) {
                return -2147467263;
            }

            public int method17(int[] args) {
                return -2147467263;
            }

            public int method18(int[] args) {
                return WebUIDelegate.this.setFrame(args[0], args[1]);
            }

            public int method19(int[] args) {
                return -2147467263;
            }

            public int method20(int[] args) {
                return -2147467263;
            }

            public int method21(int[] args) {
                return -2147467263;
            }

            public int method22(int[] args) {
                return WebUIDelegate.this.runJavaScriptAlertPanelWithMessage(args[0], args[1]);
            }

            public int method23(int[] args) {
                return WebUIDelegate.this.runJavaScriptConfirmPanelWithMessage(args[0], args[1], args[2]);
            }

            public int method24(int[] args) {
                return WebUIDelegate.this.runJavaScriptTextInputPanelWithPrompt(args[0], args[1], args[2], args[3]);
            }

            public int method25(int[] args) {
                return WebUIDelegate.this.runBeforeUnloadConfirmPanelWithMessage(args[0], args[1], args[2], args[3]);
            }

            public int method26(int[] args) {
                return WebUIDelegate.this.runOpenPanelForFileButtonWithResultListener(args[0], args[1]);
            }

            public int method27(int[] args) {
                return WebUIDelegate.this.mouseDidMoveOverElement(args[0], args[1], args[2]);
            }

            public int method28(int[] args) {
                return WebUIDelegate.this.contextMenuItemsForElement(args[0], args[1], args[2], args[3]);
            }

            public int method29(int[] args) {
                return -2147467263;
            }

            public int method30(int[] args) {
                return -2147467263;
            }

            public int method31(int[] args) {
                return -2147467263;
            }

            public int method32(int[] args) {
                return -2147467263;
            }

            public int method33(int[] args) {
                return -2147467263;
            }

            public int method34(int[] args) {
                return -2147467263;
            }

            public int method35(int[] args) {
                return -2147467263;
            }

            public int method36(int[] args) {
                return -2147467263;
            }

            public int method37(int[] args) {
                return -2147467263;
            }

            public int method38(int[] args) {
                return -2147467263;
            }

            public int method39(int[] args) {
                return -2147467263;
            }

            public int method40(int[] args) {
                return -2147467263;
            }

            public int method41(int[] args) {
                return -2147467263;
            }

            public int method42(int[] args) {
                return WebUIDelegate.this.canTakeFocus(args[0], args[1], args[2]);
            }

            public int method43(int[] args) {
                return WebUIDelegate.this.takeFocus(args[0], args[1]);
            }

            public int method44(int[] args) {
                return -2147467263;
            }

            public int method45(int[] args) {
                return 0;
            }

            public int method46(int[] args) {
                return -2147467263;
            }

            public int method47(int[] args) {
                return -2147467263;
            }

            public int method48(int[] args) {
                return -2147467263;
            }

            public int method49(int[] args) {
                return -2147467263;
            }

            public int method50(int[] args) {
                return -2147467263;
            }

            public int method51(int[] args) {
                return WebUIDelegate.this.printFrame(args[0], args[1]);
            }

            public int method52(int[] args) {
                return -2147467263;
            }

            public int method53(int[] args) {
                return -2147467263;
            }

            public int method54(int[] args) {
                return -2147467263;
            }

            public int method55(int[] args) {
                return -2147467263;
            }

            public int method56(int[] args) {
                return -2147467263;
            }

            public int method57(int[] args) {
                return -2147467263;
            }

            public int method58(int[] args) {
                return -2147467263;
            }

            public int method59(int[] args) {
                return -2147467263;
            }

            public int method60(int[] args) {
                return -2147467263;
            }

            public int method61(int[] args) {
                return -2147467263;
            }

            public int method62(int[] args) {
                return WebUIDelegate.this.setMenuBarVisible(args[0], args[1]);
            }

            public int method63(int[] args) {
                return -2147467263;
            }

            public int method64(int[] args) {
                return -2147467263;
            }

            public int method65(int[] args) {
                return -2147467263;
            }
        };
    }

    int createWebViewWithRequest(int sender, int request, int webView) {
        WindowEvent newEvent = new WindowEvent(this.browser);
        newEvent.display = this.browser.getDisplay();
        newEvent.widget = this.browser;
        newEvent.required = true;
        OpenWindowListener[] openWindowListeners = this.browser.webBrowser.openWindowListeners;
        int i = 0;
        while (i < openWindowListeners.length) {
            openWindowListeners[i].open(newEvent);
            ++i;
        }
        IWebView iwebview = null;
        Widget browser = null;
        if (newEvent.browser != null && newEvent.browser.webBrowser instanceof WebKit) {
            browser = newEvent.browser;
        }
        if (browser != null && !browser.isDisposed()) {
            iwebview = ((WebKit)((Browser)browser).webBrowser).webView;
            OS.MoveMemory(webView, new int[]{iwebview.getAddress()}, OS.PTR_SIZEOF);
            if (request != 0) {
                IWebURLRequest req = new IWebURLRequest(request);
                int[] result = new int[1];
                int hr = req.URL(result);
                if (hr != 0 || result[0] == 0) {
                    return 0;
                }
                String sUrl = WebKit.extractBSTR(result[0]);
                COM.SysFreeString(result[0]);
                if (sUrl.length() != 0) {
                    result[0] = 0;
                    hr = iwebview.mainFrame(result);
                    if (hr != 0 || result[0] == 0) {
                        return 0;
                    }
                    IWebFrame mainFrame = new IWebFrame(result[0]);
                    mainFrame.loadRequest(req.getAddress());
                    mainFrame.Release();
                }
            }
            return 0;
        }
        return -2147467263;
    }

    protected void disposeCOMInterfaces() {
        if (this.iWebUIDelegate != null) {
            this.iWebUIDelegate.dispose();
            this.iWebUIDelegate = null;
        }
    }

    int getAddress() {
        return this.iWebUIDelegate.getAddress();
    }

    int mouseDidMoveOverElement(int sender, int elementInformation, int modifierFlags) {
        int hHeap;
        int resultPtr;
        if (elementInformation == 0) {
            return 0;
        }
        IPropertyBag info = new IPropertyBag(elementInformation);
        int key = WebKit.createBSTR("WebElementLinkURLKey");
        int hr = info.Read(key, resultPtr = OS.HeapAlloc(hHeap = OS.GetProcessHeap(), 8, VARIANT.sizeof), null);
        if (hr != 0 || resultPtr == 0) {
            return 0;
        }
        String value = null;
        VARIANT v = new VARIANT();
        COM.MoveMemory(v, resultPtr, VARIANT.sizeof);
        if (v.vt == 8) {
            value = WebKit.extractBSTR(v.lVal);
        }
        OS.HeapFree(hHeap, 0, resultPtr);
        StatusTextListener[] statusTextListeners = this.browser.webBrowser.statusTextListeners;
        if (value == null || value.length() == 0) {
            if (this.lastHoveredLinkURL == null) {
                return 0;
            }
            this.lastHoveredLinkURL = null;
            StatusTextEvent statusText = new StatusTextEvent(this.browser);
            statusText.display = this.browser.getDisplay();
            statusText.widget = this.browser;
            statusText.text = "";
            int i = 0;
            while (i < statusTextListeners.length) {
                statusTextListeners[i].changed(statusText);
                ++i;
            }
            return 0;
        }
        if (value.equals(this.lastHoveredLinkURL)) {
            return 0;
        }
        this.lastHoveredLinkURL = value;
        StatusTextEvent statusText = new StatusTextEvent(this.browser);
        statusText.display = this.browser.getDisplay();
        statusText.widget = this.browser;
        statusText.text = value;
        int i = 0;
        while (i < statusTextListeners.length) {
            statusTextListeners[i].changed(statusText);
            ++i;
        }
        return 0;
    }

    int printFrame(int webView, int frame) {
        IWebFrame iwebFrame = new IWebFrame(frame);
        PRINTDLG pd = new PRINTDLG();
        pd.lStructSize = PRINTDLG.sizeof;
        pd.Flags = 256;
        if (!OS.PrintDlg(pd)) {
            return 0;
        }
        int printDC = pd.hDC;
        int[] result = new int[1];
        int hr = iwebFrame.QueryInterface(WebKit_win32.IID_IWebFramePrivate, result);
        if (hr != 0 || result[0] == 0) {
            return 0;
        }
        IWebFramePrivate privateFrame = new IWebFramePrivate(result[0]);
        privateFrame.setInPrintingMode(1, printDC);
        int[] count = new int[1];
        hr = privateFrame.getPrintedPageCount(printDC, count);
        if (hr != 0 || count[0] == 0) {
            privateFrame.Release();
            return 0;
        }
        int pageCount = count[0];
        String jobName = null;
        result[0] = 0;
        hr = iwebFrame.dataSource(result);
        if (hr == 0 && result[0] != 0) {
            IWebDataSource dataSource = new IWebDataSource(result[0]);
            result[0] = 0;
            hr = dataSource.pageTitle(result);
            dataSource.Release();
            if (hr == 0 && result[0] != 0) {
                jobName = WebKit.extractBSTR(result[0]);
                COM.SysFreeString(result[0]);
            }
        }
        DOCINFO di = new DOCINFO();
        di.cbSize = DOCINFO.sizeof;
        int hHeap = OS.GetProcessHeap();
        int lpszDocName = 0;
        if (jobName != null && jobName.length() != 0) {
            TCHAR buffer = new TCHAR(0, jobName, true);
            int byteCount = buffer.length() * TCHAR.sizeof;
            lpszDocName = OS.HeapAlloc(hHeap, 8, byteCount);
            OS.MoveMemory(lpszDocName, buffer, byteCount);
            di.lpszDocName = lpszDocName;
        }
        int rc = OS.StartDoc(printDC, di);
        if (lpszDocName != 0) {
            OS.HeapFree(hHeap, 0, lpszDocName);
        }
        if (rc >= 0) {
            int i = 0;
            while (i < pageCount) {
                OS.StartPage(printDC);
                privateFrame.spoolPages(printDC, i, i, null);
                OS.EndPage(printDC);
                ++i;
            }
            privateFrame.setInPrintingMode(0, printDC);
            OS.EndDoc(printDC);
        }
        privateFrame.Release();
        return 0;
    }

    int QueryInterface(int riid, int ppvObject) {
        if (riid == 0 || ppvObject == 0) {
            return -2147024809;
        }
        GUID guid = new GUID();
        COM.MoveMemory(guid, riid, GUID.sizeof);
        if (COM.IsEqualGUID(guid, COM.IIDIUnknown)) {
            COM.MoveMemory(ppvObject, new int[]{this.iWebUIDelegate.getAddress()}, OS.PTR_SIZEOF);
            new IUnknown(this.iWebUIDelegate.getAddress()).AddRef();
            return 0;
        }
        if (COM.IsEqualGUID(guid, WebKit_win32.IID_IWebUIDelegate)) {
            COM.MoveMemory(ppvObject, new int[]{this.iWebUIDelegate.getAddress()}, OS.PTR_SIZEOF);
            new IUnknown(this.iWebUIDelegate.getAddress()).AddRef();
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

    int runBeforeUnloadConfirmPanelWithMessage(int sender, int message, int initiatedByFrame, int result) {
        if (!this.prompt) {
            return 0;
        }
        Shell parent = this.browser.getShell();
        String string = WebKit.extractBSTR(message);
        StringBuffer text = new StringBuffer(Compatibility.getMessage("SWT_OnBeforeUnload_Message1"));
        text.append("\n\n");
        text.append(string);
        text.append("\n\n");
        text.append(Compatibility.getMessage("SWT_OnBeforeUnload_Message2"));
        MessageBox box = new MessageBox(parent, 292);
        box.setMessage(text.toString());
        int[] response = new int[]{box.open() == 32 ? 1 : 0};
        OS.MoveMemory(result, response, 4);
        return 0;
    }

    int runJavaScriptAlertPanelWithMessage(int sender, int message) {
        String messageString = WebKit.extractBSTR(message);
        this.showAlertMessage("Javascript", messageString);
        return 0;
    }

    int runJavaScriptConfirmPanelWithMessage(int sender, int message, int result) {
        String messageString = WebKit.extractBSTR(message);
        int[] response = new int[]{this.showConfirmPanel("Javascript", messageString) == 32 ? 1 : 0};
        OS.MoveMemory(result, response, 4);
        return 0;
    }

    int runJavaScriptTextInputPanelWithPrompt(int sender, int message, int defaultText, int result) {
        String messageString = WebKit.extractBSTR(message);
        String defaultTextString = WebKit.extractBSTR(defaultText);
        String resultString = this.showTextPrompter("Javascript", messageString, defaultTextString);
        int[] response = new int[1];
        if (resultString != null) {
            response[0] = WebKit.createBSTR(resultString);
        }
        OS.MoveMemory(result, response, C.PTR_SIZEOF);
        return 0;
    }

    int runOpenPanelForFileButtonWithResultListener(int sender, int resultListener) {
        Shell parent = this.browser.getShell();
        FileDialog dialog = new FileDialog(parent, 0);
        String result = dialog.open();
        IWebOpenPanelResultListener listener = new IWebOpenPanelResultListener(resultListener);
        if (result == null) {
            listener.cancel();
        } else {
            listener.chooseFilename(WebKit.createBSTR(result));
        }
        return 0;
    }

    int setFrame(int sender, int frame) {
        RECT rect = new RECT();
        COM.MoveMemory(rect, frame, RECT.sizeof);
        this.location = this.browser.getDisplay().map(this.browser, null, rect.left, rect.top);
        int x = rect.right - rect.left;
        int y = rect.bottom - rect.top;
        if (y < 0 || x < 0 || x == 0 && y == 0) {
            return 0;
        }
        this.size = new Point(x, y);
        return 0;
    }

    int setMenuBarVisible(int sender, int visible) {
        this.menuBar = visible == 1;
        return 0;
    }

    int setStatusBarVisible(int sender, int visible) {
        this.statusBar = visible == 1;
        return 0;
    }

    int setStatusText(int sender, int text) {
        String statusText = WebKit.extractBSTR(text);
        if (statusText.length() == 0) {
            return 0;
        }
        StatusTextEvent statusTextEvent = new StatusTextEvent(this.browser);
        statusTextEvent.display = this.browser.getDisplay();
        statusTextEvent.widget = this.browser;
        statusTextEvent.text = statusText;
        StatusTextListener[] statusTextListeners = this.browser.webBrowser.statusTextListeners;
        int i = 0;
        while (i < statusTextListeners.length) {
            statusTextListeners[i].changed(statusTextEvent);
            ++i;
        }
        return 0;
    }

    int setToolbarsVisible(int sender, int visible) {
        this.toolBar = visible == 1;
        return 0;
    }

    void showAlertMessage(String title, String message) {
        Shell parent = this.browser.getShell();
        final Shell dialog = new Shell(parent, 67680);
        GridLayout layout = new GridLayout(2, false);
        layout.horizontalSpacing = 10;
        layout.verticalSpacing = 20;
        layout.marginHeight = 10;
        layout.marginWidth = 10;
        dialog.setLayout(layout);
        dialog.setText(title);
        Label label = new Label(dialog, 0);
        Image image = dialog.getDisplay().getSystemImage(8);
        label.setImage(image);
        label = new Label(dialog, 64);
        label.setText(message);
        Monitor monitor = parent.getMonitor();
        int maxWidth = monitor.getBounds().width * 2 / 3;
        int width = label.computeSize((int)-1, (int)-1).x;
        GridData data = new GridData(4, 0x1000000, true, false);
        data.widthHint = Math.min(width, maxWidth);
        label.setLayoutData(data);
        Button ok = new Button(dialog, 8);
        ok.setText(SWT.getMessage("SWT_OK"));
        width = ok.computeSize((int)-1, (int)-1).x;
        GridData layoutData = new GridData();
        layoutData.horizontalAlignment = 0x1000000;
        layoutData.verticalAlignment = 0x1000000;
        layoutData.horizontalSpan = 2;
        layoutData.widthHint = Math.max(width, 75);
        ok.setLayoutData(layoutData);
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

    int showConfirmPanel(String title, String message) {
        Shell parent = this.browser.getShell();
        final Shell dialog = new Shell(parent, 67680);
        GridLayout layout = new GridLayout(2, false);
        layout.horizontalSpacing = 10;
        layout.verticalSpacing = 20;
        layout.marginHeight = 10;
        layout.marginWidth = 10;
        dialog.setLayout(layout);
        dialog.setText(title);
        Label label = new Label(dialog, 0);
        Image image = dialog.getDisplay().getSystemImage(4);
        label.setImage(image);
        label.setLayoutData(new GridData());
        label = new Label(dialog, 64);
        label.setText(message);
        Monitor monitor = parent.getMonitor();
        int maxWidth = monitor.getBounds().width * 2 / 3;
        int width = label.computeSize((int)-1, (int)-1).x;
        GridData data = new GridData(4, 0x1000000, true, false);
        data.widthHint = Math.min(width, maxWidth);
        label.setLayoutData(data);
        Composite buttons = new Composite(dialog, 0);
        data = new GridData(0x1000000, 0x1000000, true, true, 2, 1);
        buttons.setLayoutData(data);
        buttons.setLayout(new GridLayout(2, true));
        Button ok = new Button(buttons, 8);
        ok.setText(SWT.getMessage("SWT_OK"));
        GridData layoutData = new GridData();
        layoutData.horizontalAlignment = 0x1000000;
        layoutData.verticalAlignment = 0x1000000;
        ok.setLayoutData(layoutData);
        Button cancel = new Button(buttons, 8);
        cancel.setText(SWT.getMessage("SWT_Cancel"));
        cancel.setLayoutData(layoutData);
        width = cancel.computeSize((int)-1, (int)-1).x;
        layoutData.widthHint = Math.max(width, 75);
        final int[] result = new int[1];
        ok.addSelectionListener(new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                result[0] = 32;
                dialog.dispose();
            }
        });
        cancel.addSelectionListener(new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                result[0] = 256;
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
        return result[0];
    }

    String showTextPrompter(String title, String message, String defaultText) {
        Shell parent = this.browser.getShell();
        final Shell dialog = new Shell(parent, 67680);
        dialog.setLayout(new GridLayout());
        dialog.setText(title);
        Label label = new Label(dialog, 0);
        label.setLayoutData(new GridData(768));
        label.setText(message);
        final Text textBox = new Text(dialog, 2052);
        GridData data = new GridData(768);
        data.widthHint = 300;
        textBox.setLayoutData(data);
        textBox.setText(defaultText);
        Composite buttons = new Composite(dialog, 0);
        buttons.setLayout(new GridLayout(2, true));
        buttons.setLayoutData(new GridData(64));
        Button ok = new Button(buttons, 8);
        ok.setText(SWT.getMessage("SWT_OK"));
        ok.setLayoutData(new GridData(768));
        final String[] result = new String[1];
        ok.addSelectionListener(new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                result[0] = textBox.getText();
                dialog.dispose();
            }
        });
        Button cancel = new Button(buttons, 8);
        cancel.setText(SWT.getMessage("SWT_Cancel"));
        cancel.setLayoutData(new GridData(768));
        cancel.addSelectionListener(new SelectionAdapter(){

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
        return result[0];
    }

    int takeFocus(int sender, int forward) {
        int traveralCode = forward == 0 ? 8 : 16;
        ((WebKit)this.browser.webBrowser).traverseOut = true;
        this.browser.traverse(traveralCode);
        return 0;
    }

    int webViewClose(int sender) {
        WindowEvent newEvent = new WindowEvent(this.browser);
        newEvent.display = this.browser.getDisplay();
        newEvent.widget = this.browser;
        CloseWindowListener[] closeWindowListeners = this.browser.webBrowser.closeWindowListeners;
        int i = 0;
        while (i < closeWindowListeners.length) {
            closeWindowListeners[i].close(newEvent);
            ++i;
        }
        this.browser.dispose();
        return 0;
    }

    int webViewFrame(int sender, int frame) {
        RECT rect = new RECT();
        OS.MoveMemory(frame, rect, RECT.sizeof);
        return 0;
    }

    int webViewShow(int sender) {
        WindowEvent newEvent = new WindowEvent(this.browser);
        newEvent.display = this.browser.getDisplay();
        newEvent.widget = this.browser;
        if (this.location != null) {
            newEvent.location = this.location;
        }
        if (this.size != null) {
            newEvent.size = this.size;
        }
        newEvent.addressBar = this.toolBar;
        newEvent.menuBar = this.menuBar;
        newEvent.statusBar = this.statusBar;
        newEvent.toolBar = this.toolBar;
        VisibilityWindowListener[] visibilityWindowListeners = this.browser.webBrowser.visibilityWindowListeners;
        int i = 0;
        while (i < visibilityWindowListeners.length) {
            visibilityWindowListeners[i].show(newEvent);
            ++i;
        }
        this.location = null;
        this.size = null;
        return 0;
    }
}

