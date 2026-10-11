/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.SWT;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.GCData;
import org.eclipse.swt.internal.SWTEventListener;
import org.eclipse.swt.internal.win32.LRESULT;
import org.eclipse.swt.internal.win32.MSG;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.PAINTSTRUCT;
import org.eclipse.swt.internal.win32.POINT;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.SHRGINFO;
import org.eclipse.swt.internal.win32.TRACKMOUSEEVENT;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.EventTable;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.TypedListener;

public abstract class Widget {
    int style;
    int state;
    Display display;
    EventTable eventTable;
    Object data;
    static final int DISPOSED = 1;
    static final int CANVAS = 2;
    static final int KEYED_DATA = 4;
    static final int DISABLED = 8;
    static final int HIDDEN = 16;
    static final int LAYOUT_NEEDED = 32;
    static final int LAYOUT_CHANGED = 64;
    static final int LAYOUT_CHILD = 128;
    static final int THEME_BACKGROUND = 256;
    static final int DRAW_BACKGROUND = 512;
    static final int PARENT_BACKGROUND = 1024;
    static final int RELEASED = 2048;
    static final int DISPOSE_SENT = 4096;
    static final int TRACK_MOUSE = 8192;
    static final int FOREIGN_HANDLE = 16384;
    static final int DRAG_DETECT = 32768;
    static final int MOVE_OCCURRED = 65536;
    static final int MOVE_DEFERRED = 131072;
    static final int RESIZE_OCCURRED = 262144;
    static final int RESIZE_DEFERRED = 524288;
    static final int IGNORE_WM_CHANGEUISTATE = 0x100000;
    static final int SKIN_NEEDED = 0x200000;
    static final int DEFAULT_WIDTH = 64;
    static final int DEFAULT_HEIGHT = 64;
    static final int MAJOR = 5;
    static final int MINOR = 80;

    static {
        if (!OS.IsWinCE && OS.COMCTL32_VERSION < OS.VERSION(5, 80)) {
            System.out.println("***WARNING: SWT requires comctl32.dll version 5.80 or greater");
            System.out.println("***WARNING: Detected: " + OS.COMCTL32_MAJOR + "." + OS.COMCTL32_MINOR);
        }
        OS.InitCommonControls();
    }

    Widget() {
    }

    public Widget(Widget parent, int style) {
        this.checkSubclass();
        this.checkParent(parent);
        this.style = style;
        this.display = parent.display;
        this.reskinWidget();
    }

    void _addListener(int eventType, Listener listener) {
        if (this.eventTable == null) {
            this.eventTable = new EventTable();
        }
        this.eventTable.hook(eventType, listener);
    }

    public void addListener(int eventType, Listener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        this._addListener(eventType, listener);
    }

    public void addDisposeListener(DisposeListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(12, typedListener);
    }

    int callWindowProc(int hwnd, int msg, int wParam, int lParam) {
        return 0;
    }

    static int checkBits(int style, int int0, int int1, int int2, int int3, int int4, int int5) {
        int mask = int0 | int1 | int2 | int3 | int4 | int5;
        if ((style & mask) == 0) {
            style |= int0;
        }
        if ((style & int0) != 0) {
            style = style & ~mask | int0;
        }
        if ((style & int1) != 0) {
            style = style & ~mask | int1;
        }
        if ((style & int2) != 0) {
            style = style & ~mask | int2;
        }
        if ((style & int3) != 0) {
            style = style & ~mask | int3;
        }
        if ((style & int4) != 0) {
            style = style & ~mask | int4;
        }
        if ((style & int5) != 0) {
            style = style & ~mask | int5;
        }
        return style;
    }

    void checkOrientation(Widget parent) {
        this.style &= 0xF7FFFFFF;
        if ((this.style & 0x6000000) == 0 && parent != null) {
            if ((parent.style & 0x2000000) != 0) {
                this.style |= 0x2000000;
            }
            if ((parent.style & 0x4000000) != 0) {
                this.style |= 0x4000000;
            }
        }
        this.style = Widget.checkBits(this.style, 0x2000000, 0x4000000, 0, 0, 0, 0);
    }

    void checkOpened() {
    }

    void checkParent(Widget parent) {
        if (parent == null) {
            this.error(4);
        }
        if (parent.isDisposed()) {
            this.error(5);
        }
        parent.checkWidget();
        parent.checkOpened();
    }

    protected void checkSubclass() {
        if (!this.isValidSubclass()) {
            this.error(43);
        }
    }

    protected void checkWidget() {
        Display display = this.display;
        if (display == null) {
            this.error(24);
        }
        if (display.thread != Thread.currentThread() && display.threadId != OS.GetCurrentThreadId()) {
            this.error(22);
        }
        if ((this.state & 1) != 0) {
            this.error(24);
        }
    }

    void destroyWidget() {
        this.releaseHandle();
    }

    int DeferWindowPos(int hWinPosInfo, int hWnd, int hWndInsertAfter, int X, int Y, int cx, int cy, int uFlags) {
        if (OS.IsWinCE && (uFlags & 1) == 0) {
            RECT lpRect = new RECT();
            OS.GetWindowRect(hWnd, lpRect);
            if (cy == lpRect.bottom - lpRect.top && cx == lpRect.right - lpRect.left) {
                uFlags &= 0xFFFFFFDF;
                uFlags |= 1;
            }
        }
        return OS.DeferWindowPos(hWinPosInfo, hWnd, hWndInsertAfter, X, Y, cx, cy, uFlags);
    }

    public void dispose() {
        if (this.isDisposed()) {
            return;
        }
        if (!this.isValidThread()) {
            this.error(22);
        }
        this.release(true);
    }

    boolean dragDetect(int hwnd, int x, int y, boolean filter, boolean[] detect, boolean[] consume) {
        if (consume != null) {
            consume[0] = false;
        }
        if (detect != null) {
            detect[0] = true;
        }
        POINT pt = new POINT();
        pt.x = x;
        pt.y = y;
        OS.ClientToScreen(hwnd, pt);
        return OS.DragDetect(hwnd, pt);
    }

    void error(int code) {
        SWT.error(code);
    }

    boolean filters(int eventType) {
        return this.display.filters(eventType);
    }

    Widget findItem(int id) {
        return null;
    }

    char[] fixMnemonic(String string) {
        return this.fixMnemonic(string, false);
    }

