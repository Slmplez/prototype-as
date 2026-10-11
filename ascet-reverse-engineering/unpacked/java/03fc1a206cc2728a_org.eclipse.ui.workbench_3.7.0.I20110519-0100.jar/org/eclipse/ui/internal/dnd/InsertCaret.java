/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Canvas
 *  org.eclipse.swt.widgets.Composite
 */
package org.eclipse.ui.internal.dnd;

import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.themes.ColorUtil;

public class InsertCaret {
    private static final int width = 6;
    private static final int pctInset = 10;
    private Canvas caretControl;
    private Canvas end1;
    private Canvas end2;
    private Color baseColor;
    private Color hilightColor;
    private boolean isHighlight;

    public InsertCaret(Composite parent, Rectangle trimRect, int swtSide, int threshold) {
        this.baseColor = parent.getDisplay().getSystemColor(26);
        RGB background = parent.getDisplay().getSystemColor(25).getRGB();
        RGB blended = ColorUtil.blend(this.baseColor.getRGB(), background);
        this.hilightColor = new Color((Device)parent.getDisplay(), blended);
        this.createControl(parent, trimRect, swtSide, threshold);
    }

    private void createControl(Composite parent, Rectangle trimRect, int swtSide, int threshold) {
        int hDelta = trimRect.width / 10;
        int vDelta = trimRect.height / 10;
        this.caretControl = new Canvas((Composite)parent.getShell(), 2048);
        this.end1 = new Canvas((Composite)parent.getShell(), 2048);
        this.end1.setSize(6, 6);
        this.end2 = new Canvas((Composite)parent.getShell(), 2048);
        this.end2.setSize(6, 6);
        switch (swtSide) {
            case 128: {
                this.caretControl.setSize(trimRect.width - 2 * hDelta, 6);
                this.caretControl.setLocation(trimRect.x + hDelta, trimRect.y + trimRect.height + threshold);
                Rectangle bb = this.caretControl.getBounds();
                this.end1.setLocation(bb.x, bb.y - 6);
                this.end2.setLocation(bb.x + bb.width - 6, bb.y - 6);
                break;
            }
            case 1024: {
                this.caretControl.setSize(trimRect.width - 2 * hDelta, 6);
                this.caretControl.setLocation(trimRect.x + hDelta, trimRect.y - threshold);
                Rectangle bb = this.caretControl.getBounds();
                this.end1.setLocation(bb.x, bb.y + 6);
                this.end2.setLocation(bb.x + bb.width - 6, bb.y + 6);
                break;
            }
            case 16384: {
                this.caretControl.setSize(6, trimRect.height - 2 * vDelta);
                this.caretControl.setLocation(trimRect.x + trimRect.width + threshold, trimRect.y + vDelta);
                Rectangle bb = this.caretControl.getBounds();
                this.end1.setLocation(bb.x - bb.width, bb.y);
                this.end2.setLocation(bb.x - bb.width, bb.y + bb.height - 6);
                break;
            }
            case 131072: {
                this.caretControl.setSize(6, trimRect.height - 2 * vDelta);
                this.caretControl.setLocation(trimRect.x - threshold, trimRect.y + vDelta);
                Rectangle bb = this.caretControl.getBounds();
                this.end1.setLocation(bb.x + bb.width, bb.y);
                this.end2.setLocation(bb.x + bb.width, bb.y + bb.height - 6);
            }
        }
        this.setHighlight(false);
        this.caretControl.moveAbove(null);
        this.end1.moveAbove(null);
        this.end2.moveAbove(null);
    }

    public void setHighlight(boolean highlight) {
        this.isHighlight = highlight;
        if (this.isHighlight) {
            this.caretControl.setBackground(this.hilightColor);
            this.end1.setBackground(this.hilightColor);
            this.end2.setBackground(this.hilightColor);
        } else {
            this.caretControl.setBackground(this.baseColor);
            this.end1.setBackground(this.baseColor);
            this.end2.setBackground(this.baseColor);
        }
    }

    public void dispose() {
        this.hilightColor.dispose();
        this.caretControl.dispose();
        this.end1.dispose();
        this.end2.dispose();
    }
}

