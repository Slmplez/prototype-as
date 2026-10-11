/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.SWT;
import org.eclipse.swt.accessibility.Accessible;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.DragDetectListener;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.GestureListener;
import org.eclipse.swt.events.HelpListener;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.MenuDetectListener;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.MouseMoveListener;
import org.eclipse.swt.events.MouseTrackListener;
import org.eclipse.swt.events.MouseWheelListener;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.events.TouchListener;
import org.eclipse.swt.events.TraverseListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.GCData;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.Region;
import org.eclipse.swt.internal.Compatibility;
import org.eclipse.swt.internal.gdip.Gdip;
import org.eclipse.swt.internal.win32.CREATESTRUCT;
import org.eclipse.swt.internal.win32.DRAWITEMSTRUCT;
import org.eclipse.swt.internal.win32.FLICK_DATA;
import org.eclipse.swt.internal.win32.FLICK_POINT;
import org.eclipse.swt.internal.win32.GESTURECONFIG;
import org.eclipse.swt.internal.win32.GESTUREINFO;
import org.eclipse.swt.internal.win32.HELPINFO;
import org.eclipse.swt.internal.win32.LOGFONT;
import org.eclipse.swt.internal.win32.LOGFONTA;
import org.eclipse.swt.internal.win32.LOGFONTW;
import org.eclipse.swt.internal.win32.LRESULT;
import org.eclipse.swt.internal.win32.MEASUREITEMSTRUCT;
import org.eclipse.swt.internal.win32.MENUITEMINFO;
import org.eclipse.swt.internal.win32.MONITORINFO;
import org.eclipse.swt.internal.win32.MSG;
import org.eclipse.swt.internal.win32.NMHDR;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.POINT;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.internal.win32.TOUCHINPUT;
import org.eclipse.swt.internal.win32.WINDOWPOS;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Decorations;
import org.eclipse.swt.widgets.Dialog;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.Monitor;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Touch;
import org.eclipse.swt.widgets.TouchSource;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.widgets.Widget;

