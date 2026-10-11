/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.events.PaintEvent
 *  org.eclipse.swt.events.PaintListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Canvas
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.CoolBar
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.ToolBar
 */
package org.eclipse.ui.internal;

import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.CoolBar;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.ui.themes.ColorUtil;

public class TrimFrame {
    private static int blend = 40;
    Canvas canvas = null;

    public TrimFrame(Composite parent) {
        this.createControl(parent);
    }

    private void createControl(Composite parent) {
        this.dispose();
        this.canvas = new Canvas(parent, 0);
        this.canvas.setBackground(parent.getDisplay().getSystemColor(22));
        this.canvas.addPaintListener(new PaintListener(){

            private void drawLine(GC gc, int x1, int y1, int x2, int y2, boolean flipXY) {
                if (flipXY) {
                    int tmp = x1;
                    x1 = y1;
                    y1 = tmp;
                    tmp = x2;
                    x2 = y2;
                    y2 = tmp;
                }
                gc.drawLine(x1, y1, x2, y2);
            }

            public void paintControl(PaintEvent e) {
                Canvas canvas = (Canvas)e.widget;
                Control child = canvas.getChildren()[0];
                boolean flipXY = false;
                if (child instanceof ToolBar && (((ToolBar)child).getStyle() & 0x200) != 0) {
                    flipXY = true;
                } else if (child instanceof CoolBar && (((CoolBar)child).getStyle() & 0x200) != 0) {
                    flipXY = true;
                }
                Rectangle bb = canvas.getBounds();
                int maxX = bb.width - 1;
                int maxY = bb.height - 1;
                if (flipXY) {
                    int tmp = maxX;
                    maxX = maxY;
                    maxY = tmp;
                }
                Color white = e.gc.getDevice().getSystemColor(1);
                Color shadow = e.gc.getDevice().getSystemColor(18);
                RGB outerRGB = ColorUtil.blend(white.getRGB(), shadow.getRGB(), blend);
                Color outerColor = new Color(e.gc.getDevice(), outerRGB);
                e.gc.setForeground(outerColor);
                this.drawLine(e.gc, 1, 0, maxX - 5, 0, flipXY);
                this.drawLine(e.gc, maxX - 4, 1, maxX - 3, 1, flipXY);
                this.drawLine(e.gc, maxX - 2, 2, maxX - 2, 2, flipXY);
                this.drawLine(e.gc, maxX - 1, 3, maxX - 1, 4, flipXY);
                this.drawLine(e.gc, 1, maxY, maxX - 5, maxY, flipXY);
                this.drawLine(e.gc, maxX - 4, maxY - 1, maxX - 3, maxY - 1, flipXY);
                this.drawLine(e.gc, maxX - 2, maxY - 2, maxX - 2, maxY - 2, flipXY);
                this.drawLine(e.gc, maxX - 1, maxY - 3, maxX - 1, maxY - 4, flipXY);
                this.drawLine(e.gc, 0, 1, 0, maxY - 1, flipXY);
                this.drawLine(e.gc, maxX, 5, maxX, maxY - 5, flipXY);
                outerColor.dispose();
                e.gc.setForeground(white);
                this.drawLine(e.gc, 1, 1, maxX - 5, 1, flipXY);
                this.drawLine(e.gc, maxX - 4, 2, maxX - 3, 2, flipXY);
                this.drawLine(e.gc, maxX - 3, 3, maxX - 2, 3, flipXY);
                this.drawLine(e.gc, maxX - 2, 4, maxX - 2, 4, flipXY);
                this.drawLine(e.gc, 1, maxY - 1, maxX - 5, maxY - 1, flipXY);
                this.drawLine(e.gc, maxX - 4, maxY - 2, maxX - 3, maxY - 2, flipXY);
                this.drawLine(e.gc, maxX - 3, maxY - 3, maxX - 2, maxY - 3, flipXY);
                this.drawLine(e.gc, maxX - 2, maxY - 4, maxX - 2, maxY - 4, flipXY);
                this.drawLine(e.gc, 1, 1, 1, maxY - 1, flipXY);
                this.drawLine(e.gc, maxX - 1, 5, maxX - 1, maxY - 5, flipXY);
            }
        });
        this.canvas.setLayout(new Layout(){

            protected Point computeSize(Composite composite, int wHint, int hHint, boolean changed) {
                Control[] children = composite.getChildren();
                if (children.length == 0) {
                    return new Point(0, 0);
                }
                Point innerSize = children[0].computeSize(hHint, wHint, changed);
                innerSize.x += 4;
                innerSize.y += 4;
                Control child = children[0];
                if (child instanceof CoolBar && (((CoolBar)child).getStyle() & 0x200) != 0) {
                    innerSize.y += 3;
                } else {
                    innerSize.x += 3;
                }
                return innerSize;
            }

            protected void layout(Composite composite, boolean flushCache) {
                Control[] children = composite.getChildren();
                if (children.length == 0) {
                    return;
                }
                children[0].setLocation(2, 2);
            }
        });
    }

    private void dispose() {
        if (this.canvas != null && !this.canvas.isDisposed()) {
            this.canvas.dispose();
        }
    }

    public Composite getComposite() {
        return this.canvas;
    }
}

