/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.MARGINS;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.REBARBANDINFO;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.CoolBar;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.TypedListener;

public class CoolItem
extends Item {
    CoolBar parent;
    Control control;
    int id;
    boolean ideal;
    boolean minimum;

    public CoolItem(CoolBar parent, int style) {
        super(parent, style);
        this.parent = parent;
        parent.createItem(this, parent.getItemCount());
    }

    public CoolItem(CoolBar parent, int style, int index) {
        super(parent, style);
        this.parent = parent;
        parent.createItem(this, index);
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

    protected void checkSubclass() {
        if (!this.isValidSubclass()) {
            this.error(43);
        }
    }

    public Point computeSize(int wHint, int hHint) {
        this.checkWidget();
        int index = this.parent.indexOf(this);
        if (index == -1) {
            return new Point(0, 0);
        }
        int width = wHint;
        int height = hHint;
        if (wHint == -1) {
            width = 32;
        }
        if (hHint == -1) {
            height = 32;
        }
        if ((this.parent.style & 0x200) != 0) {
            height += this.parent.getMargin(index);
        } else {
            width += this.parent.getMargin(index);
        }
        return new Point(width, height);
    }

    void destroyWidget() {
        this.parent.destroyItem(this);
        this.releaseHandle();
    }

    public Rectangle getBounds() {
        this.checkWidget();
        int index = this.parent.indexOf(this);
        if (index == -1) {
            return new Rectangle(0, 0, 0, 0);
        }
        int hwnd = this.parent.handle;
        RECT rect = new RECT();
        OS.SendMessage(hwnd, 1033, index, rect);
        if (OS.COMCTL32_MAJOR >= 6) {
            MARGINS margins = new MARGINS();
            OS.SendMessage(hwnd, 1064, 0, margins);
            rect.left -= margins.cxLeftWidth;
            rect.right += margins.cxRightWidth;
        }
        if (!this.parent.isLastItemOfRow(index)) {
            rect.right = rect.right + ((this.parent.style & 0x800000) == 0 ? 2 : 0);
        }
        int width = rect.right - rect.left;
        int height = rect.bottom - rect.top;
        if ((this.parent.style & 0x200) != 0) {
            return new Rectangle(rect.top, rect.left, height, width);
        }
        return new Rectangle(rect.left, rect.top, width, height);
    }

    Rectangle getClientArea() {
        this.checkWidget();
        int index = this.parent.indexOf(this);
        if (index == -1) {
            return new Rectangle(0, 0, 0, 0);
        }
        int hwnd = this.parent.handle;
        RECT insetRect = new RECT();
        OS.SendMessage(hwnd, 1058, index, insetRect);
        RECT rect = new RECT();
        OS.SendMessage(hwnd, 1033, index, rect);
        int x = rect.left + insetRect.left;
        int y = rect.top;
        int width = rect.right - rect.left - insetRect.left;
        int height = rect.bottom - rect.top;
        if ((this.parent.style & 0x800000) == 0) {
            y += insetRect.top;
            width -= insetRect.right;
            height -= insetRect.top + insetRect.bottom;
        }
        if (index == 0) {
            REBARBANDINFO rbBand = new REBARBANDINFO();
            rbBand.cbSize = REBARBANDINFO.sizeof;
            rbBand.fMask = 2048;
            OS.SendMessage(hwnd, OS.RB_GETBANDINFO, index, rbBand);
            width = width - rbBand.cxHeader + 1;
        }
        return new Rectangle(x, y, Math.max(0, width), Math.max(0, height));
    }

    public Control getControl() {
        this.checkWidget();
        return this.control;
    }

    public CoolBar getParent() {
        this.checkWidget();
        return this.parent;
    }

    void releaseHandle() {
        super.releaseHandle();
        this.parent = null;
        this.id = -1;
        this.control = null;
    }

    public void setControl(Control control) {
        int index;
        this.checkWidget();
        if (control != null) {
            if (control.isDisposed()) {
                this.error(5);
            }
            if (control.parent != this.parent) {
                this.error(32);
            }
        }
        if ((index = this.parent.indexOf(this)) == -1) {
            return;
        }
        if (this.control != null && this.control.isDisposed()) {
            this.control = null;
        }
        Control oldControl = this.control;
        Control newControl = control;
        int hwnd = this.parent.handle;
        int hwndChild = newControl != null ? control.topHandle() : 0;
        REBARBANDINFO rbBand = new REBARBANDINFO();
        rbBand.cbSize = REBARBANDINFO.sizeof;
        rbBand.fMask = 16;
        rbBand.hwndChild = hwndChild;
        this.control = newControl;
        int hwndAbove = 0;
        if (newControl != null) {
            hwndAbove = OS.GetWindow(hwndChild, 3);
        }
        boolean hideNew = newControl != null && !newControl.getVisible();
        boolean showOld = oldControl != null && oldControl.getVisible();
        OS.SendMessage(hwnd, OS.RB_SETBANDINFO, index, rbBand);
        if (hideNew) {
            newControl.setVisible(false);
        }
        if (showOld) {
            oldControl.setVisible(true);
        }
        if (hwndAbove != 0 && hwndAbove != hwndChild) {
            int flags = 19;
            this.SetWindowPos(hwndChild, hwndAbove, 0, 0, 0, 0, flags);
        }
    }

    public Point getPreferredSize() {
        this.checkWidget();
        int index = this.parent.indexOf(this);
        if (index == -1) {
            return new Point(0, 0);
        }
        int hwnd = this.parent.handle;
        REBARBANDINFO rbBand = new REBARBANDINFO();
        rbBand.cbSize = REBARBANDINFO.sizeof;
        rbBand.fMask = 544;
        OS.SendMessage(hwnd, OS.RB_GETBANDINFO, index, rbBand);
        int width = rbBand.cxIdeal + this.parent.getMargin(index);
        if ((this.parent.style & 0x200) != 0) {
            return new Point(rbBand.cyMaxChild, width);
        }
        return new Point(width, rbBand.cyMaxChild);
    }

    public void setPreferredSize(int width, int height) {
        int cyMaxChild;
        int cxIdeal;
        this.checkWidget();
        int index = this.parent.indexOf(this);
        if (index == -1) {
            return;
        }
        width = Math.max(0, width);
        height = Math.max(0, height);
        this.ideal = true;
        int hwnd = this.parent.handle;
        if ((this.parent.style & 0x200) != 0) {
            cxIdeal = Math.max(0, height - this.parent.getMargin(index));
            cyMaxChild = width;
        } else {
            cxIdeal = Math.max(0, width - this.parent.getMargin(index));
            cyMaxChild = height;
        }
        REBARBANDINFO rbBand = new REBARBANDINFO();
        rbBand.cbSize = REBARBANDINFO.sizeof;
        rbBand.fMask = 32;
        OS.SendMessage(hwnd, OS.RB_GETBANDINFO, index, rbBand);
        rbBand.fMask = 544;
        rbBand.cxIdeal = cxIdeal;
        rbBand.cyMaxChild = cyMaxChild;
        if (!this.minimum) {
            rbBand.cyMinChild = cyMaxChild;
        }
        OS.SendMessage(hwnd, OS.RB_SETBANDINFO, index, rbBand);
    }

    public void setPreferredSize(Point size) {
        this.checkWidget();
        if (size == null) {
            this.error(4);
        }
        this.setPreferredSize(size.x, size.y);
    }

    public Point getSize() {
        this.checkWidget();
        int index = this.parent.indexOf(this);
        if (index == -1) {
            new Point(0, 0);
        }
        int hwnd = this.parent.handle;
        RECT rect = new RECT();
        OS.SendMessage(hwnd, 1033, index, rect);
        if (OS.COMCTL32_MAJOR >= 6) {
            MARGINS margins = new MARGINS();
            OS.SendMessage(hwnd, 1064, 0, margins);
            rect.left -= margins.cxLeftWidth;
            rect.right += margins.cxRightWidth;
        }
        if (!this.parent.isLastItemOfRow(index)) {
            rect.right = rect.right + ((this.parent.style & 0x800000) == 0 ? 2 : 0);
        }
        int width = rect.right - rect.left;
        int height = rect.bottom - rect.top;
        if ((this.parent.style & 0x200) != 0) {
            return new Point(height, width);
        }
        return new Point(width, height);
    }

    public void setSize(int width, int height) {
        int cxIdeal;
        int cyChild;
        int cx;
        this.checkWidget();
        int index = this.parent.indexOf(this);
        if (index == -1) {
            return;
        }
        width = Math.max(0, width);
        height = Math.max(0, height);
        int hwnd = this.parent.handle;
        if ((this.parent.style & 0x200) != 0) {
            cx = height;
            cyChild = width;
            cxIdeal = Math.max(0, height - this.parent.getMargin(index));
        } else {
            cx = width;
            cyChild = height;
            cxIdeal = Math.max(0, width - this.parent.getMargin(index));
        }
        REBARBANDINFO rbBand = new REBARBANDINFO();
        rbBand.cbSize = REBARBANDINFO.sizeof;
        rbBand.fMask = 544;
        OS.SendMessage(hwnd, OS.RB_GETBANDINFO, index, rbBand);
        if (!this.ideal) {
            rbBand.cxIdeal = cxIdeal;
        }
        if (!this.minimum) {
            rbBand.cyMinChild = cyChild;
        }
        rbBand.cyChild = cyChild;
        if (!this.parent.isLastItemOfRow(index)) {
            if (OS.COMCTL32_MAJOR >= 6) {
                MARGINS margins = new MARGINS();
                OS.SendMessage(hwnd, 1064, 0, margins);
                cx -= margins.cxLeftWidth + margins.cxRightWidth;
            }
            int separator = (this.parent.style & 0x800000) == 0 ? 2 : 0;
            rbBand.cx = cx - separator;
            rbBand.fMask |= 0x40;
        }
        OS.SendMessage(hwnd, OS.RB_SETBANDINFO, index, rbBand);
    }

    public void setSize(Point size) {
        if (size == null) {
            this.error(4);
        }
        this.setSize(size.x, size.y);
    }

    public Point getMinimumSize() {
        this.checkWidget();
        int index = this.parent.indexOf(this);
        if (index == -1) {
            return new Point(0, 0);
        }
        int hwnd = this.parent.handle;
        REBARBANDINFO rbBand = new REBARBANDINFO();
        rbBand.cbSize = REBARBANDINFO.sizeof;
        rbBand.fMask = 32;
        OS.SendMessage(hwnd, OS.RB_GETBANDINFO, index, rbBand);
        if ((this.parent.style & 0x200) != 0) {
            return new Point(rbBand.cyMinChild, rbBand.cxMinChild);
        }
        return new Point(rbBand.cxMinChild, rbBand.cyMinChild);
    }

    public void setMinimumSize(int width, int height) {
        int cyMinChild;
        int cxMinChild;
        this.checkWidget();
        int index = this.parent.indexOf(this);
        if (index == -1) {
            return;
        }
        width = Math.max(0, width);
        height = Math.max(0, height);
        this.minimum = true;
        int hwnd = this.parent.handle;
        if ((this.parent.style & 0x200) != 0) {
            cxMinChild = height;
            cyMinChild = width;
        } else {
            cxMinChild = width;
            cyMinChild = height;
        }
        REBARBANDINFO rbBand = new REBARBANDINFO();
        rbBand.cbSize = REBARBANDINFO.sizeof;
        rbBand.fMask = 32;
        OS.SendMessage(hwnd, OS.RB_GETBANDINFO, index, rbBand);
        rbBand.cxMinChild = cxMinChild;
        rbBand.cyMinChild = cyMinChild;
        OS.SendMessage(hwnd, OS.RB_SETBANDINFO, index, rbBand);
    }

    public void setMinimumSize(Point size) {
        this.checkWidget();
        if (size == null) {
            this.error(4);
        }
        this.setMinimumSize(size.x, size.y);
    }

    boolean getWrap() {
        int index = this.parent.indexOf(this);
        int hwnd = this.parent.handle;
        REBARBANDINFO rbBand = new REBARBANDINFO();
        rbBand.cbSize = REBARBANDINFO.sizeof;
        rbBand.fMask = 1;
        OS.SendMessage(hwnd, OS.RB_GETBANDINFO, index, rbBand);
        return (rbBand.fStyle & 1) != 0;
    }

    void setWrap(boolean wrap) {
        int index = this.parent.indexOf(this);
        int hwnd = this.parent.handle;
        REBARBANDINFO rbBand = new REBARBANDINFO();
        rbBand.cbSize = REBARBANDINFO.sizeof;
        rbBand.fMask = 1;
        OS.SendMessage(hwnd, OS.RB_GETBANDINFO, index, rbBand);
        rbBand.fStyle = wrap ? (rbBand.fStyle |= 1) : (rbBand.fStyle &= 0xFFFFFFFE);
        OS.SendMessage(hwnd, OS.RB_SETBANDINFO, index, rbBand);
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
}

