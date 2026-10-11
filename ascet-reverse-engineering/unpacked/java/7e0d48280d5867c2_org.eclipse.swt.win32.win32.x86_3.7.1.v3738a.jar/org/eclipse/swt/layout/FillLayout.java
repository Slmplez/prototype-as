/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.layout;

import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.FillData;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Scrollable;

public final class FillLayout
extends Layout {
    public int type = 256;
    public int marginWidth = 0;
    public int marginHeight = 0;
    public int spacing = 0;

    public FillLayout() {
    }

    public FillLayout(int type) {
        this.type = type;
    }

    protected Point computeSize(Composite composite, int wHint, int hHint, boolean flushCache) {
        Control[] children = composite.getChildren();
        int count = children.length;
        int maxWidth = 0;
        int maxHeight = 0;
        int i = 0;
        while (i < count) {
            Control child = children[i];
            int w = wHint;
            int h = hHint;
            if (count > 0) {
                if (this.type == 256 && wHint != -1) {
                    w = Math.max(0, (wHint - (count - 1) * this.spacing) / count);
                }
                if (this.type == 512 && hHint != -1) {
                    h = Math.max(0, (hHint - (count - 1) * this.spacing) / count);
                }
            }
            Point size = this.computeChildSize(child, w, h, flushCache);
            maxWidth = Math.max(maxWidth, size.x);
            maxHeight = Math.max(maxHeight, size.y);
            ++i;
        }
        int width = 0;
        int height = 0;
        if (this.type == 256) {
            width = count * maxWidth;
            if (count != 0) {
                width += (count - 1) * this.spacing;
            }
            height = maxHeight;
        } else {
            width = maxWidth;
            height = count * maxHeight;
            if (count != 0) {
                height += (count - 1) * this.spacing;
            }
        }
        width += this.marginWidth * 2;
        height += this.marginHeight * 2;
        if (wHint != -1) {
            width = wHint;
        }
        if (hHint != -1) {
            height = hHint;
        }
        return new Point(width, height);
    }

    Point computeChildSize(Control control, int wHint, int hHint, boolean flushCache) {
        FillData data = (FillData)control.getLayoutData();
        if (data == null) {
            data = new FillData();
            control.setLayoutData(data);
        }
        Point size = null;
        if (wHint == -1 && hHint == -1) {
            size = data.computeSize(control, wHint, hHint, flushCache);
        } else {
            int trimY;
            int trimX;
            if (control instanceof Scrollable) {
                Rectangle rect = ((Scrollable)control).computeTrim(0, 0, 0, 0);
                trimX = rect.width;
                trimY = rect.height;
            } else {
                trimX = trimY = control.getBorderWidth() * 2;
            }
            int w = wHint == -1 ? wHint : Math.max(0, wHint - trimX);
            int h = hHint == -1 ? hHint : Math.max(0, hHint - trimY);
            size = data.computeSize(control, w, h, flushCache);
        }
        return size;
    }

    protected boolean flushCache(Control control) {
        Object data = control.getLayoutData();
        if (data != null) {
            ((FillData)data).flushCache();
        }
        return true;
    }

    String getName() {
        String string = this.getClass().getName();
        int index = string.lastIndexOf(46);
        if (index == -1) {
            return string;
        }
        return string.substring(index + 1, string.length());
    }

    protected void layout(Composite composite, boolean flushCache) {
        Rectangle rect = composite.getClientArea();
        Control[] children = composite.getChildren();
        int count = children.length;
        if (count == 0) {
            return;
        }
        int width = rect.width - this.marginWidth * 2;
        int height = rect.height - this.marginHeight * 2;
        if (this.type == 256) {
            int x = rect.x + this.marginWidth;
            int extra = (width -= (count - 1) * this.spacing) % count;
            int y = rect.y + this.marginHeight;
            int cellWidth = width / count;
            int i = 0;
            while (i < count) {
                Control child = children[i];
                int childWidth = cellWidth;
                if (i == 0) {
                    childWidth += extra / 2;
                } else if (i == count - 1) {
                    childWidth += (extra + 1) / 2;
                }
                child.setBounds(x, y, childWidth, height);
                x += childWidth + this.spacing;
                ++i;
            }
        } else {
            int x = rect.x + this.marginWidth;
            int cellHeight = (height -= (count - 1) * this.spacing) / count;
            int y = rect.y + this.marginHeight;
            int extra = height % count;
            int i = 0;
            while (i < count) {
                Control child = children[i];
                int childHeight = cellHeight;
                if (i == 0) {
                    childHeight += extra / 2;
                } else if (i == count - 1) {
                    childHeight += (extra + 1) / 2;
                }
                child.setBounds(x, y, width, childHeight);
                y += childHeight + this.spacing;
                ++i;
            }
        }
    }

    public String toString() {
        String string = String.valueOf(this.getName()) + " {";
        string = String.valueOf(string) + "type=" + (this.type == 512 ? "SWT.VERTICAL" : "SWT.HORIZONTAL") + " ";
        if (this.marginWidth != 0) {
            string = String.valueOf(string) + "marginWidth=" + this.marginWidth + " ";
        }
        if (this.marginHeight != 0) {
            string = String.valueOf(string) + "marginHeight=" + this.marginHeight + " ";
        }
        if (this.spacing != 0) {
            string = String.valueOf(string) + "spacing=" + this.spacing + " ";
        }
        string = string.trim();
        string = String.valueOf(string) + "}";
        return string;
    }
}

