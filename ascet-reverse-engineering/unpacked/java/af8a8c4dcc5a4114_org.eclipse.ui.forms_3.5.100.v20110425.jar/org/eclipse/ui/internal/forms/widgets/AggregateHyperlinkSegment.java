/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Rectangle
 */
package org.eclipse.ui.internal.forms.widgets;

import java.util.Hashtable;
import java.util.Vector;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.ui.internal.forms.widgets.IHyperlinkSegment;
import org.eclipse.ui.internal.forms.widgets.ImageHyperlinkSegment;
import org.eclipse.ui.internal.forms.widgets.Locator;
import org.eclipse.ui.internal.forms.widgets.ParagraphSegment;
import org.eclipse.ui.internal.forms.widgets.SelectionData;
import org.eclipse.ui.internal.forms.widgets.TextHyperlinkSegment;

public class AggregateHyperlinkSegment
extends ParagraphSegment
implements IHyperlinkSegment {
    private String href;
    private Vector segments = new Vector();

    public void add(TextHyperlinkSegment segment) {
        this.segments.add(segment);
    }

    public void add(ImageHyperlinkSegment segment) {
        this.segments.add(segment);
    }

    public boolean advanceLocator(GC gc, int wHint, Locator loc, Hashtable objectTable, boolean computeHeightOnly) {
        boolean newLine = false;
        int i = 0;
        while (i < this.segments.size()) {
            ParagraphSegment segment = (ParagraphSegment)this.segments.get(i);
            if (segment.advanceLocator(gc, wHint, loc, objectTable, computeHeightOnly)) {
                newLine = true;
            }
            ++i;
        }
        return newLine;
    }

    public String getHref() {
        return this.href;
    }

    public void setHref(String href) {
        this.href = href;
    }

    public void paint(GC gc, boolean hover, Hashtable resourceTable, boolean selected, SelectionData selData, Rectangle repaintRegion) {
        int i = 0;
        while (i < this.segments.size()) {
            ParagraphSegment segment = (ParagraphSegment)this.segments.get(i);
            segment.paint(gc, hover, resourceTable, selected, selData, repaintRegion);
            ++i;
        }
    }

    public String getText() {
        StringBuffer buf = new StringBuffer();
        int i = 0;
        while (i < this.segments.size()) {
            IHyperlinkSegment segment = (IHyperlinkSegment)this.segments.get(i);
            buf.append(segment.getText());
            ++i;
        }
        return buf.toString();
    }

    public void paintFocus(GC gc, Color bg, Color fg, boolean selected, Rectangle repaintRegion) {
        int i = 0;
        while (i < this.segments.size()) {
            IHyperlinkSegment segment = (IHyperlinkSegment)this.segments.get(i);
            segment.paintFocus(gc, bg, fg, selected, repaintRegion);
            ++i;
        }
    }

    public Rectangle getBounds() {
        if (this.segments.size() == 0) {
            return new Rectangle(Integer.MAX_VALUE, Integer.MAX_VALUE, 0, 0);
        }
        IHyperlinkSegment segment0 = (IHyperlinkSegment)this.segments.get(0);
        Rectangle bounds = segment0.getBounds();
        int i = 1;
        while (i < this.segments.size()) {
            IHyperlinkSegment segment = (IHyperlinkSegment)this.segments.get(i);
            Rectangle sbounds = segment.getBounds();
            bounds.add(sbounds);
            ++i;
        }
        return bounds;
    }

    public boolean contains(int x, int y) {
        int i = 0;
        while (i < this.segments.size()) {
            IHyperlinkSegment segment = (IHyperlinkSegment)this.segments.get(i);
            if (segment.contains(x, y)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public boolean intersects(Rectangle rect) {
        int i = 0;
        while (i < this.segments.size()) {
            IHyperlinkSegment segment = (IHyperlinkSegment)this.segments.get(i);
            if (segment.intersects(rect)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public void layout(GC gc, int width, Locator locator, Hashtable resourceTable, boolean selected) {
        int i = 0;
        while (i < this.segments.size()) {
            ParagraphSegment segment = (ParagraphSegment)this.segments.get(i);
            segment.layout(gc, width, locator, resourceTable, selected);
            ++i;
        }
    }

    public void computeSelection(GC gc, Hashtable resourceTable, SelectionData selData) {
        int i = 0;
        while (i < this.segments.size()) {
            ParagraphSegment segment = (ParagraphSegment)this.segments.get(i);
            segment.computeSelection(gc, resourceTable, selData);
            ++i;
        }
    }

    public void clearCache(String fontId) {
        int i = 0;
        while (i < this.segments.size()) {
            ParagraphSegment segment = (ParagraphSegment)this.segments.get(i);
            segment.clearCache(fontId);
            ++i;
        }
    }

    public String getTooltipText() {
        if (this.segments.size() > 0) {
            return ((ParagraphSegment)this.segments.get(0)).getTooltipText();
        }
        return super.getTooltipText();
    }

    public boolean isFocusSelectable(Hashtable resourceTable) {
        return true;
    }

    public boolean setFocus(Hashtable resourceTable, boolean direction) {
        return true;
    }
}

