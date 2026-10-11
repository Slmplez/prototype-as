/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.events.PaintEvent
 *  org.eclipse.swt.events.PaintListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Canvas
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.internal.dnd;

import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.themes.ColorUtil;

public class DragBorder {
    private Composite clientControl = null;
    private Control dragControl = null;
    private Canvas border = null;
    private Color baseColor;
    private Color hilightColor;
    private boolean isHighlight;

    public DragBorder(Composite client, Control toDrag, boolean provideFrame) {
        this.clientControl = client;
        this.dragControl = toDrag;
        Point dragSize = toDrag.getSize();
        this.border = new Canvas(this.dragControl.getParent(), 0);
        this.border.setSize(dragSize.x + 2, dragSize.y + 2);
        this.baseColor = this.border.getDisplay().getSystemColor(26);
        RGB background = this.border.getDisplay().getSystemColor(25).getRGB();
        RGB blended = ColorUtil.blend(this.baseColor.getRGB(), background);
        this.hilightColor = new Color((Device)this.border.getDisplay(), blended);
        this.border.moveAbove(null);
        this.dragControl.moveAbove(null);
        if (provideFrame) {
            this.border.addPaintListener(new PaintListener(){

                public void paintControl(PaintEvent e) {
                    if (DragBorder.this.isHighlight) {
                        e.gc.setForeground(DragBorder.this.hilightColor);
                    } else {
                        e.gc.setForeground(DragBorder.this.baseColor);
                    }
                    Rectangle bb = DragBorder.this.border.getBounds();
                    e.gc.drawRectangle(0, 0, bb.width - 1, bb.height - 1);
                }
            });
        }
    }

    public void setLocation(Point newPos, int alignment) {
        if (alignment == 0x1000000) {
            Point size = this.border.getSize();
            this.border.setLocation(newPos.x - size.x / 2, newPos.y - size.y / 2);
        } else if (alignment == 128) {
            this.border.setLocation(newPos.x, newPos.y);
        } else {
            this.border.setLocation(newPos.x, newPos.y - this.border.getSize().y);
        }
        Rectangle bb = this.border.getBounds();
        Rectangle cr = this.clientControl.getClientArea();
        Geometry.moveInside((Rectangle)bb, (Rectangle)cr);
        this.border.moveAbove(null);
        this.dragControl.moveAbove(null);
        this.dragControl.setLocation(bb.x + 1, bb.y + 1);
        this.border.setBounds(bb);
    }

    public void setHighlight(boolean highlight) {
        this.isHighlight = highlight;
        this.border.redraw();
    }

    public void dispose() {
        this.hilightColor.dispose();
        this.border.dispose();
    }

    public Rectangle getBounds() {
        return this.border.getBounds();
    }
}

