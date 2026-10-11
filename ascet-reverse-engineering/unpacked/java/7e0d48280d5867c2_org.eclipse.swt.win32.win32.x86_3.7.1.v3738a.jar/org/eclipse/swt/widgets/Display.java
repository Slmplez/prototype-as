/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.DeviceData;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.GCData;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.Resource;
import org.eclipse.swt.internal.Callback;
import org.eclipse.swt.internal.ImageList;
import org.eclipse.swt.internal.Library;
import org.eclipse.swt.internal.win32.BITMAP;
import org.eclipse.swt.internal.win32.BITMAPINFOHEADER;
import org.eclipse.swt.internal.win32.HIGHCONTRAST;
import org.eclipse.swt.internal.win32.ICONINFO;
import org.eclipse.swt.internal.win32.INPUT;
import org.eclipse.swt.internal.win32.KEYBDINPUT;
import org.eclipse.swt.internal.win32.LOGFONT;
import org.eclipse.swt.internal.win32.LOGFONTA;
import org.eclipse.swt.internal.win32.LOGFONTW;
import org.eclipse.swt.internal.win32.MONITORINFO;
import org.eclipse.swt.internal.win32.MOUSEINPUT;
import org.eclipse.swt.internal.win32.MSG;
import org.eclipse.swt.internal.win32.NMHDR;
import org.eclipse.swt.internal.win32.NMLVDISPINFO;
import org.eclipse.swt.internal.win32.NONCLIENTMETRICS;
import org.eclipse.swt.internal.win32.NONCLIENTMETRICSA;
import org.eclipse.swt.internal.win32.NONCLIENTMETRICSW;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.POINT;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.STARTUPINFO;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.internal.win32.WNDCLASS;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Dialog;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.EventTable;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.Monitor;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Synchronizer;
import org.eclipse.swt.widgets.TaskBar;
import org.eclipse.swt.widgets.TaskItem;
import org.eclipse.swt.widgets.TouchSource;
import org.eclipse.swt.widgets.Tray;
import org.eclipse.swt.widgets.TrayItem;
import org.eclipse.swt.widgets.Widget;

