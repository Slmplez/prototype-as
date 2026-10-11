/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.SWT;
import org.eclipse.swt.custom.CBannerLayout;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;

public class CBanner
extends Composite {
    Control left;
    Control right;
    Control bottom;
    boolean simple = true;
    int[] curve = new int[0];
    int curveStart = 0;
    Rectangle curveRect = new Rectangle(0, 0, 0, 0);
    int curve_width = 5;
    int curve_indent = -2;
    int rightWidth = -1;
    int rightMinWidth = 0;
    int rightMinHeight = 0;
    Cursor resizeCursor;
    boolean dragging = false;
    int rightDragDisplacement = 0;
    Listener listener;
    static final int OFFSCREEN = -200;
    static final int BORDER_BOTTOM = 2;
    static final int BORDER_TOP = 3;
    static final int BORDER_STRIPE = 1;
    static final int CURVE_TAIL = 200;
    static final int BEZIER_RIGHT = 30;
    static final int BEZIER_LEFT = 30;
    static final int MIN_LEFT = 10;
    static int BORDER1 = 20;

    public CBanner(Composite parent, int style) {
        super(parent, CBanner.checkStyle(style));
        super.setLayout(new CBannerLayout());
        this.resizeCursor = this.getDisplay().getSystemCursor(9);
        this.listener = new Listener(){

            public void handleEvent(Event e) {
                switch (e.type) {
                    case 12: {
                        CBanner.this.onDispose(e);
                        break;
                    }
                    case 3: {
                        CBanner.this.onMouseDown(e.x, e.y);
                        break;
                    }
                    case 7: {
                        CBanner.this.onMouseExit();
                        break;
                    }
                    case 5: {
                        CBanner.this.onMouseMove(e.x, e.y);
                        break;
                    }
                    case 4: {
                        CBanner.this.onMouseUp();
                        break;
                    }
                    case 9: {
                        CBanner.this.onPaint(e.gc);
                        break;
                    }
                    case 11: {
                        CBanner.this.onResize();
                    }
                }
            }
        };
        int[] events = new int[]{12, 3, 7, 5, 4, 9, 11};
        int i = 0;
        while (i < events.length) {
            this.addListener(events[i], this.listener);
            ++i;
        }
    }

    static int[] bezier(int x0, int y0, int x1, int y1, int x2, int y2, int x3, int y3, int count) {
        double a0 = x0;
        double a1 = 3 * (x1 - x0);
        double a2 = 3 * (x0 + x2 - 2 * x1);
        double a3 = x3 - x0 + 3 * x1 - 3 * x2;
        double b0 = y0;
        double b1 = 3 * (y1 - y0);
        double b2 = 3 * (y0 + y2 - 2 * y1);
        double b3 = y3 - y0 + 3 * y1 - 3 * y2;
        int[] polygon = new int[2 * count + 2];
        int i = 0;
        while (i <= count) {
            double t = (double)i / (double)count;
            polygon[2 * i] = (int)(a0 + a1 * t + a2 * t * t + a3 * t * t * t);
            polygon[2 * i + 1] = (int)(b0 + b1 * t + b2 * t * t + b3 * t * t * t);
            ++i;
        }
        return polygon;
    }

    static int checkStyle(int style) {
        return 0;
    }

    public Control getBottom() {
        this.checkWidget();
        return this.bottom;
    }

    public Rectangle getClientArea() {
        return new Rectangle(0, 0, 0, 0);
    }

    public Control getLeft() {
        this.checkWidget();
        return this.left;
    }

    public Control getRight() {
        this.checkWidget();
        return this.right;
    }

    public Point getRightMinimumSize() {
        this.checkWidget();
        return new Point(this.rightMinWidth, this.rightMinHeight);
    }

    public int getRightWidth() {
        this.checkWidget();
        if (this.right == null) {
            return 0;
        }
        if (this.rightWidth == -1) {
            Point size = this.right.computeSize(-1, -1, false);
            return size.x;
        }
        return this.rightWidth;
    }

    public boolean getSimple() {
        this.checkWidget();
        return this.simple;
    }

    void onDispose(Event event) {
        this.removeListener(12, this.listener);
        this.notifyListeners(12, event);
        event.type = 0;
        this.resizeCursor = null;
        this.left = null;
        this.right = null;
        this.bottom = null;
    }

    void onMouseDown(int x, int y) {
        if (this.curveRect.contains(x, y)) {
            this.dragging = true;
            this.rightDragDisplacement = this.curveStart - x + this.curve_width - this.curve_indent;
        }
    }

    void onMouseExit() {
        if (!this.dragging) {
            this.setCursor(null);
        }
    }

    void onMouseMove(int x, int y) {
        if (this.dragging) {
            Point size = this.getSize();
            if (x <= 0 || x >= size.x) {
                return;
            }
            this.rightWidth = Math.max(0, size.x - x - this.rightDragDisplacement);
            if (this.rightMinWidth == -1) {
                Point minSize = this.right.computeSize(this.rightMinWidth, this.rightMinHeight);
                this.rightWidth = Math.max(minSize.x, this.rightWidth);
            } else {
                this.rightWidth = Math.max(this.rightMinWidth, this.rightWidth);
            }
            this.layout(false);
            return;
        }
        if (this.curveRect.contains(x, y)) {
            this.setCursor(this.resizeCursor);
        } else {
            this.setCursor(null);
        }
    }

    void onMouseUp() {
        this.dragging = false;
    }

    void onPaint(GC gc) {
        if (this.left == null && this.right == null) {
            return;
        }
        Point size = this.getSize();
        Color border1 = this.getDisplay().getSystemColor(BORDER1);
        if (this.bottom != null) {
            int y = this.bottom.getBounds().y - 1 - 1;
            gc.setForeground(border1);
            gc.drawLine(0, y, size.x, y);
        }
        if (this.left == null || this.right == null) {
            return;
        }
        int[] line1 = new int[this.curve.length + 6];
        int index = 0;
        int x = this.curveStart;
        line1[index++] = x + 1;
        line1[index++] = size.y - 1;
        int i = 0;
        while (i < this.curve.length / 2) {
            line1[index++] = x + this.curve[2 * i];
            line1[index++] = this.curve[2 * i + 1];
            ++i;
        }
        line1[index++] = x + this.curve_width;
        line1[index++] = 0;
        line1[index++] = size.x;
        line1[index++] = 0;
        Color background = this.getBackground();
        if (this.getDisplay().getDepth() >= 15) {
            int[] line2 = new int[line1.length];
            index = 0;
            int i2 = 0;
            while (i2 < line1.length / 2) {
                line2[index] = line1[index++] - 1;
                line2[index] = line1[index++];
                ++i2;
            }
            int[] line3 = new int[line1.length];
            index = 0;
            int i3 = 0;
            while (i3 < line1.length / 2) {
                line3[index] = line1[index++] + 1;
                line3[index] = line1[index++];
                ++i3;
            }
            RGB from = border1.getRGB();
            RGB to = background.getRGB();
            int red = from.red + 3 * (to.red - from.red) / 4;
            int green = from.green + 3 * (to.green - from.green) / 4;
            int blue = from.blue + 3 * (to.blue - from.blue) / 4;
            Color color = new Color(this.getDisplay(), red, green, blue);
            gc.setForeground(color);
            gc.drawPolyline(line2);
            gc.drawPolyline(line3);
            color.dispose();
            int x1 = Math.max(0, this.curveStart - 200);
            gc.setForeground(background);
            gc.setBackground(border1);
            gc.fillGradientRectangle(x1, size.y - 1, this.curveStart - x1 + 1, 1, false);
        } else {
            int x1 = Math.max(0, this.curveStart - 200);
            gc.setForeground(border1);
            gc.drawLine(x1, size.y - 1, this.curveStart + 1, size.y - 1);
        }
        gc.setForeground(border1);
        gc.drawPolyline(line1);
    }

    void onResize() {
        this.updateCurve(this.getSize().y);
    }

    public void setBottom(Control control) {
        this.checkWidget();
        if (control != null && control.getParent() != this) {
            SWT.error(5);
        }
        if (this.bottom != null && !this.bottom.isDisposed()) {
            Point size = this.bottom.getSize();
            this.bottom.setLocation(-200 - size.x, -200 - size.y);
        }
        this.bottom = control;
        this.layout(false);
    }

    public void setLayout(Layout layout) {
        this.checkWidget();
    }

    public void setLeft(Control control) {
        this.checkWidget();
        if (control != null && control.getParent() != this) {
            SWT.error(5);
        }
        if (this.left != null && !this.left.isDisposed()) {
            Point size = this.left.getSize();
            this.left.setLocation(-200 - size.x, -200 - size.y);
        }
        this.left = control;
        this.layout(false);
    }

    public void setRight(Control control) {
        this.checkWidget();
        if (control != null && control.getParent() != this) {
            SWT.error(5);
        }
        if (this.right != null && !this.right.isDisposed()) {
            Point size = this.right.getSize();
            this.right.setLocation(-200 - size.x, -200 - size.y);
        }
        this.right = control;
        this.layout(false);
    }

    public void setRightMinimumSize(Point size) {
        this.checkWidget();
        if (size == null || size.x < -1 || size.y < -1) {
            SWT.error(5);
        }
        this.rightMinWidth = size.x;
        this.rightMinHeight = size.y;
        this.layout(false);
    }

    public void setRightWidth(int width) {
        this.checkWidget();
        if (width < -1) {
            SWT.error(5);
        }
        this.rightWidth = width;
        this.layout(false);
    }

    public void setSimple(boolean simple) {
        this.checkWidget();
        if (this.simple != simple) {
            this.simple = simple;
            if (simple) {
                this.curve_width = 5;
                this.curve_indent = -2;
            } else {
                this.curve_width = 50;
                this.curve_indent = 5;
            }
            this.updateCurve(this.getSize().y);
            this.layout(false);
            this.redraw();
        }
    }

    void updateCurve(int height) {
        int h = height - 1;
        if (this.simple) {
            int[] nArray = new int[14];
            nArray[1] = h;
            nArray[2] = 1;
            nArray[3] = h;
            nArray[4] = 2;
            nArray[5] = h - 1;
            nArray[6] = 3;
            nArray[7] = h - 2;
            nArray[8] = 3;
            nArray[9] = 2;
            nArray[10] = 4;
            nArray[11] = 1;
            nArray[12] = 5;
            this.curve = nArray;
        } else {
            this.curve = CBanner.bezier(0, h + 1, 30, h + 1, this.curve_width - 30, 0, this.curve_width, 0, this.curve_width);
        }
    }
}