public abstract class Control
extends Widget
implements Drawable {
    public int handle;
    Composite parent;
    Cursor cursor;
    Menu menu;
    String toolTipText;
    Object layoutData;
    Accessible accessible;
    Image backgroundImage;
    Region region;
    Font font;
    int drawCount;
    int foreground;
    int background;

    Control() {
    }

    public Control(Composite parent, int style) {
        super(parent, style);
        this.parent = parent;
        this.createWidget();
    }

    public void addControlListener(ControlListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(11, typedListener);
        this.addListener(10, typedListener);
    }

    public void addDragDetectListener(DragDetectListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(29, typedListener);
    }

    public void addFocusListener(FocusListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(15, typedListener);
        this.addListener(16, typedListener);
    }

    public void addGestureListener(GestureListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(48, typedListener);
    }

    public void addHelpListener(HelpListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(28, typedListener);
    }

    public void addKeyListener(KeyListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(2, typedListener);
        this.addListener(1, typedListener);
    }

    public void addMenuDetectListener(MenuDetectListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(35, typedListener);
    }

    public void addMouseListener(MouseListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(3, typedListener);
        this.addListener(4, typedListener);
        this.addListener(8, typedListener);
    }

    public void addMouseTrackListener(MouseTrackListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(6, typedListener);
        this.addListener(7, typedListener);
        this.addListener(32, typedListener);
    }

    public void addMouseMoveListener(MouseMoveListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(5, typedListener);
    }

    public void addMouseWheelListener(MouseWheelListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(37, typedListener);
    }

    public void addPaintListener(PaintListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(9, typedListener);
    }

    public void addTouchListener(TouchListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(47, typedListener);
    }

    public void addTraverseListener(TraverseListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(31, typedListener);
    }

    int binarySearch(int[] indices, int start, int end, int index) {
        int low = start;
        int high = end - 1;
        while (low <= high) {
            int mid = low + high >>> 1;
            if (indices[mid] == index) {
                return mid;
            }
            if (indices[mid] < index) {
                low = mid + 1;
                continue;
            }
            high = mid - 1;
        }
        return -low - 1;
    }

    int borderHandle() {
        return this.handle;
    }

    void checkBackground() {
        Shell shell = this.getShell();
        if (this == shell) {
            return;
        }
        this.state &= 0xFFFFFBFF;
        Composite composite = this.parent;
        while (true) {
            int mode;
            if ((mode = composite.backgroundMode) != 0) {
                if (mode == 1) {
                    Control control = this;
                    do {
                        if ((control.state & 0x100) != 0) continue;
                        return;
                    } while ((control = control.parent) != composite);
                }
                this.state |= 0x400;
                return;
            }
            if (composite == shell) break;
            composite = composite.parent;
        }
    }

    void checkBorder() {
        if (this.getBorderWidth() == 0) {
            this.style &= 0xFFFFF7FF;
        }
    }

    void checkBuffered() {
        this.style &= 0xDFFFFFFF;
    }

    void checkComposited() {
    }

    boolean checkHandle(int hwnd) {
        return hwnd == this.handle;
    }

    void checkMirrored() {
        int bits;
        if ((this.style & 0x4000000) != 0 && ((bits = OS.GetWindowLong(this.handle, -20)) & 0x400000) != 0) {
            this.style |= 0x8000000;
        }
    }

    public Point computeSize(int wHint, int hHint) {
        return this.computeSize(wHint, hHint, true);
    }

    public Point computeSize(int wHint, int hHint, boolean changed) {
        this.checkWidget();
        int width = 64;
        int height = 64;
        if (wHint != -1) {
            width = wHint;
        }
        if (hHint != -1) {
            height = hHint;
        }
        int border = this.getBorderWidth();
        return new Point(width += border * 2, height += border * 2);
    }

    Widget computeTabGroup() {
        if (this.isTabGroup()) {
            return this;
        }
        return this.parent.computeTabGroup();
    }

    Control computeTabRoot() {
        Control[] tabList = this.parent._getTabList();
        if (tabList != null) {
            int index = 0;
            while (index < tabList.length) {
                if (tabList[index] == this) break;
                ++index;
            }
            if (index == tabList.length && this.isTabGroup()) {
                return this;
            }
        }
        return this.parent.computeTabRoot();
    }

    Widget[] computeTabList() {
        if (this.isTabGroup() && this.getVisible() && this.getEnabled()) {
            return new Widget[]{this};
        }
        return new Widget[0];
    }

    void createHandle() {
        int bits;
        int hwndParent = this.widgetParent();
        this.handle = OS.CreateWindowEx(this.widgetExtStyle(), this.windowClass(), null, this.widgetStyle(), Integer.MIN_VALUE, 0, Integer.MIN_VALUE, 0, hwndParent, 0, OS.GetModuleHandle(null), this.widgetCreateStruct());
        if (this.handle == 0) {
            this.error(2);
        }
        if (((bits = OS.GetWindowLong(this.handle, -16)) & 0x40000000) != 0) {
            OS.SetWindowLongPtr(this.handle, -12, this.handle);
        }
        if (OS.IsDBLocale && hwndParent != 0) {
            int hIMC = OS.ImmGetContext(hwndParent);
            OS.ImmAssociateContext(this.handle, hIMC);
            OS.ImmReleaseContext(hwndParent, hIMC);
        }
    }

    void checkGesture() {
        int hHeap;
        int pConfigs;
        int value;
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 1) && ((value = OS.GetSystemMetrics(94)) & 0xC0) != 0 && (pConfigs = OS.HeapAlloc(hHeap = OS.GetProcessHeap(), 8, GESTURECONFIG.sizeof)) != 0) {
            GESTURECONFIG config = new GESTURECONFIG();
            config.dwID = 5;
            config.dwWant = 1;
            config.dwBlock = 0;
            OS.MoveMemory(pConfigs, config, GESTURECONFIG.sizeof);
            OS.SetGestureConfig(this.handle, 0, 1, pConfigs, GESTURECONFIG.sizeof);
            OS.HeapFree(hHeap, 0, pConfigs);
        }
    }

    void createWidget() {
        this.state |= 0x8000;
        this.background = -1;
        this.foreground = -1;
        this.checkOrientation(this.parent);
        this.createHandle();
        this.checkBackground();
        this.checkBuffered();
        this.checkComposited();
        this.register();
        this.subclass();
        this.setDefaultFont();
        this.checkMirrored();
        this.checkBorder();
        this.checkGesture();
        if ((this.state & 0x400) != 0) {
            this.setBackground();
        }
    }

    int defaultBackground() {
        if (OS.IsWinCE) {
            return OS.GetSysColor(OS.COLOR_WINDOW);
        }
        return OS.GetSysColor(OS.COLOR_BTNFACE);
    }

    int defaultFont() {
        return this.display.getSystemFont().handle;
    }

    int defaultForeground() {
        return OS.GetSysColor(OS.COLOR_WINDOWTEXT);
    }

    void deregister() {
        this.display.removeControl(this.handle);
    }

    void destroyWidget() {
        int hwnd = this.topHandle();
        this.releaseHandle();
        if (hwnd != 0) {
            OS.DestroyWindow(hwnd);
        }
    }

    public boolean dragDetect(Event event) {
        this.checkWidget();
        if (event == null) {
            this.error(4);
        }
        return this.dragDetect(event.button, event.count, event.stateMask, event.x, event.y);
    }

    public boolean dragDetect(MouseEvent event) {
        this.checkWidget();
        if (event == null) {
            this.error(4);
        }
        return this.dragDetect(event.button, event.count, event.stateMask, event.x, event.y);
    }

    boolean dragDetect(int button, int count, int stateMask, int x, int y) {
        if (button != 1 || count != 1) {
            return false;
        }
        boolean dragging = this.dragDetect(this.handle, x, y, false, null, null);
        if (OS.GetKeyState(1) < 0 && OS.GetCapture() != this.handle) {
            OS.SetCapture(this.handle);
        }
        if (!dragging) {
            if (button == 1 && OS.GetKeyState(27) >= 0) {
                int wParam = 0;
                if ((stateMask & 0x40000) != 0) {
                    wParam |= 8;
                }
                if ((stateMask & 0x20000) != 0) {
                    wParam |= 4;
                }
                if ((stateMask & 0x10000) != 0) {
                    wParam |= 0x20;
                }
                if ((stateMask & 0x80000) != 0) {
                    wParam |= 1;
                }
                if ((stateMask & 0x100000) != 0) {
                    wParam |= 0x10;
                }
                if ((stateMask & 0x200000) != 0) {
                    wParam |= 2;
                }
                if ((stateMask & 0x800000) != 0) {
                    wParam |= 0x20;
                }
                if ((stateMask & 0x2000000) != 0) {
                    wParam |= 0x40;
                }
                int lParam = OS.MAKELPARAM(x, y);
                OS.SendMessage(this.handle, 514, wParam, lParam);
            }
            return false;
        }
        return this.sendDragEvent(button, stateMask, x, y);
    }

    void drawBackground(int hDC) {
        RECT rect = new RECT();
        OS.GetClientRect(this.handle, rect);
        this.drawBackground(hDC, rect);
    }

    void drawBackground(int hDC, RECT rect) {
        this.drawBackground(hDC, rect, -1, 0, 0);
    }

    void drawBackground(int hDC, RECT rect, int pixel, int tx, int ty) {
        Control control = this.findBackgroundControl();
        if (control != null) {
            if (control.backgroundImage != null) {
                this.fillImageBackground(hDC, control, rect, tx, ty);
                return;
            }
            pixel = control.getBackgroundPixel();
        }
        if (pixel == -1 && (this.state & 0x100) != 0 && OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed() && (control = this.findThemeControl()) != null) {
            this.fillThemeBackground(hDC, control, rect);
            return;
        }
        if (pixel == -1) {
            pixel = this.getBackgroundPixel();
        }
        this.fillBackground(hDC, pixel, rect);
    }

    void drawImageBackground(int hDC, int hwnd, int hBitmap, RECT rect, int tx, int ty) {
        RECT rect2 = new RECT();
        OS.GetClientRect(hwnd, rect2);
        OS.MapWindowPoints(hwnd, this.handle, rect2, 2);
        int hBrush = this.findBrush(hBitmap, 3);
        POINT lpPoint = new POINT();
        OS.GetWindowOrgEx(hDC, lpPoint);
        OS.SetBrushOrgEx(hDC, -rect2.left - lpPoint.x - tx, -rect2.top - lpPoint.y - ty, lpPoint);
        int hOldBrush = OS.SelectObject(hDC, hBrush);
        OS.PatBlt(hDC, rect.left, rect.top, rect.right - rect.left, rect.bottom - rect.top, 15728673);
        OS.SetBrushOrgEx(hDC, lpPoint.x, lpPoint.y, null);
        OS.SelectObject(hDC, hOldBrush);
    }

    void drawThemeBackground(int hDC, int hwnd, RECT rect) {
    }

    void enableDrag(boolean enabled) {
    }

    void enableWidget(boolean enabled) {
        OS.EnableWindow(this.handle, enabled);
    }

    void fillBackground(int hDC, int pixel, RECT rect) {
        if (rect.left > rect.right || rect.top > rect.bottom) {
            return;
        }
        int hPalette = this.display.hPalette;
        if (hPalette != 0) {
            OS.SelectPalette(hDC, hPalette, false);
            OS.RealizePalette(hDC);
        }
        OS.FillRect(hDC, rect, this.findBrush(pixel, 0));
    }

    void fillImageBackground(int hDC, Control control, RECT rect, int tx, int ty) {
        Image image;
        if (rect.left > rect.right || rect.top > rect.bottom) {
            return;
        }
        if (control != null && (image = control.backgroundImage) != null) {
            control.drawImageBackground(hDC, this.handle, image.handle, rect, tx, ty);
        }
    }

    void fillThemeBackground(int hDC, Control control, RECT rect) {
        if (rect.left > rect.right || rect.top > rect.bottom) {
            return;
        }
        if (control != null) {
            control.drawThemeBackground(hDC, this.handle, rect);
        }
    }

    Control findBackgroundControl() {
        if (this.background != -1 || this.backgroundImage != null) {
            return this;
        }
        return (this.state & 0x400) != 0 ? this.parent.findBackgroundControl() : null;
    }

    int findBrush(int value, int lbStyle) {
        return this.parent.findBrush(value, lbStyle);
    }

    Cursor findCursor() {
        if (this.cursor != null) {
            return this.cursor;
        }
        return this.parent.findCursor();
    }

    Control findImageControl() {
        Control control = this.findBackgroundControl();
        return control != null && control.backgroundImage != null ? control : null;
    }

    Control findThemeControl() {
        return this.background == -1 && this.backgroundImage == null ? this.parent.findThemeControl() : null;
    }

    Menu[] findMenus(Control control) {
        if (this.menu != null && this != control) {
            return new Menu[]{this.menu};
        }
        return new Menu[0];
    }

    char findMnemonic(String string) {
        int index = 0;
        int length = string.length();
        while (true) {
            if (index < length && string.charAt(index) != '&') {
                ++index;
                continue;
            }
            if (++index >= length) {
                return '\u0000';
            }
            if (string.charAt(index) != '&') {
                return string.charAt(index);
            }
            if (++index >= length) break;
        }
        return '\u0000';
    }

    void fixChildren(Shell newShell, Shell oldShell, Decorations newDecorations, Decorations oldDecorations, Menu[] menus) {
        oldShell.fixShell(newShell, this);
        oldDecorations.fixDecorations(newDecorations, this, menus);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    void fixFocus(Control focusControl) {
        Shell shell = this.getShell();
        Control control = this;
        Display display = this.display;
        boolean oldFixFocus = display.fixFocus;
        display.fixFocus = true;
        try {
            while (control != shell && (control = control.parent) != null) {
                if (!control.setFocus()) continue;
                return;
            }
        }
        finally {
            display.fixFocus = oldFixFocus;
        }
        shell.setSavedFocus(focusControl);
        OS.SetFocus(0);
    }

    public boolean forceFocus() {
        this.checkWidget();
        if (this.display.focusEvent == 16) {
            return false;
        }
        Decorations shell = this.menuShell();
        shell.setSavedFocus(this);
        if (!(this.isEnabled() && this.isVisible() && this.isActive())) {
            return false;
        }
        if (this.isFocusControl()) {
            return true;
        }
        shell.setSavedFocus(null);
        OS.SetFocus(this.handle);
        if (this.isDisposed()) {
            return false;
        }
        shell.setSavedFocus(this);
        return this.isFocusControl();
    }

    void forceResize() {
        if (this.parent == null) {
            return;
        }
        WINDOWPOS[] lpwp = this.parent.lpwp;
        if (lpwp == null) {
            return;
        }
        int i = 0;
        while (i < lpwp.length) {
            WINDOWPOS wp = lpwp[i];
            if (wp != null && wp.hwnd == this.handle) {
                this.SetWindowPos(wp.hwnd, 0, wp.x, wp.y, wp.cx, wp.cy, wp.flags);
                lpwp[i] = null;
                return;
            }
            ++i;
        }
    }

    public Accessible getAccessible() {
        this.checkWidget();
        if (this.accessible == null) {
            this.accessible = this.new_Accessible(this);
        }
        return this.accessible;
    }

    public Color getBackground() {
        this.checkWidget();
        Control control = this.findBackgroundControl();
        if (control == null) {
            control = this;
        }
        return Color.win32_new(this.display, control.getBackgroundPixel());
    }

    public Image getBackgroundImage() {
        this.checkWidget();
        Control control = this.findBackgroundControl();
        if (control == null) {
            control = this;
        }
        return control.backgroundImage;
    }

    int getBackgroundPixel() {
        return this.background != -1 ? this.background : this.defaultBackground();
    }

    public int getBorderWidth() {
        this.checkWidget();
        int borderHandle = this.borderHandle();
        int bits1 = OS.GetWindowLong(borderHandle, -20);
        if ((bits1 & 0x200) != 0) {
            return OS.GetSystemMetrics(45);
        }
        if ((bits1 & 0x20000) != 0) {
            return OS.GetSystemMetrics(5);
        }
        int bits2 = OS.GetWindowLong(borderHandle, -16);
        if ((bits2 & 0x800000) != 0) {
            return OS.GetSystemMetrics(5);
        }
        return 0;
    }

    public Rectangle getBounds() {
        this.checkWidget();
        this.forceResize();
        RECT rect = new RECT();
        OS.GetWindowRect(this.topHandle(), rect);
        int hwndParent = this.parent == null ? 0 : this.parent.handle;
        OS.MapWindowPoints(0, hwndParent, rect, 2);
        int width = rect.right - rect.left;
        int height = rect.bottom - rect.top;
        return new Rectangle(rect.left, rect.top, width, height);
    }

    int getCodePage() {
        if (OS.IsUnicode) {
            return 0;
        }
        int hFont = OS.SendMessage(this.handle, 49, 0, 0);
        LOGFONT logFont = OS.IsUnicode ? new LOGFONTW() : new LOGFONTA();
        OS.GetObject(hFont, LOGFONT.sizeof, logFont);
        int cs = logFont.lfCharSet & 0xFF;
        int[] lpCs = new int[8];
        if (OS.TranslateCharsetInfo(cs, lpCs, 1)) {
            return lpCs[1];
        }
        return OS.GetACP();
    }

    String getClipboardText() {
        String string = "";
        if (OS.OpenClipboard(0)) {
            int hMem = OS.GetClipboardData(OS.IsUnicode ? 13 : 1);
            if (hMem != 0) {
                int byteCount = OS.GlobalSize(hMem) / TCHAR.sizeof * TCHAR.sizeof;
                int ptr = OS.GlobalLock(hMem);
                if (ptr != 0) {
                    TCHAR buffer = new TCHAR(0, byteCount / TCHAR.sizeof);
                    OS.MoveMemory(buffer, ptr, byteCount);
                    string = buffer.toString(0, buffer.strlen());
                    OS.GlobalUnlock(hMem);
                }
            }
            OS.CloseClipboard();
        }
        return string;
    }

    public Cursor getCursor() {
        this.checkWidget();
        return this.cursor;
    }

    public boolean getDragDetect() {
        this.checkWidget();
        return (this.state & 0x8000) != 0;
    }

    boolean getDrawing() {
        return this.drawCount <= 0;
    }

    public boolean getEnabled() {
        this.checkWidget();
        return OS.IsWindowEnabled(this.handle);
    }

    public Font getFont() {
        this.checkWidget();
        if (this.font != null) {
            return this.font;
        }
        int hFont = OS.SendMessage(this.handle, 49, 0, 0);
        if (hFont == 0) {
            hFont = this.defaultFont();
        }
        return Font.win32_new(this.display, hFont);
    }

    public Color getForeground() {
        this.checkWidget();
        return Color.win32_new(this.display, this.getForegroundPixel());
    }

    int getForegroundPixel() {
        return this.foreground != -1 ? this.foreground : this.defaultForeground();
    }

    public Object getLayoutData() {
        this.checkWidget();
        return this.layoutData;
    }

    public Point getLocation() {
        this.checkWidget();
        this.forceResize();
        RECT rect = new RECT();
        OS.GetWindowRect(this.topHandle(), rect);
        int hwndParent = this.parent == null ? 0 : this.parent.handle;
        OS.MapWindowPoints(0, hwndParent, rect, 2);
        return new Point(rect.left, rect.top);
    }

    public Menu getMenu() {
        this.checkWidget();
        return this.menu;
    }

    public Monitor getMonitor() {
        this.checkWidget();
        if (OS.IsWinCE || OS.WIN32_VERSION < OS.VERSION(4, 10)) {
            return this.display.getPrimaryMonitor();
        }
        int hmonitor = OS.MonitorFromWindow(this.handle, 2);
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
        return monitor;
    }

    public int getOrientation() {
        this.checkWidget();
        return this.style & 0x6000000;
    }

    public Composite getParent() {
        this.checkWidget();
        return this.parent;
    }

    Control[] getPath() {
        int count = 0;
        Shell shell = this.getShell();
        Control control = this;
        while (control != shell) {
            ++count;
            control = control.parent;
        }
        control = this;
        Control[] result = new Control[count];
        while (control != shell) {
            result[--count] = control;
            control = control.parent;
        }
        return result;
    }

    public Region getRegion() {
        this.checkWidget();
        return this.region;
    }

    public Shell getShell() {
        this.checkWidget();
        return this.parent.getShell();
    }

    public Point getSize() {
        this.checkWidget();
        this.forceResize();
        RECT rect = new RECT();
        OS.GetWindowRect(this.topHandle(), rect);
        int width = rect.right - rect.left;
        int height = rect.bottom - rect.top;
        return new Point(width, height);
    }

    public String getToolTipText() {
        this.checkWidget();
        return this.toolTipText;
    }

    public boolean getTouchEnabled() {
        this.checkWidget();
        return OS.IsTouchWindow(this.handle, null);
    }

    public boolean getVisible() {
        this.checkWidget();
        if (!this.getDrawing()) {
            return (this.state & 0x10) == 0;
        }
        int bits = OS.GetWindowLong(this.handle, -16);
        return (bits & 0x10000000) != 0;
    }

    boolean hasCursor() {
        RECT rect = new RECT();
        if (!OS.GetClientRect(this.handle, rect)) {
            return false;
        }
        OS.MapWindowPoints(this.handle, 0, rect, 2);
        POINT pt = new POINT();
        return OS.GetCursorPos(pt) && OS.PtInRect(rect, pt);
    }

    boolean hasFocus() {
        int hwndFocus = OS.GetFocus();
        while (hwndFocus != 0) {
            if (hwndFocus == this.handle) {
                return true;
            }
            if (this.display.getControl(hwndFocus) != null) {
                return false;
            }
            hwndFocus = OS.GetParent(hwndFocus);
        }
        return false;
    }

    public int internal_new_GC(GCData data) {
        this.checkWidget();
        int hwnd = this.handle;
        if (data != null && data.hwnd != 0) {
            hwnd = data.hwnd;
        }
        if (data != null) {
            data.hwnd = hwnd;
        }
        int hDC = 0;
        hDC = data == null || data.ps == null ? OS.GetDC(hwnd) : OS.BeginPaint(hwnd, data.ps);
        if (hDC == 0) {
            SWT.error(2);
        }
        if (data != null) {
            int background;
            Control control;
            if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(4, 10)) {
                int mask = 0x6000000;
                if ((data.style & mask) != 0) {
                    data.layout = (data.style & 0x4000000) != 0 ? 1 : 0;
                } else {
                    int flags = OS.GetLayout(hDC);
                    data.style = (flags & 1) != 0 ? (data.style |= 0xC000000) : (data.style |= 0x2000000);
                }
            } else {
                data.style |= 0x2000000;
            }
            data.device = this.display;
            int foreground = this.getForegroundPixel();
            if (foreground != OS.GetTextColor(hDC)) {
                data.foreground = foreground;
            }
            if ((control = this.findBackgroundControl()) == null) {
                control = this;
            }
            if ((background = control.getBackgroundPixel()) != OS.GetBkColor(hDC)) {
                data.background = background;
            }
            data.font = this.font != null ? this.font : Font.win32_new(this.display, OS.SendMessage(hwnd, 49, 0, 0));
            data.uiState = OS.SendMessage(hwnd, 297, 0, 0);
        }
        return hDC;
    }

    public void internal_dispose_GC(int hDC, GCData data) {
        this.checkWidget();
        int hwnd = this.handle;
        if (data != null && data.hwnd != 0) {
            hwnd = data.hwnd;
        }
        if (data == null || data.ps == null) {
            OS.ReleaseDC(hwnd, hDC);
        } else {
            OS.EndPaint(hwnd, data.ps);
        }
    }

    boolean isActive() {
        Shell dialogShell;
        Dialog dialog = this.display.getModalDialog();
        if (dialog != null && (dialogShell = dialog.parent) != null && !dialogShell.isDisposed() && dialogShell != this.getShell()) {
            return false;
        }
        Shell shell = null;
        Shell[] modalShells = this.display.modalShells;
        if (modalShells != null) {
            int bits = 196608;
            int index = modalShells.length;
            while (--index >= 0) {
                Shell modal = modalShells[index];
                if (modal == null) continue;
                if ((modal.style & bits) != 0) {
                    Control control = this;
                    while (control != null) {
                        if (control == modal) break;
                        control = control.parent;
                    }
                    if (control == modal) break;
                    return false;
                }
                if ((modal.style & 0x8000) == 0) continue;
                if (shell == null) {
                    shell = this.getShell();
                }
                if (modal.parent != shell) continue;
                return false;
            }
        }
        if (shell == null) {
            shell = this.getShell();
        }
        return shell.getEnabled();
    }

    public boolean isEnabled() {
        this.checkWidget();
        return this.getEnabled() && this.parent.isEnabled();
    }

    public boolean isFocusControl() {
        this.checkWidget();
        Control focusControl = this.display.focusControl;
        if (focusControl != null && !focusControl.isDisposed()) {
            return this == focusControl;
        }
        return this.hasFocus();
    }

    boolean isFocusAncestor(Control control) {
        while (control != null && control != this && !(control instanceof Shell)) {
            control = control.parent;
        }
        return control == this;
    }

    public boolean isReparentable() {
        this.checkWidget();
        return true;
    }

    boolean isShowing() {
        if (!this.isVisible()) {
            return false;
        }
        Control control = this;
        while (control != null) {
            Point size = control.getSize();
            if (size.x == 0 || size.y == 0) {
                return false;
            }
            control = control.parent;
        }
        return true;
    }

    boolean isTabGroup() {
        int bits;
        Control[] tabList = this.parent._getTabList();
        if (tabList != null) {
            int i = 0;
            while (i < tabList.length) {
                if (tabList[i] == this) {
                    return true;
                }
                ++i;
            }
        }
        return ((bits = OS.GetWindowLong(this.handle, -16)) & 0x10000) != 0;
    }

    boolean isTabItem() {
        int bits;
        Control[] tabList = this.parent._getTabList();
        if (tabList != null) {
            int i = 0;
            while (i < tabList.length) {
                if (tabList[i] == this) {
                    return false;
                }
                ++i;
            }
        }
        if (((bits = OS.GetWindowLong(this.handle, -16)) & 0x10000) != 0) {
            return false;
        }
        int code = OS.SendMessage(this.handle, 135, 0, 0);
        if ((code & 0x100) != 0) {
            return false;
        }
        if ((code & 4) != 0) {
            return false;
        }
        if ((code & 1) != 0) {
            return false;
        }
        return (code & 2) == 0;
    }

    public boolean isVisible() {
        this.checkWidget();
        if (OS.IsWindowVisible(this.handle)) {
            return true;
        }
        return this.getVisible() && this.parent.isVisible();
    }

    void mapEvent(int hwnd, Event event) {
        if (hwnd != this.handle) {
            POINT point = new POINT();
            point.x = event.x;
            point.y = event.y;
            OS.MapWindowPoints(hwnd, this.handle, point, 1);
            event.x = point.x;
            event.y = point.y;
        }
    }

    void markLayout(boolean changed, boolean all) {
    }

    Decorations menuShell() {
        return this.parent.menuShell();
    }

    boolean mnemonicHit(char key) {
        return false;
    }

    boolean mnemonicMatch(char key) {
        return false;
    }

    public void moveAbove(Control control) {
        this.checkWidget();
        int topHandle = this.topHandle();
        int hwndAbove = 0;
        if (control != null) {
            if (control.isDisposed()) {
                this.error(5);
            }
            if (this.parent != control.parent) {
                return;
            }
            int hwnd = control.topHandle();
            if (hwnd == 0 || hwnd == topHandle) {
                return;
            }
            hwndAbove = OS.GetWindow(hwnd, 3);
            if (hwndAbove == 0 || hwndAbove == hwnd) {
                hwndAbove = 0;
            }
        }
        int flags = 19;
        this.SetWindowPos(topHandle, hwndAbove, 0, 0, 0, 0, flags);
    }

    public void moveBelow(Control control) {
        this.checkWidget();
        int topHandle = this.topHandle();
        int hwndAbove = 1;
        if (control != null) {
            if (control.isDisposed()) {
                this.error(5);
            }
            if (this.parent != control.parent) {
                return;
            }
            hwndAbove = control.topHandle();
        } else {
            Shell shell = this.getShell();
            if (this == shell && this.parent != null) {
                int hwndParent;
                int hwnd = hwndParent = this.parent.handle;
                hwndAbove = OS.GetWindow(hwnd, 3);
                while (hwndAbove != 0 && hwndAbove != hwnd) {
                    if (OS.GetWindow(hwndAbove, 4) == hwndParent) break;
                    hwnd = hwndAbove;
                    hwndAbove = OS.GetWindow(hwnd, 3);
                }
                if (hwndAbove == hwnd) {
                    return;
                }
            }
        }
        if (hwndAbove == 0 || hwndAbove == topHandle) {
            return;
        }
        int flags = 19;
        this.SetWindowPos(topHandle, hwndAbove, 0, 0, 0, 0, flags);
    }

    Accessible new_Accessible(Control control) {
        return Accessible.internal_new_Accessible(this);
    }

    GC new_GC(GCData data) {
        return GC.win32_new(this, data);
    }

    public void pack() {
        this.checkWidget();
        this.pack(true);
    }

    public void pack(boolean changed) {
        this.checkWidget();
        this.setSize(this.computeSize(-1, -1, changed));
    }

    public boolean print(GC gc) {
        this.checkWidget();
        if (gc == null) {
            this.error(4);
        }
        if (gc.isDisposed()) {
            this.error(5);
        }
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(5, 1)) {
            int topHandle = this.topHandle();
            int hdc = gc.handle;
            int state = 0;
            int gdipGraphics = gc.getGCData().gdipGraphics;
            if (gdipGraphics != 0) {
                int clipRgn = 0;
                Gdip.Graphics_SetPixelOffsetMode(gdipGraphics, 3);
                int rgn = Gdip.Region_new();
                if (rgn == 0) {
                    SWT.error(2);
                }
                Gdip.Graphics_GetClip(gdipGraphics, rgn);
                if (!Gdip.Region_IsInfinite(rgn, gdipGraphics)) {
                    clipRgn = Gdip.Region_GetHRGN(rgn, gdipGraphics);
                }
                Gdip.Region_delete(rgn);
                Gdip.Graphics_SetPixelOffsetMode(gdipGraphics, 4);
                float[] lpXform = null;
                int matrix = Gdip.Matrix_new(1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f);
                if (matrix == 0) {
                    SWT.error(2);
                }
                Gdip.Graphics_GetTransform(gdipGraphics, matrix);
                if (!Gdip.Matrix_IsIdentity(matrix)) {
                    lpXform = new float[6];
                    Gdip.Matrix_GetElements(matrix, lpXform);
                }
                Gdip.Matrix_delete(matrix);
                hdc = Gdip.Graphics_GetHDC(gdipGraphics);
                state = OS.SaveDC(hdc);
                if (lpXform != null) {
                    OS.SetGraphicsMode(hdc, 2);
                    OS.SetWorldTransform(hdc, lpXform);
                }
                if (clipRgn != 0) {
                    OS.SelectClipRgn(hdc, clipRgn);
                    OS.DeleteObject(clipRgn);
                }
            }
            if (OS.IsWinCE) {
                OS.UpdateWindow(topHandle);
            } else {
                int flags = 384;
                OS.RedrawWindow(topHandle, null, 0, flags);
            }
            this.printWidget(topHandle, hdc, gc);
            if (gdipGraphics != 0) {
                OS.RestoreDC(hdc, state);
                Gdip.Graphics_ReleaseHDC(gdipGraphics, hdc);
            }
            return true;
        }
        return false;
    }

    void printWidget(int hwnd, int hdc, GC gc) {
        boolean success = false;
        if (OS.GetDeviceCaps(gc.handle, 2) != 2) {
            boolean fixPrintWindow;
            int hwndParent;
            int hwndShell = hwndParent = OS.GetParent(hwnd);
            while (OS.GetParent(hwndShell) != 0) {
                if (OS.GetWindow(hwndShell, 4) != 0) break;
                hwndShell = OS.GetParent(hwndShell);
            }
            RECT rect1 = new RECT();
            OS.GetWindowRect(hwnd, rect1);
            boolean bl = fixPrintWindow = !OS.IsWindowVisible(hwnd);
            if (!fixPrintWindow) {
                RECT rect2 = new RECT();
                OS.GetWindowRect(hwndShell, rect2);
                OS.IntersectRect(rect2, rect1, rect2);
                boolean bl2 = fixPrintWindow = !OS.EqualRect(rect2, rect1);
            }
            if (!fixPrintWindow) {
                int rgn = OS.CreateRectRgn(0, 0, 0, 0);
                int parent = OS.GetParent(hwnd);
                while (parent != hwndShell && !fixPrintWindow) {
                    if (OS.GetWindowRgn(parent, rgn) != 0) {
                        fixPrintWindow = true;
                    }
                    parent = OS.GetParent(parent);
                }
                OS.DeleteObject(rgn);
            }
            int bits1 = OS.GetWindowLong(hwnd, -16);
            int bits2 = OS.GetWindowLong(hwnd, -20);
            int hwndInsertAfter = OS.GetWindow(hwnd, 3);
            if (hwndInsertAfter == 0 || hwndInsertAfter == hwnd) {
                hwndInsertAfter = 0;
            }
            if (fixPrintWindow) {
                int x = OS.GetSystemMetrics(76);
                int y = OS.GetSystemMetrics(77);
                int width = OS.GetSystemMetrics(78);
                int height = OS.GetSystemMetrics(79);
                int flags = 53;
                if ((bits1 & 0x10000000) != 0) {
                    OS.DefWindowProc(hwnd, 11, 0, 0);
                }
                this.SetWindowPos(hwnd, 0, x + width, y + height, 0, 0, flags);
                if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
                    OS.SetWindowLong(hwnd, -16, bits1 & 0xBFFFFFFF | Integer.MIN_VALUE);
                    OS.SetWindowLong(hwnd, -20, bits2 | 0x80);
                }
                Shell shell = this.getShell();
                Control savedFocus = shell.savedFocus;
                OS.SetParent(hwnd, 0);
                shell.setSavedFocus(savedFocus);
                if ((bits1 & 0x10000000) != 0) {
                    OS.DefWindowProc(hwnd, 11, 1, 0);
                }
            }
            if ((bits1 & 0x10000000) == 0) {
                OS.ShowWindow(hwnd, 5);
            }
            success = OS.PrintWindow(hwnd, hdc, 0);
            if ((bits1 & 0x10000000) == 0) {
                OS.ShowWindow(hwnd, 0);
            }
            if (fixPrintWindow) {
                if ((bits1 & 0x10000000) != 0) {
                    OS.DefWindowProc(hwnd, 11, 0, 0);
                }
                if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
                    OS.SetWindowLong(hwnd, -16, bits1);
                    OS.SetWindowLong(hwnd, -20, bits2);
                }
                OS.SetParent(hwnd, hwndParent);
                OS.MapWindowPoints(0, hwndParent, rect1, 2);
                int flags = 49;
                this.SetWindowPos(hwnd, hwndInsertAfter, rect1.left, rect1.top, rect1.right - rect1.left, rect1.bottom - rect1.top, flags);
                if ((bits1 & 0x10000000) != 0) {
                    OS.DefWindowProc(hwnd, 11, 1, 0);
                }
            }
        }
        if (!success) {
            int flags = 30;
            OS.SendMessage(hwnd, 791, hdc, flags);
        }
    }

    public void redraw() {
        this.checkWidget();
        this.redraw(false);
    }

    void redraw(boolean all) {
        if (!OS.IsWindowVisible(this.handle)) {
            return;
        }
        if (OS.IsWinCE) {
            OS.InvalidateRect(this.handle, null, true);
        } else {
            int flags = 1029;
            if (all) {
                flags |= 0x80;
            }
            OS.RedrawWindow(this.handle, null, 0, flags);
        }
    }

    public void redraw(int x, int y, int width, int height, boolean all) {
        this.checkWidget();
        if (width <= 0 || height <= 0) {
            return;
        }
        if (!OS.IsWindowVisible(this.handle)) {
            return;
        }
        RECT rect = new RECT();
        OS.SetRect(rect, x, y, x + width, y + height);
        if (OS.IsWinCE) {
            OS.InvalidateRect(this.handle, rect, true);
        } else {
            int flags = 1029;
            if (all) {
                flags |= 0x80;
            }
            OS.RedrawWindow(this.handle, rect, 0, flags);
        }
    }

    boolean redrawChildren() {
        if (!OS.IsWindowVisible(this.handle)) {
            return false;
        }
        Control control = this.findBackgroundControl();
        if (control == null) {
            if ((this.state & 0x100) != 0 && OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
                OS.InvalidateRect(this.handle, null, true);
                return true;
            }
        } else if (control.backgroundImage != null) {
            OS.InvalidateRect(this.handle, null, true);
            return true;
        }
        return false;
    }

    void register() {
        this.display.addControl(this.handle, this);
    }

    void releaseHandle() {
        super.releaseHandle();
        this.handle = 0;
        this.parent = null;
    }

    void releaseParent() {
        this.parent.removeControl(this);
    }

    void releaseWidget() {
        super.releaseWidget();
        if (OS.IsDBLocale) {
            OS.ImmAssociateContext(this.handle, 0);
        }
        if (this.toolTipText != null) {
            this.setToolTipText(this.getShell(), null);
        }
        this.toolTipText = null;
        if (this.menu != null && !this.menu.isDisposed()) {
            this.menu.dispose();
        }
        this.backgroundImage = null;
        this.menu = null;
        this.cursor = null;
        this.unsubclass();
        this.deregister();
        this.layoutData = null;
        if (this.accessible != null) {
            this.accessible.internal_dispose_Accessible();
        }
        this.accessible = null;
        this.region = null;
        this.font = null;
    }

    public void removeControlListener(ControlListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(10, listener);
        this.eventTable.unhook(11, listener);
    }

    public void removeDragDetectListener(DragDetectListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(29, listener);
    }

    public void removeFocusListener(FocusListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(15, listener);
        this.eventTable.unhook(16, listener);
    }

    public void removeGestureListener(GestureListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(48, listener);
    }

    public void removeHelpListener(HelpListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(28, listener);
    }

    public void removeKeyListener(KeyListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(2, listener);
        this.eventTable.unhook(1, listener);
    }

    public void removeMenuDetectListener(MenuDetectListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(35, listener);
    }

    public void removeMouseTrackListener(MouseTrackListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(6, listener);
        this.eventTable.unhook(7, listener);
        this.eventTable.unhook(32, listener);
    }

    public void removeMouseListener(MouseListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(3, listener);
        this.eventTable.unhook(4, listener);
        this.eventTable.unhook(8, listener);
    }

    public void removeMouseMoveListener(MouseMoveListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(5, listener);
    }

    public void removeMouseWheelListener(MouseWheelListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(37, listener);
    }

    public void removePaintListener(PaintListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(9, listener);
    }

    public void removeTouchListener(TouchListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(47, listener);
    }

    public void removeTraverseListener(TraverseListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(31, listener);
    }

    void showWidget(boolean visible) {
        int topHandle = this.topHandle();
        OS.ShowWindow(topHandle, visible ? 5 : 0);
        if (this.handle != topHandle) {
            OS.ShowWindow(this.handle, visible ? 5 : 0);
        }
    }

    boolean sendFocusEvent(int type) {
        Shell shell = this.getShell();
        Display display = this.display;
        display.focusEvent = type;
        display.focusControl = this;
        this.sendEvent(type);
        display.focusEvent = 0;
        display.focusControl = null;
        if (!shell.isDisposed()) {
            switch (type) {
                case 15: {
                    shell.setActiveControl(this);
                    break;
                }
                case 16: {
                    if (shell == display.getActiveShell()) break;
                    shell.setActiveControl(null);
                }
            }
        }
        return true;
    }

    boolean sendGestureEvent(GESTUREINFO gi) {
        if (gi.hwndTarget != this.handle) {
            return true;
        }
        Event event = new Event();
        int type = 0;
        Point globalPt = new Point(gi.x, gi.y);
        Point point = this.toControl(globalPt);
        event.x = point.x;
        event.y = point.y;
        switch (gi.dwID) {
            case 3: {
                type = 48;
                event.detail = 32;
                int fingerDistance = OS.LODWORD(gi.ullArguments);
                if ((gi.dwFlags & 1) != 0) {
                    event.detail = 2;
                    this.display.magStartDistance = this.display.lastDistance = (double)fingerDistance;
                } else if ((gi.dwFlags & 4) != 0) {
                    event.detail = 4;
                }
                if ((double)fingerDistance == this.display.lastDistance && event.detail == 32) {
                    return true;
                }
                if (fingerDistance != 0) {
                    event.magnification = (double)fingerDistance / this.display.magStartDistance;
                }
                this.display.lastDistance = fingerDistance;
                break;
            }
            case 4: {
                type = 48;
                event.detail = 64;
                if ((gi.dwFlags & 1) != 0) {
                    event.detail = 2;
                    this.display.lastX = point.x;
                    this.display.lastY = point.y;
                } else if ((gi.dwFlags & 4) != 0) {
                    event.detail = 4;
                }
                if (this.display.lastX == point.x && this.display.lastY == point.y && event.detail == 64) {
                    return true;
                }
                event.xDirection = point.x - this.display.lastX;
                event.yDirection = point.y - this.display.lastY;
                this.display.lastX = point.x;
                this.display.lastY = point.y;
                break;
            }
            case 5: {
                type = 48;
                event.detail = 8;
                double rotationInRadians = OS.GID_ROTATE_ANGLE_FROM_ARGUMENT(OS.LODWORD(gi.ullArguments));
                if ((gi.dwFlags & 1) != 0) {
                    event.detail = 2;
                    this.display.rotationAngle = rotationInRadians;
                } else if ((gi.dwFlags & 4) != 0) {
                    event.detail = 4;
                }
                if (this.display.rotationAngle == rotationInRadians && event.detail == 8) {
                    return true;
                }
                event.rotation = rotationInRadians * 180.0 / Compatibility.PI;
                this.display.rotationAngle = rotationInRadians;
                break;
            }
        }
        if (type == 0) {
            return true;
        }
        this.setInputState(event, type);
        this.sendEvent(type, event);
        return event.doit;
    }

    void sendMove() {
        this.sendEvent(10);
    }

    void sendResize() {
        this.sendEvent(11);
    }

    void sendTouchEvent(TOUCHINPUT[] touchInput) {
        Event event = new Event();
        POINT pt = new POINT();
        OS.GetCursorPos(pt);
        OS.ScreenToClient(this.handle, pt);
        event.x = pt.x;
        event.y = pt.y;
        Touch[] touches = new Touch[touchInput.length];
        Monitor monitor = this.getMonitor();
        int i = 0;
        while (i < touchInput.length) {
            TOUCHINPUT ti = touchInput[i];
            TouchSource inputSource = this.display.findTouchSource(ti.hSource, monitor);
            int state = 0;
            if ((ti.dwFlags & 2) != 0) {
                state = 1;
            }
            if ((ti.dwFlags & 4) != 0) {
                state = 4;
            }
            if ((ti.dwFlags & 1) != 0) {
                state = 2;
            }
            boolean primary = (ti.dwFlags & 0x10) != 0;
            int x = (int)OS.TOUCH_COORD_TO_PIXEL(ti.x);
            int y = (int)OS.TOUCH_COORD_TO_PIXEL(ti.y);
            touches[i] = new Touch(ti.dwID, inputSource, state, primary, x, y);
            ++i;
        }
        event.touches = touches;
        this.setInputState(event, 47);
        this.postEvent(47, event);
    }

    void setBackground() {
        Control control = this.findBackgroundControl();
        if (control == null) {
            control = this;
        }
        if (control.backgroundImage != null) {
            Shell shell = this.getShell();
            shell.releaseBrushes();
            this.setBackgroundImage(control.backgroundImage.handle);
        } else {
            this.setBackgroundPixel(control.background == -1 ? control.defaultBackground() : control.background);
        }
    }

    public void setBackground(Color color) {
        this.checkWidget();
        int pixel = -1;
        if (color != null) {
            if (color.isDisposed()) {
                SWT.error(5);
            }
            pixel = color.handle;
        }
        if (pixel == this.background) {
            return;
        }
        this.background = pixel;
        this.updateBackgroundColor();
    }

    public void setBackgroundImage(Image image) {
        this.checkWidget();
        if (image != null) {
            if (image.isDisposed()) {
                this.error(5);
            }
            if (image.type != 0) {
                this.error(5);
            }
        }
        if (this.backgroundImage == image) {
            return;
        }
        this.backgroundImage = image;
        Shell shell = this.getShell();
        shell.releaseBrushes();
        this.updateBackgroundImage();
    }

    void setBackgroundImage(int hBitmap) {
        if (OS.IsWinCE) {
            OS.InvalidateRect(this.handle, null, true);
        } else {
            int flags = 1029;
            OS.RedrawWindow(this.handle, null, 0, flags);
        }
    }

    void setBackgroundPixel(int pixel) {
        if (OS.IsWinCE) {
            OS.InvalidateRect(this.handle, null, true);
        } else {
            int flags = 1029;
            OS.RedrawWindow(this.handle, null, 0, flags);
        }
    }

    public void setBounds(int x, int y, int width, int height) {
        this.checkWidget();
        int flags = 52;
        this.setBounds(x, y, Math.max(0, width), Math.max(0, height), flags);
    }

    void setBounds(int x, int y, int width, int height, int flags) {
        this.setBounds(x, y, width, height, flags, true);
    }

    void setBounds(int x, int y, int width, int height, int flags, boolean defer) {
        if (this.findImageControl() != null) {
            if (this.backgroundImage == null) {
                flags |= 0x100;
            }
        } else if (OS.GetWindow(this.handle, 5) == 0 && OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed() && this.findThemeControl() != null) {
            flags |= 0x100;
        }
        int topHandle = this.topHandle();
        if (defer && this.parent != null) {
            this.forceResize();
            if (this.parent.lpwp != null) {
                int index = 0;
                WINDOWPOS[] lpwp = this.parent.lpwp;
                while (index < lpwp.length) {
                    if (lpwp[index] == null) break;
                    ++index;
                }
                if (index == lpwp.length) {
                    WINDOWPOS[] newLpwp = new WINDOWPOS[lpwp.length + 4];
                    System.arraycopy(lpwp, 0, newLpwp, 0, lpwp.length);
                    lpwp = newLpwp;
                    this.parent.lpwp = newLpwp;
                }
                WINDOWPOS wp = new WINDOWPOS();
                wp.hwnd = topHandle;
                wp.x = x;
                wp.y = y;
                wp.cx = width;
                wp.cy = height;
                wp.flags = flags;
                lpwp[index] = wp;
                return;
            }
        }
        this.SetWindowPos(topHandle, 0, x, y, width, height, flags);
    }

    public void setBounds(Rectangle rect) {
        this.checkWidget();
        if (rect == null) {
            this.error(4);
        }
        this.setBounds(rect.x, rect.y, rect.width, rect.height);
    }

    public void setCapture(boolean capture) {
        this.checkWidget();
        if (capture) {
            OS.SetCapture(this.handle);
        } else if (OS.GetCapture() == this.handle) {
            OS.ReleaseCapture();
        }
    }

    void setCursor() {
        int lParam = OS.MAKELPARAM(1, 512);
        OS.SendMessage(this.handle, 32, this.handle, lParam);
    }

    public void setCursor(Cursor cursor) {
        Control control;
        this.checkWidget();
        if (cursor != null && cursor.isDisposed()) {
            SWT.error(5);
        }
        this.cursor = cursor;
        if (OS.IsWinCE) {
            int hCursor = cursor != null ? cursor.handle : 0;
            OS.SetCursor(hCursor);
            return;
        }
        int hwndCursor = OS.GetCapture();
        if (hwndCursor == 0) {
            POINT pt = new POINT();
            if (!OS.GetCursorPos(pt)) {
                return;
            }
            int hwnd = hwndCursor = OS.WindowFromPoint(pt);
            while (hwnd != 0 && hwnd != this.handle) {
                hwnd = OS.GetParent(hwnd);
            }
            if (hwnd == 0) {
                return;
            }
        }
        if ((control = this.display.getControl(hwndCursor)) == null) {
            control = this;
        }
        control.setCursor();
    }

    void setDefaultFont() {
        int hFont = this.display.getSystemFont().handle;
        OS.SendMessage(this.handle, 48, hFont, 0);
    }

    public void setDragDetect(boolean dragDetect) {
        this.checkWidget();
        this.state = dragDetect ? (this.state |= 0x8000) : (this.state &= 0xFFFF7FFF);
        this.enableDrag(dragDetect);
    }

    public void setEnabled(boolean enabled) {
        this.checkWidget();
        Control control = null;
        boolean fixFocus = false;
        if (!enabled && this.display.focusEvent != 16) {
            control = this.display.getFocusControl();
            fixFocus = this.isFocusAncestor(control);
        }
        this.enableWidget(enabled);
        if (fixFocus) {
            this.fixFocus(control);
        }
    }

    public boolean setFocus() {
        this.checkWidget();
        if ((this.style & 0x80000) != 0) {
            return false;
        }
        return this.forceFocus();
    }

    public void setFont(Font font) {
        this.checkWidget();
        int hFont = 0;
        if (font != null) {
            if (font.isDisposed()) {
                SWT.error(5);
            }
            hFont = font.handle;
        }
        this.font = font;
        if (hFont == 0) {
            hFont = this.defaultFont();
        }
        OS.SendMessage(this.handle, 48, hFont, 1);
    }

    public void setForeground(Color color) {
        this.checkWidget();
        int pixel = -1;
        if (color != null) {
            if (color.isDisposed()) {
                SWT.error(5);
            }
            pixel = color.handle;
        }
        if (pixel == this.foreground) {
            return;
        }
        this.foreground = pixel;
        this.setForegroundPixel(pixel);
    }

    void setForegroundPixel(int pixel) {
        OS.InvalidateRect(this.handle, null, true);
    }

    public void setLayoutData(Object layoutData) {
        this.checkWidget();
        this.layoutData = layoutData;
    }

    public void setLocation(int x, int y) {
        this.checkWidget();
        int flags = 21;
        if (!OS.IsWinCE) {
            flags |= 0x20;
        }
        this.setBounds(x, y, 0, 0, flags);
    }

    public void setLocation(Point location) {
        this.checkWidget();
        if (location == null) {
            this.error(4);
        }
        this.setLocation(location.x, location.y);
    }

    public void setMenu(Menu menu) {
        this.checkWidget();
        if (menu != null) {
            if (menu.isDisposed()) {
                SWT.error(5);
            }
            if ((menu.style & 8) == 0) {
                this.error(37);
            }
            if (menu.parent != this.menuShell()) {
                this.error(32);
            }
        }
        this.menu = menu;
    }

    public void setOrientation(int orientation) {
        this.checkWidget();
        if (OS.IsWinCE) {
            return;
        }
        if (OS.WIN32_VERSION < OS.VERSION(4, 10)) {
            return;
        }
        int flags = 0x6000000;
        if ((orientation & flags) == 0 || (orientation & flags) == flags) {
            return;
        }
        this.style &= 0xF7FFFFFF;
        this.style &= ~flags;
        this.style |= orientation & flags;
        this.updateOrientation();
        this.checkMirrored();
    }

    boolean setRadioFocus(boolean tabbing) {
        return false;
    }

    boolean setRadioSelection(boolean value) {
        return false;
    }

    public void setRedraw(boolean redraw) {
        int topHandle;
        int bits;
        this.checkWidget();
        if (this.drawCount == 0 && ((bits = OS.GetWindowLong(this.handle, -16)) & 0x10000000) == 0) {
            this.state |= 0x10;
        }
        if (redraw) {
            if (--this.drawCount == 0) {
                topHandle = this.topHandle();
                OS.SendMessage(topHandle, 11, 1, 0);
                if (this.handle != topHandle) {
                    OS.SendMessage(this.handle, 11, 1, 0);
                }
                if ((this.state & 0x10) != 0) {
                    this.state &= 0xFFFFFFEF;
                    OS.ShowWindow(topHandle, 0);
                    if (this.handle != topHandle) {
                        OS.ShowWindow(this.handle, 0);
                    }
                } else if (OS.IsWinCE) {
                    OS.InvalidateRect(topHandle, null, true);
                    if (this.handle != topHandle) {
                        OS.InvalidateRect(this.handle, null, true);
                    }
                } else {
                    int flags = 1157;
                    OS.RedrawWindow(topHandle, null, 0, flags);
                }
            }
        } else if (this.drawCount++ == 0) {
            topHandle = this.topHandle();
            OS.SendMessage(topHandle, 11, 0, 0);
            if (this.handle != topHandle) {
                OS.SendMessage(this.handle, 11, 0, 0);
            }
        }
    }

    public void setRegion(Region region) {
        this.checkWidget();
        if (region != null && region.isDisposed()) {
            this.error(5);
        }
        int hRegion = 0;
        if (region != null) {
            hRegion = OS.CreateRectRgn(0, 0, 0, 0);
            OS.CombineRgn(hRegion, region.handle, hRegion, 2);
        }
        OS.SetWindowRgn(this.handle, hRegion, true);
        this.region = region;
    }

    boolean setSavedFocus() {
        return this.forceFocus();
    }

    public void setSize(int width, int height) {
        this.checkWidget();
        int flags = 54;
        this.setBounds(0, 0, Math.max(0, width), Math.max(0, height), flags);
    }

    public void setSize(Point size) {
        this.checkWidget();
        if (size == null) {
            this.error(4);
        }
        this.setSize(size.x, size.y);
    }

    boolean setTabItemFocus() {
        if (!this.isShowing()) {
            return false;
        }
        return this.forceFocus();
    }

    public void setToolTipText(String string) {
        this.checkWidget();
        this.toolTipText = string;
        this.setToolTipText(this.getShell(), string);
    }

    void setToolTipText(Shell shell, String string) {
        shell.setToolTipText(this.handle, string);
    }

    public void setTouchEnabled(boolean enabled) {
        this.checkWidget();
        if (enabled) {
            OS.RegisterTouchWindow(this.handle, 0);
        } else {
            OS.UnregisterTouchWindow(this.handle);
        }
    }

    public void setVisible(boolean visible) {
        int bits;
        this.checkWidget();
        if (!this.getDrawing() ? (this.state & 0x10) == 0 == visible : ((bits = OS.GetWindowLong(this.handle, -16)) & 0x10000000) != 0 == visible) {
            return;
        }
        if (visible) {
            this.sendEvent(22);
            if (this.isDisposed()) {
                return;
            }
        }
        Control control = null;
        boolean fixFocus = false;
        if (!visible && this.display.focusEvent != 16) {
            control = this.display.getFocusControl();
            fixFocus = this.isFocusAncestor(control);
        }
        if (!this.getDrawing()) {
            this.state = visible ? this.state & 0xFFFFFFEF : this.state | 0x10;
        } else {
            this.showWidget(visible);
            if (this.isDisposed()) {
                return;
            }
        }
        if (!visible) {
            this.sendEvent(23);
            if (this.isDisposed()) {
                return;
            }
        }
        if (fixFocus) {
            this.fixFocus(control);
        }
    }

    void sort(int[] items) {
        int length = items.length;
        int gap = length / 2;
        while (gap > 0) {
            int i = gap;
            while (i < length) {
                int j = i - gap;
                while (j >= 0) {
                    if (items[j] <= items[j + gap]) {
                        int swap = items[j];
                        items[j] = items[j + gap];
                        items[j + gap] = swap;
                    }
                    j -= gap;
                }
                ++i;
            }
            gap /= 2;
        }
    }

    void subclass() {
        int newProc;
        int oldProc = this.windowProc();
        if (oldProc == (newProc = this.display.windowProc)) {
            return;
        }
        OS.SetWindowLongPtr(this.handle, -4, newProc);
    }

    public Point toControl(int x, int y) {
        this.checkWidget();
        POINT pt = new POINT();
        pt.x = x;
        pt.y = y;
        OS.ScreenToClient(this.handle, pt);
        return new Point(pt.x, pt.y);
    }

    public Point toControl(Point point) {
        this.checkWidget();
        if (point == null) {
            this.error(4);
        }
        return this.toControl(point.x, point.y);
    }

    public Point toDisplay(int x, int y) {
        this.checkWidget();
        POINT pt = new POINT();
        pt.x = x;
        pt.y = y;
        OS.ClientToScreen(this.handle, pt);
        return new Point(pt.x, pt.y);
    }

    public Point toDisplay(Point point) {
        this.checkWidget();
        if (point == null) {
            this.error(4);
        }
        return this.toDisplay(point.x, point.y);
    }

    int topHandle() {
        return this.handle;
    }

    boolean translateAccelerator(MSG msg) {
        return this.menuShell().translateAccelerator(msg);
    }

    boolean translateMnemonic(Event event, Control control) {
        if (control == this) {
            return false;
        }
        if (!this.isVisible() || !this.isEnabled()) {
            return false;
        }
        event.doit = this.mnemonicMatch(event.character);
        return this.traverse(event);
    }

    boolean translateMnemonic(MSG msg) {
        Decorations shell;
        if (msg.wParam < 32) {
            return false;
        }
        int hwnd = msg.hwnd;
        if (OS.GetKeyState(18) >= 0) {
            int code = OS.SendMessage(hwnd, 135, 0, 0);
            if ((code & 4) != 0) {
                return false;
            }
            if ((code & 0x2000) == 0) {
                return false;
            }
        }
        if ((shell = this.menuShell()).isVisible() && shell.isEnabled()) {
            this.display.lastAscii = msg.wParam;
            this.display.lastDead = false;
            this.display.lastNull = false;
            Event event = new Event();
            event.detail = 128;
            if (this.setKeyState(event, 31, msg.wParam, msg.lParam)) {
                return this.translateMnemonic(event, null) || shell.translateMnemonic(event, this);
            }
        }
        return false;
    }

    boolean translateTraversal(MSG msg) {
        int hwnd = msg.hwnd;
        int key = msg.wParam;
        if (key == 18) {
            if ((msg.lParam & 0x40000000) == 0) {
                OS.SendMessage(hwnd, 295, 3, 0);
            }
            return false;
        }
        int detail = 0;
        boolean doit = true;
        boolean all = false;
        boolean lastVirtual = false;
        int lastKey = key;
        int lastAscii = 0;
        switch (key) {
            case 27: {
                all = true;
                lastAscii = 27;
                int code = OS.SendMessage(hwnd, 135, 0, 0);
                if ((code & 4) != 0 && (code & 8) == 0) {
                    doit = false;
                }
                detail = 2;
                break;
            }
            case 13: {
                all = true;
                lastAscii = 13;
                int code = OS.SendMessage(hwnd, 135, 0, 0);
                if ((code & 4) != 0) {
                    doit = false;
                }
                detail = 4;
                break;
            }
            case 9: {
                lastAscii = 9;
                boolean next = OS.GetKeyState(16) >= 0;
                int code = OS.SendMessage(hwnd, 135, 0, 0);
                if ((code & 6) != 0) {
                    if ((code & 8) != 0) {
                        if (next && OS.GetKeyState(17) >= 0) {
                            doit = false;
                        }
                    } else {
                        doit = false;
                    }
                }
                detail = next ? 16 : 8;
                break;
            }
            case 37: 
            case 38: 
            case 39: 
            case 40: {
                boolean next;
                if (OS.IsSP && (key == 37 || key == 39)) {
                    return false;
                }
                lastVirtual = true;
                int code = OS.SendMessage(hwnd, 135, 0, 0);
                if ((code & 1) != 0) {
                    doit = false;
                }
                boolean bl = next = key == 40 || key == 39;
                if (this.parent != null && (this.parent.style & 0x8000000) != 0 && (key == 37 || key == 39)) {
                    next = !next;
                }
                detail = next ? 64 : 32;
                break;
            }
            case 33: 
            case 34: {
                all = true;
                lastVirtual = true;
                if (OS.GetKeyState(17) >= 0) {
                    return false;
                }
                int code = OS.SendMessage(hwnd, 135, 0, 0);
                if ((code & 4) != 0 && (code & 8) == 0) {
                    doit = false;
                }
                detail = key == 33 ? 256 : 512;
                break;
            }
            default: {
                return false;
            }
        }
        Event event = new Event();
        event.doit = doit;
        event.detail = detail;
        this.display.lastKey = lastKey;
        this.display.lastAscii = lastAscii;
        this.display.lastVirtual = lastVirtual;
        this.display.lastDead = false;
        this.display.lastNull = false;
        if (!this.setKeyState(event, 31, msg.wParam, msg.lParam)) {
            return false;
        }
        Shell shell = this.getShell();
        Control control = this;
        do {
            if (control.traverse(event)) {
                OS.SendMessage(hwnd, 295, 3, 0);
                return true;
            }
            if (!event.doit && control.hooks(31)) {
                return false;
            }
            if (control == shell) {
                return false;
            }
            control = control.parent;
        } while (all && control != null);
        return false;
    }

    boolean traverse(Event event) {
        this.sendEvent(31, event);
        if (this.isDisposed()) {
            return true;
        }
        if (!event.doit) {
            return false;
        }
        switch (event.detail) {
            case 0: {
                return true;
            }
            case 2: {
                return this.traverseEscape();
            }
            case 4: {
                return this.traverseReturn();
            }
            case 16: {
                return this.traverseGroup(true);
            }
            case 8: {
                return this.traverseGroup(false);
            }
            case 64: {
                return this.traverseItem(true);
            }
            case 32: {
                return this.traverseItem(false);
            }
            case 128: {
                return this.traverseMnemonic(event.character);
            }
            case 512: {
                return this.traversePage(true);
            }
            case 256: {
                return this.traversePage(false);
            }
        }
        return false;
    }

    public boolean traverse(int traversal) {
        this.checkWidget();
        Event event = new Event();
        event.doit = true;
        event.detail = traversal;
        return this.traverse(event);
    }

    public boolean traverse(int traversal, Event event) {
        this.checkWidget();
        if (event == null) {
            this.error(4);
        }
        return this.traverse(traversal, event.character, event.keyCode, event.keyLocation, event.stateMask, event.doit);
    }

    public boolean traverse(int traversal, KeyEvent event) {
        this.checkWidget();
        if (event == null) {
            this.error(4);
        }
        return this.traverse(traversal, event.character, event.keyCode, event.keyLocation, event.stateMask, event.doit);
    }

    boolean traverse(int traversal, char character, int keyCode, int keyLocation, int stateMask, boolean doit) {
        if (traversal == 0) {
            switch (keyCode) {
                case 27: {
                    traversal = 2;
                    doit = true;
                    break;
                }
                case 13: {
                    traversal = 4;
                    doit = true;
                    break;
                }
                case 0x1000002: 
                case 0x1000004: {
                    traversal = 64;
                    doit = false;
                    break;
                }
                case 0x1000001: 
                case 0x1000003: {
                    traversal = 32;
                    doit = false;
                    break;
                }
                case 9: {
                    traversal = (stateMask & 0x20000) != 0 ? 8 : 16;
                    doit = true;
                    break;
                }
                case 0x1000006: {
                    if ((stateMask & 0x40000) == 0) break;
                    traversal = 512;
                    doit = true;
                    break;
                }
                case 0x1000005: {
                    if ((stateMask & 0x40000) == 0) break;
                    traversal = 256;
                    doit = true;
                    break;
                }
                default: {
                    if (character == '\u0000' || (stateMask & 0x50000) != 65536) break;
                    traversal = 128;
                    doit = true;
                }
            }
        }
        Event event = new Event();
        event.character = character;
        event.detail = traversal;
        event.doit = doit;
        event.keyCode = keyCode;
        event.keyLocation = keyLocation;
        event.stateMask = stateMask;
        Shell shell = this.getShell();
        boolean all = false;
        switch (traversal) {
            case 2: 
            case 4: 
            case 256: 
            case 512: {
                all = true;
            }
            case 8: 
            case 16: 
            case 32: 
            case 64: {
                break;
            }
            case 128: {
                return this.translateMnemonic(event, null) || shell.translateMnemonic(event, this);
            }
            default: {
                return false;
            }
        }
        Control control = this;
        do {
            if (control.traverse(event)) {
                OS.SendMessage(this.handle, 295, 3, 0);
                return true;
            }
            if (!event.doit && control.hooks(31)) {
                return false;
            }
            if (control == shell) {
                return false;
            }
            control = control.parent;
        } while (all && control != null);
        return false;
    }

    boolean traverseEscape() {
        return false;
    }

    boolean traverseGroup(boolean next) {
        Control root = this.computeTabRoot();
        Widget group = this.computeTabGroup();
        Widget[] list = root.computeTabList();
        int length = list.length;
        int index = 0;
        while (index < length) {
            if (list[index] == group) break;
            ++index;
        }
        if (index == length) {
            return false;
        }
        int start = index;
        int offset = next ? 1 : -1;
        while ((index = (index + offset + length) % length) != start) {
            Widget widget = list[index];
            if (widget.isDisposed() || !widget.setTabGroupFocus()) continue;
            return true;
        }
        if (group.isDisposed()) {
            return false;
        }
        return group.setTabGroupFocus();
    }

    boolean traverseItem(boolean next) {
        Control[] children = this.parent._getChildren();
        int length = children.length;
        int index = 0;
        while (index < length) {
            if (children[index] == this) break;
            ++index;
        }
        if (index == length) {
            return false;
        }
        int start = index;
        int offset = next ? 1 : -1;
        while ((index = (index + offset + length) % length) != start) {
            Control child = children[index];
            if (child.isDisposed() || !child.isTabItem() || !child.setTabItemFocus()) continue;
            return true;
        }
        return false;
    }

    boolean traverseMnemonic(char key) {
        if (this.mnemonicHit(key)) {
            OS.SendMessage(this.handle, 295, 3, 0);
            return true;
        }
        return false;
    }

    boolean traversePage(boolean next) {
        return false;
    }

    boolean traverseReturn() {
        return false;
    }

    void unsubclass() {
        int oldProc = this.display.windowProc;
        int newProc = this.windowProc();
        if (oldProc == newProc) {
            return;
        }
        OS.SetWindowLongPtr(this.handle, -4, newProc);
    }

    public void update() {
        this.checkWidget();
        this.update(false);
    }

    void update(boolean all) {
        if (OS.IsWinCE) {
            OS.UpdateWindow(this.handle);
        } else {
            int flags = 256;
            if (all) {
                flags |= 0x80;
            }
            OS.RedrawWindow(this.handle, null, 0, flags);
        }
    }

    void updateBackgroundColor() {
        Control control = this.findBackgroundControl();
        if (control == null) {
            control = this;
        }
        this.setBackgroundPixel(control.background);
    }

    void updateBackgroundImage() {
        Control control = this.findBackgroundControl();
        Image image = control != null ? control.backgroundImage : this.backgroundImage;
        this.setBackgroundImage(image != null ? image.handle : 0);
    }

    void updateBackgroundMode() {
        int oldState = this.state & 0x400;
        this.checkBackground();
        if (oldState != (this.state & 0x400)) {
            this.setBackground();
        }
    }

    void updateFont(Font oldFont, Font newFont) {
        if (this.getFont().equals(oldFont)) {
            this.setFont(newFont);
        }
    }

    void updateImages() {
    }

    void updateLayout(boolean resize, boolean all) {
    }

    void updateOrientation() {
        int bits = OS.GetWindowLong(this.handle, -20);
        bits = (this.style & 0x4000000) != 0 ? (bits |= 0x400000) : (bits &= 0xFFBFFFFF);
        OS.SetWindowLong(this.handle, -20, bits);
        OS.InvalidateRect(this.handle, null, true);
    }

    CREATESTRUCT widgetCreateStruct() {
        return null;
    }

    int widgetExtStyle() {
        int bits = 0;
        if (!OS.IsPPC && (this.style & 0x800) != 0) {
            bits |= 0x200;
        }
        if (OS.WIN32_VERSION < OS.VERSION(4, 10)) {
            return bits;
        }
        bits |= 0x100000;
        if ((this.style & 0x4000000) != 0) {
            bits |= 0x400000;
        }
        return bits;
    }

    int widgetParent() {
        return this.parent.handle;
    }

    int widgetStyle() {
        int bits = 0x54000000;
        if (OS.IsPPC && (this.style & 0x800) != 0) {
            bits |= 0x800000;
        }
        return bits;
    }

    public boolean setParent(Composite parent) {
        int topHandle;
        this.checkWidget();
        if (parent == null) {
            this.error(4);
        }
        if (parent.isDisposed()) {
            SWT.error(5);
        }
        if (this.parent == parent) {
            return true;
        }
        if (!this.isReparentable()) {
            return false;
        }
        this.releaseParent();
        Shell newShell = parent.getShell();
        Shell oldShell = this.getShell();
        Decorations newDecorations = parent.menuShell();
        Decorations oldDecorations = this.menuShell();
        if (oldShell != newShell || oldDecorations != newDecorations) {
            Menu[] menus = oldShell.findMenus(this);
            this.fixChildren(newShell, oldShell, newDecorations, oldDecorations, menus);
        }
        if (OS.SetParent(topHandle = this.topHandle(), parent.handle) == 0) {
            return false;
        }
        this.parent = parent;
        int flags = 19;
        this.SetWindowPos(topHandle, 1, 0, 0, 0, 0, flags);
        this.reskin(1);
        return true;
    }

    abstract TCHAR windowClass();

    abstract int windowProc();

    int windowProc(int hwnd, int msg, int wParam, int lParam) {
        LRESULT result = null;
        switch (msg) {
            case 6: {
                result = this.WM_ACTIVATE(wParam, lParam);
                break;
            }
            case 533: {
                result = this.WM_CAPTURECHANGED(wParam, lParam);
                break;
            }
            case 295: {
                result = this.WM_CHANGEUISTATE(wParam, lParam);
                break;
            }
            case 258: {
                result = this.WM_CHAR(wParam, lParam);
                break;
            }
            case 771: {
                result = this.WM_CLEAR(wParam, lParam);
                break;
            }
            case 16: {
                result = this.WM_CLOSE(wParam, lParam);
                break;
            }
            case 273: {
                result = this.WM_COMMAND(wParam, lParam);
                break;
            }
            case 123: {
                result = this.WM_CONTEXTMENU(wParam, lParam);
                break;
            }
            case 306: 
            case 307: 
            case 308: 
            case 309: 
            case 310: 
            case 311: 
            case 312: {
                result = this.WM_CTLCOLOR(wParam, lParam);
                break;
            }
            case 768: {
                result = this.WM_CUT(wParam, lParam);
                break;
            }
            case 2: {
                result = this.WM_DESTROY(wParam, lParam);
                break;
            }
            case 43: {
                result = this.WM_DRAWITEM(wParam, lParam);
                break;
            }
            case 22: {
                result = this.WM_ENDSESSION(wParam, lParam);
                break;
            }
            case 289: {
                result = this.WM_ENTERIDLE(wParam, lParam);
                break;
            }
            case 20: {
                result = this.WM_ERASEBKGND(wParam, lParam);
                break;
            }
            case 281: {
                result = this.WM_GESTURE(wParam, lParam);
                break;
            }
            case 135: {
                result = this.WM_GETDLGCODE(wParam, lParam);
                break;
            }
            case 49: {
                result = this.WM_GETFONT(wParam, lParam);
                break;
            }
            case 61: {
                result = this.WM_GETOBJECT(wParam, lParam);
                break;
            }
            case 36: {
                result = this.WM_GETMINMAXINFO(wParam, lParam);
                break;
            }
            case 83: {
                result = this.WM_HELP(wParam, lParam);
                break;
            }
            case 276: {
                result = this.WM_HSCROLL(wParam, lParam);
                break;
            }
            case 646: {
                result = this.WM_IME_CHAR(wParam, lParam);
                break;
            }
            case 271: {
                result = this.WM_IME_COMPOSITION(wParam, lParam);
                break;
            }
            case 269: {
                result = this.WM_IME_COMPOSITION_START(wParam, lParam);
                break;
            }
            case 270: {
                result = this.WM_IME_ENDCOMPOSITION(wParam, lParam);
                break;
            }
            case 279: {
                result = this.WM_INITMENUPOPUP(wParam, lParam);
                break;
            }
            case 81: {
                result = this.WM_INPUTLANGCHANGE(wParam, lParam);
                break;
            }
            case 786: {
                result = this.WM_HOTKEY(wParam, lParam);
                break;
            }
            case 256: {
                result = this.WM_KEYDOWN(wParam, lParam);
                break;
            }
            case 257: {
                result = this.WM_KEYUP(wParam, lParam);
                break;
            }
            case 8: {
                result = this.WM_KILLFOCUS(wParam, lParam);
                break;
            }
            case 515: {
                result = this.WM_LBUTTONDBLCLK(wParam, lParam);
                break;
            }
            case 513: {
                result = this.WM_LBUTTONDOWN(wParam, lParam);
                break;
            }
            case 514: {
                result = this.WM_LBUTTONUP(wParam, lParam);
                break;
            }
            case 521: {
                result = this.WM_MBUTTONDBLCLK(wParam, lParam);
                break;
            }
            case 519: {
                result = this.WM_MBUTTONDOWN(wParam, lParam);
                break;
            }
            case 520: {
                result = this.WM_MBUTTONUP(wParam, lParam);
                break;
            }
            case 44: {
                result = this.WM_MEASUREITEM(wParam, lParam);
                break;
            }
            case 288: {
                result = this.WM_MENUCHAR(wParam, lParam);
                break;
            }
            case 287: {
                result = this.WM_MENUSELECT(wParam, lParam);
                break;
            }
            case 33: {
                result = this.WM_MOUSEACTIVATE(wParam, lParam);
                break;
            }
            case 673: {
                result = this.WM_MOUSEHOVER(wParam, lParam);
                break;
            }
            case 675: {
                result = this.WM_MOUSELEAVE(wParam, lParam);
                break;
            }
            case 512: {
                result = this.WM_MOUSEMOVE(wParam, lParam);
                break;
            }
            case 522: {
                result = this.WM_MOUSEWHEEL(wParam, lParam);
                break;
            }
            case 526: {
                result = this.WM_MOUSEHWHEEL(wParam, lParam);
                break;
            }
            case 3: {
                result = this.WM_MOVE(wParam, lParam);
                break;
            }
            case 134: {
                result = this.WM_NCACTIVATE(wParam, lParam);
                break;
            }
            case 131: {
                result = this.WM_NCCALCSIZE(wParam, lParam);
                break;
            }
            case 132: {
                result = this.WM_NCHITTEST(wParam, lParam);
                break;
            }
            case 161: {
                result = this.WM_NCLBUTTONDOWN(wParam, lParam);
                break;
            }
            case 133: {
                result = this.WM_NCPAINT(wParam, lParam);
                break;
            }
            case 78: {
                result = this.WM_NOTIFY(wParam, lParam);
                break;
            }
            case 15: {
                result = this.WM_PAINT(wParam, lParam);
                break;
            }
            case 785: {
                result = this.WM_PALETTECHANGED(wParam, lParam);
                break;
            }
            case 528: {
                result = this.WM_PARENTNOTIFY(wParam, lParam);
                break;
            }
            case 770: {
                result = this.WM_PASTE(wParam, lParam);
                break;
            }
            case 791: {
                result = this.WM_PRINT(wParam, lParam);
                break;
            }
            case 792: {
                result = this.WM_PRINTCLIENT(wParam, lParam);
                break;
            }
            case 17: {
                result = this.WM_QUERYENDSESSION(wParam, lParam);
                break;
            }
            case 783: {
                result = this.WM_QUERYNEWPALETTE(wParam, lParam);
                break;
            }
            case 19: {
                result = this.WM_QUERYOPEN(wParam, lParam);
                break;
            }
            case 518: {
                result = this.WM_RBUTTONDBLCLK(wParam, lParam);
                break;
            }
            case 516: {
                result = this.WM_RBUTTONDOWN(wParam, lParam);
                break;
            }
            case 517: {
                result = this.WM_RBUTTONUP(wParam, lParam);
                break;
            }
            case 32: {
                result = this.WM_SETCURSOR(wParam, lParam);
                break;
            }
            case 7: {
                result = this.WM_SETFOCUS(wParam, lParam);
                break;
            }
            case 48: {
                result = this.WM_SETFONT(wParam, lParam);
                break;
            }
            case 26: {
                result = this.WM_SETTINGCHANGE(wParam, lParam);
                break;
            }
            case 11: {
                result = this.WM_SETREDRAW(wParam, lParam);
                break;
            }
            case 24: {
                result = this.WM_SHOWWINDOW(wParam, lParam);
                break;
            }
            case 5: {
                result = this.WM_SIZE(wParam, lParam);
                break;
            }
            case 262: {
                result = this.WM_SYSCHAR(wParam, lParam);
                break;
            }
            case 21: {
                result = this.WM_SYSCOLORCHANGE(wParam, lParam);
                break;
            }
            case 274: {
                result = this.WM_SYSCOMMAND(wParam, lParam);
                break;
            }
            case 260: {
                result = this.WM_SYSKEYDOWN(wParam, lParam);
                break;
            }
            case 261: {
                result = this.WM_SYSKEYUP(wParam, lParam);
                break;
            }
            case 715: {
                result = this.WM_TABLET_FLICK(wParam, lParam);
                break;
            }
            case 275: {
                result = this.WM_TIMER(wParam, lParam);
                break;
            }
            case 576: {
                result = this.WM_TOUCH(wParam, lParam);
                break;
            }
            case 772: {
                result = this.WM_UNDO(wParam, lParam);
                break;
            }
            case 293: {
                result = this.WM_UNINITMENUPOPUP(wParam, lParam);
                break;
            }
            case 296: {
                result = this.WM_UPDATEUISTATE(wParam, lParam);
                break;
            }
            case 277: {
                result = this.WM_VSCROLL(wParam, lParam);
                break;
            }
            case 71: {
                result = this.WM_WINDOWPOSCHANGED(wParam, lParam);
                break;
            }
            case 70: {
                result = this.WM_WINDOWPOSCHANGING(wParam, lParam);
                break;
            }
            case 525: {
                result = this.WM_XBUTTONDBLCLK(wParam, lParam);
                break;
            }
            case 523: {
                result = this.WM_XBUTTONDOWN(wParam, lParam);
                break;
            }
            case 524: {
                result = this.WM_XBUTTONUP(wParam, lParam);
            }
        }
        if (result != null) {
            return result.value;
        }
        return this.callWindowProc(hwnd, msg, wParam, lParam);
    }

    LRESULT WM_ACTIVATE(int wParam, int lParam) {
        return null;
    }

    LRESULT WM_CAPTURECHANGED(int wParam, int lParam) {
        return this.wmCaptureChanged(this.handle, wParam, lParam);
    }

    LRESULT WM_CHANGEUISTATE(int wParam, int lParam) {
        if ((this.state & 0x100000) != 0) {
            return LRESULT.ZERO;
        }
        return null;
    }

    LRESULT WM_CHAR(int wParam, int lParam) {
        return this.wmChar(this.handle, wParam, lParam);
    }

    LRESULT WM_CLEAR(int wParam, int lParam) {
        return null;
    }

    LRESULT WM_CLOSE(int wParam, int lParam) {
        return null;
    }

    LRESULT WM_COMMAND(int wParam, int lParam) {
        if (lParam == 0) {
            int id;
            MenuItem item;
            Decorations shell = this.menuShell();
            if (shell.isEnabled() && (item = this.display.getMenuItem(id = OS.LOWORD(wParam))) != null && item.isEnabled()) {
                return item.wmCommandChild(wParam, lParam);
            }
            return null;
        }
        Control control = this.display.getControl(lParam);
        if (control == null) {
            return null;
        }
        return control.wmCommandChild(wParam, lParam);
    }

    LRESULT WM_CONTEXTMENU(int wParam, int lParam) {
        return this.wmContextMenu(this.handle, wParam, lParam);
    }

    LRESULT WM_CTLCOLOR(int wParam, int lParam) {
        Control control;
        int hPalette = this.display.hPalette;
        if (hPalette != 0) {
            OS.SelectPalette(wParam, hPalette, false);
            OS.RealizePalette(wParam);
        }
        if ((control = this.display.getControl(lParam)) == null) {
            return null;
        }
        return control.wmColorChild(wParam, lParam);
    }

    LRESULT WM_CUT(int wParam, int lParam) {
        return null;
    }

    LRESULT WM_DESTROY(int wParam, int lParam) {
        return null;
    }

    LRESULT WM_DRAWITEM(int wParam, int lParam) {
        DRAWITEMSTRUCT struct = new DRAWITEMSTRUCT();
        OS.MoveMemory(struct, lParam, DRAWITEMSTRUCT.sizeof);
        if (struct.CtlType == 1) {
            MenuItem item = this.display.getMenuItem(struct.itemID);
            if (item == null) {
                return null;
            }
            return item.wmDrawChild(wParam, lParam);
        }
        Control control = this.display.getControl(struct.hwndItem);
        if (control == null) {
            return null;
        }
        return control.wmDrawChild(wParam, lParam);
    }

    LRESULT WM_ENDSESSION(int wParam, int lParam) {
        return null;
    }

    LRESULT WM_ENTERIDLE(int wParam, int lParam) {
        return null;
    }

    LRESULT WM_ERASEBKGND(int wParam, int lParam) {
        if ((this.state & 0x200) != 0 && this.findImageControl() != null) {
            return LRESULT.ONE;
        }
        if ((this.state & 0x100) != 0 && OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed() && this.findThemeControl() != null) {
            return LRESULT.ONE;
        }
        return null;
    }

    LRESULT WM_GESTURE(int wParam, int lParam) {
        if (this.hooks(48) || this.filters(48)) {
            GESTUREINFO gi = new GESTUREINFO();
            gi.cbSize = GESTUREINFO.sizeof;
            if (OS.GetGestureInfo(lParam, gi) && !this.sendGestureEvent(gi)) {
                OS.CloseGestureInfoHandle(lParam);
                return LRESULT.ZERO;
            }
        }
        return null;
    }

    LRESULT WM_GETDLGCODE(int wParam, int lParam) {
        return null;
    }

    LRESULT WM_GETFONT(int wParam, int lParam) {
        return null;
    }

    LRESULT WM_GETOBJECT(int wParam, int lParam) {
        int result;
        if (this.accessible != null && (result = this.accessible.internal_WM_GETOBJECT(wParam, lParam)) != 0) {
            return new LRESULT(result);
        }
        return null;
    }

    LRESULT WM_GETMINMAXINFO(int wParam, int lParam) {
        return null;
    }

    LRESULT WM_HOTKEY(int wParam, int lParam) {
        return null;
    }

    LRESULT WM_HELP(int wParam, int lParam) {
        if (OS.IsWinCE) {
            return null;
        }
        HELPINFO lphi = new HELPINFO();
        OS.MoveMemory(lphi, lParam, HELPINFO.sizeof);
        Decorations shell = this.menuShell();
        if (!shell.isEnabled()) {
            return null;
        }
        if (lphi.iContextType == 2) {
            MenuItem item = this.display.getMenuItem(lphi.iCtrlId);
            if (item != null && item.isEnabled()) {
                Widget widget = null;
                if (item.hooks(28)) {
                    widget = item;
                } else {
                    Menu menu = item.parent;
                    if (menu.hooks(28)) {
                        widget = menu;
                    }
                }
                if (widget != null) {
                    int hwndShell = shell.handle;
                    OS.SendMessage(hwndShell, 31, 0, 0);
                    widget.postEvent(28);
                    return LRESULT.ONE;
                }
            }
            return null;
        }
        if (this.hooks(28)) {
            this.postEvent(28);
            return LRESULT.ONE;
        }
        return null;
    }

    LRESULT WM_HSCROLL(int wParam, int lParam) {
        Control control = this.display.getControl(lParam);
        if (control == null) {
            return null;
        }
        return control.wmScrollChild(wParam, lParam);
    }

    LRESULT WM_IME_CHAR(int wParam, int lParam) {
        return this.wmIMEChar(this.handle, wParam, lParam);
    }

    LRESULT WM_IME_COMPOSITION(int wParam, int lParam) {
        return null;
    }

    LRESULT WM_IME_COMPOSITION_START(int wParam, int lParam) {
        return null;
    }

    LRESULT WM_IME_ENDCOMPOSITION(int wParam, int lParam) {
        return null;
    }

    LRESULT WM_UNINITMENUPOPUP(int wParam, int lParam) {
        Menu hiddenMenu = this.menuShell().findMenu(wParam);
        if (hiddenMenu != null) {
            Shell shell = this.getShell();
            hiddenMenu.sendEvent(23);
            if (hiddenMenu == shell.activeMenu) {
                shell.activeMenu = null;
            }
        }
        return null;
    }

    LRESULT WM_INITMENUPOPUP(int wParam, int lParam) {
        if (this.display.accelKeyHit) {
            return null;
        }
        Shell shell = this.getShell();
        Menu oldMenu = shell.activeMenu;
        Menu newMenu = null;
        if (OS.HIWORD(lParam) == 0 && (newMenu = this.menuShell().findMenu(wParam)) != null) {
            newMenu.update();
        }
        Menu menu = newMenu;
        while (menu != null && menu != oldMenu) {
            menu = menu.getParentMenu();
        }
        if (menu == null) {
            menu = shell.activeMenu;
            while (menu != null) {
                menu.sendEvent(23);
                if (menu.isDisposed()) break;
                menu = menu.getParentMenu();
                Menu ancestor = newMenu;
                while (ancestor != null && ancestor != menu) {
                    ancestor = ancestor.getParentMenu();
                }
                if (ancestor != null) break;
            }
        }
        if (newMenu != null && newMenu.isDisposed()) {
            newMenu = null;
        }
        shell.activeMenu = newMenu;
        if (newMenu != null && newMenu != oldMenu) {
            newMenu.sendEvent(22);
        }
        return null;
    }

    LRESULT WM_INPUTLANGCHANGE(int wParam, int lParam) {
        return null;
    }

    LRESULT WM_KEYDOWN(int wParam, int lParam) {
        return this.wmKeyDown(this.handle, wParam, lParam);
    }

    LRESULT WM_KEYUP(int wParam, int lParam) {
        return this.wmKeyUp(this.handle, wParam, lParam);
    }

    LRESULT WM_KILLFOCUS(int wParam, int lParam) {
        return this.wmKillFocus(this.handle, wParam, lParam);
    }

    LRESULT WM_LBUTTONDBLCLK(int wParam, int lParam) {
        return this.wmLButtonDblClk(this.handle, wParam, lParam);
    }

    LRESULT WM_LBUTTONDOWN(int wParam, int lParam) {
        return this.wmLButtonDown(this.handle, wParam, lParam);
    }

    LRESULT WM_LBUTTONUP(int wParam, int lParam) {
        return this.wmLButtonUp(this.handle, wParam, lParam);
    }

    LRESULT WM_MBUTTONDBLCLK(int wParam, int lParam) {
        return this.wmMButtonDblClk(this.handle, wParam, lParam);
    }

    LRESULT WM_MBUTTONDOWN(int wParam, int lParam) {
        return this.wmMButtonDown(this.handle, wParam, lParam);
    }

    LRESULT WM_MBUTTONUP(int wParam, int lParam) {
        return this.wmMButtonUp(this.handle, wParam, lParam);
    }

    LRESULT WM_MEASUREITEM(int wParam, int lParam) {
        MEASUREITEMSTRUCT struct = new MEASUREITEMSTRUCT();
        OS.MoveMemory(struct, lParam, MEASUREITEMSTRUCT.sizeof);
        if (struct.CtlType == 1) {
            MenuItem item = this.display.getMenuItem(struct.itemID);
            if (item == null) {
                return null;
            }
            return item.wmMeasureChild(wParam, lParam);
        }
        int hwnd = OS.GetDlgItem(this.handle, struct.CtlID);
        Control control = this.display.getControl(hwnd);
        if (control == null) {
            return null;
        }
        return control.wmMeasureChild(wParam, lParam);
    }

    LRESULT WM_MENUCHAR(int wParam, int lParam) {
        int type = OS.HIWORD(wParam);
        if (type == 0 || type == 8192) {
            this.display.mnemonicKeyHit = false;
            return new LRESULT(OS.MAKELRESULT(0, 1));
        }
        return null;
    }

    LRESULT WM_MENUSELECT(int wParam, int lParam) {
        int code = OS.HIWORD(wParam);
        Shell shell = this.getShell();
        if (code == 65535 && lParam == 0) {
            Menu menu = shell.activeMenu;
            while (menu != null) {
                this.display.mnemonicKeyHit = true;
                menu.sendEvent(23);
                if (menu.isDisposed()) break;
                menu = menu.getParentMenu();
            }
            shell.activeMenu = null;
            return null;
        }
        if ((code & 0x2000) != 0) {
            return null;
        }
        if ((code & 0x80) != 0) {
            Widget item = null;
            Decorations menuShell = this.menuShell();
            if ((code & 0x10) != 0) {
                Menu newMenu;
                int index = OS.LOWORD(wParam);
                MENUITEMINFO info = new MENUITEMINFO();
                info.cbSize = MENUITEMINFO.sizeof;
                info.fMask = 4;
                if (OS.GetMenuItemInfo(lParam, index, true, info) && (newMenu = menuShell.findMenu(info.hSubMenu)) != null) {
                    item = newMenu.cascade;
                }
            } else {
                Menu newMenu = menuShell.findMenu(lParam);
                if (newMenu != null) {
                    int id = OS.LOWORD(wParam);
                    item = this.display.getMenuItem(id);
                }
            }
            if (item != null) {
                item.sendEvent(30);
            }
        }
        return null;
    }

    LRESULT WM_MOUSEACTIVATE(int wParam, int lParam) {
        return null;
    }

    LRESULT WM_MOUSEHOVER(int wParam, int lParam) {
        return this.wmMouseHover(this.handle, wParam, lParam);
    }

    LRESULT WM_MOUSELEAVE(int wParam, int lParam) {
        if (OS.COMCTL32_MAJOR >= 6) {
            this.getShell().fixToolTip();
        }
        return this.wmMouseLeave(this.handle, wParam, lParam);
    }

    LRESULT WM_MOUSEMOVE(int wParam, int lParam) {
        return this.wmMouseMove(this.handle, wParam, lParam);
    }

    LRESULT WM_MOUSEWHEEL(int wParam, int lParam) {
        return this.wmMouseWheel(this.handle, wParam, lParam);
    }

    LRESULT WM_MOUSEHWHEEL(int wParam, int lParam) {
        return this.wmMouseHWheel(this.handle, wParam, lParam);
    }

    LRESULT WM_MOVE(int wParam, int lParam) {
        this.state |= 0x10000;
        if (this.findImageControl() != null) {
            if (this != this.getShell()) {
                this.redrawChildren();
            }
        } else if ((this.state & 0x100) != 0 && OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed() && OS.IsWindowVisible(this.handle) && this.findThemeControl() != null) {
            this.redrawChildren();
        }
        if ((this.state & 0x20000) == 0) {
            this.sendEvent(10);
        }
        return null;
    }

    LRESULT WM_NCACTIVATE(int wParam, int lParam) {
        return null;
    }

    LRESULT WM_NCCALCSIZE(int wParam, int lParam) {
        return null;
    }

    LRESULT WM_NCHITTEST(int wParam, int lParam) {
        if (!OS.IsWindowEnabled(this.handle)) {
            return null;
        }
        if (!this.isActive()) {
            return new LRESULT(-1);
        }
        return null;
    }

    LRESULT WM_NCLBUTTONDOWN(int wParam, int lParam) {
        return null;
    }

    LRESULT WM_NCPAINT(int wParam, int lParam) {
        return this.wmNCPaint(this.handle, wParam, lParam);
    }

    LRESULT WM_NOTIFY(int wParam, int lParam) {
        NMHDR hdr = new NMHDR();
        OS.MoveMemory(hdr, lParam, NMHDR.sizeof);
        return this.wmNotify(hdr, wParam, lParam);
    }

    LRESULT WM_PAINT(int wParam, int lParam) {
        return this.wmPaint(this.handle, wParam, lParam);
    }

    LRESULT WM_PALETTECHANGED(int wParam, int lParam) {
        return null;
    }

    LRESULT WM_PARENTNOTIFY(int wParam, int lParam) {
        return null;
    }

    LRESULT WM_PASTE(int wParam, int lParam) {
        return null;
    }

    LRESULT WM_PRINT(int wParam, int lParam) {
        return this.wmPrint(this.handle, wParam, lParam);
    }

    LRESULT WM_PRINTCLIENT(int wParam, int lParam) {
        return null;
    }

    LRESULT WM_QUERYENDSESSION(int wParam, int lParam) {
        return null;
    }

    LRESULT WM_QUERYNEWPALETTE(int wParam, int lParam) {
        return null;
    }

    LRESULT WM_QUERYOPEN(int wParam, int lParam) {
        return null;
    }

    LRESULT WM_RBUTTONDBLCLK(int wParam, int lParam) {
        return this.wmRButtonDblClk(this.handle, wParam, lParam);
    }

    LRESULT WM_RBUTTONDOWN(int wParam, int lParam) {
        return this.wmRButtonDown(this.handle, wParam, lParam);
    }

    LRESULT WM_RBUTTONUP(int wParam, int lParam) {
        return this.wmRButtonUp(this.handle, wParam, lParam);
    }

    LRESULT WM_SETCURSOR(int wParam, int lParam) {
        short hitTest = (short)OS.LOWORD(lParam);
        if (hitTest == 1) {
            Control control = this.display.getControl(wParam);
            if (control == null) {
                return null;
            }
            Cursor cursor = control.findCursor();
            if (cursor != null) {
                OS.SetCursor(cursor.handle);
                return LRESULT.ONE;
            }
        }
        return null;
    }

    LRESULT WM_SETFOCUS(int wParam, int lParam) {
        return this.wmSetFocus(this.handle, wParam, lParam);
    }

    LRESULT WM_SETTINGCHANGE(int wParam, int lParam) {
        return null;
    }

    LRESULT WM_SETFONT(int wParam, int lParam) {
        return null;
    }

    LRESULT WM_SETREDRAW(int wParam, int lParam) {
        return null;
    }

    LRESULT WM_SHOWWINDOW(int wParam, int lParam) {
        return null;
    }

    LRESULT WM_SIZE(int wParam, int lParam) {
        this.state |= 0x40000;
        if ((this.state & 0x80000) == 0) {
            this.sendEvent(11);
        }
        return null;
    }

    LRESULT WM_SYSCHAR(int wParam, int lParam) {
        return this.wmSysChar(this.handle, wParam, lParam);
    }

    LRESULT WM_SYSCOLORCHANGE(int wParam, int lParam) {
        return null;
    }

    /*
     * Handled duff style switch with additional control
     * Handled impossible loop by duplicating code
     * Enabled aggressive block sorting
     */
    LRESULT WM_SYSCOMMAND(int wParam, int lParam) {
        Decorations shell;
        if ((wParam & 0xF000) == 0) {
            MenuItem item;
            Decorations shell2 = this.menuShell();
            if (!shell2.isEnabled() || (item = this.display.getMenuItem(OS.LOWORD(wParam))) == null) return LRESULT.ZERO;
            item.wmCommandChild(wParam, lParam);
            return LRESULT.ZERO;
        }
        int cmd = wParam & 0xFFF0;
        int n = 0;
        block6: do {
            int i;
            MenuItem[] items;
            switch (n == 0 ? cmd : n) {
                case 61536: {
                    int hwndShell = this.menuShell().handle;
                    int bits = OS.GetWindowLong(hwndShell, -16);
                    if ((bits & 0x80000) != 0) return null;
                    return LRESULT.ZERO;
                }
                case 61696: {
                    char key;
                    if (lParam == 0) {
                        n = 61552;
                        shell = this.menuShell();
                        Menu menu = shell.getMenuBar();
                        if (menu != null) continue block6;
                        n = 61552;
                        Control control = this.display._getFocusControl();
                        if (control == null) continue block6;
                        if (!control.hooks(1)) {
                            n = 61552;
                            if (!control.hooks(2)) continue block6;
                        }
                        this.display.mnemonicKeyHit = false;
                        return LRESULT.ZERO;
                    }
                    if (!this.hooks(1)) {
                        n = 61552;
                        if (!this.hooks(2)) continue block6;
                    }
                    n = 61552;
                    if (lParam == 32) continue block6;
                    shell = this.menuShell();
                    Menu menu = shell.getMenuBar();
                    if (menu != null) {
                        n = 61552;
                        key = Display.mbcsToWcs(lParam);
                        if (key == '\u0000') continue block6;
                        key = Character.toUpperCase(key);
                        items = menu.getItems();
                        i = 0;
                        if (true) {
                            n = 61552;
                            if (i >= items.length) continue block6;
                        }
                    } else {
                        this.display.mnemonicKeyHit = false;
                        n = 61552;
                        continue block6;
                    }
                }
                case 61472: {
                    this.menuShell().saveFocus();
                    return null;
                }
                default: {
                    return null;
                }
                do {
                    char ch;
                    char key;
                    MenuItem item = items[i];
                    String text = item.getText();
                    char mnemonic = this.findMnemonic(text);
                    if (text.length() > 0 && mnemonic == '\u0000' && Character.toUpperCase(ch = text.charAt(0)) == key) {
                        this.display.mnemonicKeyHit = false;
                        return LRESULT.ZERO;
                    }
                    ++i;
                    n = 61552;
                } while (i < items.length);
                case 61552: 
                case 61568: 
            }
            break;
        } while (true);
        if ((shell = this.menuShell()).isEnabled() && shell.isActive()) return null;
        return LRESULT.ZERO;
    }

    LRESULT WM_SYSKEYDOWN(int wParam, int lParam) {
        return this.wmSysKeyDown(this.handle, wParam, lParam);
    }

    LRESULT WM_SYSKEYUP(int wParam, int lParam) {
        return this.wmSysKeyUp(this.handle, wParam, lParam);
    }

    LRESULT WM_TABLET_FLICK(int wParam, int lParam) {
        if (!this.hooks(48) && !this.filters(48)) {
            return null;
        }
        Event event = new Event();
        FLICK_DATA fData = new FLICK_DATA();
        int[] source = new int[]{wParam};
        OS.MoveMemory(fData, source, OS.FLICK_DATA_sizeof());
        FLICK_POINT fPoint = new FLICK_POINT();
        source[0] = lParam;
        OS.MoveMemory(fPoint, source, OS.FLICK_POINT_sizeof());
        switch (fData.iFlickDirection) {
            case 0: {
                event.xDirection = 1;
                event.yDirection = 0;
                break;
            }
            case 1: {
                event.xDirection = 1;
                event.yDirection = -1;
                break;
            }
            case 2: {
                event.xDirection = 0;
                event.yDirection = -1;
                break;
            }
            case 3: {
                event.xDirection = -1;
                event.yDirection = -1;
                break;
            }
            case 4: {
                event.xDirection = -1;
                event.yDirection = 0;
                break;
            }
            case 5: {
                event.xDirection = -1;
                event.yDirection = 1;
                break;
            }
            case 6: {
                event.xDirection = 0;
                event.yDirection = 1;
                break;
            }
            case 7: {
                event.xDirection = 1;
                event.yDirection = 1;
            }
        }
        event.x = fPoint.x;
        event.y = fPoint.y;
        event.type = 48;
        event.detail = 16;
        this.setInputState(event, 48);
        this.sendEvent(48, event);
        return event.doit ? null : LRESULT.ONE;
    }

    LRESULT WM_TOUCH(int wParam, int lParam) {
        LRESULT result = null;
        if (this.hooks(47) || this.filters(47)) {
            int cInputs = OS.LOWORD(wParam);
            int hHeap = OS.GetProcessHeap();
            int pInputs = OS.HeapAlloc(hHeap, 8, cInputs * TOUCHINPUT.sizeof);
            if (pInputs != 0) {
                if (OS.GetTouchInputInfo(lParam, cInputs, pInputs, TOUCHINPUT.sizeof)) {
                    TOUCHINPUT[] ti = new TOUCHINPUT[cInputs];
                    int i = 0;
                    while (i < cInputs) {
                        ti[i] = new TOUCHINPUT();
                        OS.MoveMemory(ti[i], pInputs + i * TOUCHINPUT.sizeof, TOUCHINPUT.sizeof);
                        ++i;
                    }
                    this.sendTouchEvent(ti);
                    OS.CloseTouchInputHandle(lParam);
                    result = LRESULT.ZERO;
                }
                OS.HeapFree(hHeap, 0, pInputs);
            }
        }
        return result;
    }

    LRESULT WM_TIMER(int wParam, int lParam) {
        return null;
    }

    LRESULT WM_UNDO(int wParam, int lParam) {
        return null;
    }

    LRESULT WM_UPDATEUISTATE(int wParam, int lParam) {
        return null;
    }

    LRESULT WM_VSCROLL(int wParam, int lParam) {
        Control control = this.display.getControl(lParam);
        if (control == null) {
            return null;
        }
        return control.wmScrollChild(wParam, lParam);
    }

    LRESULT WM_WINDOWPOSCHANGED(int wParam, int lParam) {
        try {
            ++this.display.resizeCount;
            int code = this.callWindowProc(this.handle, 71, wParam, lParam);
            LRESULT lRESULT = code == 0 ? LRESULT.ZERO : new LRESULT(code);
            return lRESULT;
        }
        finally {
            --this.display.resizeCount;
        }
    }

    LRESULT WM_WINDOWPOSCHANGING(int wParam, int lParam) {
        Shell shell;
        if (!this.getDrawing() && (shell = this.getShell()) != this) {
            WINDOWPOS lpwp = new WINDOWPOS();
            OS.MoveMemory(lpwp, lParam, WINDOWPOS.sizeof);
            if ((lpwp.flags & 2) == 0 || (lpwp.flags & 1) == 0) {
                RECT rect = new RECT();
                OS.GetWindowRect(this.topHandle(), rect);
                int width = rect.right - rect.left;
                int height = rect.bottom - rect.top;
                if (width != 0 && height != 0) {
                    int hwndParent = this.parent == null ? 0 : this.parent.handle;
                    OS.MapWindowPoints(0, hwndParent, rect, 2);
                    if (OS.IsWinCE) {
                        OS.InvalidateRect(hwndParent, rect, true);
                    } else {
                        int rgn1 = OS.CreateRectRgn(rect.left, rect.top, rect.right, rect.bottom);
                        int rgn2 = OS.CreateRectRgn(lpwp.x, lpwp.y, lpwp.x + lpwp.cx, lpwp.y + lpwp.cy);
                        OS.CombineRgn(rgn1, rgn1, rgn2, 4);
                        int flags = 1157;
                        OS.RedrawWindow(hwndParent, null, rgn1, flags);
                        OS.DeleteObject(rgn1);
                        OS.DeleteObject(rgn2);
                    }
                }
            }
        }
        return null;
    }

    LRESULT WM_XBUTTONDBLCLK(int wParam, int lParam) {
        return this.wmXButtonDblClk(this.handle, wParam, lParam);
    }

    LRESULT WM_XBUTTONDOWN(int wParam, int lParam) {
        return this.wmXButtonDown(this.handle, wParam, lParam);
    }

    LRESULT WM_XBUTTONUP(int wParam, int lParam) {
        return this.wmXButtonUp(this.handle, wParam, lParam);
    }

    LRESULT wmColorChild(int wParam, int lParam) {
        Control control = this.findBackgroundControl();
        if (control == null) {
            if ((this.state & 0x100) != 0 && OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed() && (control = this.findThemeControl()) != null) {
                RECT rect = new RECT();
                OS.GetClientRect(this.handle, rect);
                OS.SetTextColor(wParam, this.getForegroundPixel());
                OS.SetBkColor(wParam, this.getBackgroundPixel());
                this.fillThemeBackground(wParam, control, rect);
                OS.SetBkMode(wParam, 1);
                return new LRESULT(OS.GetStockObject(5));
            }
            if (this.foreground == -1) {
                return null;
            }
        }
        if (control == null) {
            control = this;
        }
        int forePixel = this.getForegroundPixel();
        int backPixel = control.getBackgroundPixel();
        OS.SetTextColor(wParam, forePixel);
        OS.SetBkColor(wParam, backPixel);
        if (control.backgroundImage != null) {
            RECT rect = new RECT();
            OS.GetClientRect(this.handle, rect);
            int hwnd = control.handle;
            int hBitmap = control.backgroundImage.handle;
            OS.MapWindowPoints(this.handle, hwnd, rect, 2);
            POINT lpPoint = new POINT();
            OS.GetWindowOrgEx(wParam, lpPoint);
            OS.SetBrushOrgEx(wParam, -rect.left - lpPoint.x, -rect.top - lpPoint.y, lpPoint);
            int hBrush = this.findBrush(hBitmap, 3);
            if ((this.state & 0x200) != 0) {
                int hOldBrush = OS.SelectObject(wParam, hBrush);
                OS.MapWindowPoints(hwnd, this.handle, rect, 2);
                OS.PatBlt(wParam, rect.left, rect.top, rect.right - rect.left, rect.bottom - rect.top, 15728673);
                OS.SelectObject(wParam, hOldBrush);
            }
            OS.SetBkMode(wParam, 1);
            return new LRESULT(hBrush);
        }
        int hBrush = this.findBrush(backPixel, 0);
        if ((this.state & 0x200) != 0) {
            RECT rect = new RECT();
            OS.GetClientRect(this.handle, rect);
            int hOldBrush = OS.SelectObject(wParam, hBrush);
            OS.PatBlt(wParam, rect.left, rect.top, rect.right - rect.left, rect.bottom - rect.top, 15728673);
            OS.SelectObject(wParam, hOldBrush);
        }
        return new LRESULT(hBrush);
    }

    LRESULT wmCommandChild(int wParam, int lParam) {
        return null;
    }

    LRESULT wmDrawChild(int wParam, int lParam) {
        return null;
    }

    LRESULT wmMeasureChild(int wParam, int lParam) {
        return null;
    }

    LRESULT wmNotify(NMHDR hdr, int wParam, int lParam) {
        Control control = this.display.getControl(hdr.hwndFrom);
        if (control == null) {
            return null;
        }
        return control.wmNotifyChild(hdr, wParam, lParam);
    }

    LRESULT wmNotifyChild(NMHDR hdr, int wParam, int lParam) {
        return null;
    }

    LRESULT wmScrollChild(int wParam, int lParam) {
        return null;
    }
}

