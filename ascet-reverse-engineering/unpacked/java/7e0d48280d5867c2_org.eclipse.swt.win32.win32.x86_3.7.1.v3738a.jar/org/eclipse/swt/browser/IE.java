/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.browser;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.Enumeration;
import java.util.StringTokenizer;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.browser.Browser;
import org.eclipse.swt.browser.BrowserFunction;
import org.eclipse.swt.browser.LocationEvent;
import org.eclipse.swt.browser.LocationListener;
import org.eclipse.swt.browser.ProgressEvent;
import org.eclipse.swt.browser.StatusTextEvent;
import org.eclipse.swt.browser.TitleEvent;
import org.eclipse.swt.browser.WebBrowser;
import org.eclipse.swt.browser.WebSite;
import org.eclipse.swt.browser.WindowEvent;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.internal.C;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.GUID;
import org.eclipse.swt.internal.ole.win32.IDispatch;
import org.eclipse.swt.internal.ole.win32.IPersistStreamInit;
import org.eclipse.swt.internal.ole.win32.IUnknown;
import org.eclipse.swt.internal.win32.MSG;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.SAFEARRAY;
import org.eclipse.swt.internal.win32.SAFEARRAYBOUND;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.ole.win32.OleAutomation;
import org.eclipse.swt.ole.win32.OleEvent;
import org.eclipse.swt.ole.win32.OleFrame;
import org.eclipse.swt.ole.win32.OleListener;
import org.eclipse.swt.ole.win32.Variant;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;