public class Display
extends Device {
    public MSG msg = new MSG();
    static String APP_NAME = "SWT";
    static String APP_VERSION = "";
    Event[] eventQueue;
    Callback windowCallback;
    int windowProc;
    int threadId;
    TCHAR windowClass;
    TCHAR windowShadowClass;
    TCHAR windowOwnDCClass;
    static int WindowClassCount;
    static final String WindowName = "SWT_Window";
    static final String WindowShadowName = "SWT_WindowShadow";
    static final String WindowOwnDCName = "SWT_WindowOwnDC";
    EventTable eventTable;
    EventTable filterTable;
    boolean useOwnDC;
    int freeSlot;
    int[] indexTable;
    Control lastControl;
    Control lastGetControl;
    int lastHwnd;
    int lastGetHwnd;
    Control[] controlTable;
    static final int GROW_SIZE = 1024;
    static final int SWT_OBJECT_INDEX;
    static final boolean USE_PROPERTY;
    static STARTUPINFO lpStartupInfo;
    int hButtonTheme;
    int hEditTheme;
    int hExplorerBarTheme;
    int hScrollBarTheme;
    int hTabTheme;
    static final char[] BUTTON;
    static final char[] EDIT;
    static final char[] EXPLORER;
    static final char[] EXPLORERBAR;
    static final char[] SCROLLBAR;
    static final char[] LISTVIEW;
    static final char[] TAB;
    static final char[] TREEVIEW;
    int focusEvent;
    Control focusControl;
    boolean fixFocus;
    Menu[] bars;
    Menu[] popups;
    MenuItem[] items;
    static final int ID_START = 108;
    Callback msgFilterCallback;
    int msgFilterProc;
    int filterHook;
    MSG hookMsg = new MSG();
    boolean runDragDrop = true;
    boolean dragCancelled = false;
    Callback foregroundIdleCallback;
    int foregroundIdleProc;
    int idleHook;
    boolean ignoreNextKey;
    Callback getMsgCallback;
    Callback embeddedCallback;
    int getMsgProc;
    int msgHook;
    int embeddedHwnd;
    int embeddedProc;
    static final String AWT_WINDOW_CLASS = "SunAwtWindow";
    static final short[] ACCENTS;
    Synchronizer synchronizer = new Synchronizer(this);
    boolean runMessages = true;
    boolean runMessagesInIdle = false;
    boolean runMessagesInMessageProc = true;
    static final String RUN_MESSAGES_IN_IDLE_KEY = "org.eclipse.swt.internal.win32.runMessagesInIdle";
    static final String RUN_MESSAGES_IN_MESSAGE_PROC_KEY = "org.eclipse.swt.internal.win32.runMessagesInMessageProc";
    static final String USE_OWNDC_KEY = "org.eclipse.swt.internal.win32.useOwnDC";
    static final String ACCEL_KEY_HIT = "org.eclipse.swt.internal.win32.accelKeyHit";
    Thread thread;
    Runnable[] disposeList;
    Composite[] layoutDeferred;
    int layoutDeferredCount;
    Tray tray;
    int nextTrayId;
    TaskBar taskBar;
    static final String TASKBAR_EVENT = "/SWTINTERNAL_ID";
    static final String LAUNCHER_PREFIX = "--launcher.openFile ";
    int[] timerIds;
    Runnable[] timerList;
    int nextTimerId = 101;
    static final int SETTINGS_ID = 100;
    static final int SETTINGS_DELAY = 2000;
    boolean lastHighContrast;
    boolean sendSettings;
    RECT clickRect;
    int clickCount;
    int lastTime;
    int lastButton;
    int lastClickHwnd;
    int scrollRemainder;
    int scrollHRemainder;
    int lastKey;
    int lastMouse;
    int lastAscii;
    boolean lastVirtual;
    boolean lastNull;
    boolean lastDead;
    byte[] keyboard = new byte[256];
    boolean accelKeyHit;
    boolean mnemonicKeyHit;
    boolean lockActiveWindow;
    boolean captureChanged;
    boolean xMouse;
    double magStartDistance;
    double lastDistance;
    double rotationAngle;
    int lastX;
    int lastY;
    TouchSource[] touchSources;
    int nextToolTipId;
    boolean ignoreRestoreFocus;
    Control lastHittestControl;
    int lastHittest;
    Callback messageCallback;
    int hwndMessage;
    int messageProc;
    LOGFONT lfSystemFont;
    Font systemFont;
    Image errorImage;
    Image infoImage;
    Image questionImage;
    Image warningIcon;
    Cursor[] cursors = new Cursor[22];
    Resource[] resources;
    static final int RESOURCE_SIZE = 27;
    ImageList[] imageList;
    ImageList[] toolImageList;
    ImageList[] toolHotImageList;
    ImageList[] toolDisabledImageList;
    int lpCustColors;
    Image upArrow;
    Image downArrow;
    char[] tableBuffer;
    NMHDR hdr = new NMHDR();
    NMLVDISPINFO plvfi = new NMLVDISPINFO();
    int hwndParent;
    int columnCount;
    boolean[] columnVisible;
    int resizeCount;
    static final int RESIZE_LIMIT = 4;
    Object data;
    String[] keys;
    Object[] values;
    static final int[][] KeyTable;
    static Display Default;
    static Display[] Displays;
    Monitor[] monitors = null;
    int monitorCount = 0;
    Shell[] modalShells;
    Dialog modalDialog;
    static boolean TrimEnabled;
    static final int SWT_GETACCELCOUNT = 32768;
    static final int SWT_GETACCEL = 32769;
    static final int SWT_KEYMSG = 32770;
    static final int SWT_DESTROY = 32771;
    static final int SWT_TRAYICONMSG = 32772;
    static final int SWT_NULL = 32773;
    static final int SWT_RUNASYNC = 32774;
    static int TASKBARCREATED;
    static int TASKBARBUTTONCREATED;
    static int SWT_RESTORECARET;
    static int DI_GETDRAGIMAGE;
    static int SWT_OPENDOC;
    int hitCount;
    Widget[] skinList = new Widget[1024];
    int skinCount;
    static final String PACKAGE_PREFIX = "org.eclipse.swt.widgets.";
    static /* synthetic */ Class class$0;

    static {
        USE_PROPERTY = !OS.IsWinCE;
        SWT_OBJECT_INDEX = USE_PROPERTY ? OS.GlobalAddAtom(new TCHAR(0, "SWT_OBJECT_INDEX", true)) : 0;
        if (!OS.IsWinCE) {
            lpStartupInfo = new STARTUPINFO();
            Display.lpStartupInfo.cb = STARTUPINFO.sizeof;
            OS.GetStartupInfo(lpStartupInfo);
        }
        char[] cArray = new char[7];
        cArray[0] = 66;
        cArray[1] = 85;
        cArray[2] = 84;
        cArray[3] = 84;
        cArray[4] = 79;
        cArray[5] = 78;
        BUTTON = cArray;
        char[] cArray2 = new char[5];
        cArray2[0] = 69;
        cArray2[1] = 68;
        cArray2[2] = 73;
        cArray2[3] = 84;
        EDIT = cArray2;
        char[] cArray3 = new char[9];
        cArray3[0] = 69;
        cArray3[1] = 88;
        cArray3[2] = 80;
        cArray3[3] = 76;
        cArray3[4] = 79;
        cArray3[5] = 82;
        cArray3[6] = 69;
        cArray3[7] = 82;
        EXPLORER = cArray3;
        char[] cArray4 = new char[12];
        cArray4[0] = 69;
        cArray4[1] = 88;
        cArray4[2] = 80;
        cArray4[3] = 76;
        cArray4[4] = 79;
        cArray4[5] = 82;
        cArray4[6] = 69;
        cArray4[7] = 82;
        cArray4[8] = 66;
        cArray4[9] = 65;
        cArray4[10] = 82;
        EXPLORERBAR = cArray4;
        char[] cArray5 = new char[10];
        cArray5[0] = 83;
        cArray5[1] = 67;
        cArray5[2] = 82;
        cArray5[3] = 79;
        cArray5[4] = 76;
        cArray5[5] = 76;
        cArray5[6] = 66;
        cArray5[7] = 65;
        cArray5[8] = 82;
        SCROLLBAR = cArray5;
        char[] cArray6 = new char[9];
        cArray6[0] = 76;
        cArray6[1] = 73;
        cArray6[2] = 83;
        cArray6[3] = 84;
        cArray6[4] = 86;
        cArray6[5] = 73;
        cArray6[6] = 69;
        cArray6[7] = 87;
        LISTVIEW = cArray6;
        char[] cArray7 = new char[4];
        cArray7[0] = 84;
        cArray7[1] = 65;
        cArray7[2] = 66;
        TAB = cArray7;
        char[] cArray8 = new char[9];
        cArray8[0] = 84;
        cArray8[1] = 82;
        cArray8[2] = 69;
        cArray8[3] = 69;
        cArray8[4] = 86;
        cArray8[5] = 73;
        cArray8[6] = 69;
        cArray8[7] = 87;
        TREEVIEW = cArray8;
        ACCENTS = new short[]{126, 96, 39, 94, 34};
        KeyTable = new int[][]{{18, 65536}, {16, 131072}, {17, 262144}, {38, 0x1000001}, {40, 0x1000002}, {37, 0x1000003}, {39, 0x1000004}, {33, 0x1000005}, {34, 0x1000006}, {36, 0x1000007}, {35, 0x1000008}, {45, 0x1000009}, {8, 8}, {13, 13}, {46, 127}, {27, 27}, {13, 10}, {9, 9}, {112, 0x100000A}, {113, 0x100000B}, {114, 0x100000C}, {115, 0x100000D}, {116, 0x100000E}, {117, 0x100000F}, {118, 0x1000010}, {119, 0x1000011}, {120, 0x1000012}, {121, 0x1000013}, {122, 0x1000014}, {123, 0x1000015}, {124, 0x1000016}, {125, 0x1000017}, {126, 0x1000018}, {127, 0x1000019}, {128, 0x100001A}, {129, 0x100001B}, {130, 0x100001C}, {131, 0x100001D}, {106, 16777258}, {107, 16777259}, {13, 0x1000050}, {109, 16777261}, {110, 16777262}, {111, 16777263}, {96, 0x1000030}, {97, 0x1000031}, {98, 16777266}, {99, 0x1000033}, {100, 16777268}, {101, 16777269}, {102, 16777270}, {103, 16777271}, {104, 16777272}, {105, 16777273}, {20, 16777298}, {144, 16777299}, {145, 16777300}, {19, 0x1000055}, {3, 16777302}, {44, 16777303}};
        Displays = new Display[4];
        TrimEnabled = false;
        DeviceFinder = new Runnable(){

            public void run() {
                Display device = Display.getCurrent();
                if (device == null) {
                    device = Display.getDefault();
                }
                Display.setDevice(device);
            }
        };
    }

    static void setDevice(Device device) {
        CurrentDevice = device;
    }

    public Display() {
        this(null);
    }

    public Display(DeviceData data) {
        super(data);
    }

    Control _getFocusControl() {
        return this.findControl(OS.GetFocus());
    }

    void addBar(Menu menu) {
        if (this.bars == null) {
            this.bars = new Menu[4];
        }
        int length = this.bars.length;
        int i = 0;
        while (i < length) {
            if (this.bars[i] == menu) {
                return;
            }
            ++i;
        }
        int index = 0;
        while (index < length) {
            if (this.bars[index] == null) break;
            ++index;
        }
        if (index == length) {
            Menu[] newBars = new Menu[length + 4];
            System.arraycopy(this.bars, 0, newBars, 0, length);
            this.bars = newBars;
        }
        this.bars[index] = menu;
    }

    void addControl(int handle, Control control) {
        if (handle == 0) {
            return;
        }
        if (this.freeSlot == -1) {
            this.freeSlot = this.indexTable.length;
            int length = this.freeSlot + 1024;
            int[] newIndexTable = new int[length];
            Control[] newControlTable = new Control[length];
            System.arraycopy(this.indexTable, 0, newIndexTable, 0, this.freeSlot);
            System.arraycopy(this.controlTable, 0, newControlTable, 0, this.freeSlot);
            int i = this.freeSlot;
            while (i < length - 1) {
                newIndexTable[i] = i + 1;
                ++i;
            }
            newIndexTable[length - 1] = -1;
            this.indexTable = newIndexTable;
            this.controlTable = newControlTable;
        }
        if (USE_PROPERTY) {
            OS.SetProp(handle, SWT_OBJECT_INDEX, this.freeSlot + 1);
        } else {
            OS.SetWindowLongPtr(handle, -21, this.freeSlot + 1);
        }
        int oldSlot = this.freeSlot;
        this.freeSlot = this.indexTable[oldSlot];
        this.indexTable[oldSlot] = -2;
        this.controlTable[oldSlot] = control;
    }

    void addSkinnableWidget(Widget widget) {
        if (this.skinCount >= this.skinList.length) {
            Widget[] newSkinWidgets = new Widget[this.skinList.length + 1024];
            System.arraycopy(this.skinList, 0, newSkinWidgets, 0, this.skinList.length);
            this.skinList = newSkinWidgets;
        }
        this.skinList[this.skinCount++] = widget;
    }

    public void addFilter(int eventType, Listener listener) {
        this.checkDevice();
        if (listener == null) {
            this.error(4);
        }
        if (this.filterTable == null) {
            this.filterTable = new EventTable();
        }
        this.filterTable.hook(eventType, listener);
    }

    void addLayoutDeferred(Composite comp) {
        if (this.layoutDeferred == null) {
            this.layoutDeferred = new Composite[64];
        }
        if (this.layoutDeferredCount == this.layoutDeferred.length) {
            Composite[] temp = new Composite[this.layoutDeferred.length + 64];
            System.arraycopy(this.layoutDeferred, 0, temp, 0, this.layoutDeferred.length);
            this.layoutDeferred = temp;
        }
        this.layoutDeferred[this.layoutDeferredCount++] = comp;
    }

    public void addListener(int eventType, Listener listener) {
        this.checkDevice();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            this.eventTable = new EventTable();
        }
        this.eventTable.hook(eventType, listener);
    }

    void addMenuItem(MenuItem item) {
        if (this.items == null) {
            this.items = new MenuItem[64];
        }
        int i = 0;
        while (i < this.items.length) {
            if (this.items[i] == null) {
                item.id = i + 108;
                this.items[i] = item;
                return;
            }
            ++i;
        }
        item.id = this.items.length + 108;
        MenuItem[] newItems = new MenuItem[this.items.length + 64];
        newItems[this.items.length] = item;
        System.arraycopy(this.items, 0, newItems, 0, this.items.length);
        this.items = newItems;
    }

    void addPopup(Menu menu) {
        if (this.popups == null) {
            this.popups = new Menu[4];
        }
        int length = this.popups.length;
        int i = 0;
        while (i < length) {
            if (this.popups[i] == menu) {
                return;
            }
            ++i;
        }
        int index = 0;
        while (index < length) {
            if (this.popups[index] == null) break;
            ++index;
        }
        if (index == length) {
            Menu[] newPopups = new Menu[length + 4];
            System.arraycopy(this.popups, 0, newPopups, 0, length);
            this.popups = newPopups;
        }
        this.popups[index] = menu;
    }

    int asciiKey(int key) {
        if (OS.IsWinCE) {
            return 0;
        }
        int i = 0;
        while (i < this.keyboard.length) {
            this.keyboard[i] = 0;
            ++i;
        }
        if (!OS.GetKeyboardState(this.keyboard)) {
            return 0;
        }
        if (OS.IsUnicode) {
            char[] result = new char[1];
            if (OS.ToUnicode(key, key, this.keyboard, result, 1, 0) == 1) {
                return result[0];
            }
        } else {
            short[] result = new short[1];
            if (OS.ToAscii(key, key, this.keyboard, result, 0) == 1) {
                return result[0];
            }
        }
        return 0;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void asyncExec(Runnable runnable) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.swt.graphics.Device");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Class<?> clazz2 = clazz;
        synchronized (clazz) {
            if (this.isDisposed()) {
                this.error(45);
            }
            this.synchronizer.asyncExec(runnable);
            // ** MonitorExit[var2_2] (shouldn't be in output)
            return;
        }
    }

    public void beep() {
        this.checkDevice();
        OS.MessageBeep(0);
    }

    protected void checkSubclass() {
        if (!Display.isValidClass(this.getClass())) {
            this.error(43);
        }
    }

    protected void checkDevice() {
        if (this.thread == null) {
            this.error(24);
        }
        if (this.thread != Thread.currentThread() && this.threadId != OS.GetCurrentThreadId()) {
            this.error(22);
        }
        if (this.isDisposed()) {
            this.error(45);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    static void checkDisplay(Thread thread, boolean multiple) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.swt.graphics.Device");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Class<?> clazz2 = clazz;
        synchronized (clazz) {
            int i = 0;
            while (i < Displays.length) {
                if (Displays[i] != null) {
                    if (!multiple) {
                        SWT.error(20, null, " [multiple displays]");
                    }
                    if (Display.Displays[i].thread == thread) {
                        SWT.error(22);
                    }
                }
                ++i;
            }
            // ** MonitorExit[var2_2] (shouldn't be in output)
            return;
        }
    }

    void clearModal(Shell shell) {
        if (this.modalShells == null) {
            return;
        }
        int index = 0;
        int length = this.modalShells.length;
        while (index < length) {
            if (this.modalShells[index] == shell) break;
            if (this.modalShells[index] == null) {
                return;
            }
            ++index;
        }
        if (index == length) {
            return;
        }
        System.arraycopy(this.modalShells, index + 1, this.modalShells, index, --length - index);
        this.modalShells[length] = null;
        if (index == 0 && this.modalShells[0] == null) {
            this.modalShells = null;
        }
        Shell[] shells = this.getShells();
        int i = 0;
        while (i < shells.length) {
            shells[i].updateModal();
            ++i;
        }
    }

    int controlKey(int key) {
        int upper = OS.CharUpper((short)key);
        if (64 <= upper && upper <= 95) {
            return upper & 0xBF;
        }
        return key;
    }

    public void close() {
        this.checkDevice();
        Event event = new Event();
        this.sendEvent(21, event);
        if (event.doit) {
            this.dispose();
        }
    }

    protected void create(DeviceData data) {
        this.checkSubclass();
        this.thread = Thread.currentThread();
        Display.checkDisplay(this.thread, true);
        this.createDisplay(data);
        Display.register(this);
        if (Default == null) {
            Default = this;
        }
    }

    void createDisplay(DeviceData data) {
    }

    static int create32bitDIB(Image image) {
        int transparentPixel = -1;
        int alpha = -1;
        int hMask = 0;
        int hBitmap = 0;
        byte[] alphaData = null;
        switch (image.type) {
            case 1: {
                ICONINFO info = new ICONINFO();
                OS.GetIconInfo(image.handle, info);
                hBitmap = info.hbmColor;
                hMask = info.hbmMask;
                break;
            }
            case 0: {
                ImageData data = image.getImageData();
                hBitmap = image.handle;
                alpha = data.alpha;
                alphaData = data.alphaData;
                transparentPixel = data.transparentPixel;
            }
        }
        BITMAP bm = new BITMAP();
        OS.GetObject(hBitmap, BITMAP.sizeof, bm);
        int imgWidth = bm.bmWidth;
        int imgHeight = bm.bmHeight;
        int hDC = OS.GetDC(0);
        int srcHdc = OS.CreateCompatibleDC(hDC);
        int oldSrcBitmap = OS.SelectObject(srcHdc, hBitmap);
        int memHdc = OS.CreateCompatibleDC(hDC);
        BITMAPINFOHEADER bmiHeader = new BITMAPINFOHEADER();
        bmiHeader.biSize = BITMAPINFOHEADER.sizeof;
        bmiHeader.biWidth = imgWidth;
        bmiHeader.biHeight = -imgHeight;
        bmiHeader.biPlanes = 1;
        bmiHeader.biBitCount = (short)32;
        bmiHeader.biCompression = 0;
        byte[] bmi = new byte[BITMAPINFOHEADER.sizeof];
        OS.MoveMemory(bmi, bmiHeader, BITMAPINFOHEADER.sizeof);
        int[] pBits = new int[1];
        int memDib = OS.CreateDIBSection(0, bmi, 0, pBits, 0, 0);
        if (memDib == 0) {
            SWT.error(2);
        }
        int oldMemBitmap = OS.SelectObject(memHdc, memDib);
        BITMAP dibBM = new BITMAP();
        OS.GetObject(memDib, BITMAP.sizeof, dibBM);
        int sizeInBytes = dibBM.bmWidthBytes * dibBM.bmHeight;
        OS.BitBlt(memHdc, 0, 0, imgWidth, imgHeight, srcHdc, 0, 0, 0xCC0020);
        byte red = 0;
        byte green = 0;
        byte blue = 0;
        if (transparentPixel != -1) {
            if (bm.bmBitsPixel <= 8) {
                byte[] color = new byte[4];
                OS.GetDIBColorTable(srcHdc, transparentPixel, 1, color);
                blue = color[0];
                green = color[1];
                red = color[2];
            } else {
                switch (bm.bmBitsPixel) {
                    case 16: {
                        blue = (byte)((transparentPixel & 0x1F) << 3);
                        green = (byte)((transparentPixel & 0x3E0) >> 2);
                        red = (byte)((transparentPixel & 0x7C00) >> 7);
                        break;
                    }
                    case 24: {
                        blue = (byte)((transparentPixel & 0xFF0000) >> 16);
                        green = (byte)((transparentPixel & 0xFF00) >> 8);
                        red = (byte)(transparentPixel & 0xFF);
                        break;
                    }
                    case 32: {
                        blue = (byte)((transparentPixel & 0xFF000000) >>> 24);
                        green = (byte)((transparentPixel & 0xFF0000) >> 16);
                        red = (byte)((transparentPixel & 0xFF00) >> 8);
                    }
                }
            }
        }
        byte[] srcData = new byte[sizeInBytes];
        OS.MoveMemory(srcData, pBits[0], sizeInBytes);
        if (hMask != 0) {
            OS.SelectObject(srcHdc, hMask);
            int y = 0;
            int dp = 0;
            while (y < imgHeight) {
                int x = 0;
                while (x < imgWidth) {
                    if (OS.GetPixel(srcHdc, x, y) != 0) {
                        srcData[dp + 3] = 0;
                        srcData[dp + 2] = 0;
                        srcData[dp + 1] = 0;
                        srcData[dp + 0] = 0;
                    } else {
                        srcData[dp + 3] = -1;
                    }
                    dp += 4;
                    ++x;
                }
                ++y;
            }
        } else if (alpha != -1) {
            int y = 0;
            int dp = 0;
            while (y < imgHeight) {
                int x = 0;
                while (x < imgWidth) {
                    int r = (srcData[dp + 0] & 0xFF) * alpha + 128;
                    r = r + (r >> 8) >> 8;
                    int g = (srcData[dp + 1] & 0xFF) * alpha + 128;
                    g = g + (g >> 8) >> 8;
                    int b = (srcData[dp + 2] & 0xFF) * alpha + 128;
                    b = b + (b >> 8) >> 8;
                    srcData[dp + 0] = (byte)r;
                    srcData[dp + 1] = (byte)g;
                    srcData[dp + 2] = (byte)b;
                    srcData[dp + 3] = (byte)alpha;
                    dp += 4;
                    ++x;
                }
                ++y;
            }
        } else if (alphaData != null) {
            int y = 0;
            int dp = 0;
            int ap = 0;
            while (y < imgHeight) {
                int x = 0;
                while (x < imgWidth) {
                    int a = alphaData[ap++] & 0xFF;
                    int r = (srcData[dp + 0] & 0xFF) * a + 128;
                    r = r + (r >> 8) >> 8;
                    int g = (srcData[dp + 1] & 0xFF) * a + 128;
                    g = g + (g >> 8) >> 8;
                    int b = (srcData[dp + 2] & 0xFF) * a + 128;
                    b = b + (b >> 8) >> 8;
                    srcData[dp + 0] = (byte)r;
                    srcData[dp + 1] = (byte)g;
                    srcData[dp + 2] = (byte)b;
                    srcData[dp + 3] = (byte)a;
                    dp += 4;
                    ++x;
                }
                ++y;
            }
        } else if (transparentPixel != -1) {
            int y = 0;
            int dp = 0;
            while (y < imgHeight) {
                int x = 0;
                while (x < imgWidth) {
                    if (srcData[dp] == blue && srcData[dp + 1] == green && srcData[dp + 2] == red) {
                        srcData[dp + 3] = 0;
                        srcData[dp + 2] = 0;
                        srcData[dp + 1] = 0;
                        srcData[dp + 0] = 0;
                    } else {
                        srcData[dp + 3] = -1;
                    }
                    dp += 4;
                    ++x;
                }
                ++y;
            }
        } else {
            int y = 0;
            int dp = 0;
            while (y < imgHeight) {
                int x = 0;
                while (x < imgWidth) {
                    srcData[dp + 3] = -1;
                    dp += 4;
                    ++x;
                }
                ++y;
            }
        }
        OS.MoveMemory(pBits[0], srcData, sizeInBytes);
        OS.SelectObject(srcHdc, oldSrcBitmap);
        OS.SelectObject(memHdc, oldMemBitmap);
        OS.DeleteObject(srcHdc);
        OS.DeleteObject(memHdc);
        OS.ReleaseDC(0, hDC);
        if (hBitmap != image.handle && hBitmap != 0) {
            OS.DeleteObject(hBitmap);
        }
        if (hMask != 0) {
            OS.DeleteObject(hMask);
        }
        return memDib;
    }

    static int create32bitDIB(int hBitmap, int alpha, byte[] alphaData, int transparentPixel) {
        BITMAP bm = new BITMAP();
        OS.GetObject(hBitmap, BITMAP.sizeof, bm);
        int imgWidth = bm.bmWidth;
        int imgHeight = bm.bmHeight;
        int hDC = OS.GetDC(0);
        int srcHdc = OS.CreateCompatibleDC(hDC);
        int oldSrcBitmap = OS.SelectObject(srcHdc, hBitmap);
        int memHdc = OS.CreateCompatibleDC(hDC);
        BITMAPINFOHEADER bmiHeader = new BITMAPINFOHEADER();
        bmiHeader.biSize = BITMAPINFOHEADER.sizeof;
        bmiHeader.biWidth = imgWidth;
        bmiHeader.biHeight = -imgHeight;
        bmiHeader.biPlanes = 1;
        bmiHeader.biBitCount = (short)32;
        bmiHeader.biCompression = 0;
        byte[] bmi = new byte[BITMAPINFOHEADER.sizeof];
        OS.MoveMemory(bmi, bmiHeader, BITMAPINFOHEADER.sizeof);
        int[] pBits = new int[1];
        int memDib = OS.CreateDIBSection(0, bmi, 0, pBits, 0, 0);
        if (memDib == 0) {
            SWT.error(2);
        }
        int oldMemBitmap = OS.SelectObject(memHdc, memDib);
        BITMAP dibBM = new BITMAP();
        OS.GetObject(memDib, BITMAP.sizeof, dibBM);
        int sizeInBytes = dibBM.bmWidthBytes * dibBM.bmHeight;
        OS.BitBlt(memHdc, 0, 0, imgWidth, imgHeight, srcHdc, 0, 0, 0xCC0020);
        byte red = 0;
        byte green = 0;
        byte blue = 0;
        if (transparentPixel != -1) {
            if (bm.bmBitsPixel <= 8) {
                byte[] color = new byte[4];
                OS.GetDIBColorTable(srcHdc, transparentPixel, 1, color);
                blue = color[0];
                green = color[1];
                red = color[2];
            } else {
                switch (bm.bmBitsPixel) {
                    case 16: {
                        blue = (byte)((transparentPixel & 0x1F) << 3);
                        green = (byte)((transparentPixel & 0x3E0) >> 2);
                        red = (byte)((transparentPixel & 0x7C00) >> 7);
                        break;
                    }
                    case 24: {
                        blue = (byte)((transparentPixel & 0xFF0000) >> 16);
                        green = (byte)((transparentPixel & 0xFF00) >> 8);
                        red = (byte)(transparentPixel & 0xFF);
                        break;
                    }
                    case 32: {
                        blue = (byte)((transparentPixel & 0xFF000000) >>> 24);
                        green = (byte)((transparentPixel & 0xFF0000) >> 16);
                        red = (byte)((transparentPixel & 0xFF00) >> 8);
                    }
                }
            }
        }
        OS.SelectObject(srcHdc, oldSrcBitmap);
        OS.SelectObject(memHdc, oldMemBitmap);
        OS.DeleteObject(srcHdc);
        OS.DeleteObject(memHdc);
        OS.ReleaseDC(0, hDC);
        byte[] srcData = new byte[sizeInBytes];
        OS.MoveMemory(srcData, pBits[0], sizeInBytes);
        if (alpha != -1) {
            int y = 0;
            int dp = 0;
            while (y < imgHeight) {
                int x = 0;
                while (x < imgWidth) {
                    srcData[dp + 3] = (byte)alpha;
                    dp += 4;
                    ++x;
                }
                ++y;
            }
        } else if (alphaData != null) {
            int y = 0;
            int dp = 0;
            int ap = 0;
            while (y < imgHeight) {
                int x = 0;
                while (x < imgWidth) {
                    srcData[dp + 3] = alphaData[ap++];
                    dp += 4;
                    ++x;
                }
                ++y;
            }
        } else if (transparentPixel != -1) {
            int y = 0;
            int dp = 0;
            while (y < imgHeight) {
                int x = 0;
                while (x < imgWidth) {
                    srcData[dp + 3] = srcData[dp] == blue && srcData[dp + 1] == green && srcData[dp + 2] == red ? 0 : -1;
                    dp += 4;
                    ++x;
                }
                ++y;
            }
        }
        OS.MoveMemory(pBits[0], srcData, sizeInBytes);
        return memDib;
    }

    static Image createIcon(Image image) {
        int oldDstBitmap;
        int hMask;
        int hBitmap;
        Device device = image.getDevice();
        ImageData data = image.getImageData();
        if (data.alpha == -1 && data.alphaData == null) {
            ImageData mask = data.getTransparencyMask();
            return new Image(device, data, mask);
        }
        int width = data.width;
        int height = data.height;
        int hDC = device.internal_new_GC(null);
        int dstHdc = OS.CreateCompatibleDC(hDC);
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(5, 1)) {
            hBitmap = Display.create32bitDIB(image.handle, data.alpha, data.alphaData, data.transparentPixel);
            hMask = OS.CreateBitmap(width, height, 1, 1, null);
            oldDstBitmap = OS.SelectObject(dstHdc, hMask);
            OS.PatBlt(dstHdc, 0, 0, width, height, 66);
        } else {
            hMask = Display.createMaskFromAlpha(data, width, height);
            hBitmap = OS.CreateCompatibleBitmap(hDC, width, height);
            oldDstBitmap = OS.SelectObject(dstHdc, hBitmap);
            int srcHdc = OS.CreateCompatibleDC(hDC);
            int oldSrcBitmap = OS.SelectObject(srcHdc, image.handle);
            OS.PatBlt(dstHdc, 0, 0, width, height, 66);
            OS.BitBlt(dstHdc, 0, 0, width, height, srcHdc, 0, 0, 0x660046);
            OS.SelectObject(srcHdc, hMask);
            OS.BitBlt(dstHdc, 0, 0, width, height, srcHdc, 0, 0, 8913094);
            OS.SelectObject(srcHdc, image.handle);
            OS.BitBlt(dstHdc, 0, 0, width, height, srcHdc, 0, 0, 0x660046);
            OS.SelectObject(srcHdc, oldSrcBitmap);
            OS.DeleteDC(srcHdc);
        }
        OS.SelectObject(dstHdc, oldDstBitmap);
        OS.DeleteDC(dstHdc);
        device.internal_dispose_GC(hDC, null);
        ICONINFO info = new ICONINFO();
        info.fIcon = true;
        info.hbmColor = hBitmap;
        info.hbmMask = hMask;
        int hIcon = OS.CreateIconIndirect(info);
        if (hIcon == 0) {
            SWT.error(2);
        }
        OS.DeleteObject(hBitmap);
        OS.DeleteObject(hMask);
        return Image.win32_new(device, 1, hIcon);
    }

    static int createMaskFromAlpha(ImageData data, int destWidth, int destHeight) {
        int srcWidth = data.width;
        int srcHeight = data.height;
        ImageData mask = ImageData.internal_new(srcWidth, srcHeight, 1, new PaletteData(new RGB[]{new RGB(0, 0, 0), new RGB(255, 255, 255)}), 2, null, 1, null, null, -1, -1, -1, 0, 0, 0, 0);
        int ap = 0;
        int y = 0;
        while (y < mask.height) {
            int x = 0;
            while (x < mask.width) {
                mask.setPixel(x, y, (data.alphaData[ap++] & 0xFF) <= 127 ? 1 : 0);
                ++x;
            }
            ++y;
        }
        int hMask = OS.CreateBitmap(srcWidth, srcHeight, 1, 1, mask.data);
        if (srcWidth != destWidth || srcHeight != destHeight) {
            int hdc = OS.GetDC(0);
            int hdc1 = OS.CreateCompatibleDC(hdc);
            OS.SelectObject(hdc1, hMask);
            int hdc2 = OS.CreateCompatibleDC(hdc);
            int hMask2 = OS.CreateBitmap(destWidth, destHeight, 1, 1, null);
            OS.SelectObject(hdc2, hMask2);
            if (!OS.IsWinCE) {
                OS.SetStretchBltMode(hdc2, 3);
            }
            OS.StretchBlt(hdc2, 0, 0, destWidth, destHeight, hdc1, 0, 0, srcWidth, srcHeight, 0xCC0020);
            OS.DeleteDC(hdc1);
            OS.DeleteDC(hdc2);
            OS.ReleaseDC(0, hdc);
            OS.DeleteObject(hMask);
            hMask = hMask2;
        }
        return hMask;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    static void deregister(Display display) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.swt.graphics.Device");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Class<?> clazz2 = clazz;
        synchronized (clazz) {
            int i = 0;
            while (i < Displays.length) {
                if (display == Displays[i]) {
                    Display.Displays[i] = null;
                }
                ++i;
            }
            // ** MonitorExit[var1_1] (shouldn't be in output)
            return;
        }
    }

    protected void destroy() {
        if (this == Default) {
            Default = null;
        }
        Display.deregister(this);
        this.destroyDisplay();
    }

    void destroyDisplay() {
    }

    public void disposeExec(Runnable runnable) {
        this.checkDevice();
        if (this.disposeList == null) {
            this.disposeList = new Runnable[4];
        }
        int i = 0;
        while (i < this.disposeList.length) {
            if (this.disposeList[i] == null) {
                this.disposeList[i] = runnable;
                return;
            }
            ++i;
        }
        Runnable[] newDisposeList = new Runnable[this.disposeList.length + 4];
        System.arraycopy(this.disposeList, 0, newDisposeList, 0, this.disposeList.length);
        newDisposeList[this.disposeList.length] = runnable;
        this.disposeList = newDisposeList;
    }

    void drawMenuBars() {
        if (this.bars == null) {
            return;
        }
        int i = 0;
        while (i < this.bars.length) {
            Menu menu = this.bars[i];
            if (menu != null && !menu.isDisposed()) {
                menu.update();
            }
            ++i;
        }
        this.bars = null;
    }

    int embeddedProc(int hwnd, int msg, int wParam, int lParam) {
        switch (msg) {
            case 32770: {
                MSG keyMsg = new MSG();
                OS.MoveMemory(keyMsg, lParam, MSG.sizeof);
                OS.TranslateMessage(keyMsg);
                OS.DispatchMessage(keyMsg);
                int hHeap = OS.GetProcessHeap();
                OS.HeapFree(hHeap, 0, lParam);
                break;
            }
            case 32771: {
                OS.DestroyWindow(hwnd);
                if (this.embeddedCallback != null) {
                    this.embeddedCallback.dispose();
                }
                if (this.getMsgCallback != null) {
                    this.getMsgCallback.dispose();
                }
                this.getMsgCallback = null;
                this.embeddedCallback = null;
                this.getMsgProc = 0;
                this.embeddedProc = 0;
            }
        }
        return OS.DefWindowProc(hwnd, msg, wParam, lParam);
    }

    void error(int code) {
        SWT.error(code);
    }

    boolean filterEvent(Event event) {
        if (this.filterTable != null) {
            this.filterTable.sendEvent(event);
        }
        return false;
    }

    boolean filters(int eventType) {
        if (this.filterTable == null) {
            return false;
        }
        return this.filterTable.hooks(eventType);
    }

    boolean filterMessage(MSG msg) {
        Control control;
        int message = msg.message;
        if (256 <= message && message <= 264 && (control = this.findControl(msg.hwnd)) != null && (this.translateAccelerator(msg, control) || this.translateMnemonic(msg, control) || this.translateTraversal(msg, control))) {
            this.lastKey = 0;
            this.lastAscii = 0;
            this.lastDead = false;
            this.lastNull = false;
            this.lastVirtual = false;
            return true;
        }
        return false;
    }

    Control findControl(int handle) {
        if (handle == 0) {
            return null;
        }
        int hwndOwner = 0;
        do {
            Control control;
            if ((control = this.getControl(handle)) != null) {
                return control;
            }
            hwndOwner = OS.GetWindow(handle, 4);
        } while ((handle = OS.GetParent(handle)) != 0 && handle != hwndOwner);
        return null;
    }

    public Widget findWidget(int handle) {
        this.checkDevice();
        return this.getControl(handle);
    }

    public Widget findWidget(int handle, int id) {
        this.checkDevice();
        Control control = this.getControl(handle);
        return control != null ? control.findItem(id) : null;
    }

    public Widget findWidget(Widget widget, int id) {
        this.checkDevice();
        if (widget instanceof Control) {
            return this.findWidget(((Control)widget).handle, id);
        }
        return null;
    }

    int foregroundIdleProc(int code, int wParam, int lParam) {
        if (code >= 0 && this.runMessages && this.getMessageCount() != 0) {
            int flags;
            MSG msg;
            if (this.runMessagesInIdle) {
                if (this.runMessagesInMessageProc) {
                    OS.PostMessage(this.hwndMessage, 32774, 0, 0);
                } else {
                    this.runAsyncMessages(false);
                }
            }
            if (!OS.PeekMessage(msg = new MSG(), 0, 0, 0, flags = 458754)) {
                this.wakeThread();
            }
        }
        return OS.CallNextHookEx(this.idleHook, code, wParam, lParam);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static Display findDisplay(Thread thread) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.swt.graphics.Device");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Class<?> clazz2 = clazz;
        synchronized (clazz) {
            int i = 0;
            while (i < Displays.length) {
                Display display = Displays[i];
                if (display != null && display.thread == thread) {
                    // ** MonitorExit[var1_1] (shouldn't be in output)
                    return display;
                }
                ++i;
            }
            // ** MonitorExit[var1_1] (shouldn't be in output)
            return null;
        }
    }

    TouchSource findTouchSource(int touchDevice, Monitor monitor) {
        if (this.touchSources == null) {
            this.touchSources = new TouchSource[4];
        }
        int length = this.touchSources.length;
        int i = 0;
        while (i < length) {
            if (this.touchSources[i] != null && this.touchSources[i].handle == touchDevice) {
                return this.touchSources[i];
            }
            ++i;
        }
        int index = 0;
        while (index < length) {
            if (this.touchSources[index] == null) break;
            ++index;
        }
        if (index == length) {
            TouchSource[] newTouchSources = new TouchSource[length + 4];
            System.arraycopy(this.touchSources, 0, newTouchSources, 0, length);
            this.touchSources = newTouchSources;
        }
        this.touchSources[index] = new TouchSource(touchDevice, true, monitor.getBounds());
        return this.touchSources[index];
    }

    public Shell getActiveShell() {
        this.checkDevice();
        Control control = this.findControl(OS.GetActiveWindow());
        return control != null ? control.getShell() : null;
    }

    public Menu getMenuBar() {
        this.checkDevice();
        return null;
    }

    public Rectangle getBounds() {
        this.checkDevice();
        if (OS.GetSystemMetrics(80) < 2) {
            int width = OS.GetSystemMetrics(0);
            int height = OS.GetSystemMetrics(1);
            return new Rectangle(0, 0, width, height);
        }
        int x = OS.GetSystemMetrics(76);
        int y = OS.GetSystemMetrics(77);
        int width = OS.GetSystemMetrics(78);
        int height = OS.GetSystemMetrics(79);
        return new Rectangle(x, y, width, height);
    }

    public static Display getCurrent() {
        return Display.findDisplay(Thread.currentThread());
    }

    int getClickCount(int type, int button, int hwnd, int lParam) {
        switch (type) {
            case 3: {
                int doubleClick = OS.GetDoubleClickTime();
                if (this.clickRect == null) {
                    this.clickRect = new RECT();
                }
                int deltaTime = Math.abs(this.lastTime - this.getLastEventTime());
                POINT pt = new POINT();
                OS.POINTSTOPOINT(pt, lParam);
                this.clickCount = this.lastClickHwnd == hwnd && this.lastButton == button && deltaTime <= doubleClick && OS.PtInRect(this.clickRect, pt) ? ++this.clickCount : 1;
            }
            case 8: {
                this.lastButton = button;
                this.lastClickHwnd = hwnd;
                this.lastTime = this.getLastEventTime();
                int xInset = OS.GetSystemMetrics(36) / 2;
                int yInset = OS.GetSystemMetrics(37) / 2;
                int x = OS.GET_X_LPARAM(lParam);
                int y = OS.GET_Y_LPARAM(lParam);
                OS.SetRect(this.clickRect, x - xInset, y - yInset, x + xInset, y + yInset);
            }
            case 4: {
                return this.clickCount;
            }
        }
        return 0;
    }

    public Rectangle getClientArea() {
        this.checkDevice();
        if (OS.GetSystemMetrics(80) < 2) {
            RECT rect = new RECT();
            OS.SystemParametersInfo(48, 0, rect, 0);
            int width = rect.right - rect.left;
            int height = rect.bottom - rect.top;
            return new Rectangle(rect.left, rect.top, width, height);
        }
        int x = OS.GetSystemMetrics(76);
        int y = OS.GetSystemMetrics(77);
        int width = OS.GetSystemMetrics(78);
        int height = OS.GetSystemMetrics(79);
        return new Rectangle(x, y, width, height);
    }

    Control getControl(int handle) {
        Control control;
        if (handle == 0) {
            return null;
        }
        if (this.lastControl != null && this.lastHwnd == handle) {
            return this.lastControl;
        }
        if (this.lastGetControl != null && this.lastGetHwnd == handle) {
            return this.lastGetControl;
        }
        int index = USE_PROPERTY ? OS.GetProp(handle, SWT_OBJECT_INDEX) - 1 : OS.GetWindowLongPtr(handle, -21) - 1;
        if (index >= 0 && index < this.controlTable.length && (control = this.controlTable[index]) != null && control.checkHandle(handle)) {
            this.lastGetHwnd = handle;
            this.lastGetControl = control;
            return control;
        }
        return null;
    }

    public Control getCursorControl() {
        this.checkDevice();
        POINT pt = new POINT();
        if (!OS.GetCursorPos(pt)) {
            return null;
        }
        return this.findControl(OS.WindowFromPoint(pt));
    }

    public Point getCursorLocation() {
        this.checkDevice();
        POINT pt = new POINT();
        OS.GetCursorPos(pt);
        return new Point(pt.x, pt.y);
    }

    public Point[] getCursorSizes() {
        this.checkDevice();
        return new Point[]{new Point(OS.GetSystemMetrics(13), OS.GetSystemMetrics(14))};
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static Display getDefault() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.swt.graphics.Device");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Class<?> clazz2 = clazz;
        synchronized (clazz) {
            if (Default == null) {
                Default = new Display();
            }
            // ** MonitorExit[var0] (shouldn't be in output)
            return Default;
        }
    }

    static boolean isValidClass(Class clazz) {
        String name = clazz.getName();
        int index = name.lastIndexOf(46);
        return name.substring(0, index + 1).equals(PACKAGE_PREFIX);
    }

    public Object getData(String key) {
        this.checkDevice();
        if (key == null) {
            this.error(4);
        }
        if (key.equals(RUN_MESSAGES_IN_IDLE_KEY)) {
            return new Boolean(this.runMessagesInIdle);
        }
        if (key.equals(RUN_MESSAGES_IN_MESSAGE_PROC_KEY)) {
            return new Boolean(this.runMessagesInMessageProc);
        }
        if (key.equals(USE_OWNDC_KEY)) {
            return new Boolean(this.useOwnDC);
        }
        if (key.equals(ACCEL_KEY_HIT)) {
            return new Boolean(this.accelKeyHit);
        }
        if (this.keys == null) {
            return null;
        }
        int i = 0;
        while (i < this.keys.length) {
            if (this.keys[i].equals(key)) {
                return this.values[i];
            }
            ++i;
        }
        return null;
    }

    public Object getData() {
        this.checkDevice();
        return this.data;
    }

    public int getDismissalAlignment() {
        this.checkDevice();
        return 16384;
    }

    public int getDoubleClickTime() {
        this.checkDevice();
        return OS.GetDoubleClickTime();
    }

    public Control getFocusControl() {
        this.checkDevice();
        if (this.focusControl != null && !this.focusControl.isDisposed()) {
            return this.focusControl;
        }
        return this._getFocusControl();
    }

    String getFontName(LOGFONT logFont) {
        char[] chars;
        if (OS.IsUnicode) {
            chars = ((LOGFONTW)logFont).lfFaceName;
        } else {
            chars = new char[32];
            byte[] bytes = ((LOGFONTA)logFont).lfFaceName;
            OS.MultiByteToWideChar(0, 1, bytes, bytes.length, chars, chars.length);
        }
        int index = 0;
        while (index < chars.length) {
            if (chars[index] == '\u0000') break;
            ++index;
        }
        return new String(chars, 0, index);
    }

    public boolean getHighContrast() {
        this.checkDevice();
        if (OS.IsWinCE) {
            return false;
        }
        HIGHCONTRAST pvParam = new HIGHCONTRAST();
        pvParam.cbSize = HIGHCONTRAST.sizeof;
        OS.SystemParametersInfo(66, 0, pvParam, 0);
        return (pvParam.dwFlags & 1) != 0;
    }

    public int getIconDepth() {
        TCHAR lpData;
        this.checkDevice();
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(5, 1) && this.getDepth() >= 24) {
            return 32;
        }
        TCHAR buffer1 = new TCHAR(0, "Control Panel\\Desktop\\WindowMetrics", true);
        int[] phkResult = new int[1];
        int result = OS.RegOpenKeyEx(-2147483647, buffer1, 0, 131097, phkResult);
        if (result != 0) {
            return 4;
        }
        int depth = 4;
        TCHAR buffer2 = new TCHAR(0, "Shell Icon BPP", true);
        int[] lpcbData = new int[1];
        result = OS.RegQueryValueEx(phkResult[0], buffer2, 0, null, null, lpcbData);
        if (result == 0 && (result = OS.RegQueryValueEx(phkResult[0], buffer2, 0, null, lpData = new TCHAR(0, lpcbData[0] / TCHAR.sizeof), lpcbData)) == 0) {
            try {
                depth = Integer.parseInt(lpData.toString(0, lpData.strlen()));
            }
            catch (NumberFormatException numberFormatException) {}
        }
        OS.RegCloseKey(phkResult[0]);
        return depth;
    }

    public Point[] getIconSizes() {
        this.checkDevice();
        return new Point[]{new Point(OS.GetSystemMetrics(49), OS.GetSystemMetrics(50)), new Point(OS.GetSystemMetrics(11), OS.GetSystemMetrics(12))};
    }

    ImageList getImageList(int style, int width, int height) {
        ImageList list;
        if (this.imageList == null) {
            this.imageList = new ImageList[4];
        }
        int i = 0;
        int length = this.imageList.length;
        while (i < length) {
            list = this.imageList[i];
            if (list == null) break;
            Point size = list.getImageSize();
            if (size.x == width && size.y == height && list.getStyle() == style) {
                list.addRef();
                return list;
            }
            ++i;
        }
        if (i == length) {
            ImageList[] newList = new ImageList[length + 4];
            System.arraycopy(this.imageList, 0, newList, 0, length);
            this.imageList = newList;
        }
        this.imageList[i] = list = new ImageList(style, width, height);
        list.addRef();
        return list;
    }

    ImageList getImageListToolBar(int style, int width, int height) {
        ImageList list;
        if (this.toolImageList == null) {
            this.toolImageList = new ImageList[4];
        }
        int i = 0;
        int length = this.toolImageList.length;
        while (i < length) {
            list = this.toolImageList[i];
            if (list == null) break;
            Point size = list.getImageSize();
            if (size.x == width && size.y == height && list.getStyle() == style) {
                list.addRef();
                return list;
            }
            ++i;
        }
        if (i == length) {
            ImageList[] newList = new ImageList[length + 4];
            System.arraycopy(this.toolImageList, 0, newList, 0, length);
            this.toolImageList = newList;
        }
        this.toolImageList[i] = list = new ImageList(style, width, height);
        list.addRef();
        return list;
    }

    ImageList getImageListToolBarDisabled(int style, int width, int height) {
        ImageList list;
        if (this.toolDisabledImageList == null) {
            this.toolDisabledImageList = new ImageList[4];
        }
        int i = 0;
        int length = this.toolDisabledImageList.length;
        while (i < length) {
            list = this.toolDisabledImageList[i];
            if (list == null) break;
            Point size = list.getImageSize();
            if (size.x == width && size.y == height && list.getStyle() == style) {
                list.addRef();
                return list;
            }
            ++i;
        }
        if (i == length) {
            ImageList[] newList = new ImageList[length + 4];
            System.arraycopy(this.toolDisabledImageList, 0, newList, 0, length);
            this.toolDisabledImageList = newList;
        }
        this.toolDisabledImageList[i] = list = new ImageList(style, width, height);
        list.addRef();
        return list;
    }

    ImageList getImageListToolBarHot(int style, int width, int height) {
        ImageList list;
        if (this.toolHotImageList == null) {
            this.toolHotImageList = new ImageList[4];
        }
        int i = 0;
        int length = this.toolHotImageList.length;
        while (i < length) {
            list = this.toolHotImageList[i];
            if (list == null) break;
            Point size = list.getImageSize();
            if (size.x == width && size.y == height && list.getStyle() == style) {
                list.addRef();
                return list;
            }
            ++i;
        }
        if (i == length) {
            ImageList[] newList = new ImageList[length + 4];
            System.arraycopy(this.toolHotImageList, 0, newList, 0, length);
            this.toolHotImageList = newList;
        }
        this.toolHotImageList[i] = list = new ImageList(style, width, height);
        list.addRef();
        return list;
    }

    int getLastEventTime() {
        return OS.IsWinCE ? OS.GetTickCount() : OS.GetMessageTime();
    }

    MenuItem getMenuItem(int id) {
        if (this.items == null) {
            return null;
        }
        if ((id -= 108) >= 0 && id < this.items.length) {
            return this.items[id];
        }
        return null;
    }

    int getMessageCount() {
        return this.synchronizer.getMessageCount();
    }

    Shell getModalShell() {
        if (this.modalShells == null) {
            return null;
        }
        int index = this.modalShells.length;
        while (--index >= 0) {
            Shell shell = this.modalShells[index];
            if (shell == null) continue;
            return shell;
        }
        return null;
    }

    Dialog getModalDialog() {
        return this.modalDialog;
    }

    public Monitor[] getMonitors() {
        this.checkDevice();
        if (OS.IsWinCE || OS.WIN32_VERSION < OS.VERSION(4, 10)) {
            return new Monitor[]{this.getPrimaryMonitor()};
        }
        this.monitors = new Monitor[4];
        Callback callback = new Callback(this, "monitorEnumProc", 4);
        int lpfnEnum = callback.getAddress();
        if (lpfnEnum == 0) {
            SWT.error(3);
        }
        OS.EnumDisplayMonitors(0, null, lpfnEnum, 0);
        callback.dispose();
        Monitor[] result = new Monitor[this.monitorCount];
        System.arraycopy(this.monitors, 0, result, 0, this.monitorCount);
        this.monitors = null;
        this.monitorCount = 0;
        return result;
    }

    int getMsgProc(int code, int wParam, int lParam) {
        if (this.embeddedHwnd == 0) {
            int hInstance = OS.GetModuleHandle(null);
            this.embeddedHwnd = OS.CreateWindowEx(0, this.windowClass, null, OS.WS_OVERLAPPED, 0, 0, 0, 0, 0, 0, hInstance, null);
            this.embeddedCallback = new Callback(this, "embeddedProc", 4);
            this.embeddedProc = this.embeddedCallback.getAddress();
            if (this.embeddedProc == 0) {
                this.error(3);
            }
            OS.SetWindowLongPtr(this.embeddedHwnd, -4, this.embeddedProc);
        }
        if (code >= 0 && (wParam & 1) != 0) {
            MSG msg = new MSG();
            OS.MoveMemory(msg, lParam, MSG.sizeof);
            block0 : switch (msg.message) {
                case 256: 
                case 257: 
                case 260: 
                case 261: {
                    Control control = this.findControl(msg.hwnd);
                    if (control == null) break;
                    int hHeap = OS.GetProcessHeap();
                    int keyMsg = OS.HeapAlloc(hHeap, 8, MSG.sizeof);
                    OS.MoveMemory(keyMsg, msg, MSG.sizeof);
                    OS.PostMessage(this.hwndMessage, 32770, wParam, keyMsg);
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
                    msg.message = 0;
                    OS.MoveMemory(lParam, msg, MSG.sizeof);
                }
            }
        }
        return OS.CallNextHookEx(this.msgHook, code, wParam, lParam);
    }

    public Monitor getPrimaryMonitor() {
        this.checkDevice();
        if (OS.IsWinCE || OS.WIN32_VERSION < OS.VERSION(4, 10)) {
            Monitor monitor = new Monitor();
            int width = OS.GetSystemMetrics(0);
            int height = OS.GetSystemMetrics(1);
            monitor.width = width;
            monitor.height = height;
            RECT rect = new RECT();
            OS.SystemParametersInfo(48, 0, rect, 0);
            monitor.clientX = rect.left;
            monitor.clientY = rect.top;
            monitor.clientWidth = rect.right - rect.left;
            monitor.clientHeight = rect.bottom - rect.top;
            return monitor;
        }
        this.monitors = new Monitor[4];
        Callback callback = new Callback(this, "monitorEnumProc", 4);
        int lpfnEnum = callback.getAddress();
        if (lpfnEnum == 0) {
            SWT.error(3);
        }
        OS.EnumDisplayMonitors(0, null, lpfnEnum, 0);
        callback.dispose();
        Monitor result = null;
        MONITORINFO lpmi = new MONITORINFO();
        lpmi.cbSize = MONITORINFO.sizeof;
        int i = 0;
        while (i < this.monitorCount) {
            Monitor monitor = this.monitors[i];
            OS.GetMonitorInfo(this.monitors[i].handle, lpmi);
            if ((lpmi.dwFlags & 1) != 0) {
                result = monitor;
                break;
            }
            ++i;
        }
        this.monitors = null;
        this.monitorCount = 0;
        return result;
    }

    public Shell[] getShells() {
        this.checkDevice();
        int index = 0;
        Shell[] result = new Shell[16];
        int i = 0;
        while (i < this.controlTable.length) {
            Control control = this.controlTable[i];
            if (control != null && control instanceof Shell) {
                int j = 0;
                while (j < index) {
                    if (result[j] == control) break;
                    ++j;
                }
                if (j == index) {
                    if (index == result.length) {
                        Shell[] newResult = new Shell[index + 16];
                        System.arraycopy(result, 0, newResult, 0, index);
                        result = newResult;
                    }
                    result[index++] = (Shell)control;
                }
            }
            ++i;
        }
        if (index == result.length) {
            return result;
        }
        Shell[] newResult = new Shell[index];
        System.arraycopy(result, 0, newResult, 0, index);
        return newResult;
    }

    Image getSortImage(int direction) {
        switch (direction) {
            case 128: {
                if (this.upArrow != null) {
                    return this.upArrow;
                }
                Color c1 = this.getSystemColor(18);
                Color c2 = this.getSystemColor(20);
                Color c3 = this.getSystemColor(22);
                PaletteData palette = new PaletteData(new RGB[]{c1.getRGB(), c2.getRGB(), c3.getRGB()});
                ImageData imageData = new ImageData(8, 8, 4, palette);
                imageData.transparentPixel = 2;
                this.upArrow = new Image((Device)this, imageData);
                GC gc = new GC(this.upArrow);
                gc.setBackground(c3);
                gc.fillRectangle(0, 0, 8, 8);
                gc.setForeground(c1);
                int[] nArray = new int[14];
                nArray[1] = 6;
                nArray[2] = 1;
                nArray[3] = 6;
                nArray[4] = 1;
                nArray[5] = 4;
                nArray[6] = 2;
                nArray[7] = 4;
                nArray[8] = 2;
                nArray[9] = 2;
                nArray[10] = 3;
                nArray[11] = 2;
                nArray[12] = 3;
                nArray[13] = 1;
                int[] line1 = nArray;
                gc.drawPolyline(line1);
                gc.setForeground(c2);
                int[] nArray2 = new int[18];
                nArray2[1] = 7;
                nArray2[2] = 7;
                nArray2[3] = 7;
                nArray2[4] = 7;
                nArray2[5] = 6;
                nArray2[6] = 6;
                nArray2[7] = 6;
                nArray2[8] = 6;
                nArray2[9] = 4;
                nArray2[10] = 5;
                nArray2[11] = 4;
                nArray2[12] = 5;
                nArray2[13] = 2;
                nArray2[14] = 4;
                nArray2[15] = 2;
                nArray2[16] = 4;
                nArray2[17] = 1;
                int[] line2 = nArray2;
                gc.drawPolyline(line2);
                gc.dispose();
                return this.upArrow;
            }
            case 1024: {
                if (this.downArrow != null) {
                    return this.downArrow;
                }
                Color c1 = this.getSystemColor(18);
                Color c2 = this.getSystemColor(20);
                Color c3 = this.getSystemColor(22);
                PaletteData palette = new PaletteData(new RGB[]{c1.getRGB(), c2.getRGB(), c3.getRGB()});
                ImageData imageData = new ImageData(8, 8, 4, palette);
                imageData.transparentPixel = 2;
                this.downArrow = new Image((Device)this, imageData);
                GC gc = new GC(this.downArrow);
                gc.setBackground(c3);
                gc.fillRectangle(0, 0, 8, 8);
                gc.setForeground(c1);
                int[] nArray = new int[18];
                nArray[0] = 7;
                nArray[5] = 1;
                nArray[6] = 1;
                nArray[7] = 1;
                nArray[8] = 1;
                nArray[9] = 3;
                nArray[10] = 2;
                nArray[11] = 3;
                nArray[12] = 2;
                nArray[13] = 5;
                nArray[14] = 3;
                nArray[15] = 5;
                nArray[16] = 3;
                nArray[17] = 6;
                int[] line1 = nArray;
                gc.drawPolyline(line1);
                gc.setForeground(c2);
                int[] line2 = new int[]{4, 6, 4, 5, 5, 5, 5, 3, 6, 3, 6, 1, 7, 1};
                gc.drawPolyline(line2);
                gc.dispose();
                return this.downArrow;
            }
        }
        return null;
    }

    public Synchronizer getSynchronizer() {
        this.checkDevice();
        return this.synchronizer;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Thread getSyncThread() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.swt.graphics.Device");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Class<?> clazz2 = clazz;
        synchronized (clazz) {
            if (this.isDisposed()) {
                this.error(45);
            }
            // ** MonitorExit[var1_1] (shouldn't be in output)
            return this.synchronizer.syncThread;
        }
    }

    public Color getSystemColor(int id) {
        this.checkDevice();
        int pixel = 0;
        switch (id) {
            case 17: {
                pixel = OS.GetSysColor(OS.COLOR_3DDKSHADOW);
                break;
            }
            case 18: {
                pixel = OS.GetSysColor(OS.COLOR_3DSHADOW);
                break;
            }
            case 19: {
                pixel = OS.GetSysColor(OS.COLOR_3DLIGHT);
                break;
            }
            case 20: {
                pixel = OS.GetSysColor(OS.COLOR_3DHIGHLIGHT);
                break;
            }
            case 22: {
                pixel = OS.GetSysColor(OS.COLOR_3DFACE);
                break;
            }
            case 23: {
                pixel = OS.GetSysColor(OS.COLOR_WINDOWFRAME);
                break;
            }
            case 21: 
            case 24: {
                pixel = OS.GetSysColor(OS.COLOR_WINDOWTEXT);
                break;
            }
            case 25: {
                pixel = OS.GetSysColor(OS.COLOR_WINDOW);
                break;
            }
            case 26: {
                pixel = OS.GetSysColor(OS.COLOR_HIGHLIGHT);
                break;
            }
            case 27: {
                pixel = OS.GetSysColor(OS.COLOR_HIGHLIGHTTEXT);
                break;
            }
            case 28: {
                pixel = OS.GetSysColor(OS.COLOR_INFOTEXT);
                break;
            }
            case 29: {
                pixel = OS.GetSysColor(OS.COLOR_INFOBK);
                break;
            }
            case 30: {
                pixel = OS.GetSysColor(OS.COLOR_CAPTIONTEXT);
                break;
            }
            case 31: {
                pixel = OS.GetSysColor(OS.COLOR_ACTIVECAPTION);
                break;
            }
            case 32: {
                pixel = OS.GetSysColor(OS.COLOR_GRADIENTACTIVECAPTION);
                if (pixel != 0) break;
                pixel = OS.GetSysColor(OS.COLOR_ACTIVECAPTION);
                break;
            }
            case 33: {
                pixel = OS.GetSysColor(OS.COLOR_INACTIVECAPTIONTEXT);
                break;
            }
            case 34: {
                pixel = OS.GetSysColor(OS.COLOR_INACTIVECAPTION);
                break;
            }
            case 35: {
                pixel = OS.GetSysColor(OS.COLOR_GRADIENTINACTIVECAPTION);
                if (pixel != 0) break;
                pixel = OS.GetSysColor(OS.COLOR_INACTIVECAPTION);
                break;
            }
            default: {
                return super.getSystemColor(id);
            }
        }
        return Color.win32_new(this, pixel);
    }

    public Cursor getSystemCursor(int id) {
        this.checkDevice();
        if (id < 0 || id >= this.cursors.length) {
            return null;
        }
        if (this.cursors[id] == null) {
            this.cursors[id] = new Cursor(this, id);
        }
        return this.cursors[id];
    }

    public Font getSystemFont() {
        this.checkDevice();
        if (this.systemFont != null) {
            return this.systemFont;
        }
        int hFont = 0;
        if (!OS.IsWinCE) {
            NONCLIENTMETRICS info = OS.IsUnicode ? new NONCLIENTMETRICSW() : new NONCLIENTMETRICSA();
            info.cbSize = NONCLIENTMETRICS.sizeof;
            if (OS.SystemParametersInfo(41, 0, info, 0)) {
                LOGFONT logFont = OS.IsUnicode ? info.lfMessageFont : ((NONCLIENTMETRICSA)info).lfMessageFont;
                hFont = OS.CreateFontIndirect(logFont);
                LOGFONT lOGFONT = this.lfSystemFont = hFont != 0 ? logFont : null;
            }
        }
        if (hFont == 0) {
            hFont = OS.GetStockObject(17);
        }
        if (hFont == 0) {
            hFont = OS.GetStockObject(13);
        }
        this.systemFont = Font.win32_new(this, hFont);
        return this.systemFont;
    }

    public Image getSystemImage(int id) {
        this.checkDevice();
        switch (id) {
            case 1: {
                if (this.errorImage != null) {
                    return this.errorImage;
                }
                int hIcon = OS.LoadImage(0, 32513, 1, 0, 0, 32768);
                this.errorImage = Image.win32_new(this, 1, hIcon);
                return this.errorImage;
            }
            case 2: 
            case 16: {
                if (this.infoImage != null) {
                    return this.infoImage;
                }
                int hIcon = OS.LoadImage(0, 32516, 1, 0, 0, 32768);
                this.infoImage = Image.win32_new(this, 1, hIcon);
                return this.infoImage;
            }
            case 4: {
                if (this.questionImage != null) {
                    return this.questionImage;
                }
                int hIcon = OS.LoadImage(0, 32514, 1, 0, 0, 32768);
                this.questionImage = Image.win32_new(this, 1, hIcon);
                return this.questionImage;
            }
            case 8: {
                if (this.warningIcon != null) {
                    return this.warningIcon;
                }
                int hIcon = OS.LoadImage(0, 32515, 1, 0, 0, 32768);
                this.warningIcon = Image.win32_new(this, 1, hIcon);
                return this.warningIcon;
            }
        }
        return null;
    }

    public Menu getSystemMenu() {
        this.checkDevice();
        return null;
    }

    public TaskBar getSystemTaskBar() {
        this.checkDevice();
        if (this.taskBar != null) {
            return this.taskBar;
        }
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 1)) {
            this.taskBar = new TaskBar(this, 0);
        }
        return this.taskBar;
    }

    public Tray getSystemTray() {
        this.checkDevice();
        if (this.tray != null) {
            return this.tray;
        }
        if (!OS.IsWinCE) {
            this.tray = new Tray(this, 0);
        }
        return this.tray;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Thread getThread() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.swt.graphics.Device");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Class<?> clazz2 = clazz;
        synchronized (clazz) {
            if (this.isDisposed()) {
                this.error(45);
            }
            // ** MonitorExit[var1_1] (shouldn't be in output)
            return this.thread;
        }
    }

    public boolean getTouchEnabled() {
        this.checkDevice();
        int value = OS.GetSystemMetrics(94);
        return (value & 0xC0) == 192;
    }

    int hButtonTheme() {
        if (this.hButtonTheme != 0) {
            return this.hButtonTheme;
        }
        this.hButtonTheme = OS.OpenThemeData(this.hwndMessage, BUTTON);
        return this.hButtonTheme;
    }

    int hEditTheme() {
        if (this.hEditTheme != 0) {
            return this.hEditTheme;
        }
        this.hEditTheme = OS.OpenThemeData(this.hwndMessage, EDIT);
        return this.hEditTheme;
    }

    int hExplorerBarTheme() {
        if (this.hExplorerBarTheme != 0) {
            return this.hExplorerBarTheme;
        }
        this.hExplorerBarTheme = OS.OpenThemeData(this.hwndMessage, EXPLORERBAR);
        return this.hExplorerBarTheme;
    }

    int hScrollBarTheme() {
        if (this.hScrollBarTheme != 0) {
            return this.hScrollBarTheme;
        }
        this.hScrollBarTheme = OS.OpenThemeData(this.hwndMessage, SCROLLBAR);
        return this.hScrollBarTheme;
    }

    int hTabTheme() {
        if (this.hTabTheme != 0) {
            return this.hTabTheme;
        }
        this.hTabTheme = OS.OpenThemeData(this.hwndMessage, TAB);
        return this.hTabTheme;
    }

    public int internal_new_GC(GCData data) {
        int hDC;
        if (this.isDisposed()) {
            SWT.error(45);
        }
        if ((hDC = OS.GetDC(0)) == 0) {
            SWT.error(2);
        }
        if (data != null) {
            int mask = 0x6000000;
            if ((data.style & mask) != 0) {
                data.layout = (data.style & 0x4000000) != 0 ? 1 : 0;
            } else {
                data.style |= 0x2000000;
            }
            data.device = this;
            data.font = this.getSystemFont();
        }
        return hDC;
    }

    protected void init() {
        int[] ppv;
        int hr;
        super.init();
        char[] appName = null;
        if (APP_NAME != null && !OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 1)) {
            int length = APP_NAME.length();
            appName = new char[length + 1];
            APP_NAME.getChars(0, length, appName, 0);
            OS.SetCurrentProcessExplicitAppUserModelID(appName);
        }
        this.windowCallback = new Callback(this, "windowProc", 4);
        this.windowProc = this.windowCallback.getAddress();
        if (this.windowProc == 0) {
            this.error(3);
        }
        this.threadId = OS.GetCurrentThreadId();
        this.windowClass = new TCHAR(0, WindowName + WindowClassCount, true);
        this.windowShadowClass = new TCHAR(0, WindowShadowName + WindowClassCount, true);
        this.windowOwnDCClass = new TCHAR(0, WindowOwnDCName + WindowClassCount, true);
        ++WindowClassCount;
        int hHeap = OS.GetProcessHeap();
        int hInstance = OS.GetModuleHandle(null);
        WNDCLASS lpWndClass = new WNDCLASS();
        lpWndClass.hInstance = hInstance;
        lpWndClass.lpfnWndProc = this.windowProc;
        lpWndClass.style = 8200;
        lpWndClass.hCursor = OS.LoadCursor(0, 32512);
        if (!OS.IsWinCE && Library.JAVA_VERSION >= Library.JAVA_VERSION(1, 6, 0)) {
            String fileName;
            TCHAR lpszFile = new TCHAR(0, 260);
            while (OS.GetModuleFileName(0, lpszFile, lpszFile.length()) == lpszFile.length()) {
                lpszFile = new TCHAR(0, lpszFile.length() + 260);
            }
            if (OS.ExtractIconEx(lpszFile, -1, null, null, 1) != 0 && ((fileName = lpszFile.toString(0, lpszFile.strlen())).endsWith("java.exe") || fileName.endsWith("javaw.exe"))) {
                lpWndClass.hIcon = OS.LoadIcon(0, 32512);
            }
        }
        int byteCount = this.windowClass.length() * TCHAR.sizeof;
        lpWndClass.lpszClassName = OS.HeapAlloc(hHeap, 8, byteCount);
        OS.MoveMemory(lpWndClass.lpszClassName, this.windowClass, byteCount);
        OS.RegisterClass(lpWndClass);
        OS.HeapFree(hHeap, 0, lpWndClass.lpszClassName);
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(5, 1)) {
            lpWndClass.style |= 0x20000;
        }
        byteCount = this.windowShadowClass.length() * TCHAR.sizeof;
        lpWndClass.lpszClassName = OS.HeapAlloc(hHeap, 8, byteCount);
        OS.MoveMemory(lpWndClass.lpszClassName, this.windowShadowClass, byteCount);
        OS.RegisterClass(lpWndClass);
        OS.HeapFree(hHeap, 0, lpWndClass.lpszClassName);
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(5, 1)) {
            lpWndClass.style |= 0x20;
        }
        byteCount = this.windowOwnDCClass.length() * TCHAR.sizeof;
        lpWndClass.lpszClassName = OS.HeapAlloc(hHeap, 8, byteCount);
        OS.MoveMemory(lpWndClass.lpszClassName, this.windowOwnDCClass, byteCount);
        OS.RegisterClass(lpWndClass);
        OS.HeapFree(hHeap, 0, lpWndClass.lpszClassName);
        this.hwndMessage = OS.CreateWindowEx(0, this.windowClass, null, OS.WS_OVERLAPPED, 0, 0, 0, 0, 0, 0, hInstance, null);
        String title = "SWT_Window_" + APP_NAME;
        OS.SetWindowText(this.hwndMessage, new TCHAR(0, title, true));
        this.messageCallback = new Callback(this, "messageProc", 4);
        this.messageProc = this.messageCallback.getAddress();
        if (this.messageProc == 0) {
            this.error(3);
        }
        OS.SetWindowLongPtr(this.hwndMessage, -4, this.messageProc);
        if (!OS.IsWinCE) {
            this.msgFilterCallback = new Callback(this, "msgFilterProc", 3);
            this.msgFilterProc = this.msgFilterCallback.getAddress();
            if (this.msgFilterProc == 0) {
                this.error(3);
            }
            this.filterHook = OS.SetWindowsHookEx(-1, this.msgFilterProc, 0, this.threadId);
        }
        if (!OS.IsWinCE) {
            this.foregroundIdleCallback = new Callback(this, "foregroundIdleProc", 3);
            this.foregroundIdleProc = this.foregroundIdleCallback.getAddress();
            if (this.foregroundIdleProc == 0) {
                this.error(3);
            }
            this.idleHook = OS.SetWindowsHookEx(11, this.foregroundIdleProc, 0, this.threadId);
        }
        TASKBARCREATED = OS.RegisterWindowMessage(new TCHAR(0, "TaskbarCreated", true));
        TASKBARBUTTONCREATED = OS.RegisterWindowMessage(new TCHAR(0, "TaskbarButtonCreated", true));
        SWT_RESTORECARET = OS.RegisterWindowMessage(new TCHAR(0, "SWT_RESTORECARET", true));
        DI_GETDRAGIMAGE = OS.RegisterWindowMessage(new TCHAR(0, "ShellGetDragImage", true));
        SWT_OPENDOC = OS.RegisterWindowMessage(new TCHAR(0, "SWT_OPENDOC", true));
        if (!OS.IsWinCE) {
            OS.OleInitialize(0);
        }
        if (appName != null && (hr = OS.CoCreateInstance(TaskBar.CLSID_DestinationList, 0, 1, TaskBar.IID_ICustomDestinationList, ppv = new int[1])) == 0) {
            OS.VtblCall(10, ppv[0], appName);
            OS.VtblCall(2, ppv[0]);
        }
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
            OS.BufferedPaintInit();
        }
        this.indexTable = new int[1024];
        this.controlTable = new Control[1024];
        int i = 0;
        while (i < 1023) {
            this.indexTable[i] = i + 1;
            ++i;
        }
        this.indexTable[1023] = -1;
        this.lastHighContrast = this.getHighContrast();
    }

    public void internal_dispose_GC(int hDC, GCData data) {
        OS.ReleaseDC(0, hDC);
    }

    boolean isXMouseActive() {
        boolean xMouseActive = false;
        TCHAR key = new TCHAR(0, "Control Panel\\Desktop", true);
        int[] phKey = new int[1];
        int result = OS.RegOpenKeyEx(-2147483647, key, 0, 131097, phKey);
        if (result == 0) {
            TCHAR lpValueName = new TCHAR(0, "UserPreferencesMask", true);
            int[] lpData = new int[1];
            int[] lpcbData = new int[]{4};
            result = OS.RegQueryValueEx(phKey[0], lpValueName, 0, null, lpData, lpcbData);
            if (result == 0) {
                xMouseActive = (lpData[0] & 1) != 0;
            }
            OS.RegCloseKey(phKey[0]);
        }
        return xMouseActive;
    }

    boolean isValidThread() {
        return this.thread == Thread.currentThread();
    }

    public Point map(Control from, Control to, Point point) {
        this.checkDevice();
        if (point == null) {
            this.error(4);
        }
        return this.map(from, to, point.x, point.y);
    }

    public Point map(Control from, Control to, int x, int y) {
        this.checkDevice();
        if (from != null && from.isDisposed()) {
            this.error(5);
        }
        if (to != null && to.isDisposed()) {
            this.error(5);
        }
        if (from == to) {
            return new Point(x, y);
        }
        int hwndFrom = from != null ? from.handle : 0;
        int hwndTo = to != null ? to.handle : 0;
        POINT point = new POINT();
        point.x = x;
        point.y = y;
        OS.MapWindowPoints(hwndFrom, hwndTo, point, 1);
        return new Point(point.x, point.y);
    }

    public Rectangle map(Control from, Control to, Rectangle rectangle) {
        this.checkDevice();
        if (rectangle == null) {
            this.error(4);
        }
        return this.map(from, to, rectangle.x, rectangle.y, rectangle.width, rectangle.height);
    }

    public Rectangle map(Control from, Control to, int x, int y, int width, int height) {
        this.checkDevice();
        if (from != null && from.isDisposed()) {
            this.error(5);
        }
        if (to != null && to.isDisposed()) {
            this.error(5);
        }
        if (from == to) {
            return new Rectangle(x, y, width, height);
        }
        int hwndFrom = from != null ? from.handle : 0;
        int hwndTo = to != null ? to.handle : 0;
        RECT rect = new RECT();
        rect.left = x;
        rect.top = y;
        rect.right = x + width;
        rect.bottom = y + height;
        OS.MapWindowPoints(hwndFrom, hwndTo, rect, 2);
        return new Rectangle(rect.left, rect.top, rect.right - rect.left, rect.bottom - rect.top);
    }

    static char mbcsToWcs(int ch) {
        return Display.mbcsToWcs(ch, 0);
    }

    static char mbcsToWcs(int ch, int codePage) {
        char[] unicode;
        byte[] buffer;
        if (OS.IsUnicode) {
            return (char)ch;
        }
        int key = ch & 0xFFFF;
        if (key <= 127) {
            return (char)ch;
        }
        int cp = codePage != 0 ? codePage : 0;
        int count = OS.MultiByteToWideChar(cp, 1, buffer = key <= 255 ? new byte[]{(byte)key} : new byte[]{(byte)(key >> 8 & 0xFF), (byte)(key & 0xFF)}, buffer.length, unicode = new char[1], 1);
        if (count == 0) {
            return '\u0000';
        }
        return unicode[0];
    }

    int messageProc(int hwnd, int msg, int wParam, int lParam) {
        switch (msg) {
            case 32774: {
                if (!this.runMessagesInIdle) break;
                this.runAsyncMessages(false);
                break;
            }
            case 32770: {
                boolean consumed = false;
                MSG keyMsg = new MSG();
                OS.MoveMemory(keyMsg, lParam, MSG.sizeof);
                Control control = this.findControl(keyMsg.hwnd);
                if (control != null) {
                    boolean accentKey = false;
                    block12 : switch (keyMsg.message) {
                        case 256: 
                        case 260: {
                            if (OS.IsWinCE) break;
                            switch (keyMsg.wParam) {
                                case 16: 
                                case 17: 
                                case 18: 
                                case 20: 
                                case 144: 
                                case 145: {
                                    break block12;
                                }
                            }
                            int mapKey = OS.MapVirtualKey(keyMsg.wParam, 2);
                            if (mapKey == 0) break;
                            boolean bl = accentKey = (mapKey & (OS.IsWinNT ? Integer.MIN_VALUE : 32768)) != 0;
                            if (accentKey) break;
                            int i = 0;
                            while (i < ACCENTS.length) {
                                short value = OS.VkKeyScan(ACCENTS[i]);
                                if (value != -1 && (value & 0xFF) == keyMsg.wParam) {
                                    int state = value >> 8;
                                    if (OS.GetKeyState(16) < 0 == ((state & 1) != 0) && OS.GetKeyState(17) < 0 == ((state & 2) != 0) && OS.GetKeyState(18) < 0 == ((state & 4) != 0)) {
                                        if ((state & 7) == 0) break block12;
                                        accentKey = true;
                                        break block12;
                                    }
                                }
                                ++i;
                            }
                            break;
                        }
                    }
                    if (!accentKey && !this.ignoreNextKey) {
                        keyMsg.hwnd = control.handle;
                        int flags = 10420227;
                        do {
                            if (consumed |= this.filterMessage(keyMsg)) continue;
                            OS.TranslateMessage(keyMsg);
                            consumed |= OS.DispatchMessage(keyMsg) == 1;
                        } while (OS.PeekMessage(keyMsg, keyMsg.hwnd, 256, 264, flags));
                    }
                    block18 : switch (keyMsg.message) {
                        case 256: 
                        case 260: {
                            switch (keyMsg.wParam) {
                                case 16: 
                                case 17: 
                                case 18: 
                                case 20: 
                                case 144: 
                                case 145: {
                                    break block18;
                                }
                            }
                            this.ignoreNextKey = accentKey;
                        }
                    }
                }
                switch (keyMsg.wParam) {
                    case 16: 
                    case 17: 
                    case 18: 
                    case 20: 
                    case 144: 
                    case 145: {
                        consumed = true;
                    }
                }
                if (consumed) {
                    int hHeap = OS.GetProcessHeap();
                    OS.HeapFree(hHeap, 0, lParam);
                } else {
                    OS.PostMessage(this.embeddedHwnd, 32770, wParam, lParam);
                }
                return 0;
            }
            case 32772: {
                if (this.tray != null) {
                    TrayItem[] items = this.tray.items;
                    int i = 0;
                    while (i < items.length) {
                        TrayItem item = items[i];
                        if (item != null && item.id == wParam) {
                            return item.messageProc(hwnd, msg, wParam, lParam);
                        }
                        ++i;
                    }
                }
                return 0;
            }
            case 28: {
                int hwndPopup;
                Shell modal;
                int hwndActive;
                if (wParam == 0 || this.isXMouseActive() || (hwndActive = OS.GetActiveWindow()) != 0 && OS.IsWindowEnabled(hwndActive)) break;
                Shell shell = modal = this.modalDialog != null ? this.modalDialog.parent : this.getModalShell();
                if (modal == null || modal.isDisposed()) break;
                int hwndModal = modal.handle;
                if (OS.IsWindowEnabled(hwndModal)) {
                    modal.bringToTop();
                    if (modal.isDisposed()) break;
                }
                if ((hwndPopup = OS.GetLastActivePopup(hwndModal)) == 0 || hwndPopup == modal.handle || this.getControl(hwndPopup) != null || !OS.IsWindowEnabled(hwndPopup)) break;
                OS.SetActiveWindow(hwndPopup);
                break;
            }
            case 22: {
                if (wParam == 0) break;
                this.dispose();
                break;
            }
            case 17: {
                Event event = new Event();
                this.sendEvent(21, event);
                if (event.doit) break;
                return 0;
            }
            case 800: {
                this.sendSettings = true;
            }
            case 26: {
                if (this.lastHighContrast != this.getHighContrast()) {
                    this.sendSettings = true;
                    this.lastHighContrast = this.getHighContrast();
                }
                if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
                    this.sendSettings = true;
                }
                switch (wParam) {
                    case 0: 
                    case 1: 
                    case 67: {
                        this.sendSettings = true;
                        this.lastHighContrast = this.getHighContrast();
                    }
                }
                if (!this.sendSettings) break;
                OS.SetTimer(this.hwndMessage, 100, 2000, 0);
                break;
            }
            case 794: {
                if (OS.COMCTL32_MAJOR < 6) break;
                if (this.hButtonTheme != 0) {
                    OS.CloseThemeData(this.hButtonTheme);
                }
                if (this.hEditTheme != 0) {
                    OS.CloseThemeData(this.hEditTheme);
                }
                if (this.hExplorerBarTheme != 0) {
                    OS.CloseThemeData(this.hExplorerBarTheme);
                }
                if (this.hScrollBarTheme != 0) {
                    OS.CloseThemeData(this.hScrollBarTheme);
                }
                if (this.hTabTheme != 0) {
                    OS.CloseThemeData(this.hTabTheme);
                }
                this.hTabTheme = 0;
                this.hScrollBarTheme = 0;
                this.hExplorerBarTheme = 0;
                this.hEditTheme = 0;
                this.hButtonTheme = 0;
                break;
            }
            case 275: {
                if (wParam == 100) {
                    this.sendSettings = false;
                    OS.KillTimer(this.hwndMessage, 100);
                    this.runSettings();
                    break;
                }
                this.runTimer(wParam);
                break;
            }
            default: {
                String filename;
                if (msg == TASKBARCREATED && this.tray != null) {
                    TrayItem[] items = this.tray.items;
                    int i = 0;
                    while (i < items.length) {
                        TrayItem item = items[i];
                        if (item != null) {
                            item.recreate();
                        }
                        ++i;
                    }
                }
                if (msg != SWT_OPENDOC || (filename = this.getSharedData(wParam, lParam)) == null) break;
                if (filename.startsWith(TASKBAR_EVENT)) {
                    String text = filename.substring(TASKBAR_EVENT.length());
                    int id = Integer.parseInt(text);
                    MenuItem item = this.getMenuItem(id);
                    if (item != null) {
                        item.sendSelectionEvent(13);
                    }
                } else {
                    Event event = new Event();
                    event.text = filename;
                    this.sendEvent(46, event);
                }
                this.wakeThread();
            }
        }
        return OS.DefWindowProc(hwnd, msg, wParam, lParam);
    }

    String getSharedData(int pid, int handle) {
        if (OS.IsWinCE) {
            return null;
        }
        int[] mapHandle = new int[1];
        if (pid == OS.GetCurrentProcessId()) {
            mapHandle[0] = handle;
        } else {
            int processHandle = OS.OpenProcess(80, false, pid);
            if (processHandle == 0) {
                return null;
            }
            OS.DuplicateHandle(processHandle, handle, OS.GetCurrentProcess(), mapHandle, 2, false, 2);
            OS.CloseHandle(processHandle);
        }
        int sharedData = OS.MapViewOfFile(mapHandle[0], 4, 0, 0, 0);
        if (sharedData == 0) {
            return null;
        }
        int length = OS.IsUnicode ? OS.wcslen(sharedData) : OS.strlen(sharedData);
        TCHAR buffer = new TCHAR(0, length);
        int byteCount = buffer.length() * TCHAR.sizeof;
        OS.MoveMemory(buffer, sharedData, byteCount);
        String result = buffer.toString(0, length);
        OS.UnmapViewOfFile(sharedData);
        if (handle != mapHandle[0]) {
            OS.CloseHandle(mapHandle[0]);
        }
        return result;
    }

    int monitorEnumProc(int hmonitor, int hdc, int lprcMonitor, int dwData) {
        if (this.monitorCount >= this.monitors.length) {
            Monitor[] newMonitors = new Monitor[this.monitors.length + 4];
            System.arraycopy(this.monitors, 0, newMonitors, 0, this.monitors.length);
            this.monitors = newMonitors;
        }
        MONITORINFO lpmi = new MONITORINFO();
        lpmi.cbSize = MONITORINFO.sizeof;
        OS.GetMonitorInfo(hmonitor, lpmi);
        Monitor monitor = new Monitor();
        monitor.handle = hmonitor;
        monitor.x = lpmi.rcMonitor_left;
        monitor.y = lpmi.rcMonitor_top;
        monitor.width = lpmi.rcMonitor_right - lpmi.rcMonitor_left;
        monitor.height = lpmi.rcMonitor_bottom - lpmi.rcMonitor_top;
        monitor.clientX = lpmi.rcWork_left;
        monitor.clientY = lpmi.rcWork_top;
        monitor.clientWidth = lpmi.rcWork_right - lpmi.rcWork_left;
        monitor.clientHeight = lpmi.rcWork_bottom - lpmi.rcWork_top;
        this.monitors[this.monitorCount++] = monitor;
        return 1;
    }

    int msgFilterProc(int code, int wParam, int lParam) {
        switch (code) {
            case 16896: {
                if (this.runDragDrop || this.dragCancelled) break;
                OS.MoveMemory(this.hookMsg, lParam, MSG.sizeof);
                if (this.hookMsg.message != 512) break;
                this.dragCancelled = true;
                OS.SendMessage(this.hookMsg.hwnd, 31, 0, 0);
                break;
            }
            case 0: 
            case 1: 
            case 2: 
            case 3: 
            case 4: 
            case 5: 
            case 6: 
            case 8: {
                int flags;
                MSG msg;
                if (!this.runMessages) break;
                OS.MoveMemory(this.hookMsg, lParam, MSG.sizeof);
                if (this.hookMsg.message != 0 || OS.PeekMessage(msg = new MSG(), 0, 0, 0, flags = 10420226) || !this.runAsyncMessages(false)) break;
                this.wakeThread();
            }
        }
        return OS.CallNextHookEx(this.filterHook, code, wParam, lParam);
    }

    int numpadKey(int key) {
        switch (key) {
            case 96: {
                return 48;
            }
            case 97: {
                return 49;
            }
            case 98: {
                return 50;
            }
            case 99: {
                return 51;
            }
            case 100: {
                return 52;
            }
            case 101: {
                return 53;
            }
            case 102: {
                return 54;
            }
            case 103: {
                return 55;
            }
            case 104: {
                return 56;
            }
            case 105: {
                return 57;
            }
            case 106: {
                return 42;
            }
            case 107: {
                return 43;
            }
            case 108: {
                return 0;
            }
            case 109: {
                return 45;
            }
            case 110: {
                return 46;
            }
            case 111: {
                return 47;
            }
        }
        return 0;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public boolean post(Event event) {
        v0 = Display.class$0;
        if (v0 == null) {
            try {
                v1 = Class.forName("org.eclipse.swt.graphics.Device");
            }
            catch (ClassNotFoundException v2) {
                throw new NoClassDefFoundError(v2.getMessage());
            }
            v0 = Display.class$0 = v1;
        }
        var2_2 = v0;
        synchronized (v0) {
            if (this.isDisposed()) {
                this.error(45);
            }
            if (event == null) {
                this.error(4);
            }
            type = event.type;
            switch (type) {
                case 1: 
                case 2: {
                    inputs = new KEYBDINPUT();
                    inputs.wVk = (short)Display.untranslateKey(event.keyCode);
                    if (inputs.wVk == 0) {
                        key = event.character;
                        switch (key) {
                            case '\b': {
                                inputs.wVk = (short)8;
                                break;
                            }
                            case '\r': {
                                inputs.wVk = (short)13;
                                break;
                            }
                            case '\u007f': {
                                inputs.wVk = (short)46;
                                break;
                            }
                            case '\u001b': {
                                inputs.wVk = (short)27;
                                break;
                            }
                            case '\t': {
                                inputs.wVk = (short)9;
                                break;
                            }
                            case '\n': {
                                // ** MonitorExit[var2_2] (shouldn't be in output)
                                return false;
                            }
                            default: {
                                if (OS.IsWinCE) {
                                    inputs.wVk = (short)OS.CharUpper((short)key);
                                    break;
                                }
                                inputs.wVk = OS.VkKeyScan((short)Display.wcsToMbcs(key, 0));
                                if (inputs.wVk == -1) {
                                    // ** MonitorExit[var2_2] (shouldn't be in output)
                                    return false;
                                }
                                inputs.wVk = (short)(inputs.wVk & 255);
                            }
                        }
                    }
                    inputs.dwFlags = type == 2 ? 2 : 0;
                    switch (inputs.wVk) {
                        case 3: 
                        case 33: 
                        case 34: 
                        case 35: 
                        case 36: 
                        case 37: 
                        case 38: 
                        case 39: 
                        case 40: 
                        case 44: 
                        case 45: 
                        case 46: 
                        case 111: 
                        case 144: {
                            inputs.dwFlags |= 1;
                            break;
                        }
                    }
                    hHeap = OS.GetProcessHeap();
                    pInputs = OS.HeapAlloc(hHeap, 8, INPUT.sizeof);
                    OS.MoveMemory(pInputs, new int[]{1}, 4);
                    OS.MoveMemory(pInputs + OS.PTR_SIZEOF, inputs, KEYBDINPUT.sizeof);
                    result = OS.SendInput(1, pInputs, INPUT.sizeof) != 0;
                    OS.HeapFree(hHeap, 0, pInputs);
                    // ** MonitorExit[var2_2] (shouldn't be in output)
                    return result;
                }
                case 3: 
                case 4: 
                case 5: 
                case 37: {
                    inputs = new MOUSEINPUT();
                    if (type != 5) ** GOTO lbl85
                    inputs.dwFlags = 32769;
                    x = 0;
                    y = 0;
                    width = 0;
                    height = 0;
                    if (OS.WIN32_VERSION >= OS.VERSION(5, 0)) {
                        inputs.dwFlags |= 16384;
                        x = OS.GetSystemMetrics(76);
                        y = OS.GetSystemMetrics(77);
                        width = OS.GetSystemMetrics(78);
                        height = OS.GetSystemMetrics(79);
                    } else {
                        width = OS.GetSystemMetrics(0);
                        height = OS.GetSystemMetrics(1);
                    }
                    inputs.dx = ((event.x - x) * 65535 + width - 2) / (width - 1);
                    inputs.dy = ((event.y - y) * 65535 + height - 2) / (height - 1);
                    ** GOTO lbl130
lbl85:
                    // 1 sources

                    if (type != 37) ** GOTO lbl103
                    if (OS.WIN32_VERSION < OS.VERSION(5, 0)) {
                        // ** MonitorExit[var2_2] (shouldn't be in output)
                        return false;
                    }
                    inputs.dwFlags = 2048;
                    switch (event.detail) {
                        case 2: {
                            inputs.mouseData = event.count * 120;
                            ** GOTO lbl130
                        }
                        case 1: {
                            value = new int[1];
                            OS.SystemParametersInfo(104, 0, value, 0);
                            inputs.mouseData = event.count * 120 / value[0];
                            ** GOTO lbl130
                        }
                        default: {
                            // ** MonitorExit[var2_2] (shouldn't be in output)
                            return false;
                        }
                    }
lbl103:
                    // 1 sources

                    switch (event.button) {
                        case 1: {
                            inputs.dwFlags = type == 3 ? 2 : 4;
                            break;
                        }
                        case 2: {
                            inputs.dwFlags = type == 3 ? 32 : 64;
                            break;
                        }
                        case 3: {
                            inputs.dwFlags = type == 3 ? 8 : 16;
                            break;
                        }
                        case 4: {
                            if (OS.WIN32_VERSION < OS.VERSION(5, 0)) {
                                // ** MonitorExit[var2_2] (shouldn't be in output)
                                return false;
                            }
                            inputs.dwFlags = type == 3 ? 128 : 256;
                            inputs.mouseData = 1;
                            break;
                        }
                        case 5: {
                            if (OS.WIN32_VERSION < OS.VERSION(5, 0)) {
                                // ** MonitorExit[var2_2] (shouldn't be in output)
                                return false;
                            }
                            inputs.dwFlags = type == 3 ? 128 : 256;
                            inputs.mouseData = 2;
                            break;
                        }
                        default: {
                            // ** MonitorExit[var2_2] (shouldn't be in output)
                            return false;
                        }
                    }
lbl130:
                    // 8 sources

                    hHeap = OS.GetProcessHeap();
                    pInputs = OS.HeapAlloc(hHeap, 8, INPUT.sizeof);
                    OS.MoveMemory(pInputs, new int[1], 4);
                    OS.MoveMemory(pInputs + OS.PTR_SIZEOF, inputs, MOUSEINPUT.sizeof);
                    result = OS.SendInput(1, pInputs, INPUT.sizeof) != 0;
                    OS.HeapFree(hHeap, 0, pInputs);
                    // ** MonitorExit[var2_2] (shouldn't be in output)
                    return result;
                }
            }
            // ** MonitorExit[var2_2] (shouldn't be in output)
            return false;
        }
    }

    void postEvent(Event event) {
        if (this.eventQueue == null) {
            this.eventQueue = new Event[4];
        }
        int index = 0;
        int length = this.eventQueue.length;
        while (index < length) {
            if (this.eventQueue[index] == null) break;
            ++index;
        }
        if (index == length) {
            Event[] newQueue = new Event[length + 4];
            System.arraycopy(this.eventQueue, 0, newQueue, 0, length);
            this.eventQueue = newQueue;
        }
        this.eventQueue[index] = event;
    }

    public boolean readAndDispatch() {
        this.checkDevice();
        lpStartupInfo = null;
        this.drawMenuBars();
        this.runSkin();
        this.runDeferredLayouts();
        this.runPopups();
        if (OS.PeekMessage(this.msg, 0, 0, 0, 1)) {
            if (!this.filterMessage(this.msg)) {
                OS.TranslateMessage(this.msg);
                OS.DispatchMessage(this.msg);
            }
            this.runDeferredEvents();
            return true;
        }
        return this.isDisposed() || this.runMessages && this.runAsyncMessages(false);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    static void register(Display display) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.swt.graphics.Device");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Class<?> clazz2 = clazz;
        synchronized (clazz) {
            int i = 0;
            while (i < Displays.length) {
                if (Displays[i] == null) {
                    Display.Displays[i] = display;
                    // ** MonitorExit[var1_1] (shouldn't be in output)
                    return;
                }
                ++i;
            }
            Display[] newDisplays = new Display[Displays.length + 4];
            System.arraycopy(Displays, 0, newDisplays, 0, Displays.length);
            newDisplays[Display.Displays.length] = display;
            Displays = newDisplays;
            // ** MonitorExit[var1_1] (shouldn't be in output)
            return;
        }
    }

    protected void release() {
        this.sendEvent(12, new Event());
        Shell[] shells = this.getShells();
        int i = 0;
        while (i < shells.length) {
            Shell shell = shells[i];
            if (!shell.isDisposed()) {
                shell.dispose();
            }
            ++i;
        }
        if (this.tray != null) {
            this.tray.dispose();
        }
        this.tray = null;
        if (this.taskBar != null) {
            this.taskBar.dispose();
        }
        this.taskBar = null;
        while (this.readAndDispatch()) {
        }
        if (this.disposeList != null) {
            i = 0;
            while (i < this.disposeList.length) {
                if (this.disposeList[i] != null) {
                    this.disposeList[i].run();
                }
                ++i;
            }
        }
        this.disposeList = null;
        this.synchronizer.releaseSynchronizer();
        this.synchronizer = null;
        this.releaseDisplay();
        super.release();
    }

    void releaseDisplay() {
        if (this.embeddedHwnd != 0) {
            OS.PostMessage(this.embeddedHwnd, 32771, 0, 0);
        }
        if (OS.COMCTL32_MAJOR >= 6) {
            if (this.hButtonTheme != 0) {
                OS.CloseThemeData(this.hButtonTheme);
            }
            if (this.hEditTheme != 0) {
                OS.CloseThemeData(this.hEditTheme);
            }
            if (this.hExplorerBarTheme != 0) {
                OS.CloseThemeData(this.hExplorerBarTheme);
            }
            if (this.hScrollBarTheme != 0) {
                OS.CloseThemeData(this.hScrollBarTheme);
            }
            if (this.hTabTheme != 0) {
                OS.CloseThemeData(this.hTabTheme);
            }
            this.hTabTheme = 0;
            this.hScrollBarTheme = 0;
            this.hExplorerBarTheme = 0;
            this.hEditTheme = 0;
            this.hButtonTheme = 0;
        }
        if (!OS.IsWinCE) {
            if (this.msgHook != 0) {
                OS.UnhookWindowsHookEx(this.msgHook);
            }
            this.msgHook = 0;
        }
        if (!OS.IsWinCE) {
            if (this.filterHook != 0) {
                OS.UnhookWindowsHookEx(this.filterHook);
            }
            this.filterHook = 0;
            this.msgFilterCallback.dispose();
            this.msgFilterCallback = null;
            this.msgFilterProc = 0;
        }
        if (!OS.IsWinCE) {
            if (this.idleHook != 0) {
                OS.UnhookWindowsHookEx(this.idleHook);
            }
            this.idleHook = 0;
            this.foregroundIdleCallback.dispose();
            this.foregroundIdleCallback = null;
            this.foregroundIdleProc = 0;
        }
        OS.KillTimer(this.hwndMessage, 100);
        if (this.hwndMessage != 0) {
            OS.DestroyWindow(this.hwndMessage);
        }
        this.hwndMessage = 0;
        this.messageCallback.dispose();
        this.messageCallback = null;
        this.messageProc = 0;
        int hHeap = OS.GetProcessHeap();
        int hInstance = OS.GetModuleHandle(null);
        OS.UnregisterClass(this.windowClass, hInstance);
        OS.UnregisterClass(this.windowShadowClass, hInstance);
        OS.UnregisterClass(this.windowOwnDCClass, hInstance);
        this.windowOwnDCClass = null;
        this.windowShadowClass = null;
        this.windowClass = null;
        this.windowCallback.dispose();
        this.windowCallback = null;
        this.windowProc = 0;
        if (this.systemFont != null) {
            this.systemFont.dispose();
        }
        this.systemFont = null;
        this.lfSystemFont = null;
        if (this.errorImage != null) {
            this.errorImage.dispose();
        }
        if (this.infoImage != null) {
            this.infoImage.dispose();
        }
        if (this.questionImage != null) {
            this.questionImage.dispose();
        }
        if (this.warningIcon != null) {
            this.warningIcon.dispose();
        }
        this.warningIcon = null;
        this.questionImage = null;
        this.infoImage = null;
        this.errorImage = null;
        if (this.upArrow != null) {
            this.upArrow.dispose();
        }
        if (this.downArrow != null) {
            this.downArrow.dispose();
        }
        this.downArrow = null;
        this.upArrow = null;
        int i = 0;
        while (i < this.cursors.length) {
            if (this.cursors[i] != null) {
                this.cursors[i].dispose();
            }
            ++i;
        }
        this.cursors = null;
        if (this.resources != null) {
            i = 0;
            while (i < this.resources.length) {
                if (this.resources[i] != null) {
                    this.resources[i].dispose();
                }
                ++i;
            }
            this.resources = null;
        }
        if (this.lpCustColors != 0) {
            OS.HeapFree(hHeap, 0, this.lpCustColors);
        }
        this.lpCustColors = 0;
        if (!OS.IsWinCE) {
            OS.OleUninitialize();
        }
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
            OS.BufferedPaintUnInit();
        }
        this.thread = null;
        this.hookMsg = null;
        this.msg = null;
        this.keyboard = null;
        this.modalDialog = null;
        this.modalShells = null;
        this.data = null;
        this.keys = null;
        this.values = null;
        this.popups = null;
        this.bars = null;
        this.indexTable = null;
        this.timerIds = null;
        this.controlTable = null;
        this.lastHittestControl = null;
        this.lastGetControl = null;
        this.lastControl = null;
        this.toolDisabledImageList = null;
        this.toolHotImageList = null;
        this.toolImageList = null;
        this.imageList = null;
        this.timerList = null;
        this.tableBuffer = null;
        this.columnVisible = null;
        this.filterTable = null;
        this.eventTable = null;
        this.items = null;
        this.clickRect = null;
        this.hdr = null;
        this.plvfi = null;
        this.monitors = null;
        this.touchSources = null;
        this.threadId = 0;
    }

    void releaseImageList(ImageList list) {
        int i = 0;
        int length = this.imageList.length;
        while (i < length) {
            if (this.imageList[i] == list) {
                if (list.removeRef() > 0) {
                    return;
                }
                list.dispose();
                System.arraycopy(this.imageList, i + 1, this.imageList, i, --length - i);
                this.imageList[length] = null;
                int j = 0;
                while (j < length) {
                    if (this.imageList[j] != null) {
                        return;
                    }
                    ++j;
                }
                this.imageList = null;
                return;
            }
            ++i;
        }
    }

    void releaseToolImageList(ImageList list) {
        int i = 0;
        int length = this.toolImageList.length;
        while (i < length) {
            if (this.toolImageList[i] == list) {
                if (list.removeRef() > 0) {
                    return;
                }
                list.dispose();
                System.arraycopy(this.toolImageList, i + 1, this.toolImageList, i, --length - i);
                this.toolImageList[length] = null;
                int j = 0;
                while (j < length) {
                    if (this.toolImageList[j] != null) {
                        return;
                    }
                    ++j;
                }
                this.toolImageList = null;
                return;
            }
            ++i;
        }
    }

    void releaseToolHotImageList(ImageList list) {
        int i = 0;
        int length = this.toolHotImageList.length;
        while (i < length) {
            if (this.toolHotImageList[i] == list) {
                if (list.removeRef() > 0) {
                    return;
                }
                list.dispose();
                System.arraycopy(this.toolHotImageList, i + 1, this.toolHotImageList, i, --length - i);
                this.toolHotImageList[length] = null;
                int j = 0;
                while (j < length) {
                    if (this.toolHotImageList[j] != null) {
                        return;
                    }
                    ++j;
                }
                this.toolHotImageList = null;
                return;
            }
            ++i;
        }
    }

    void releaseToolDisabledImageList(ImageList list) {
        int i = 0;
        int length = this.toolDisabledImageList.length;
        while (i < length) {
            if (this.toolDisabledImageList[i] == list) {
                if (list.removeRef() > 0) {
                    return;
                }
                list.dispose();
                System.arraycopy(this.toolDisabledImageList, i + 1, this.toolDisabledImageList, i, --length - i);
                this.toolDisabledImageList[length] = null;
                int j = 0;
                while (j < length) {
                    if (this.toolDisabledImageList[j] != null) {
                        return;
                    }
                    ++j;
                }
                this.toolDisabledImageList = null;
                return;
            }
            ++i;
        }
    }

    public void removeFilter(int eventType, Listener listener) {
        this.checkDevice();
        if (listener == null) {
            this.error(4);
        }
        if (this.filterTable == null) {
            return;
        }
        this.filterTable.unhook(eventType, listener);
        if (this.filterTable.size() == 0) {
            this.filterTable = null;
        }
    }

    public void removeListener(int eventType, Listener listener) {
        this.checkDevice();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(eventType, listener);
    }

    void removeBar(Menu menu) {
        if (this.bars == null) {
            return;
        }
        int i = 0;
        while (i < this.bars.length) {
            if (this.bars[i] == menu) {
                this.bars[i] = null;
                return;
            }
            ++i;
        }
    }

    Control removeControl(int handle) {
        int index;
        if (handle == 0) {
            return null;
        }
        this.lastGetControl = null;
        this.lastControl = null;
        Control control = null;
        if (USE_PROPERTY) {
            index = OS.RemoveProp(handle, SWT_OBJECT_INDEX) - 1;
        } else {
            index = OS.GetWindowLongPtr(handle, -21) - 1;
            OS.SetWindowLongPtr(handle, -21, 0);
        }
        if (index >= 0 && index < this.controlTable.length) {
            control = this.controlTable[index];
            this.controlTable[index] = null;
            this.indexTable[index] = this.freeSlot;
            this.freeSlot = index;
        }
        return control;
    }

    void removeMenuItem(MenuItem item) {
        if (this.items == null) {
            return;
        }
        this.items[item.id - 108] = null;
    }

    void removePopup(Menu menu) {
        if (this.popups == null) {
            return;
        }
        int i = 0;
        while (i < this.popups.length) {
            if (this.popups[i] == menu) {
                this.popups[i] = null;
                return;
            }
            ++i;
        }
    }

    boolean runAsyncMessages(boolean all) {
        return this.synchronizer.runAsyncMessages(all);
    }

    boolean runDeferredEvents() {
        boolean run = false;
        while (this.eventQueue != null) {
            Widget item;
            Event event = this.eventQueue[0];
            if (event == null) break;
            int length = this.eventQueue.length;
            System.arraycopy(this.eventQueue, 1, this.eventQueue, 0, --length);
            this.eventQueue[length] = null;
            Widget widget = event.widget;
            if (widget == null || widget.isDisposed() || (item = event.item) != null && item.isDisposed()) continue;
            run = true;
            widget.sendEvent(event);
        }
        this.eventQueue = null;
        return run;
    }

    boolean runDeferredLayouts() {
        if (this.layoutDeferredCount != 0) {
            Composite[] temp = this.layoutDeferred;
            int count = this.layoutDeferredCount;
            this.layoutDeferred = null;
            this.layoutDeferredCount = 0;
            int i = 0;
            while (i < count) {
                Composite comp = temp[i];
                if (!comp.isDisposed()) {
                    comp.setLayoutDeferred(false);
                }
                ++i;
            }
            return true;
        }
        return false;
    }

    boolean runPopups() {
        if (this.popups == null) {
            return false;
        }
        boolean result = false;
        while (this.popups != null) {
            Menu menu = this.popups[0];
            if (menu == null) break;
            int length = this.popups.length;
            System.arraycopy(this.popups, 1, this.popups, 0, --length);
            this.popups[length] = null;
            this.runDeferredEvents();
            if (!menu.isDisposed()) {
                menu._setVisible(true);
            }
            result = true;
        }
        this.popups = null;
        return result;
    }

    void runSettings() {
        Font oldFont = this.getSystemFont();
        this.saveResources();
        this.updateImages();
        this.sendEvent(39, null);
        Font newFont = this.getSystemFont();
        boolean sameFont = oldFont.equals(newFont);
        Shell[] shells = this.getShells();
        int i = 0;
        while (i < shells.length) {
            Shell shell = shells[i];
            if (!shell.isDisposed()) {
                if (!sameFont) {
                    shell.updateFont(oldFont, newFont);
                }
                shell.layout(true, true);
            }
            ++i;
        }
    }

    boolean runSkin() {
        if (this.skinCount > 0) {
            Widget[] oldSkinWidgets = this.skinList;
            int count = this.skinCount;
            this.skinList = new Widget[1024];
            this.skinCount = 0;
            if (this.eventTable != null && this.eventTable.hooks(45)) {
                int i = 0;
                while (i < count) {
                    Widget widget = oldSkinWidgets[i];
                    if (widget != null && !widget.isDisposed()) {
                        widget.state &= 0xFFDFFFFF;
                        oldSkinWidgets[i] = null;
                        Event event = new Event();
                        event.widget = widget;
                        this.sendEvent(45, event);
                    }
                    ++i;
                }
            }
            return true;
        }
        return false;
    }

    boolean runTimer(int id) {
        if (this.timerList != null && this.timerIds != null) {
            int index = 0;
            while (index < this.timerIds.length) {
                if (this.timerIds[index] == id) {
                    OS.KillTimer(this.hwndMessage, this.timerIds[index]);
                    this.timerIds[index] = 0;
                    Runnable runnable = this.timerList[index];
                    this.timerList[index] = null;
                    if (runnable != null) {
                        runnable.run();
                    }
                    return true;
                }
                ++index;
            }
        }
        return false;
    }

    void saveResources() {
        int resourceCount = 0;
        if (this.resources == null) {
            this.resources = new Resource[27];
        } else {
            resourceCount = this.resources.length;
            Resource[] newResources = new Resource[resourceCount + 27];
            System.arraycopy(this.resources, 0, newResources, 0, resourceCount);
            this.resources = newResources;
        }
        if (this.systemFont != null && !OS.IsWinCE) {
            NONCLIENTMETRICS info = OS.IsUnicode ? new NONCLIENTMETRICSW() : new NONCLIENTMETRICSA();
            info.cbSize = NONCLIENTMETRICS.sizeof;
            if (OS.SystemParametersInfo(41, 0, info, 0)) {
                LOGFONT logFont;
                LOGFONT lOGFONT = logFont = OS.IsUnicode ? info.lfMessageFont : ((NONCLIENTMETRICSA)info).lfMessageFont;
                if (this.lfSystemFont == null || logFont.lfCharSet != this.lfSystemFont.lfCharSet || logFont.lfHeight != this.lfSystemFont.lfHeight || logFont.lfWidth != this.lfSystemFont.lfWidth || logFont.lfEscapement != this.lfSystemFont.lfEscapement || logFont.lfOrientation != this.lfSystemFont.lfOrientation || logFont.lfWeight != this.lfSystemFont.lfWeight || logFont.lfItalic != this.lfSystemFont.lfItalic || logFont.lfUnderline != this.lfSystemFont.lfUnderline || logFont.lfStrikeOut != this.lfSystemFont.lfStrikeOut || logFont.lfCharSet != this.lfSystemFont.lfCharSet || logFont.lfOutPrecision != this.lfSystemFont.lfOutPrecision || logFont.lfClipPrecision != this.lfSystemFont.lfClipPrecision || logFont.lfQuality != this.lfSystemFont.lfQuality || logFont.lfPitchAndFamily != this.lfSystemFont.lfPitchAndFamily || !this.getFontName(logFont).equals(this.getFontName(this.lfSystemFont))) {
                    this.resources[resourceCount++] = this.systemFont;
                    this.lfSystemFont = logFont;
                    this.systemFont = null;
                }
            }
        }
        if (this.errorImage != null) {
            this.resources[resourceCount++] = this.errorImage;
        }
        if (this.infoImage != null) {
            this.resources[resourceCount++] = this.infoImage;
        }
        if (this.questionImage != null) {
            this.resources[resourceCount++] = this.questionImage;
        }
        if (this.warningIcon != null) {
            this.resources[resourceCount++] = this.warningIcon;
        }
        this.warningIcon = null;
        this.questionImage = null;
        this.infoImage = null;
        this.errorImage = null;
        int i = 0;
        while (i < this.cursors.length) {
            if (this.cursors[i] != null) {
                this.resources[resourceCount++] = this.cursors[i];
            }
            this.cursors[i] = null;
            ++i;
        }
        if (resourceCount < 27) {
            Resource[] newResources = new Resource[resourceCount];
            System.arraycopy(this.resources, 0, newResources, 0, resourceCount);
            this.resources = newResources;
        }
    }

    void sendEvent(int eventType, Event event) {
        if (this.eventTable == null && this.filterTable == null) {
            return;
        }
        if (event == null) {
            event = new Event();
        }
        event.display = this;
        event.type = eventType;
        if (event.time == 0) {
            event.time = this.getLastEventTime();
        }
        if (!this.filterEvent(event) && this.eventTable != null) {
            this.eventTable.sendEvent(event);
        }
    }

    public void setCursorLocation(int x, int y) {
        this.checkDevice();
        OS.SetCursorPos(x, y);
    }

    public void setCursorLocation(Point point) {
        this.checkDevice();
        if (point == null) {
            this.error(4);
        }
        this.setCursorLocation(point.x, point.y);
    }

    public void setData(String key, Object value) {
        this.checkDevice();
        if (key == null) {
            this.error(4);
        }
        if (key.equals(RUN_MESSAGES_IN_IDLE_KEY)) {
            Boolean data = (Boolean)value;
            this.runMessagesInIdle = data != null && data != false;
            return;
        }
        if (key.equals(RUN_MESSAGES_IN_MESSAGE_PROC_KEY)) {
            Boolean data = (Boolean)value;
            this.runMessagesInMessageProc = data != null && data != false;
            return;
        }
        if (key.equals(USE_OWNDC_KEY)) {
            Boolean data = (Boolean)value;
            this.useOwnDC = data != null && data != false;
            return;
        }
        if (key.equals(ACCEL_KEY_HIT)) {
            Boolean data = (Boolean)value;
            this.accelKeyHit = data != null && data != false;
            return;
        }
        if (value == null) {
            if (this.keys == null) {
                return;
            }
            int index = 0;
            while (index < this.keys.length && !this.keys[index].equals(key)) {
                ++index;
            }
            if (index == this.keys.length) {
                return;
            }
            if (this.keys.length == 1) {
                this.keys = null;
                this.values = null;
            } else {
                String[] newKeys = new String[this.keys.length - 1];
                Object[] newValues = new Object[this.values.length - 1];
                System.arraycopy(this.keys, 0, newKeys, 0, index);
                System.arraycopy(this.keys, index + 1, newKeys, index, newKeys.length - index);
                System.arraycopy(this.values, 0, newValues, 0, index);
                System.arraycopy(this.values, index + 1, newValues, index, newValues.length - index);
                this.keys = newKeys;
                this.values = newValues;
            }
            return;
        }
        if (this.keys == null) {
            this.keys = new String[]{key};
            this.values = new Object[]{value};
            return;
        }
        int i = 0;
        while (i < this.keys.length) {
            if (this.keys[i].equals(key)) {
                this.values[i] = value;
                return;
            }
            ++i;
        }
        String[] newKeys = new String[this.keys.length + 1];
        Object[] newValues = new Object[this.values.length + 1];
        System.arraycopy(this.keys, 0, newKeys, 0, this.keys.length);
        System.arraycopy(this.values, 0, newValues, 0, this.values.length);
        newKeys[this.keys.length] = key;
        newValues[this.values.length] = value;
        this.keys = newKeys;
        this.values = newValues;
    }

    public void setData(Object data) {
        this.checkDevice();
        this.data = data;
    }

    public static String getAppName() {
        return APP_NAME;
    }

    public static String getAppVersion() {
        return APP_VERSION;
    }

    public static void setAppName(String name) {
        APP_NAME = name;
    }

    public static void setAppVersion(String version) {
        APP_VERSION = version;
    }

    void setModalDialog(Dialog modalDailog) {
        this.modalDialog = modalDailog;
        Shell[] shells = this.getShells();
        int i = 0;
        while (i < shells.length) {
            shells[i].updateModal();
            ++i;
        }
    }

    void setModalShell(Shell shell) {
        if (this.modalShells == null) {
            this.modalShells = new Shell[4];
        }
        int index = 0;
        int length = this.modalShells.length;
        while (index < length) {
            if (this.modalShells[index] == shell) {
                return;
            }
            if (this.modalShells[index] == null) break;
            ++index;
        }
        if (index == length) {
            Shell[] newModalShells = new Shell[length + 4];
            System.arraycopy(this.modalShells, 0, newModalShells, 0, length);
            this.modalShells = newModalShells;
        }
        this.modalShells[index] = shell;
        Shell[] shells = this.getShells();
        int i = 0;
        while (i < shells.length) {
            shells[i].updateModal();
            ++i;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void setSynchronizer(Synchronizer synchronizer) {
        this.checkDevice();
        if (synchronizer == null) {
            this.error(4);
        }
        if (synchronizer == this.synchronizer) {
            return;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.swt.graphics.Device");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Class<?> clazz2 = clazz;
        synchronized (clazz) {
            Synchronizer oldSynchronizer = this.synchronizer;
            this.synchronizer = synchronizer;
            // ** MonitorExit[var3_2] (shouldn't be in output)
            if (oldSynchronizer != null) {
                oldSynchronizer.runAsyncMessages(true);
            }
            return;
        }
    }

    int shiftedKey(int key) {
        if (OS.IsWinCE) {
            return 0;
        }
        int i = 0;
        while (i < this.keyboard.length) {
            this.keyboard[i] = 0;
            ++i;
        }
        this.keyboard[16] = (byte)(this.keyboard[16] | 0x80);
        if (OS.IsUnicode) {
            char[] result = new char[1];
            if (OS.ToUnicode(key, key, this.keyboard, result, 1, 0) == 1) {
                return result[0];
            }
        } else {
            short[] result = new short[1];
            if (OS.ToAscii(key, key, this.keyboard, result, 0) == 1) {
                return result[0];
            }
        }
        return 0;
    }

    public boolean sleep() {
        this.checkDevice();
        if (this.runMessages && this.getMessageCount() != 0) {
            return true;
        }
        if (OS.IsWinCE) {
            OS.MsgWaitForMultipleObjectsEx(0, 0, -1, 127, 4);
            return true;
        }
        return OS.WaitMessage();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void syncExec(Runnable runnable) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.swt.graphics.Device");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Class<?> clazz2 = clazz;
        synchronized (clazz) {
            if (this.isDisposed()) {
                this.error(45);
            }
            Synchronizer synchronizer = this.synchronizer;
            // ** MonitorExit[var3_2] (shouldn't be in output)
            synchronizer.syncExec(runnable);
            return;
        }
    }

    public void timerExec(int milliseconds, Runnable runnable) {
        int newTimerID;
        this.checkDevice();
        if (runnable == null) {
            this.error(4);
        }
        if (this.timerList == null) {
            this.timerList = new Runnable[4];
        }
        if (this.timerIds == null) {
            this.timerIds = new int[4];
        }
        int index = 0;
        while (index < this.timerList.length) {
            if (this.timerList[index] == runnable) break;
            ++index;
        }
        int timerId = 0;
        if (index != this.timerList.length) {
            timerId = this.timerIds[index];
            if (milliseconds < 0) {
                OS.KillTimer(this.hwndMessage, timerId);
                this.timerList[index] = null;
                this.timerIds[index] = 0;
                return;
            }
        } else {
            if (milliseconds < 0) {
                return;
            }
            index = 0;
            while (index < this.timerList.length) {
                if (this.timerList[index] == null) break;
                ++index;
            }
            timerId = this.nextTimerId++;
            if (index == this.timerList.length) {
                Runnable[] newTimerList = new Runnable[this.timerList.length + 4];
                System.arraycopy(this.timerList, 0, newTimerList, 0, this.timerList.length);
                this.timerList = newTimerList;
                int[] newTimerIds = new int[this.timerIds.length + 4];
                System.arraycopy(this.timerIds, 0, newTimerIds, 0, this.timerIds.length);
                this.timerIds = newTimerIds;
            }
        }
        if ((newTimerID = OS.SetTimer(this.hwndMessage, timerId, milliseconds, 0)) != 0) {
            this.timerList[index] = runnable;
            this.timerIds[index] = newTimerID;
        }
    }

    boolean translateAccelerator(MSG msg, Control control) {
        this.accelKeyHit = true;
        boolean result = control.translateAccelerator(msg);
        this.accelKeyHit = false;
        return result;
    }

    static int translateKey(int key) {
        int i = 0;
        while (i < KeyTable.length) {
            if (KeyTable[i][0] == key) {
                return KeyTable[i][1];
            }
            ++i;
        }
        return 0;
    }

    boolean translateMnemonic(MSG msg, Control control) {
        switch (msg.message) {
            case 258: 
            case 262: {
                return control.translateMnemonic(msg);
            }
        }
        return false;
    }

    boolean translateTraversal(MSG msg, Control control) {
        switch (msg.message) {
            case 256: {
                switch (msg.wParam) {
                    case 9: 
                    case 13: 
                    case 27: 
                    case 33: 
                    case 34: 
                    case 37: 
                    case 38: 
                    case 39: 
                    case 40: {
                        return control.translateTraversal(msg);
                    }
                }
                break;
            }
            case 260: {
                switch (msg.wParam) {
                    case 18: {
                        return control.translateTraversal(msg);
                    }
                }
            }
        }
        return false;
    }

    static int untranslateKey(int key) {
        int i = 0;
        while (i < KeyTable.length) {
            if (KeyTable[i][1] == key) {
                return KeyTable[i][0];
            }
            ++i;
        }
        return 0;
    }

    public void update() {
        this.checkDevice();
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(4, 10) && OS.IsHungAppWindow(this.hwndMessage)) {
            MSG msg = new MSG();
            int flags = 3;
            OS.PeekMessage(msg, this.hwndMessage, 32773, 32773, flags);
        }
        Shell[] shells = this.getShells();
        int i = 0;
        while (i < shells.length) {
            Shell shell = shells[i];
            if (!shell.isDisposed()) {
                shell.update(true);
            }
            ++i;
        }
    }

    void updateImages() {
        if (this.upArrow != null) {
            this.upArrow.dispose();
        }
        if (this.downArrow != null) {
            this.downArrow.dispose();
        }
        this.downArrow = null;
        this.upArrow = null;
        int i = 0;
        while (i < this.controlTable.length) {
            Control control = this.controlTable[i];
            if (control != null) {
                control.updateImages();
            }
            ++i;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void wake() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.swt.graphics.Device");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Class<?> clazz2 = clazz;
        synchronized (clazz) {
            if (this.isDisposed()) {
                this.error(45);
            }
            if (this.thread == Thread.currentThread()) {
                // ** MonitorExit[var1_1] (shouldn't be in output)
                return;
            }
            this.wakeThread();
            // ** MonitorExit[var1_1] (shouldn't be in output)
            return;
        }
    }

    void wakeThread() {
        if (OS.IsWinCE) {
            OS.PostMessage(this.hwndMessage, 0, 0, 0);
        } else {
            OS.PostThreadMessage(this.threadId, 0, 0, 0);
        }
    }

    static int wcsToMbcs(char ch, int codePage) {
        if (OS.IsUnicode) {
            return ch;
        }
        if (ch <= '\u007f') {
            return ch;
        }
        TCHAR buffer = new TCHAR(codePage, ch, false);
        return buffer.tcharAt(0);
    }

    static int wcsToMbcs(char ch) {
        return Display.wcsToMbcs(ch, 0);
    }

    int windowProc(int hwnd, int msg, int wParam, int lParam) {
        Control control;
        if (this.columnVisible != null && msg == 78 && this.hwndParent == hwnd) {
            OS.MoveMemory(this.hdr, lParam, NMHDR.sizeof);
            switch (this.hdr.code) {
                case -177: 
                case -150: {
                    OS.MoveMemory(this.plvfi, lParam, NMLVDISPINFO.sizeof);
                    if (this.plvfi.iSubItem < 0 || this.plvfi.iSubItem >= this.columnCount || this.columnVisible[this.plvfi.iSubItem]) break;
                    return 0;
                }
            }
        }
        if (msg == TASKBARBUTTONCREATED && this.taskBar != null) {
            TaskItem[] items = this.taskBar.items;
            int i = 0;
            while (i < items.length) {
                TaskItem item = items[i];
                if (item != null && item.shell != null && item.shell.handle == hwnd) {
                    item.recreate();
                    break;
                }
                ++i;
            }
        }
        if (msg == 132) {
            if (this.hitCount++ >= 1024) {
                try {
                    Thread.sleep(1L);
                }
                catch (Throwable throwable) {}
            }
        } else {
            this.hitCount = 0;
        }
        if (this.lastControl != null && this.lastHwnd == hwnd) {
            return this.lastControl.windowProc(hwnd, msg, wParam, lParam);
        }
        int index = USE_PROPERTY ? OS.GetProp(hwnd, SWT_OBJECT_INDEX) - 1 : OS.GetWindowLongPtr(hwnd, -21) - 1;
        if (index >= 0 && index < this.controlTable.length && (control = this.controlTable[index]) != null) {
            this.lastHwnd = hwnd;
            this.lastControl = control;
            return control.windowProc(hwnd, msg, wParam, lParam);
        }
        return OS.DefWindowProc(hwnd, msg, wParam, lParam);
    }

    static String withCrLf(String string) {
        int length = string.length();
        if (length == 0) {
            return string;
        }
        int i = string.indexOf(10, 0);
        if (i == -1) {
            return string;
        }
        if (i > 0 && string.charAt(i - 1) == '\r') {
            return string;
        }
        ++i;
        int count = 1;
        while (i < length) {
            if ((i = string.indexOf(10, i)) == -1) break;
            ++count;
            ++i;
        }
        i = 0;
        StringBuffer result = new StringBuffer(count += length);
        while (i < length) {
            int j = string.indexOf(10, i);
            if (j == -1) {
                j = length;
            }
            result.append(string.substring(i, j));
            i = j;
            if (i >= length) continue;
            result.append("\r\n");
            ++i;
        }
        return result.toString();
    }

    static char[] withCrLf(char[] string) {
        int length = string.length;
        if (length == 0) {
            return string;
        }
        int count = 0;
        int i = 0;
        while (i < string.length) {
            if (string[i] == '\n' && ++count == 1 && i > 0 && string[i - 1] == '\r') {
                return string;
            }
            ++i;
        }
        if (count == 0) {
            return string;
        }
        char[] result = new char[count += length];
        int i2 = 0;
        int j = 0;
        while (i2 < length && j < count) {
            if (string[i2] == '\n') {
                result[j++] = 13;
            }
            result[j++] = string[i2];
            ++i2;
        }
        return result;
    }
}

