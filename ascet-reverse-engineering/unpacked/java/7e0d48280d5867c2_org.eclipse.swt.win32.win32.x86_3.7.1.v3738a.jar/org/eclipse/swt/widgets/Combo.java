/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.VerifyListener;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.internal.Callback;
import org.eclipse.swt.internal.win32.COMBOBOXINFO;
import org.eclipse.swt.internal.win32.LRESULT;
import org.eclipse.swt.internal.win32.MONITORINFO;
import org.eclipse.swt.internal.win32.MSG;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.internal.win32.WINDOWPOS;
import org.eclipse.swt.internal.win32.WNDCLASS;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.TypedListener;

public class Combo
extends Composite {
    boolean noSelection;
    boolean ignoreDefaultSelection;
    boolean ignoreCharacter;
    boolean ignoreModify;
    boolean ignoreResize;
    boolean lockText;
    int scrollWidth;
    int visibleCount;
    int cbtHook;
    static final int VISIBLE_COUNT = 5;
    public static final int LIMIT = OS.IsWinNT ? Integer.MAX_VALUE : Short.MAX_VALUE;
    static final int CBID_LIST = 1000;
    static final int CBID_EDIT = 1001;
    static int EditProc;
    static int ListProc;
    static final int ComboProc;
    static final TCHAR ComboClass;

    static {
        ComboClass = new TCHAR(0, "COMBOBOX", true);
        WNDCLASS lpWndClass = new WNDCLASS();
        OS.GetClassInfo(0, ComboClass, lpWndClass);
        ComboProc = lpWndClass.lpfnWndProc;
    }

    public Combo(Composite parent, int style) {
        super(parent, Combo.checkStyle(style));
        this.style |= 0x100;
    }

    public void add(String string) {
        TCHAR buffer;
        int result;
        this.checkWidget();
        if (string == null) {
            this.error(4);
        }
        if ((result = OS.SendMessage(this.handle, 323, 0, buffer = new TCHAR(this.getCodePage(), string, true))) == -1) {
            this.error(14);
        }
        if (result == -2) {
            this.error(14);
        }
        if ((this.style & 0x100) != 0) {
            this.setScrollWidth(buffer, true);
        }
    }

    public void add(String string, int index) {
        TCHAR buffer;
        int result;
        this.checkWidget();
        if (string == null) {
            this.error(4);
        }
        int count = OS.SendMessage(this.handle, 326, 0, 0);
        if (index < 0 || index > count) {
            this.error(6);
        }
        if ((result = OS.SendMessage(this.handle, 330, index, buffer = new TCHAR(this.getCodePage(), string, true))) == -2 || result == -1) {
            this.error(14);
        }
        if ((this.style & 0x100) != 0) {
            this.setScrollWidth(buffer, true);
        }
    }

    public void addModifyListener(ModifyListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(24, typedListener);
    }

    public void addSelectionListener(SelectionListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(13, typedListener);
        this.addListener(14, typedListener);
    }

    public void addVerifyListener(VerifyListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(25, typedListener);
    }

    int callWindowProc(int hwnd, int msg, int wParam, int lParam) {
        if (this.handle == 0) {
            return 0;
        }
        if (hwnd == this.handle) {
            switch (msg) {
                case 5: {
                    this.ignoreResize = true;
                    boolean oldLockText = this.lockText;
                    if ((this.style & 8) == 0) {
                        this.lockText = true;
                    }
                    int result = OS.CallWindowProc(ComboProc, hwnd, msg, wParam, lParam);
                    if ((this.style & 8) == 0) {
                        this.lockText = oldLockText;
                    }
                    this.ignoreResize = false;
                    return result;
                }
            }
            return OS.CallWindowProc(ComboProc, hwnd, msg, wParam, lParam);
        }
        int hwndText = OS.GetDlgItem(this.handle, 1001);
        if (hwnd == hwndText) {
            if (this.lockText && msg == 12) {
                int hHeap = OS.GetProcessHeap();
                int length = OS.GetWindowTextLength(this.handle);
                TCHAR buffer = new TCHAR(this.getCodePage(), length + 1);
                OS.GetWindowText(this.handle, buffer, length + 1);
                int byteCount = buffer.length() * TCHAR.sizeof;
                int pszText = OS.HeapAlloc(hHeap, 8, byteCount);
                OS.MoveMemory(pszText, buffer, byteCount);
                int code = OS.CallWindowProc(EditProc, hwndText, msg, wParam, pszText);
                OS.HeapFree(hHeap, 0, pszText);
                return code;
            }
            return OS.CallWindowProc(EditProc, hwnd, msg, wParam, lParam);
        }
        int hwndList = OS.GetDlgItem(this.handle, 1000);
        if (hwnd == hwndList) {
            return OS.CallWindowProc(ListProc, hwnd, msg, wParam, lParam);
        }
        return OS.DefWindowProc(hwnd, msg, wParam, lParam);
    }

    int CBTProc(int nCode, int wParam, int lParam) {
        if (nCode == 3) {
            TCHAR buffer = new TCHAR(0, 128);
            OS.GetClassName(wParam, buffer, buffer.length());
            String className = buffer.toString(0, buffer.strlen());
            if (className.equals("Edit") || className.equals("EDIT")) {
                int bits = OS.GetWindowLong(wParam, -16);
                OS.SetWindowLong(wParam, -16, bits & 0xFFFFFEFF);
            }
        }
        return OS.CallNextHookEx(this.cbtHook, nCode, wParam, lParam);
    }

    boolean checkHandle(int hwnd) {
        return hwnd == this.handle || hwnd == OS.GetDlgItem(this.handle, 1001) || hwnd == OS.GetDlgItem(this.handle, 1000);
    }

    protected void checkSubclass() {
        if (!this.isValidSubclass()) {
            this.error(43);
        }
    }

    static int checkStyle(int style) {
        style &= 0xFFFFF7FF;
        style &= 0xFFFFFCFF;
        if (((style = Combo.checkBits(style, 4, 64, 0, 0, 0, 0)) & 0x40) != 0) {
            return style & 0xFFFFFFF7;
        }
        return style;
    }

    public void clearSelection() {
        this.checkWidget();
        OS.SendMessage(this.handle, 322, 0, -1);
    }

    public Point computeSize(int wHint, int hHint, boolean changed) {
        this.checkWidget();
        int width = 0;
        int height = 0;
        if (wHint == -1) {
            int oldFont = 0;
            int hDC = OS.GetDC(this.handle);
            int newFont = OS.SendMessage(this.handle, 49, 0, 0);
            if (newFont != 0) {
                oldFont = OS.SelectObject(hDC, newFont);
            }
            int count = OS.SendMessage(this.handle, 326, 0, 0);
            RECT rect = new RECT();
            int flags = 3072;
            if ((this.style & 8) == 0) {
                flags |= 0x2000;
            }
            int length = OS.GetWindowTextLength(this.handle);
            int cp = this.getCodePage();
            TCHAR buffer = new TCHAR(cp, length + 1);
            OS.GetWindowText(this.handle, buffer, length + 1);
            OS.DrawText(hDC, buffer, length, rect, flags);
            width = Math.max(width, rect.right - rect.left);
            if ((this.style & 0x100) != 0) {
                width = Math.max(width, this.scrollWidth);
            } else {
                int i = 0;
                while (i < count) {
                    length = OS.SendMessage(this.handle, 329, i, 0);
                    if (length != -1) {
                        int result;
                        if (length + 1 > buffer.length()) {
                            buffer = new TCHAR(cp, length + 1);
                        }
                        if ((result = OS.SendMessage(this.handle, 328, i, buffer)) != -1) {
                            OS.DrawText(hDC, buffer, length, rect, flags);
                            width = Math.max(width, rect.right - rect.left);
                        }
                    }
                    ++i;
                }
            }
            if (newFont != 0) {
                OS.SelectObject(hDC, oldFont);
            }
            OS.ReleaseDC(this.handle, hDC);
        }
        if (hHint == -1 && (this.style & 0x40) != 0) {
            int count = OS.SendMessage(this.handle, 326, 0, 0);
            int itemHeight = OS.SendMessage(this.handle, 340, 0, 0);
            height = count * itemHeight;
        }
        if (width == 0) {
            width = 64;
        }
        if (height == 0) {
            height = 64;
        }
        if (wHint != -1) {
            width = wHint;
        }
        if (hHint != -1) {
            height = hHint;
        }
        if ((this.style & 8) != 0) {
            width += 8;
        } else {
            int hwndText = OS.GetDlgItem(this.handle, 1001);
            if (hwndText != 0) {
                int margins = OS.SendMessage(hwndText, 212, 0, 0);
                int marginWidth = OS.LOWORD(margins) + OS.HIWORD(margins);
                width += marginWidth + 3;
            }
        }
        COMBOBOXINFO pcbi = new COMBOBOXINFO();
        pcbi.cbSize = COMBOBOXINFO.sizeof;
        if ((this.style & 0x40) == 0 && !OS.IsWinCE && OS.GetComboBoxInfo(this.handle, pcbi)) {
            width += pcbi.itemLeft + (pcbi.buttonRight - pcbi.buttonLeft);
            height = pcbi.buttonBottom - pcbi.buttonTop + pcbi.buttonTop * 2;
        } else {
            int border = OS.GetSystemMetrics(45);
            width += OS.GetSystemMetrics(2) + border * 2;
            int textHeight = OS.SendMessage(this.handle, 340, -1, 0);
            height = (this.style & 4) != 0 ? textHeight + 6 : (height += textHeight + 10);
        }
        if ((this.style & 0x40) != 0 && (this.style & 0x100) != 0) {
            height += OS.GetSystemMetrics(3);
        }
        return new Point(width, height);
    }

    public void copy() {
        this.checkWidget();
        OS.SendMessage(this.handle, 769, 0, 0);
    }

    void createHandle() {
        int hwndList;
        if (OS.IsWinCE || (this.style & 0x48) != 0) {
            super.createHandle();
        } else {
            int threadId = OS.GetCurrentThreadId();
            Callback cbtCallback = new Callback(this, "CBTProc", 3);
            int cbtProc = cbtCallback.getAddress();
            if (cbtProc == 0) {
                this.error(3);
            }
            this.cbtHook = OS.SetWindowsHookEx(5, cbtProc, 0, threadId);
            super.createHandle();
            if (this.cbtHook != 0) {
                OS.UnhookWindowsHookEx(this.cbtHook);
            }
            this.cbtHook = 0;
            cbtCallback.dispose();
        }
        this.state &= 0xFFFFFEFD;
        int hwndText = OS.GetDlgItem(this.handle, 1001);
        if (hwndText != 0 && EditProc == 0) {
            EditProc = OS.GetWindowLongPtr(hwndText, -4);
        }
        if ((hwndList = OS.GetDlgItem(this.handle, 1000)) != 0 && ListProc == 0) {
            ListProc = OS.GetWindowLongPtr(hwndList, -4);
        }
        if ((this.style & 0x40) != 0) {
            int flags = 52;
            this.SetWindowPos(this.handle, 0, 0, 0, 16383, 16383, flags);
            this.SetWindowPos(this.handle, 0, 0, 0, 0, 0, flags);
        }
    }

    void createWidget() {
        int itemHeight;
        super.createWidget();
        this.visibleCount = 5;
        if ((this.style & 0x40) == 0 && (itemHeight = OS.SendMessage(this.handle, 340, 0, 0)) != -1 && itemHeight != 0) {
            int maxHeight = 0;
            if (OS.IsWinCE || OS.WIN32_VERSION < OS.VERSION(4, 10)) {
                RECT rect = new RECT();
                OS.SystemParametersInfo(48, 0, rect, 0);
                maxHeight = (rect.bottom - rect.top) / 3;
            } else {
                int hmonitor = OS.MonitorFromWindow(this.handle, 2);
                MONITORINFO lpmi = new MONITORINFO();
                lpmi.cbSize = MONITORINFO.sizeof;
                OS.GetMonitorInfo(hmonitor, lpmi);
                maxHeight = (lpmi.rcWork_bottom - lpmi.rcWork_top) / 3;
            }
            this.visibleCount = Math.max(this.visibleCount, maxHeight / itemHeight);
        }
    }

    public void cut() {
        this.checkWidget();
        if ((this.style & 8) != 0) {
            return;
        }
        OS.SendMessage(this.handle, 768, 0, 0);
    }

    int defaultBackground() {
        return OS.GetSysColor(OS.COLOR_WINDOW);
    }

    void deregister() {
        int hwndList;
        super.deregister();
        int hwndText = OS.GetDlgItem(this.handle, 1001);
        if (hwndText != 0) {
            this.display.removeControl(hwndText);
        }
        if ((hwndList = OS.GetDlgItem(this.handle, 1000)) != 0) {
            this.display.removeControl(hwndList);
        }
    }

    public void deselect(int index) {
        this.checkWidget();
        int selection = OS.SendMessage(this.handle, 327, 0, 0);
        if (index != selection) {
            return;
        }
        OS.SendMessage(this.handle, 334, -1, 0);
        this.sendEvent(24);
    }

    public void deselectAll() {
        this.checkWidget();
        OS.SendMessage(this.handle, 334, -1, 0);
        this.sendEvent(24);
    }

    boolean dragDetect(int hwnd, int x, int y, boolean filter, boolean[] detect, boolean[] consume) {
        int hwndText;
        if (filter && (this.style & 8) == 0 && (hwndText = OS.GetDlgItem(this.handle, 1001)) != 0) {
            int lParam;
            int position;
            int[] start = new int[1];
            int[] end = new int[1];
            OS.SendMessage(this.handle, 320, start, end);
            if (start[0] != end[0] && start[0] <= (position = OS.LOWORD(OS.SendMessage(hwndText, 215, 0, lParam = OS.MAKELPARAM(x, y)))) && position < end[0] && super.dragDetect(hwnd, x, y, filter, detect, consume)) {
                if (consume != null) {
                    consume[0] = true;
                }
                return true;
            }
            return false;
        }
        return super.dragDetect(hwnd, x, y, filter, detect, consume);
    }

    public String getItem(int index) {
        TCHAR buffer;
        int result;
        this.checkWidget();
        int length = OS.SendMessage(this.handle, 329, index, 0);
        if (length != -1 && (result = OS.SendMessage(this.handle, 328, index, buffer = new TCHAR(this.getCodePage(), length + 1))) != -1) {
            return buffer.toString(0, length);
        }
        int count = OS.SendMessage(this.handle, 326, 0, 0);
        if (index >= 0 && index < count) {
            this.error(8);
        }
        this.error(6);
        return "";
    }

    public int getItemCount() {
        this.checkWidget();
        int count = OS.SendMessage(this.handle, 326, 0, 0);
        if (count == -1) {
            this.error(36);
        }
        return count;
    }

    public int getItemHeight() {
        this.checkWidget();
        int result = OS.SendMessage(this.handle, 340, 0, 0);
        if (result == -1) {
            this.error(11);
        }
        return result;
    }

    public String[] getItems() {
        this.checkWidget();
        int count = this.getItemCount();
        String[] result = new String[count];
        int i = 0;
        while (i < count) {
            result[i] = this.getItem(i);
            ++i;
        }
        return result;
    }

    public boolean getListVisible() {
        this.checkWidget();
        if ((this.style & 4) != 0) {
            return OS.SendMessage(this.handle, 343, 0, 0) != 0;
        }
        return true;
    }

    String getNameText() {
        return this.getText();
    }

    public void setListVisible(boolean visible) {
        this.checkWidget();
        OS.SendMessage(this.handle, 335, visible ? 1 : 0, 0);
    }

    public int getOrientation() {
        return super.getOrientation();
    }

    public Point getSelection() {
        this.checkWidget();
        if ((this.style & 4) != 0 && (this.style & 8) != 0) {
            return new Point(0, OS.GetWindowTextLength(this.handle));
        }
        int[] start = new int[1];
        int[] end = new int[1];
        OS.SendMessage(this.handle, 320, start, end);
        if (!OS.IsUnicode && OS.IsDBLocale) {
            start[0] = this.mbcsToWcsPos(start[0]);
            end[0] = this.mbcsToWcsPos(end[0]);
        }
        return new Point(start[0], end[0]);
    }

    public int getSelectionIndex() {
        this.checkWidget();
        if (this.noSelection) {
            return -1;
        }
        return OS.SendMessage(this.handle, 327, 0, 0);
    }

    public String getText() {
        this.checkWidget();
        int length = OS.GetWindowTextLength(this.handle);
        if (length == 0) {
            return "";
        }
        TCHAR buffer = new TCHAR(this.getCodePage(), length + 1);
        OS.GetWindowText(this.handle, buffer, length + 1);
        return buffer.toString(0, length);
    }

    public int getTextHeight() {
        this.checkWidget();
        COMBOBOXINFO pcbi = new COMBOBOXINFO();
        pcbi.cbSize = COMBOBOXINFO.sizeof;
        if ((this.style & 0x40) == 0 && !OS.IsWinCE && OS.GetComboBoxInfo(this.handle, pcbi)) {
            return pcbi.buttonBottom - pcbi.buttonTop + pcbi.buttonTop * 2;
        }
        int result = OS.SendMessage(this.handle, 340, -1, 0);
        if (result == -1) {
            this.error(11);
        }
        return (this.style & 4) != 0 ? result + 6 : result + 10;
    }

    public int getTextLimit() {
        this.checkWidget();
        int hwndText = OS.GetDlgItem(this.handle, 1001);
        if (hwndText == 0) {
            return LIMIT;
        }
        return OS.SendMessage(hwndText, 213, 0, 0) & Integer.MAX_VALUE;
    }

    public int getVisibleItemCount() {
        this.checkWidget();
        return this.visibleCount;
    }

    boolean hasFocus() {
        int hwndFocus = OS.GetFocus();
        if (hwndFocus == this.handle) {
            return true;
        }
        if (hwndFocus == 0) {
            return false;
        }
        int hwndText = OS.GetDlgItem(this.handle, 1001);
        if (hwndFocus == hwndText) {
            return true;
        }
        int hwndList = OS.GetDlgItem(this.handle, 1000);
        return hwndFocus == hwndList;
    }

    public int indexOf(String string) {
        return this.indexOf(string, 0);
    }

    public int indexOf(String string, int start) {
        this.checkWidget();
        if (string == null) {
            this.error(4);
        }
        if (string.length() == 0) {
            int count = this.getItemCount();
            int i = start;
            while (i < count) {
                if (string.equals(this.getItem(i))) {
                    return i;
                }
                ++i;
            }
            return -1;
        }
        int count = OS.SendMessage(this.handle, 326, 0, 0);
        if (start < 0 || start >= count) {
            return -1;
        }
        int index = start - 1;
        int last = 0;
        TCHAR buffer = new TCHAR(this.getCodePage(), string, true);
        do {
            if ((index = OS.SendMessage(this.handle, 344, last = index, buffer)) != -1 && index > last) continue;
            return -1;
        } while (!string.equals(this.getItem(index)));
        return index;
    }

    int mbcsToWcsPos(int mbcsPos) {
        if (mbcsPos <= 0) {
            return 0;
        }
        if (OS.IsUnicode) {
            return mbcsPos;
        }
        int hwndText = OS.GetDlgItem(this.handle, 1001);
        if (hwndText == 0) {
            return mbcsPos;
        }
        int mbcsSize = OS.GetWindowTextLengthA(hwndText);
        if (mbcsSize == 0) {
            return 0;
        }
        if (mbcsPos >= mbcsSize) {
            return mbcsSize;
        }
        byte[] buffer = new byte[mbcsSize + 1];
        OS.GetWindowTextA(hwndText, buffer, mbcsSize + 1);
        return OS.MultiByteToWideChar(this.getCodePage(), 1, buffer, mbcsPos, null, 0);
    }

    public void paste() {
        this.checkWidget();
        if ((this.style & 8) != 0) {
            return;
        }
        OS.SendMessage(this.handle, 770, 0, 0);
    }

    void register() {
        int hwndList;
        super.register();
        int hwndText = OS.GetDlgItem(this.handle, 1001);
        if (hwndText != 0) {
            this.display.addControl(hwndText, this);
        }
        if ((hwndList = OS.GetDlgItem(this.handle, 1000)) != 0) {
            this.display.addControl(hwndList, this);
        }
    }

    public void remove(int index) {
        this.checkWidget();
        this.remove(index, true);
    }

    void remove(int index, boolean notify) {
        int count;
        int length;
        TCHAR buffer = null;
        if ((this.style & 0x100) != 0) {
            int result;
            length = OS.SendMessage(this.handle, 329, index, 0);
            if (length == -1) {
                int count2 = OS.SendMessage(this.handle, 326, 0, 0);
                if (index >= 0 && index < count2) {
                    this.error(15);
                }
                this.error(6);
            }
            if ((result = OS.SendMessage(this.handle, 328, index, buffer = new TCHAR(this.getCodePage(), length + 1))) == -1) {
                count = OS.SendMessage(this.handle, 326, 0, 0);
                if (index >= 0 && index < count) {
                    this.error(15);
                }
                this.error(6);
            }
        }
        length = OS.GetWindowTextLength(this.handle);
        int code = OS.SendMessage(this.handle, 324, index, 0);
        if (code == -1) {
            count = OS.SendMessage(this.handle, 326, 0, 0);
            if (index >= 0 && index < count) {
                this.error(15);
            }
            this.error(6);
        }
        if ((this.style & 0x100) != 0) {
            this.setScrollWidth(buffer, true);
        }
        if (notify && length != OS.GetWindowTextLength(this.handle)) {
            this.sendEvent(24);
            if (this.isDisposed()) {
                return;
            }
        }
        if ((this.style & 8) != 0 && (count = OS.SendMessage(this.handle, 326, 0, 0)) == 0) {
            OS.InvalidateRect(this.handle, null, true);
        }
    }

    public void remove(int start, int end) {
        this.checkWidget();
        if (start > end) {
            return;
        }
        int count = OS.SendMessage(this.handle, 326, 0, 0);
        if (start < 0 || start > end || end >= count) {
            this.error(6);
        }
        int textLength = OS.GetWindowTextLength(this.handle);
        RECT rect = null;
        int hDC = 0;
        int oldFont = 0;
        int newFont = 0;
        int newWidth = 0;
        if ((this.style & 0x100) != 0) {
            rect = new RECT();
            hDC = OS.GetDC(this.handle);
            newFont = OS.SendMessage(this.handle, 49, 0, 0);
            if (newFont != 0) {
                oldFont = OS.SelectObject(hDC, newFont);
            }
        }
        int cp = this.getCodePage();
        int flags = 3104;
        int i = start;
        while (i <= end) {
            int result;
            int length;
            TCHAR buffer = null;
            if ((this.style & 0x100) != 0 && ((length = OS.SendMessage(this.handle, 329, start, 0)) == -1 || (result = OS.SendMessage(this.handle, 328, start, buffer = new TCHAR(cp, length + 1))) == -1)) break;
            int result2 = OS.SendMessage(this.handle, 324, start, 0);
            if (result2 == -1) {
                this.error(15);
            }
            if ((this.style & 0x100) != 0) {
                OS.DrawText(hDC, buffer, -1, rect, flags);
                newWidth = Math.max(newWidth, rect.right - rect.left);
            }
            ++i;
        }
        if ((this.style & 0x100) != 0) {
            if (newFont != 0) {
                OS.SelectObject(hDC, oldFont);
            }
            OS.ReleaseDC(this.handle, hDC);
            this.setScrollWidth(newWidth, false);
        }
        if (textLength != OS.GetWindowTextLength(this.handle)) {
            this.sendEvent(24);
            if (this.isDisposed()) {
                return;
            }
        }
        if ((this.style & 8) != 0 && (count = OS.SendMessage(this.handle, 326, 0, 0)) == 0) {
            OS.InvalidateRect(this.handle, null, true);
        }
    }

    public void remove(String string) {
        int index;
        this.checkWidget();
        if (string == null) {
            this.error(4);
        }
        if ((index = this.indexOf(string, 0)) == -1) {
            this.error(5);
        }
        this.remove(index);
    }

    public void removeAll() {
        this.checkWidget();
        OS.SendMessage(this.handle, 331, 0, 0);
        this.sendEvent(24);
        if (this.isDisposed()) {
            return;
        }
        if ((this.style & 0x100) != 0) {
            this.setScrollWidth(0);
        }
    }

    public void removeModifyListener(ModifyListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(24, listener);
    }

    public void removeSelectionListener(SelectionListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(13, listener);
        this.eventTable.unhook(14, listener);
    }

    public void removeVerifyListener(VerifyListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(25, listener);
    }

    boolean sendKeyEvent(int type, int msg, int wParam, int lParam, Event event) {
        String newText;
        if (!super.sendKeyEvent(type, msg, wParam, lParam, event)) {
            return false;
        }
        if ((this.style & 8) != 0) {
            return true;
        }
        if (type != 1) {
            return true;
        }
        if (msg != 258 && msg != 256 && msg != 646) {
            return true;
        }
        if (event.character == '\u0000') {
            return true;
        }
        if (!this.hooks(25) && !this.filters(25)) {
            return true;
        }
        char key = event.character;
        int stateMask = event.stateMask;
        switch (msg) {
            case 258: {
                if (key != '\b' && key != '\u007f' && key != '\r' && key != '\t' && key != '\n') break;
            }
            case 256: {
                if ((stateMask & 0x70000) == 0) break;
                return false;
            }
        }
        if (OS.GetKeyState(1) < 0 && OS.GetDlgItem(this.handle, 1001) == OS.GetCapture()) {
            return true;
        }
        String oldText = "";
        int[] start = new int[1];
        int[] end = new int[1];
        int hwndText = OS.GetDlgItem(this.handle, 1001);
        if (hwndText == 0) {
            return true;
        }
        OS.SendMessage(hwndText, 176, start, end);
        switch (key) {
            case '\b': {
                if (start[0] != end[0]) break;
                if (start[0] == 0) {
                    return true;
                }
                start[0] = start[0] - 1;
                if (!OS.IsUnicode && OS.IsDBLocale) {
                    int[] newStart = new int[1];
                    int[] newEnd = new int[1];
                    OS.SendMessage(hwndText, 177, start[0], end[0]);
                    OS.SendMessage(hwndText, 176, newStart, newEnd);
                    if (start[0] != newStart[0]) {
                        start[0] = start[0] - 1;
                    }
                }
                start[0] = Math.max(start[0], 0);
                break;
            }
            case '\u007f': {
                if (start[0] != end[0]) break;
                int length = OS.GetWindowTextLength(hwndText);
                if (start[0] == length) {
                    return true;
                }
                end[0] = end[0] + 1;
                if (!OS.IsUnicode && OS.IsDBLocale) {
                    int[] newStart = new int[1];
                    int[] newEnd = new int[1];
                    OS.SendMessage(hwndText, 177, start[0], end[0]);
                    OS.SendMessage(hwndText, 176, newStart, newEnd);
                    if (end[0] != newEnd[0]) {
                        end[0] = end[0] + 1;
                    }
                }
                end[0] = Math.min(end[0], length);
                break;
            }
            case '\r': {
                return true;
            }
            default: {
                if (key != '\t' && key < ' ') {
                    return true;
                }
                oldText = new String(new char[]{key});
            }
        }
        if ((newText = this.verifyText(oldText, start[0], end[0], event)) == null) {
            return false;
        }
        if (newText == oldText) {
            return true;
        }
        TCHAR buffer = new TCHAR(this.getCodePage(), newText, true);
        OS.SendMessage(hwndText, 177, start[0], end[0]);
        OS.SendMessage(hwndText, 194, 0, buffer);
        return false;
    }

    public void select(int index) {
        this.checkWidget();
        int count = OS.SendMessage(this.handle, 326, 0, 0);
        if (index >= 0 && index < count) {
            int selection = OS.SendMessage(this.handle, 327, 0, 0);
            int code = OS.SendMessage(this.handle, 334, index, 0);
            if (code != -1 && code != selection) {
                this.sendEvent(24);
            }
        }
    }

    void setBackgroundImage(int hBitmap) {
        int hwndList;
        super.setBackgroundImage(hBitmap);
        int hwndText = OS.GetDlgItem(this.handle, 1001);
        if (hwndText != 0) {
            OS.InvalidateRect(hwndText, null, true);
        }
        if ((hwndList = OS.GetDlgItem(this.handle, 1000)) != 0) {
            OS.InvalidateRect(hwndList, null, true);
        }
    }

    void setBackgroundPixel(int pixel) {
        int hwndList;
        super.setBackgroundPixel(pixel);
        int hwndText = OS.GetDlgItem(this.handle, 1001);
        if (hwndText != 0) {
            OS.InvalidateRect(hwndText, null, true);
        }
        if ((hwndList = OS.GetDlgItem(this.handle, 1000)) != 0) {
            OS.InvalidateRect(hwndList, null, true);
        }
    }

    void setBounds(int x, int y, int width, int height, int flags) {
        if ((this.style & 4) != 0) {
            int visibleCount = this.getItemCount() == 0 ? 5 : this.visibleCount;
            height = this.getTextHeight() + this.getItemHeight() * visibleCount + 2;
            RECT rect = new RECT();
            OS.GetWindowRect(this.handle, rect);
            if (rect.right - rect.left != 0 && OS.SendMessage(this.handle, 338, 0, rect) != 0) {
                int oldWidth = rect.right - rect.left;
                int oldHeight = rect.bottom - rect.top;
                if (oldWidth == width && oldHeight == height) {
                    flags |= 1;
                }
            }
            this.SetWindowPos(this.handle, 0, x, y, width, height, flags);
        } else {
            super.setBounds(x, y, width, height, flags);
        }
    }

    public void setFont(Font font) {
        this.checkWidget();
        boolean oldLockText = this.lockText;
        if ((this.style & 8) == 0) {
            this.lockText = true;
        }
        super.setFont(font);
        if ((this.style & 8) == 0) {
            this.lockText = oldLockText;
        }
        if ((this.style & 0x100) != 0) {
            this.setScrollWidth();
        }
    }

    void setForegroundPixel(int pixel) {
        int hwndList;
        super.setForegroundPixel(pixel);
        int hwndText = OS.GetDlgItem(this.handle, 1001);
        if (hwndText != 0) {
            OS.InvalidateRect(hwndText, null, true);
        }
        if ((hwndList = OS.GetDlgItem(this.handle, 1000)) != 0) {
            OS.InvalidateRect(hwndList, null, true);
        }
    }

    public void setItem(int index, String string) {
        this.checkWidget();
        if (string == null) {
            this.error(4);
        }
        int selection = this.getSelectionIndex();
        this.remove(index, false);
        if (this.isDisposed()) {
            return;
        }
        this.add(string, index);
        if (selection != -1) {
            this.select(selection);
        }
    }

    public void setItems(String[] items) {
        this.checkWidget();
        if (items == null) {
            this.error(4);
        }
        int i = 0;
        while (i < items.length) {
            if (items[i] == null) {
                this.error(5);
            }
            ++i;
        }
        RECT rect = null;
        int hDC = 0;
        int oldFont = 0;
        int newFont = 0;
        int newWidth = 0;
        if ((this.style & 0x100) != 0) {
            rect = new RECT();
            hDC = OS.GetDC(this.handle);
            newFont = OS.SendMessage(this.handle, 49, 0, 0);
            if (newFont != 0) {
                oldFont = OS.SelectObject(hDC, newFont);
            }
            this.setScrollWidth(0);
        }
        OS.SendMessage(this.handle, 331, 0, 0);
        int codePage = this.getCodePage();
        int i2 = 0;
        while (i2 < items.length) {
            String string = items[i2];
            TCHAR buffer = new TCHAR(codePage, string, true);
            int code = OS.SendMessage(this.handle, 323, 0, buffer);
            if (code == -1) {
                this.error(14);
            }
            if (code == -2) {
                this.error(14);
            }
            if ((this.style & 0x100) != 0) {
                int flags = 3104;
                OS.DrawText(hDC, buffer, -1, rect, flags);
                newWidth = Math.max(newWidth, rect.right - rect.left);
            }
            ++i2;
        }
        if ((this.style & 0x100) != 0) {
            if (newFont != 0) {
                OS.SelectObject(hDC, oldFont);
            }
            OS.ReleaseDC(this.handle, hDC);
            this.setScrollWidth(newWidth + 3);
        }
        this.sendEvent(24);
    }

    public void setOrientation(int orientation) {
        super.setOrientation(orientation);
    }

    void setScrollWidth() {
        int newWidth = 0;
        RECT rect = new RECT();
        int oldFont = 0;
        int hDC = OS.GetDC(this.handle);
        int newFont = OS.SendMessage(this.handle, 49, 0, 0);
        if (newFont != 0) {
            oldFont = OS.SelectObject(hDC, newFont);
        }
        int cp = this.getCodePage();
        int count = OS.SendMessage(this.handle, 326, 0, 0);
        int flags = 3104;
        int i = 0;
        while (i < count) {
            TCHAR buffer;
            int result;
            int length = OS.SendMessage(this.handle, 329, i, 0);
            if (length != -1 && (result = OS.SendMessage(this.handle, 328, i, buffer = new TCHAR(cp, length + 1))) != -1) {
                OS.DrawText(hDC, buffer, -1, rect, flags);
                newWidth = Math.max(newWidth, rect.right - rect.left);
            }
            ++i;
        }
        if (newFont != 0) {
            OS.SelectObject(hDC, oldFont);
        }
        OS.ReleaseDC(this.handle, hDC);
        this.setScrollWidth(newWidth + 3);
    }

    void setScrollWidth(int scrollWidth) {
        this.scrollWidth = scrollWidth;
        if ((this.style & 0x40) != 0) {
            OS.SendMessage(this.handle, 350, scrollWidth, 0);
            return;
        }
        boolean scroll = false;
        int count = OS.SendMessage(this.handle, 326, 0, 0);
        if (count > 3) {
            int maxWidth = 0;
            if (OS.IsWinCE || OS.WIN32_VERSION < OS.VERSION(4, 10)) {
                RECT rect = new RECT();
                OS.SystemParametersInfo(48, 0, rect, 0);
                maxWidth = (rect.right - rect.left) / 4;
            } else {
                int hmonitor = OS.MonitorFromWindow(this.handle, 2);
                MONITORINFO lpmi = new MONITORINFO();
                lpmi.cbSize = MONITORINFO.sizeof;
                OS.GetMonitorInfo(hmonitor, lpmi);
                maxWidth = (lpmi.rcWork_right - lpmi.rcWork_left) / 4;
            }
            scroll = scrollWidth > maxWidth;
        }
        boolean oldLockText = this.lockText;
        if ((this.style & 8) == 0) {
            this.lockText = true;
        }
        if (scroll) {
            OS.SendMessage(this.handle, 352, 0, 0);
            OS.SendMessage(this.handle, 350, scrollWidth, 0);
        } else {
            OS.SendMessage(this.handle, 352, scrollWidth += OS.GetSystemMetrics(3), 0);
            OS.SendMessage(this.handle, 350, 0, 0);
        }
        if ((this.style & 8) == 0) {
            this.lockText = oldLockText;
        }
    }

    void setScrollWidth(TCHAR buffer, boolean grow) {
        RECT rect = new RECT();
        int oldFont = 0;
        int hDC = OS.GetDC(this.handle);
        int newFont = OS.SendMessage(this.handle, 49, 0, 0);
        if (newFont != 0) {
            oldFont = OS.SelectObject(hDC, newFont);
        }
        int flags = 3104;
        OS.DrawText(hDC, buffer, -1, rect, flags);
        if (newFont != 0) {
            OS.SelectObject(hDC, oldFont);
        }
        OS.ReleaseDC(this.handle, hDC);
        this.setScrollWidth(rect.right - rect.left, grow);
    }

    void setScrollWidth(int newWidth, boolean grow) {
        if (grow) {
            if (newWidth <= this.scrollWidth) {
                return;
            }
            this.setScrollWidth(newWidth + 3);
        } else {
            if (newWidth < this.scrollWidth) {
                return;
            }
            this.setScrollWidth();
        }
    }

    public void setSelection(Point selection) {
        this.checkWidget();
        if (selection == null) {
            this.error(4);
        }
        int start = selection.x;
        int end = selection.y;
        if (!OS.IsUnicode && OS.IsDBLocale) {
            start = this.wcsToMbcsPos(start);
            end = this.wcsToMbcsPos(end);
        }
        int bits = OS.MAKELPARAM(start, end);
        OS.SendMessage(this.handle, 322, 0, bits);
    }

    public void setText(String string) {
        TCHAR buffer;
        this.checkWidget();
        if (string == null) {
            this.error(4);
        }
        if ((this.style & 8) != 0) {
            int index = this.indexOf(string);
            if (index != -1) {
                this.select(index);
            }
            return;
        }
        int limit = LIMIT;
        int hwndText = OS.GetDlgItem(this.handle, 1001);
        if (hwndText != 0) {
            limit = OS.SendMessage(hwndText, 213, 0, 0) & Integer.MAX_VALUE;
        }
        if (string.length() > limit) {
            string = string.substring(0, limit);
        }
        if (OS.SetWindowText(this.handle, buffer = new TCHAR(this.getCodePage(), string, true))) {
            this.sendEvent(24);
        }
    }

    public void setTextLimit(int limit) {
        this.checkWidget();
        if (limit == 0) {
            this.error(7);
        }
        OS.SendMessage(this.handle, 321, limit, 0);
    }

    void setToolTipText(Shell shell, String string) {
        int hwndText = OS.GetDlgItem(this.handle, 1001);
        int hwndList = OS.GetDlgItem(this.handle, 1000);
        if (hwndText != 0) {
            shell.setToolTipText(hwndText, string);
        }
        if (hwndList != 0) {
            shell.setToolTipText(hwndList, string);
        }
        shell.setToolTipText(this.handle, string);
    }

    public void setVisibleItemCount(int count) {
        this.checkWidget();
        if (count < 0) {
            return;
        }
        this.visibleCount = count;
        this.updateDropDownHeight();
    }

    void subclass() {
        int hwndList;
        super.subclass();
        int newProc = this.display.windowProc;
        int hwndText = OS.GetDlgItem(this.handle, 1001);
        if (hwndText != 0) {
            OS.SetWindowLongPtr(hwndText, -4, newProc);
        }
        if ((hwndList = OS.GetDlgItem(this.handle, 1000)) != 0) {
            OS.SetWindowLongPtr(hwndList, -4, newProc);
        }
    }

    boolean translateTraversal(MSG msg) {
        switch (msg.wParam) {
            case 13: 
            case 27: {
                if ((this.style & 4) == 0 || OS.SendMessage(this.handle, 343, 0, 0) == 0) break;
                return false;
            }
        }
        return super.translateTraversal(msg);
    }

    boolean traverseEscape() {
        if ((this.style & 4) != 0 && OS.SendMessage(this.handle, 343, 0, 0) != 0) {
            OS.SendMessage(this.handle, 335, 0, 0);
            return true;
        }
        return super.traverseEscape();
    }

    boolean traverseReturn() {
        if ((this.style & 4) != 0 && OS.SendMessage(this.handle, 343, 0, 0) != 0) {
            OS.SendMessage(this.handle, 335, 0, 0);
            return true;
        }
        return super.traverseReturn();
    }

    void unsubclass() {
        int hwndList;
        super.unsubclass();
        int hwndText = OS.GetDlgItem(this.handle, 1001);
        if (hwndText != 0 && EditProc != 0) {
            OS.SetWindowLongPtr(hwndText, -4, EditProc);
        }
        if ((hwndList = OS.GetDlgItem(this.handle, 1000)) != 0 && ListProc != 0) {
            OS.SetWindowLongPtr(hwndList, -4, ListProc);
        }
    }

    void updateDropDownHeight() {
        if ((this.style & 4) != 0) {
            RECT rect = new RECT();
            OS.SendMessage(this.handle, 338, 0, rect);
            int visibleCount = this.getItemCount() == 0 ? 5 : this.visibleCount;
            int height = this.getTextHeight() + this.getItemHeight() * visibleCount + 2;
            if (height != rect.bottom - rect.top) {
                this.forceResize();
                OS.GetWindowRect(this.handle, rect);
                int flags = 54;
                this.SetWindowPos(this.handle, 0, 0, 0, rect.right - rect.left, height, flags);
            }
        }
    }

    void updateOrientation() {
        int bits1;
        int bits = OS.GetWindowLong(this.handle, -20);
        bits = (this.style & 0x4000000) != 0 ? (bits |= 0x400000) : (bits &= 0xFFBFFFFF);
        OS.SetWindowLong(this.handle, -20, bits);
        int hwndText = 0;
        int hwndList = 0;
        COMBOBOXINFO pcbi = new COMBOBOXINFO();
        pcbi.cbSize = COMBOBOXINFO.sizeof;
        if (OS.GetComboBoxInfo(this.handle, pcbi)) {
            hwndText = pcbi.hwndItem;
            hwndList = pcbi.hwndList;
        }
        if (hwndText != 0) {
            bits1 = OS.GetWindowLong(hwndText, -20);
            int bits2 = OS.GetWindowLong(hwndText, -16);
            if ((this.style & 0x4000000) != 0) {
                bits1 |= 0x3000;
                bits2 |= 2;
            } else {
                bits1 &= 0xFFFFCFFF;
                bits2 &= 0xFFFFFFFD;
            }
            OS.SetWindowLong(hwndText, -20, bits1);
            OS.SetWindowLong(hwndText, -16, bits2);
            RECT rect = new RECT();
            OS.GetWindowRect(hwndText, rect);
            int width = rect.right - rect.left;
            int height = rect.bottom - rect.top;
            OS.GetWindowRect(this.handle, rect);
            int widthCombo = rect.right - rect.left;
            int heightCombo = rect.bottom - rect.top;
            int uFlags = 22;
            this.SetWindowPos(hwndText, 0, 0, 0, width - 1, height - 1, uFlags);
            this.SetWindowPos(this.handle, 0, 0, 0, widthCombo - 1, heightCombo - 1, uFlags);
            this.SetWindowPos(hwndText, 0, 0, 0, width, height, uFlags);
            this.SetWindowPos(this.handle, 0, 0, 0, widthCombo, heightCombo, uFlags);
            OS.InvalidateRect(this.handle, null, true);
        }
        if (hwndList != 0) {
            bits1 = OS.GetWindowLong(hwndList, -20);
            bits1 = (this.style & 0x4000000) != 0 ? (bits1 |= 0x400000) : (bits1 &= 0xFFBFFFFF);
            OS.SetWindowLong(hwndList, -20, bits1);
        }
    }

    String verifyText(String string, int start, int end, Event keyEvent) {
        Event event = new Event();
        event.text = string;
        event.start = start;
        event.end = end;
        if (keyEvent != null) {
            event.character = keyEvent.character;
            event.keyCode = keyEvent.keyCode;
            event.stateMask = keyEvent.stateMask;
        }
        if (!OS.IsUnicode && OS.IsDBLocale) {
            event.start = this.mbcsToWcsPos(start);
            event.end = this.mbcsToWcsPos(end);
        }
        this.sendEvent(25, event);
        if (!event.doit || this.isDisposed()) {
            return null;
        }
        return event.text;
    }

    int wcsToMbcsPos(int wcsPos) {
        if (wcsPos <= 0) {
            return 0;
        }
        if (OS.IsUnicode) {
            return wcsPos;
        }
        int hwndText = OS.GetDlgItem(this.handle, 1001);
        if (hwndText == 0) {
            return wcsPos;
        }
        int mbcsSize = OS.GetWindowTextLengthA(hwndText);
        if (mbcsSize == 0) {
            return 0;
        }
        byte[] buffer = new byte[mbcsSize + 1];
        OS.GetWindowTextA(hwndText, buffer, mbcsSize + 1);
        int mbcsPos = 0;
        int wcsCount = 0;
        while (mbcsPos < mbcsSize) {
            if (wcsPos == wcsCount) break;
            if (OS.IsDBCSLeadByte(buffer[mbcsPos++])) {
                ++mbcsPos;
            }
            ++wcsCount;
        }
        return mbcsPos;
    }

    int widgetExtStyle() {
        return super.widgetExtStyle() & 0xFFEFFFFF;
    }

    int widgetStyle() {
        int bits = super.widgetStyle() | 0x40 | 0x400 | 0x100000 | 0x200000;
        if ((this.style & 0x40) != 0) {
            return bits | 1;
        }
        if ((this.style & 8) != 0) {
            return bits | 3;
        }
        return bits | 2;
    }

    TCHAR windowClass() {
        return ComboClass;
    }

    int windowProc() {
        return ComboProc;
    }

    int windowProc(int hwnd, int msg, int wParam, int lParam) {
        if (this.handle == 0) {
            return 0;
        }
        if (hwnd != this.handle) {
            int hwndText = OS.GetDlgItem(this.handle, 1001);
            int hwndList = OS.GetDlgItem(this.handle, 1000);
            if (hwndText != 0 && hwnd == hwndText || hwndList != 0 && hwnd == hwndList) {
                LRESULT result = null;
                switch (msg) {
                    case 258: {
                        result = this.wmChar(hwnd, wParam, lParam);
                        break;
                    }
                    case 646: {
                        result = this.wmIMEChar(hwnd, wParam, lParam);
                        break;
                    }
                    case 256: {
                        result = this.wmKeyDown(hwnd, wParam, lParam);
                        break;
                    }
                    case 257: {
                        result = this.wmKeyUp(hwnd, wParam, lParam);
                        break;
                    }
                    case 262: {
                        result = this.wmSysChar(hwnd, wParam, lParam);
                        break;
                    }
                    case 260: {
                        result = this.wmSysKeyDown(hwnd, wParam, lParam);
                        break;
                    }
                    case 261: {
                        result = this.wmSysKeyUp(hwnd, wParam, lParam);
                        break;
                    }
                    case 533: {
                        result = this.wmCaptureChanged(hwnd, wParam, lParam);
                        break;
                    }
                    case 515: {
                        result = this.wmLButtonDblClk(hwnd, wParam, lParam);
                        break;
                    }
                    case 513: {
                        result = this.wmLButtonDown(hwnd, wParam, lParam);
                        break;
                    }
                    case 514: {
                        result = this.wmLButtonUp(hwnd, wParam, lParam);
                        break;
                    }
                    case 521: {
                        result = this.wmMButtonDblClk(hwnd, wParam, lParam);
                        break;
                    }
                    case 519: {
                        result = this.wmMButtonDown(hwnd, wParam, lParam);
                        break;
                    }
                    case 520: {
                        result = this.wmMButtonUp(hwnd, wParam, lParam);
                        break;
                    }
                    case 673: {
                        result = this.wmMouseHover(hwnd, wParam, lParam);
                        break;
                    }
                    case 675: {
                        result = this.wmMouseLeave(hwnd, wParam, lParam);
                        break;
                    }
                    case 512: {
                        result = this.wmMouseMove(hwnd, wParam, lParam);
                        break;
                    }
                    case 518: {
                        result = this.wmRButtonDblClk(hwnd, wParam, lParam);
                        break;
                    }
                    case 516: {
                        result = this.wmRButtonDown(hwnd, wParam, lParam);
                        break;
                    }
                    case 517: {
                        result = this.wmRButtonUp(hwnd, wParam, lParam);
                        break;
                    }
                    case 525: {
                        result = this.wmXButtonDblClk(hwnd, wParam, lParam);
                        break;
                    }
                    case 523: {
                        result = this.wmXButtonDown(hwnd, wParam, lParam);
                        break;
                    }
                    case 524: {
                        result = this.wmXButtonUp(hwnd, wParam, lParam);
                        break;
                    }
                    case 15: {
                        result = this.wmPaint(hwnd, wParam, lParam);
                        break;
                    }
                    case 123: {
                        result = this.wmContextMenu(hwnd, wParam, lParam);
                        break;
                    }
                    case 12: 
                    case 199: 
                    case 768: 
                    case 770: 
                    case 771: 
                    case 772: {
                        if (hwnd != hwndText) break;
                        result = this.wmClipboard(hwnd, msg, wParam, lParam);
                    }
                }
                if (result != null) {
                    return result.value;
                }
                return this.callWindowProc(hwnd, msg, wParam, lParam);
            }
        }
        if (msg == 334 && (this.style & 8) != 0 && (this.hooks(25) || this.filters(25))) {
            String oldText = this.getText();
            String newText = null;
            if (wParam == -1) {
                newText = "";
            } else if (wParam >= 0 && wParam < this.getItemCount()) {
                newText = this.getItem(wParam);
            }
            if (newText != null && !newText.equals(oldText)) {
                int index;
                int length = OS.GetWindowTextLength(this.handle);
                oldText = newText;
                if ((newText = this.verifyText(newText, 0, length, null)) == null) {
                    return 0;
                }
                if (!newText.equals(oldText) && (index = this.indexOf(newText)) != -1 && index != wParam) {
                    return this.callWindowProc(this.handle, 334, index, lParam);
                }
            }
        }
        return super.windowProc(hwnd, msg, wParam, lParam);
    }

    LRESULT WM_CTLCOLOR(int wParam, int lParam) {
        return this.wmColorChild(wParam, lParam);
    }

    LRESULT WM_GETDLGCODE(int wParam, int lParam) {
        int code = this.callWindowProc(this.handle, 135, wParam, lParam);
        return new LRESULT(code | 1);
    }

    LRESULT WM_KILLFOCUS(int wParam, int lParam) {
        if ((this.style & 8) != 0) {
            return super.WM_KILLFOCUS(wParam, lParam);
        }
        return null;
    }

    LRESULT WM_LBUTTONDOWN(int wParam, int lParam) {
        int newSelection;
        int oldSelection = OS.SendMessage(this.handle, 327, 0, 0);
        LRESULT result = super.WM_LBUTTONDOWN(wParam, lParam);
        if (result == LRESULT.ZERO) {
            return result;
        }
        if ((this.style & 8) == 0 && oldSelection != (newSelection = OS.SendMessage(this.handle, 327, 0, 0))) {
            this.sendEvent(24);
            if (this.isDisposed()) {
                return LRESULT.ZERO;
            }
            this.sendSelectionEvent(13, null, true);
            if (this.isDisposed()) {
                return LRESULT.ZERO;
            }
        }
        return result;
    }

    LRESULT WM_SETFOCUS(int wParam, int lParam) {
        return null;
    }

    LRESULT WM_SIZE(int wParam, int lParam) {
        if (this.ignoreResize) {
            return null;
        }
        if ((this.style & 0x40) != 0) {
            LRESULT result = super.WM_SIZE(wParam, lParam);
            if (OS.IsWindowVisible(this.handle)) {
                if (OS.IsWinCE) {
                    int hwndList;
                    int hwndText = OS.GetDlgItem(this.handle, 1001);
                    if (hwndText != 0) {
                        OS.InvalidateRect(hwndText, null, true);
                    }
                    if ((hwndList = OS.GetDlgItem(this.handle, 1000)) != 0) {
                        OS.InvalidateRect(hwndList, null, true);
                    }
                } else {
                    int uFlags = 133;
                    OS.RedrawWindow(this.handle, null, 0, uFlags);
                }
            }
            return result;
        }
        boolean oldLockText = this.lockText;
        if ((this.style & 8) == 0) {
            this.lockText = true;
        }
        LRESULT result = super.WM_SIZE(wParam, lParam);
        if ((this.style & 8) == 0) {
            this.lockText = oldLockText;
        }
        if ((this.style & 0x100) != 0) {
            this.setScrollWidth(this.scrollWidth);
        }
        return result;
    }

    LRESULT WM_WINDOWPOSCHANGING(int wParam, int lParam) {
        LRESULT result = super.WM_WINDOWPOSCHANGING(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (OS.IsWinCE) {
            return result;
        }
        if (!this.getDrawing()) {
            return result;
        }
        if (!OS.IsWindowVisible(this.handle)) {
            return result;
        }
        if (this.ignoreResize) {
            WINDOWPOS lpwp = new WINDOWPOS();
            OS.MoveMemory(lpwp, lParam, WINDOWPOS.sizeof);
            if ((lpwp.flags & 1) == 0) {
                lpwp.flags |= 8;
                OS.MoveMemory(lParam, lpwp, WINDOWPOS.sizeof);
                OS.InvalidateRect(this.handle, null, true);
                RECT rect = new RECT();
                OS.GetWindowRect(this.handle, rect);
                int width = rect.right - rect.left;
                int height = rect.bottom - rect.top;
                if (width != 0 && height != 0) {
                    int hwndParent = this.parent.handle;
                    int hwndChild = OS.GetWindow(hwndParent, 5);
                    OS.MapWindowPoints(0, hwndParent, rect, 2);
                    int rgn1 = OS.CreateRectRgn(rect.left, rect.top, rect.right, rect.bottom);
                    while (hwndChild != 0) {
                        if (hwndChild != this.handle) {
                            OS.GetWindowRect(hwndChild, rect);
                            OS.MapWindowPoints(0, hwndParent, rect, 2);
                            int rgn2 = OS.CreateRectRgn(rect.left, rect.top, rect.right, rect.bottom);
                            OS.CombineRgn(rgn1, rgn1, rgn2, 4);
                            OS.DeleteObject(rgn2);
                        }
                        hwndChild = OS.GetWindow(hwndChild, 2);
                    }
                    int flags = 1029;
                    OS.RedrawWindow(hwndParent, null, rgn1, flags);
                    OS.DeleteObject(rgn1);
                }
            }
        }
        return result;
    }

    LRESULT wmChar(int hwnd, int wParam, int lParam) {
        if (this.ignoreCharacter) {
            return null;
        }
        LRESULT result = super.wmChar(hwnd, wParam, lParam);
        if (result != null) {
            return result;
        }
        switch (wParam) {
            case 9: {
                return LRESULT.ZERO;
            }
            case 13: {
                if (!this.ignoreDefaultSelection) {
                    this.sendSelectionEvent(14);
                }
                this.ignoreDefaultSelection = false;
            }
            case 27: {
                if ((this.style & 4) == 0 || OS.SendMessage(this.handle, 343, 0, 0) != 0) break;
                return LRESULT.ZERO;
            }
        }
        return result;
    }

    LRESULT wmClipboard(int hwndText, int msg, int wParam, int lParam) {
        TCHAR buffer;
        if ((this.style & 8) != 0) {
            return null;
        }
        if (!this.hooks(25) && !this.filters(25)) {
            return null;
        }
        boolean call = false;
        int[] start = new int[1];
        int[] end = new int[1];
        String newText = null;
        switch (msg) {
            case 768: 
            case 771: {
                OS.SendMessage(hwndText, 176, start, end);
                if (start[0] == end[0]) break;
                newText = "";
                call = true;
                break;
            }
            case 770: {
                OS.SendMessage(hwndText, 176, start, end);
                newText = this.getClipboardText();
                break;
            }
            case 199: 
            case 772: {
                if (OS.SendMessage(hwndText, 198, 0, 0) == 0) break;
                this.ignoreModify = true;
                OS.CallWindowProc(EditProc, hwndText, msg, wParam, lParam);
                int length = OS.GetWindowTextLength(hwndText);
                int[] newStart = new int[1];
                int[] newEnd = new int[1];
                OS.SendMessage(hwndText, 176, newStart, newEnd);
                if (length != 0 && newStart[0] != newEnd[0]) {
                    TCHAR buffer2 = new TCHAR(this.getCodePage(), length + 1);
                    OS.GetWindowText(hwndText, buffer2, length + 1);
                    newText = buffer2.toString(newStart[0], newEnd[0] - newStart[0]);
                } else {
                    newText = "";
                }
                OS.CallWindowProc(EditProc, hwndText, msg, wParam, lParam);
                OS.SendMessage(hwndText, 176, start, end);
                this.ignoreModify = false;
                break;
            }
            case 12: {
                if (this.lockText) {
                    return null;
                }
                end[0] = OS.GetWindowTextLength(hwndText);
                int length = OS.IsUnicode ? OS.wcslen(lParam) : OS.strlen(lParam);
                buffer = new TCHAR(this.getCodePage(), length);
                int byteCount = buffer.length() * TCHAR.sizeof;
                OS.MoveMemory(buffer, lParam, byteCount);
                newText = buffer.toString(0, length);
            }
        }
        if (newText != null) {
            String oldText = newText;
            if ((newText = this.verifyText(newText, start[0], end[0], null)) == null) {
                return LRESULT.ZERO;
            }
            if (!newText.equals(oldText)) {
                if (call) {
                    OS.CallWindowProc(EditProc, hwndText, msg, wParam, lParam);
                }
                buffer = new TCHAR(this.getCodePage(), newText, true);
                if (msg == 12) {
                    int hHeap = OS.GetProcessHeap();
                    int byteCount = buffer.length() * TCHAR.sizeof;
                    int pszText = OS.HeapAlloc(hHeap, 8, byteCount);
                    OS.MoveMemory(pszText, buffer, byteCount);
                    int code = OS.CallWindowProc(EditProc, hwndText, msg, wParam, pszText);
                    OS.HeapFree(hHeap, 0, pszText);
                    return new LRESULT(code);
                }
                OS.SendMessage(hwndText, 194, 0, buffer);
                return LRESULT.ZERO;
            }
        }
        return null;
    }

    LRESULT wmCommandChild(int wParam, int lParam) {
        int code = OS.HIWORD(wParam);
        switch (code) {
            case 5: {
                if (this.ignoreModify) break;
                this.noSelection = true;
                this.sendEvent(24);
                if (this.isDisposed()) {
                    return LRESULT.ZERO;
                }
                this.noSelection = false;
                break;
            }
            case 1: {
                int index = OS.SendMessage(this.handle, 327, 0, 0);
                if (index != -1) {
                    OS.SendMessage(this.handle, 334, index, 0);
                }
                this.sendEvent(24);
                if (this.isDisposed()) {
                    return LRESULT.ZERO;
                }
                this.sendSelectionEvent(13);
                break;
            }
            case 3: {
                this.sendFocusEvent(15);
                if (!this.isDisposed()) break;
                return LRESULT.ZERO;
            }
            case 7: {
                this.setCursor();
                this.updateDropDownHeight();
                break;
            }
            case 4: {
                if ((this.style & 8) != 0) break;
                this.sendFocusEvent(16);
                if (!this.isDisposed()) break;
                return LRESULT.ZERO;
            }
            case 1792: 
            case 1793: {
                Event event = new Event();
                event.doit = true;
                this.sendEvent(44, event);
                if (event.doit) break;
                int hwnd = lParam;
                int bits1 = OS.GetWindowLong(hwnd, -20);
                int bits2 = OS.GetWindowLong(hwnd, -16);
                if (code == 1792) {
                    bits1 |= 0x3000;
                    bits2 |= 2;
                } else {
                    bits1 &= 0xFFFFCFFF;
                    bits2 &= 0xFFFFFFFD;
                }
                OS.SetWindowLong(hwnd, -20, bits1);
                OS.SetWindowLong(hwnd, -16, bits2);
            }
        }
        return super.wmCommandChild(wParam, lParam);
    }

    LRESULT wmIMEChar(int hwnd, int wParam, int lParam) {
        Display display = this.display;
        display.lastKey = 0;
        display.lastAscii = wParam;
        display.lastDead = false;
        display.lastNull = false;
        display.lastVirtual = false;
        if (!this.sendKeyEvent(1, 646, wParam, lParam)) {
            return LRESULT.ZERO;
        }
        this.ignoreCharacter = true;
        int result = this.callWindowProc(hwnd, 646, wParam, lParam);
        MSG msg = new MSG();
        int flags = 10420227;
        while (OS.PeekMessage(msg, hwnd, 258, 258, flags)) {
            OS.TranslateMessage(msg);
            OS.DispatchMessage(msg);
        }
        this.ignoreCharacter = false;
        this.sendKeyEvent(2, 646, wParam, lParam);
        display.lastAscii = 0;
        display.lastKey = 0;
        return new LRESULT(result);
    }

    LRESULT wmKeyDown(int hwnd, int wParam, int lParam) {
        if (this.ignoreCharacter) {
            return null;
        }
        LRESULT result = super.wmKeyDown(hwnd, wParam, lParam);
        if (result != null) {
            return result;
        }
        this.ignoreDefaultSelection = false;
        if (wParam == 13 && (this.style & 4) != 0 && OS.SendMessage(this.handle, 343, 0, 0) != 0) {
            this.ignoreDefaultSelection = true;
        }
        return result;
    }

    LRESULT wmSysKeyDown(int hwnd, int wParam, int lParam) {
        int oldSelection = OS.SendMessage(this.handle, 327, 0, 0);
        LRESULT result = super.wmSysKeyDown(hwnd, wParam, lParam);
        if (result != null) {
            return result;
        }
        if ((this.style & 8) == 0 && wParam == 40) {
            int code = this.callWindowProc(hwnd, 260, wParam, lParam);
            int newSelection = OS.SendMessage(this.handle, 327, 0, 0);
            if (oldSelection != newSelection) {
                this.sendEvent(24);
                if (this.isDisposed()) {
                    return LRESULT.ZERO;
                }
                this.sendSelectionEvent(13, null, true);
                if (this.isDisposed()) {
                    return LRESULT.ZERO;
                }
            }
            return new LRESULT(code);
        }
        return result;
    }
}

