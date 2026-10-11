/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.events.PaintEvent
 *  org.eclipse.swt.events.PaintListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Rectangle
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.IPaintPositionManager;
import org.eclipse.jface.text.IPainter;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Rectangle;

public class MarginPainter
implements IPainter,
PaintListener {
    private StyledText fTextWidget;
    private int fMarginWidth = 80;
    private Color fColor;
    private int fLineStyle = 1;
    private int fLineWidth = 0;
    private int fCachedWidgetX = -1;
    private boolean fIsActive = false;

    public MarginPainter(ITextViewer textViewer) {
        this.fTextWidget = textViewer.getTextWidget();
    }

    public void setMarginRulerColumn(int width) {
        this.fMarginWidth = width;
        this.initialize();
    }

    public void setMarginRulerStyle(int lineStyle) {
        this.fLineStyle = lineStyle;
    }

    public void setMarginRulerWidth(int lineWidth) {
        if (lineWidth == 1) {
            lineWidth = 0;
        }
        this.fLineWidth = lineWidth;
    }

    public void setMarginRulerColor(Color color) {
        this.fColor = color;
    }

    public void initialize() {
        this.computeWidgetX();
        this.fTextWidget.redraw();
    }

    private void computeWidgetX() {
        GC gc = new GC((Drawable)this.fTextWidget);
        int pixels = gc.getFontMetrics().getAverageCharWidth();
        gc.dispose();
        this.fCachedWidgetX = pixels * this.fMarginWidth;
    }

    public void deactivate(boolean redraw) {
        if (this.fIsActive) {
            this.fIsActive = false;
            this.fCachedWidgetX = -1;
            this.fTextWidget.removePaintListener((PaintListener)this);
            if (redraw) {
                this.fTextWidget.redraw();
            }
        }
    }

    public void dispose() {
        this.fTextWidget = null;
    }

    public void paint(int reason) {
        if (!this.fIsActive) {
            this.fIsActive = true;
            this.fTextWidget.addPaintListener((PaintListener)this);
            if (this.fCachedWidgetX == -1) {
                this.computeWidgetX();
            }
            this.fTextWidget.redraw();
        } else if (16 == reason || 8 == reason) {
            this.fTextWidget.redraw();
        }
    }

    public void paintControl(PaintEvent e) {
        int x;
        if (this.fTextWidget != null && (x = this.fCachedWidgetX - this.fTextWidget.getHorizontalPixel()) >= 0) {
            Rectangle area = this.fTextWidget.getClientArea();
            e.gc.setForeground(this.fColor);
            e.gc.setLineStyle(this.fLineStyle);
            e.gc.setLineWidth(this.fLineWidth);
            e.gc.drawLine(x, 0, x, area.height);
        }
    }

    public void setPositionManager(IPaintPositionManager manager) {
    }
}