    char[] fixMnemonic(String string, boolean spaces) {
        char[] buffer = new char[string.length() + 1];
        string.getChars(0, string.length(), buffer, 0);
        int i = 0;
        int j = 0;
        while (i < buffer.length) {
            if (buffer[i] == '&') {
                if (i + 1 < buffer.length && buffer[i + 1] == '&') {
                    buffer[j++] = spaces ? 32 : buffer[i];
                    ++i;
                }
                ++i;
                continue;
            }
            buffer[j++] = buffer[i++];
        }
        while (j < buffer.length) {
            buffer[j++] = '\u0000';
        }
        return buffer;
    }

    public Object getData() {
        this.checkWidget();
        return (this.state & 4) != 0 ? ((Object[])this.data)[0] : this.data;
    }

    public Object getData(String key) {
        this.checkWidget();
        if (key == null) {
            this.error(4);
        }
        if ((this.state & 4) != 0) {
            Object[] table = (Object[])this.data;
            int i = 1;
            while (i < table.length) {
                if (key.equals(table[i])) {
                    return table[i + 1];
                }
                i += 2;
            }
        }
        return null;
    }

    public Display getDisplay() {
        Display display = this.display;
        if (display == null) {
            this.error(24);
        }
        return display;
    }

    public Listener[] getListeners(int eventType) {
        this.checkWidget();
        if (this.eventTable == null) {
            return new Listener[0];
        }
        return this.eventTable.getListeners(eventType);
    }

    Menu getMenu() {
        return null;
    }

    String getName() {
        String string = this.getClass().getName();
        int index = string.lastIndexOf(46);
        if (index == -1) {
            return string;
        }
        return string.substring(index + 1, string.length());
    }

    String getNameText() {
        return "";
    }

    public int getStyle() {
        this.checkWidget();
        return this.style;
    }

    boolean hooks(int eventType) {
        if (this.eventTable == null) {
            return false;
        }
        return this.eventTable.hooks(eventType);
    }

    public boolean isDisposed() {
        return (this.state & 1) != 0;
    }

    public boolean isListening(int eventType) {
        this.checkWidget();
        return this.hooks(eventType);
    }

    boolean isValidSubclass() {
        return Display.isValidClass(this.getClass());
    }

    boolean isValidThread() {
        return this.getDisplay().isValidThread();
    }

    void mapEvent(int hwnd, Event event) {
    }

    GC new_GC(GCData data) {
        return null;
    }

    public void notifyListeners(int eventType, Event event) {
        this.checkWidget();
        if (event == null) {
            event = new Event();
        }
        this.sendEvent(eventType, event);
    }

    void postEvent(int eventType) {
        this.sendEvent(eventType, null, false);
    }

    void postEvent(int eventType, Event event) {
        this.sendEvent(eventType, event, false);
    }

    void release(boolean destroy) {
        if ((this.state & 0x1000) == 0) {
            this.state |= 0x1000;
            this.sendEvent(12);
        }
        if ((this.state & 1) == 0) {
            this.releaseChildren(destroy);
        }
        if ((this.state & 0x800) == 0) {
            this.state |= 0x800;
            if (destroy) {
                this.releaseParent();
                this.releaseWidget();
                this.destroyWidget();
            } else {
                this.releaseWidget();
                this.releaseHandle();
            }
        }
    }

    void releaseChildren(boolean destroy) {
    }

    void releaseHandle() {
        this.state |= 1;
        this.display = null;
    }

    void releaseParent() {
    }

    void releaseWidget() {
        this.eventTable = null;
        this.data = null;
    }

    public void removeListener(int eventType, Listener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(eventType, listener);
    }

    protected void removeListener(int eventType, SWTEventListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(eventType, listener);
    }

    public void removeDisposeListener(DisposeListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(12, listener);
    }

    public void reskin(int flags) {
        this.checkWidget();
        this.reskinWidget();
        if ((flags & 1) != 0) {
            this.reskinChildren(flags);
        }
    }

    void reskinChildren(int flags) {
    }

    void reskinWidget() {
        if ((this.state & 0x200000) != 0x200000) {
            this.state |= 0x200000;
            this.display.addSkinnableWidget(this);
        }
    }

    boolean sendDragEvent(int button, int x, int y) {
        Event event = new Event();
        event.button = button;
        event.x = x;
        event.y = y;
        this.setInputState(event, 29);
        this.postEvent(29, event);
        if (this.isDisposed()) {
            return false;
        }
        return event.doit;
    }

    boolean sendDragEvent(int button, int stateMask, int x, int y) {
        Event event = new Event();
        event.button = button;
        event.x = x;
        event.y = y;
        event.stateMask = stateMask;
        this.postEvent(29, event);
        if (this.isDisposed()) {
            return false;
        }
        return event.doit;
    }

    void sendEvent(Event event) {
        Display display = event.display;
        if (!display.filterEvent(event) && this.eventTable != null) {
            this.eventTable.sendEvent(event);
        }
    }

    void sendEvent(int eventType) {
        this.sendEvent(eventType, null, true);
    }

    void sendEvent(int eventType, Event event) {
        this.sendEvent(eventType, event, true);
    }

    void sendEvent(int eventType, Event event, boolean send) {
        if (this.eventTable == null && !this.display.filters(eventType)) {
            return;
        }
        if (event == null) {
            event = new Event();
        }
        event.type = eventType;
        event.display = this.display;
        event.widget = this;
        if (event.time == 0) {
            event.time = this.display.getLastEventTime();
        }
        if (send) {
            this.sendEvent(event);
        } else {
            this.display.postEvent(event);
        }
    }

    void sendSelectionEvent(int type) {
        this.sendSelectionEvent(type, null, false);
    }

    void sendSelectionEvent(int type, Event event, boolean send) {
        if (this.eventTable == null && !this.display.filters(type)) {
            return;
        }
        if (event == null) {
            event = new Event();
        }
        this.setInputState(event, type);
        this.sendEvent(type, event, send);
    }

    boolean sendKeyEvent(int type, int msg, int wParam, int lParam) {
        Event event = new Event();
        if (!this.setKeyState(event, type, wParam, lParam)) {
            return true;
        }
        return this.sendKeyEvent(type, msg, wParam, lParam, event);
    }

