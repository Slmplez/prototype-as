/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.ui.forms.widgets;

import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.ui.forms.widgets.ColumnLayoutData;
import org.eclipse.ui.forms.widgets.ILayoutExtension;
import org.eclipse.ui.internal.forms.widgets.ColumnLayoutUtils;

public final class ColumnLayout
extends Layout
implements ILayoutExtension {
    public int minNumColumns = 1;
    public int maxNumColumns = 3;
    public int horizontalSpacing = 5;
    public int verticalSpacing = 5;
    public int topMargin = 5;
    public int leftMargin = 5;
    public int bottomMargin = 5;
    public int rightMargin = 5;

    protected Point computeSize(Composite composite, int wHint, int hHint, boolean flushCache) {
        if (wHint == 0) {
            return this.computeSize(composite, wHint, hHint, this.minNumColumns);
        }
        if (wHint == -1) {
            return this.computeSize(composite, wHint, hHint, this.maxNumColumns);
        }
        return this.computeSize(composite, wHint, hHint, -1);
    }

    private Point computeSize(Composite parent, int wHint, int hHint, int ncolumns) {
        Control[] children = parent.getChildren();
        int cwidth = 0;
        int cheight = 0;
        Point[] sizes = new Point[children.length];
        int cwHint = -1;
        if (ncolumns != -1) {
            cwHint = wHint - this.leftMargin - this.rightMargin - (ncolumns - 1) * this.horizontalSpacing;
            cwHint = cwHint <= 0 ? 0 : (cwHint /= ncolumns);
        }
        int i = 0;
        while (i < children.length) {
            sizes[i] = this.computeControlSize(children[i], cwHint);
            cwidth = Math.max(cwidth, sizes[i].x);
            cheight += sizes[i].y;
            ++i;
        }
        if (ncolumns == -1) {
            ncolumns = (wHint - this.leftMargin - this.rightMargin - this.horizontalSpacing) / (cwidth + this.horizontalSpacing);
            ncolumns = Math.min(ncolumns, children.length);
            ncolumns = Math.max(ncolumns, this.minNumColumns);
            ncolumns = Math.min(ncolumns, this.maxNumColumns);
        }
        int perColHeight = ColumnLayoutUtils.computeColumnHeight(ncolumns, sizes, cheight, this.verticalSpacing);
        int colHeight = 0;
        int[] heights = new int[ncolumns];
        int ncol = 0;
        boolean fillIn = false;
        int i2 = 0;
        while (i2 < sizes.length) {
            int childHeight = sizes[i2].y;
            if (i2 > 0 && colHeight + childHeight > perColHeight) {
                heights[ncol] = colHeight;
                if (++ncol == ncolumns || fillIn) {
                    fillIn = true;
                    ncol = this.findShortestColumn(heights);
                }
                colHeight = heights[ncol];
            }
            if (colHeight > 0) {
                colHeight += this.verticalSpacing;
            }
            colHeight += childHeight;
            ++i2;
        }
        heights[ncol] = Math.max(heights[ncol], colHeight);
        Point size = new Point(0, 0);
        int i3 = 0;
        while (i3 < ncolumns) {
            size.y = Math.max(size.y, heights[i3]);
            ++i3;
        }
        size.x = cwidth * ncolumns + (ncolumns - 1) * this.horizontalSpacing;
        size.x += this.leftMargin + this.rightMargin;
        size.y += this.topMargin + this.bottomMargin;
        return size;
    }

    private Point computeControlSize(Control c, int wHint) {
        ColumnLayoutData cd = (ColumnLayoutData)c.getLayoutData();
        int widthHint = cd != null ? cd.widthHint : wHint;
        int heightHint = cd != null ? cd.heightHint : -1;
        return c.computeSize(widthHint, heightHint);
    }

    private int findShortestColumn(int[] heights) {
        int result = 0;
        int height = Integer.MAX_VALUE;
        int i = 0;
        while (i < heights.length) {
            if (height > heights[i]) {
                height = heights[i];
                result = i;
            }
            ++i;
        }
        return result;
    }

    protected void layout(Composite parent, boolean flushCache) {
        Control[] children = parent.getChildren();
        Rectangle carea = parent.getClientArea();
        int cwidth = 0;
        int cheight = 0;
        Point[] sizes = new Point[children.length];
        int i = 0;
        while (i < children.length) {
            sizes[i] = this.computeControlSize(children[i], -1);
            cwidth = Math.max(cwidth, sizes[i].x);
            cheight += sizes[i].y;
            ++i;
        }
        int ncolumns = (carea.width - this.leftMargin - this.rightMargin + this.horizontalSpacing) / (cwidth + this.horizontalSpacing);
        ncolumns = Math.min(ncolumns, children.length);
        ncolumns = Math.max(ncolumns, this.minNumColumns);
        ncolumns = Math.min(ncolumns, this.maxNumColumns);
        int realWidth = (carea.width - this.leftMargin - this.rightMargin + this.horizontalSpacing) / ncolumns - this.horizontalSpacing;
        int fillWidth = Math.max(cwidth, realWidth);
        int perColHeight = ColumnLayoutUtils.computeColumnHeight(ncolumns, sizes, cheight, this.verticalSpacing);
        int colHeight = 0;
        int[] heights = new int[ncolumns];
        int ncol = 0;
        int x = this.leftMargin;
        boolean fillIn = false;
        int i2 = 0;
        while (i2 < sizes.length) {
            int childWidth;
            Control child = children[i2];
            Point csize = sizes[i2];
            ColumnLayoutData cd = (ColumnLayoutData)child.getLayoutData();
            int align = cd != null ? cd.horizontalAlignment : 4;
            int n = childWidth = align == 4 ? fillWidth : csize.x;
            if (i2 > 0 && colHeight + csize.y > perColHeight) {
                heights[ncol] = colHeight;
                if (fillIn || ncol == ncolumns - 1) {
                    fillIn = true;
                    ncol = this.findShortestColumn(heights);
                    x = this.leftMargin + ncol * (fillWidth + this.horizontalSpacing);
                } else {
                    ++ncol;
                    x += fillWidth + this.horizontalSpacing;
                }
                colHeight = heights[ncol];
            }
            if (colHeight > 0) {
                colHeight += this.verticalSpacing;
            }
            switch (align) {
                case 1: 
                case 4: {
                    child.setBounds(x, this.topMargin + colHeight, childWidth, csize.y);
                    break;
                }
                case 3: {
                    child.setBounds(x + fillWidth - childWidth, this.topMargin + colHeight, childWidth, csize.y);
                    break;
                }
                case 2: {
                    child.setBounds(x + fillWidth / 2 - childWidth / 2, this.topMargin + colHeight, childWidth, csize.y);
                }
            }
            colHeight += csize.y;
            ++i2;
        }
    }

    public int computeMaximumWidth(Composite parent, boolean changed) {
        return this.computeSize((Composite)parent, (int)-1, (int)-1, (boolean)changed).x;
    }

    public int computeMinimumWidth(Composite parent, boolean changed) {
        return this.computeSize((Composite)parent, (int)0, (int)-1, (boolean)changed).x;
    }
}

