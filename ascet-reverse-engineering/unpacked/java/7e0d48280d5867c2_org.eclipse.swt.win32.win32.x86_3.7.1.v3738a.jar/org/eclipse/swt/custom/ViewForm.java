/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.SWT;
import org.eclipse.swt.custom.ViewFormLayout;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;

public class ViewForm
extends Composite {
    public int marginWidth = 0;
    public int marginHeight = 0;
    public int horizontalSpacing = 1;
    public int verticalSpacing = 1;
    public static RGB borderInsideRGB = new RGB(132, 130, 132);
    public static RGB borderMiddleRGB = new RGB(143, 141, 138);
    public static RGB borderOutsideRGB = new RGB(171, 168, 165);
    Control topLeft;
    Control topCenter;
    Control topRight;
    Control content;
    boolean separateTopCenter = false;
    boolean showBorder = false;
    int separator = -1;
    int borderTop = 0;
    int borderBottom = 0;
    int borderLeft = 0;
    int borderRight = 0;
    int highlight = 0;
    Point oldSize;
    Color selectionBackground;
    Listener listener;
    static final int OFFSCREEN = -200;
    static final int BORDER1_COLOR = 18;
    static final int SELECTION_BACKGROUND = 25;

    public ViewForm(Composite parent, int style) {
        super(parent, ViewForm.checkStyle(style));
        super.setLayout(new ViewFormLayout());
        this.setBorderVisible((style & 0x800) != 0);
        this.listener = new Listener(){

            public void handleEvent(Event e) {
                switch (e.type) {
                    case 12: {
                        ViewForm.this.onDispose(e);
                        break;
                    }
                    case 9: {
                        ViewForm.this.onPaint(e.gc);
                        break;
                    }
                    case 11: {
                        ViewForm.this.onResize();
                    }
                }
            }
        };
        int[] events = new int[]{12, 9, 11};
        int i = 0;
        while (i < events.length) {
            this.addListener(events[i], this.listener);
            ++i;
        }
    }

    static int checkStyle(int style) {
        int mask = 0x6800000;
        return style & mask | 0x100000;
    }

    public Rectangle computeTrim(int x, int y, int width, int height) {
        this.checkWidget();
        int trimX = x - this.borderLeft - this.highlight;
        int trimY = y - this.borderTop - this.highlight;
        int trimWidth = width + this.borderLeft + this.borderRight + 2 * this.highlight;
        int trimHeight = height + this.borderTop + this.borderBottom + 2 * this.highlight;
        return new Rectangle(trimX, trimY, trimWidth, trimHeight);
    }

    public Rectangle getClientArea() {
        this.checkWidget();
        Rectangle clientArea = super.getClientArea();
        clientArea.x += this.borderLeft;
        clientArea.y += this.borderTop;
        clientArea.width -= this.borderLeft + this.borderRight;
        clientArea.height -= this.borderTop + this.borderBottom;
        return clientArea;
    }

    public Control getContent() {
        return this.content;
    }

    public Control getTopCenter() {
        return this.topCenter;
    }

    public Control getTopLeft() {
        return this.topLeft;
    }

    public Control getTopRight() {
        return this.topRight;
    }

    void onDispose(Event event) {
        this.removeListener(12, this.listener);
        this.notifyListeners(12, event);
        event.type = 0;
        this.topLeft = null;
        this.topCenter = null;
        this.topRight = null;
        this.content = null;
        this.oldSize = null;
        this.selectionBackground = null;
    }

    void onPaint(GC gc) {
        Color gcForeground = gc.getForeground();
        Point size = this.getSize();
        Color border = this.getDisplay().getSystemColor(18);
        if (this.showBorder) {
            gc.setForeground(border);
            gc.drawRectangle(0, 0, size.x - 1, size.y - 1);
            if (this.highlight > 0) {
                int x1 = 1;
                int y1 = 1;
                int x2 = size.x - 1;
                int y2 = size.y - 1;
                int[] shape = new int[]{x1, y1, x2, y1, x2, y2, x1, y2, x1, y1 + this.highlight, x1 + this.highlight, y1 + this.highlight, x1 + this.highlight, y2 - this.highlight, x2 - this.highlight, y2 - this.highlight, x2 - this.highlight, y1 + this.highlight, x1, y1 + this.highlight};
                Color highlightColor = this.getDisplay().getSystemColor(26);
                gc.setBackground(highlightColor);
                gc.fillPolygon(shape);
            }
        }
        if (this.separator > -1) {
            gc.setForeground(border);
            gc.drawLine(this.borderLeft + this.highlight, this.separator, size.x - this.borderLeft - this.borderRight - this.highlight, this.separator);
        }
        gc.setForeground(gcForeground);
    }

    void onResize() {
        Point size = this.getSize();
        if (this.oldSize == null || this.oldSize.x == 0 || this.oldSize.y == 0) {
            this.redraw();
        } else {
            int width = 0;
            if (this.oldSize.x < size.x) {
                width = size.x - this.oldSize.x + this.borderRight + this.highlight;
            } else if (this.oldSize.x > size.x) {
                width = this.borderRight + this.highlight;
            }
            this.redraw(size.x - width, 0, width, size.y, false);
            int height = 0;
            if (this.oldSize.y < size.y) {
                height = size.y - this.oldSize.y + this.borderBottom + this.highlight;
            }
            if (this.oldSize.y > size.y) {
                height = this.borderBottom + this.highlight;
            }
            this.redraw(0, size.y - height, size.x, height, false);
        }
        this.oldSize = size;
    }

    public void setContent(Control content) {
        this.checkWidget();
        if (content != null && content.getParent() != this) {
            SWT.error(5);
        }
        if (this.content != null && !this.content.isDisposed()) {
            this.content.setBounds(-200, -200, 0, 0);
        }
        this.content = content;
        this.layout(false);
    }

    public void setLayout(Layout layout) {
        this.checkWidget();
    }

    void setSelectionBackground(Color color) {
        this.checkWidget();
        if (this.selectionBackground == color) {
            return;
        }
        if (color == null) {
            color = this.getDisplay().getSystemColor(25);
        }
        this.selectionBackground = color;
        this.redraw();
    }

    public void setTopCenter(Control topCenter) {
        this.checkWidget();
        if (topCenter != null && topCenter.getParent() != this) {
            SWT.error(5);
        }
        if (this.topCenter != null && !this.topCenter.isDisposed()) {
            Point size = this.topCenter.getSize();
            this.topCenter.setLocation(-200 - size.x, -200 - size.y);
        }
        this.topCenter = topCenter;
        this.layout(false);
    }

    public void setTopLeft(Control c) {
        this.checkWidget();
        if (c != null && c.getParent() != this) {
            SWT.error(5);
        }
        if (this.topLeft != null && !this.topLeft.isDisposed()) {
            Point size = this.topLeft.getSize();
            this.topLeft.setLocation(-200 - size.x, -200 - size.y);
        }
        this.topLeft = c;
        this.layout(false);
    }

    public void setTopRight(Control c) {
        this.checkWidget();
        if (c != null && c.getParent() != this) {
            SWT.error(5);
        }
        if (this.topRight != null && !this.topRight.isDisposed()) {
            Point size = this.topRight.getSize();
            this.topRight.setLocation(-200 - size.x, -200 - size.y);
        }
        this.topRight = c;
        this.layout(false);
    }

    public void setBorderVisible(boolean show) {
        this.checkWidget();
        if (this.showBorder == show) {
            return;
        }
        this.showBorder = show;
        if (this.showBorder) {
            this.borderBottom = 1;
            this.borderRight = 1;
            this.borderTop = 1;
            this.borderLeft = 1;
            if ((this.getStyle() & 0x800000) == 0) {
                this.highlight = 2;
            }
        } else {
            this.borderRight = 0;
            this.borderLeft = 0;
            this.borderTop = 0;
            this.borderBottom = 0;
            this.highlight = 0;
        }
        this.layout(false);
        this.redraw();
    }

    public void setTopCenterSeparate(boolean show) {
        this.checkWidget();
        this.separateTopCenter = show;
        this.layout(false);
    }
}