    boolean sendKeyEvent(int type, int msg, int wParam, int lParam, Event event) {
        this.sendEvent(type, event);
        if (this.isDisposed()) {
            return false;
        }
        return event.doit;
    }

    boolean sendMouseEvent(int type, int button, int hwnd, int msg, int wParam, int lParam) {
        return this.sendMouseEvent(type, button, this.display.getClickCount(type, button, hwnd, lParam), 0, false, hwnd, msg, wParam, lParam);
    }

    boolean sendMouseEvent(int type, int button, int count, int detail, boolean send, int hwnd, int msg, int wParam, int lParam) {
        if (!this.hooks(type) && !this.filters(type)) {
            return true;
        }
        Event event = new Event();
        event.button = button;
        event.detail = detail;
        event.count = count;
        event.x = OS.GET_X_LPARAM(lParam);
        event.y = OS.GET_Y_LPARAM(lParam);
        this.setInputState(event, type);
        this.mapEvent(hwnd, event);
        if (send) {
            this.sendEvent(type, event);
            if (this.isDisposed()) {
                return false;
            }
        } else {
            this.postEvent(type, event);
        }
        return event.doit;
    }

    boolean sendMouseWheelEvent(int type, int hwnd, int wParam, int lParam) {
        int delta = OS.GET_WHEEL_DELTA_WPARAM(wParam);
        int detail = 0;
        if (type == 37) {
            int[] linesToScroll = new int[1];
            OS.SystemParametersInfo(104, 0, linesToScroll, 0);
            if (linesToScroll[0] == -1) {
                detail = 2;
            } else {
                detail = 1;
                delta *= linesToScroll[0];
            }
            if ((delta ^ this.display.scrollRemainder) >= 0) {
                delta += this.display.scrollRemainder;
            }
            this.display.scrollRemainder = delta % 120;
        } else {
            if ((delta ^ this.display.scrollHRemainder) >= 0) {
                delta += this.display.scrollHRemainder;
            }
            this.display.scrollHRemainder = delta % 120;
            delta = -delta;
        }
        if (!this.hooks(type) && !this.filters(type)) {
            return true;
        }
        int count = delta / 120;
        POINT pt = new POINT();
        OS.POINTSTOPOINT(pt, lParam);
        OS.ScreenToClient(hwnd, pt);
        lParam = OS.MAKELPARAM(pt.x, pt.y);
        return this.sendMouseEvent(type, 0, count, detail, true, hwnd, 522, wParam, lParam);
    }

    public void setData(Object data) {
        this.checkWidget();
        if ((this.state & 4) != 0) {
            ((Object[])this.data)[0] = data;
        } else {
            this.data = data;
        }
    }

    public void setData(String key, Object value) {
        this.checkWidget();
        if (key == null) {
            this.error(4);
        }
        int index = 1;
        Object[] table = null;
        if ((this.state & 4) != 0) {
            table = (Object[])this.data;
            while (index < table.length) {
                if (key.equals(table[index])) break;
                index += 2;
            }
        }
        if (value != null) {
            if ((this.state & 4) != 0) {
                if (index == table.length) {
                    Object[] newTable = new Object[table.length + 2];
                    System.arraycopy(table, 0, newTable, 0, table.length);
                    table = newTable;
                    this.data = newTable;
                }
            } else {
                table = new Object[3];
                table[0] = this.data;
                this.data = table;
                this.state |= 4;
            }
            table[index] = key;
            table[index + 1] = value;
        } else if ((this.state & 4) != 0 && index != table.length) {
            int length = table.length - 2;
            if (length == 1) {
                this.data = table[0];
                this.state &= 0xFFFFFFFB;
            } else {
                Object[] newTable = new Object[length];
                System.arraycopy(table, 0, newTable, 0, index);
                System.arraycopy(table, index + 2, newTable, index, length - index);
                this.data = newTable;
            }
        }
        if (key.equals("org.eclipse.swt.skin.class") || key.equals("org.eclipse.swt.skin.id")) {
            this.reskin(1);
        }
    }

    boolean sendFocusEvent(int type) {
        this.sendEvent(type);
        return true;
    }

    boolean setInputState(Event event, int type) {
        if (OS.GetKeyState(18) < 0) {
            event.stateMask |= 0x10000;
        }
        if (OS.GetKeyState(16) < 0) {
            event.stateMask |= 0x20000;
        }
        if (OS.GetKeyState(17) < 0) {
            event.stateMask |= 0x40000;
        }
        if (OS.GetKeyState(1) < 0) {
            event.stateMask |= 0x80000;
        }
        if (OS.GetKeyState(4) < 0) {
            event.stateMask |= 0x100000;
        }
        if (OS.GetKeyState(2) < 0) {
            event.stateMask |= 0x200000;
        }
        if (this.display.xMouse) {
            if (OS.GetKeyState(5) < 0) {
                event.stateMask |= 0x800000;
            }
            if (OS.GetKeyState(6) < 0) {
                event.stateMask |= 0x2000000;
            }
        }
        switch (type) {
            case 3: 
            case 8: {
                if (event.button == 1) {
                    event.stateMask &= 0xFFF7FFFF;
                }
                if (event.button == 2) {
                    event.stateMask &= 0xFFEFFFFF;
                }
                if (event.button == 3) {
                    event.stateMask &= 0xFFDFFFFF;
                }
                if (event.button == 4) {
                    event.stateMask &= 0xFF7FFFFF;
                }
                if (event.button != 5) break;
                event.stateMask &= 0xFDFFFFFF;
                break;
            }
            case 4: {
                if (event.button == 1) {
                    event.stateMask |= 0x80000;
                }
                if (event.button == 2) {
                    event.stateMask |= 0x100000;
                }
                if (event.button == 3) {
                    event.stateMask |= 0x200000;
                }
                if (event.button == 4) {
                    event.stateMask |= 0x800000;
                }
                if (event.button != 5) break;
                event.stateMask |= 0x2000000;
                break;
            }
            case 1: 
            case 31: {
                if (event.keyCode == 65536) {
                    event.stateMask &= 0xFFFEFFFF;
                }
                if (event.keyCode == 131072) {
                    event.stateMask &= 0xFFFDFFFF;
                }
                if (event.keyCode != 262144) break;
                event.stateMask &= 0xFFFBFFFF;
                break;
            }
            case 2: {
                if (event.keyCode == 65536) {
                    event.stateMask |= 0x10000;
                }
                if (event.keyCode == 131072) {
                    event.stateMask |= 0x20000;
                }
                if (event.keyCode != 262144) break;
                event.stateMask |= 0x40000;
            }
        }
        return true;
    }

