/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.TrayItem;
import org.eclipse.swt.widgets.Widget;

public class Tray
extends Widget {
    int itemCount;
    TrayItem[] items = new TrayItem[4];

    Tray(Display display, int style) {
        if (display == null) {
            display = Display.getCurrent();
        }
        if (display == null) {
            display = Display.getDefault();
        }
        if (!display.isValidThread()) {
            this.error(22);
        }
        this.display = display;
        this.reskinWidget();
    }

    void createItem(TrayItem item, int index) {
        if (index < 0 || index > this.itemCount) {
            this.error(6);
        }
        if (this.itemCount == this.items.length) {
            TrayItem[] newItems = new TrayItem[this.items.length + 4];
            System.arraycopy(this.items, 0, newItems, 0, this.items.length);
            this.items = newItems;
        }
        System.arraycopy(this.items, index, this.items, index + 1, this.itemCount++ - index);
        this.items[index] = item;
    }

    void destroyItem(TrayItem item) {
        int index = 0;
        while (index < this.itemCount) {
            if (this.items[index] == item) break;
            ++index;
        }
        if (index == this.itemCount) {
            return;
        }
        System.arraycopy(this.items, index + 1, this.items, index, --this.itemCount - index);
        this.items[this.itemCount] = null;
    }

    public TrayItem getItem(int index) {
        this.checkWidget();
        if (index < 0 || index >= this.itemCount) {
            this.error(6);
        }
        return this.items[index];
    }

    public int getItemCount() {
        this.checkWidget();
        return this.itemCount;
    }

    public TrayItem[] getItems() {
        this.checkWidget();
        TrayItem[] result = new TrayItem[this.itemCount];
        System.arraycopy(this.items, 0, result, 0, result.length);
        return result;
    }

    void releaseChildren(boolean destroy) {
        if (this.items != null) {
            int i = 0;
            while (i < this.items.length) {
                TrayItem item = this.items[i];
                if (item != null && !item.isDisposed()) {
                    item.release(false);
                }
                ++i;
            }
            this.items = null;
        }
        super.releaseChildren(destroy);
    }

    void releaseParent() {
        super.releaseParent();
        if (this.display.tray == this) {
            this.display.tray = null;
        }
    }

    void reskinChildren(int flags) {
        if (this.items != null) {
            int i = 0;
            while (i < this.items.length) {
                TrayItem item = this.items[i];
                if (item != null) {
                    item.reskin(flags);
                }
                ++i;
            }
        }
        super.reskinChildren(flags);
    }
}

