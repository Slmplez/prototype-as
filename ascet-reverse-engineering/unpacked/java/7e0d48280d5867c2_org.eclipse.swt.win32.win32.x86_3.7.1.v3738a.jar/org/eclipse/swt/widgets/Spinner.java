/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.VerifyListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.LRESULT;
import org.eclipse.swt.internal.win32.MSG;
import org.eclipse.swt.internal.win32.NMHDR;
import org.eclipse.swt.internal.win32.NMUPDOWN;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.internal.win32.TEXTMETRIC;
import org.eclipse.swt.internal.win32.TEXTMETRICA;
import org.eclipse.swt.internal.win32.TEXTMETRICW;
import org.eclipse.swt.internal.win32.UDACCEL;
import org.eclipse.swt.internal.win32.WNDCLASS;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.TypedListener;

public class Spinner
extends Composite {
    int hwndText;
    int hwndUpDown;
    boolean ignoreModify;
    boolean ignoreCharacter;
    int pageIncrement;
    int digits;
    static final int EditProc;
    static final TCHAR EditClass;
    static final int UpDownProc;
    static final TCHAR UpDownClass;
    public static final int LIMIT;

    static {
        EditClass = new TCHAR(0, "EDIT", true);
        UpDownClass = new TCHAR(0, "msctls_updown32", true);
        WNDCLASS lpWndClass = new WNDCLASS();
        OS.GetClassInfo(0, EditClass, lpWndClass);
        EditProc = lpWndClass.lpfnWndProc;
        OS.GetClassInfo(0, UpDownClass, lpWndClass);
        UpDownProc = lpWndClass.lpfnWndProc;
        LIMIT = OS.IsWinNT ? Integer.MAX_VALUE : Short.MAX_VALUE;
    }

    public Spinner(Composite parent, int style) {
        super(parent, Spinner.checkStyle(style));
    }

    int callWindowProc(int hwnd, int msg, int wParam, int lParam) {
        if (this.handle == 0) {
            return 0;
        }
        if (hwnd == this.hwndText) {
            return OS.CallWindowProc(EditProc, hwnd, msg, wParam, lParam);
        }
        if (hwnd == this.hwndUpDown) {
            return OS.CallWindowProc(UpDownProc, hwnd, msg, wParam, lParam);
        }
        return OS.DefWindowProc(this.handle, msg, wParam, lParam);
    }

    static int checkStyle(int style) {
        return style & 0xFFFFFCFF;
    }

    boolean checkHandle(int hwnd) {
        return hwnd == this.handle || hwnd == this.hwndText || hwnd == this.hwndUpDown;
    }

    protected void checkSubclass() {
        if (!this.isValidSubclass()) {
            this.error(43);
        }
    }

    void createHandle() {
        super.createHandle();
        this.state &= 0xFFFFFEFD;
        int hInstance = OS.GetModuleHandle(null);
        int textExStyle = (this.style & 0x800) != 0 ? 512 : 0;
        int textStyle = 1409286272;
        if ((this.style & 8) != 0) {
            textStyle |= 0x800;
        }
        if (OS.WIN32_VERSION >= OS.VERSION(4, 10) && (this.style & 0x4000000) != 0) {
            textExStyle |= 0x400000;
        }
        this.hwndText = OS.CreateWindowEx(textExStyle, EditClass, null, textStyle, 0, 0, 0, 0, this.handle, 0, hInstance, null);
        if (this.hwndText == 0) {
            this.error(2);
        }
        OS.SetWindowLongPtr(this.hwndText, -12, this.hwndText);
        int upDownStyle = 0x50000010;
        if ((this.style & 0x40) != 0) {
            upDownStyle |= 1;
        }
        if ((this.style & 0x800) != 0) {
            upDownStyle = (this.style & 0x4000000) != 0 ? (upDownStyle |= 8) : (upDownStyle |= 4);
        }
        this.hwndUpDown = OS.CreateWindowEx(0, UpDownClass, null, upDownStyle, 0, 0, 0, 0, this.handle, 0, hInstance, null);
        if (this.hwndUpDown == 0) {
            this.error(2);
        }
        int flags = 19;
        this.SetWindowPos(this.hwndText, this.hwndUpDown, 0, 0, 0, 0, flags);
        OS.SetWindowLongPtr(this.hwndUpDown, -12, this.hwndUpDown);
        if (OS.IsDBLocale) {
            int hIMC = OS.ImmGetContext(this.handle);
            OS.ImmAssociateContext(this.hwndText, hIMC);
            OS.ImmAssociateContext(this.hwndUpDown, hIMC);
            OS.ImmReleaseContext(this.handle, hIMC);
        }
        OS.SendMessage(this.hwndUpDown, 1135, 0, 100);
        OS.SendMessage(this.hwndUpDown, OS.IsWinCE ? 1127 : 1137, 0, 0);
        this.pageIncrement = 10;
        this.digits = 0;
        TCHAR buffer = new TCHAR(this.getCodePage(), "0", true);
        OS.SetWindowText(this.hwndText, buffer);
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

    void addVerifyListener(VerifyListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(25, typedListener);
    }

    int borderHandle() {
        return this.hwndText;
    }

    public Point computeSize(int wHint, int hHint, boolean changed) {
        this.checkWidget();
        int width = 0;
        int height = 0;
        if (wHint == -1 || hHint == -1) {
            Object buffer;
            int oldFont = 0;
            int hDC = OS.GetDC(this.hwndText);
            int newFont = OS.SendMessage(this.hwndText, 49, 0, 0);
            if (newFont != 0) {
                oldFont = OS.SelectObject(hDC, newFont);
            }
            TEXTMETRIC tm = OS.IsUnicode ? new TEXTMETRICW() : new TEXTMETRICA();
            OS.GetTextMetrics(hDC, tm);
            height = tm.tmHeight;
            RECT rect = new RECT();
            int[] max = new int[1];
            OS.SendMessage(this.hwndUpDown, 1136, null, max);
            String string = String.valueOf(max[0]);
            if (this.digits > 0) {
                buffer = new StringBuffer();
                ((StringBuffer)buffer).append(string);
                ((StringBuffer)buffer).append(this.getDecimalSeparator());
                int count = this.digits - string.length();
                while (count >= 0) {
                    ((StringBuffer)buffer).append("0");
                    --count;
                }
                string = ((StringBuffer)buffer).toString();
            }
            buffer = new TCHAR(this.getCodePage(), string, false);
            int flags = 11264;
            OS.DrawText(hDC, (TCHAR)buffer, ((TCHAR)buffer).length(), rect, flags);
            width = rect.right - rect.left;
            if (newFont != 0) {
                OS.SelectObject(hDC, oldFont);
            }
            OS.ReleaseDC(this.hwndText, hDC);
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
        Rectangle trim = this.computeTrim(0, 0, width, height);
        if (hHint == -1) {
            int upDownHeight = OS.GetSystemMetrics(20) + 2 * this.getBorderWidth();
            if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
                upDownHeight += (this.style & 0x800) != 0 ? 1 : 3;
            }
            trim.height = Math.max(trim.height, upDownHeight);
        }
        return new Point(trim.width, trim.height);
    }

    public Rectangle computeTrim(int x, int y, int width, int height) {
        this.checkWidget();
        RECT rect = new RECT();
        OS.SetRect(rect, x, y, x + width, y + height);
        int bits0 = OS.GetWindowLong(this.hwndText, -16);
        int bits1 = OS.GetWindowLong(this.hwndText, -20);
        OS.AdjustWindowRectEx(rect, bits0, false, bits1);
        width = rect.right - rect.left;
        height = rect.bottom - rect.top;
        int margins = OS.SendMessage(this.hwndText, 212, 0, 0);
        x -= OS.LOWORD(margins);
        width += OS.LOWORD(margins) + OS.HIWORD(margins);
        if ((this.style & 0x800) != 0) {
            --x;
            --y;
            width += 2;
            height += 2;
        }
        return new Rectangle(x, y, width += OS.GetSystemMetrics(2), height);
    }

    public void copy() {
        this.checkWidget();
        OS.SendMessage(this.hwndText, 769, 0, 0);
    }

    public void cut() {
        this.checkWidget();
        if ((this.style & 8) != 0) {
            return;
        }
        OS.SendMessage(this.hwndText, 768, 0, 0);
    }

    int defaultBackground() {
        return OS.GetSysColor(OS.COLOR_WINDOW);
    }

    void enableWidget(boolean enabled) {
        super.enableWidget(enabled);
        OS.EnableWindow(this.hwndText, enabled);
        OS.EnableWindow(this.hwndUpDown, enabled);
    }

    void deregister() {
        super.deregister();
        this.display.removeControl(this.hwndText);
        this.display.removeControl(this.hwndUpDown);
    }

    boolean hasFocus() {
        int hwndFocus = OS.GetFocus();
        if (hwndFocus == this.handle) {
            return true;
        }
        if (hwndFocus == this.hwndText) {
            return true;
        }
        return hwndFocus == this.hwndUpDown;
    }

    public int getDigits() {
        this.checkWidget();
        return this.digits;
    }

    String getDecimalSeparator() {
        TCHAR tchar = new TCHAR(this.getCodePage(), 4);
        int size = OS.GetLocaleInfo(1024, 14, tchar, 4);
        return size != 0 ? tchar.toString(0, size - 1) : ".";
    }

    public int getIncrement() {
        this.checkWidget();
        UDACCEL udaccel = new UDACCEL();
        OS.SendMessage(this.hwndUpDown, 1132, 1, udaccel);
        return udaccel.nInc;
    }

    public int getMaximum() {
        this.checkWidget();
        int[] max = new int[1];
        OS.SendMessage(this.hwndUpDown, 1136, null, max);
        return max[0];
    }

    public int getMinimum() {
        this.checkWidget();
        int[] min = new int[1];
        OS.SendMessage(this.hwndUpDown, 1136, min, null);
        return min[0];
    }

    public int getPageIncrement() {
        this.checkWidget();
        return this.pageIncrement;
    }

    public int getSelection() {
        this.checkWidget();
        if (OS.IsWinCE) {
            return OS.LOWORD(OS.SendMessage(this.hwndUpDown, 1128, 0, 0));
        }
        return OS.SendMessage(this.hwndUpDown, 1138, 0, 0);
    }

    int getSelectionText(boolean[] parseFail) {
        int length = OS.GetWindowTextLength(this.hwndText);
        TCHAR buffer = new TCHAR(this.getCodePage(), length + 1);
        OS.GetWindowText(this.hwndText, buffer, length + 1);
        String string = buffer.toString(0, length);
        try {
            int value;
            if (this.digits > 0) {
                String decimalSeparator = this.getDecimalSeparator();
                int index = string.indexOf(decimalSeparator);
                if (index != -1) {
                    int startIndex = string.startsWith("+") || string.startsWith("-") ? 1 : 0;
                    String wholePart = startIndex != index ? string.substring(startIndex, index) : "0";
                    String decimalPart = string.substring(index + 1);
                    if (decimalPart.length() > this.digits) {
                        decimalPart = decimalPart.substring(0, this.digits);
                    } else {
                        int i = this.digits - decimalPart.length();
                        int j = 0;
                        while (j < i) {
                            decimalPart = String.valueOf(decimalPart) + "0";
                            ++j;
                        }
                    }
                    int wholeValue = Integer.parseInt(wholePart);
                    int decimalValue = Integer.parseInt(decimalPart);
                    int i = 0;
                    while (i < this.digits) {
                        wholeValue *= 10;
                        ++i;
                    }
                    value = wholeValue + decimalValue;
                    if (string.startsWith("-")) {
                        value = -value;
                    }
                } else {
                    value = Integer.parseInt(string);
                    int i = 0;
                    while (i < this.digits) {
                        value *= 10;
                        ++i;
                    }
                }
            } else {
                value = Integer.parseInt(string);
            }
            int[] max = new int[1];
            int[] min = new int[1];
            OS.SendMessage(this.hwndUpDown, 1136, min, max);
            if (min[0] <= value && value <= max[0]) {
                return value;
            }
        }
        catch (NumberFormatException numberFormatException) {}
        parseFail[0] = true;
        return -1;
    }

    public String getText() {
        this.checkWidget();
        int length = OS.GetWindowTextLength(this.hwndText);
        if (length == 0) {
            return "";
        }
        TCHAR buffer = new TCHAR(this.getCodePage(), length + 1);
        OS.GetWindowText(this.hwndText, buffer, length + 1);
        return buffer.toString(0, length);
    }

    public int getTextLimit() {
        this.checkWidget();
        return OS.SendMessage(this.hwndText, 213, 0, 0) & Integer.MAX_VALUE;
    }

    int mbcsToWcsPos(int mbcsPos) {
        if (mbcsPos <= 0) {
            return 0;
        }
        if (OS.IsUnicode) {
            return mbcsPos;
        }
        int mbcsSize = OS.GetWindowTextLengthA(this.hwndText);
        if (mbcsSize == 0) {
            return 0;
        }
        if (mbcsPos >= mbcsSize) {
            return mbcsSize;
        }
        byte[] buffer = new byte[mbcsSize + 1];
        OS.GetWindowTextA(this.hwndText, buffer, mbcsSize + 1);
        return OS.MultiByteToWideChar(this.getCodePage(), 1, buffer, mbcsPos, null, 0);
    }

    public void paste() {
        this.checkWidget();
        if ((this.style & 8) != 0) {
            return;
        }
        OS.SendMessage(this.hwndText, 770, 0, 0);
    }

    void register() {
        super.register();
        this.display.addControl(this.hwndText, this);
        this.display.addControl(this.hwndUpDown, this);
    }

    void releaseHandle() {
        super.releaseHandle();
        this.hwndUpDown = 0;
        this.hwndText = 0;
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

    void removeVerifyListener(VerifyListener listener) {
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
        if (OS.GetKeyState(1) < 0) {
            return true;
        }
        String oldText = "";
        int[] start = new int[1];
        int[] end = new int[1];
        OS.SendMessage(this.hwndText, 176, start, end);
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
                    OS.SendMessage(this.hwndText, 177, start[0], end[0]);
                    OS.SendMessage(this.hwndText, 176, newStart, newEnd);
                    if (start[0] != newStart[0]) {
                        start[0] = start[0] - 1;
                    }
                }
                start[0] = Math.max(start[0], 0);
                break;
            }
            case '\u007f': {
                if (start[0] != end[0]) break;
                int length = OS.GetWindowTextLength(this.hwndText);
                if (start[0] == length) {
                    return true;
                }
                end[0] = end[0] + 1;
                if (!OS.IsUnicode && OS.IsDBLocale) {
                    int[] newStart = new int[1];
                    int[] newEnd = new int[1];
                    OS.SendMessage(this.hwndText, 177, start[0], end[0]);
                    OS.SendMessage(this.hwndText, 176, newStart, newEnd);
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
        OS.SendMessage(this.hwndText, 177, start[0], end[0]);
        OS.SendMessage(this.hwndText, 194, 0, buffer);
        return false;
    }

    void setBackgroundImage(int hBitmap) {
        super.setBackgroundImage(hBitmap);
        OS.InvalidateRect(this.hwndText, null, true);
    }

    void setBackgroundPixel(int pixel) {
        super.setBackgroundPixel(pixel);
        OS.InvalidateRect(this.hwndText, null, true);
    }

    public void setDigits(int value) {
        this.checkWidget();
        if (value < 0) {
            this.error(5);
        }
        if (value == this.digits) {
            return;
        }
        this.digits = value;
        int pos = OS.IsWinCE ? OS.LOWORD(OS.SendMessage(this.hwndUpDown, 1128, 0, 0)) : OS.SendMessage(this.hwndUpDown, 1138, 0, 0);
        this.setSelection(pos, false, true, false);
    }

    void setForegroundPixel(int pixel) {
        super.setForegroundPixel(pixel);
        OS.InvalidateRect(this.hwndText, null, true);
    }

    public void setIncrement(int value) {
        this.checkWidget();
        if (value < 1) {
            return;
        }
        int hHeap = OS.GetProcessHeap();
        int count = OS.SendMessage(this.hwndUpDown, 1132, 0, null);
        int udaccels = OS.HeapAlloc(hHeap, 8, UDACCEL.sizeof * count);
        OS.SendMessage(this.hwndUpDown, 1132, count, udaccels);
        int first = -1;
        UDACCEL udaccel = new UDACCEL();
        int i = 0;
        while (i < count) {
            int offset = udaccels + i * UDACCEL.sizeof;
            OS.MoveMemory(udaccel, offset, UDACCEL.sizeof);
            if (first == -1) {
                first = udaccel.nInc;
            }
            udaccel.nInc = udaccel.nInc / first * value;
            OS.MoveMemory(offset, udaccel, UDACCEL.sizeof);
            ++i;
        }
        OS.SendMessage(this.hwndUpDown, 1131, count, udaccels);
        OS.HeapFree(hHeap, 0, udaccels);
    }

    public void setMaximum(int value) {
        this.checkWidget();
        int[] min = new int[1];
        OS.SendMessage(this.hwndUpDown, 1136, min, null);
        if (value < min[0]) {
            return;
        }
        int pos = OS.IsWinCE ? OS.LOWORD(OS.SendMessage(this.hwndUpDown, 1128, 0, 0)) : OS.SendMessage(this.hwndUpDown, 1138, 0, 0);
        OS.SendMessage(this.hwndUpDown, 1135, min[0], value);
        if (pos > value) {
            this.setSelection(value, true, true, false);
        }
    }

    public void setMinimum(int value) {
        this.checkWidget();
        int[] max = new int[1];
        OS.SendMessage(this.hwndUpDown, 1136, null, max);
        if (value > max[0]) {
            return;
        }
        int pos = OS.IsWinCE ? OS.LOWORD(OS.SendMessage(this.hwndUpDown, 1128, 0, 0)) : OS.SendMessage(this.hwndUpDown, 1138, 0, 0);
        OS.SendMessage(this.hwndUpDown, 1135, value, max[0]);
        if (pos < value) {
            this.setSelection(value, true, true, false);
        }
    }

    public void setPageIncrement(int value) {
        this.checkWidget();
        if (value < 1) {
            return;
        }
        this.pageIncrement = value;
    }

    public void setSelection(int value) {
        this.checkWidget();
        int[] max = new int[1];
        int[] min = new int[1];
        OS.SendMessage(this.hwndUpDown, 1136, min, max);
        value = Math.min(Math.max(min[0], value), max[0]);
        this.setSelection(value, true, true, false);
    }

    void setSelection(int value, boolean setPos, boolean setText, boolean notify) {
        if (setPos) {
            OS.SendMessage(this.hwndUpDown, OS.IsWinCE ? 1127 : 1137, 0, value);
        }
        if (setText) {
            int length;
            String string;
            if (this.digits == 0) {
                string = String.valueOf(value);
            } else {
                string = String.valueOf(Math.abs(value));
                String decimalSeparator = this.getDecimalSeparator();
                int index = string.length() - this.digits;
                StringBuffer buffer = new StringBuffer();
                if (value < 0) {
                    buffer.append("-");
                }
                if (index > 0) {
                    buffer.append(string.substring(0, index));
                    buffer.append(decimalSeparator);
                    buffer.append(string.substring(index));
                } else {
                    buffer.append("0");
                    buffer.append(decimalSeparator);
                    while (index++ < 0) {
                        buffer.append("0");
                    }
                    buffer.append(string);
                }
                string = buffer.toString();
            }
            if ((this.hooks(25) || this.filters(25)) && (string = this.verifyText(string, 0, length = OS.GetWindowTextLength(this.hwndText), null)) == null) {
                return;
            }
            TCHAR buffer = new TCHAR(this.getCodePage(), string, true);
            OS.SetWindowText(this.hwndText, buffer);
            OS.SendMessage(this.hwndText, 177, 0, -1);
            if (!OS.IsWinCE) {
                OS.NotifyWinEvent(32773, this.hwndText, -4, 0);
            }
        }
        if (notify) {
            this.sendSelectionEvent(13);
        }
    }

    public void setTextLimit(int limit) {
        this.checkWidget();
        if (limit == 0) {
            this.error(7);
        }
        OS.SendMessage(this.hwndText, 197, limit, 0);
    }

    void setToolTipText(Shell shell, String string) {
        shell.setToolTipText(this.hwndText, string);
        shell.setToolTipText(this.hwndUpDown, string);
    }

    public void setValues(int selection, int minimum, int maximum, int digits, int increment, int pageIncrement) {
        this.checkWidget();
        if (maximum < minimum) {
            return;
        }
        if (digits < 0) {
            return;
        }
        if (increment < 1) {
            return;
        }
        if (pageIncrement < 1) {
            return;
        }
        selection = Math.min(Math.max(minimum, selection), maximum);
        this.setIncrement(increment);
        this.pageIncrement = pageIncrement;
        this.digits = digits;
        OS.SendMessage(this.hwndUpDown, 1135, minimum, maximum);
        this.setSelection(selection, true, true, false);
    }

    void subclass() {
        super.subclass();
        int newProc = this.display.windowProc;
        OS.SetWindowLongPtr(this.hwndText, -4, newProc);
        OS.SetWindowLongPtr(this.hwndUpDown, -4, newProc);
    }

    void unsubclass() {
        super.unsubclass();
        OS.SetWindowLongPtr(this.hwndText, -4, EditProc);
        OS.SetWindowLongPtr(this.hwndUpDown, -4, UpDownProc);
    }

    void updateOrientation() {
        super.updateOrientation();
        int bits = OS.GetWindowLong(this.hwndText, -20);
        int bits1 = OS.GetWindowLong(this.hwndText, -16);
        if ((this.style & 0x4000000) != 0) {
            bits |= 0x1000;
            bits1 |= 2;
        } else {
            bits &= 0xFFFFEFFF;
            bits1 &= 0xFFFFFFFD;
        }
        OS.SetWindowLong(this.hwndText, -16, bits1);
        OS.SetWindowLong(this.hwndText, -20, bits);
        RECT rect = new RECT();
        OS.GetWindowRect(this.handle, rect);
        int width = rect.right - rect.left;
        int height = rect.bottom - rect.top;
        OS.SetWindowPos(this.handle, 0, 0, 0, width - 1, height - 1, 6);
        OS.SetWindowPos(this.handle, 0, 0, 0, width, height, 6);
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
        int index = 0;
        if (this.digits > 0) {
            String decimalSeparator = this.getDecimalSeparator();
            index = string.indexOf(decimalSeparator);
            if (index != -1) {
                string = String.valueOf(string.substring(0, index)) + string.substring(index + 1);
            }
            index = 0;
        }
        if (string.length() > 0) {
            int[] min = new int[1];
            OS.SendMessage(this.hwndUpDown, 1136, min, null);
            if (min[0] < 0 && string.charAt(0) == '-') {
                ++index;
            }
        }
        while (index < string.length()) {
            if (!Character.isDigit(string.charAt(index))) break;
            ++index;
        }
        boolean bl = event.doit = index == string.length();
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

    int widgetExtStyle() {
        return super.widgetExtStyle() & 0xFFFFFDFF;
    }

    int windowProc(int hwnd, int msg, int wParam, int lParam) {
        if (hwnd == this.hwndText || hwnd == this.hwndUpDown) {
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
                case 7: {
                    result = this.wmSetFocus(hwnd, wParam, lParam);
                    break;
                }
                case 8: {
                    result = this.wmKillFocus(hwnd, wParam, lParam);
                    break;
                }
                case 15: {
                    result = this.wmPaint(hwnd, wParam, lParam);
                    break;
                }
                case 791: {
                    result = this.wmPrint(hwnd, wParam, lParam);
                    break;
                }
                case 123: {
                    result = this.wmContextMenu(hwnd, wParam, lParam);
                    break;
                }
                case 199: 
                case 768: 
                case 770: 
                case 771: 
                case 772: {
                    if (hwnd != this.hwndText) break;
                    result = this.wmClipboard(hwnd, msg, wParam, lParam);
                }
            }
            if (result != null) {
                return result.value;
            }
            return this.callWindowProc(hwnd, msg, wParam, lParam);
        }
        return super.windowProc(hwnd, msg, wParam, lParam);
    }

    LRESULT WM_ERASEBKGND(int wParam, int lParam) {
        super.WM_ERASEBKGND(wParam, lParam);
        this.drawBackground(wParam);
        return LRESULT.ONE;
    }

    LRESULT WM_KILLFOCUS(int wParam, int lParam) {
        return null;
    }

    LRESULT WM_SETFOCUS(int wParam, int lParam) {
        OS.SetFocus(this.hwndText);
        OS.SendMessage(this.hwndText, 177, 0, -1);
        return null;
    }

    LRESULT WM_SETFONT(int wParam, int lParam) {
        LRESULT result = super.WM_SETFONT(wParam, lParam);
        if (result != null) {
            return result;
        }
        OS.SendMessage(this.hwndText, 48, wParam, lParam);
        return result;
    }

    LRESULT WM_SIZE(int wParam, int lParam) {
        LRESULT result = super.WM_SIZE(wParam, lParam);
        if (this.isDisposed()) {
            return result;
        }
        int width = OS.LOWORD(lParam);
        int height = OS.HIWORD(lParam);
        int upDownWidth = OS.GetSystemMetrics(2);
        int textWidth = width - upDownWidth;
        int border = OS.GetSystemMetrics(45);
        int flags = 52;
        this.SetWindowPos(this.hwndText, 0, 0, 0, textWidth + border, height, flags);
        this.SetWindowPos(this.hwndUpDown, 0, textWidth, 0, upDownWidth, height, flags);
        return result;
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

    LRESULT wmChar(int hwnd, int wParam, int lParam) {
        if (this.ignoreCharacter) {
            return null;
        }
        LRESULT result = super.wmChar(hwnd, wParam, lParam);
        if (result != null) {
            return result;
        }
        switch (wParam) {
            case 13: {
                this.sendSelectionEvent(14);
            }
            case 9: 
            case 27: {
                return LRESULT.ZERO;
            }
        }
        return result;
    }

    LRESULT wmClipboard(int hwndText, int msg, int wParam, int lParam) {
        if ((this.style & 8) != 0) {
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
                    TCHAR buffer = new TCHAR(this.getCodePage(), length + 1);
                    OS.GetWindowText(hwndText, buffer, length + 1);
                    newText = buffer.toString(newStart[0], newEnd[0] - newStart[0]);
                } else {
                    newText = "";
                }
                OS.CallWindowProc(EditProc, hwndText, msg, wParam, lParam);
                OS.SendMessage(hwndText, 176, start, end);
                this.ignoreModify = false;
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
                TCHAR buffer = new TCHAR(this.getCodePage(), newText, true);
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
            case 768: {
                int pos;
                if (this.ignoreModify) break;
                boolean[] parseFail = new boolean[1];
                int value = this.getSelectionText(parseFail);
                if (!parseFail[0] && (pos = OS.IsWinCE ? OS.LOWORD(OS.SendMessage(this.hwndUpDown, 1128, 0, 0)) : OS.SendMessage(this.hwndUpDown, 1138, 0, 0)) != value) {
                    this.setSelection(value, true, false, true);
                }
                this.sendEvent(24);
                if (!this.isDisposed()) break;
                return LRESULT.ZERO;
            }
        }
        return super.wmCommandChild(wParam, lParam);
    }

    LRESULT wmKeyDown(int hwnd, int wParam, int lParam) {
        if (this.ignoreCharacter) {
            return null;
        }
        LRESULT result = super.wmKeyDown(hwnd, wParam, lParam);
        if (result != null) {
            return result;
        }
        UDACCEL udaccel = new UDACCEL();
        OS.SendMessage(this.hwndUpDown, 1132, 1, udaccel);
        int delta = 0;
        switch (wParam) {
            case 38: {
                delta = udaccel.nInc;
                break;
            }
            case 40: {
                delta = -udaccel.nInc;
                break;
            }
            case 33: {
                delta = this.pageIncrement;
                break;
            }
            case 34: {
                delta = -this.pageIncrement;
            }
        }
        if (delta != 0) {
            boolean[] parseFail = new boolean[1];
            int value = this.getSelectionText(parseFail);
            if (parseFail[0]) {
                value = OS.IsWinCE ? OS.LOWORD(OS.SendMessage(this.hwndUpDown, 1128, 0, 0)) : OS.SendMessage(this.hwndUpDown, 1138, 0, 0);
            }
            int newValue = value + delta;
            int[] max = new int[1];
            int[] min = new int[1];
            OS.SendMessage(this.hwndUpDown, 1136, min, max);
            if ((this.style & 0x40) != 0) {
                if (newValue < min[0]) {
                    newValue = max[0];
                }
                if (newValue > max[0]) {
                    newValue = min[0];
                }
            }
            if (value != (newValue = Math.min(Math.max(min[0], newValue), max[0]))) {
                this.setSelection(newValue, true, true, true);
            }
        }
        switch (wParam) {
            case 38: 
            case 40: {
                return LRESULT.ZERO;
            }
        }
        return result;
    }

    LRESULT wmKillFocus(int hwnd, int wParam, int lParam) {
        boolean[] parseFail = new boolean[1];
        int value = this.getSelectionText(parseFail);
        if (parseFail[0]) {
            value = OS.IsWinCE ? OS.LOWORD(OS.SendMessage(this.hwndUpDown, 1128, 0, 0)) : OS.SendMessage(this.hwndUpDown, 1138, 0, 0);
            this.setSelection(value, false, true, false);
        }
        return super.wmKillFocus(hwnd, wParam, lParam);
    }

    LRESULT wmNotifyChild(NMHDR hdr, int wParam, int lParam) {
        switch (hdr.code) {
            case -722: {
                NMUPDOWN lpnmud = new NMUPDOWN();
                OS.MoveMemory(lpnmud, lParam, NMUPDOWN.sizeof);
                int value = lpnmud.iPos + lpnmud.iDelta;
                int[] max = new int[1];
                int[] min = new int[1];
                OS.SendMessage(this.hwndUpDown, 1136, min, max);
                if ((this.style & 0x40) != 0) {
                    if (value < min[0]) {
                        value = max[0];
                    }
                    if (value > max[0]) {
                        value = min[0];
                    }
                }
                if ((value = Math.min(Math.max(min[0], value), max[0])) != lpnmud.iPos) {
                    this.setSelection(value, true, true, true);
                }
                return LRESULT.ONE;
            }
        }
        return super.wmNotifyChild(hdr, wParam, lParam);
    }

    LRESULT wmScrollChild(int wParam, int lParam) {
        int code = OS.LOWORD(wParam);
        switch (code) {
            case 4: {
                this.sendSelectionEvent(13);
            }
        }
        return super.wmScrollChild(wParam, lParam);
    }
}