    boolean setKeyState(Event event, int type, int wParam, int lParam) {
        switch (this.display.lastAscii) {
            case 127: {
                if (this.display.lastKey != 8) break;
                this.display.lastAscii = 8;
                break;
            }
            case 10: {
                if (this.display.lastKey != 13) break;
                this.display.lastAscii = 13;
            }
        }
        if (this.display.lastKey == 13 && this.display.lastAscii == 13 && (lParam & 0x1000000) != 0) {
            this.display.lastKey = 0x1000050;
        }
        this.setLocationMask(event, type, wParam, lParam);
        if (this.display.lastVirtual) {
            if (this.display.lastKey == 46) {
                this.display.lastAscii = 127;
            }
            if (this.display.lastKey == 3) {
                this.display.lastAscii = 0;
            }
            event.keyCode = Display.translateKey(this.display.lastKey);
        } else {
            event.keyCode = this.display.lastKey;
        }
        if (this.display.lastAscii != 0 || this.display.lastNull) {
            event.character = Display.mbcsToWcs((char)this.display.lastAscii);
        }
        if (event.keyCode == 0 && event.character == '\u0000' && !this.display.lastNull) {
            return false;
        }
        return this.setInputState(event, type);
    }

    int setLocationMask(Event event, int type, int wParam, int lParam) {
        int location = 0;
        if (this.display.lastVirtual) {
            switch (this.display.lastKey) {
                case 16: {
                    if (OS.GetKeyState(160) < 0) {
                        location = 16384;
                    }
                    if (OS.GetKeyState(161) >= 0) break;
                    location = 131072;
                    break;
                }
                case 144: {
                    location = 2;
                    break;
                }
                case 17: 
                case 18: {
                    location = (lParam & 0x1000000) == 0 ? 16384 : 131072;
                    break;
                }
                case 33: 
                case 34: 
                case 35: 
                case 36: 
                case 37: 
                case 38: 
                case 39: 
                case 40: 
                case 45: 
                case 46: {
                    if ((lParam & 0x1000000) != 0) break;
                    location = 2;
                }
            }
            if (this.display.numpadKey(this.display.lastKey) != 0) {
                location = 2;
            }
        } else if (this.display.lastKey == 0x1000050) {
            location = 2;
        }
        event.keyLocation = location;
        return location;
    }

    boolean setTabGroupFocus() {
        return this.setTabItemFocus();
    }

    boolean setTabItemFocus() {
        return false;
    }

    boolean SetWindowPos(int hWnd, int hWndInsertAfter, int X, int Y, int cx, int cy, int uFlags) {
        if (OS.IsWinCE && (uFlags & 1) == 0) {
            RECT lpRect = new RECT();
            OS.GetWindowRect(hWnd, lpRect);
            if (cy == lpRect.bottom - lpRect.top && cx == lpRect.right - lpRect.left) {
                uFlags &= 0xFFFFFFDF;
                uFlags |= 1;
            }
        }
        return OS.SetWindowPos(hWnd, hWndInsertAfter, X, Y, cx, cy, uFlags);
    }

    boolean showMenu(int x, int y) {
        Event event = new Event();
        event.x = x;
        event.y = y;
        this.sendEvent(35, event);
        if (this.isDisposed()) {
            return false;
        }
        if (!event.doit) {
            return true;
        }
        Menu menu = this.getMenu();
        if (menu != null && !menu.isDisposed()) {
            if (x != event.x || y != event.y) {
                menu.setLocation(event.x, event.y);
            }
            menu.setVisible(true);
            return true;
        }
        return false;
    }

    public String toString() {
        String string = "*Disposed*";
        if (!this.isDisposed()) {
            string = "*Wrong Thread*";
            if (this.isValidThread()) {
                string = this.getNameText();
            }
        }
        return String.valueOf(this.getName()) + " {" + string + "}";
    }

    LRESULT wmCaptureChanged(int hwnd, int wParam, int lParam) {
        this.display.captureChanged = true;
        return null;
    }

    LRESULT wmChar(int hwnd, int wParam, int lParam) {
        byte lead;
        if (!OS.IsUnicode && OS.IsDBLocale && OS.IsDBCSLeadByte(lead = (byte)(wParam & 0xFF))) {
            return null;
        }
        this.display.lastAscii = wParam;
        boolean bl = this.display.lastNull = wParam == 0;
        if (!this.sendKeyEvent(1, 258, wParam, lParam)) {
            return LRESULT.ONE;
        }
        return null;
    }

    LRESULT wmContextMenu(int hwnd, int wParam, int lParam) {
        if (wParam != hwnd) {
            return null;
        }
        if (OS.IsWinCE) {
            return null;
        }
        int x = 0;
        int y = 0;
        if (lParam != -1) {
            POINT pt = new POINT();
            OS.POINTSTOPOINT(pt, lParam);
            x = pt.x;
            y = pt.y;
            OS.ScreenToClient(hwnd, pt);
            RECT rect = new RECT();
            OS.GetClientRect(hwnd, rect);
            if (!OS.PtInRect(rect, pt)) {
                return null;
            }
        } else {
            int pos = OS.GetMessagePos();
            x = OS.GET_X_LPARAM(pos);
            y = OS.GET_Y_LPARAM(pos);
        }
        return this.showMenu(x, y) ? LRESULT.ZERO : null;
    }

    LRESULT wmIMEChar(int hwnd, int wParam, int lParam) {
        Display display = this.display;
        display.lastKey = 0;
        display.lastAscii = wParam;
        display.lastDead = false;
        display.lastNull = false;
        display.lastVirtual = false;
        if (!this.sendKeyEvent(1, 646, wParam, lParam)) {
            return LRESULT.ONE;
        }
        this.sendKeyEvent(2, 646, wParam, lParam);
        display.lastAscii = 0;
        display.lastKey = 0;
        return LRESULT.ONE;
    }

