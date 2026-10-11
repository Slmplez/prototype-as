/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.layout;

import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.RowData;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;

public final class RowLayout
extends Layout {
    public int type = 256;
    public int marginWidth = 0;
    public int marginHeight = 0;
    public int spacing = 3;
    public boolean wrap = true;
    public boolean pack = true;
    public boolean fill = false;
    public boolean center = false;
    public boolean justify = false;
    public int marginLeft = 3;
    public int marginTop = 3;
    public int marginRight = 3;
    public int marginBottom = 3;

    public RowLayout() {
    }

    public RowLayout(int type) {
        this.type = type;
    }

    protected Point computeSize(Composite composite, int wHint, int hHint, boolean flushCache) {
        Point extent = this.type == 256 ? this.layoutHorizontal(composite, false, wHint != -1 && this.wrap, wHint, flushCache) : this.layoutVertical(composite, false, hHint != -1 && this.wrap, hHint, flushCache);
        if (wHint != -1) {
            extent.x = wHint;
        }
        if (hHint != -1) {
            extent.y = hHint;
        }
        return extent;
    }

    Point computeSize(Control control, boolean flushCache) {
        int wHint = -1;
        int hHint = -1;
        RowData data = (RowData)control.getLayoutData();
        if (data != null) {
            wHint = data.width;
            hHint = data.height;
        }
        return control.computeSize(wHint, hHint, flushCache);
    }

    protected boolean flushCache(Control control) {
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
        Rectangle clientArea = composite.getClientArea();
        if (this.type == 256) {
            this.layoutHorizontal(composite, true, this.wrap, clientArea.width, flushCache);
        } else {
            this.layoutVertical(composite, true, this.wrap, clientArea.height, flushCache);
        }
    }

    Point layoutHorizontal(Composite composite, boolean move, boolean wrap, int width, boolean flushCache) {
        Control[] children = composite.getChildren();
        int count = 0;
        int i = 0;
        while (i < children.length) {
            Control control = children[i];
            RowData data = (RowData)control.getLayoutData();
            if (data == null || !data.exclude) {
                children[count++] = children[i];
            }
            ++i;
        }
        if (count == 0) {
            return new Point(this.marginLeft + this.marginWidth * 2 + this.marginRight, this.marginTop + this.marginHeight * 2 + this.marginBottom);
        }
        int childWidth = 0;
        int childHeight = 0;
        int maxHeight = 0;
        if (!this.pack) {
            int i2 = 0;
            while (i2 < count) {
                Control child = children[i2];
                Point size = this.computeSize(child, flushCache);
                childWidth = Math.max(childWidth, size.x);
                childHeight = Math.max(childHeight, size.y);
                ++i2;
            }
            maxHeight = childHeight;
        }
        int clientX = 0;
        int clientY = 0;
        if (move) {
            Rectangle rect = composite.getClientArea();
            clientX = rect.x;
            clientY = rect.y;
        }
        int[] wraps = null;
        boolean wrapped = false;
        Rectangle[] bounds = null;
        if (move && (this.justify || this.fill || this.center)) {
            bounds = new Rectangle[count];
            wraps = new int[count];
        }
        int maxX = 0;
        int x = this.marginLeft + this.marginWidth;
        int y = this.marginTop + this.marginHeight;
        int i3 = 0;
        while (i3 < count) {
            Control child = children[i3];
            if (this.pack) {
                Point size = this.computeSize(child, flushCache);
                childWidth = size.x;
                childHeight = size.y;
            }
            if (wrap && i3 != 0 && x + childWidth > width) {
                wrapped = true;
                if (move && (this.justify || this.fill || this.center)) {
                    wraps[i3 - 1] = maxHeight;
                }
                x = this.marginLeft + this.marginWidth;
                y += this.spacing + maxHeight;
                if (this.pack) {
                    maxHeight = 0;
                }
            }
            if (this.pack || this.fill || this.center) {
                maxHeight = Math.max(maxHeight, childHeight);
            }
            if (move) {
                int childX = x + clientX;
                int childY = y + clientY;
                if (this.justify || this.fill || this.center) {
                    bounds[i3] = new Rectangle(childX, childY, childWidth, childHeight);
                } else {
                    child.setBounds(childX, childY, childWidth, childHeight);
                }
            }
            maxX = Math.max(maxX, x += this.spacing + childWidth);
            ++i3;
        }
        maxX = Math.max(clientX + this.marginLeft + this.marginWidth, maxX - this.spacing);
        if (!wrapped) {
            maxX += this.marginRight + this.marginWidth;
        }
        if (move && (this.justify || this.fill || this.center)) {
            int space = 0;
            int margin = 0;
            if (!wrapped) {
                space = Math.max(0, (width - maxX) / (count + 1));
                margin = Math.max(0, (width - maxX) % (count + 1) / 2);
            } else if (this.fill || this.justify || this.center) {
                int last = 0;
                if (count > 0) {
                    wraps[count - 1] = maxHeight;
                }
                int i4 = 0;
                while (i4 < count) {
                    if (wraps[i4] != 0) {
                        int wrapCount = i4 - last + 1;
                        if (this.justify) {
                            int wrapX = 0;
                            int j = last;
                            while (j <= i4) {
                                wrapX += bounds[j].width + this.spacing;
                                ++j;
                            }
                            space = Math.max(0, (width - wrapX) / (wrapCount + 1));
                            margin = Math.max(0, (width - wrapX) % (wrapCount + 1) / 2);
                        }
                        int j = last;
                        while (j <= i4) {
                            if (this.justify) {
                                bounds[j].x += space * (j - last + 1) + margin;
                            }
                            if (this.fill) {
                                bounds[j].height = wraps[i4];
                            } else if (this.center) {
                                bounds[j].y += Math.max(0, (wraps[i4] - bounds[j].height) / 2);
                            }
                            ++j;
                        }
                        last = i4 + 1;
                    }
                    ++i4;
                }
            }
            int i5 = 0;
            while (i5 < count) {
                if (!wrapped) {
                    if (this.justify) {
                        bounds[i5].x += space * (i5 + 1) + margin;
                    }
                    if (this.fill) {
                        bounds[i5].height = maxHeight;
                    } else if (this.center) {
                        bounds[i5].y += Math.max(0, (maxHeight - bounds[i5].height) / 2);
                    }
                }
                children[i5].setBounds(bounds[i5]);
                ++i5;
            }
        }
        return new Point(maxX, y + maxHeight + this.marginBottom + this.marginHeight);
    }

    Point layoutVertical(Composite composite, boolean move, boolean wrap, int height, boolean flushCache) {
        Control[] children = composite.getChildren();
        int count = 0;
        int i = 0;
        while (i < children.length) {
            Control control = children[i];
            RowData data = (RowData)control.getLayoutData();
            if (data == null || !data.exclude) {
                children[count++] = children[i];
            }
            ++i;
        }
        if (count == 0) {
            return new Point(this.marginLeft + this.marginWidth * 2 + this.marginRight, this.marginTop + this.marginHeight * 2 + this.marginBottom);
        }
        int childWidth = 0;
        int childHeight = 0;
        int maxWidth = 0;
        if (!this.pack) {
            int i2 = 0;
            while (i2 < count) {
                Control child = children[i2];
                Point size = this.computeSize(child, flushCache);
                childWidth = Math.max(childWidth, size.x);
                childHeight = Math.max(childHeight, size.y);
                ++i2;
            }
            maxWidth = childWidth;
        }
        int clientX = 0;
        int clientY = 0;
        if (move) {
            Rectangle rect = composite.getClientArea();
            clientX = rect.x;
            clientY = rect.y;
        }
        int[] wraps = null;
        boolean wrapped = false;
        Rectangle[] bounds = null;
        if (move && (this.justify || this.fill || this.center)) {
            bounds = new Rectangle[count];
            wraps = new int[count];
        }
        int maxY = 0;
        int x = this.marginLeft + this.marginWidth;
        int y = this.marginTop + this.marginHeight;
        int i3 = 0;
        while (i3 < count) {
            Control child = children[i3];
            if (this.pack) {
                Point size = this.computeSize(child, flushCache);
                childWidth = size.x;
                childHeight = size.y;
            }
            if (wrap && i3 != 0 && y + childHeight > height) {
                wrapped = true;
                if (move && (this.justify || this.fill || this.center)) {
                    wraps[i3 - 1] = maxWidth;
                }
                x += this.spacing + maxWidth;
                y = this.marginTop + this.marginHeight;
                if (this.pack) {
                    maxWidth = 0;
                }
            }
            if (this.pack || this.fill || this.center) {
                maxWidth = Math.max(maxWidth, childWidth);
            }
            if (move) {
                int childX = x + clientX;
                int childY = y + clientY;
                if (this.justify || this.fill || this.center) {
                    bounds[i3] = new Rectangle(childX, childY, childWidth, childHeight);
                } else {
                    child.setBounds(childX, childY, childWidth, childHeight);
                }
            }
            maxY = Math.max(maxY, y += this.spacing + childHeight);
            ++i3;
        }
        maxY = Math.max(clientY + this.marginTop + this.marginHeight, maxY - this.spacing);
        if (!wrapped) {
            maxY += this.marginBottom + this.marginHeight;
        }
        if (move && (this.justify || this.fill || this.center)) {
            int space = 0;
            int margin = 0;
            if (!wrapped) {
                space = Math.max(0, (height - maxY) / (count + 1));
                margin = Math.max(0, (height - maxY) % (count + 1) / 2);
            } else if (this.fill || this.justify || this.center) {
                int last = 0;
                if (count > 0) {
                    wraps[count - 1] = maxWidth;
                }
                int i4 = 0;
                while (i4 < count) {
                    if (wraps[i4] != 0) {
                        int wrapCount = i4 - last + 1;
                        if (this.justify) {
                            int wrapY = 0;
                            int j = last;
                            while (j <= i4) {
                                wrapY += bounds[j].height + this.spacing;
                                ++j;
                            }
                            space = Math.max(0, (height - wrapY) / (wrapCount + 1));
                            margin = Math.max(0, (height - wrapY) % (wrapCount + 1) / 2);
                        }
                        int j = last;
                        while (j <= i4) {
                            if (this.justify) {
                                bounds[j].y += space * (j - last + 1) + margin;
                            }
                            if (this.fill) {
                                bounds[j].width = wraps[i4];
                            } else if (this.center) {
                                bounds[j].x += Math.max(0, (wraps[i4] - bounds[j].width) / 2);
                            }
                            ++j;
                        }
                        last = i4 + 1;
                    }
                    ++i4;
                }
            }
            int i5 = 0;
            while (i5 < count) {
                if (!wrapped) {
                    if (this.justify) {
                        bounds[i5].y += space * (i5 + 1) + margin;
                    }
                    if (this.fill) {
                        bounds[i5].width = maxWidth;
                    } else if (this.center) {
                        bounds[i5].x += Math.max(0, (maxWidth - bounds[i5].width) / 2);
                    }
                }
                children[i5].setBounds(bounds[i5]);
                ++i5;
            }
        }
        return new Point(x + maxWidth + this.marginRight + this.marginWidth, maxY);
    }

    public String toString() {
        String string = String.valueOf(this.getName()) + " {";
        string = String.valueOf(string) + "type=" + (this.type != 256 ? "SWT.VERTICAL" : "SWT.HORIZONTAL") + " ";
        if (this.marginWidth != 0) {
            string = String.valueOf(string) + "marginWidth=" + this.marginWidth + " ";
        }
        if (this.marginHeight != 0) {
            string = String.valueOf(string) + "marginHeight=" + this.marginHeight + " ";
        }
        if (this.marginLeft != 0) {
            string = String.valueOf(string) + "marginLeft=" + this.marginLeft + " ";
        }
        if (this.marginTop != 0) {
            string = String.valueOf(string) + "marginTop=" + this.marginTop + " ";
        }
        if (this.marginRight != 0) {
            string = String.valueOf(string) + "marginRight=" + this.marginRight + " ";
        }
        if (this.marginBottom != 0) {
            string = String.valueOf(string) + "marginBottom=" + this.marginBottom + " ";
        }
        if (this.spacing != 0) {
            string = String.valueOf(string) + "spacing=" + this.spacing + " ";
        }
        string = String.valueOf(string) + "wrap=" + this.wrap + " ";
        string = String.valueOf(string) + "pack=" + this.pack + " ";
        string = String.valueOf(string) + "fill=" + this.fill + " ";
        string = String.valueOf(string) + "justify=" + this.justify + " ";
        string = string.trim();
        string = String.valueOf(string) + "}";
        return string;
    }
}

