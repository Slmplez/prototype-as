/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.internal.win32.LRESULT;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.SCROLLINFO;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.internal.win32.WNDCLASS;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Scrollable;
import org.eclipse.swt.widgets.TypedListener;

public class List
extends Scrollable {
    static final int INSET = 3;
    static final int ListProc;
    static final TCHAR ListClass;

    static {
        ListClass = new TCHAR(0, "LISTBOX", true);
        WNDCLASS lpWndClass = new WNDCLASS();
        OS.GetClassInfo(0, ListClass, lpWndClass);
        ListProc = lpWndClass.lpfnWndProc;
    }

    public List(Composite parent, int style) {
        super(parent, List.checkStyle(style));
    }

    public void add(String string) {
        TCHAR buffer;
        int result;
        this.checkWidget();
        if (string == null) {
            this.error(4);
        }
        if ((result = OS.SendMessage(this.handle, 384, 0, buffer = new TCHAR(this.getCodePage(), string, true))) == -1) {
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
        if (index == -1) {
            this.error(6);
        }
        if ((result = OS.SendMessage(this.handle, 385, index, buffer = new TCHAR(this.getCodePage(), string, true))) == -2) {
            this.error(14);
        }
        if (result == -1) {
            int count = OS.SendMessage(this.handle, 395, 0, 0);
            if (index >= 0 && index <= count) {
                this.error(14);
            } else {
                this.error(6);
            }
        }
        if ((this.style & 0x100) != 0) {
            this.setScrollWidth(buffer, true);
        }
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

    int callWindowProc(int hwnd, int msg, int wParam, int lParam) {
        if (this.handle == 0) {
            return 0;
        }
        boolean redraw = false;
        switch (msg) {
            case 276: 
            case 277: {
                boolean bl = redraw = this.findImageControl() != null && this.getDrawing() && OS.IsWindowVisible(this.handle);
                if (!redraw) break;
                OS.DefWindowProc(this.handle, 11, 0, 0);
            }
        }
        int code = OS.CallWindowProc(ListProc, hwnd, msg, wParam, lParam);
        switch (msg) {
            case 276: 
            case 277: {
                if (!redraw) break;
                OS.DefWindowProc(this.handle, 11, 1, 0);
                OS.InvalidateRect(this.handle, null, true);
            }
        }
        return code;
    }

    static int checkStyle(int style) {
        return List.checkBits(style, 4, 2, 0, 0, 0, 0);
    }

    public Point computeSize(int wHint, int hHint, boolean changed) {
        int count;
        this.checkWidget();
        int width = 0;
        int height = 0;
        if (wHint == -1) {
            if ((this.style & 0x100) != 0) {
                width = OS.SendMessage(this.handle, 403, 0, 0);
                width -= 3;
            } else {
                count = OS.SendMessage(this.handle, 395, 0, 0);
                int oldFont = 0;
                int hDC = OS.GetDC(this.handle);
                int newFont = OS.SendMessage(this.handle, 49, 0, 0);
                if (newFont != 0) {
                    oldFont = OS.SelectObject(hDC, newFont);
                }
                RECT rect = new RECT();
                int flags = 3104;
                int cp = this.getCodePage();
                TCHAR buffer = new TCHAR(cp, 65);
                int i = 0;
                while (i < count) {
                    int length = OS.SendMessage(this.handle, 394, i, 0);
                    if (length != -1) {
                        int result;
                        if (length + 1 > buffer.length()) {
                            buffer = new TCHAR(cp, length + 1);
                        }
                        if ((result = OS.SendMessage(this.handle, 393, i, buffer)) != -1) {
                            OS.DrawText(hDC, buffer, length, rect, flags);
                            width = Math.max(width, rect.right - rect.left);
                        }
                    }
                    ++i;
                }
                if (newFont != 0) {
                    OS.SelectObject(hDC, oldFont);
                }
                OS.ReleaseDC(this.handle, hDC);
            }
        }
        if (hHint == -1) {
            count = OS.SendMessage(this.handle, 395, 0, 0);
            int itemHeight = OS.SendMessage(this.handle, 417, 0, 0);
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
        int border = this.getBorderWidth();
        width += border * 2 + 3;
        height += border * 2;
        if ((this.style & 0x200) != 0) {
            width += OS.GetSystemMetrics(2);
        }
        if ((this.style & 0x100) != 0) {
            height += OS.GetSystemMetrics(3);
        }
        return new Point(width, height);
    }

    int defaultBackground() {
        return OS.GetSysColor(OS.COLOR_WINDOW);
    }

    public void deselect(int[] indices) {
        this.checkWidget();
        if (indices == null) {
            this.error(4);
        }
        if (indices.length == 0) {
            return;
        }
        if ((this.style & 4) != 0) {
            int oldIndex = OS.SendMessage(this.handle, 392, 0, 0);
            if (oldIndex == -1) {
                return;
            }
            int i = 0;
            while (i < indices.length) {
                if (oldIndex == indices[i]) {
                    OS.SendMessage(this.handle, 390, -1, 0);
                    return;
                }
                ++i;
            }
            return;
        }
        int i = 0;
        while (i < indices.length) {
            int index = indices[i];
            if (index != -1) {
                OS.SendMessage(this.handle, 389, 0, index);
            }
            ++i;
        }
    }

    public void deselect(int index) {
        this.checkWidget();
        if (index == -1) {
            return;
        }
        if ((this.style & 4) != 0) {
            int oldIndex = OS.SendMessage(this.handle, 392, 0, 0);
            if (oldIndex == -1) {
                return;
            }
            if (oldIndex == index) {
                OS.SendMessage(this.handle, 390, -1, 0);
            }
            return;
        }
        OS.SendMessage(this.handle, 389, 0, index);
    }

    public void deselect(int start, int end) {
        this.checkWidget();
        if (start > end) {
            return;
        }
        if ((this.style & 4) != 0) {
            int oldIndex = OS.SendMessage(this.handle, 392, 0, 0);
            if (oldIndex == -1) {
                return;
            }
            if (start <= oldIndex && oldIndex <= end) {
                OS.SendMessage(this.handle, 390, -1, 0);
            }
            return;
        }
        int count = OS.SendMessage(this.handle, 395, 0, 0);
        if (start < 0 && end < 0) {
            return;
        }
        if (start >= count && end >= count) {
            return;
        }
        start = Math.min(count - 1, Math.max(0, start));
        end = Math.min(count - 1, Math.max(0, end));
        OS.SendMessage(this.handle, 387, end, start);
    }

    public void deselectAll() {
        this.checkWidget();
        if ((this.style & 4) != 0) {
            OS.SendMessage(this.handle, 390, -1, 0);
        } else {
            OS.SendMessage(this.handle, 389, 0, -1);
        }
    }

    public int getFocusIndex() {
        int count;
        this.checkWidget();
        int result = OS.SendMessage(this.handle, 415, 0, 0);
        if (result == 0 && (count = OS.SendMessage(this.handle, 395, 0, 0)) == 0) {
            return -1;
        }
        return result;
    }

    public String getItem(int index) {
        TCHAR buffer;
        int result;
        this.checkWidget();
        int length = OS.SendMessage(this.handle, 394, index, 0);
        if (length != -1 && (result = OS.SendMessage(this.handle, 393, index, buffer = new TCHAR(this.getCodePage(), length + 1))) != -1) {
            return buffer.toString(0, length);
        }
        int count = OS.SendMessage(this.handle, 395, 0, 0);
        if (index >= 0 && index < count) {
            this.error(8);
        }
        this.error(6);
        return "";
    }

    public int getItemCount() {
        this.checkWidget();
        int result = OS.SendMessage(this.handle, 395, 0, 0);
        if (result == -1) {
            this.error(36);
        }
        return result;
    }

    public int getItemHeight() {
        this.checkWidget();
        int result = OS.SendMessage(this.handle, 417, 0, 0);
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

    public String[] getSelection() {
        this.checkWidget();
        int[] indices = this.getSelectionIndices();
        String[] result = new String[indices.length];
        int i = 0;
        while (i < indices.length) {
            result[i] = this.getItem(indices[i]);
            ++i;
        }
        return result;
    }

    public int getSelectionCount() {
        this.checkWidget();
        if ((this.style & 4) != 0) {
            int result = OS.SendMessage(this.handle, 392, 0, 0);
            if (result == -1) {
                return 0;
            }
            return 1;
        }
        int result = OS.SendMessage(this.handle, 400, 0, 0);
        if (result == -1) {
            this.error(36);
        }
        return result;
    }

    public int getSelectionIndex() {
        this.checkWidget();
        if ((this.style & 4) != 0) {
            return OS.SendMessage(this.handle, 392, 0, 0);
        }
        int count = OS.SendMessage(this.handle, 400, 0, 0);
        if (count == -1) {
            this.error(9);
        }
        if (count == 0) {
            return -1;
        }
        int index = OS.SendMessage(this.handle, 415, 0, 0);
        int result = OS.SendMessage(this.handle, 391, index, 0);
        if (result == -1) {
            this.error(9);
        }
        if (result != 0) {
            return index;
        }
        int[] buffer = new int[1];
        result = OS.SendMessage(this.handle, 401, 1, buffer);
        if (result != 1) {
            this.error(9);
        }
        return buffer[0];
    }

    public int[] getSelectionIndices() {
        int[] indices;
        int result;
        this.checkWidget();
        if ((this.style & 4) != 0) {
            int result2 = OS.SendMessage(this.handle, 392, 0, 0);
            if (result2 == -1) {
                return new int[0];
            }
            return new int[]{result2};
        }
        int length = OS.SendMessage(this.handle, 400, 0, 0);
        if (length == -1) {
            this.error(9);
        }
        if ((result = OS.SendMessage(this.handle, 401, length, indices = new int[length])) != length) {
            this.error(9);
        }
        return indices;
    }

    public int getTopIndex() {
        this.checkWidget();
        return OS.SendMessage(this.handle, 398, 0, 0);
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
        int count = OS.SendMessage(this.handle, 395, 0, 0);
        if (start < 0 || start >= count) {
            return -1;
        }
        int index = start - 1;
        TCHAR buffer = new TCHAR(this.getCodePage(), string, true);
        do {
            int last;
            if ((index = OS.SendMessage(this.handle, 418, last = index, buffer)) != -1 && index > last) continue;
            return -1;
        } while (!string.equals(this.getItem(index)));
        return index;
    }

    public boolean isSelected(int index) {
        this.checkWidget();
        int result = OS.SendMessage(this.handle, 391, index, 0);
        return result != 0 && result != -1;
    }

    public void remove(int[] indices) {
        this.checkWidget();
        if (indices == null) {
            this.error(4);
        }
        if (indices.length == 0) {
            return;
        }
        int[] newIndices = new int[indices.length];
        System.arraycopy(indices, 0, newIndices, 0, indices.length);
        this.sort(newIndices);
        int start = newIndices[newIndices.length - 1];
        int end = newIndices[0];
        int count = OS.SendMessage(this.handle, 395, 0, 0);
        if (start < 0 || start > end || end >= count) {
            this.error(6);
        }
        int topIndex = OS.SendMessage(this.handle, 398, 0, 0);
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
        int i = 0;
        int topCount = 0;
        int last = -1;
        while (i < newIndices.length) {
            int index = newIndices[i];
            if (index != last) {
                int result;
                int result2;
                int length;
                TCHAR buffer = null;
                if ((this.style & 0x100) != 0 && ((length = OS.SendMessage(this.handle, 394, index, 0)) == -1 || (result2 = OS.SendMessage(this.handle, 393, index, buffer = new TCHAR(cp, length + 1))) == -1) || (result = OS.SendMessage(this.handle, 386, index, 0)) == -1) break;
                if ((this.style & 0x100) != 0) {
                    int flags = 3104;
                    OS.DrawText(hDC, buffer, -1, rect, flags);
                    newWidth = Math.max(newWidth, rect.right - rect.left);
                }
                if (index < topIndex) {
                    ++topCount;
                }
                last = index;
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
        if (topCount > 0) {
            topIndex -= topCount;
        }
        OS.SendMessage(this.handle, 407, topIndex, 0);
        if (i < newIndices.length) {
            this.error(15);
        }
    }

    public void remove(int index) {
        int count;
        int result;
        this.checkWidget();
        TCHAR buffer = null;
        if ((this.style & 0x100) != 0) {
            int length = OS.SendMessage(this.handle, 394, index, 0);
            if (length == -1) {
                int count2 = OS.SendMessage(this.handle, 395, 0, 0);
                if (index >= 0 && index < count2) {
                    this.error(15);
                }
                this.error(6);
            }
            if ((result = OS.SendMessage(this.handle, 393, index, buffer = new TCHAR(this.getCodePage(), length + 1))) == -1) {
                count = OS.SendMessage(this.handle, 395, 0, 0);
                if (index >= 0 && index < count) {
                    this.error(15);
                }
                this.error(6);
            }
        }
        int topIndex = OS.SendMessage(this.handle, 398, 0, 0);
        result = OS.SendMessage(this.handle, 386, index, 0);
        if (result == -1) {
            count = OS.SendMessage(this.handle, 395, 0, 0);
            if (index >= 0 && index < count) {
                this.error(15);
            }
            this.error(6);
        }
        if ((this.style & 0x100) != 0) {
            this.setScrollWidth(buffer, false);
        }
        if (index < topIndex) {
            --topIndex;
        }
        OS.SendMessage(this.handle, 407, topIndex, 0);
    }

    public void remove(int start, int end) {
        this.checkWidget();
        if (start > end) {
            return;
        }
        int count = OS.SendMessage(this.handle, 395, 0, 0);
        if (start < 0 || start > end || end >= count) {
            this.error(6);
        }
        if (start == 0 && end == count - 1) {
            this.removeAll();
            return;
        }
        int topIndex = OS.SendMessage(this.handle, 398, 0, 0);
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
        int index = start;
        int flags = 3104;
        while (index <= end) {
            int result;
            int result2;
            int length;
            TCHAR buffer = null;
            if ((this.style & 0x100) != 0 && ((length = OS.SendMessage(this.handle, 394, start, 0)) == -1 || (result2 = OS.SendMessage(this.handle, 393, start, buffer = new TCHAR(cp, length + 1))) == -1) || (result = OS.SendMessage(this.handle, 386, start, 0)) == -1) break;
            if ((this.style & 0x100) != 0) {
                OS.DrawText(hDC, buffer, -1, rect, flags);
                newWidth = Math.max(newWidth, rect.right - rect.left);
            }
            ++index;
        }
        if ((this.style & 0x100) != 0) {
            if (newFont != 0) {
                OS.SelectObject(hDC, oldFont);
            }
            OS.ReleaseDC(this.handle, hDC);
            this.setScrollWidth(newWidth, false);
        }
        if (end < topIndex) {
            topIndex -= end - start + 1;
        }
        OS.SendMessage(this.handle, 407, topIndex, 0);
        if (index <= end) {
            this.error(15);
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
        OS.SendMessage(this.handle, 388, 0, 0);
        if ((this.style & 0x100) != 0) {
            OS.SendMessage(this.handle, 404, 0, 0);
        }
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

    public void select(int[] indices) {
        int length;
        this.checkWidget();
        if (indices == null) {
            this.error(4);
        }
        if ((length = indices.length) == 0 || (this.style & 4) != 0 && length > 1) {
            return;
        }
        this.select(indices, false);
    }

    void select(int[] indices, boolean scroll) {
        int i = 0;
        while (i < indices.length) {
            int index = indices[i];
            if (index != -1) {
                this.select(index, false);
            }
            ++i;
        }
        if (scroll) {
            this.showSelection();
        }
    }

    public void select(int index) {
        this.checkWidget();
        this.select(index, false);
    }

    void select(int index, boolean scroll) {
        boolean redraw;
        if (index < 0) {
            return;
        }
        int count = OS.SendMessage(this.handle, 395, 0, 0);
        if (index >= count) {
            return;
        }
        if (scroll) {
            if ((this.style & 4) != 0) {
                OS.SendMessage(this.handle, 390, index, 0);
            } else {
                OS.SendMessage(this.handle, 389, 1, index);
            }
            return;
        }
        int topIndex = OS.SendMessage(this.handle, 398, 0, 0);
        RECT itemRect = new RECT();
        RECT selectedRect = null;
        OS.SendMessage(this.handle, 408, index, itemRect);
        boolean bl = redraw = this.getDrawing() && OS.IsWindowVisible(this.handle);
        if (redraw) {
            OS.UpdateWindow(this.handle);
            OS.SendMessage(this.handle, 11, 0, 0);
        }
        int focusIndex = -1;
        if ((this.style & 4) != 0) {
            int oldIndex = OS.SendMessage(this.handle, 392, 0, 0);
            if (oldIndex != -1) {
                selectedRect = new RECT();
                OS.SendMessage(this.handle, 408, oldIndex, selectedRect);
            }
            OS.SendMessage(this.handle, 390, index, 0);
        } else {
            focusIndex = OS.SendMessage(this.handle, 415, 0, 0);
            OS.SendMessage(this.handle, 389, 1, index);
        }
        if ((this.style & 2) != 0 && focusIndex != -1) {
            OS.SendMessage(this.handle, 414, focusIndex, 0);
        }
        OS.SendMessage(this.handle, 407, topIndex, 0);
        if (redraw) {
            OS.SendMessage(this.handle, 11, 1, 0);
            OS.ValidateRect(this.handle, null);
            OS.InvalidateRect(this.handle, itemRect, true);
            if (selectedRect != null) {
                OS.InvalidateRect(this.handle, selectedRect, true);
            }
        }
    }

    public void select(int start, int end) {
        this.checkWidget();
        if (end < 0 || start > end || (this.style & 4) != 0 && start != end) {
            return;
        }
        int count = OS.SendMessage(this.handle, 395, 0, 0);
        if (count == 0 || start >= count) {
            return;
        }
        start = Math.max(0, start);
        end = Math.min(end, count - 1);
        if ((this.style & 4) != 0) {
            this.select(start, false);
        } else {
            this.select(start, end, false);
        }
    }

    void select(int start, int end, boolean scroll) {
        if (start == end) {
            this.select(start, scroll);
            return;
        }
        OS.SendMessage(this.handle, 387, start, end);
        if (scroll) {
            this.showSelection();
        }
    }

    public void selectAll() {
        this.checkWidget();
        if ((this.style & 4) != 0) {
            return;
        }
        OS.SendMessage(this.handle, 389, 1, -1);
    }

    void setFocusIndex(int index) {
        int count = OS.SendMessage(this.handle, 395, 0, 0);
        if (index < 0 || index >= count) {
            return;
        }
        OS.SendMessage(this.handle, 414, index, 0);
    }

    public void setFont(Font font) {
        this.checkWidget();
        super.setFont(font);
        if ((this.style & 0x100) != 0) {
            this.setScrollWidth();
        }
    }

    public void setItem(int index, String string) {
        this.checkWidget();
        if (string == null) {
            this.error(4);
        }
        int topIndex = this.getTopIndex();
        boolean isSelected = this.isSelected(index);
        this.remove(index);
        this.add(string, index);
        if (isSelected) {
            this.select(index, false);
        }
        this.setTopIndex(topIndex);
    }

    public void setItems(String[] items) {
        boolean redraw;
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
        int oldProc = OS.GetWindowLongPtr(this.handle, -4);
        OS.SetWindowLongPtr(this.handle, -4, ListProc);
        boolean bl = redraw = this.getDrawing() && OS.IsWindowVisible(this.handle);
        if (redraw) {
            OS.SendMessage(this.handle, 11, 0, 0);
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
            OS.SendMessage(this.handle, 404, 0, 0);
        }
        int length = items.length;
        OS.SendMessage(this.handle, 388, 0, 0);
        OS.SendMessage(this.handle, 424, length, length * 32);
        int index = 0;
        int cp = this.getCodePage();
        while (index < length) {
            String string = items[index];
            TCHAR buffer = new TCHAR(cp, string, true);
            int result = OS.SendMessage(this.handle, 384, 0, buffer);
            if (result == -1 || result == -2) break;
            if ((this.style & 0x100) != 0) {
                int flags = 3104;
                OS.DrawText(hDC, buffer, -1, rect, flags);
                newWidth = Math.max(newWidth, rect.right - rect.left);
            }
            ++index;
        }
        if ((this.style & 0x100) != 0) {
            if (newFont != 0) {
                OS.SelectObject(hDC, oldFont);
            }
            OS.ReleaseDC(this.handle, hDC);
            OS.SendMessage(this.handle, 404, newWidth + 3, 0);
        }
        if (redraw) {
            OS.SendMessage(this.handle, 11, 1, 0);
        }
        OS.SetWindowLongPtr(this.handle, -4, oldProc);
        if (index < items.length) {
            this.error(14);
        }
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
        int count = OS.SendMessage(this.handle, 395, 0, 0);
        int flags = 3104;
        int i = 0;
        while (i < count) {
            TCHAR buffer;
            int result;
            int length = OS.SendMessage(this.handle, 394, i, 0);
            if (length != -1 && (result = OS.SendMessage(this.handle, 393, i, buffer = new TCHAR(cp, length + 1))) != -1) {
                OS.DrawText(hDC, buffer, -1, rect, flags);
                newWidth = Math.max(newWidth, rect.right - rect.left);
            }
            ++i;
        }
        if (newFont != 0) {
            OS.SelectObject(hDC, oldFont);
        }
        OS.ReleaseDC(this.handle, hDC);
        OS.SendMessage(this.handle, 404, newWidth + 3, 0);
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
        newWidth += 3;
        int width = OS.SendMessage(this.handle, 403, 0, 0);
        if (grow) {
            if (newWidth <= width) {
                return;
            }
            OS.SendMessage(this.handle, 404, newWidth, 0);
        } else {
            if (newWidth < width) {
                return;
            }
            this.setScrollWidth();
        }
    }

    public void setSelection(int[] indices) {
        int focusIndex;
        this.checkWidget();
        if (indices == null) {
            this.error(4);
        }
        this.deselectAll();
        int length = indices.length;
        if (length == 0 || (this.style & 4) != 0 && length > 1) {
            return;
        }
        this.select(indices, true);
        if ((this.style & 2) != 0 && (focusIndex = indices[0]) >= 0) {
            this.setFocusIndex(focusIndex);
        }
    }

    public void setSelection(String[] items) {
        this.checkWidget();
        if (items == null) {
            this.error(4);
        }
        this.deselectAll();
        int length = items.length;
        if (length == 0 || (this.style & 4) != 0 && length > 1) {
            return;
        }
        int focusIndex = -1;
        int i = length - 1;
        while (i >= 0) {
            String string = items[i];
            int index = 0;
            if (string != null) {
                int localFocus = -1;
                while ((index = this.indexOf(string, index)) != -1) {
                    if (localFocus == -1) {
                        localFocus = index;
                    }
                    this.select(index, false);
                    if ((this.style & 4) != 0 && this.isSelected(index)) {
                        this.showSelection();
                        return;
                    }
                    ++index;
                }
                if (localFocus != -1) {
                    focusIndex = localFocus;
                }
            }
            --i;
        }
        if ((this.style & 2) != 0 && focusIndex >= 0) {
            this.setFocusIndex(focusIndex);
        }
    }

    public void setSelection(int index) {
        this.checkWidget();
        this.deselectAll();
        this.select(index, true);
        if ((this.style & 2) != 0 && index >= 0) {
            this.setFocusIndex(index);
        }
    }

    public void setSelection(int start, int end) {
        this.checkWidget();
        this.deselectAll();
        if (end < 0 || start > end || (this.style & 4) != 0 && start != end) {
            return;
        }
        int count = OS.SendMessage(this.handle, 395, 0, 0);
        if (count == 0 || start >= count) {
            return;
        }
        start = Math.max(0, start);
        end = Math.min(end, count - 1);
        if ((this.style & 4) != 0) {
            this.select(start, true);
        } else {
            this.select(start, end, true);
            this.setFocusIndex(start);
        }
    }

    public void setTopIndex(int index) {
        this.checkWidget();
        int result = OS.SendMessage(this.handle, 407, index, 0);
        if (result == -1) {
            int count = OS.SendMessage(this.handle, 395, 0, 0);
            index = Math.min(count - 1, Math.max(0, index));
            OS.SendMessage(this.handle, 407, index, 0);
        }
    }

    public void showSelection() {
        int index;
        this.checkWidget();
        if ((this.style & 4) != 0) {
            index = OS.SendMessage(this.handle, 392, 0, 0);
        } else {
            int[] indices = new int[1];
            int result = OS.SendMessage(this.handle, 401, 1, indices);
            index = indices[0];
            if (result != 1) {
                index = -1;
            }
        }
        if (index == -1) {
            return;
        }
        int count = OS.SendMessage(this.handle, 395, 0, 0);
        if (count == 0) {
            return;
        }
        int height = OS.SendMessage(this.handle, 417, 0, 0);
        this.forceResize();
        RECT rect = new RECT();
        OS.GetClientRect(this.handle, rect);
        int topIndex = OS.SendMessage(this.handle, 398, 0, 0);
        int visibleCount = Math.max(rect.bottom / height, 1);
        int bottomIndex = Math.min(topIndex + visibleCount, count) - 1;
        if (topIndex <= index && index <= bottomIndex) {
            return;
        }
        int newTop = Math.min(Math.max(index - visibleCount / 2, 0), count - 1);
        OS.SendMessage(this.handle, 407, newTop, 0);
    }

    int widgetStyle() {
        int bits = super.widgetStyle() | 1 | 0x100;
        if ((this.style & 4) != 0) {
            return bits;
        }
        if ((this.style & 2) != 0) {
            if ((this.style & 0x40) != 0) {
                return bits | 8;
            }
            return bits | 0x800;
        }
        return bits;
    }

    TCHAR windowClass() {
        return ListClass;
    }

    int windowProc() {
        return ListProc;
    }

    LRESULT WM_CHAR(int wParam, int lParam) {
        int bits;
        LRESULT result = super.WM_CHAR(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (OS.GetKeyState(17) < 0 && OS.GetKeyState(16) >= 0 && ((bits = OS.GetWindowLong(this.handle, -16)) & 0x800) != 0) {
            switch (wParam) {
                case 32: {
                    int index = OS.SendMessage(this.handle, 415, 0, 0);
                    int code = OS.SendMessage(this.handle, 391, index, 0);
                    if (code == -1) break;
                    OS.SendMessage(this.handle, 389, code != 0 ? 0 : 1, index);
                    OS.SendMessage(this.handle, 61852, index, 0);
                    this.sendSelectionEvent(13);
                    return LRESULT.ZERO;
                }
            }
        }
        return result;
    }

    LRESULT WM_KEYDOWN(int wParam, int lParam) {
        int bits;
        LRESULT result = super.WM_KEYDOWN(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (OS.GetKeyState(17) < 0 && OS.GetKeyState(16) >= 0 && ((bits = OS.GetWindowLong(this.handle, -16)) & 0x800) != 0) {
            int newIndex = -1;
            switch (wParam) {
                case 32: {
                    return LRESULT.ZERO;
                }
                case 38: 
                case 40: {
                    int oldIndex = OS.SendMessage(this.handle, 415, 0, 0);
                    newIndex = Math.max(0, oldIndex + (wParam == 38 ? -1 : 1));
                    break;
                }
                case 33: {
                    int topIndex = OS.SendMessage(this.handle, 398, 0, 0);
                    int oldIndex = OS.SendMessage(this.handle, 415, 0, 0);
                    if (oldIndex != topIndex) {
                        newIndex = topIndex;
                        break;
                    }
                    this.forceResize();
                    RECT rect = new RECT();
                    OS.GetClientRect(this.handle, rect);
                    int itemHeight = OS.SendMessage(this.handle, 417, 0, 0);
                    int pageSize = Math.max(2, rect.bottom / itemHeight);
                    newIndex = Math.max(0, topIndex - (pageSize - 1));
                    break;
                }
                case 34: {
                    int topIndex = OS.SendMessage(this.handle, 398, 0, 0);
                    int oldIndex = OS.SendMessage(this.handle, 415, 0, 0);
                    this.forceResize();
                    RECT rect = new RECT();
                    OS.GetClientRect(this.handle, rect);
                    int itemHeight = OS.SendMessage(this.handle, 417, 0, 0);
                    int pageSize = Math.max(2, rect.bottom / itemHeight);
                    int bottomIndex = topIndex + pageSize - 1;
                    newIndex = oldIndex != bottomIndex ? bottomIndex : bottomIndex + pageSize - 1;
                    int count = OS.SendMessage(this.handle, 395, 0, 0);
                    if (count == -1) break;
                    newIndex = Math.min(count - 1, newIndex);
                    break;
                }
                case 36: {
                    newIndex = 0;
                    break;
                }
                case 35: {
                    int count = OS.SendMessage(this.handle, 395, 0, 0);
                    if (count == -1) break;
                    newIndex = count - 1;
                }
            }
            if (newIndex != -1) {
                int uiState = OS.SendMessage(this.handle, 297, 0, 0);
                if ((uiState & 1) != 0) {
                    OS.SendMessage(this.handle, 295, 3, 0);
                    RECT itemRect = new RECT();
                    int oldIndex = OS.SendMessage(this.handle, 415, 0, 0);
                    OS.SendMessage(this.handle, 408, oldIndex, itemRect);
                    OS.InvalidateRect(this.handle, itemRect, true);
                }
                OS.SendMessage(this.handle, 414, newIndex, 0);
                return LRESULT.ZERO;
            }
        }
        return result;
    }

    LRESULT WM_SETREDRAW(int wParam, int lParam) {
        LRESULT result = super.WM_SETREDRAW(wParam, lParam);
        if (result != null) {
            return result;
        }
        OS.DefWindowProc(this.handle, 11, wParam, lParam);
        return result;
    }

    LRESULT WM_SIZE(int wParam, int lParam) {
        int oldIndex = OS.SendMessage(this.handle, 398, 0, 0);
        LRESULT result = super.WM_SIZE(wParam, lParam);
        if (!this.isDisposed()) {
            int newIndex;
            SCROLLINFO info = new SCROLLINFO();
            info.cbSize = SCROLLINFO.sizeof;
            info.fMask = 4;
            if (OS.GetScrollInfo(this.handle, 0, info) && info.nPos != 0) {
                OS.InvalidateRect(this.handle, null, true);
            }
            if (oldIndex != (newIndex = OS.SendMessage(this.handle, 398, 0, 0))) {
                OS.InvalidateRect(this.handle, null, true);
            }
        }
        return result;
    }

    LRESULT wmCommandChild(int wParam, int lParam) {
        int code = OS.HIWORD(wParam);
        switch (code) {
            case 1: {
                this.sendSelectionEvent(13);
                break;
            }
            case 2: {
                this.sendSelectionEvent(14);
            }
        }
        return super.wmCommandChild(wParam, lParam);
    }
}