    LRESULT wmKeyDown(int hwnd, int wParam, int lParam) {
        byte lead;
        switch (wParam) {
            case 16: 
            case 17: 
            case 18: 
            case 20: 
            case 144: 
            case 145: {
                if ((lParam & 0x40000000) == 0) break;
                return null;
            }
        }
        this.display.lastKey = 0;
        this.display.lastAscii = 0;
        this.display.lastDead = false;
        this.display.lastNull = false;
        this.display.lastVirtual = false;
        if (!OS.IsUnicode && OS.IsDBLocale && OS.IsDBCSLeadByte(lead = (byte)(wParam & 0xFF))) {
            return null;
        }
        int mapKey = 0;
        if (OS.IsWinCE) {
            switch (wParam) {
                case 8: {
                    mapKey = 8;
                    break;
                }
                case 13: {
                    mapKey = 13;
                    break;
                }
                case 46: {
                    mapKey = 127;
                    break;
                }
                case 27: {
                    mapKey = 27;
                    break;
                }
                case 9: {
                    mapKey = 9;
                }
            }
        } else {
            mapKey = OS.MapVirtualKey(wParam, 2);
            if (2534 <= mapKey && mapKey <= 2543 || 2406 <= mapKey && mapKey <= 2415) {
                mapKey = wParam;
            }
        }
        if (OS.IsWinNT ? (mapKey & Integer.MIN_VALUE) != 0 : (mapKey & 0x8000) != 0) {
            return null;
        }
        MSG msg = new MSG();
        int flags = 10420226;
        if (OS.PeekMessage(msg, hwnd, 259, 259, flags)) {
            this.display.lastDead = true;
            this.display.lastVirtual = mapKey == 0;
            this.display.lastKey = this.display.lastVirtual ? wParam : mapKey;
            return null;
        }
        if (this.isDisposed()) {
            return LRESULT.ONE;
        }
        boolean bl = this.display.lastVirtual = mapKey == 0 || this.display.numpadKey(wParam) != 0;
        if (this.display.lastVirtual) {
            this.display.lastKey = wParam;
            if (this.display.lastKey == 46) {
                this.display.lastAscii = 127;
            }
            if (96 <= this.display.lastKey && this.display.lastKey <= 111) {
                if (this.display.asciiKey(this.display.lastKey) != 0) {
                    return null;
                }
                this.display.lastAscii = this.display.numpadKey(this.display.lastKey);
            }
        } else {
            int asciiKey;
            this.display.lastKey = OS.CharLower((short)mapKey);
            if (wParam == 3) {
                this.display.lastVirtual = true;
            }
            if ((asciiKey = this.display.asciiKey(wParam)) != 0) {
                if (asciiKey == 32) {
                    return null;
                }
                if (asciiKey != wParam) {
                    return null;
                }
                if (wParam == 3) {
                    return null;
                }
            }
            if (OS.GetKeyState(17) >= 0) {
                return null;
            }
            if (OS.GetKeyState(16) < 0) {
                this.display.lastAscii = this.display.shiftedKey(wParam);
                if (this.display.lastAscii == 0) {
                    this.display.lastAscii = mapKey;
                }
            } else {
                this.display.lastAscii = OS.CharLower((short)mapKey);
            }
            if (this.display.lastAscii == 64) {
                return null;
            }
            this.display.lastAscii = this.display.controlKey(this.display.lastAscii);
        }
        if (!this.sendKeyEvent(1, 256, wParam, lParam)) {
            return LRESULT.ONE;
        }
        return null;
    }

    LRESULT wmKeyUp(int hwnd, int wParam, int lParam) {
        Display display = this.display;
        if (OS.IsWinCE && 193 <= wParam && wParam <= 198) {
            int type;
            display.lastAscii = 0;
            display.lastKey = 0;
            display.lastDead = false;
            display.lastNull = false;
            display.lastVirtual = false;
            Event event = new Event();
            event.detail = wParam - 193 + 1;
            int n = type = (lParam & 0x40000000) != 0 ? 34 : 33;
            if (this.setInputState(event, type)) {
                this.sendEvent(type, event);
            }
            return null;
        }
        if (!this.hooks(2) && !display.filters(2)) {
            display.lastAscii = 0;
            display.lastKey = 0;
            display.lastDead = false;
            display.lastNull = false;
            display.lastVirtual = false;
            return null;
        }
        int mapKey = 0;
        if (OS.IsWinCE) {
            switch (wParam) {
                case 8: {
                    mapKey = 8;
                    break;
                }
                case 13: {
                    mapKey = 13;
                    break;
                }
                case 46: {
                    mapKey = 127;
                    break;
                }
                case 27: {
                    mapKey = 27;
                    break;
                }
                case 9: {
                    mapKey = 9;
                }
            }
        } else {
            mapKey = OS.MapVirtualKey(wParam, 2);
        }
        if (OS.IsWinNT ? (mapKey & Integer.MIN_VALUE) != 0 : (mapKey & 0x8000) != 0) {
            return null;
        }
        if (display.lastDead) {
            return null;
        }
        boolean bl = display.lastVirtual = mapKey == 0 || display.numpadKey(wParam) != 0;
        if (display.lastVirtual) {
            display.lastKey = wParam;
        } else {
            if (wParam == 3) {
                display.lastVirtual = true;
            }
            if (display.lastKey == 0) {
                display.lastAscii = 0;
                display.lastDead = false;
                display.lastNull = false;
                return null;
            }
        }
        LRESULT result = null;
        if (!this.sendKeyEvent(2, 257, wParam, lParam)) {
            result = LRESULT.ONE;
        }
        display.lastAscii = 0;
        display.lastKey = 0;
        display.lastDead = false;
        display.lastNull = false;
        display.lastVirtual = false;
        return result;
    }

    LRESULT wmKillFocus(int hwnd, int wParam, int lParam) {
        this.display.scrollHRemainder = 0;
        this.display.scrollRemainder = 0;
        int code = this.callWindowProc(hwnd, 8, wParam, lParam);
        this.sendFocusEvent(16);
        if (this.isDisposed()) {
            return LRESULT.ZERO;
        }
        if (code == 0) {
            return LRESULT.ZERO;
        }
        return new LRESULT(code);
    }

    LRESULT wmLButtonDblClk(int hwnd, int wParam, int lParam) {
        LRESULT result = null;
        Display display = this.display;
        display.captureChanged = false;
        this.sendMouseEvent(3, 1, hwnd, 513, wParam, lParam);
        result = this.sendMouseEvent(8, 1, hwnd, 515, wParam, lParam) ? new LRESULT(this.callWindowProc(hwnd, 515, wParam, lParam)) : LRESULT.ZERO;
        if (!display.captureChanged && !this.isDisposed() && OS.GetCapture() != hwnd) {
            OS.SetCapture(hwnd);
        }
        return result;
    }

