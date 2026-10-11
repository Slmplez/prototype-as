/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.custom.StyleRange
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.graphics.TextLayout
 *  org.eclipse.swt.graphics.TextStyle
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 */
package org.eclipse.jface.viewers;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.viewers.ColumnViewer;
import org.eclipse.jface.viewers.OwnerDrawLabelProvider;
import org.eclipse.jface.viewers.StyledString;
import org.eclipse.jface.viewers.ViewerCell;
import org.eclipse.jface.viewers.ViewerColumn;
import org.eclipse.jface.viewers.ViewerRow;
import org.eclipse.swt.custom.StyleRange;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.TextLayout;
import org.eclipse.swt.graphics.TextStyle;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;

public abstract class StyledCellLabelProvider
extends OwnerDrawLabelProvider {
    public static final int COLORS_ON_SELECTION = 1;
    public static final int NO_FOCUS = 2;
    private static final int OWNER_DRAW_ENABLED = 16;
    private int style;
    private TextLayout cachedTextLayout;
    private ColumnViewer viewer;
    private ViewerColumn column;
    private int deltaOfLastMeasure;

    public StyledCellLabelProvider() {
        this(0);
    }

    public StyledCellLabelProvider(int style) {
        this.style = style & 3 | 0x10;
    }

    public boolean isOwnerDrawEnabled() {
        return (this.style & 0x10) != 0;
    }

    public void setOwnerDrawEnabled(boolean enabled) {
        boolean isEnabled = this.isOwnerDrawEnabled();
        if (isEnabled != enabled) {
            this.style = enabled ? (this.style |= 0x10) : (this.style &= 0xFFFFFFEF);
            if (this.viewer != null) {
                this.setOwnerDrawEnabled(this.viewer, this.column, enabled);
            }
        }
    }

    protected final ColumnViewer getViewer() {
        return this.viewer;
    }

    protected final ViewerColumn getColumn() {
        return this.column;
    }

    public void initialize(ColumnViewer viewer, ViewerColumn column) {
        Assert.isTrue((this.viewer == null && this.column == null ? 1 : 0) != 0, (String)"Label provider instance already in use");
        this.viewer = viewer;
        this.column = column;
        super.initialize(viewer, column, this.isOwnerDrawEnabled());
    }

    public void dispose() {
        if (this.cachedTextLayout != null) {
            this.cachedTextLayout.dispose();
            this.cachedTextLayout = null;
        }
        this.viewer = null;
        this.column = null;
        super.dispose();
    }

    public void update(ViewerCell cell) {
        super.update(cell);
    }

    private TextLayout getSharedTextLayout(Display display) {
        if (this.cachedTextLayout == null) {
            int orientation = this.viewer.getControl().getStyle() & 0x6000000;
            this.cachedTextLayout = new TextLayout((Device)display);
            this.cachedTextLayout.setOrientation(orientation);
        }
        return this.cachedTextLayout;
    }

    private boolean useColors(Event event) {
        return (event.detail & 2) == 0 || (this.style & 1) != 0;
    }

    private boolean drawFocus(Event event) {
        return (event.detail & 4) != 0 && (this.style & 2) == 0;
    }

    protected StyleRange prepareStyleRange(StyleRange styleRange, boolean applyColors) {
        if (!(applyColors || styleRange.foreground == null && styleRange.background == null)) {
            styleRange = (StyleRange)styleRange.clone();
            if (!applyColors) {
                styleRange.foreground = null;
                styleRange.background = null;
            }
        }
        return styleRange;
    }

    private ViewerCell getViewerCell(Event event, Object element) {
        ViewerRow row = this.viewer.getViewerRowFromItem(event.item);
        return new ViewerCell(row, event.index, element);
    }

    protected void erase(Event event, Object element) {
        if (this.isOwnerDrawEnabled()) {
            event.detail &= 0xFFFFFFEF;
        }
    }

    protected void measure(Event event, Object element) {
        if (!this.isOwnerDrawEnabled()) {
            return;
        }
        ViewerCell cell = this.getViewerCell(event, element);
        boolean applyColors = this.useColors(event);
        TextLayout layout = this.getSharedTextLayout(event.display);
        int textWidthDelta = this.deltaOfLastMeasure = this.updateTextLayout(layout, cell, applyColors);
        event.width += textWidthDelta;
    }

    private int updateTextLayout(TextLayout layout, ViewerCell cell, boolean applyColors) {
        layout.setStyle(null, 0, Integer.MAX_VALUE);
        layout.setText(cell.getText());
        layout.setFont(cell.getFont());
        int originalTextWidth = layout.getBounds().width;
        boolean containsOtherFont = false;
        StyleRange[] styleRanges = cell.getStyleRanges();
        if (styleRanges != null) {
            int i = 0;
            while (i < styleRanges.length) {
                StyleRange curr = this.prepareStyleRange(styleRanges[i], applyColors);
                layout.setStyle((TextStyle)curr, curr.start, curr.start + curr.length - 1);
                if (curr.font != null) {
                    containsOtherFont = true;
                }
                ++i;
            }
        }
        int textWidthDelta = 0;
        if (containsOtherFont) {
            textWidthDelta = layout.getBounds().width - originalTextWidth;
        }
        return textWidthDelta;
    }

    protected void paint(Event event, Object element) {
        Rectangle textBounds;
        Rectangle imageBounds;
        Image image;
        if (!this.isOwnerDrawEnabled()) {
            return;
        }
        ViewerCell cell = this.getViewerCell(event, element);
        boolean applyColors = this.useColors(event);
        GC gc = event.gc;
        Color oldForeground = gc.getForeground();
        Color oldBackground = gc.getBackground();
        if (applyColors) {
            Color background;
            Color foreground = cell.getForeground();
            if (foreground != null) {
                gc.setForeground(foreground);
            }
            if ((background = cell.getBackground()) != null) {
                gc.setBackground(background);
            }
        }
        if ((image = cell.getImage()) != null && (imageBounds = cell.getImageBounds()) != null) {
            Rectangle bounds = image.getBounds();
            int x = imageBounds.x + Math.max(0, (imageBounds.width - bounds.width) / 2);
            int y = imageBounds.y + Math.max(0, (imageBounds.height - bounds.height) / 2);
            gc.drawImage(image, x, y);
        }
        if ((textBounds = cell.getTextBounds()) != null) {
            TextLayout textLayout = this.getSharedTextLayout(event.display);
            Rectangle layoutBounds = textLayout.getBounds();
            int x = textBounds.x;
            int y = textBounds.y + Math.max(0, (textBounds.height - layoutBounds.height) / 2);
            textLayout.draw(gc, x, y);
        }
        if (this.drawFocus(event)) {
            Rectangle focusBounds = cell.getViewerRow().getBounds();
            gc.drawFocus(focusBounds.x, focusBounds.y, focusBounds.width + this.deltaOfLastMeasure, focusBounds.height);
        }
        if (applyColors) {
            gc.setForeground(oldForeground);
            gc.setBackground(oldBackground);
        }
    }

    public static StyledString styleDecoratedString(String decoratedString, StyledString.Styler decorationStyler, StyledString styledString) {
        String label = styledString.getString();
        int originalStart = decoratedString.indexOf(label);
        if (originalStart == -1) {
            return new StyledString(decoratedString);
        }
        if (decoratedString.length() == label.length()) {
            return styledString;
        }
        if (originalStart > 0) {
            StyledString newString = new StyledString(decoratedString.substring(0, originalStart), decorationStyler);
            newString.append(styledString);
            styledString = newString;
        }
        if (decoratedString.length() > originalStart + label.length()) {
            return styledString.append(decoratedString.substring(originalStart + label.length()), decorationStyler);
        }
        return styledString;
    }
}

