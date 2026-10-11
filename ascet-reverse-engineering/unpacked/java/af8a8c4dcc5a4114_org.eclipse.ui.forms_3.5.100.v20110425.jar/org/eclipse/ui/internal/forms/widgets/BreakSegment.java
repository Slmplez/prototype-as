/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.FontMetrics
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Rectangle
 */
package org.eclipse.ui.internal.forms.widgets;

import java.util.Hashtable;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.ui.internal.forms.widgets.Locator;
import org.eclipse.ui.internal.forms.widgets.ParagraphSegment;
import org.eclipse.ui.internal.forms.widgets.SelectionData;

public class BreakSegment
extends ParagraphSegment {
    public boolean advanceLocator(GC gc, int wHint, Locator locator, Hashtable objectTable, boolean computeHeightOnly) {
        if (locator.rowHeight == 0) {
            FontMetrics fm = gc.getFontMetrics();
            locator.rowHeight = fm.getHeight();
        }
        if (computeHeightOnly) {
            locator.collectHeights();
        }
        locator.resetCaret();
        locator.width = locator.x;
        locator.y += locator.rowHeight;
        locator.rowHeight = 0;
        locator.leading = 0;
        return true;
    }

    public void paint(GC gc, boolean hover, Hashtable resourceTable, boolean selected, SelectionData selData, Rectangle repaintRegion) {
    }

    public boolean contains(int x, int y) {
        return false;
    }

    public boolean intersects(Rectangle rect) {
        return false;
    }

    public void layout(GC gc, int width, Locator locator, Hashtable ResourceTable, boolean selected) {
        locator.resetCaret();
        if (locator.rowHeight == 0) {
            FontMetrics fm = gc.getFontMetrics();
            locator.rowHeight = fm.getHeight();
        }
        locator.y += locator.rowHeight;
        locator.rowHeight = 0;
        ++locator.rowCounter;
    }

    public void computeSelection(GC gc, Hashtable resourceTable, SelectionData selData) {
        selData.markNewLine();
    }
}