    LRESULT wmLButtonDown(int hwnd, int wParam, int lParam) {
        Display display = this.display;
        LRESULT result = null;
        int x = OS.GET_X_LPARAM(lParam);
        int y = OS.GET_Y_LPARAM(lParam);
        boolean[] consume = null;
        boolean[] detect = null;
        boolean dragging = false;
        boolean mouseDown = true;
        int count = display.getClickCount(3, 1, hwnd, lParam);
        if (count == 1 && (this.state & 0x8000) != 0 && this.hooks(29) && !OS.IsWinCE) {
            detect = new boolean[1];
            consume = new boolean[1];
            dragging = this.dragDetect(hwnd, x, y, true, detect, consume);
            if (this.isDisposed()) {
                return LRESULT.ZERO;
            }
            mouseDown = OS.GetKeyState(1) < 0;
        }
        display.captureChanged = false;
        boolean dispatch = this.sendMouseEvent(3, 1, count, 0, false, hwnd, 513, wParam, lParam);
        result = dispatch && (consume == null || !consume[0]) ? new LRESULT(this.callWindowProc(hwnd, 513, wParam, lParam)) : LRESULT.ZERO;
        if (OS.IsPPC) {
            boolean hasMenu;
            Menu menu = this.getMenu();
            boolean bl = hasMenu = menu != null && !menu.isDisposed();
            if (hasMenu || this.hooks(35)) {
                SHRGINFO shrg = new SHRGINFO();
                shrg.cbSize = SHRGINFO.sizeof;
                shrg.hwndClient = hwnd;
                shrg.ptDown_x = x;
                shrg.ptDown_y = y;
                shrg.dwFlags = 1;
                int type = OS.SHRecognizeGesture(shrg);
                if (type == 1000) {
                    this.showMenu(x, y);
                }
            }
        }
        if (mouseDown && !display.captureChanged && !this.isDisposed() && OS.GetCapture() != hwnd) {
            OS.SetCapture(hwnd);
        }
        if (dragging) {
            this.sendDragEvent(1, x, y);
        } else if (detect != null && detect[0] && OS.GetKeyState(27) >= 0) {
            OS.SendMessage(hwnd, 514, wParam, lParam);
        }
        return result;
    }

    LRESULT wmLButtonUp(int hwnd, int wParam, int lParam) {
        Display display = this.display;
        LRESULT result = null;
        result = this.sendMouseEvent(4, 1, hwnd, 514, wParam, lParam) ? new LRESULT(this.callWindowProc(hwnd, 514, wParam, lParam)) : LRESULT.ZERO;
        int mask = 19;
        if (display.xMouse) {
            mask |= 0x60;
        }
        if ((wParam & mask) == 0 && OS.GetCapture() == hwnd) {
            OS.ReleaseCapture();
        }
        return result;
    }

    LRESULT wmMButtonDblClk(int hwnd, int wParam, int lParam) {
        LRESULT result = null;
        Display display = this.display;
        display.captureChanged = false;
        this.sendMouseEvent(3, 2, hwnd, 519, wParam, lParam);
        result = this.sendMouseEvent(8, 2, hwnd, 521, wParam, lParam) ? new LRESULT(this.callWindowProc(hwnd, 521, wParam, lParam)) : LRESULT.ZERO;
        if (!display.captureChanged && !this.isDisposed() && OS.GetCapture() != hwnd) {
            OS.SetCapture(hwnd);
        }
        return result;
    }

    LRESULT wmMButtonDown(int hwnd, int wParam, int lParam) {
        LRESULT result = null;
        Display display = this.display;
        display.captureChanged = false;
        result = this.sendMouseEvent(3, 2, hwnd, 519, wParam, lParam) ? new LRESULT(this.callWindowProc(hwnd, 519, wParam, lParam)) : LRESULT.ZERO;
        if (!display.captureChanged && !this.isDisposed() && OS.GetCapture() != hwnd) {
            OS.SetCapture(hwnd);
        }
        return result;
    }

    LRESULT wmMButtonUp(int hwnd, int wParam, int lParam) {
        Display display = this.display;
        LRESULT result = null;
        result = this.sendMouseEvent(4, 2, hwnd, 520, wParam, lParam) ? new LRESULT(this.callWindowProc(hwnd, 520, wParam, lParam)) : LRESULT.ZERO;
        int mask = 19;
        if (display.xMouse) {
            mask |= 0x60;
        }
        if ((wParam & mask) == 0 && OS.GetCapture() == hwnd) {
            OS.ReleaseCapture();
        }
        return result;
    }

    LRESULT wmMouseHover(int hwnd, int wParam, int lParam) {
        if (!this.sendMouseEvent(32, 0, hwnd, 673, wParam, lParam)) {
            return LRESULT.ZERO;
        }
        return null;
    }

    LRESULT wmMouseLeave(int hwnd, int wParam, int lParam) {
        if (!this.hooks(7) && !this.filters(7)) {
            return null;
        }
        int pos = OS.GetMessagePos();
        POINT pt = new POINT();
        OS.POINTSTOPOINT(pt, pos);
        OS.ScreenToClient(hwnd, pt);
        lParam = OS.MAKELPARAM(pt.x, pt.y);
        if (!this.sendMouseEvent(7, 0, hwnd, 675, wParam, lParam)) {
            return LRESULT.ZERO;
        }
        return null;
    }

