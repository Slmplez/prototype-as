/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.events.ControlAdapter;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;

public class AnimatedProgress
extends Canvas {
    static final int SLEEP = 70;
    static final int DEFAULT_WIDTH = 160;
    static final int DEFAULT_HEIGHT = 18;
    boolean active = false;
    boolean showStripes = false;
    int value;
    int orientation = 256;
    boolean showBorder = false;

    public AnimatedProgress(Composite parent, int style) {
        super(parent, AnimatedProgress.checkStyle(style));
        if ((style & 0x200) != 0) {
            this.orientation = 512;
        }
        this.showBorder = (style & 0x800) != 0;
        this.addControlListener(new ControlAdapter(){

            public void controlResized(ControlEvent e) {
                AnimatedProgress.this.redraw();
            }
        });
        this.addPaintListener(new PaintListener(){

            public void paintControl(PaintEvent e) {
                AnimatedProgress.this.paint(e);
            }
        });
        this.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                AnimatedProgress.this.stop();
            }
        });
    }

    private static int checkStyle(int style) {
        int mask = 0;
        return style & mask;
    }

    public synchronized void clear() {
        this.checkWidget();
        if (this.active) {
            this.stop();
        }
        this.showStripes = false;
        this.redraw();
    }

    public Point computeSize(int wHint, int hHint, boolean changed) {
        this.checkWidget();
        Point size = null;
        size = this.orientation == 256 ? new Point(160, 18) : new Point(18, 160);
        if (wHint != -1) {
            size.x = wHint;
        }
        if (hHint != -1) {
            size.y = hHint;
        }
        return size;
    }

    private void drawBevelRect(GC gc, int x, int y, int w, int h, Color topleft, Color bottomright) {
        gc.setForeground(topleft);
        gc.drawLine(x, y, x + w - 1, y);
        gc.drawLine(x, y, x, y + h - 1);
        gc.setForeground(bottomright);
        gc.drawLine(x + w, y, x + w, y + h);
        gc.drawLine(x, y + h, x + w, y + h);
    }

    void paint(PaintEvent event) {
        GC gc = event.gc;
        Display disp = this.getDisplay();
        Rectangle rect = this.getClientArea();
        gc.fillRectangle(rect);
        if (this.showBorder) {
            this.drawBevelRect(gc, rect.x, rect.y, rect.width - 1, rect.height - 1, disp.getSystemColor(18), disp.getSystemColor(20));
        }
        this.paintStripes(gc);
    }

    void paintStripes(GC gc) {
        int foregroundValue;
        if (!this.showStripes) {
            return;
        }
        Rectangle rect = this.getClientArea();
        rect = new Rectangle(rect.x + 2, rect.y + 2, rect.width - 4, rect.height - 4);
        gc.setLineWidth(2);
        gc.setClipping(rect);
        Color color = this.getDisplay().getSystemColor(26);
        gc.setBackground(color);
        gc.fillRectangle(rect);
        gc.setForeground(this.getBackground());
        int step = 12;
        int n = foregroundValue = this.value == 0 ? step - 2 : this.value - 2;
        if (this.orientation == 256) {
            int y = rect.y - 1;
            int w = rect.width;
            int h = rect.height + 2;
            int i = 0;
            while (i < w) {
                int x = i + foregroundValue;
                gc.drawLine(x, y, x, h);
                i += step;
            }
        } else {
            int x = rect.x - 1;
            int w = rect.width + 2;
            int h = rect.height;
            int i = 0;
            while (i < h) {
                int y = i + foregroundValue;
                gc.drawLine(x, y, w, y);
                i += step;
            }
        }
        if (this.active) {
            this.value = (this.value + 2) % step;
        }
    }

    public synchronized void start() {
        Runnable[] timer;
        this.checkWidget();
        if (this.active) {
            return;
        }
        this.active = true;
        this.showStripes = true;
        final Display display = this.getDisplay();
        timer = new Runnable[]{new Runnable(){

            public void run() {
                if (!AnimatedProgress.this.active) {
                    return;
                }
                GC gc = new GC(AnimatedProgress.this);
                AnimatedProgress.this.paintStripes(gc);
                gc.dispose();
                display.timerExec(70, timer[0]);
            }
        }};
        display.timerExec(70, timer[0]);
    }

    public synchronized void stop() {
        this.active = false;
    }
}

