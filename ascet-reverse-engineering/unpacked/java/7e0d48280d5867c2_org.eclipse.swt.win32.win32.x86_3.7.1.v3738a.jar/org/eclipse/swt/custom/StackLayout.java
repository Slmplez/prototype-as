/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;

public class StackLayout
extends Layout {
    public int marginWidth = 0;
    public int marginHeight = 0;
    public Control topControl;

    protected Point computeSize(Composite composite, int wHint, int hHint, boolean flushCache) {
        Control[] children = composite.getChildren();
        int maxWidth = 0;
        int maxHeight = 0;
        int i = 0;
        while (i < children.length) {
            Point size = children[i].computeSize(wHint, hHint, flushCache);
            maxWidth = Math.max(size.x, maxWidth);
            maxHeight = Math.max(size.y, maxHeight);
            ++i;
        }
        int width = maxWidth + 2 * this.marginWidth;
        int height = maxHeight + 2 * this.marginHeight;
        if (wHint != -1) {
            width = wHint;
        }
        if (hHint != -1) {
            height = hHint;
        }
        return new Point(width, height);
    }

    protected boolean flushCache(Control control) {
        return true;
    }

    protected void layout(Composite composite, boolean flushCache) {
        Control[] children = composite.getChildren();
        Rectangle rect = composite.getClientArea();
        rect.x += this.marginWidth;
        rect.y += this.marginHeight;
        rect.width -= 2 * this.marginWidth;
        rect.height -= 2 * this.marginHeight;
        int i = 0;
        while (i < children.length) {
            children[i].setBounds(rect);
            children[i].setVisible(children[i] == this.topControl);
            ++i;
        }
    }

    String getName() {
        String string = this.getClass().getName();
        int index = string.lastIndexOf(46);
        if (index == -1) {
            return string;
        }
        return string.substring(index + 1, string.length());
    }

    public String toString() {
        String string = String.valueOf(this.getName()) + " {";
        if (this.marginWidth != 0) {
            string = String.valueOf(string) + "marginWidth=" + this.marginWidth + " ";
        }
        if (this.marginHeight != 0) {
            string = String.valueOf(string) + "marginHeight=" + this.marginHeight + " ";
        }
        if (this.topControl != null) {
            string = String.valueOf(string) + "topControl=" + this.topControl + " ";
        }
        string = string.trim();
        string = String.valueOf(string) + "}";
        return string;
    }
}