    LRESULT wmMouseMove(int hwnd, int wParam, int lParam) {
        LRESULT result = null;
        Display display = this.display;
        int pos = OS.GetMessagePos();
        if (pos != display.lastMouse || display.captureChanged) {
            if (!OS.IsWinCE) {
                boolean mouseHover;
                boolean trackMouse = (this.state & 0x2000) != 0;
                boolean mouseEnter = this.hooks(6) || display.filters(6);
                boolean mouseExit = this.hooks(7) || display.filters(7);
                boolean bl = mouseHover = this.hooks(32) || display.filters(32);
                if (trackMouse || mouseEnter || mouseExit || mouseHover) {
                    TRACKMOUSEEVENT lpEventTrack = new TRACKMOUSEEVENT();
                    lpEventTrack.cbSize = TRACKMOUSEEVENT.sizeof;
                    lpEventTrack.dwFlags = 0x40000000;
                    lpEventTrack.hwndTrack = hwnd;
                    OS.TrackMouseEvent(lpEventTrack);
                    if (lpEventTrack.dwFlags == 0) {
                        lpEventTrack.dwFlags = 3;
                        lpEventTrack.hwndTrack = hwnd;
                        OS.TrackMouseEvent(lpEventTrack);
                        if (mouseEnter) {
                            MSG msg = new MSG();
                            int flags = 10420227;
                            while (OS.PeekMessage(msg, 0, 675, 675, flags)) {
                                OS.TranslateMessage(msg);
                                OS.DispatchMessage(msg);
                            }
                            this.sendMouseEvent(6, 0, hwnd, 512, wParam, lParam);
                        }
                    } else {
                        lpEventTrack.dwFlags = 1;
                        OS.TrackMouseEvent(lpEventTrack);
                    }
                }
            }
            if (pos != display.lastMouse) {
                display.lastMouse = pos;
                if (!this.sendMouseEvent(5, 0, hwnd, 512, wParam, lParam)) {
                    result = LRESULT.ZERO;
                }
            }
        }
        display.captureChanged = false;
        return result;
    }

    LRESULT wmMouseWheel(int hwnd, int wParam, int lParam) {
        return this.sendMouseWheelEvent(37, hwnd, wParam, lParam) ? null : LRESULT.ZERO;
    }

    LRESULT wmMouseHWheel(int hwnd, int wParam, int lParam) {
        return this.sendMouseWheelEvent(38, hwnd, wParam, lParam) ? null : LRESULT.ZERO;
    }

    LRESULT wmNCPaint(int hwnd, int wParam, int lParam) {
        return null;
    }

    LRESULT wmPaint(int hwnd, int wParam, int lParam) {
        if (!this.hooks(9) && !this.filters(9)) {
            return null;
        }
        int result = 0;
        if (OS.IsWinCE) {
            RECT rect = new RECT();
            OS.GetUpdateRect(hwnd, rect, false);
            result = this.callWindowProc(hwnd, 15, wParam, lParam);
            OS.HideCaret(hwnd);
            OS.InvalidateRect(hwnd, rect, false);
            OS.ShowCaret(hwnd);
            PAINTSTRUCT ps = new PAINTSTRUCT();
            GCData data = new GCData();
            data.ps = ps;
            data.hwnd = hwnd;
            GC gc = this.new_GC(data);
            if (gc != null) {
                int width = ps.right - ps.left;
                int height = ps.bottom - ps.top;
                if (width != 0 && height != 0) {
                    Event event = new Event();
                    event.gc = gc;
                    event.x = ps.left;
                    event.y = ps.top;
                    event.width = width;
                    event.height = height;
                    this.sendEvent(9, event);
                    event.gc = null;
                }
                gc.dispose();
            }
        } else {
            int rgn = OS.CreateRectRgn(0, 0, 0, 0);
            OS.GetUpdateRgn(hwnd, rgn, false);
            result = this.callWindowProc(hwnd, 15, wParam, lParam);
            GCData data = new GCData();
            data.hwnd = hwnd;
            GC gc = this.new_GC(data);
            if (gc != null) {
                OS.HideCaret(hwnd);
                RECT rect = new RECT();
                OS.GetRgnBox(rgn, rect);
                int width = rect.right - rect.left;
                int height = rect.bottom - rect.top;
                if (width != 0 && height != 0) {
                    int hDC = gc.handle;
                    OS.SelectClipRgn(hDC, rgn);
                    OS.SetMetaRgn(hDC);
                    Event event = new Event();
                    event.gc = gc;
                    event.x = rect.left;
                    event.y = rect.top;
                    event.width = width;
                    event.height = height;
                    this.sendEvent(9, event);
                    event.gc = null;
                }
                gc.dispose();
                OS.ShowCaret(hwnd);
            }
            OS.DeleteObject(rgn);
        }
        if (result == 0) {
            return LRESULT.ZERO;
        }
        return new LRESULT(result);
    }

    LRESULT wmPrint(int hwnd, int wParam, int lParam) {
        int bits;
        if ((lParam & 2) != 0 && OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed() && ((bits = OS.GetWindowLong(hwnd, -20)) & 0x200) != 0) {
            int code = this.callWindowProc(hwnd, 791, wParam, lParam);
            RECT rect = new RECT();
            OS.GetWindowRect(hwnd, rect);
            rect.right -= rect.left;
            rect.bottom -= rect.top;
            rect.top = 0;
            rect.left = 0;
            int border = OS.GetSystemMetrics(45);
            OS.ExcludeClipRect(wParam, border, border, rect.right - border, rect.bottom - border);
            OS.DrawThemeBackground(this.display.hEditTheme(), wParam, 1, 1, rect, null);
            return new LRESULT(code);
        }
        return null;
    }

    LRESULT wmRButtonDblClk(int hwnd, int wParam, int lParam) {
        LRESULT result = null;
        Display display = this.display;
        display.captureChanged = false;
        this.sendMouseEvent(3, 3, hwnd, 516, wParam, lParam);
        result = this.sendMouseEvent(8, 3, hwnd, 518, wParam, lParam) ? new LRESULT(this.callWindowProc(hwnd, 518, wParam, lParam)) : LRESULT.ZERO;
        if (!display.captureChanged && !this.isDisposed() && OS.GetCapture() != hwnd) {
            OS.SetCapture(hwnd);
        }
        return result;
    }

    LRESULT wmRButtonDown(int hwnd, int wParam, int lParam) {
        LRESULT result = null;
        Display display = this.display;
        display.captureChanged = false;
        result = this.sendMouseEvent(3, 3, hwnd, 516, wParam, lParam) ? new LRESULT(this.callWindowProc(hwnd, 516, wParam, lParam)) : LRESULT.ZERO;
        if (!display.captureChanged && !this.isDisposed() && OS.GetCapture() != hwnd) {
            OS.SetCapture(hwnd);
        }
        return result;
    }

