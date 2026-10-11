/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.layout;

import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.FormAttachment;
import org.eclipse.swt.layout.FormData;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Scrollable;

public final class FormLayout
extends Layout {
    public int marginWidth = 0;
    public int marginHeight = 0;
    public int marginLeft = 0;
    public int marginTop = 0;
    public int marginRight = 0;
    public int marginBottom = 0;
    public int spacing = 0;

    int computeHeight(Control control, FormData data, boolean flushCache) {
        FormAttachment top = data.getTopAttachment(control, this.spacing, flushCache);
        FormAttachment bottom = data.getBottomAttachment(control, this.spacing, flushCache);
        FormAttachment height = bottom.minus(top);
        if (height.numerator == 0) {
            if (bottom.numerator == 0) {
                return bottom.offset;
            }
            if (bottom.numerator == bottom.denominator) {
                return -top.offset;
            }
            if (bottom.offset <= 0) {
                return -top.offset * top.denominator / bottom.numerator;
            }
            int divider = bottom.denominator - bottom.numerator;
            return bottom.denominator * bottom.offset / divider;
        }
        return height.solveY(data.getHeight(control, flushCache));
    }

    protected Point computeSize(Composite composite, int wHint, int hHint, boolean flushCache) {
        Point size = this.layout(composite, false, 0, 0, wHint, hHint, flushCache);
        if (wHint != -1) {
            size.x = wHint;
        }
        if (hHint != -1) {
            size.y = hHint;
        }
        return size;
    }

    protected boolean flushCache(Control control) {
        Object data = control.getLayoutData();
        if (data != null) {
            ((FormData)data).flushCache();
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

    int computeWidth(Control control, FormData data, boolean flushCache) {
        FormAttachment left = data.getLeftAttachment(control, this.spacing, flushCache);
        FormAttachment right = data.getRightAttachment(control, this.spacing, flushCache);
        FormAttachment width = right.minus(left);
        if (width.numerator == 0) {
            if (right.numerator == 0) {
                return right.offset;
            }
            if (right.numerator == right.denominator) {
                return -left.offset;
            }
            if (right.offset <= 0) {
                return -left.offset * left.denominator / left.numerator;
            }
            int divider = right.denominator - right.numerator;
            return right.denominator * right.offset / divider;
        }
        return width.solveY(data.getWidth(control, flushCache));
    }

    protected void layout(Composite composite, boolean flushCache) {
        Rectangle rect = composite.getClientArea();
        int x = rect.x + this.marginLeft + this.marginWidth;
        int y = rect.y + this.marginTop + this.marginHeight;
        int width = Math.max(0, rect.width - this.marginLeft - 2 * this.marginWidth - this.marginRight);
        int height = Math.max(0, rect.height - this.marginTop - 2 * this.marginHeight - this.marginBottom);
        this.layout(composite, true, x, y, width, height, flushCache);
    }

    Point layout(Composite composite, boolean move, int x, int y, int width, int height, boolean flushCache) {
        FormData data;
        Control child;
        Control[] children = composite.getChildren();
        int i = 0;
        while (i < children.length) {
            Control child2 = children[i];
            FormData data2 = (FormData)child2.getLayoutData();
            if (data2 == null) {
                data2 = new FormData();
                child2.setLayoutData(data2);
            }
            if (flushCache) {
                data2.flushCache();
            }
            data2.cacheBottom = null;
            data2.cacheTop = null;
            data2.cacheRight = null;
            data2.cacheLeft = null;
            ++i;
        }
        boolean[] flush = null;
        Rectangle[] bounds = null;
        int w = 0;
        int h = 0;
        int i2 = 0;
        while (i2 < children.length) {
            child = children[i2];
            data = (FormData)child.getLayoutData();
            if (width != -1) {
                data.needed = false;
                FormAttachment left = data.getLeftAttachment(child, this.spacing, flushCache);
                FormAttachment right = data.getRightAttachment(child, this.spacing, flushCache);
                int x1 = left.solveX(width);
                int x2 = right.solveX(width);
                if (data.height == -1 && !data.needed) {
                    int trim = 0;
                    if (child instanceof Scrollable) {
                        Rectangle rect = ((Scrollable)child).computeTrim(0, 0, 0, 0);
                        trim = rect.width;
                    } else {
                        trim = child.getBorderWidth() * 2;
                    }
                    data.cacheHeight = -1;
                    data.cacheWidth = -1;
                    int currentWidth = Math.max(0, x2 - x1 - trim);
                    data.computeSize(child, currentWidth, data.height, flushCache);
                    if (flush == null) {
                        flush = new boolean[children.length];
                    }
                    flush[i2] = true;
                }
                w = Math.max(x2, w);
                if (move) {
                    if (bounds == null) {
                        bounds = new Rectangle[children.length];
                    }
                    bounds[i2] = new Rectangle(0, 0, 0, 0);
                    bounds[i2].x = x + x1;
                    bounds[i2].width = x2 - x1;
                }
            } else {
                w = Math.max(this.computeWidth(child, data, flushCache), w);
            }
            ++i2;
        }
        i2 = 0;
        while (i2 < children.length) {
            child = children[i2];
            data = (FormData)child.getLayoutData();
            if (height != -1) {
                int y1 = data.getTopAttachment(child, this.spacing, flushCache).solveX(height);
                int y2 = data.getBottomAttachment(child, this.spacing, flushCache).solveX(height);
                h = Math.max(y2, h);
                if (move) {
                    bounds[i2].y = y + y1;
                    bounds[i2].height = y2 - y1;
                }
            } else {
                h = Math.max(this.computeHeight(child, data, flushCache), h);
            }
            ++i2;
        }
        i2 = 0;
        while (i2 < children.length) {
            child = children[i2];
            data = (FormData)child.getLayoutData();
            if (flush != null && flush[i2]) {
                data.cacheHeight = -1;
                data.cacheWidth = -1;
            }
            data.cacheBottom = null;
            data.cacheTop = null;
            data.cacheRight = null;
            data.cacheLeft = null;
            ++i2;
        }
        if (move) {
            i2 = 0;
            while (i2 < children.length) {
                children[i2].setBounds(bounds[i2]);
                ++i2;
            }
        }
        return new Point(w += this.marginLeft + this.marginWidth * 2 + this.marginRight, h += this.marginTop + this.marginHeight * 2 + this.marginBottom);
    }

    public String toString() {
        String string = String.valueOf(this.getName()) + " {";
        if (this.marginWidth != 0) {
            string = String.valueOf(string) + "marginWidth=" + this.marginWidth + " ";
        }
        if (this.marginHeight != 0) {
            string = String.valueOf(string) + "marginHeight=" + this.marginHeight + " ";
        }
        if (this.marginLeft != 0) {
            string = String.valueOf(string) + "marginLeft=" + this.marginLeft + " ";
        }
        if (this.marginRight != 0) {
            string = String.valueOf(string) + "marginRight=" + this.marginRight + " ";
        }
        if (this.marginTop != 0) {
            string = String.valueOf(string) + "marginTop=" + this.marginTop + " ";
        }
        if (this.marginBottom != 0) {
            string = String.valueOf(string) + "marginBottom=" + this.marginBottom + " ";
        }
        if (this.spacing != 0) {
            string = String.valueOf(string) + "spacing=" + this.spacing + " ";
        }
        string = string.trim();
        string = String.valueOf(string) + "}";
        return string;
    }
}

