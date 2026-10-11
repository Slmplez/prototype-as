/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.internal.presentations.util;

import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.internal.dnd.DragUtil;
import org.eclipse.ui.internal.presentations.util.AbstractTabFolder;
import org.eclipse.ui.internal.presentations.util.AbstractTabItem;
import org.eclipse.ui.internal.presentations.util.TabDragHandler;
import org.eclipse.ui.presentations.StackDropResult;

public class ReplaceDragHandler
extends TabDragHandler {
    private AbstractTabFolder tabFolder;

    public ReplaceDragHandler(AbstractTabFolder folder) {
        this.tabFolder = folder;
    }

    public StackDropResult dragOver(Control currentControl, Point location, int dragStart) {
        AbstractTabItem tabUnderPointer = this.tabFolder.getItem(location);
        if (tabUnderPointer == null) {
            Rectangle titleArea = this.tabFolder.getTabArea();
            if (titleArea.contains(location) && this.tabFolder.getItemCount() > 0) {
                int dragOverIndex = this.tabFolder.getItemCount();
                AbstractTabItem lastTab = this.tabFolder.getItem(dragOverIndex - 1);
                if (!lastTab.isShowing()) {
                    return null;
                }
                Rectangle lastTabBounds = lastTab.getBounds();
                if (lastTabBounds.isEmpty()) {
                    return null;
                }
                if (dragStart >= 0) {
                    return new StackDropResult(lastTabBounds, new Integer(--dragOverIndex));
                }
                Rectangle dropRectangle = titleArea;
                dropRectangle.x = lastTabBounds.x + lastTabBounds.width;
                dropRectangle.width = 3 * dropRectangle.height;
                return new StackDropResult(dropRectangle, new Integer(dragOverIndex));
            }
            Rectangle displayBounds = DragUtil.getDisplayBounds(this.tabFolder.getControl());
            int closestSide = Geometry.getClosestSide((Rectangle)displayBounds, (Point)location);
            if (closestSide == this.tabFolder.getTabPosition()) {
                return new StackDropResult(displayBounds, null);
            }
            return null;
        }
        if (!tabUnderPointer.isShowing()) {
            return null;
        }
        Rectangle tabBounds = tabUnderPointer.getBounds();
        if (tabBounds.isEmpty()) {
            return null;
        }
        return new StackDropResult(tabBounds, new DragCookie(this.tabFolder.indexOf(tabUnderPointer)));
    }

    public int getInsertionPosition(Object cookie) {
        if (cookie instanceof DragCookie) {
            return Math.min(this.tabFolder.getItemCount(), ((DragCookie)cookie).insertPosition);
        }
        return this.tabFolder.getItemCount();
    }

    private final class DragCookie {
        int insertPosition;

        public DragCookie(int pos) {
            this.insertPosition = pos;
        }
    }
}