    LRESULT wmRButtonUp(int hwnd, int wParam, int lParam) {
        Display display = this.display;
        LRESULT result = null;
        if (this.sendMouseEvent(4, 3, hwnd, 517, wParam, lParam)) {
            result = new LRESULT(this.callWindowProc(hwnd, 517, wParam, lParam));
        } else {
            OS.DefWindowProc(hwnd, 517, wParam, lParam);
            result = LRESULT.ZERO;
        }
        int mask = 19;
        if (display.xMouse) {
            mask |= 0x60;
        }
        if ((wParam & mask) == 0 && OS.GetCapture() == hwnd) {
            OS.ReleaseCapture();
        }
        return result;
    }

    LRESULT wmSetFocus(int hwnd, int wParam, int lParam) {
        int code = this.callWindowProc(hwnd, 7, wParam, lParam);
        this.sendFocusEvent(15);
        if (this.isDisposed()) {
            return LRESULT.ZERO;
        }
        if (code == 0) {
            return LRESULT.ZERO;
        }
        return new LRESULT(code);
    }

    LRESULT wmSysChar(int hwnd, int wParam, int lParam) {
        Display display = this.display;
        display.lastAscii = wParam;
        boolean bl = display.lastNull = wParam == 0;
        if (!this.hooks(1) && !display.filters(1)) {
            return null;
        }
        boolean oldKeyHit = display.mnemonicKeyHit;
        display.mnemonicKeyHit = true;
        int result = this.callWindowProc(hwnd, 262, wParam, lParam);
        boolean consumed = false;
        if (!display.mnemonicKeyHit) {
            consumed = !this.sendKeyEvent(1, 262, wParam, lParam);
        }
        display.mnemonicKeyHit = oldKeyHit;
        return (consumed |= display.mnemonicKeyHit) ? LRESULT.ONE : new LRESULT(result);
    }

    LRESULT wmSysKeyDown(int hwnd, int wParam, int lParam) {
        if (wParam != 121 && (lParam & 0x20000000) == 0) {
            return null;
        }
        switch (wParam) {
            case 115: {
                int hwndShell = hwnd;
                while (OS.GetParent(hwndShell) != 0) {
                    if (OS.GetWindow(hwndShell, 4) != 0) break;
                    hwndShell = OS.GetParent(hwndShell);
                }
                int bits = OS.GetWindowLong(hwndShell, -16);
                if ((bits & 0x80000) == 0) break;
                return null;
            }
        }
        switch (wParam) {
            case 16: 
            case 17: 
            case 18: 
            case 20: 
            case 144: 
            case 145: {
                if ((lParam & 0x40000000) == 0) break;
                return null;
            }
        }
        this.display.lastKey = 0;
        this.display.lastAscii = 0;
        this.display.lastDead = false;
        this.display.lastNull = false;
        this.display.lastVirtual = false;
        int mapKey = 0;
        if (OS.IsWinCE) {
            switch (wParam) {
                case 8: {
                    mapKey = 8;
                    break;
                }
                case 13: {
                    mapKey = 13;
                    break;
                }
                case 46: {
                    mapKey = 127;
                    break;
                }
                case 27: {
                    mapKey = 27;
                    break;
                }
                case 9: {
                    mapKey = 9;
                }
            }
        } else {
            mapKey = OS.MapVirtualKey(wParam, 2);
        }
        boolean bl = this.display.lastVirtual = mapKey == 0 || this.display.numpadKey(wParam) != 0;
        if (this.display.lastVirtual) {
            this.display.lastKey = wParam;
            if (this.display.lastKey == 46) {
                this.display.lastAscii = 127;
            }
            if (96 <= this.display.lastKey && this.display.lastKey <= 111) {
                switch (this.display.lastKey) {
                    case 106: 
                    case 107: 
                    case 109: 
                    case 110: 
                    case 111: {
                        return null;
                    }
                }
                this.display.lastAscii = this.display.numpadKey(this.display.lastKey);
            }
        } else {
            this.display.lastKey = OS.CharLower((short)mapKey);
            if (OS.IsWinNT) {
                return null;
            }
            if (wParam != 13) {
                return null;
            }
            this.display.lastAscii = 13;
        }
        if (!this.sendKeyEvent(1, 260, wParam, lParam)) {
            return LRESULT.ONE;
        }
        return null;
    }

    LRESULT wmSysKeyUp(int hwnd, int wParam, int lParam) {
        return this.wmKeyUp(hwnd, wParam, lParam);
    }

    LRESULT wmXButtonDblClk(int hwnd, int wParam, int lParam) {
        LRESULT result = null;
        Display display = this.display;
        display.captureChanged = false;
        int button = OS.HIWORD(wParam) == 1 ? 4 : 5;
        this.sendMouseEvent(3, button, hwnd, 523, wParam, lParam);
        result = this.sendMouseEvent(8, button, hwnd, 525, wParam, lParam) ? new LRESULT(this.callWindowProc(hwnd, 525, wParam, lParam)) : LRESULT.ZERO;
        if (!display.captureChanged && !this.isDisposed() && OS.GetCapture() != hwnd) {
            OS.SetCapture(hwnd);
        }
        return result;
    }

    LRESULT wmXButtonDown(int hwnd, int wParam, int lParam) {
        LRESULT result = null;
        Display display = this.display;
        display.captureChanged = false;
        display.xMouse = true;
        int button = OS.HIWORD(wParam) == 1 ? 4 : 5;
        result = this.sendMouseEvent(3, button, hwnd, 523, wParam, lParam) ? new LRESULT(this.callWindowProc(hwnd, 523, wParam, lParam)) : LRESULT.ZERO;
        if (!display.captureChanged && !this.isDisposed() && OS.GetCapture() != hwnd) {
            OS.SetCapture(hwnd);
        }
        return result;
    }

    LRESULT wmXButtonUp(int hwnd, int wParam, int lParam) {
        Display display = this.display;
        LRESULT result = null;
        int button = OS.HIWORD(wParam) == 1 ? 4 : 5;
        result = this.sendMouseEvent(4, button, hwnd, 524, wParam, lParam) ? new LRESULT(this.callWindowProc(hwnd, 524, wParam, lParam)) : LRESULT.ZERO;
        int mask = 19;
        if (display.xMouse) {
            mask |= 0x60;
        }
        if ((wParam & mask) == 0 && OS.GetCapture() == hwnd) {
            OS.ReleaseCapture();
        }
        return result;
    }
}

