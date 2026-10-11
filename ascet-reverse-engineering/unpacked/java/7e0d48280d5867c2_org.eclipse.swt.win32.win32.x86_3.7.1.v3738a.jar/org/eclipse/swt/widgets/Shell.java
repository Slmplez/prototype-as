/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.events.ShellListener;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.Region;
import org.eclipse.swt.internal.win32.CREATESTRUCT;
import org.eclipse.swt.internal.win32.LOGBRUSH;
import org.eclipse.swt.internal.win32.LRESULT;
import org.eclipse.swt.internal.win32.MINMAXINFO;
import org.eclipse.swt.internal.win32.MSG;
import org.eclipse.swt.internal.win32.NMTTDISPINFO;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.POINT;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.SHACTIVATEINFO;
import org.eclipse.swt.internal.win32.SIPINFO;
import org.eclipse.swt.internal.win32.STARTUPINFO;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.internal.win32.TOOLINFO;
import org.eclipse.swt.internal.win32.WINDOWPOS;
import org.eclipse.swt.internal.win32.WNDCLASS;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Decorations;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolTip;
import org.eclipse.swt.widgets.TypedListener;

public class Shell
extends Decorations {
    Menu activeMenu;
    ToolTip[] toolTips;
    int hIMC;
    int hwndMDIClient;
    int lpstrTip;
    int toolTipHandle;
    int balloonTipHandle;
    int minWidth = -1;
    int minHeight = -1;
    int[] brushes;
    boolean showWithParent;
    boolean fullScreen;
    boolean wasMaximized;
    boolean modified;
    boolean center;
    String toolTitle;
    String balloonTitle;
    int toolIcon;
    int balloonIcon;
    int windowProc;
    Control lastActive;
    SHACTIVATEINFO psai;
    static int ToolTipProc;
    static final int DialogProc;
    static final TCHAR DialogClass;
    static final int[] SYSTEM_COLORS;
    static final int BRUSHES_SIZE = 32;

    static {
        DialogClass = new TCHAR(0, OS.IsWinCE ? "Dialog" : "#32770", true);
        SYSTEM_COLORS = new int[]{OS.COLOR_BTNFACE, OS.COLOR_WINDOW, OS.COLOR_BTNTEXT, OS.COLOR_WINDOWTEXT, OS.COLOR_HIGHLIGHT, OS.COLOR_SCROLLBAR};
        WNDCLASS lpWndClass = new WNDCLASS();
        OS.GetClassInfo(0, DialogClass, lpWndClass);
        DialogProc = lpWndClass.lpfnWndProc;
    }

    public Shell() {
        this((Display)null);
    }

    public Shell(int style) {
        this((Display)null, style);
    }

    public Shell(Display display) {
        this(display, OS.IsWinCE ? 0 : 1264);
    }

    public Shell(Display display, int style) {
        this(display, null, style, 0, false);
    }

    Shell(Display display, Shell parent, int style, int handle, boolean embedded) {
        this.checkSubclass();
        if (display == null) {
            display = Display.getCurrent();
        }
        if (display == null) {
            display = Display.getDefault();
        }
        if (!display.isValidThread()) {
            this.error(22);
        }
        if (parent != null && parent.isDisposed()) {
            this.error(5);
        }
        this.center = parent != null && (style & 0x10000000) != 0;
        this.style = Shell.checkStyle(parent, style);
        this.parent = parent;
        this.display = display;
        this.handle = handle;
        if (handle != 0 && !embedded) {
            this.state |= 0x4000;
        }
        this.reskinWidget();
        this.createWidget();
    }

    public Shell(Shell parent) {
        this(parent, OS.IsWinCE ? 0 : 2144);
    }

    public Shell(Shell parent, int style) {
        this(parent != null ? parent.display : null, parent, style, 0, false);
    }

    public static Shell win32_new(Display display, int handle) {
        return new Shell(display, null, 8, handle, true);
    }

    public static Shell internal_new(Display display, int handle) {
        return new Shell(display, null, 8, handle, false);
    }

    static int checkStyle(Shell parent, int style) {
        style = Decorations.checkStyle(style);
        int mask = 229376;
        if (((style &= 0xBFFFFFFF) & 0x10000000) != 0) {
            style &= 0xEFFFFFFF;
            if (((style |= parent == null ? 1264 : 2144) & mask) == 0) {
                style |= parent == null ? 65536 : 32768;
            }
        }
        int bits = style & ~mask;
        if ((style & 0x20000) != 0) {
            return bits | 0x20000;
        }
        if ((style & 0x10000) != 0) {
            return bits | 0x10000;
        }
        if ((style & 0x8000) != 0) {
            return bits | 0x8000;
        }
        return bits;
    }

    public void addShellListener(ShellListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(21, typedListener);
        this.addListener(19, typedListener);
        this.addListener(20, typedListener);
        this.addListener(26, typedListener);
        this.addListener(27, typedListener);
    }

    int balloonTipHandle() {
        if (this.balloonTipHandle == 0) {
            this.createBalloonTipHandle();
        }
        return this.balloonTipHandle;
    }

    int callWindowProc(int hwnd, int msg, int wParam, int lParam) {
        int trim;
        if (this.handle == 0) {
            return 0;
        }
        if (hwnd == this.toolTipHandle || hwnd == this.balloonTipHandle) {
            return OS.CallWindowProc(ToolTipProc, hwnd, msg, wParam, lParam);
        }
        if (this.hwndMDIClient != 0) {
            return OS.DefFrameProc(hwnd, this.hwndMDIClient, msg, wParam, lParam);
        }
        if (this.windowProc != 0) {
            return OS.CallWindowProc(this.windowProc, hwnd, msg, wParam, lParam);
        }
        if ((this.style & 4) != 0 && (this.style & (trim = 3312)) == 0) {
            return OS.DefWindowProc(hwnd, msg, wParam, lParam);
        }
        if (this.parent != null) {
            switch (msg) {
                case 7: 
                case 8: {
                    return OS.DefWindowProc(hwnd, msg, wParam, lParam);
                }
            }
            return OS.CallWindowProc(DialogProc, hwnd, msg, wParam, lParam);
        }
        return OS.DefWindowProc(hwnd, msg, wParam, lParam);
    }

    void center() {
        if (this.parent == null) {
            return;
        }
        Rectangle rect = this.getBounds();
        Rectangle parentRect = this.display.map((Control)this.parent, null, this.parent.getClientArea());
        int x = Math.max(parentRect.x, parentRect.x + (parentRect.width - rect.width) / 2);
        int y = Math.max(parentRect.y, parentRect.y + (parentRect.height - rect.height) / 2);
        Rectangle monitorRect = this.parent.getMonitor().getClientArea();
        x = x + rect.width > monitorRect.x + monitorRect.width ? Math.max(monitorRect.x, monitorRect.x + monitorRect.width - rect.width) : Math.max(x, monitorRect.x);
        y = y + rect.height > monitorRect.y + monitorRect.height ? Math.max(monitorRect.y, monitorRect.y + monitorRect.height - rect.height) : Math.max(y, monitorRect.y);
        this.setLocation(x, y);
    }

    public void close() {
        this.checkWidget();
        this.closeWidget();
    }

    void createBalloonTipHandle() {
        this.balloonTipHandle = OS.CreateWindowEx(0, new TCHAR(0, "tooltips_class32", true), null, 67, Integer.MIN_VALUE, 0, Integer.MIN_VALUE, 0, this.handle, 0, OS.GetModuleHandle(null), null);
        if (this.balloonTipHandle == 0) {
            this.error(2);
        }
        if (ToolTipProc == 0) {
            ToolTipProc = OS.GetWindowLongPtr(this.balloonTipHandle, -4);
        }
        OS.SendMessage(this.balloonTipHandle, 1048, 0, Short.MAX_VALUE);
        this.display.addControl(this.balloonTipHandle, this);
        OS.SetWindowLongPtr(this.balloonTipHandle, -4, this.display.windowProc);
    }

    void createHandle() {
        boolean embedded;
        boolean bl = embedded = this.handle != 0 && (this.state & 0x4000) == 0;
        if (this.handle == 0 || embedded) {
            super.createHandle();
        } else {
            this.state |= 2;
            if ((this.style & 0x300) == 0) {
                this.state |= 0x100;
            }
            this.windowProc = OS.GetWindowLongPtr(this.handle, -4);
        }
        if (!embedded) {
            int bits = OS.GetWindowLong(this.handle, -16);
            bits &= ~(OS.WS_OVERLAPPED | 0xC00000);
            if (!OS.IsWinCE) {
                bits |= Integer.MIN_VALUE;
            }
            if ((this.style & 0x20) != 0) {
                bits |= 0xC00000;
            }
            if ((this.style & 8) == 0 && (this.style & 0x810) == 0) {
                bits |= 0x800000;
            }
            OS.SetWindowLong(this.handle, -16, bits);
            int flags = 55;
            this.SetWindowPos(this.handle, 0, 0, 0, 0, 0, flags);
            if (OS.IsWinCE) {
                this._setMaximized(true);
            }
            if (OS.IsPPC) {
                this.psai = new SHACTIVATEINFO();
                this.psai.cbSize = SHACTIVATEINFO.sizeof;
            }
        }
        if (OS.IsDBLocale) {
            this.hIMC = OS.ImmCreateContext();
            if (this.hIMC != 0) {
                OS.ImmAssociateContext(this.handle, this.hIMC);
            }
        }
    }

    void createToolTip(ToolTip toolTip) {
        int id = 0;
        if (this.toolTips == null) {
            this.toolTips = new ToolTip[4];
        }
        while (id < this.toolTips.length && this.toolTips[id] != null) {
            ++id;
        }
        if (id == this.toolTips.length) {
            ToolTip[] newToolTips = new ToolTip[this.toolTips.length + 4];
            System.arraycopy(this.toolTips, 0, newToolTips, 0, this.toolTips.length);
            this.toolTips = newToolTips;
        }
        this.toolTips[id] = toolTip;
        toolTip.id = id + 108;
        if (OS.IsWinCE) {
            return;
        }
        TOOLINFO lpti = new TOOLINFO();
        lpti.cbSize = TOOLINFO.sizeof;
        lpti.hwnd = this.handle;
        lpti.uId = toolTip.id;
        lpti.uFlags = 32;
        lpti.lpszText = -1;
        OS.SendMessage(toolTip.hwndToolTip(), OS.TTM_ADDTOOL, 0, lpti);
    }

    void createToolTipHandle() {
        this.toolTipHandle = OS.CreateWindowEx(0, new TCHAR(0, "tooltips_class32", true), null, 3, Integer.MIN_VALUE, 0, Integer.MIN_VALUE, 0, this.handle, 0, OS.GetModuleHandle(null), null);
        if (this.toolTipHandle == 0) {
            this.error(2);
        }
        if (ToolTipProc == 0) {
            ToolTipProc = OS.GetWindowLongPtr(this.toolTipHandle, -4);
        }
        OS.SendMessage(this.toolTipHandle, 1048, 0, Short.MAX_VALUE);
        this.display.addControl(this.toolTipHandle, this);
        OS.SetWindowLongPtr(this.toolTipHandle, -4, this.display.windowProc);
    }

    void deregister() {
        super.deregister();
        if (this.toolTipHandle != 0) {
            this.display.removeControl(this.toolTipHandle);
        }
        if (this.balloonTipHandle != 0) {
            this.display.removeControl(this.balloonTipHandle);
        }
    }

    void destroyToolTip(ToolTip toolTip) {
        if (this.toolTips == null) {
            return;
        }
        this.toolTips[toolTip.id - 108] = null;
        if (OS.IsWinCE) {
            return;
        }
        if (this.balloonTipHandle != 0) {
            TOOLINFO lpti = new TOOLINFO();
            lpti.cbSize = TOOLINFO.sizeof;
            lpti.uId = toolTip.id;
            lpti.hwnd = this.handle;
            OS.SendMessage(this.balloonTipHandle, OS.TTM_DELTOOL, 0, lpti);
        }
        toolTip.id = -1;
    }

    void destroyWidget() {
        this.fixActiveShell();
        super.destroyWidget();
    }

    public void dispose() {
        super.dispose();
    }

    void enableWidget(boolean enabled) {
        this.state = enabled ? (this.state &= 0xFFFFFFF7) : (this.state |= 8);
        if (Display.TrimEnabled) {
            if (this.isActive()) {
                this.setItemEnabled(61536, enabled);
            }
        } else {
            OS.EnableWindow(this.handle, enabled);
        }
    }

    int findBrush(int value, int lbStyle) {
        int hBrush;
        if (lbStyle == 0) {
            int i = 0;
            while (i < SYSTEM_COLORS.length) {
                if (value == OS.GetSysColor(SYSTEM_COLORS[i])) {
                    return OS.GetSysColorBrush(SYSTEM_COLORS[i]);
                }
                ++i;
            }
        }
        if (this.brushes == null) {
            this.brushes = new int[32];
        }
        LOGBRUSH logBrush = new LOGBRUSH();
        int i = 0;
        while (i < this.brushes.length) {
            hBrush = this.brushes[i];
            if (hBrush == 0) break;
            OS.GetObject(hBrush, LOGBRUSH.sizeof, logBrush);
            switch (logBrush.lbStyle) {
                case 0: {
                    if (lbStyle != 0 || logBrush.lbColor != value) break;
                    return hBrush;
                }
                case 3: {
                    if (lbStyle != 3 || logBrush.lbHatch != value) break;
                    return hBrush;
                }
            }
            ++i;
        }
        int length = this.brushes.length;
        hBrush = this.brushes[--length];
        if (hBrush != 0) {
            OS.DeleteObject(hBrush);
        }
        System.arraycopy(this.brushes, 0, this.brushes, 1, length);
        switch (lbStyle) {
            case 0: {
                hBrush = OS.CreateSolidBrush(value);
                break;
            }
            case 3: {
                hBrush = OS.CreatePatternBrush(value);
            }
        }
        this.brushes[0] = hBrush;
        return this.brushes[0];
    }

    Control findBackgroundControl() {
        return this.background != -1 || this.backgroundImage != null ? this : null;
    }

    Cursor findCursor() {
        return this.cursor;
    }

    Control findThemeControl() {
        return null;
    }

    ToolTip findToolTip(int id) {
        if (this.toolTips == null) {
            return null;
        }
        return (id -= 108) >= 0 && id < this.toolTips.length ? this.toolTips[id] : null;
    }

    void fixActiveShell() {
        int hwndParent = OS.GetParent(this.handle);
        if (hwndParent != 0 && this.handle == OS.GetActiveWindow() && !OS.IsWindowEnabled(hwndParent) && OS.IsWindowVisible(hwndParent)) {
            OS.SetActiveWindow(hwndParent);
        }
    }

    void fixShell(Shell newShell, Control control) {
        String toolTipText;
        if (this == newShell) {
            return;
        }
        if (control == this.lastActive) {
            this.setActiveControl(null);
        }
        if ((toolTipText = control.toolTipText) != null) {
            control.setToolTipText(this, null);
            control.setToolTipText(newShell, toolTipText);
        }
    }

    void fixToolTip() {
        if (OS.COMCTL32_MAJOR >= 6) {
            if (this.toolTipHandle == 0) {
                return;
            }
            TOOLINFO lpti = new TOOLINFO();
            lpti.cbSize = TOOLINFO.sizeof;
            if (OS.SendMessage(this.toolTipHandle, OS.TTM_GETCURRENTTOOL, 0, lpti) != 0 && (lpti.uFlags & 1) != 0) {
                OS.SendMessage(this.toolTipHandle, OS.TTM_DELTOOL, 0, lpti);
                OS.SendMessage(this.toolTipHandle, OS.TTM_ADDTOOL, 0, lpti);
            }
        }
    }

    public void forceActive() {
        this.checkWidget();
        if (!this.isVisible()) {
            return;
        }
        OS.SetForegroundWindow(this.handle);
    }

    void forceResize() {
    }

    public int getAlpha() {
        byte[] pbAlpha;
        this.checkWidget();
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(5, 1) && OS.GetLayeredWindowAttributes(this.handle, null, pbAlpha = new byte[1], null)) {
            return pbAlpha[0] & 0xFF;
        }
        return 255;
    }

    public Rectangle getBounds() {
        this.checkWidget();
        if (!OS.IsWinCE && OS.IsIconic(this.handle)) {
            return super.getBounds();
        }
        RECT rect = new RECT();
        OS.GetWindowRect(this.handle, rect);
        int width = rect.right - rect.left;
        int height = rect.bottom - rect.top;
        return new Rectangle(rect.left, rect.top, width, height);
    }

    ToolTip getCurrentToolTip() {
        ToolTip tip;
        if (this.toolTipHandle != 0 && (tip = this.getCurrentToolTip(this.toolTipHandle)) != null) {
            return tip;
        }
        if (this.balloonTipHandle != 0 && (tip = this.getCurrentToolTip(this.balloonTipHandle)) != null) {
            return tip;
        }
        return null;
    }

    ToolTip getCurrentToolTip(int hwndToolTip) {
        if (hwndToolTip == 0) {
            return null;
        }
        if (OS.SendMessage(hwndToolTip, OS.TTM_GETCURRENTTOOL, 0, 0) != 0) {
            TOOLINFO lpti = new TOOLINFO();
            lpti.cbSize = TOOLINFO.sizeof;
            if (OS.SendMessage(hwndToolTip, OS.TTM_GETCURRENTTOOL, 0, lpti) != 0 && (lpti.uFlags & 1) == 0) {
                return this.findToolTip(lpti.uId);
            }
        }
        return null;
    }

    public boolean getEnabled() {
        this.checkWidget();
        return (this.state & 8) == 0;
    }

    public boolean getFullScreen() {
        this.checkWidget();
        return this.fullScreen;
    }

    public int getImeInputMode() {
        this.checkWidget();
        if (!OS.IsDBLocale) {
            return 0;
        }
        int hIMC = OS.ImmGetContext(this.handle);
        int[] lpfdwConversion = new int[1];
        int[] lpfdwSentence = new int[1];
        boolean open = OS.ImmGetOpenStatus(hIMC);
        if (open) {
            open = OS.ImmGetConversionStatus(hIMC, lpfdwConversion, lpfdwSentence);
        }
        OS.ImmReleaseContext(this.handle, hIMC);
        if (!open) {
            return 0;
        }
        int result = 0;
        if ((lpfdwConversion[0] & 0x10) != 0) {
            result |= 0x20;
        }
        if ((lpfdwConversion[0] & 8) != 0) {
            result |= 2;
        }
        if ((lpfdwConversion[0] & 2) != 0) {
            return result | 0x10;
        }
        if ((lpfdwConversion[0] & 1) != 0) {
            return result | 8;
        }
        return result | 4;
    }

    public Point getLocation() {
        this.checkWidget();
        if (!OS.IsWinCE && OS.IsIconic(this.handle)) {
            return super.getLocation();
        }
        RECT rect = new RECT();
        OS.GetWindowRect(this.handle, rect);
        return new Point(rect.left, rect.top);
    }

    public boolean getMaximized() {
        this.checkWidget();
        return !this.fullScreen && super.getMaximized();
    }

    public Point getMinimumSize() {
        this.checkWidget();
        int width = Math.max(0, this.minWidth);
        int trim = 1248;
        if ((this.style & 8) == 0 && (this.style & trim) != 0) {
            width = Math.max(width, OS.GetSystemMetrics(34));
        }
        int height = Math.max(0, this.minHeight);
        if ((this.style & 8) == 0 && (this.style & trim) != 0) {
            if ((this.style & 0x10) != 0) {
                height = Math.max(height, OS.GetSystemMetrics(35));
            } else {
                RECT rect = new RECT();
                int bits1 = OS.GetWindowLong(this.handle, -16);
                int bits2 = OS.GetWindowLong(this.handle, -20);
                OS.AdjustWindowRectEx(rect, bits1, false, bits2);
                height = Math.max(height, rect.bottom - rect.top);
            }
        }
        return new Point(width, height);
    }

    public boolean getModified() {
        this.checkWidget();
        return this.modified;
    }

    public Region getRegion() {
        this.checkWidget();
        return this.region;
    }

    public Shell getShell() {
        this.checkWidget();
        return this;
    }

    public Point getSize() {
        this.checkWidget();
        if (!OS.IsWinCE && OS.IsIconic(this.handle)) {
            return super.getSize();
        }
        RECT rect = new RECT();
        OS.GetWindowRect(this.handle, rect);
        int width = rect.right - rect.left;
        int height = rect.bottom - rect.top;
        return new Point(width, height);
    }

    public Shell[] getShells() {
        this.checkWidget();
        int count = 0;
        Shell[] shells = this.display.getShells();
        int i = 0;
        while (i < shells.length) {
            Composite shell = shells[i];
            while ((shell = shell.parent) != null && shell != this) {
            }
            if (shell == this) {
                ++count;
            }
            ++i;
        }
        int index = 0;
        Shell[] result = new Shell[count];
        int i2 = 0;
        while (i2 < shells.length) {
            Composite shell = shells[i2];
            while ((shell = shell.parent) != null && shell != this) {
            }
            if (shell == this) {
                result[index++] = shells[i2];
            }
            ++i2;
        }
        return result;
    }

    public ToolBar getToolBar() {
        this.checkWidget();
        return null;
    }

    Composite findDeferredControl() {
        return this.layoutCount > 0 ? this : null;
    }

    public boolean isEnabled() {
        this.checkWidget();
        return this.getEnabled();
    }

    public boolean isVisible() {
        this.checkWidget();
        return this.getVisible();
    }

    int hwndMDIClient() {
        if (this.hwndMDIClient == 0) {
            int widgetStyle = 1174405121;
            this.hwndMDIClient = OS.CreateWindowEx(0, new TCHAR(0, "MDICLIENT", true), null, widgetStyle, 0, 0, 0, 0, this.handle, 0, OS.GetModuleHandle(null), new CREATESTRUCT());
        }
        return this.hwndMDIClient;
    }

    public void open() {
        this.checkWidget();
        STARTUPINFO lpStartUpInfo = Display.lpStartupInfo;
        if (lpStartUpInfo == null || (lpStartUpInfo.dwFlags & 1) == 0) {
            this.bringToTop();
            if (this.isDisposed()) {
                return;
            }
        }
        if (OS.IsWinCE) {
            OS.SetForegroundWindow(this.handle);
        }
        OS.SendMessage(this.handle, 295, 3, 0);
        this.setVisible(true);
        if (this.isDisposed()) {
            return;
        }
        MSG msg = new MSG();
        int flags = 0x400002;
        OS.PeekMessage(msg, 0, 0, 0, flags);
        if (!this.restoreFocus() && !this.traverseGroup(true)) {
            this.setFocus();
        }
    }

    public boolean print(GC gc) {
        this.checkWidget();
        if (gc == null) {
            this.error(4);
        }
        if (gc.isDisposed()) {
            this.error(5);
        }
        return false;
    }

    void register() {
        super.register();
        if (this.toolTipHandle != 0) {
            this.display.addControl(this.toolTipHandle, this);
        }
        if (this.balloonTipHandle != 0) {
            this.display.addControl(this.balloonTipHandle, this);
        }
    }

    void releaseBrushes() {
        if (this.brushes != null) {
            int i = 0;
            while (i < this.brushes.length) {
                if (this.brushes[i] != 0) {
                    OS.DeleteObject(this.brushes[i]);
                }
                ++i;
            }
        }
        this.brushes = null;
    }

    void releaseChildren(boolean destroy) {
        Shell[] shells = this.getShells();
        int i = 0;
        while (i < shells.length) {
            Shell shell = shells[i];
            if (shell != null && !shell.isDisposed()) {
                shell.release(false);
            }
            ++i;
        }
        if (this.toolTips != null) {
            i = 0;
            while (i < this.toolTips.length) {
                ToolTip toolTip = this.toolTips[i];
                if (toolTip != null && !toolTip.isDisposed()) {
                    toolTip.release(false);
                }
                ++i;
            }
        }
        this.toolTips = null;
        super.releaseChildren(destroy);
    }

    void releaseHandle() {
        super.releaseHandle();
        this.hwndMDIClient = 0;
    }

    void releaseParent() {
    }

    void releaseWidget() {
        super.releaseWidget();
        this.releaseBrushes();
        this.activeMenu = null;
        this.display.clearModal(this);
        if (this.lpstrTip != 0) {
            int hHeap = OS.GetProcessHeap();
            OS.HeapFree(hHeap, 0, this.lpstrTip);
        }
        this.lpstrTip = 0;
        this.balloonTipHandle = 0;
        this.toolTipHandle = 0;
        if (OS.IsDBLocale && this.hIMC != 0) {
            OS.ImmDestroyContext(this.hIMC);
        }
        this.lastActive = null;
        this.balloonTitle = null;
        this.toolTitle = null;
    }

    void removeMenu(Menu menu) {
        super.removeMenu(menu);
        if (menu == this.activeMenu) {
            this.activeMenu = null;
        }
    }

    public void removeShellListener(ShellListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(21, listener);
        this.eventTable.unhook(19, listener);
        this.eventTable.unhook(20, listener);
        this.eventTable.unhook(26, listener);
        this.eventTable.unhook(27, listener);
    }

    void reskinChildren(int flags) {
        Shell[] shells = this.getShells();
        int i = 0;
        while (i < shells.length) {
            Shell shell = shells[i];
            if (shell != null) {
                shell.reskin(flags);
            }
            ++i;
        }
        if (this.toolTips != null) {
            i = 0;
            while (i < this.toolTips.length) {
                ToolTip toolTip = this.toolTips[i];
                if (toolTip != null) {
                    toolTip.reskin(flags);
                }
                ++i;
            }
        }
        super.reskinChildren(flags);
    }

    LRESULT selectPalette(int hPalette) {
        int hDC = OS.GetDC(this.handle);
        int hOld = OS.SelectPalette(hDC, hPalette, false);
        int result = OS.RealizePalette(hDC);
        if (result > 0) {
            OS.InvalidateRect(this.handle, null, true);
        } else {
            OS.SelectPalette(hDC, hOld, true);
            OS.RealizePalette(hDC);
        }
        OS.ReleaseDC(this.handle, hDC);
        return result > 0 ? LRESULT.ONE : LRESULT.ZERO;
    }

    boolean sendKeyEvent(int type, int msg, int wParam, int lParam, Event event) {
        if (!this.isEnabled() || !this.isActive()) {
            return false;
        }
        return super.sendKeyEvent(type, msg, wParam, lParam, event);
    }

    public void setActive() {
        this.checkWidget();
        if (!this.isVisible()) {
            return;
        }
        this.bringToTop();
    }

    void setActiveControl(Control control) {
        if (control != null && control.isDisposed()) {
            control = null;
        }
        if (this.lastActive != null && this.lastActive.isDisposed()) {
            this.lastActive = null;
        }
        if (this.lastActive == control) {
            return;
        }
        Control[] activate = control == null ? new Control[]{} : control.getPath();
        Control[] deactivate = this.lastActive == null ? new Control[]{} : this.lastActive.getPath();
        this.lastActive = control;
        int index = 0;
        int length = Math.min(activate.length, deactivate.length);
        while (index < length) {
            if (activate[index] != deactivate[index]) break;
            ++index;
        }
        int i = deactivate.length - 1;
        while (i >= index) {
            if (!deactivate[i].isDisposed()) {
                deactivate[i].sendEvent(27);
            }
            --i;
        }
        i = activate.length - 1;
        while (i >= index) {
            if (!activate[i].isDisposed()) {
                activate[i].sendEvent(26);
            }
            --i;
        }
    }

    public void setAlpha(int alpha) {
        this.checkWidget();
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(5, 1)) {
            int bits = OS.GetWindowLong(this.handle, -20);
            if ((alpha &= 0xFF) == 255) {
                OS.SetWindowLong(this.handle, -20, bits & 0xFFF7FFFF);
                int flags = 1157;
                OS.RedrawWindow(this.handle, null, 0, flags);
            } else {
                OS.SetWindowLong(this.handle, -20, bits | 0x80000);
                OS.SetLayeredWindowAttributes(this.handle, 0, (byte)alpha, 2);
            }
        }
    }

    void setBounds(int x, int y, int width, int height, int flags, boolean defer) {
        int bits;
        if (this.fullScreen) {
            this.setFullScreen(false);
        }
        if (((bits = OS.GetWindowLong(this.handle, -20)) & 0x80000) != 0) {
            flags &= 0xFFFFFFDF;
        }
        super.setBounds(x, y, width, height, flags, false);
    }

    public void setEnabled(boolean enabled) {
        this.checkWidget();
        if ((this.state & 8) == 0 == enabled) {
            return;
        }
        super.setEnabled(enabled);
        if (enabled && this.handle == OS.GetActiveWindow() && !this.restoreFocus()) {
            this.traverseGroup(true);
        }
    }

    public void setFullScreen(boolean fullScreen) {
        this.checkWidget();
        if (this.fullScreen == fullScreen) {
            return;
        }
        int stateFlags = fullScreen ? OS.SW_SHOWMAXIMIZED : OS.SW_RESTORE;
        int styleFlags = OS.GetWindowLong(this.handle, -16);
        int mask = 1248;
        if ((this.style & mask) != 0) {
            if (fullScreen) {
                styleFlags &= ~(0xC00000 | OS.WS_MAXIMIZEBOX | OS.WS_MINIMIZEBOX);
            } else {
                styleFlags |= 0xC00000;
                if ((this.style & 0x400) != 0) {
                    styleFlags |= OS.WS_MAXIMIZEBOX;
                }
                if ((this.style & 0x80) != 0) {
                    styleFlags |= OS.WS_MINIMIZEBOX;
                }
            }
        }
        if (fullScreen) {
            this.wasMaximized = this.getMaximized();
        }
        boolean visible = this.isVisible();
        OS.SetWindowLong(this.handle, -16, styleFlags);
        if (this.wasMaximized) {
            OS.ShowWindow(this.handle, 0);
            stateFlags = OS.SW_SHOWMAXIMIZED;
        }
        if (visible) {
            OS.ShowWindow(this.handle, stateFlags);
        }
        OS.UpdateWindow(this.handle);
        this.fullScreen = fullScreen;
    }

    public void setImeInputMode(int mode) {
        int[] lpfdwSentence;
        int[] lpfdwConversion;
        this.checkWidget();
        if (!OS.IsDBLocale) {
            return;
        }
        boolean imeOn = mode != 0;
        int hIMC = OS.ImmGetContext(this.handle);
        OS.ImmSetOpenStatus(hIMC, imeOn);
        if (imeOn && OS.ImmGetConversionStatus(hIMC, lpfdwConversion = new int[1], lpfdwSentence = new int[1])) {
            int newBits = 0;
            int oldBits = 3;
            if ((mode & 0x10) != 0) {
                newBits = 3;
                oldBits = 0;
            } else if ((mode & 8) != 0) {
                newBits = 1;
                oldBits = 2;
            }
            if ((mode & 0xA) != 0) {
                newBits |= 8;
            } else {
                oldBits |= 8;
            }
            if ((mode & 0x20) != 0) {
                newBits |= 0x10;
            } else {
                oldBits |= 0x10;
            }
            lpfdwConversion[0] = lpfdwConversion[0] | newBits;
            lpfdwConversion[0] = lpfdwConversion[0] & ~oldBits;
            OS.ImmSetConversionStatus(hIMC, lpfdwConversion[0], lpfdwSentence[0]);
        }
        OS.ImmReleaseContext(this.handle, hIMC);
    }

    public void setMinimumSize(int width, int height) {
        this.checkWidget();
        int widthLimit = 0;
        int heightLimit = 0;
        int trim = 1248;
        if ((this.style & 8) == 0 && (this.style & trim) != 0) {
            widthLimit = OS.GetSystemMetrics(34);
            if ((this.style & 0x10) != 0) {
                heightLimit = OS.GetSystemMetrics(35);
            } else {
                RECT rect = new RECT();
                int bits1 = OS.GetWindowLong(this.handle, -16);
                int bits2 = OS.GetWindowLong(this.handle, -20);
                OS.AdjustWindowRectEx(rect, bits1, false, bits2);
                heightLimit = rect.bottom - rect.top;
            }
        }
        this.minWidth = Math.max(widthLimit, width);
        this.minHeight = Math.max(heightLimit, height);
        Point size = this.getSize();
        int newWidth = Math.max(size.x, this.minWidth);
        int newHeight = Math.max(size.y, this.minHeight);
        if (this.minWidth <= widthLimit) {
            this.minWidth = -1;
        }
        if (this.minHeight <= heightLimit) {
            this.minHeight = -1;
        }
        if (newWidth != size.x || newHeight != size.y) {
            this.setSize(newWidth, newHeight);
        }
    }

    public void setMinimumSize(Point size) {
        this.checkWidget();
        if (size == null) {
            this.error(4);
        }
        this.setMinimumSize(size.x, size.y);
    }

    public void setModified(boolean modified) {
        this.checkWidget();
        this.modified = modified;
    }

    void setItemEnabled(int cmd, boolean enabled) {
        int hMenu = OS.GetSystemMenu(this.handle, false);
        if (hMenu == 0) {
            return;
        }
        int flags = 0;
        if (!enabled) {
            flags = 3;
        }
        OS.EnableMenuItem(hMenu, cmd, flags);
    }

    void setParent() {
    }

    public void setRegion(Region region) {
        this.checkWidget();
        if ((this.style & 8) == 0) {
            return;
        }
        super.setRegion(region);
    }

    void setToolTipText(int hwnd, String text) {
        if (OS.IsWinCE) {
            return;
        }
        TOOLINFO lpti = new TOOLINFO();
        lpti.cbSize = TOOLINFO.sizeof;
        lpti.hwnd = this.handle;
        lpti.uId = hwnd;
        int hwndToolTip = this.toolTipHandle();
        if (text == null) {
            OS.SendMessage(hwndToolTip, OS.TTM_DELTOOL, 0, lpti);
        } else if (OS.SendMessage(hwndToolTip, OS.TTM_GETTOOLINFO, 0, lpti) != 0) {
            OS.SendMessage(hwndToolTip, 1053, 0, 0);
        } else {
            lpti.uFlags = 17;
            lpti.lpszText = -1;
            OS.SendMessage(hwndToolTip, OS.TTM_ADDTOOL, 0, lpti);
        }
    }

    void setToolTipText(NMTTDISPINFO lpnmtdi, byte[] buffer) {
        if (!this.hasCursor()) {
            return;
        }
        int hHeap = OS.GetProcessHeap();
        if (this.lpstrTip != 0) {
            OS.HeapFree(hHeap, 0, this.lpstrTip);
        }
        int byteCount = buffer.length;
        this.lpstrTip = OS.HeapAlloc(hHeap, 8, byteCount);
        OS.MoveMemory(this.lpstrTip, buffer, byteCount);
        lpnmtdi.lpszText = this.lpstrTip;
    }

    void setToolTipText(NMTTDISPINFO lpnmtdi, char[] buffer) {
        if (!this.hasCursor()) {
            return;
        }
        int hHeap = OS.GetProcessHeap();
        if (this.lpstrTip != 0) {
            OS.HeapFree(hHeap, 0, this.lpstrTip);
        }
        int byteCount = buffer.length * 2;
        this.lpstrTip = OS.HeapAlloc(hHeap, 8, byteCount);
        OS.MoveMemory(this.lpstrTip, buffer, byteCount);
        lpnmtdi.lpszText = this.lpstrTip;
    }

    void setToolTipTitle(int hwndToolTip, String text, int icon) {
        if (hwndToolTip != this.toolTipHandle && hwndToolTip != this.balloonTipHandle) {
            return;
        }
        if (hwndToolTip == this.toolTipHandle) {
            if ((text == this.toolTitle || this.toolTitle != null && this.toolTitle.equals(text)) && icon == this.toolIcon) {
                return;
            }
            this.toolTitle = text;
            this.toolIcon = icon;
        } else if (hwndToolTip == this.balloonTipHandle) {
            if ((text == this.balloonTitle || this.balloonTitle != null && this.balloonTitle.equals(text)) && icon == this.toolIcon) {
                return;
            }
            this.balloonTitle = text;
            this.balloonIcon = icon;
        }
        if (text != null) {
            if (text.length() > 99) {
                text = text.substring(0, 99);
            }
            TCHAR pszTitle = new TCHAR(this.getCodePage(), text, true);
            OS.SendMessage(hwndToolTip, OS.TTM_SETTITLE, icon, pszTitle);
        } else {
            OS.SendMessage(hwndToolTip, OS.TTM_SETTITLE, 0, 0);
        }
    }

    public void setVisible(boolean visible) {
        int hwndParent;
        int style;
        this.checkWidget();
        int mask = 229376;
        if ((this.style & mask) != 0) {
            if (visible) {
                int hwndShell;
                Control control;
                this.display.setModalShell(this);
                if ((this.style & 0x30000) != 0) {
                    this.display.setModalDialog(null);
                }
                if ((control = this.display._getFocusControl()) != null && !control.isActive()) {
                    this.bringToTop();
                    if (this.isDisposed()) {
                        return;
                    }
                }
                if ((hwndShell = OS.GetActiveWindow()) == 0 && this.parent != null) {
                    hwndShell = this.parent.handle;
                }
                if (hwndShell != 0) {
                    OS.SendMessage(hwndShell, 31, 0, 0);
                }
                OS.ReleaseCapture();
            } else {
                this.display.clearModal(this);
            }
        } else {
            this.updateModal();
        }
        if (this.showWithParent && !visible && !OS.IsWinCE) {
            OS.ShowOwnedPopups(this.handle, false);
        }
        if (!visible) {
            this.fixActiveShell();
        }
        if (visible && this.center && !this.moved) {
            this.center();
            if (this.isDisposed()) {
                return;
            }
        }
        super.setVisible(visible);
        if (this.isDisposed()) {
            return;
        }
        if (this.showWithParent != visible) {
            this.showWithParent = visible;
            if (visible && !OS.IsWinCE) {
                OS.ShowOwnedPopups(this.handle, true);
            }
        }
        if (visible && this.parent != null && (this.parent.state & 0x4000) != 0 && ((style = OS.GetWindowLong(hwndParent = this.parent.handle, -20)) & 0x80) != 0) {
            OS.SetWindowLong(hwndParent, -20, style & 0xFFFFFF7F);
            OS.ShowWindow(hwndParent, 0);
            OS.ShowWindow(hwndParent, OS.SW_RESTORE);
        }
    }

    void subclass() {
        super.subclass();
        if (ToolTipProc != 0) {
            int newProc = this.display.windowProc;
            if (this.toolTipHandle != 0) {
                OS.SetWindowLongPtr(this.toolTipHandle, -4, newProc);
            }
            if (this.balloonTipHandle != 0) {
                OS.SetWindowLongPtr(this.balloonTipHandle, -4, newProc);
            }
        }
    }

    int toolTipHandle() {
        if (this.toolTipHandle == 0) {
            this.createToolTipHandle();
        }
        return this.toolTipHandle;
    }

    boolean translateAccelerator(MSG msg) {
        if (!this.isEnabled() || !this.isActive()) {
            return false;
        }
        if (this.menuBar != null && !this.menuBar.isEnabled()) {
            return false;
        }
        return this.translateMDIAccelerator(msg) || this.translateMenuAccelerator(msg);
    }

    boolean traverseEscape() {
        if (this.parent == null) {
            return false;
        }
        if (!this.isVisible() || !this.isEnabled()) {
            return false;
        }
        this.close();
        return true;
    }

    void unsubclass() {
        super.unsubclass();
        if (ToolTipProc != 0) {
            if (this.toolTipHandle != 0) {
                OS.SetWindowLongPtr(this.toolTipHandle, -4, ToolTipProc);
            }
            if (this.toolTipHandle != 0) {
                OS.SetWindowLongPtr(this.toolTipHandle, -4, ToolTipProc);
            }
        }
    }

    void updateModal() {
        if (Display.TrimEnabled) {
            this.setItemEnabled(61536, this.isActive());
        } else {
            OS.EnableWindow(this.handle, this.isActive());
        }
    }

    CREATESTRUCT widgetCreateStruct() {
        return null;
    }

    int widgetParent() {
        if (this.handle != 0) {
            return this.handle;
        }
        return this.parent != null ? this.parent.handle : 0;
    }

    int widgetExtStyle() {
        int bits = super.widgetExtStyle() & 0xFFFFFFBF;
        if ((this.style & 4) != 0) {
            bits |= 0x80;
        }
        if (!OS.IsWinCE && this.parent == null && (this.style & 0x4000) != 0) {
            int trim = 1248;
            if ((this.style & 8) != 0 || (this.style & trim) == 0) {
                bits |= 0x80;
            }
        }
        if (this.parent != null) {
            if (OS.IsWin95) {
                return bits;
            }
            if (OS.WIN32_VERSION < OS.VERSION(4, 10)) {
                return bits;
            }
        }
        if ((this.style & 0x4000) != 0) {
            bits |= 8;
        }
        return bits;
    }

    TCHAR windowClass() {
        int trim;
        if (OS.IsSP) {
            return DialogClass;
        }
        if ((this.style & 4) != 0 && (this.style & (trim = 3312)) == 0) {
            return this.display.windowShadowClass;
        }
        return this.parent != null ? DialogClass : super.windowClass();
    }

    int windowProc() {
        int trim;
        if (this.windowProc != 0) {
            return this.windowProc;
        }
        if (OS.IsSP) {
            return DialogProc;
        }
        if ((this.style & 4) != 0 && (this.style & (trim = 3312)) == 0) {
            return super.windowProc();
        }
        return this.parent != null ? DialogProc : super.windowProc();
    }

    int windowProc(int hwnd, int msg, int wParam, int lParam) {
        if (this.handle == 0) {
            return 0;
        }
        if (hwnd == this.toolTipHandle || hwnd == this.balloonTipHandle) {
            switch (msg) {
                case 275: {
                    ToolTip tip;
                    if (wParam != 100 || (tip = this.getCurrentToolTip(hwnd)) == null || !tip.autoHide) break;
                    tip.setVisible(false);
                    break;
                }
                case 513: {
                    ToolTip tip = this.getCurrentToolTip(hwnd);
                    if (tip == null) break;
                    tip.setVisible(false);
                    tip.sendSelectionEvent(13);
                }
            }
            return this.callWindowProc(hwnd, msg, wParam, lParam);
        }
        return super.windowProc(hwnd, msg, wParam, lParam);
    }

    int widgetStyle() {
        int bits = super.widgetStyle();
        if (this.handle != 0) {
            return bits | 0x40000000;
        }
        bits &= 0xBFFFFFFF;
        if (OS.IsWinCE) {
            if (OS.IsSP) {
                return bits | Integer.MIN_VALUE;
            }
            return this.parent == null ? bits : bits | Integer.MIN_VALUE;
        }
        return bits | OS.WS_OVERLAPPED | 0xC00000;
    }

    LRESULT WM_ACTIVATE(int wParam, int lParam) {
        ToolTip tip;
        if (OS.IsPPC) {
            if (this.hooks(33) || this.hooks(34)) {
                int fActive = OS.LOWORD(wParam);
                int hwnd = fActive != 0 ? this.handle : 0;
                int bVk = 193;
                while (bVk <= 198) {
                    OS.SHSetAppKeyWndAssoc((byte)bVk, hwnd);
                    ++bVk;
                }
            }
            if (OS.LOWORD(wParam) != 0) {
                OS.SHSipPreference(this.handle, this.psai.fSipUp == 0 ? 1 : 0);
            }
        }
        if (OS.WIN32_VERSION >= OS.VERSION(5, 1) && OS.LOWORD(wParam) == 0 && OS.IsDBLocale && this.hIMC != 0 && OS.ImmGetOpenStatus(this.hIMC)) {
            OS.ImmNotifyIME(this.hIMC, 21, 1, 0);
        }
        LRESULT result = super.WM_ACTIVATE(wParam, lParam);
        if (OS.LOWORD(wParam) == 0 && (lParam == 0 || lParam != this.toolTipHandle && lParam != this.balloonTipHandle) && (tip = this.getCurrentToolTip()) != null) {
            tip.setVisible(false);
        }
        return this.parent != null ? LRESULT.ZERO : result;
    }

    LRESULT WM_COMMAND(int wParam, int lParam) {
        int loWord;
        if (OS.IsPPC && (loWord = OS.LOWORD(wParam)) == 1 && (lParam == 0 || lParam == this.handle)) {
            OS.PostMessage(this.handle, 16, 0, 0);
            return LRESULT.ZERO;
        }
        if ((OS.IsPPC || OS.IsSP) && this.menuBar != null) {
            int hwndCB = this.menuBar.hwndCB;
            if (lParam != 0 && hwndCB != 0) {
                if (lParam == hwndCB) {
                    return super.WM_COMMAND(wParam, 0);
                }
                int hwndChild = OS.GetWindow(hwndCB, 5);
                if (lParam == hwndChild) {
                    return super.WM_COMMAND(wParam, 0);
                }
            }
        }
        return super.WM_COMMAND(wParam, lParam);
    }

    LRESULT WM_DESTROY(int wParam, int lParam) {
        LRESULT result = super.WM_DESTROY(wParam, lParam);
        int bits = OS.GetWindowLong(this.handle, -16);
        if ((bits & 0x40000000) != 0) {
            this.releaseParent();
            this.release(false);
        }
        return result;
    }

    LRESULT WM_ERASEBKGND(int wParam, int lParam) {
        LRESULT result = super.WM_ERASEBKGND(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
            this.drawBackground(wParam);
            return LRESULT.ONE;
        }
        return result;
    }

    LRESULT WM_ENTERIDLE(int wParam, int lParam) {
        LRESULT result = super.WM_ENTERIDLE(wParam, lParam);
        if (result != null) {
            return result;
        }
        Display display = this.display;
        if (display.runMessages && display.runAsyncMessages(false)) {
            display.wakeThread();
        }
        return result;
    }

    LRESULT WM_GETMINMAXINFO(int wParam, int lParam) {
        LRESULT result = super.WM_GETMINMAXINFO(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (this.minWidth != -1 || this.minHeight != -1) {
            MINMAXINFO info = new MINMAXINFO();
            OS.MoveMemory(info, lParam, MINMAXINFO.sizeof);
            if (this.minWidth != -1) {
                info.ptMinTrackSize_x = this.minWidth;
            }
            if (this.minHeight != -1) {
                info.ptMinTrackSize_y = this.minHeight;
            }
            OS.MoveMemory(lParam, info, MINMAXINFO.sizeof);
            return LRESULT.ZERO;
        }
        return result;
    }

    LRESULT WM_MOUSEACTIVATE(int wParam, int lParam) {
        int bits;
        int hwnd;
        LRESULT result = super.WM_MOUSEACTIVATE(wParam, lParam);
        if (result != null) {
            return result;
        }
        short hittest = (short)OS.LOWORD(lParam);
        switch (hittest) {
            case -2: 
            case -1: 
            case 0: {
                break;
            }
            default: {
                Decorations decorations;
                Control control = this.display._getFocusControl();
                if (control == null || (decorations = control.menuShell()).getShell() != this || decorations == this) break;
                this.display.ignoreRestoreFocus = true;
                this.display.lastHittest = hittest;
                this.display.lastHittestControl = null;
                if (hittest == 5 || hittest == 3) {
                    this.display.lastHittestControl = control;
                    return null;
                }
                if (OS.IsWin95 && hittest == 2) {
                    this.display.lastHittestControl = control;
                }
                return new LRESULT(3);
            }
        }
        if (hittest == 5) {
            return null;
        }
        POINT pt = new POINT();
        if (!OS.GetCursorPos(pt)) {
            int pos = OS.GetMessagePos();
            OS.POINTSTOPOINT(pt, pos);
        }
        if ((hwnd = OS.WindowFromPoint(pt)) == 0) {
            return null;
        }
        Control control = this.display.findControl(hwnd);
        if (control != null && (control.state & 2) != 0 && (control.style & 0x80000) != 0 && (this.style & (bits = 540672)) == bits && (hittest == 18 || hittest == 1)) {
            return new LRESULT(3);
        }
        int code = this.callWindowProc(this.handle, 33, wParam, lParam);
        this.setActiveControl(control);
        return new LRESULT(code);
    }

    LRESULT WM_MOVE(int wParam, int lParam) {
        LRESULT result = super.WM_MOVE(wParam, lParam);
        if (result != null) {
            return result;
        }
        ToolTip tip = this.getCurrentToolTip();
        if (tip != null) {
            tip.setVisible(false);
        }
        return result;
    }

    LRESULT WM_NCHITTEST(int wParam, int lParam) {
        if (!OS.IsWindowEnabled(this.handle)) {
            return null;
        }
        if (!this.isEnabled() || !this.isActive()) {
            if (!Display.TrimEnabled) {
                return new LRESULT(0);
            }
            int hittest = this.callWindowProc(this.handle, 132, wParam, lParam);
            if (hittest == 1 || hittest == 5) {
                hittest = 18;
            }
            return new LRESULT(hittest);
        }
        if (this.menuBar != null && !this.menuBar.getEnabled()) {
            int hittest = this.callWindowProc(this.handle, 132, wParam, lParam);
            if (hittest == 5) {
                hittest = 18;
            }
            return new LRESULT(hittest);
        }
        return null;
    }

    LRESULT WM_NCLBUTTONDOWN(int wParam, int lParam) {
        Control focusControl;
        boolean fixActive;
        LRESULT result = super.WM_NCLBUTTONDOWN(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (!this.display.ignoreRestoreFocus) {
            return result;
        }
        Display display = this.display;
        int hwndActive = 0;
        boolean bl = fixActive = OS.IsWin95 && display.lastHittest == 2;
        if (fixActive) {
            hwndActive = OS.SetActiveWindow(this.handle);
        }
        display.lockActiveWindow = true;
        int code = this.callWindowProc(this.handle, 161, wParam, lParam);
        display.lockActiveWindow = false;
        if (fixActive) {
            OS.SetActiveWindow(hwndActive);
        }
        if ((focusControl = display.lastHittestControl) != null && !focusControl.isDisposed()) {
            focusControl.setFocus();
        }
        display.lastHittestControl = null;
        display.ignoreRestoreFocus = false;
        return new LRESULT(code);
    }

    LRESULT WM_PALETTECHANGED(int wParam, int lParam) {
        int hPalette;
        if (wParam != this.handle && (hPalette = this.display.hPalette) != 0) {
            return this.selectPalette(hPalette);
        }
        return super.WM_PALETTECHANGED(wParam, lParam);
    }

    LRESULT WM_QUERYNEWPALETTE(int wParam, int lParam) {
        int hPalette = this.display.hPalette;
        if (hPalette != 0) {
            return this.selectPalette(hPalette);
        }
        return super.WM_QUERYNEWPALETTE(wParam, lParam);
    }

    LRESULT WM_SETCURSOR(int wParam, int lParam) {
        Control control;
        short hitTest;
        int msg = OS.HIWORD(lParam);
        if (msg == 513) {
            int hwndPopup;
            int hwndModal;
            Shell modalShell;
            if (!Display.TrimEnabled && (modalShell = this.display.getModalShell()) != null && !this.isActive() && OS.IsWindowEnabled(hwndModal = modalShell.handle)) {
                OS.SetActiveWindow(hwndModal);
            }
            if (!OS.IsWindowEnabled(this.handle) && !OS.IsWinCE && (hwndPopup = OS.GetLastActivePopup(this.handle)) != 0 && hwndPopup != this.handle && this.display.getControl(hwndPopup) == null && OS.IsWindowEnabled(hwndPopup)) {
                OS.SetActiveWindow(hwndPopup);
            }
        }
        if ((hitTest = (short)OS.LOWORD(lParam)) == -2 && !this.getEnabled() && (control = this.display.getControl(wParam)) == this && this.cursor != null) {
            POINT pt = new POINT();
            int pos = OS.GetMessagePos();
            OS.POINTSTOPOINT(pt, pos);
            OS.ScreenToClient(this.handle, pt);
            RECT rect = new RECT();
            OS.GetClientRect(this.handle, rect);
            if (OS.PtInRect(rect, pt)) {
                OS.SetCursor(this.cursor.handle);
                switch (msg) {
                    case 513: 
                    case 516: 
                    case 519: 
                    case 523: {
                        OS.MessageBeep(0);
                    }
                }
                return LRESULT.ONE;
            }
        }
        return super.WM_SETCURSOR(wParam, lParam);
    }

    LRESULT WM_SETTINGCHANGE(int wParam, int lParam) {
        LRESULT result = super.WM_SETTINGCHANGE(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (OS.IsPPC && wParam == 224) {
            if ((this.style & 0x10) != 0) {
                OS.SHHandleWMSettingChange(this.handle, wParam, lParam, this.psai);
                return LRESULT.ZERO;
            }
            SIPINFO pSipInfo = new SIPINFO();
            pSipInfo.cbSize = SIPINFO.sizeof;
            OS.SipGetInfo(pSipInfo);
            this.psai.fSipUp = pSipInfo.fdwFlags & 1;
        }
        return result;
    }

    LRESULT WM_SHOWWINDOW(int wParam, int lParam) {
        LRESULT result = super.WM_SHOWWINDOW(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (lParam == 3) {
            Composite control = this;
            while (control != null) {
                Shell shell = ((Control)control).getShell();
                if (!shell.showWithParent) {
                    return LRESULT.ZERO;
                }
                control = control.parent;
            }
        }
        return result;
    }

    LRESULT WM_SYSCOMMAND(int wParam, int lParam) {
        LRESULT result = super.WM_SYSCOMMAND(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (OS.IsWinNT) {
            int cmd = wParam & 0xFFF0;
            switch (cmd) {
                case 61472: {
                    long memory = Runtime.getRuntime().totalMemory();
                    if (memory < 0x2000000L) break;
                    OS.ShowWindow(this.handle, 2);
                    return LRESULT.ZERO;
                }
            }
        }
        return result;
    }

    LRESULT WM_WINDOWPOSCHANGING(int wParam, int lParam) {
        LRESULT result = super.WM_WINDOWPOSCHANGING(wParam, lParam);
        if (result != null) {
            return result;
        }
        WINDOWPOS lpwp = new WINDOWPOS();
        OS.MoveMemory(lpwp, lParam, WINDOWPOS.sizeof);
        if ((lpwp.flags & 1) == 0) {
            lpwp.cx = Math.max(lpwp.cx, this.minWidth);
            int trim = 1248;
            if ((this.style & 8) == 0 && (this.style & trim) != 0) {
                lpwp.cx = Math.max(lpwp.cx, OS.GetSystemMetrics(34));
            }
            lpwp.cy = Math.max(lpwp.cy, this.minHeight);
            if ((this.style & 8) == 0 && (this.style & trim) != 0) {
                if ((this.style & 0x10) != 0) {
                    lpwp.cy = Math.max(lpwp.cy, OS.GetSystemMetrics(35));
                } else {
                    RECT rect = new RECT();
                    int bits1 = OS.GetWindowLong(this.handle, -16);
                    int bits2 = OS.GetWindowLong(this.handle, -20);
                    OS.AdjustWindowRectEx(rect, bits1, false, bits2);
                    lpwp.cy = Math.max(lpwp.cy, rect.bottom - rect.top);
                }
            }
            OS.MoveMemory(lParam, lpwp, WINDOWPOS.sizeof);
        }
        return result;
    }
}

