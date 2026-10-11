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
import org.eclipse.ui.forms.HyperlinkSettings;
import org.eclipse.ui.internal.forms.widgets.IHyperlinkSegment;
import org.eclipse.ui.internal.forms.widgets.SelectionData;
import org.eclipse.ui.internal.forms.widgets.TextSegment;

public class TextHyperlinkSegment
extends TextSegment
implements IHyperlinkSegment {
    private String href;
    private String tooltipText;
    private HyperlinkSettings settings;

    public TextHyperlinkSegment(String text, HyperlinkSettings settings, String fontId) {
        super(text, fontId);
        this.settings = settings;
    }

    public String getHref() {
        return this.href;
    }

    public void setHref(String href) {
        this.href = href;
    }

    public void paint(GC gc, boolean hover, Hashtable resourceTable, boolean selected, SelectionData selData, Rectangle repaintRegion) {
        Color newFg;
        boolean rolloverMode = this.settings.getHyperlinkUnderlineMode() == 2;
        this.underline = this.settings.getHyperlinkUnderlineMode() == 3;
        Color savedFg = gc.getForeground();
        Color color = newFg = hover ? this.settings.getActiveForeground() : this.settings.getForeground();
        if (newFg != null) {
            gc.setForeground(newFg);
        }
        super.paint(gc, hover, resourceTable, selected, rolloverMode, selData, repaintRegion);
        gc.setForeground(savedFg);
    }

    protected void drawText(GC gc, String s, int clipX, int clipY) {
        gc.drawText(s, clipX, clipY, false);
    }

    public String getTooltipText() {
        return this.tooltipText;
    }

    public void setTooltipText(String tooltip) {
        this.tooltipText = tooltip;
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

