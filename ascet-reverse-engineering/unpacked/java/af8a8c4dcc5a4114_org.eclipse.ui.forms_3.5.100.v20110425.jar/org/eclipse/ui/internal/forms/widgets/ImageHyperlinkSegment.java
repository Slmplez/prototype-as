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
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.ui.internal.forms.widgets.IHyperlinkSegment;
import org.eclipse.ui.internal.forms.widgets.ImageSegment;

public class ImageHyperlinkSegment
extends ImageSegment
implements IHyperlinkSegment {
    private String href;
    private String text;
    private String tooltipText;

    public void setHref(String href) {
        this.href = href;
    }

    public String getHref() {
        return this.href;
    }

    public void paintFocus(GC gc, Color bg, Color fg, boolean selected, Rectangle repaintRegion) {
        Rectangle bounds = this.getBounds();
        if (bounds == null) {
            return;
        }
        if (selected) {
            gc.setBackground(bg);
            gc.setForeground(fg);
            gc.drawFocus(bounds.x, bounds.y, bounds.width, bounds.height);
        } else {
            gc.setForeground(bg);
            gc.drawRectangle(bounds.x, bounds.y, bounds.width - 1, bounds.height - 1);
        }
    }

    public boolean isWordWrapAllowed() {
        return !this.isNowrap();
    }

    public void setWordWrapAllowed(boolean value) {
        this.setNowrap(!value);
    }

    public String getText() {
        return this.text != null ? this.text : "";
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getTooltipText() {
        return this.tooltipText;
    }

    public void setTooltipText(String tooltipText) {
        this.tooltipText = tooltipText;
    }

    public boolean isSelectable() {
        return true;
    }

    public boolean isFocusSelectable(Hashtable resourceTable) {
        return true;
    }

    public boolean setFocus(Hashtable resourceTable, boolean direction) {
        return true;
    }
}

