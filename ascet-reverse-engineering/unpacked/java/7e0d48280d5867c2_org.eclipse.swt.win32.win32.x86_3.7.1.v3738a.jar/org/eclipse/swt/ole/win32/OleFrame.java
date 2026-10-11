/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.ole.win32;

import java.util.Vector;
import org.eclipse.swt.SWT;
import org.eclipse.swt.internal.Callback;
import org.eclipse.swt.internal.LONG;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.COMObject;
import org.eclipse.swt.internal.ole.win32.GUID;
import org.eclipse.swt.internal.ole.win32.IOleInPlaceActiveObject;
import org.eclipse.swt.internal.win32.GUITHREADINFO;
import org.eclipse.swt.internal.win32.MENUITEMINFO;
import org.eclipse.swt.internal.win32.MSG;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.ole.win32.OLE;
import org.eclipse.swt.ole.win32.OleClientSite;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Widget;

public final class OleFrame
extends Composite {
    private COMObject iUnknown;
    private COMObject iOleInPlaceFrame;
    private IOleInPlaceActiveObject objIOleInPlaceActiveObject;
    private OleClientSite currentdoc;
    private int refCount = 0;
    private MenuItem[] fileMenuItems;
    private MenuItem[] containerMenuItems;
    private MenuItem[] windowMenuItems;
    private Listener listener;
    private static String CHECK_FOCUS = "OLE_CHECK_FOCUS";
    private static String HHOOK = "OLE_HHOOK";
    private static String HHOOKMSG = "OLE_HHOOK_MSG";
    private static boolean ignoreNextKey;
    private static final short[] ACCENTS;
    private static final String CONSUME_KEY = "org.eclipse.swt.OleFrame.ConsumeKey";
    private static final String ACCEL_KEY_HIT = "org.eclipse.swt.internal.win32.accelKeyHit";
    static /* synthetic */ Class class$0;

    static {
        ACCENTS = new short[]{126, 96, 39, 94, 34};
    }

    public OleFrame(Composite parent, int style) {
        super(parent, style);
        this.createCOMInterfaces();
        this.listener = new Listener(){

            public void handleEvent(Event e) {
                switch (e.type) {
                    case 26: {
                        OleFrame.this.onActivate(e);
                        break;
                    }
                    case 27: {
                        OleFrame.this.onDeactivate(e);
                        break;
                    }
                    case 12: {
                        OleFrame.this.onDispose(e);
                        break;
                    }
                    case 10: 
                    case 11: {
                        OleFrame.this.onResize(e);
                        break;
                    }
                    default: {
                        OLE.error(20);
                    }
                }
            }
        };
        this.addListener(26, this.listener);
        this.addListener(27, this.listener);
        this.addListener(12, this.listener);
        this.addListener(11, this.listener);
        this.addListener(10, this.listener);
        this.AddRef();
        Display display = this.getDisplay();
        OleFrame.initCheckFocus(display);
        OleFrame.initMsgHook(display);
    }

    private static void initCheckFocus(final Display display) {
        if (display.getData(CHECK_FOCUS) != null) {
            return;
        }
        display.setData(CHECK_FOCUS, CHECK_FOCUS);
        final Runnable[] timer = new Runnable[1];
        final Control[] lastFocus = new Control[1];
        timer[0] = new Runnable(){

            public void run() {
                if (lastFocus[0] instanceof OleClientSite && !lastFocus[0].isDisposed()) {
                    int hwnd = OS.GetFocus();
                    while (hwnd != 0) {
                        int ownerHwnd = OS.GetWindow(hwnd, 4);
                        if (ownerHwnd != 0) {
                            display.timerExec(50, timer[0]);
                            return;
                        }
                        hwnd = OS.GetParent(hwnd);
                    }
                }
                if (lastFocus[0] == null || lastFocus[0].isDisposed() || !lastFocus[0].isFocusControl()) {
                    Control currentFocus = display.getFocusControl();
                    if (currentFocus instanceof OleFrame) {
                        OleFrame frame = (OleFrame)currentFocus;
                        currentFocus = frame.getCurrentDocument();
                    }
                    if (lastFocus[0] != currentFocus) {
                        Event event = new Event();
                        if (lastFocus[0] instanceof OleClientSite && !lastFocus[0].isDisposed()) {
                            lastFocus[0].notifyListeners(16, event);
                        }
                        if (currentFocus instanceof OleClientSite && !currentFocus.isDisposed()) {
                            currentFocus.notifyListeners(15, event);
                        }
                    }
                    lastFocus[0] = currentFocus;
                }
                display.timerExec(50, timer[0]);
            }
        };
        display.timerExec(50, timer[0]);
    }

    private static void initMsgHook(Display display) {
        int threadId;
        int hHook;
        Callback callback;
        int address;
        if (display.getData(HHOOK) != null) {
            return;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.swt.ole.win32.OleFrame");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((address = (callback = new Callback(clazz, "getMsgProc", 3)).getAddress()) == 0) {
            SWT.error(3);
        }
        if ((hHook = OS.SetWindowsHookEx(3, address, 0, threadId = OS.GetCurrentThreadId())) == 0) {
            callback.dispose();
            return;
        }
        display.setData(HHOOK, new LONG(hHook));
        display.setData(HHOOKMSG, new MSG());
        display.disposeExec(new Runnable(){

            public void run() {
                if (hHook != 0) {
                    OS.UnhookWindowsHookEx(hHook);
                }
                if (callback != null) {
                    callback.dispose();
                }
            }
        });
    }

    static int getMsgProc(int code, int wParam, int lParam) {
        Display display = Display.getCurrent();
        if (display == null) {
            return 0;
        }
        LONG hHook = (LONG)display.getData(HHOOK);
        if (hHook == null) {
            return 0;
        }
        if (code < 0 || (wParam & 1) == 0) {
            return OS.CallNextHookEx(hHook.value, code, wParam, lParam);
        }
        MSG msg = (MSG)display.getData(HHOOKMSG);
        OS.MoveMemory(msg, lParam, MSG.sizeof);
        int message = msg.message;
        if (256 <= message && message <= 264 && display != null) {
            Widget widget = null;
            int hwnd = msg.hwnd;
            while (hwnd != 0) {
                widget = display.findWidget(hwnd);
                if (widget != null) break;
                hwnd = OS.GetParent(hwnd);
            }
            if (widget != null && widget instanceof OleClientSite) {
                OleClientSite site = (OleClientSite)widget;
                if (site.handle == hwnd) {
                    boolean consumed = false;
                    int thread = OS.GetWindowThreadProcessId(msg.hwnd, null);
                    GUITHREADINFO lpgui = new GUITHREADINFO();
                    lpgui.cbSize = GUITHREADINFO.sizeof;
                    boolean rc = OS.GetGUIThreadInfo(thread, lpgui);
                    int mask = 30;
                    if (!rc || (lpgui.flags & mask) == 0) {
                        OleFrame frame = site.frame;
                        frame.setData(CONSUME_KEY, null);
                        display.setData(ACCEL_KEY_HIT, Boolean.TRUE);
                        consumed = frame.translateOleAccelerator(msg);
                        if (display.isDisposed()) {
                            return 0;
                        }
                        display.setData(ACCEL_KEY_HIT, Boolean.FALSE);
                        if (frame.isDisposed()) {
                            return 0;
                        }
                        String value = (String)frame.getData(CONSUME_KEY);
                        if (value != null) {
                            consumed = value.equals("true");
                        }
                        frame.setData(CONSUME_KEY, null);
                    }
                    boolean accentKey = false;
                    block0 : switch (msg.message) {
                        case 256: 
                        case 260: {
                            if (OS.IsWinCE) break;
                            switch (msg.wParam) {
                                case 16: 
                                case 17: 
                                case 18: 
                                case 20: 
                                case 144: 
                                case 145: {
                                    break block0;
                                }
                            }
                            int mapKey = OS.MapVirtualKey(msg.wParam, 2);
                            if (mapKey == 0) break;
                            boolean bl = accentKey = (mapKey & (OS.IsWinNT ? Integer.MIN_VALUE : 32768)) != 0;
                            if (accentKey) break;
                            int i = 0;
                            while (i < ACCENTS.length) {
                                short value = OS.VkKeyScan(ACCENTS[i]);
                                if (value != -1 && (value & 0xFF) == msg.wParam) {
                                    int state = value >> 8;
                                    if (OS.GetKeyState(16) < 0 == ((state & 1) != 0) && OS.GetKeyState(17) < 0 == ((state & 2) != 0) && OS.GetKeyState(18) < 0 == ((state & 4) != 0)) {
                                        if ((state & 7) == 0) break block0;
                                        accentKey = true;
                                        break block0;
                                    }
                                }
                                ++i;
                            }
                            break;
                        }
                    }
                    if (!(consumed || accentKey || ignoreNextKey)) {
                        int hwndOld = msg.hwnd;
                        msg.hwnd = site.handle;
                        consumed = OS.DispatchMessage(msg) == 1;
                        msg.hwnd = hwndOld;
                    }
                    block6 : switch (msg.message) {
                        case 256: 
                        case 260: {
                            switch (msg.wParam) {
                                case 16: 
                                case 17: 
                                case 18: 
                                case 20: 
                                case 144: 
                                case 145: {
                                    break block6;
                                }
                            }
                            ignoreNextKey = accentKey;
                        }
                    }
                    if (consumed) {
                        msg.message = 0;
                        msg.lParam = 0;
                        msg.wParam = 0;
                        OS.MoveMemory(lParam, msg, MSG.sizeof);
                        return 0;
                    }
                }
            }
        }
        return OS.CallNextHookEx(hHook.value, code, wParam, lParam);
    }

    int AddRef() {
        ++this.refCount;
        return this.refCount;
    }

    private int ContextSensitiveHelp(int fEnterMode) {
        return 0;
    }

    private void createCOMInterfaces() {
        int[] nArray = new int[3];
        nArray[0] = 2;
        this.iUnknown = new COMObject(nArray){

            public int method0(int[] args) {
                return OleFrame.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return OleFrame.this.AddRef();
            }

            public int method2(int[] args) {
                return OleFrame.this.Release();
            }
        };
        int[] nArray2 = new int[15];
        nArray2[0] = 2;
        nArray2[3] = 1;
        nArray2[4] = 1;
        nArray2[5] = 1;
        nArray2[6] = 1;
        nArray2[7] = 1;
        nArray2[8] = 2;
        nArray2[9] = 2;
        nArray2[10] = 3;
        nArray2[11] = 1;
        nArray2[12] = 1;
        nArray2[13] = 1;
        nArray2[14] = 2;
        this.iOleInPlaceFrame = new COMObject(nArray2){

            public int method0(int[] args) {
                return OleFrame.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return OleFrame.this.AddRef();
            }

            public int method2(int[] args) {
                return OleFrame.this.Release();
            }

            public int method3(int[] args) {
                return OleFrame.this.GetWindow(args[0]);
            }

            public int method4(int[] args) {
                return OleFrame.this.ContextSensitiveHelp(args[0]);
            }

            public int method5(int[] args) {
                return OleFrame.this.GetBorder(args[0]);
            }

            public int method6(int[] args) {
                return OleFrame.this.RequestBorderSpace(args[0]);
            }

            public int method7(int[] args) {
                return OleFrame.this.SetBorderSpace(args[0]);
            }

            public int method8(int[] args) {
                return OleFrame.this.SetActiveObject(args[0], args[1]);
            }

            public int method9(int[] args) {
                return OleFrame.this.InsertMenus(args[0], args[1]);
            }

            public int method10(int[] args) {
                return OleFrame.this.SetMenu(args[0], args[1], args[2]);
            }

            public int method11(int[] args) {
                return OleFrame.this.RemoveMenus(args[0]);
            }

            public int method14(int[] args) {
                return OleFrame.this.TranslateAccelerator(args[0], args[1]);
            }
        };
    }

    private void disposeCOMInterfaces() {
        if (this.iUnknown != null) {
            this.iUnknown.dispose();
        }
        this.iUnknown = null;
        if (this.iOleInPlaceFrame != null) {
            this.iOleInPlaceFrame.dispose();
        }
        this.iOleInPlaceFrame = null;
    }

    private int GetBorder(int lprectBorder) {
        if (lprectBorder == 0) {
            return -2147024809;
        }
        RECT rectBorder = new RECT();
        OS.GetClientRect(this.handle, rectBorder);
        OS.MoveMemory(lprectBorder, rectBorder, RECT.sizeof);
        return 0;
    }

    public MenuItem[] getContainerMenus() {
        return this.containerMenuItems;
    }

    public MenuItem[] getFileMenus() {
        return this.fileMenuItems;
    }

    int getIOleInPlaceFrame() {
        return this.iOleInPlaceFrame.getAddress();
    }

    private int getMenuItemID(int hMenu, int index) {
        int id = 0;
        MENUITEMINFO lpmii = new MENUITEMINFO();
        lpmii.cbSize = MENUITEMINFO.sizeof;
        lpmii.fMask = 7;
        OS.GetMenuItemInfo(hMenu, index, true, lpmii);
        id = (lpmii.fState & 0x10) == 16 ? lpmii.hSubMenu : lpmii.wID;
        return id;
    }

    private int GetWindow(int phwnd) {
        if (phwnd != 0) {
            COM.MoveMemory(phwnd, new int[]{this.handle}, OS.PTR_SIZEOF);
        }
        return 0;
    }

    public MenuItem[] getWindowMenus() {
        return this.windowMenuItems;
    }

    private int InsertMenus(int hmenuShared, int lpMenuWidths) {
        Menu menubar = this.getShell().getMenuBar();
        if (menubar == null || menubar.isDisposed()) {
            COM.MoveMemory(lpMenuWidths, new int[1], 4);
            return 0;
        }
        int hMenu = menubar.handle;
        MENUITEMINFO lpmii = new MENUITEMINFO();
        int hHeap = OS.GetProcessHeap();
        int cch = 128;
        int byteCount = cch * TCHAR.sizeof;
        int pszText = OS.HeapAlloc(hHeap, 8, byteCount);
        lpmii.cbSize = MENUITEMINFO.sizeof;
        lpmii.fMask = 55;
        lpmii.dwTypeData = pszText;
        lpmii.cch = cch;
        int fileMenuCount = 0;
        int newindex = 0;
        if (this.fileMenuItems != null) {
            int i = 0;
            while (i < this.fileMenuItems.length) {
                MenuItem item = this.fileMenuItems[i];
                if (item != null) {
                    int index = item.getParent().indexOf(item);
                    lpmii.cch = cch;
                    if (OS.GetMenuItemInfo(hMenu, index, true, lpmii) && OS.InsertMenuItem(hmenuShared, newindex, true, lpmii)) {
                        ++fileMenuCount;
                        ++newindex;
                    }
                }
                ++i;
            }
        }
        COM.MoveMemory(lpMenuWidths, new int[]{fileMenuCount}, 4);
        int containerMenuCount = 0;
        if (this.containerMenuItems != null) {
            int i = 0;
            while (i < this.containerMenuItems.length) {
                MenuItem item = this.containerMenuItems[i];
                if (item != null) {
                    int index = item.getParent().indexOf(item);
                    lpmii.cch = cch;
                    if (OS.GetMenuItemInfo(hMenu, index, true, lpmii) && OS.InsertMenuItem(hmenuShared, newindex, true, lpmii)) {
                        ++containerMenuCount;
                        ++newindex;
                    }
                }
                ++i;
            }
        }
        COM.MoveMemory(lpMenuWidths + 8, new int[]{containerMenuCount}, 4);
        int windowMenuCount = 0;
        if (this.windowMenuItems != null) {
            int i = 0;
            while (i < this.windowMenuItems.length) {
                MenuItem item = this.windowMenuItems[i];
                if (item != null) {
                    int index = item.getParent().indexOf(item);
                    lpmii.cch = cch;
                    if (OS.GetMenuItemInfo(hMenu, index, true, lpmii) && OS.InsertMenuItem(hmenuShared, newindex, true, lpmii)) {
                        ++windowMenuCount;
                        ++newindex;
                    }
                }
                ++i;
            }
        }
        COM.MoveMemory(lpMenuWidths + 16, new int[]{windowMenuCount}, 4);
        if (pszText != 0) {
            OS.HeapFree(hHeap, 0, pszText);
        }
        return 0;
    }

    void onActivate(Event e) {
        if (this.objIOleInPlaceActiveObject != null) {
            this.objIOleInPlaceActiveObject.OnFrameWindowActivate(true);
        }
    }

    void onDeactivate(Event e) {
        if (this.objIOleInPlaceActiveObject != null) {
            this.objIOleInPlaceActiveObject.OnFrameWindowActivate(false);
        }
    }

    private void onDispose(Event e) {
        this.releaseObjectInterfaces();
        this.currentdoc = null;
        this.Release();
        this.removeListener(26, this.listener);
        this.removeListener(27, this.listener);
        this.removeListener(12, this.listener);
        this.removeListener(11, this.listener);
        this.removeListener(10, this.listener);
    }

    private void onResize(Event e) {
        if (this.objIOleInPlaceActiveObject != null) {
            RECT lpRect = new RECT();
            OS.GetClientRect(this.handle, lpRect);
            this.objIOleInPlaceActiveObject.ResizeBorder(lpRect, this.iOleInPlaceFrame.getAddress(), true);
        }
    }

    private int QueryInterface(int riid, int ppvObject) {
        if (riid == 0 || ppvObject == 0) {
            return -2147024809;
        }
        GUID guid = new GUID();
        COM.MoveMemory(guid, riid, GUID.sizeof);
        if (COM.IsEqualGUID(guid, COM.IIDIUnknown) || COM.IsEqualGUID(guid, COM.IIDIOleInPlaceFrame)) {
            COM.MoveMemory(ppvObject, new int[]{this.iOleInPlaceFrame.getAddress()}, OS.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        COM.MoveMemory(ppvObject, new int[1], OS.PTR_SIZEOF);
        return -2147467262;
    }

    int Release() {
        --this.refCount;
        if (this.refCount == 0) {
            this.disposeCOMInterfaces();
            if (COM.FreeUnusedLibraries) {
                COM.CoFreeUnusedLibraries();
            }
        }
        return this.refCount;
    }

    private void releaseObjectInterfaces() {
        if (this.objIOleInPlaceActiveObject != null) {
            this.objIOleInPlaceActiveObject.Release();
        }
        this.objIOleInPlaceActiveObject = null;
    }

    private int RemoveMenus(int hmenuShared) {
        int index;
        int id;
        int index2;
        MenuItem item;
        int i;
        Menu menubar = this.getShell().getMenuBar();
        if (menubar == null || menubar.isDisposed()) {
            return 1;
        }
        int hMenu = menubar.handle;
        Vector<LONG> ids = new Vector<LONG>();
        if (this.fileMenuItems != null) {
            i = 0;
            while (i < this.fileMenuItems.length) {
                item = this.fileMenuItems[i];
                if (item != null && !item.isDisposed()) {
                    index2 = item.getParent().indexOf(item);
                    id = this.getMenuItemID(hMenu, index2);
                    ids.addElement(new LONG(id));
                }
                ++i;
            }
        }
        if (this.containerMenuItems != null) {
            i = 0;
            while (i < this.containerMenuItems.length) {
                item = this.containerMenuItems[i];
                if (item != null && !item.isDisposed()) {
                    index2 = item.getParent().indexOf(item);
                    id = this.getMenuItemID(hMenu, index2);
                    ids.addElement(new LONG(id));
                }
                ++i;
            }
        }
        if (this.windowMenuItems != null) {
            i = 0;
            while (i < this.windowMenuItems.length) {
                item = this.windowMenuItems[i];
                if (item != null && !item.isDisposed()) {
                    index2 = item.getParent().indexOf(item);
                    id = this.getMenuItemID(hMenu, index2);
                    ids.addElement(new LONG(id));
                }
                ++i;
            }
        }
        int i2 = index = OS.GetMenuItemCount(hmenuShared) - 1;
        while (i2 >= 0) {
            int id2 = this.getMenuItemID(hmenuShared, i2);
            if (ids.contains(new LONG(id2))) {
                OS.RemoveMenu(hmenuShared, i2, 1024);
            }
            --i2;
        }
        return 0;
    }

    private int RequestBorderSpace(int pborderwidths) {
        return 0;
    }

    int SetActiveObject(int pActiveObject, int pszObjName) {
        if (this.objIOleInPlaceActiveObject != null) {
            this.objIOleInPlaceActiveObject.Release();
            this.objIOleInPlaceActiveObject = null;
        }
        if (pActiveObject != 0) {
            this.objIOleInPlaceActiveObject = new IOleInPlaceActiveObject(pActiveObject);
            this.objIOleInPlaceActiveObject.AddRef();
        }
        return 0;
    }

    private int SetBorderSpace(int pborderwidths) {
        if (this.objIOleInPlaceActiveObject == null) {
            return 0;
        }
        RECT borderwidth = new RECT();
        if (pborderwidths == 0 || this.currentdoc == null) {
            return 0;
        }
        COM.MoveMemory(borderwidth, pborderwidths, RECT.sizeof);
        this.currentdoc.setBorderSpace(borderwidth);
        return 0;
    }

    public void setContainerMenus(MenuItem[] containerMenus) {
        this.containerMenuItems = containerMenus;
    }

    OleClientSite getCurrentDocument() {
        return this.currentdoc;
    }

    void setCurrentDocument(OleClientSite doc) {
        this.currentdoc = doc;
        if (this.currentdoc != null && this.objIOleInPlaceActiveObject != null) {
            RECT lpRect = new RECT();
            OS.GetClientRect(this.handle, lpRect);
            this.objIOleInPlaceActiveObject.ResizeBorder(lpRect, this.iOleInPlaceFrame.getAddress(), true);
        }
    }

    public void setFileMenus(MenuItem[] fileMenus) {
        this.fileMenuItems = fileMenus;
    }

    private int SetMenu(int hmenuShared, int holemenu, int hwndActiveObject) {
        Menu menubar;
        int inPlaceActiveObject = 0;
        if (this.objIOleInPlaceActiveObject != null) {
            inPlaceActiveObject = this.objIOleInPlaceActiveObject.getAddress();
        }
        if ((menubar = this.getShell().getMenuBar()) == null || menubar.isDisposed()) {
            return COM.OleSetMenuDescriptor(0, this.getShell().handle, hwndActiveObject, this.iOleInPlaceFrame.getAddress(), inPlaceActiveObject);
        }
        int handle = menubar.getShell().handle;
        if (hmenuShared == 0 && holemenu == 0) {
            hmenuShared = menubar.handle;
        }
        if (hmenuShared == 0) {
            return -2147467259;
        }
        OS.SetMenu(handle, hmenuShared);
        OS.DrawMenuBar(handle);
        return COM.OleSetMenuDescriptor(holemenu, handle, hwndActiveObject, this.iOleInPlaceFrame.getAddress(), inPlaceActiveObject);
    }

    public void setWindowMenus(MenuItem[] windowMenus) {
        this.windowMenuItems = windowMenus;
    }

    private boolean translateOleAccelerator(MSG msg) {
        if (this.objIOleInPlaceActiveObject == null) {
            return false;
        }
        int result = this.objIOleInPlaceActiveObject.TranslateAccelerator(msg);
        return result != 1 && result != -2147467263;
    }

    private int TranslateAccelerator(int lpmsg, int wID) {
        Menu menubar = this.getShell().getMenuBar();
        if (menubar == null || menubar.isDisposed() || !menubar.isEnabled()) {
            return 1;
        }
        if (wID < 0) {
            return 1;
        }
        Shell shell = menubar.getShell();
        int hwnd = shell.handle;
        int hAccel = OS.SendMessage(hwnd, 32769, 0, 0);
        if (hAccel == 0) {
            return 1;
        }
        MSG msg = new MSG();
        OS.MoveMemory(msg, lpmsg, MSG.sizeof);
        int result = OS.TranslateAccelerator(hwnd, hAccel, msg);
        return result == 0 ? 1 : 0;
    }
}

