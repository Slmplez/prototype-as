/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.browser;

import java.util.Hashtable;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.browser.AuthenticationEvent;
import org.eclipse.swt.browser.Browser;
import org.eclipse.swt.browser.BrowserFunction;
import org.eclipse.swt.browser.IE;
import org.eclipse.swt.browser.WebBrowser;
import org.eclipse.swt.internal.C;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.COMObject;
import org.eclipse.swt.internal.ole.win32.DISPPARAMS;
import org.eclipse.swt.internal.ole.win32.GUID;
import org.eclipse.swt.internal.ole.win32.IDispatch;
import org.eclipse.swt.internal.ole.win32.IDispatchEx;
import org.eclipse.swt.internal.ole.win32.TYPEATTR;
import org.eclipse.swt.internal.ole.win32.VARIANT;
import org.eclipse.swt.internal.win32.DOCHOSTUIINFO;
import org.eclipse.swt.internal.win32.MSG;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.POINT;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.ole.win32.OleAutomation;
import org.eclipse.swt.ole.win32.OleControlSite;
import org.eclipse.swt.ole.win32.Variant;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.Shell;

class WebSite
extends OleControlSite {
    COMObject iDocHostUIHandler;
    COMObject iDocHostShowUI;
    COMObject iServiceProvider;
    COMObject iInternetSecurityManager;
    COMObject iOleCommandTarget;
    COMObject iAuthenticate;
    COMObject iDispatch;
    boolean ignoreNextMessage;
    boolean ignoreAllMessages;
    Boolean canExecuteApplets;
    static final int OLECMDID_SHOWSCRIPTERROR = 40;
    static final short[] ACCENTS = new short[]{126, 96, 39, 94, 34};
    static final String CONSUME_KEY = "org.eclipse.swt.OleFrame.ConsumeKey";

    public WebSite(Composite parent, int style, String progId) {
        super(parent, style, progId);
    }

    protected void createCOMInterfaces() {
        super.createCOMInterfaces();
        int[] nArray = new int[18];
        nArray[0] = 2;
        nArray[3] = 4;
        nArray[4] = 1;
        nArray[5] = 5;
        nArray[8] = 1;
        nArray[9] = 1;
        nArray[10] = 1;
        nArray[11] = 3;
        nArray[12] = 3;
        nArray[13] = 2;
        nArray[14] = 2;
        nArray[15] = 1;
        nArray[16] = 3;
        nArray[17] = 2;
        this.iDocHostUIHandler = new COMObject(nArray){

            public int method0(int[] args) {
                return WebSite.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return WebSite.this.AddRef();
            }

            public int method2(int[] args) {
                return WebSite.this.Release();
            }

            public int method3(int[] args) {
                return WebSite.this.ShowContextMenu(args[0], args[1], args[2], args[3]);
            }

            public int method4(int[] args) {
                return WebSite.this.GetHostInfo(args[0]);
            }

            public int method5(int[] args) {
                return WebSite.this.ShowUI(args[0], args[1], args[2], args[3], args[4]);
            }

            public int method6(int[] args) {
                return WebSite.this.HideUI();
            }

            public int method7(int[] args) {
                return WebSite.this.UpdateUI();
            }

            public int method8(int[] args) {
                return WebSite.this.EnableModeless(args[0]);
            }

            public int method9(int[] args) {
                return WebSite.this.OnDocWindowActivate(args[0]);
            }

            public int method10(int[] args) {
                return WebSite.this.OnFrameWindowActivate(args[0]);
            }

            public int method11(int[] args) {
                return WebSite.this.ResizeBorder(args[0], args[1], args[2]);
            }

            public int method12(int[] args) {
                return WebSite.this.TranslateAccelerator(args[0], args[1], args[2]);
            }

            public int method13(int[] args) {
                return WebSite.this.GetOptionKeyPath(args[0], args[1]);
            }

            public int method14(int[] args) {
                return WebSite.this.GetDropTarget(args[0], args[1]);
            }

            public int method15(int[] args) {
                return WebSite.this.GetExternal(args[0]);
            }

            public int method16(int[] args) {
                return WebSite.this.TranslateUrl(args[0], args[1], args[2]);
            }

            public int method17(int[] args) {
                return WebSite.this.FilterDataObject(args[0], args[1]);
            }
        };
        int[] nArray2 = new int[5];
        nArray2[0] = 2;
        nArray2[3] = 7;
        nArray2[4] = C.PTR_SIZEOF == 4 ? 7 : 6;
        this.iDocHostShowUI = new COMObject(nArray2){

            public int method0(int[] args) {
                return WebSite.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return WebSite.this.AddRef();
            }

            public int method2(int[] args) {
                return WebSite.this.Release();
            }

            public int method3(int[] args) {
                return WebSite.this.ShowMessage(args[0], args[1], args[2], args[3], args[4], args[5], args[6]);
            }

            public int method4(int[] args) {
                if (args.length == 7) {
                    return WebSite.this.ShowHelp(args[0], args[1], args[2], args[3], args[4], args[5], args[6]);
                }
                return WebSite.this.ShowHelp_64(args[0], args[1], args[2], args[3], args[4], args[5]);
            }
        };
        int[] nArray3 = new int[4];
        nArray3[0] = 2;
        nArray3[3] = 3;
        this.iServiceProvider = new COMObject(nArray3){

            public int method0(int[] args) {
                return WebSite.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return WebSite.this.AddRef();
            }

            public int method2(int[] args) {
                return WebSite.this.Release();
            }

            public int method3(int[] args) {
                return WebSite.this.QueryService(args[0], args[1], args[2]);
            }
        };
        int[] nArray4 = new int[11];
        nArray4[0] = 2;
        nArray4[3] = 1;
        nArray4[4] = 1;
        nArray4[5] = 3;
        nArray4[6] = 4;
        nArray4[7] = 8;
        nArray4[8] = 7;
        nArray4[9] = 3;
        nArray4[10] = 3;
        this.iInternetSecurityManager = new COMObject(nArray4){

            public int method0(int[] args) {
                return WebSite.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return WebSite.this.AddRef();
            }

            public int method2(int[] args) {
                return WebSite.this.Release();
            }

            public int method3(int[] args) {
                return WebSite.this.SetSecuritySite(args[0]);
            }

            public int method4(int[] args) {
                return WebSite.this.GetSecuritySite(args[0]);
            }

            public int method5(int[] args) {
                return WebSite.this.MapUrlToZone(args[0], args[1], args[2]);
            }

            public int method6(int[] args) {
                return WebSite.this.GetSecurityId(args[0], args[1], args[2], args[3]);
            }

            public int method7(int[] args) {
                return WebSite.this.ProcessUrlAction(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7]);
            }

            public int method8(int[] args) {
                return WebSite.this.QueryCustomPolicy(args[0], args[1], args[2], args[3], args[4], args[5], args[6]);
            }

            public int method9(int[] args) {
                return WebSite.this.SetZoneMapping(args[0], args[1], args[2]);
            }

            public int method10(int[] args) {
                return WebSite.this.GetZoneMappings(args[0], args[1], args[2]);
            }
        };
        int[] nArray5 = new int[5];
        nArray5[0] = 2;
        nArray5[3] = 4;
        nArray5[4] = 5;
        this.iOleCommandTarget = new COMObject(nArray5){

            public int method0(int[] args) {
                return WebSite.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return WebSite.this.AddRef();
            }

            public int method2(int[] args) {
                return WebSite.this.Release();
            }

            public int method3(int[] args) {
                return WebSite.this.QueryStatus(args[0], args[1], args[2], args[3]);
            }

            public int method4(int[] args) {
                return WebSite.this.Exec(args[0], args[1], args[2], args[3], args[4]);
            }
        };
        int[] nArray6 = new int[4];
        nArray6[0] = 2;
        nArray6[3] = 3;
        this.iAuthenticate = new COMObject(nArray6){

            public int method0(int[] args) {
                return WebSite.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return WebSite.this.AddRef();
            }

            public int method2(int[] args) {
                return WebSite.this.Release();
            }

            public int method3(int[] args) {
                return WebSite.this.Authenticate(args[0], args[1], args[2]);
            }
        };
        int[] nArray7 = new int[7];
        nArray7[0] = 2;
        nArray7[3] = 1;
        nArray7[4] = 3;
        nArray7[5] = 5;
        nArray7[6] = 8;
        this.iDispatch = new COMObject(nArray7){

            public int method0(int[] args) {
                GUID guid = new GUID();
                COM.MoveMemory(guid, args[0], GUID.sizeof);
                if (COM.IsEqualGUID(guid, COM.IIDIDispatch)) {
                    COM.MoveMemory(args[1], new int[]{WebSite.this.iDispatch.getAddress()}, OS.PTR_SIZEOF);
                    WebSite.this.AddRef();
                    return 0;
                }
                return WebSite.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return WebSite.this.AddRef();
            }

            public int method2(int[] args) {
                return WebSite.this.Release();
            }

            public int method3(int[] args) {
                return WebSite.this.GetTypeInfoCount(args[0]);
            }

            public int method4(int[] args) {
                return WebSite.this.GetTypeInfo(args[0], args[1], args[2]);
            }

            public int method5(int[] args) {
                return WebSite.this.GetIDsOfNames(args[0], args[1], args[2], args[3], args[4]);
            }

            public int method6(int[] args) {
                return WebSite.this.Invoke(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7]);
            }
        };
    }

    protected void disposeCOMInterfaces() {
        super.disposeCOMInterfaces();
        if (this.iDocHostUIHandler != null) {
            this.iDocHostUIHandler.dispose();
            this.iDocHostUIHandler = null;
        }
        if (this.iDocHostShowUI != null) {
            this.iDocHostShowUI.dispose();
            this.iDocHostShowUI = null;
        }
        if (this.iServiceProvider != null) {
            this.iServiceProvider.dispose();
            this.iServiceProvider = null;
        }
        if (this.iInternetSecurityManager != null) {
            this.iInternetSecurityManager.dispose();
            this.iInternetSecurityManager = null;
        }
        if (this.iOleCommandTarget != null) {
            this.iOleCommandTarget.dispose();
            this.iOleCommandTarget = null;
        }
        if (this.iAuthenticate != null) {
            this.iAuthenticate.dispose();
            this.iAuthenticate = null;
        }
        if (this.iDispatch != null) {
            this.iDispatch.dispose();
            this.iDispatch = null;
        }
    }

    protected int AddRef() {
        return super.AddRef();
    }

    protected int QueryInterface(int riid, int ppvObject) {
        int result = super.QueryInterface(riid, ppvObject);
        if (result == 0) {
            return result;
        }
        if (riid == 0 || ppvObject == 0) {
            return -2147024809;
        }
        GUID guid = new GUID();
        COM.MoveMemory(guid, riid, GUID.sizeof);
        if (COM.IsEqualGUID(guid, COM.IIDIDocHostUIHandler)) {
            COM.MoveMemory(ppvObject, new int[]{this.iDocHostUIHandler.getAddress()}, OS.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (COM.IsEqualGUID(guid, COM.IIDIDocHostShowUI)) {
            COM.MoveMemory(ppvObject, new int[]{this.iDocHostShowUI.getAddress()}, OS.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (COM.IsEqualGUID(guid, COM.IIDIServiceProvider)) {
            COM.MoveMemory(ppvObject, new int[]{this.iServiceProvider.getAddress()}, OS.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (COM.IsEqualGUID(guid, COM.IIDIInternetSecurityManager)) {
            COM.MoveMemory(ppvObject, new int[]{this.iInternetSecurityManager.getAddress()}, OS.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (COM.IsEqualGUID(guid, COM.IIDIOleCommandTarget)) {
            COM.MoveMemory(ppvObject, new int[]{this.iOleCommandTarget.getAddress()}, OS.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        COM.MoveMemory(ppvObject, new int[1], OS.PTR_SIZEOF);
        return -2147467262;
    }

    int EnableModeless(int EnableModeless) {
        return -2147467263;
    }

    int FilterDataObject(int pDO, int ppDORet) {
        return -2147467263;
    }

    int GetDropTarget(int pDropTarget, int ppDropTarget) {
        return -2147467263;
    }

    int GetExternal(int ppDispatch) {
        OS.MoveMemory(ppDispatch, new int[]{this.iDispatch.getAddress()}, C.PTR_SIZEOF);
        this.AddRef();
        return 0;
    }

    int GetHostInfo(int pInfo) {
        int info = 262144;
        IE browser = (IE)((Browser)this.getParent().getParent()).webBrowser;
        if ((browser.style & 0x800) == 0) {
            info |= 0x200000;
        }
        DOCHOSTUIINFO uiInfo = new DOCHOSTUIINFO();
        OS.MoveMemory(uiInfo, pInfo, DOCHOSTUIINFO.sizeof);
        uiInfo.dwFlags = info;
        OS.MoveMemory(pInfo, uiInfo, DOCHOSTUIINFO.sizeof);
        return 0;
    }

    int GetOptionKeyPath(int pchKey, int dw) {
        return -2147467263;
    }

    int HideUI() {
        return -2147467263;
    }

    int OnDocWindowActivate(int fActivate) {
        return -2147467263;
    }

    int OnFrameWindowActivate(int fActivate) {
        return -2147467263;
    }

    protected int Release() {
        return super.Release();
    }

    int ResizeBorder(int prcBorder, int pUIWindow, int fFrameWindow) {
        return -2147467263;
    }

    int ShowContextMenu(int dwID, int ppt, int pcmdtReserved, int pdispReserved) {
        Browser browser = (Browser)this.getParent().getParent();
        Event event = new Event();
        POINT pt = new POINT();
        OS.MoveMemory(pt, ppt, POINT.sizeof);
        event.x = pt.x;
        event.y = pt.y;
        browser.notifyListeners(35, event);
        if (!event.doit) {
            return 0;
        }
        Menu menu = browser.getMenu();
        if (menu != null && !menu.isDisposed()) {
            if (pt.x != event.x || pt.y != event.y) {
                menu.setLocation(event.x, event.y);
            }
            menu.setVisible(true);
            return 0;
        }
        return 1;
    }

    int ShowUI(int dwID, int pActiveObject, int pCommandTarget, int pFrame, int pDoc) {
        return 1;
    }

    int TranslateAccelerator(int lpMsg, int pguidCmdGroup, int nCmdID) {
        Menu menubar = this.getShell().getMenuBar();
        if (menubar != null && !menubar.isDisposed() && menubar.isEnabled()) {
            Shell shell = menubar.getShell();
            int hwnd = shell.handle;
            int hAccel = OS.SendMessage(hwnd, 32769, 0, 0);
            if (hAccel != 0) {
                MSG msg = new MSG();
                OS.MoveMemory(msg, lpMsg, MSG.sizeof);
                if (OS.TranslateAccelerator(hwnd, hAccel, msg) != 0) {
                    return 0;
                }
            }
        }
        int result = 1;
        MSG msg = new MSG();
        OS.MoveMemory(msg, lpMsg, MSG.sizeof);
        if (msg.message == 256) {
            switch (msg.wParam) {
                case 116: {
                    String url;
                    OleAutomation auto = new OleAutomation(this);
                    int[] rgdispid = auto.getIDsOfNames(new String[]{"LocationURL"});
                    Variant pVarResult = auto.getProperty(rgdispid[0]);
                    auto.dispose();
                    if (pVarResult == null) break;
                    if (pVarResult.getType() == 8 && (url = pVarResult.getString()).equals("about:blank")) {
                        result = 0;
                    }
                    pVarResult.dispose();
                    break;
                }
                case 9: {
                    break;
                }
                case 8: 
                case 13: {
                    break;
                }
                case 76: 
                case 78: 
                case 79: {
                    if (OS.GetKeyState(17) < 0 && OS.GetKeyState(18) >= 0 && OS.GetKeyState(16) >= 0 && (msg.wParam == 78 || IE.IEVersion >= 8)) {
                        this.frame.setData(CONSUME_KEY, "false");
                        result = 0;
                        break;
                    }
                }
                default: {
                    OS.TranslateMessage(msg);
                    this.frame.setData(CONSUME_KEY, "true");
                }
            }
        }
        switch (msg.message) {
            case 256: 
            case 257: {
                if (OS.IsWinCE) break;
                boolean isAccent = false;
                block9 : switch (msg.wParam) {
                    case 16: 
                    case 17: 
                    case 18: 
                    case 20: 
                    case 144: 
                    case 145: {
                        break;
                    }
                    default: {
                        int mapKey = OS.MapVirtualKey(msg.wParam, 2);
                        if (mapKey == 0) break;
                        boolean bl = isAccent = (mapKey & (OS.IsWinNT ? Integer.MIN_VALUE : 32768)) != 0;
                        if (isAccent) break;
                        int i = 0;
                        while (i < ACCENTS.length) {
                            short value = OS.VkKeyScan(ACCENTS[i]);
                            if (value != -1 && (value & 0xFF) == msg.wParam) {
                                int state = value >> 8;
                                if (OS.GetKeyState(16) < 0 == ((state & 1) != 0) && OS.GetKeyState(17) < 0 == ((state & 2) != 0) && OS.GetKeyState(18) < 0 == ((state & 4) != 0)) {
                                    if ((state & 7) == 0) break block9;
                                    isAccent = true;
                                    break block9;
                                }
                            }
                            ++i;
                        }
                        break block9;
                    }
                }
                if (!isAccent) break;
                result = 0;
            }
        }
        return result;
    }

    int TranslateUrl(int dwTranslate, int pchURLIn, int ppchURLOut) {
        return -2147467263;
    }

    int UpdateUI() {
        return -2147467263;
    }

    int ShowMessage(int hwnd, int lpstrText, int lpstrCaption, int dwType, int lpstrHelpFile, int dwHelpContext, int plResult) {
        boolean ignore = this.ignoreNextMessage || this.ignoreAllMessages;
        this.ignoreNextMessage = false;
        return ignore ? 0 : 1;
    }

    int ShowHelp_64(int hwnd, int pszHelpFile, int uCommand, int dwData, long pt, int pDispatchObjectHit) {
        POINT point = new POINT();
        OS.MoveMemory(point, new long[]{pt}, 8);
        return this.ShowHelp(hwnd, pszHelpFile, uCommand, dwData, point.x, point.y, pDispatchObjectHit);
    }

    int ShowHelp(int hwnd, int pszHelpFile, int uCommand, int dwData, int ptMouse_x, int ptMouse_y, int pDispatchObjectHit) {
        Browser browser = (Browser)this.getParent().getParent();
        Event event = new Event();
        event.type = 28;
        event.display = this.getDisplay();
        event.widget = browser;
        Shell shell = browser.getShell();
        Composite control = browser;
        while (true) {
            if (control.isListening(28)) {
                control.notifyListeners(28, event);
                break;
            }
            if (control == shell) break;
            control = control.getParent();
        }
        return 0;
    }

    int QueryService(int guidService, int riid, int ppvObject) {
        if (riid == 0 || ppvObject == 0) {
            return -2147024809;
        }
        GUID guid = new GUID();
        COM.MoveMemory(guid, riid, GUID.sizeof);
        if (COM.IsEqualGUID(guid, COM.IIDIInternetSecurityManager)) {
            COM.MoveMemory(ppvObject, new int[]{this.iInternetSecurityManager.getAddress()}, OS.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (COM.IsEqualGUID(guid, COM.IIDIAuthenticate)) {
            COM.MoveMemory(ppvObject, new int[]{this.iAuthenticate.getAddress()}, OS.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        COM.MoveMemory(ppvObject, new int[1], OS.PTR_SIZEOF);
        return -2147467262;
    }

    int SetSecuritySite(int pSite) {
        return -2146697199;
    }

    int GetSecuritySite(int ppSite) {
        return -2146697199;
    }

    int MapUrlToZone(int pwszUrl, int pdwZone, int dwFlags) {
        IE ie = (IE)((Browser)this.getParent().getParent()).webBrowser;
        if (ie.auto != null && ie.isAboutBlank && !ie.untrustedText) {
            COM.MoveMemory(pdwZone, new int[]{1}, 4);
            return 0;
        }
        return -2146697199;
    }

    int GetSecurityId(int pwszUrl, int pbSecurityId, int pcbSecurityId, int dwReserved) {
        return -2146697199;
    }

    int ProcessUrlAction(int pwszUrl, int dwAction, int pPolicy, int cbPolicy, int pContext, int cbContext, int dwFlags, int dwReserved) {
        this.ignoreNextMessage = false;
        if (dwAction == 8449) {
            IE ie = (IE)((Browser)this.getParent().getParent()).webBrowser;
            if (ie.auto != null && ie._getUrl().startsWith("about:blank") && !ie.untrustedText) {
                if (cbPolicy >= 4) {
                    COM.MoveMemory(pPolicy, new int[1], 4);
                }
                return 0;
            }
        }
        int policy = -2146697199;
        if (dwAction >= 7168 && dwAction <= 7423) {
            if (this.canExecuteApplets()) {
                policy = 196608;
            } else {
                policy = 0;
                this.ignoreNextMessage = true;
            }
        }
        if (dwAction == 4608) {
            GUID guid = new GUID();
            COM.MoveMemory(guid, pContext, GUID.sizeof);
            if (COM.IsEqualGUID(guid, COM.IIDJavaBeansBridge) && !this.canExecuteApplets()) {
                policy = 3;
                this.ignoreNextMessage = true;
            }
            if (COM.IsEqualGUID(guid, COM.IIDShockwaveActiveXControl)) {
                policy = 3;
                this.ignoreNextMessage = true;
            }
        }
        if (dwAction == 5120) {
            IE browser = (IE)((Browser)this.getParent().getParent()).webBrowser;
            int n = policy = browser.jsEnabled ? 0 : 3;
        }
        if (policy == -2146697199) {
            return -2146697199;
        }
        if (cbPolicy >= 4) {
            COM.MoveMemory(pPolicy, new int[]{policy}, 4);
        }
        return policy == 0 ? 0 : 1;
    }

    boolean canExecuteApplets() {
        if (IE.IEVersion < 7) {
            return false;
        }
        if (this.canExecuteApplets == null) {
            WebBrowser webBrowser = ((Browser)this.getParent().getParent()).webBrowser;
            String script = "try {var element = document.createElement('object');element.classid='clsid:CAFEEFAC-DEC7-0000-0000-ABCDEFFEDCBA';return element.object.isPlugin2();} catch (err) {};return false;";
            this.canExecuteApplets = (Boolean)webBrowser.evaluate(script);
            if (this.canExecuteApplets.booleanValue()) {
                try {
                    Class.forName("sun.plugin2.main.server.IExplorerPlugin");
                    Class.forName("com.sun.deploy.services.Service");
                    Class.forName("com.sun.javaws.Globals");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    this.canExecuteApplets = Boolean.FALSE;
                }
            }
        }
        return this.canExecuteApplets;
    }

    int QueryCustomPolicy(int pwszUrl, int guidKey, int ppPolicy, int pcbPolicy, int pContext, int cbContext, int dwReserved) {
        return -2146697199;
    }

    int SetZoneMapping(int dwZone, int lpszPattern, int dwFlags) {
        return -2146697199;
    }

    int GetZoneMappings(int dwZone, int ppenumString, int dwFlags) {
        return -2147467263;
    }

    int QueryStatus(int pguidCmdGroup, int cCmds, int prgCmds, int pCmdText) {
        return -2147221248;
    }

    int Exec(int pguidCmdGroup, int nCmdID, int nCmdExecOpt, int pvaIn, int pvaOut) {
        if (pguidCmdGroup != 0) {
            GUID guid = new GUID();
            COM.MoveMemory(guid, pguidCmdGroup, GUID.sizeof);
            if (COM.IsEqualGUID(guid, COM.CGID_DocHostCommandHandler) && nCmdID == 40) {
                return 0;
            }
            if (nCmdID == 1 && COM.IsEqualGUID(guid, COM.CGID_Explorer) && (nCmdExecOpt & 0xFFFF) == 10) {
                IE browser = (IE)((Browser)this.getParent().getParent()).webBrowser;
                browser.toolBar = (nCmdExecOpt & 0xFFFF0000) != 0;
            }
        }
        return -2147221248;
    }

    int Authenticate(int hwnd, int szUsername, int szPassword) {
        IE browser = (IE)((Browser)this.getParent().getParent()).webBrowser;
        int i = 0;
        while (i < browser.authenticationListeners.length) {
            AuthenticationEvent event = new AuthenticationEvent(browser.browser);
            event.location = browser.lastNavigateURL;
            browser.authenticationListeners[i].authenticate(event);
            if (!event.doit) {
                return -2147024891;
            }
            if (event.user != null && event.password != null) {
                TCHAR user = new TCHAR(0, event.user, true);
                int size = user.length() * TCHAR.sizeof;
                int userPtr = COM.CoTaskMemAlloc(size);
                OS.MoveMemory(userPtr, user, size);
                TCHAR password = new TCHAR(0, event.password, true);
                size = password.length() * TCHAR.sizeof;
                int passwordPtr = COM.CoTaskMemAlloc(size);
                OS.MoveMemory(passwordPtr, password, size);
                C.memmove(hwnd, new int[1], C.PTR_SIZEOF);
                C.memmove(szUsername, new int[]{userPtr}, C.PTR_SIZEOF);
                C.memmove(szPassword, new int[]{passwordPtr}, C.PTR_SIZEOF);
                return 0;
            }
            ++i;
        }
        C.memmove(hwnd, new int[]{this.getShell().handle}, C.PTR_SIZEOF);
        return 0;
    }

    int GetTypeInfoCount(int pctinfo) {
        C.memmove(pctinfo, new int[1], 4);
        return 0;
    }

    int GetTypeInfo(int iTInfo, int lcid, int ppTInfo) {
        return 0;
    }

    int GetIDsOfNames(int riid, int rgszNames, int cNames, int lcid, int rgDispId) {
        int[] ptr = new int[1];
        OS.MoveMemory(ptr, rgszNames, C.PTR_SIZEOF);
        int length = OS.wcslen(ptr[0]);
        char[] buffer = new char[length];
        OS.MoveMemory(buffer, ptr[0], length * 2);
        String functionName = String.valueOf(buffer);
        int result = 0;
        int[] ids = new int[cNames];
        if (functionName.equals("callJava")) {
            int i = 0;
            while (i < cNames) {
                ids[i] = i + 1;
                ++i;
            }
        } else {
            result = -2147352570;
            int i = 0;
            while (i < cNames) {
                ids[i] = -1;
                ++i;
            }
        }
        OS.MoveMemory(rgDispId, ids, cNames * 4);
        return result;
    }

    int Invoke(int dispIdMember, int riid, int lcid, int dwFlags, int pDispParams, int pVarResult, int pExcepInfo, int pArgErr) {
        IE ie = (IE)((Browser)this.getParent().getParent()).webBrowser;
        Hashtable functions = ie.functions;
        if (functions == null) {
            if (pVarResult != 0) {
                COM.MoveMemory(pVarResult, new int[1], C.PTR_SIZEOF);
            }
            return 0;
        }
        DISPPARAMS dispParams = new DISPPARAMS();
        COM.MoveMemory(dispParams, pDispParams, DISPPARAMS.sizeof);
        if (dispParams.cArgs != 3) {
            if (pVarResult != 0) {
                COM.MoveMemory(pVarResult, new int[1], C.PTR_SIZEOF);
            }
            return 0;
        }
        int ptr = dispParams.rgvarg + 2 * Variant.sizeof;
        Variant variant = Variant.win32_new(ptr);
        if (variant.getType() != 3) {
            variant.dispose();
            if (pVarResult != 0) {
                COM.MoveMemory(pVarResult, new int[1], C.PTR_SIZEOF);
            }
            return 0;
        }
        int index = variant.getInt();
        variant.dispose();
        if (index <= 0) {
            if (pVarResult != 0) {
                COM.MoveMemory(pVarResult, new int[1], C.PTR_SIZEOF);
            }
            return 0;
        }
        ptr = dispParams.rgvarg + Variant.sizeof;
        variant = Variant.win32_new(ptr);
        short type = variant.getType();
        if (type != 3 && type != 5) {
            variant.dispose();
            if (pVarResult != 0) {
                COM.MoveMemory(pVarResult, new int[1], C.PTR_SIZEOF);
            }
            return 0;
        }
        long token = variant.getLong();
        variant.dispose();
        variant = Variant.win32_new(dispParams.rgvarg);
        Integer key = new Integer(index);
        BrowserFunction function = (BrowserFunction)functions.get(key);
        Object returnValue = null;
        if (function != null && token == function.token) {
            try {
                Object temp = this.convertToJava(variant);
                if (temp instanceof Object[]) {
                    Object[] args = (Object[])temp;
                    try {
                        returnValue = function.function(args);
                    }
                    catch (Exception e) {
                        returnValue = WebBrowser.CreateErrorString(e.getLocalizedMessage());
                    }
                }
            }
            catch (IllegalArgumentException e) {
                if (function.isEvaluate) {
                    function.function(new String[]{WebBrowser.CreateErrorString(new SWTException(51).getLocalizedMessage())});
                }
                returnValue = WebBrowser.CreateErrorString(e.getLocalizedMessage());
            }
        }
        variant.dispose();
        if (pVarResult != 0) {
            try {
                variant = this.convertToJS(returnValue);
            }
            catch (SWTException e) {
                variant = this.convertToJS(WebBrowser.CreateErrorString(e.getLocalizedMessage()));
            }
            Variant.win32_copy(pVarResult, variant);
            variant.dispose();
        }
        return 0;
    }

    Object convertToJava(Variant variant) {
        switch (variant.getType()) {
            case 0: 
            case 1: {
                return null;
            }
            case 8: {
                return variant.getString();
            }
            case 11: {
                return new Boolean(variant.getBoolean());
            }
            case 2: 
            case 3: 
            case 4: 
            case 5: 
            case 20: {
                return new Double(variant.getDouble());
            }
            case 9: {
                Object[] args = null;
                OleAutomation auto = variant.getAutomation();
                TYPEATTR typeattr = auto.getTypeInfoAttributes();
                if (typeattr != null) {
                    GUID guid = new GUID();
                    guid.Data1 = typeattr.guid_Data1;
                    guid.Data2 = typeattr.guid_Data2;
                    guid.Data3 = typeattr.guid_Data3;
                    guid.Data4 = typeattr.guid_Data4;
                    if (COM.IsEqualGUID(guid, COM.IIDIJScriptTypeInfo)) {
                        int[] rgdispid = auto.getIDsOfNames(new String[]{"length"});
                        if (rgdispid != null) {
                            Variant varLength = auto.getProperty(rgdispid[0]);
                            int length = varLength.getInt();
                            varLength.dispose();
                            args = new Object[length];
                            int i = 0;
                            while (i < length) {
                                rgdispid = auto.getIDsOfNames(new String[]{String.valueOf(i)});
                                if (rgdispid != null) {
                                    Variant current = auto.getProperty(rgdispid[0]);
                                    try {
                                        args[i] = this.convertToJava(current);
                                        current.dispose();
                                    }
                                    catch (IllegalArgumentException e) {
                                        current.dispose();
                                        auto.dispose();
                                        throw e;
                                    }
                                }
                                ++i;
                            }
                        }
                    } else {
                        auto.dispose();
                        SWT.error(5);
                    }
                }
                auto.dispose();
                return args;
            }
        }
        SWT.error(5);
        return null;
    }

    Variant convertToJS(Object value) {
        if (value == null) {
            return Variant.NULL;
        }
        if (value instanceof String) {
            return new Variant((String)value);
        }
        if (value instanceof Boolean) {
            return new Variant((Boolean)value);
        }
        if (value instanceof Number) {
            return new Variant(((Number)value).doubleValue());
        }
        if (value instanceof Object[]) {
            IE browser = (IE)((Browser)this.getParent().getParent()).webBrowser;
            OleAutomation auto = browser.auto;
            int[] rgdispid = auto.getIDsOfNames(new String[]{"Document"});
            if (rgdispid == null) {
                return new Variant();
            }
            Variant pVarResult = auto.getProperty(rgdispid[0]);
            if (pVarResult == null) {
                return new Variant();
            }
            if (pVarResult.getType() == 0) {
                pVarResult.dispose();
                return new Variant();
            }
            OleAutomation document = pVarResult.getAutomation();
            pVarResult.dispose();
            rgdispid = document.getIDsOfNames(new String[]{"parentWindow"});
            if (rgdispid == null) {
                document.dispose();
                return new Variant();
            }
            pVarResult = document.getProperty(rgdispid[0]);
            if (pVarResult == null || pVarResult.getType() == 0) {
                if (pVarResult != null) {
                    pVarResult.dispose();
                }
                document.dispose();
                return new Variant();
            }
            OleAutomation ihtmlWindow2 = pVarResult.getAutomation();
            pVarResult.dispose();
            document.dispose();
            rgdispid = ihtmlWindow2.getIDsOfNames(new String[]{"Array"});
            if (rgdispid == null) {
                ihtmlWindow2.dispose();
                return new Variant();
            }
            Variant arrayType = ihtmlWindow2.getProperty(rgdispid[0]);
            ihtmlWindow2.dispose();
            IDispatch arrayTypeDispatch = arrayType.getDispatch();
            int[] result = new int[1];
            int rc = arrayTypeDispatch.QueryInterface(COM.IIDIDispatchEx, result);
            arrayType.dispose();
            if (rc != 0) {
                return new Variant();
            }
            IDispatchEx arrayTypeDispatchEx = new IDispatchEx(result[0]);
            result[0] = 0;
            DISPPARAMS params = new DISPPARAMS();
            int resultPtr = OS.GlobalAlloc(64, VARIANT.sizeof);
            rc = arrayTypeDispatchEx.InvokeEx(0, 2048, 16384, params, resultPtr, null, 0);
            if (rc != 0) {
                OS.GlobalFree(resultPtr);
                return new Variant();
            }
            Variant array = Variant.win32_new(resultPtr);
            OS.GlobalFree(resultPtr);
            Object[] arrayValue = (Object[])value;
            int length = arrayValue.length;
            auto = array.getAutomation();
            int[] rgdispids = auto.getIDsOfNames(new String[]{"push"});
            if (rgdispids != null) {
                int i = 0;
                while (i < length) {
                    Object currentObject = arrayValue[i];
                    try {
                        Variant variant = this.convertToJS(currentObject);
                        auto.invoke(rgdispids[0], new Variant[]{variant});
                        variant.dispose();
                    }
                    catch (SWTException e) {
                        auto.dispose();
                        array.dispose();
                        throw e;
                    }
                    ++i;
                }
            }
            auto.dispose();
            return array;
        }
        SWT.error(51);
        return null;
    }
}