class IE
extends WebBrowser {
    OleFrame frame;
    WebSite site;
    OleAutomation auto;
    OleListener domListener;
    OleAutomation[] documents = new OleAutomation[0];
    boolean back;
    boolean forward;
    boolean delaySetText;
    boolean ignoreDispose;
    boolean ignoreTraverse;
    boolean performingInitialNavigate;
    boolean installFunctionsOnDocumentComplete;
    boolean untrustedText;
    boolean isRefresh;
    boolean isAboutBlank;
    Point location;
    Point size;
    boolean addressBar = true;
    boolean menuBar = true;
    boolean statusBar = true;
    boolean toolBar = true;
    int globalDispatch;
    String html;
    String lastNavigateURL;
    String uncRedirect;
    Object[] pendingText;
    Object[] pendingUrl;
    int style;
    int lastKeyCode;
    int lastCharCode;
    int lastMouseMoveX;
    int lastMouseMoveY;
    static boolean Initialized;
    static int IEVersion;
    static int PDFCount;
    static String ProgId;
    static final int BeforeNavigate2 = 250;
    static final int CommandStateChange = 105;
    static final int DocumentComplete = 259;
    static final int DownloadComplete = 104;
    static final int NavigateComplete2 = 252;
    static final int NewWindow2 = 251;
    static final int OnMenuBar = 256;
    static final int OnStatusBar = 257;
    static final int OnToolBar = 255;
    static final int OnVisible = 254;
    static final int ProgressChange = 108;
    static final int RegisterAsBrowser = 552;
    static final int StatusTextChange = 102;
    static final int TitleChange = 113;
    static final int WindowClosing = 263;
    static final int WindowSetHeight = 267;
    static final int WindowSetLeft = 264;
    static final int WindowSetResizable = 262;
    static final int WindowSetTop = 265;
    static final int WindowSetWidth = 266;
    static final int NavigateError = 271;
    static final short CSC_NAVIGATEFORWARD = 1;
    static final short CSC_NAVIGATEBACK = 2;
    static final int INET_E_DEFAULT_ACTION = -2146697199;
    static final int INET_E_RESOURCE_NOT_FOUND = -2146697211;
    static final int READYSTATE_COMPLETE = 4;
    static final int URLPOLICY_ALLOW = 0;
    static final int URLPOLICY_DISALLOW = 3;
    static final int URLPOLICY_JAVA_PROHIBIT = 0;
    static final int URLPOLICY_JAVA_LOW = 196608;
    static final int URLZONE_LOCAL_MACHINE = 0;
    static final int URLZONE_INTRANET = 1;
    static final int URLACTION_ACTIVEX_MIN = 4608;
    static final int URLACTION_ACTIVEX_MAX = 5119;
    static final int URLACTION_ACTIVEX_RUN = 4608;
    static final int URLACTION_FEATURE_ZONE_ELEVATION = 8449;
    static final int URLACTION_JAVA_MIN = 7168;
    static final int URLACTION_JAVA_MAX = 7423;
    static final int URLACTION_SCRIPT_RUN = 5120;
    static final int DISPID_AMBIENT_DLCONTROL = -5512;
    static final int DLCTL_DLIMAGES = 16;
    static final int DLCTL_VIDEOS = 32;
    static final int DLCTL_BGSOUNDS = 64;
    static final int DLCTL_NO_SCRIPTS = 128;
    static final int DLCTL_NO_JAVA = 256;
    static final int DLCTL_NO_RUNACTIVEXCTLS = 512;
    static final int DLCTL_NO_DLACTIVEXCTLS = 1024;
    static final int DLCTL_DOWNLOADONLY = 2048;
    static final int DLCTL_NO_FRAMEDOWNLOAD = 4096;
    static final int DLCTL_RESYNCHRONIZE = 8192;
    static final int DLCTL_PRAGMA_NO_CACHE = 16384;
    static final int DLCTL_FORCEOFFLINE = 0x10000000;
    static final int DLCTL_NO_CLIENTPULL = 0x20000000;
    static final int DLCTL_SILENT = 0x40000000;
    static final int DOCHOSTUIFLAG_THEME = 262144;
    static final int DOCHOSTUIFLAG_NO3DBORDER = 4;
    static final int DOCHOSTUIFLAG_NO3DOUTERBORDER = 0x200000;
    static final String ABOUT_BLANK = "about:blank";
    static final String CLSID_SHELLEXPLORER1 = "{EAB22AC3-30C1-11CF-A7EB-0000C05BAE0B}";
    static final int DEFAULT_IE_VERSION = 9000;
    static final String EXTENSION_PDF = ".pdf";
    static final String HTML_DOCUMENT = "HTML Document";
    static final int MAX_PDF = 20;
    static final char SEPARATOR_OS;
    static final String PROPERTY_IEVERSION = "org.eclipse.swt.browser.IEVersion";
    static final String VALUE_DEFAULT = "default";
    static final String EVENT_DOUBLECLICK = "dblclick";
    static final String EVENT_DRAGEND = "dragend";
    static final String EVENT_DRAGSTART = "dragstart";
    static final String EVENT_KEYDOWN = "keydown";
    static final String EVENT_KEYPRESS = "keypress";
    static final String EVENT_KEYUP = "keyup";
    static final String EVENT_MOUSEMOVE = "mousemove";
    static final String EVENT_MOUSEWHEEL = "mousewheel";
    static final String EVENT_MOUSEUP = "mouseup";
    static final String EVENT_MOUSEDOWN = "mousedown";
    static final String EVENT_MOUSEOUT = "mouseout";
    static final String EVENT_MOUSEOVER = "mouseover";
    static final String PROTOCOL_FILE = "file://";
    static final String PROPERTY_ALTKEY = "altKey";
    static final String PROPERTY_BUTTON = "button";
    static final String PROPERTY_CTRLKEY = "ctrlKey";
    static final String PROPERTY_DOCUMENT = "Document";
    static final String PROPERTY_FROMELEMENT = "fromElement";
    static final String PROPERTY_KEYCODE = "keyCode";
    static final String PROPERTY_REPEAT = "repeat";
    static final String PROPERTY_RETURNVALUE = "returnValue";
    static final String PROPERTY_SCREENX = "screenX";
    static final String PROPERTY_SCREENY = "screenY";
    static final String PROPERTY_SHIFTKEY = "shiftKey";
    static final String PROPERTY_TOELEMENT = "toElement";
    static final String PROPERTY_TYPE = "type";
    static final String PROPERTY_WHEELDELTA = "wheelDelta";

    static {
        int[] lpcbData;
        ProgId = "Shell.Explorer";
        SEPARATOR_OS = System.getProperty("file.separator").charAt(0);
        NativeClearSessions = new Runnable(){

            public void run() {
                if (OS.IsPPC) {
                    return;
                }
                OS.InternetSetOption(0, 42, 0, 0);
            }
        };
        NativeGetCookie = new Runnable(){

            public void run() {
                if (OS.IsPPC) {
                    return;
                }
                TCHAR url = new TCHAR(0, CookieUrl, true);
                TCHAR cookieData = new TCHAR(0, 8192);
                int[] size = new int[]{cookieData.length()};
                if (!OS.InternetGetCookie(url, null, cookieData, size)) {
                    size[0] = size[0] / TCHAR.sizeof;
                    cookieData = new TCHAR(0, size[0]);
                    if (!OS.InternetGetCookie(url, null, cookieData, size)) {
                        return;
                    }
                }
                String allCookies = cookieData.toString(0, size[0]);
                StringTokenizer tokenizer = new StringTokenizer(allCookies, ";");
                while (tokenizer.hasMoreTokens()) {
                    String name;
                    String cookie = tokenizer.nextToken();
                    int index = cookie.indexOf(61);
                    if (index == -1 || !(name = cookie.substring(0, index).trim()).equals(CookieName)) continue;
                    CookieValue = cookie.substring(index + 1).trim();
                    return;
                }
            }
        };
        NativeSetCookie = new Runnable(){

            public void run() {
                if (OS.IsPPC) {
                    return;
                }
                TCHAR url = new TCHAR(0, CookieUrl, true);
                TCHAR value = new TCHAR(0, CookieValue, true);
                CookieResult = OS.InternetSetCookie(url, null, value);
            }
        };
        TCHAR key = new TCHAR(0, "Software\\Microsoft\\Internet Explorer", true);
        int[] phkResult = new int[1];
        if (OS.RegOpenKeyEx(-2147483646, key, 0, 131097, phkResult) == 0) {
            String versionString;
            int index;
            TCHAR lpData;
            TCHAR buffer = new TCHAR(0, "Version", true);
            lpcbData = new int[1];
            int result = OS.RegQueryValueEx(phkResult[0], buffer, 0, null, null, lpcbData);
            if (result == 0 && (result = OS.RegQueryValueEx(phkResult[0], buffer, 0, null, lpData = new TCHAR(0, lpcbData[0] / TCHAR.sizeof), lpcbData)) == 0 && (index = (versionString = lpData.toString(0, lpData.strlen())).indexOf(".")) != -1) {
                String majorString = versionString.substring(0, index);
                try {
                    IEVersion = Integer.valueOf(majorString);
                }
                catch (NumberFormatException numberFormatException) {}
            }
            OS.RegCloseKey(phkResult[0]);
        }
        if (OS.RegOpenKeyEx(Integer.MIN_VALUE, key = new TCHAR(0, "Shell.Explorer\\CLSID", true), 0, 131097, phkResult = new int[1]) == 0) {
            int[] phkResult2;
            String clsid;
            TCHAR lpData;
            lpcbData = new int[1];
            int result = OS.RegQueryValueEx(phkResult[0], null, 0, null, null, lpcbData);
            if (result == 0 && (result = OS.RegQueryValueEx(phkResult[0], null, 0, null, lpData = new TCHAR(0, lpcbData[0] / TCHAR.sizeof), lpcbData)) == 0 && (clsid = lpData.toString(0, lpData.strlen())).equals(CLSID_SHELLEXPLORER1) && OS.RegOpenKeyEx(Integer.MIN_VALUE, key = new TCHAR(0, "Shell.Explorer.2", true), 0, 131097, phkResult2 = new int[1]) == 0) {
                OS.RegCloseKey(phkResult2[0]);
                ProgId = "Shell.Explorer.2";
            }
            OS.RegCloseKey(phkResult[0]);
        }
        if (NativePendingCookies != null) {
            IE.SetPendingCookies(NativePendingCookies);
        }
        NativePendingCookies = null;
    }

    IE() {
    }

    public void create(Composite parent, int style) {
        this.style = style;
        this.frame = new OleFrame(this.browser, 0);
        try {
            this.site = new WebSite((Composite)this.frame, 0, ProgId);
        }
        catch (SWTException sWTException) {
            this.browser.dispose();
            SWT.error(2);
        }
        if (!Initialized) {
            int[] key;
            TCHAR subkey;
            Initialized = true;
            int version = 0;
            String versionProperty = System.getProperty(PROPERTY_IEVERSION);
            if (versionProperty != null) {
                if (versionProperty.equalsIgnoreCase(VALUE_DEFAULT)) {
                    version = -1;
                } else {
                    try {
                        version = Integer.valueOf(versionProperty);
                    }
                    catch (NumberFormatException numberFormatException) {}
                }
            }
            if (version == 0) {
                version = IEVersion != 0 ? IEVersion * 1000 : 9000;
            }
            if (version != -1 && OS.RegCreateKeyEx(-2147483647, subkey = new TCHAR(0, "Software\\Microsoft\\Internet Explorer\\Main\\FeatureControl\\FEATURE_BROWSER_EMULATION", true), 0, null, 1, 131079, 0, key = new int[1], null) == 0) {
                TCHAR lpszFile = new TCHAR(0, 260);
                OS.GetModuleFileName(0, lpszFile, lpszFile.length());
                String path = lpszFile.toString(0, lpszFile.strlen());
                int index = path.lastIndexOf(SEPARATOR_OS);
                String executable = index != -1 ? path.substring(index + 1) : path;
                final TCHAR lpValueName = new TCHAR(0, executable, true);
                if (OS.RegQueryValueEx(key[0], lpValueName, 0, null, null, null) == 2 && OS.RegSetValueEx(key[0], lpValueName, 0, 4, new int[]{version}, 4) == 0) {
                    parent.getDisplay().addListener(12, new Listener(){

                        public void handleEvent(Event event) {
                            int[] key = new int[1];
                            if (OS.RegOpenKeyEx(-2147483647, subkey, 0, 131078, key) == 0) {
                                OS.RegDeleteValue(key[0], lpValueName);
                            }
                        }
                    });
                }
                OS.RegCloseKey(key[0]);
            }
        }
        this.site.doVerb(-5);
        this.auto = new OleAutomation(this.site);
        this.domListener = new OleListener(){

            public void handleEvent(OleEvent e) {
                IE.this.handleDOMEvent(e);
            }
        };
        Listener listener = new Listener(){

            public void handleEvent(Event e) {
                switch (e.type) {
                    case 12: {
                        if (IE.this.ignoreDispose) {
                            IE.this.ignoreDispose = false;
                            break;
                        }
                        IE.this.ignoreDispose = true;
                        IE.this.browser.notifyListeners(e.type, e);
                        e.type = 0;
                        if (!IE.this.browser.isClosing) {
                            LocationListener[] oldLocationListeners = IE.this.locationListeners;
                            IE.this.locationListeners = new LocationListener[0];
                            IE.this.site.ignoreAllMessages = true;
                            IE.this.execute("window.location.href='about:blank'");
                            IE.this.site.ignoreAllMessages = false;
                            IE.this.locationListeners = oldLocationListeners;
                        }
                        if (!IE.this.frame.isDisposed()) {
                            IE.this.unhookDOMListeners(IE.this.documents);
                        }
                        int i = 0;
                        while (i < IE.this.documents.length) {
                            IE.this.documents[i].dispose();
                            ++i;
                        }
                        IE.this.documents = null;
                        Enumeration elements = IE.this.functions.elements();
                        while (elements.hasMoreElements()) {
                            ((BrowserFunction)elements.nextElement()).dispose(false);
                        }
                        IE.this.functions = null;
                        IE.this.uncRedirect = null;
                        IE.this.lastNavigateURL = null;
                        IE.this.domListener = null;
                        if (IE.this.auto != null) {
                            IE.this.auto.dispose();
                        }
                        IE.this.auto = null;
                        break;
                    }
                    case 11: {
                        IE.this.frame.setBounds(IE.this.browser.getClientArea());
                        break;
                    }
                    case 37: {
                        e.doit = false;
                        break;
                    }
                    case 15: {
                        IE.this.site.setFocus();
                        break;
                    }
                    case 31: {
                        if (e.detail == 8 && e.widget instanceof WebSite) {
                            IE.this.browser.traverse(8, e);
                            e.doit = false;
                        }
                        if (e.detail == 16 && e.widget instanceof Browser) {
                            IE.this.site.traverse(16, e);
                            e.doit = false;
                        }
                        if (e.detail != 4 || !e.doit || !(e.widget instanceof Browser)) break;
                        e.type = 0;
                        e.doit = false;
                    }
                }
            }
        };
        this.browser.addListener(12, listener);
        this.browser.addListener(15, listener);
        this.browser.addListener(11, listener);
        this.browser.addListener(31, listener);
        this.site.addListener(37, listener);
        this.site.addListener(31, listener);
        OleListener oleListener = new OleListener(){

            public void handleEvent(OleEvent event) {
                if (IE.this.auto != null) {
                    switch (event.type) {
                        case 250: {
                            IE.this.isRefresh = false;
                            if (IE.this.performingInitialNavigate) break;
                            Variant varResult = event.arguments[1];
                            String url = varResult.getString();
                            if (IE.this.uncRedirect != null) {
                                if (IE.this.uncRedirect.equals(url) || IE.this.uncRedirect.startsWith(url) && IE.this.uncRedirect.indexOf(92, 2) == url.length()) {
                                    Variant cancel = event.arguments[6];
                                    if (cancel == null) break;
                                    int pCancel = cancel.getByRef();
                                    COM.MoveMemory(pCancel, new short[1], 2);
                                    break;
                                }
                                IE.this.uncRedirect = null;
                            }
                            if (url.indexOf(":/") == -1 && url.indexOf(":\\") != -1) {
                                url = IE.PROTOCOL_FILE + url.replace('\\', '/');
                            }
                            if (url.startsWith(IE.PROTOCOL_FILE) && IE.this._getUrl().startsWith(IE.ABOUT_BLANK) && IE.this.untrustedText) {
                                Variant cancel = event.arguments[6];
                                if (cancel == null) break;
                                int pCancel = cancel.getByRef();
                                COM.MoveMemory(pCancel, new short[]{-1}, 2);
                                break;
                            }
                            LocationEvent newEvent = new LocationEvent(IE.this.browser);
                            newEvent.display = IE.this.browser.getDisplay();
                            newEvent.widget = IE.this.browser;
                            newEvent.location = url;
                            newEvent.doit = true;
                            int i = 0;
                            while (i < IE.this.locationListeners.length) {
                                IE.this.locationListeners[i].changing(newEvent);
                                ++i;
                            }
                            boolean doit = newEvent.doit && !IE.this.browser.isDisposed();
                            Variant cancel = event.arguments[6];
                            if (cancel != null) {
                                int pCancel = cancel.getByRef();
                                COM.MoveMemory(pCancel, new short[]{doit ? (short)0 : -1}, 2);
                            }
                            if (!doit) break;
                            IE.this.lastNavigateURL = url;
                            break;
                        }
                        case 105: {
                            boolean enabled = false;
                            Variant varResult = event.arguments[0];
                            int command = varResult.getInt();
                            varResult = event.arguments[1];
                            enabled = varResult.getBoolean();
                            switch (command) {
                                case 2: {
                                    IE.this.back = enabled;
                                    break;
                                }
                                case 1: {
                                    IE.this.forward = enabled;
                                }
                            }
                            break;
                        }
                        case 259: {
                            if (IE.this.performingInitialNavigate) {
                                IE.this.performingInitialNavigate = false;
                                if (IE.this.pendingText != null) {
                                    IE.this.setText((String)IE.this.pendingText[0], (Boolean)IE.this.pendingText[1]);
                                } else if (IE.this.pendingUrl != null) {
                                    IE.this.setUrl((String)IE.this.pendingUrl[0], (String)IE.this.pendingUrl[1], (String[])IE.this.pendingUrl[2]);
                                }
                                IE.this.pendingUrl = null;
                                IE.this.pendingText = null;
                                break;
                            }
                            Variant varResult = event.arguments[0];
                            IDispatch dispatch = varResult.getDispatch();
                            varResult = event.arguments[1];
                            String url = varResult.getString();
                            if (url.indexOf(":/") == -1 && url.indexOf(":\\") != -1) {
                                url = IE.PROTOCOL_FILE + url.replace('\\', '/');
                            }
                            if (IE.this.html != null && url.equals(IE.ABOUT_BLANK)) {
                                if (IE.this.delaySetText) {
                                    IE.this.delaySetText = false;
                                    IE.this.browser.getDisplay().asyncExec(new Runnable(this){
                                        final /* synthetic */ 7 this$1;
                                        {
                                            this.this$1 = var1_1;
                                        }

                                        public void run() {
                                            if (7.access$0(this.this$1).browser.isDisposed() || 7.access$0(this.this$1).html == null) {
                                                return;
                                            }
                                            7.access$0(this.this$1).setHTML(7.access$0(this.this$1).html);
                                            7.access$0(this.this$1).html = null;
                                        }
                                    });
                                    break;
                                }
                                IE.this.setHTML(IE.this.html);
                                IE.this.html = null;
                                break;
                            }
                            Variant variant = new Variant(IE.this.auto);
                            IDispatch top = variant.getDispatch();
                            LocationEvent locationEvent = new LocationEvent(IE.this.browser);
                            locationEvent.display = IE.this.browser.getDisplay();
                            locationEvent.widget = IE.this.browser;
                            locationEvent.location = url;
                            locationEvent.top = top.getAddress() == dispatch.getAddress();
                            int i = 0;
                            while (i < IE.this.locationListeners.length) {
                                IE.this.locationListeners[i].changed(locationEvent);
                                ++i;
                            }
                            if (IE.this.browser.isDisposed()) {
                                return;
                            }
                            if (IE.this.globalDispatch == 0 || dispatch.getAddress() != IE.this.globalDispatch) break;
                            IE.this.globalDispatch = 0;
                            IE ie = (IE)IE.this.browser.webBrowser;
                            if (ie.installFunctionsOnDocumentComplete) {
                                ie.installFunctionsOnDocumentComplete = false;
                                Enumeration elements = IE.this.functions.elements();
                                while (elements.hasMoreElements()) {
                                    BrowserFunction function = (BrowserFunction)elements.nextElement();
                                    IE.this.execute(function.functionString);
                                }
                            }
                            ProgressEvent progressEvent = new ProgressEvent(IE.this.browser);
                            progressEvent.display = IE.this.browser.getDisplay();
                            progressEvent.widget = IE.this.browser;
                            int i2 = 0;
                            while (i2 < IE.this.progressListeners.length) {
                                IE.this.progressListeners[i2].completed(progressEvent);
                                ++i2;
                            }
                            break;
                        }
                        case 104: {
                            if (!IE.this.isRefresh) break;
                            IE.this.isRefresh = false;
                            Enumeration elements = IE.this.functions.elements();
                            while (elements.hasMoreElements()) {
                                BrowserFunction function = (BrowserFunction)elements.nextElement();
                                IE.this.execute(function.functionString);
                            }
                            ProgressEvent progressEvent = new ProgressEvent(IE.this.browser);
                            progressEvent.display = IE.this.browser.getDisplay();
                            progressEvent.widget = IE.this.browser;
                            int i = 0;
                            while (i < IE.this.progressListeners.length) {
                                IE.this.progressListeners[i].completed(progressEvent);
                                ++i;
                            }
                            break;
                        }
                        case 252: {
                            boolean isTop;
                            String extension;
                            int extensionIndex;
                            Variant varResult = event.arguments[1];
                            String url = varResult.getString();
                            if (!IE.this.performingInitialNavigate) {
                                IE.this.isAboutBlank = url.startsWith(IE.ABOUT_BLANK);
                            }
                            boolean isPDF = false;
                            String path = null;
                            try {
                                path = new URL(url).getPath();
                            }
                            catch (MalformedURLException malformedURLException) {}
                            if (path != null && (extensionIndex = path.lastIndexOf(46)) != -1 && (extension = path.substring(extensionIndex)).equalsIgnoreCase(IE.EXTENSION_PDF)) {
                                isPDF = true;
                                if (++PDFCount > 20) {
                                    COM.FreeUnusedLibraries = false;
                                }
                            }
                            if (IE.this.uncRedirect != null) {
                                if (IE.this.uncRedirect.equals(url)) {
                                    IE.this.uncRedirect = null;
                                    break;
                                }
                                if (IE.this.uncRedirect.startsWith(url)) {
                                    IE.this.navigate(IE.this.uncRedirect, null, null, true);
                                    break;
                                }
                                IE.this.uncRedirect = null;
                            }
                            varResult = event.arguments[0];
                            IDispatch dispatch = varResult.getDispatch();
                            if (IE.this.globalDispatch == 0) {
                                IE.this.globalDispatch = dispatch.getAddress();
                            }
                            OleAutomation webBrowser = varResult.getAutomation();
                            Variant variant = new Variant(IE.this.auto);
                            IDispatch top = variant.getDispatch();
                            boolean bl = isTop = top.getAddress() == dispatch.getAddress();
                            if (isTop) {
                                IE.this.unhookDOMListeners(IE.this.documents);
                                int i = 0;
                                while (i < IE.this.documents.length) {
                                    IE.this.documents[i].dispose();
                                    ++i;
                                }
                                IE.this.documents = new OleAutomation[0];
                                Enumeration elements = IE.this.functions.elements();
                                while (elements.hasMoreElements()) {
                                    BrowserFunction function = (BrowserFunction)elements.nextElement();
                                    IE.this.execute(function.functionString);
                                }
                            }
                            if (!isPDF) {
                                IE.this.hookDOMListeners(webBrowser, isTop);
                            }
                            webBrowser.dispose();
                            break;
                        }
                        case 271: {
                            int index;
                            int statusCode;
                            if (IE.this.uncRedirect != null) {
                                IE.this.uncRedirect = null;
                                break;
                            }
                            Variant varResult = event.arguments[1];
                            String url = varResult.getString();
                            if (!url.startsWith("\\\\") || (statusCode = (varResult = event.arguments[3]).getInt()) != -2146697211 || (index = url.indexOf(92, 2)) == -1) break;
                            String host = url.substring(0, index);
                            Variant cancel = event.arguments[4];
                            if (cancel != null) {
                                int pCancel = cancel.getByRef();
                                COM.MoveMemory(pCancel, new short[]{-1}, 2);
                            }
                            IE.this.browser.getDisplay().asyncExec(new Runnable(this, url, host){
                                final /* synthetic */ 7 this$1;
                                private final /* synthetic */ String val$url;
                                private final /* synthetic */ String val$host;
                                {
                                    this.this$1 = var1_1;
                                    this.val$url = string;
                                    this.val$host = string2;
                                }

                                public void run() {
                                    if (7.access$0(this.this$1).browser.isDisposed()) {
                                        return;
                                    }
                                    7.access$0(this.this$1).uncRedirect = this.val$url.endsWith("\\") ? this.val$url.substring(0, this.val$url.length() - 1) : this.val$url;
                                    7.access$0(this.this$1).navigate(this.val$host, null, null, true);
                                }
                            });
                            break;
                        }
                        case 251: {
                            boolean doit;
                            Variant cancel = event.arguments[1];
                            int pCancel = cancel.getByRef();
                            WindowEvent newEvent = new WindowEvent(IE.this.browser);
                            newEvent.display = IE.this.browser.getDisplay();
                            newEvent.widget = IE.this.browser;
                            newEvent.required = false;
                            int i = 0;
                            while (i < IE.this.openWindowListeners.length) {
                                IE.this.openWindowListeners[i].open(newEvent);
                                ++i;
                            }
                            IE browser = null;
                            if (newEvent.browser != null && newEvent.browser.webBrowser instanceof IE) {
                                browser = (IE)newEvent.browser.webBrowser;
                            }
                            boolean bl = doit = browser != null && !browser.browser.isDisposed();
                            if (doit) {
                                browser.installFunctionsOnDocumentComplete = true;
                                Variant variant = new Variant(browser.auto);
                                IDispatch iDispatch = variant.getDispatch();
                                Variant ppDisp = event.arguments[0];
                                int byref = ppDisp.getByRef();
                                if (byref != 0) {
                                    COM.MoveMemory(byref, new int[]{iDispatch.getAddress()}, OS.PTR_SIZEOF);
                                }
                            }
                            if (!newEvent.required) break;
                            COM.MoveMemory(pCancel, new short[]{doit ? (short)0 : -1}, 2);
                            break;
                        }
                        case 256: {
                            Variant arg0 = event.arguments[0];
                            IE.this.menuBar = arg0.getBoolean();
                            break;
                        }
                        case 257: {
                            Variant arg0 = event.arguments[0];
                            IE.this.statusBar = arg0.getBoolean();
                            break;
                        }
                        case 255: {
                            Variant arg0 = event.arguments[0];
                            IE.this.toolBar = arg0.getBoolean();
                            if (IE.this.toolBar) break;
                            IE.this.addressBar = false;
                            IE.this.menuBar = false;
                            break;
                        }
                        case 254: {
                            Variant arg1 = event.arguments[0];
                            boolean visible = arg1.getBoolean();
                            WindowEvent newEvent = new WindowEvent(IE.this.browser);
                            newEvent.display = IE.this.browser.getDisplay();
                            newEvent.widget = IE.this.browser;
                            if (visible) {
                                int[] rgdispid;
                                Variant pVarResult;
                                if (IE.this.addressBar && (pVarResult = IE.this.auto.getProperty((rgdispid = IE.this.auto.getIDsOfNames(new String[]{"AddressBar"}))[0])) != null) {
                                    if (pVarResult.getType() == 11) {
                                        IE.this.addressBar = pVarResult.getBoolean();
                                    }
                                    pVarResult.dispose();
                                }
                                newEvent.addressBar = IE.this.addressBar;
                                newEvent.menuBar = IE.this.menuBar;
                                newEvent.statusBar = IE.this.statusBar;
                                newEvent.toolBar = IE.this.toolBar;
                                newEvent.location = IE.this.location;
                                newEvent.size = IE.this.size;
                                int i = 0;
                                while (i < IE.this.visibilityWindowListeners.length) {
                                    IE.this.visibilityWindowListeners[i].show(newEvent);
                                    ++i;
                                }
                                IE.this.location = null;
                                IE.this.size = null;
                                break;
                            }
                            int i = 0;
                            while (i < IE.this.visibilityWindowListeners.length) {
                                IE.this.visibilityWindowListeners[i].hide(newEvent);
                                ++i;
                            }
                            break;
                        }
                        case 108: {
                            if (IE.this.performingInitialNavigate) break;
                            Variant arg1 = event.arguments[0];
                            int nProgress = arg1.getType() != 3 ? 0 : arg1.getInt();
                            Variant arg2 = event.arguments[1];
                            int nProgressMax = arg2.getType() != 3 ? 0 : arg2.getInt();
                            ProgressEvent newEvent = new ProgressEvent(IE.this.browser);
                            newEvent.display = IE.this.browser.getDisplay();
                            newEvent.widget = IE.this.browser;
                            newEvent.current = nProgress;
                            newEvent.total = nProgressMax;
                            if (nProgress == -1) break;
                            int i = 0;
                            while (i < IE.this.progressListeners.length) {
                                IE.this.progressListeners[i].changed(newEvent);
                                ++i;
                            }
                            break;
                        }
                        case 102: {
                            Variant arg1;
                            if (IE.this.performingInitialNavigate || (arg1 = event.arguments[0]).getType() != 8) break;
                            String text = arg1.getString();
                            StatusTextEvent newEvent = new StatusTextEvent(IE.this.browser);
                            newEvent.display = IE.this.browser.getDisplay();
                            newEvent.widget = IE.this.browser;
                            newEvent.text = text;
                            int i = 0;
                            while (i < IE.this.statusTextListeners.length) {
                                IE.this.statusTextListeners[i].changed(newEvent);
                                ++i;
                            }
                            break;
                        }
                        case 113: {
                            Variant arg1;
                            if (IE.this.performingInitialNavigate || (arg1 = event.arguments[0]).getType() != 8) break;
                            String title = arg1.getString();
                            TitleEvent newEvent = new TitleEvent(IE.this.browser);
                            newEvent.display = IE.this.browser.getDisplay();
                            newEvent.widget = IE.this.browser;
                            newEvent.title = title;
                            int i = 0;
                            while (i < IE.this.titleListeners.length) {
                                IE.this.titleListeners[i].changed(newEvent);
                                ++i;
                            }
                            break;
                        }
                        case 263: {
                            IE.this.browser.getDisplay().asyncExec(new Runnable(this){
                                final /* synthetic */ 7 this$1;
                                {
                                    this.this$1 = var1_1;
                                }

                                public void run() {
                                    if (7.access$0(this.this$1).browser.isDisposed()) {
                                        return;
                                    }
                                    WindowEvent newEvent = new WindowEvent(7.access$0(this.this$1).browser);
                                    newEvent.display = 7.access$0(this.this$1).browser.getDisplay();
                                    newEvent.widget = 7.access$0(this.this$1).browser;
                                    int i = 0;
                                    while (i < 7.access$0(this.this$1).closeWindowListeners.length) {
                                        7.access$0(this.this$1).closeWindowListeners[i].close(newEvent);
                                        ++i;
                                    }
                                    7.access$0(this.this$1).browser.dispose();
                                }
                            });
                            Variant cancel = event.arguments[1];
                            int pCancel = cancel.getByRef();
                            Variant arg1 = event.arguments[0];
                            boolean isChildWindow = arg1.getBoolean();
                            COM.MoveMemory(pCancel, new short[]{isChildWindow ? (short)0 : -1}, 2);
                            break;
                        }
                        case 267: {
                            if (IE.this.size == null) {
                                IE.this.size = new Point(0, 0);
                            }
                            Variant arg1 = event.arguments[0];
                            IE.this.size.y = arg1.getInt();
                            break;
                        }
                        case 264: {
                            if (IE.this.location == null) {
                                IE.this.location = new Point(0, 0);
                            }
                            Variant arg1 = event.arguments[0];
                            IE.this.location.x = arg1.getInt();
                            break;
                        }
                        case 265: {
                            if (IE.this.location == null) {
                                IE.this.location = new Point(0, 0);
                            }
                            Variant arg1 = event.arguments[0];
                            IE.this.location.y = arg1.getInt();
                            break;
                        }
                        case 266: {
                            if (IE.this.size == null) {
                                IE.this.size = new Point(0, 0);
                            }
                            Variant arg1 = event.arguments[0];
                            IE.this.size.x = arg1.getInt();
                        }
                    }
                }
                Variant[] arguments = event.arguments;
                int i = 0;
                while (i < arguments.length) {
                    arguments[i].dispose();
                    ++i;
                }
            }

            static /* synthetic */ IE access$0(7 var0) {
                return var0.IE.this;
            }
        };
        this.site.addEventListener(250, oleListener);
        this.site.addEventListener(105, oleListener);
        this.site.addEventListener(259, oleListener);
        this.site.addEventListener(104, oleListener);
        this.site.addEventListener(252, oleListener);
        this.site.addEventListener(271, oleListener);
        this.site.addEventListener(251, oleListener);
        this.site.addEventListener(256, oleListener);
        this.site.addEventListener(257, oleListener);
        this.site.addEventListener(255, oleListener);
        this.site.addEventListener(254, oleListener);
        this.site.addEventListener(108, oleListener);
        this.site.addEventListener(102, oleListener);
        this.site.addEventListener(113, oleListener);
        this.site.addEventListener(263, oleListener);
        this.site.addEventListener(267, oleListener);
        this.site.addEventListener(264, oleListener);
        this.site.addEventListener(265, oleListener);
        this.site.addEventListener(266, oleListener);
        Variant variant = new Variant(true);
        this.auto.setProperty(552, variant);
        variant.dispose();
        variant = new Variant(false);
        int[] rgdispid = this.auto.getIDsOfNames(new String[]{"RegisterAsDropTarget"});
        if (rgdispid != null) {
            this.auto.setProperty(rgdispid[0], variant);
        }
        variant.dispose();
    }

    public boolean back() {
        if (!this.back) {
            return false;
        }
        int[] rgdispid = this.auto.getIDsOfNames(new String[]{"GoBack"});
        Variant pVarResult = this.auto.invoke(rgdispid[0]);
        return pVarResult != null && pVarResult.getType() == 0;
    }

    public boolean close() {
        boolean result = true;
        int[] rgdispid = this.auto.getIDsOfNames(new String[]{PROPERTY_DOCUMENT});
        int dispIdMember = rgdispid[0];
        Variant pVarResult = this.auto.getProperty(dispIdMember);
        if (pVarResult == null || pVarResult.getType() == 0) {
            if (pVarResult != null) {
                pVarResult.dispose();
            }
        } else {
            OleAutomation document = pVarResult.getAutomation();
            pVarResult.dispose();
            rgdispid = document.getIDsOfNames(new String[]{"parentWindow"});
            if (rgdispid != null) {
                dispIdMember = rgdispid[0];
                pVarResult = document.getProperty(dispIdMember);
                if (pVarResult == null || pVarResult.getType() == 0) {
                    if (pVarResult != null) {
                        pVarResult.dispose();
                    }
                } else {
                    OleAutomation window = pVarResult.getAutomation();
                    pVarResult.dispose();
                    rgdispid = window.getIDsOfNames(new String[]{"location"});
                    dispIdMember = rgdispid[0];
                    pVarResult = window.getProperty(dispIdMember);
                    if (pVarResult == null || pVarResult.getType() == 0) {
                        if (pVarResult != null) {
                            pVarResult.dispose();
                        }
                    } else {
                        OleAutomation location = pVarResult.getAutomation();
                        pVarResult.dispose();
                        LocationListener[] oldListeners = this.locationListeners;
                        this.locationListeners = new LocationListener[0];
                        rgdispid = location.getIDsOfNames(new String[]{"replace"});
                        dispIdMember = rgdispid[0];
                        Variant[] args = new Variant[]{new Variant(ABOUT_BLANK)};
                        pVarResult = location.invoke(dispIdMember, args);
                        if (pVarResult == null) {
                            result = false;
                        } else {
                            pVarResult.dispose();
                        }
                        args[0].dispose();
                        this.locationListeners = oldListeners;
                        location.dispose();
                    }
                    window.dispose();
                }
            }
            document.dispose();
        }
        return result;
    }

    static Variant createSafeArray(String string) {
        SAFEARRAYBOUND safeArrayBound;
        byte[] bytes = string.getBytes();
        int length = bytes.length;
        int pvData = OS.GlobalAlloc(64, length);
        C.memmove(pvData, bytes, length);
        int cElements1 = length;
        int pSafeArray = OS.GlobalAlloc(64, SAFEARRAY.sizeof);
        SAFEARRAY safeArray = new SAFEARRAY();
        safeArray.cDims = 1;
        safeArray.fFeatures = (short)16;
        safeArray.cbElements = 1;
        safeArray.pvData = pvData;
        safeArray.rgsabound = safeArrayBound = new SAFEARRAYBOUND();
        safeArrayBound.cElements = cElements1;
        OS.MoveMemory(pSafeArray, safeArray, SAFEARRAY.sizeof);
        int pVariant = OS.GlobalAlloc(64, Variant.sizeof);
        short vt = 8209;
        OS.MoveMemory(pVariant, new short[]{vt}, 2);
        OS.MoveMemory(pVariant + 8, new int[]{pSafeArray}, C.PTR_SIZEOF);
        return new Variant(pVariant, 16396);
    }

    public boolean execute(String script) {
        int[] rgdispid = this.auto.getIDsOfNames(new String[]{PROPERTY_DOCUMENT});
        int dispIdMember = rgdispid[0];
        Variant pVarResult = this.auto.getProperty(dispIdMember);
        if (pVarResult == null || pVarResult.getType() == 0) {
            if (pVarResult != null) {
                pVarResult.dispose();
            }
            return false;
        }
        OleAutomation document = pVarResult.getAutomation();
        pVarResult.dispose();
        rgdispid = document.getIDsOfNames(new String[]{"parentWindow"});
        if (rgdispid == null) {
            document.dispose();
            return false;
        }
        dispIdMember = rgdispid[0];
        pVarResult = document.getProperty(dispIdMember);
        OleAutomation ihtmlWindow2 = pVarResult.getAutomation();
        pVarResult.dispose();
        document.dispose();
        rgdispid = ihtmlWindow2.getIDsOfNames(new String[]{"execScript", "code"});
        Variant[] rgvarg = new Variant[]{new Variant(script)};
        int[] rgdispidNamedArgs = new int[]{rgdispid[1]};
        pVarResult = ihtmlWindow2.invoke(rgdispid[0], rgvarg, rgdispidNamedArgs);
        rgvarg[0].dispose();
        ihtmlWindow2.dispose();
        if (pVarResult == null) {
            return false;
        }
        pVarResult.dispose();
        return true;
    }

    public boolean forward() {
        if (!this.forward) {
            return false;
        }
        int[] rgdispid = this.auto.getIDsOfNames(new String[]{"GoForward"});
        Variant pVarResult = this.auto.invoke(rgdispid[0]);
        return pVarResult != null && pVarResult.getType() == 0;
    }

    public String getBrowserType() {
        return "ie";
    }

    String getDeleteFunctionString(String functionName) {
        return "window." + functionName + "=undefined";
    }

    public String getText() {
        int[] rgdispid = this.auto.getIDsOfNames(new String[]{PROPERTY_DOCUMENT});
        Variant pVarResult = this.auto.getProperty(rgdispid[0]);
        if (pVarResult == null || pVarResult.getType() == 0) {
            if (pVarResult != null) {
                pVarResult.dispose();
            }
            return "";
        }
        OleAutomation document = pVarResult.getAutomation();
        pVarResult.dispose();
        rgdispid = document.getIDsOfNames(new String[]{"documentElement"});
        if (rgdispid == null) {
            document.dispose();
            return "";
        }
        pVarResult = document.getProperty(rgdispid[0]);
        document.dispose();
        if (pVarResult == null || pVarResult.getType() == 0) {
            if (pVarResult != null) {
                pVarResult.dispose();
            }
            return "";
        }
        OleAutomation element = pVarResult.getAutomation();
        pVarResult.dispose();
        rgdispid = element.getIDsOfNames(new String[]{"outerHTML"});
        pVarResult = element.getProperty(rgdispid[0]);
        element.dispose();
        if (pVarResult == null || pVarResult.getType() == 0) {
            if (pVarResult != null) {
                pVarResult.dispose();
            }
            return "";
        }
        String result = pVarResult.getString();
        pVarResult.dispose();
        return result;
    }

    public String getUrl() {
        String result = this._getUrl();
        return result.length() != 0 ? result : ABOUT_BLANK;
    }

    String _getUrl() {
        int[] rgdispid = this.auto.getIDsOfNames(new String[]{"LocationURL"});
        Variant pVarResult = this.auto.getProperty(rgdispid[0]);
        if (pVarResult == null || pVarResult.getType() != 8) {
            return "";
        }
        String result = pVarResult.getString();
        pVarResult.dispose();
        return result;
    }

    public boolean isBackEnabled() {
        return this.back;
    }

    public boolean isForwardEnabled() {
        return this.forward;
    }

    public boolean isFocusControl() {
        return this.site.isFocusControl() || this.frame.isFocusControl();
    }

    boolean navigate(String url, String postData, String[] headers, boolean silent) {
        int count = 1;
        if (postData != null) {
            ++count;
        }
        if (headers != null) {
            ++count;
        }
        Variant[] rgvarg = new Variant[count];
        int[] rgdispidNamedArgs = new int[count];
        int[] rgdispid = this.auto.getIDsOfNames(new String[]{"Navigate", "URL", "PostData", "Headers"});
        int index = 0;
        rgvarg[index] = new Variant(url);
        rgdispidNamedArgs[index++] = rgdispid[1];
        if (postData != null) {
            rgvarg[index] = IE.createSafeArray(postData);
            rgdispidNamedArgs[index++] = rgdispid[2];
        }
        if (headers != null) {
            StringBuffer buffer = new StringBuffer();
            int i = 0;
            while (i < headers.length) {
                int sep;
                String current = headers[i];
                if (current != null && (sep = current.indexOf(58)) != -1) {
                    String key = current.substring(0, sep).trim();
                    String value = current.substring(sep + 1).trim();
                    if (key.length() > 0 && value.length() > 0) {
                        buffer.append(key);
                        buffer.append(':');
                        buffer.append(value);
                        buffer.append("\r\n");
                    }
                }
                ++i;
            }
            rgvarg[index] = new Variant(buffer.toString());
            rgdispidNamedArgs[index++] = rgdispid[3];
        }
        boolean oldValue = false;
        if (silent && !OS.IsWinCE && IEVersion >= 7) {
            int hResult = OS.CoInternetIsFeatureEnabled(21, 2);
            oldValue = hResult == 0;
            OS.CoInternetSetFeatureEnabled(21, 2, true);
        }
        Variant pVarResult = this.auto.invoke(rgdispid[0], rgvarg, rgdispidNamedArgs);
        if (silent && !OS.IsWinCE && IEVersion >= 7) {
            OS.CoInternetSetFeatureEnabled(21, 2, oldValue);
        }
        int i = 0;
        while (i < count) {
            rgvarg[i].dispose();
            ++i;
        }
        if (pVarResult == null) {
            return false;
        }
        boolean result = pVarResult.getType() == 0;
        pVarResult.dispose();
        return result;
    }

    public void refresh() {
        String extension;
        this.uncRedirect = null;
        String url = this._getUrl();
        int extensionIndex = url.lastIndexOf(46);
        if (extensionIndex != -1 && (extension = url.substring(extensionIndex)).equalsIgnoreCase(EXTENSION_PDF) && ++PDFCount > 20) {
            COM.FreeUnusedLibraries = false;
        }
        this.isRefresh = true;
        int[] rgdispid = this.auto.getIDsOfNames(new String[]{"Refresh"});
        this.auto.invoke(rgdispid[0]);
    }

    void setHTML(String string) {
        int charCount = string.length();
        char[] chars = new char[charCount];
        string.getChars(0, charCount, chars, 0);
        int byteCount = OS.WideCharToMultiByte(65001, 0, chars, charCount, null, 0, null, null);
        byte[] UTF8BOM = new byte[]{-17, -69, -65};
        int hGlobal = OS.GlobalAlloc(64, UTF8BOM.length + byteCount);
        if (hGlobal != 0) {
            OS.MoveMemory(hGlobal, UTF8BOM, UTF8BOM.length);
            OS.WideCharToMultiByte(65001, 0, chars, charCount, hGlobal + UTF8BOM.length, byteCount, null, null);
            int[] ppstm = new int[1];
            if (OS.CreateStreamOnHGlobal(hGlobal, true, ppstm) == 0) {
                int[] ppvObject;
                int[] rgdispid = this.auto.getIDsOfNames(new String[]{PROPERTY_DOCUMENT});
                Variant pVarResult = this.auto.getProperty(rgdispid[0]);
                IDispatch dispatchDocument = pVarResult.getDispatch();
                int result = dispatchDocument.QueryInterface(COM.IIDIPersistStreamInit, ppvObject = new int[1]);
                if (result == 0) {
                    IPersistStreamInit persistStreamInit = new IPersistStreamInit(ppvObject[0]);
                    if (persistStreamInit.InitNew() == 0) {
                        persistStreamInit.Load(ppstm[0]);
                    }
                    persistStreamInit.Release();
                }
                pVarResult.dispose();
                IUnknown stream = new IUnknown(ppstm[0]);
                stream.Release();
            } else {
                OS.GlobalFree(hGlobal);
            }
        }
    }

    public boolean setText(String html, boolean trusted) {
        int[] rgdispid;
        if (this.performingInitialNavigate) {
            this.pendingText = new Object[]{html, new Boolean(trusted)};
            this.pendingUrl = null;
            return true;
        }
        boolean blankLoading = this.html != null;
        this.html = html;
        boolean bl = this.untrustedText = !trusted;
        if (blankLoading) {
            return true;
        }
        if (this._getUrl().length() != 0) {
            rgdispid = this.auto.getIDsOfNames(new String[]{"ReadyState"});
            Variant pVarResult = this.auto.getProperty(rgdispid[0]);
            if (pVarResult == null) {
                return false;
            }
            this.delaySetText = pVarResult.getInt() != 4;
            pVarResult.dispose();
            rgdispid = this.auto.getIDsOfNames(new String[]{"Stop"});
            this.auto.invoke(rgdispid[0]);
        }
        rgdispid = this.auto.getIDsOfNames(new String[]{"Navigate", "URL"});
        Variant[] rgvarg = new Variant[]{new Variant(ABOUT_BLANK)};
        int[] rgdispidNamedArgs = new int[]{rgdispid[1]};
        boolean oldValue = false;
        if (!OS.IsWinCE && IEVersion >= 7) {
            int hResult = OS.CoInternetIsFeatureEnabled(21, 2);
            oldValue = hResult == 0;
            OS.CoInternetSetFeatureEnabled(21, 2, true);
        }
        Variant pVarResult = this.auto.invoke(rgdispid[0], rgvarg, rgdispidNamedArgs);
        if (!OS.IsWinCE && IEVersion >= 7) {
            OS.CoInternetSetFeatureEnabled(21, 2, oldValue);
        }
        rgvarg[0].dispose();
        if (pVarResult == null) {
            return false;
        }
        boolean result = pVarResult.getType() == 0;
        pVarResult.dispose();
        return result;
    }

    public boolean setUrl(String url, String postData, String[] headers) {
        this.uncRedirect = null;
        this.html = null;
        if (this._getUrl().length() == 0 && !ABOUT_BLANK.equalsIgnoreCase(url)) {
            this.pendingText = null;
            this.pendingUrl = new Object[]{url, postData, headers};
            this.performingInitialNavigate = true;
            this.navigate(ABOUT_BLANK, null, null, true);
            return true;
        }
        if (url.endsWith(".xml")) {
            int[] rgdispid = this.auto.getIDsOfNames(new String[]{"Stop"});
            this.auto.invoke(rgdispid[0]);
        }
        return this.navigate(url, postData, headers, false);
    }

    public void stop() {
        if (this.performingInitialNavigate) {
            this.pendingUrl = null;
            this.pendingText = null;
            return;
        }
        if (this._getUrl().length() == 0) {
            return;
        }
        this.uncRedirect = null;
        int[] rgdispid = this.auto.getIDsOfNames(new String[]{"Stop"});
        this.auto.invoke(rgdispid[0]);
    }

    boolean translateMnemonics() {
        return false;
    }

    void handleDOMEvent(OleEvent e) {
        boolean isInternal;
        if (e.arguments == null || e.arguments.length == 0) {
            return;
        }
        Variant arg = e.arguments[0];
        OleAutomation event = arg.getAutomation();
        int[] rgdispid = event.getIDsOfNames(new String[]{PROPERTY_TYPE});
        int dispIdMember = rgdispid[0];
        Variant pVarResult = event.getProperty(dispIdMember);
        String eventType = pVarResult.getString();
        pVarResult.dispose();
        if (eventType.equals(EVENT_KEYDOWN)) {
            rgdispid = event.getIDsOfNames(new String[]{PROPERTY_KEYCODE});
            dispIdMember = rgdispid[0];
            pVarResult = event.getProperty(dispIdMember);
            this.lastKeyCode = this.translateKey(pVarResult.getInt());
            pVarResult.dispose();
            rgdispid = event.getIDsOfNames(new String[]{PROPERTY_RETURNVALUE});
            pVarResult = event.getProperty(rgdispid[0]);
            boolean consume = pVarResult != null && pVarResult.getType() == 11 && !pVarResult.getBoolean();
            pVarResult.dispose();
            MSG msg = new MSG();
            int flags = 2 | (consume ? 1 : 0);
            if (OS.PeekMessage(msg, this.frame.handle, 258, 258, flags)) {
                event.dispose();
                return;
            }
            if (consume) {
                event.dispose();
                return;
            }
            rgdispid = event.getIDsOfNames(new String[]{PROPERTY_REPEAT});
            dispIdMember = rgdispid[0];
            pVarResult = event.getProperty(dispIdMember);
            boolean repeating = pVarResult.getBoolean();
            pVarResult.dispose();
            if (repeating) {
                event.dispose();
                return;
            }
            int mask = 0;
            rgdispid = event.getIDsOfNames(new String[]{PROPERTY_ALTKEY});
            dispIdMember = rgdispid[0];
            pVarResult = event.getProperty(dispIdMember);
            if (pVarResult.getBoolean()) {
                mask |= 0x10000;
            }
            pVarResult.dispose();
            rgdispid = event.getIDsOfNames(new String[]{PROPERTY_CTRLKEY});
            dispIdMember = rgdispid[0];
            pVarResult = event.getProperty(dispIdMember);
            if (pVarResult.getBoolean()) {
                mask |= 0x40000;
            }
            pVarResult.dispose();
            rgdispid = event.getIDsOfNames(new String[]{PROPERTY_SHIFTKEY});
            dispIdMember = rgdispid[0];
            pVarResult = event.getProperty(dispIdMember);
            if (pVarResult.getBoolean()) {
                mask |= 0x20000;
            }
            pVarResult.dispose();
            Event keyEvent = new Event();
            keyEvent.widget = this.browser;
            keyEvent.type = 1;
            keyEvent.keyCode = this.lastKeyCode;
            keyEvent.stateMask = mask;
            keyEvent.stateMask &= ~this.lastKeyCode;
            switch (this.lastKeyCode) {
                case 8: {
                    keyEvent.character = (char)8;
                    this.lastCharCode = 8;
                    break;
                }
                case 13: {
                    keyEvent.character = (char)13;
                    this.lastCharCode = 13;
                    break;
                }
                case 127: {
                    keyEvent.character = (char)127;
                    this.lastCharCode = 127;
                    break;
                }
                case 9: {
                    keyEvent.character = (char)9;
                    this.lastCharCode = 9;
                }
            }
            if (!this.sendKeyEvent(keyEvent)) {
                rgdispid = event.getIDsOfNames(new String[]{PROPERTY_RETURNVALUE});
                dispIdMember = rgdispid[0];
                Variant pVarFalse = new Variant(false);
                event.setProperty(dispIdMember, pVarFalse);
                pVarFalse.dispose();
            }
            if (this.lastKeyCode == 0x100000E) {
                this.isRefresh = true;
            }
            event.dispose();
            return;
        }
        if (eventType.equals(EVENT_KEYPRESS)) {
            int mask = 0;
            rgdispid = event.getIDsOfNames(new String[]{PROPERTY_CTRLKEY});
            dispIdMember = rgdispid[0];
            pVarResult = event.getProperty(dispIdMember);
            if (pVarResult.getBoolean()) {
                mask |= 0x40000;
            }
            pVarResult.dispose();
            rgdispid = event.getIDsOfNames(new String[]{PROPERTY_SHIFTKEY});
            dispIdMember = rgdispid[0];
            pVarResult = event.getProperty(dispIdMember);
            if (pVarResult.getBoolean()) {
                mask |= 0x20000;
            }
            pVarResult.dispose();
            rgdispid = event.getIDsOfNames(new String[]{PROPERTY_ALTKEY});
            dispIdMember = rgdispid[0];
            pVarResult = event.getProperty(dispIdMember);
            if (pVarResult.getBoolean()) {
                mask |= 0x10000;
            }
            pVarResult.dispose();
            rgdispid = event.getIDsOfNames(new String[]{PROPERTY_KEYCODE});
            dispIdMember = rgdispid[0];
            pVarResult = event.getProperty(dispIdMember);
            this.lastCharCode = pVarResult.getInt();
            pVarResult.dispose();
            if (this.lastCharCode == 13 || this.lastCharCode == 10) {
                event.dispose();
                return;
            }
            Event keyEvent = new Event();
            keyEvent.widget = this.browser;
            keyEvent.type = 1;
            keyEvent.keyCode = this.lastKeyCode;
            keyEvent.character = (char)this.lastCharCode;
            keyEvent.stateMask = mask;
            if (!this.sendKeyEvent(keyEvent)) {
                rgdispid = event.getIDsOfNames(new String[]{PROPERTY_RETURNVALUE});
                dispIdMember = rgdispid[0];
                Variant pVarFalse = new Variant(false);
                event.setProperty(dispIdMember, pVarFalse);
                pVarFalse.dispose();
            }
            event.dispose();
            return;
        }
        if (eventType.equals(EVENT_KEYUP)) {
            rgdispid = event.getIDsOfNames(new String[]{PROPERTY_KEYCODE});
            dispIdMember = rgdispid[0];
            pVarResult = event.getProperty(dispIdMember);
            int keyCode = this.translateKey(pVarResult.getInt());
            pVarResult.dispose();
            if (keyCode == 0) {
                this.lastCharCode = 0;
                this.lastKeyCode = 0;
                event.dispose();
                return;
            }
            if (keyCode != this.lastKeyCode) {
                this.lastKeyCode = keyCode;
                this.lastCharCode = 0;
            }
            int mask = 0;
            rgdispid = event.getIDsOfNames(new String[]{PROPERTY_CTRLKEY});
            dispIdMember = rgdispid[0];
            pVarResult = event.getProperty(dispIdMember);
            if (pVarResult.getBoolean()) {
                mask |= 0x40000;
            }
            pVarResult.dispose();
            rgdispid = event.getIDsOfNames(new String[]{PROPERTY_ALTKEY});
            dispIdMember = rgdispid[0];
            pVarResult = event.getProperty(dispIdMember);
            if (pVarResult.getBoolean()) {
                mask |= 0x10000;
            }
            pVarResult.dispose();
            rgdispid = event.getIDsOfNames(new String[]{PROPERTY_SHIFTKEY});
            dispIdMember = rgdispid[0];
            pVarResult = event.getProperty(dispIdMember);
            if (pVarResult.getBoolean()) {
                mask |= 0x20000;
            }
            pVarResult.dispose();
            Event keyEvent = new Event();
            keyEvent.widget = this.browser;
            keyEvent.type = 2;
            keyEvent.keyCode = this.lastKeyCode;
            keyEvent.character = (char)this.lastCharCode;
            keyEvent.stateMask = mask;
            switch (this.lastKeyCode) {
                case 65536: 
                case 131072: 
                case 262144: 
                case 0x400000: {
                    keyEvent.stateMask |= this.lastKeyCode;
                }
            }
            this.browser.notifyListeners(keyEvent.type, keyEvent);
            if (!keyEvent.doit) {
                rgdispid = event.getIDsOfNames(new String[]{PROPERTY_RETURNVALUE});
                dispIdMember = rgdispid[0];
                Variant pVarFalse = new Variant(false);
                event.setProperty(dispIdMember, pVarFalse);
                pVarFalse.dispose();
            }
            this.lastCharCode = 0;
            this.lastKeyCode = 0;
            event.dispose();
            return;
        }
        if (eventType.equals(EVENT_MOUSEOVER)) {
            rgdispid = event.getIDsOfNames(new String[]{PROPERTY_FROMELEMENT});
            dispIdMember = rgdispid[0];
            pVarResult = event.getProperty(dispIdMember);
            isInternal = pVarResult.getType() != 0;
            pVarResult.dispose();
            if (isInternal) {
                event.dispose();
                return;
            }
        }
        if (eventType.equals(EVENT_MOUSEOUT)) {
            rgdispid = event.getIDsOfNames(new String[]{PROPERTY_TOELEMENT});
            dispIdMember = rgdispid[0];
            pVarResult = event.getProperty(dispIdMember);
            isInternal = pVarResult.getType() != 0;
            pVarResult.dispose();
            if (isInternal) {
                event.dispose();
                return;
            }
        }
        int mask = 0;
        Event newEvent = new Event();
        newEvent.widget = this.browser;
        rgdispid = event.getIDsOfNames(new String[]{PROPERTY_SCREENX});
        dispIdMember = rgdispid[0];
        pVarResult = event.getProperty(dispIdMember);
        int screenX = pVarResult.getInt();
        pVarResult.dispose();
        rgdispid = event.getIDsOfNames(new String[]{PROPERTY_SCREENY});
        dispIdMember = rgdispid[0];
        pVarResult = event.getProperty(dispIdMember);
        int screenY = pVarResult.getInt();
        pVarResult.dispose();
        Point position = new Point(screenX, screenY);
        position = this.browser.getDisplay().map(null, (Control)this.browser, position);
        newEvent.x = position.x;
        newEvent.y = position.y;
        rgdispid = event.getIDsOfNames(new String[]{PROPERTY_CTRLKEY});
        dispIdMember = rgdispid[0];
        pVarResult = event.getProperty(dispIdMember);
        if (pVarResult.getBoolean()) {
            mask |= 0x40000;
        }
        pVarResult.dispose();
        rgdispid = event.getIDsOfNames(new String[]{PROPERTY_ALTKEY});
        dispIdMember = rgdispid[0];
        pVarResult = event.getProperty(dispIdMember);
        if (pVarResult.getBoolean()) {
            mask |= 0x10000;
        }
        pVarResult.dispose();
        rgdispid = event.getIDsOfNames(new String[]{PROPERTY_SHIFTKEY});
        dispIdMember = rgdispid[0];
        pVarResult = event.getProperty(dispIdMember);
        if (pVarResult.getBoolean()) {
            mask |= 0x20000;
        }
        pVarResult.dispose();
        newEvent.stateMask = mask;
        rgdispid = event.getIDsOfNames(new String[]{PROPERTY_BUTTON});
        dispIdMember = rgdispid[0];
        pVarResult = event.getProperty(dispIdMember);
        int button = pVarResult.getInt();
        pVarResult.dispose();
        switch (button) {
            case 1: {
                button = 1;
                break;
            }
            case 2: {
                button = 3;
                break;
            }
            case 4: {
                button = 2;
            }
        }
        if (eventType.equals(EVENT_MOUSEDOWN)) {
            newEvent.type = 3;
            newEvent.button = button;
            newEvent.count = 1;
        } else if (eventType.equals(EVENT_MOUSEUP) || eventType.equals(EVENT_DRAGEND)) {
            newEvent.type = 4;
            newEvent.button = button != 0 ? button : 1;
            newEvent.count = 1;
            switch (newEvent.button) {
                case 1: {
                    newEvent.stateMask |= 0x80000;
                    break;
                }
                case 2: {
                    newEvent.stateMask |= 0x100000;
                    break;
                }
                case 3: {
                    newEvent.stateMask |= 0x200000;
                    break;
                }
                case 4: {
                    newEvent.stateMask |= 0x800000;
                    break;
                }
                case 5: {
                    newEvent.stateMask |= 0x2000000;
                }
            }
        } else if (eventType.equals(EVENT_MOUSEWHEEL)) {
            newEvent.type = 37;
            rgdispid = event.getIDsOfNames(new String[]{PROPERTY_WHEELDELTA});
            dispIdMember = rgdispid[0];
            pVarResult = event.getProperty(dispIdMember);
            newEvent.count = pVarResult.getInt() / 120 * 3;
            pVarResult.dispose();
        } else if (eventType.equals(EVENT_MOUSEMOVE)) {
            if (newEvent.x == this.lastMouseMoveX && newEvent.y == this.lastMouseMoveY) {
                return;
            }
            newEvent.type = 5;
            this.lastMouseMoveX = newEvent.x;
            this.lastMouseMoveY = newEvent.y;
        } else if (eventType.equals(EVENT_MOUSEOVER)) {
            newEvent.type = 6;
        } else if (eventType.equals(EVENT_MOUSEOUT)) {
            newEvent.type = 7;
        } else if (eventType.equals(EVENT_DRAGSTART)) {
            newEvent.type = 29;
            newEvent.button = 1;
            newEvent.stateMask |= 0x80000;
        }
        event.dispose();
        this.browser.notifyListeners(newEvent.type, newEvent);
        if (eventType.equals(EVENT_DOUBLECLICK)) {
            newEvent = new Event();
            newEvent.widget = this.browser;
            newEvent.type = 8;
            newEvent.x = position.x;
            newEvent.y = position.y;
            newEvent.stateMask = mask;
            newEvent.type = 8;
            newEvent.button = 1;
            newEvent.count = 2;
            this.browser.notifyListeners(newEvent.type, newEvent);
        }
    }

    void hookDOMListeners(OleAutomation webBrowser, boolean isTop) {
        int[] rgdispid = webBrowser.getIDsOfNames(new String[]{PROPERTY_DOCUMENT});
        int dispIdMember = rgdispid[0];
        Variant pVarResult = webBrowser.getProperty(dispIdMember);
        if (pVarResult == null) {
            return;
        }
        if (pVarResult.getType() == 0) {
            pVarResult.dispose();
            return;
        }
        OleAutomation document = pVarResult.getAutomation();
        pVarResult.dispose();
        this.unhookDOMListeners(new OleAutomation[]{document});
        this.site.addEventListener(document, "{3050F613-98B5-11CF-BB82-00AA00BDCE0B}", -602, this.domListener);
        this.site.addEventListener(document, "{3050F613-98B5-11CF-BB82-00AA00BDCE0B}", -603, this.domListener);
        this.site.addEventListener(document, "{3050F613-98B5-11CF-BB82-00AA00BDCE0B}", -604, this.domListener);
        this.site.addEventListener(document, "{3050F613-98B5-11CF-BB82-00AA00BDCE0B}", -605, this.domListener);
        this.site.addEventListener(document, "{3050F613-98B5-11CF-BB82-00AA00BDCE0B}", -607, this.domListener);
        this.site.addEventListener(document, "{3050F613-98B5-11CF-BB82-00AA00BDCE0B}", 1033, this.domListener);
        this.site.addEventListener(document, "{3050F613-98B5-11CF-BB82-00AA00BDCE0B}", -601, this.domListener);
        this.site.addEventListener(document, "{3050F613-98B5-11CF-BB82-00AA00BDCE0B}", -606, this.domListener);
        this.site.addEventListener(document, "{3050F613-98B5-11CF-BB82-00AA00BDCE0B}", -2147418101, this.domListener);
        this.site.addEventListener(document, "{3050F613-98B5-11CF-BB82-00AA00BDCE0B}", -2147418091, this.domListener);
        if (isTop) {
            this.site.addEventListener(document, "{3050F613-98B5-11CF-BB82-00AA00BDCE0B}", -2147418104, this.domListener);
            this.site.addEventListener(document, "{3050F613-98B5-11CF-BB82-00AA00BDCE0B}", -2147418103, this.domListener);
        }
        OleAutomation[] newDocuments = new OleAutomation[this.documents.length + 1];
        System.arraycopy(this.documents, 0, newDocuments, 0, this.documents.length);
        newDocuments[this.documents.length] = document;
        this.documents = newDocuments;
    }

    void unhookDOMListeners(OleAutomation[] documents) {
        GUID guid;
        char[] buffer = "{3050F613-98B5-11CF-BB82-00AA00BDCE0B}\u0000".toCharArray();
        if (COM.IIDFromString(buffer, guid = new GUID()) == 0) {
            int i = 0;
            while (i < documents.length) {
                OleAutomation document = documents[i];
                this.site.removeEventListener(document, guid, -602, this.domListener);
                this.site.removeEventListener(document, guid, -603, this.domListener);
                this.site.removeEventListener(document, guid, -604, this.domListener);
                this.site.removeEventListener(document, guid, -605, this.domListener);
                this.site.removeEventListener(document, guid, -607, this.domListener);
                this.site.removeEventListener(document, guid, 1033, this.domListener);
                this.site.removeEventListener(document, guid, -601, this.domListener);
                this.site.removeEventListener(document, guid, -606, this.domListener);
                this.site.removeEventListener(document, guid, -2147418101, this.domListener);
                this.site.removeEventListener(document, guid, -2147418091, this.domListener);
                this.site.removeEventListener(document, guid, -2147418104, this.domListener);
                this.site.removeEventListener(document, guid, -2147418103, this.domListener);
                ++i;
            }
        }
    }
}

