/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.internal.win32.TCITEM;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.TabFolder;

public class TabItem
extends Item {
    TabFolder parent;
    Control control;
    String toolTipText;

    public TabItem(TabFolder parent, int style) {
        super(parent, style);
        this.parent = parent;
        parent.createItem(this, parent.getItemCount());
    }

    public TabItem(TabFolder parent, int style, int index) {
        super(parent, style);
        this.parent = parent;
        parent.createItem(this, index);
    }

    void _setText(int index, String string) {
        if (OS.COMCTL32_MAJOR >= 6 && this.image != null && string.indexOf(38) != -1) {
            int length = string.length();
            char[] text = new char[length];
            string.getChars(0, length, text, 0);
            int i = 0;
            int j = 0;
            i = 0;
            while (i < length) {
                if (text[i] != '&') {
                    text[j++] = text[i];
                }
                ++i;
            }
            if (j < i) {
                string = new String(text, 0, j);
            }
        }
        int hwnd = this.parent.handle;
        int hHeap = OS.GetProcessHeap();
        TCHAR buffer = new TCHAR(this.parent.getCodePage(), string, true);
        int byteCount = buffer.length() * TCHAR.sizeof;
        int pszText = OS.HeapAlloc(hHeap, 8, byteCount);
        OS.MoveMemory(pszText, buffer, byteCount);
        TCITEM tcItem = new TCITEM();
        tcItem.mask = 1;
        tcItem.pszText = pszText;
        OS.SendMessage(hwnd, OS.TCM_SETITEM, index, tcItem);
        OS.HeapFree(hHeap, 0, pszText);
    }

    protected void checkSubclass() {
        if (!this.isValidSubclass()) {
            this.error(43);
        }
    }

    void destroyWidget() {
        this.parent.destroyItem(this);
        this.releaseHandle();
    }

    public Control getControl() {
        this.checkWidget();
        return this.control;
    }

    public Rectangle getBounds() {
        this.checkWidget();
        int index = this.parent.indexOf(this);
        if (index == -1) {
            return new Rectangle(0, 0, 0, 0);
        }
        RECT itemRect = new RECT();
        OS.SendMessage(this.parent.handle, 4874, index, itemRect);
        return new Rectangle(itemRect.left, itemRect.top, itemRect.right - itemRect.left, itemRect.bottom - itemRect.top);
    }

    public TabFolder getParent() {
        this.checkWidget();
        return this.parent;
    }

    public String getToolTipText() {
        this.checkWidget();
        return this.toolTipText;
    }

    void releaseHandle() {
        super.releaseHandle();
        this.parent = null;
    }

    void releaseParent() {
        super.releaseParent();
        int index = this.parent.indexOf(this);
        if (index == this.parent.getSelectionIndex() && this.control != null) {
            this.control.setVisible(false);
        }
    }

    void releaseWidget() {
        super.releaseWidget();
        this.control = null;
    }

    public void setControl(Control control) {
        int selectionIndex;
        this.checkWidget();
        if (control != null) {
            if (control.isDisposed()) {
                this.error(5);
            }
            if (control.parent != this.parent) {
                this.error(32);
            }
        }
        if (this.control != null && this.control.isDisposed()) {
            this.control = null;
        }
        Control oldControl = this.control;
        Control newControl = control;
        this.control = control;
        int index = this.parent.indexOf(this);
        if (index != (selectionIndex = this.parent.getSelectionIndex()) && newControl != null) {
            Control selectedControl;
            if (selectionIndex != -1 && (selectedControl = this.parent.getItem(selectionIndex).getControl()) == newControl) {
                return;
            }
            newControl.setVisible(false);
            return;
        }
        if (newControl != null) {
            newControl.setBounds(this.parent.getClientArea());
            newControl.setVisible(true);
        }
        if (oldControl != null) {
            oldControl.setVisible(false);
        }
    }

    public void setImage(Image image) {
        this.checkWidget();
        int index = this.parent.indexOf(this);
        if (index == -1) {
            return;
        }
        super.setImage(image);
        if (OS.COMCTL32_MAJOR >= 6 && this.text.indexOf(38) != -1) {
            this._setText(index, this.text);
        }
        int hwnd = this.parent.handle;
        TCITEM tcItem = new TCITEM();
        tcItem.mask = 2;
        tcItem.iImage = this.parent.imageIndex(image);
        OS.SendMessage(hwnd, OS.TCM_SETITEM, index, tcItem);
    }

    public void setText(String string) {
        this.checkWidget();
        if (string == null) {
            this.error(4);
        }
        if (string.equals(this.text)) {
            return;
        }
        int index = this.parent.indexOf(this);
        if (index == -1) {
            return;
        }
        super.setText(string);
        this._setText(index, string);
    }

    public void setToolTipText(String string) {
        this.checkWidget();
        this.toolTipText = string;
    }
}

