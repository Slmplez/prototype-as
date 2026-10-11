/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 */
package org.eclipse.ui.internal.forms.widgets;

import java.util.Hashtable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.ui.internal.forms.widgets.Locator;
import org.eclipse.ui.internal.forms.widgets.ParagraphSegment;
import org.eclipse.ui.internal.forms.widgets.SelectionData;

public abstract class ObjectSegment
extends ParagraphSegment {
    public static final int TOP = 1;
    public static final int MIDDLE = 2;
    public static final int BOTTOM = 3;
    private int alignment = 3;
    private boolean nowrap = false;
    private Rectangle bounds;
    private String objectId;

    public int getVerticalAlignment() {
        return this.alignment;
    }

    void setVerticalAlignment(int alignment) {
        this.alignment = alignment;
    }

    public String getObjectId() {
        return this.objectId;
    }

    void setObjectId(String objectId) {
        this.objectId = objectId;
    }

    protected abstract Point getObjectSize(Hashtable var1, int var2);

    public boolean advanceLocator(GC gc, int wHint, Locator loc, Hashtable objectTable, boolean computeHeightOnly) {
        Point objectSize = this.getObjectSize(objectTable, wHint);
        int iwidth = 0;
        int iheight = 0;
        boolean newLine = false;
        if (objectSize != null) {
            iwidth = objectSize.x + (this.isSelectable() ? 2 : 0);
            iheight = objectSize.y + (this.isSelectable() ? 2 : 0);
        }
        if (wHint != -1 && !this.nowrap && loc.x + iwidth + loc.marginWidth > wHint) {
            if (computeHeightOnly) {
                loc.collectHeights();
            }
            loc.resetCaret();
            loc.x += iwidth;
            loc.y += loc.rowHeight;
            loc.width = loc.x;
            loc.rowHeight = iheight;
            loc.leading = 0;
            newLine = true;
        } else {
            loc.x += iwidth;
            loc.width += iwidth;
            loc.rowHeight = Math.max(loc.rowHeight, iheight);
        }
        return newLine;
    }

    public boolean contains(int x, int y) {
        if (this.bounds == null) {
            return false;
        }
        return this.bounds.contains(x, y);
    }

    public boolean intersects(Rectangle rect) {
        if (this.bounds == null) {
            return false;
        }
        return this.bounds.intersects(rect);
    }

    public Rectangle getBounds() {
        return this.bounds;
    }

    public boolean isSelectable() {
        return false;
    }

    public boolean isNowrap() {
        return this.nowrap;
    }

    public void setNowrap(boolean nowrap) {
        this.nowrap = nowrap;
    }

    public void paint(GC gc, boolean hover, Hashtable resourceTable, boolean selected, SelectionData selData, Rectangle repaintRegion) {
    }

    public void layout(GC gc, int width, Locator loc, Hashtable resourceTable, boolean selected) {
        Point size = this.getObjectSize(resourceTable, width);
        int objWidth = 0;
        int objHeight = 0;
        if (size == null) {
            return;
        }
        objWidth = size.x + (this.isSelectable() ? 2 : 0);
        objHeight = size.y + (this.isSelectable() ? 2 : 0);
        loc.width = objWidth;
        if (!this.nowrap && loc.x + objWidth + loc.marginWidth > width) {
            loc.newLine();
            ++loc.rowCounter;
        }
        int ix = loc.x;
        int iy = loc.y;
        if (this.alignment == 2) {
            iy = loc.getMiddle(objHeight, false);
        } else if (this.alignment == 3) {
            iy = loc.getBaseline(objHeight, false);
        }
        loc.x += objWidth;
        loc.rowHeight = Math.max(loc.rowHeight, objHeight);
        this.bounds = new Rectangle(ix, iy, objWidth, objHeight);
    }

    public void computeSelection(GC gc, Hashtable resourceTable, SelectionData selData) {
    }
}

