/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.ExpandBar;
import org.eclipse.swt.widgets.Item;

public class ExpandItem
extends Item {
    ExpandBar parent;
    Control control;
    boolean expanded;
    boolean hover;
    int x;
    int y;
    int width;
    int height;
    int imageHeight;
    int imageWidth;
    static final int TEXT_INSET = 6;
    static final int BORDER = 1;
    static final int CHEVRON_SIZE = 24;

    public ExpandItem(ExpandBar parent, int style) {
        this(parent, style, ExpandItem.checkNull(parent).getItemCount());
    }

    public ExpandItem(ExpandBar parent, int style, int index) {
        super(parent, style);
        this.parent = parent;
        parent.createItem(this, style, index);
    }

    static ExpandBar checkNull(ExpandBar control) {
        if (control == null) {
            SWT.error(4);
        }
        return control;
    }

    private void drawChevron(int hDC, RECT rect) {
        int[] polyline2;
        int[] polyline1;
        int py;
        int px;
        int oldBrush = OS.SelectObject(hDC, OS.GetSysColorBrush(OS.COLOR_BTNFACE));
        OS.PatBlt(hDC, rect.left, rect.top, rect.right - rect.left, rect.bottom - rect.top, 15728673);
        OS.SelectObject(hDC, oldBrush);
        rect.left += 4;
        rect.top += 4;
        rect.right -= 4;
        rect.bottom -= 4;
        int hPen = OS.CreatePen(0, 1, this.parent.getForegroundPixel());
        int oldPen = OS.SelectObject(hDC, hPen);
        if (this.expanded) {
            px = rect.left + 5;
            py = rect.top + 7;
            polyline1 = new int[]{px, py, px + 1, py, px + 1, py - 1, px + 2, py - 1, px + 2, py - 2, px + 3, py - 2, px + 3, py - 3, px + 3, py - 2, px + 4, py - 2, px + 4, py - 1, px + 5, py - 1, px + 5, py, px + 7, py};
            polyline2 = new int[]{px, py += 4, px + 1, py, px + 1, py - 1, px + 2, py - 1, px + 2, py - 2, px + 3, py - 2, px + 3, py - 3, px + 3, py - 2, px + 4, py - 2, px + 4, py - 1, px + 5, py - 1, px + 5, py, px + 7, py};
        } else {
            px = rect.left + 5;
            py = rect.top + 4;
            polyline1 = new int[]{px, py, px + 1, py, px + 1, py + 1, px + 2, py + 1, px + 2, py + 2, px + 3, py + 2, px + 3, py + 3, px + 3, py + 2, px + 4, py + 2, px + 4, py + 1, px + 5, py + 1, px + 5, py, px + 7, py};
            polyline2 = new int[]{px, py += 4, px + 1, py, px + 1, py + 1, px + 2, py + 1, px + 2, py + 2, px + 3, py + 2, px + 3, py + 3, px + 3, py + 2, px + 4, py + 2, px + 4, py + 1, px + 5, py + 1, px + 5, py, px + 7, py};
        }
        OS.Polyline(hDC, polyline1, polyline1.length / 2);
        OS.Polyline(hDC, polyline2, polyline2.length / 2);
        if (this.hover) {
            int whitePen = OS.CreatePen(0, 1, OS.GetSysColor(OS.COLOR_3DHILIGHT));
            int darkGrayPen = OS.CreatePen(0, 1, OS.GetSysColor(OS.COLOR_3DSHADOW));
            OS.SelectObject(hDC, whitePen);
            int[] points1 = new int[]{rect.left, rect.bottom, rect.left, rect.top, rect.right, rect.top};
            OS.Polyline(hDC, points1, points1.length / 2);
            OS.SelectObject(hDC, darkGrayPen);
            int[] points2 = new int[]{rect.right, rect.top, rect.right, rect.bottom, rect.left, rect.bottom};
            OS.Polyline(hDC, points2, points2.length / 2);
            OS.SelectObject(hDC, oldPen);
            OS.DeleteObject(whitePen);
            OS.DeleteObject(darkGrayPen);
        } else {
            OS.SelectObject(hDC, oldPen);
        }
        OS.DeleteObject(hPen);
    }

    void drawItem(GC gc, int hTheme, RECT clipRect, boolean drawFocus) {
        int hDC = gc.handle;
        int headerHeight = this.parent.getBandHeight();
        RECT rect = new RECT();
        OS.SetRect(rect, this.x, this.y, this.x + this.width, this.y + headerHeight);
        if (hTheme != 0) {
            OS.DrawThemeBackground(hTheme, hDC, 8, 0, rect, clipRect);
        } else {
            int oldBrush = OS.SelectObject(hDC, OS.GetSysColorBrush(OS.COLOR_BTNFACE));
            OS.PatBlt(hDC, rect.left, rect.top, rect.right - rect.left, rect.bottom - rect.top, 15728673);
            OS.SelectObject(hDC, oldBrush);
        }
        if (this.image != null) {
            rect.left += 6;
            if (this.imageHeight > headerHeight) {
                gc.drawImage(this.image, rect.left, rect.top + headerHeight - this.imageHeight);
            } else {
                gc.drawImage(this.image, rect.left, rect.top + (headerHeight - this.imageHeight) / 2);
            }
            rect.left += this.imageWidth;
        }
        if (this.text.length() > 0) {
            rect.left += 6;
            TCHAR buffer = new TCHAR(this.parent.getCodePage(), this.text, false);
            if (hTheme != 0) {
                OS.DrawThemeText(hTheme, hDC, 8, 0, buffer.chars, buffer.length(), 36, 0, rect);
            } else {
                int oldBkMode = OS.SetBkMode(hDC, 1);
                OS.DrawText(hDC, buffer, buffer.length(), rect, 36);
                OS.SetBkMode(hDC, oldBkMode);
            }
        }
        int chevronSize = 24;
        rect.left = rect.right - chevronSize;
        rect.top = this.y + (headerHeight - chevronSize) / 2;
        rect.bottom = rect.top + chevronSize;
        if (hTheme != 0) {
            int partID = this.expanded ? 6 : 7;
            int stateID = this.hover ? 2 : 1;
            OS.DrawThemeBackground(hTheme, hDC, partID, stateID, rect, clipRect);
        } else {
            this.drawChevron(hDC, rect);
        }
        if (drawFocus) {
            OS.SetRect(rect, this.x + 1, this.y + 1, this.x + this.width - 2, this.y + headerHeight - 2);
            OS.DrawFocusRect(hDC, rect);
        }
        if (this.expanded && !this.parent.isAppThemed()) {
            int pen = OS.CreatePen(0, 1, OS.GetSysColor(OS.COLOR_BTNFACE));
            int oldPen = OS.SelectObject(hDC, pen);
            int[] points = new int[]{this.x, this.y + headerHeight, this.x, this.y + headerHeight + this.height, this.x + this.width - 1, this.y + headerHeight + this.height, this.x + this.width - 1, this.y + headerHeight - 1};
            OS.Polyline(hDC, points, points.length / 2);
            OS.SelectObject(hDC, oldPen);
            OS.DeleteObject(pen);
        }
    }

    void destroyWidget() {
        this.parent.destroyItem(this);
        this.releaseHandle();
    }

    public Control getControl() {
        this.checkWidget();
        return this.control;
    }

    public boolean getExpanded() {
        this.checkWidget();
        return this.expanded;
    }

    public int getHeaderHeight() {
        this.checkWidget();
        return Math.max(this.parent.getBandHeight(), this.imageHeight);
    }

    public int getHeight() {
        this.checkWidget();
        return this.height;
    }

    public ExpandBar getParent() {
        this.checkWidget();
        return this.parent;
    }

    int getPreferredWidth(int hTheme, int hDC) {
        int width = 36;
        if (this.image != null) {
            width += 6 + this.imageWidth;
        }
        if (this.text.length() > 0) {
            RECT rect = new RECT();
            TCHAR buffer = new TCHAR(this.parent.getCodePage(), this.text, false);
            if (hTheme != 0) {
                OS.GetThemeTextExtent(hTheme, hDC, 8, 0, buffer.chars, buffer.length(), 32, null, rect);
            } else {
                OS.DrawText(hDC, buffer, buffer.length(), rect, 1024);
            }
            width += rect.right - rect.left;
        }
        return width;
    }

    boolean isHover(int x, int y) {
        int bandHeight = this.parent.getBandHeight();
        return this.x < x && x < this.x + this.width && this.y < y && y < this.y + bandHeight;
    }

    void redraw(boolean all) {
        int parentHandle = this.parent.handle;
        int headerHeight = this.parent.getBandHeight();
        RECT rect = new RECT();
        int left = all ? this.x : this.x + this.width - headerHeight;
        OS.SetRect(rect, left, this.y, this.x + this.width, this.y + headerHeight);
        OS.InvalidateRect(parentHandle, rect, true);
        if (this.imageHeight > headerHeight) {
            OS.SetRect(rect, this.x + 6, this.y + headerHeight - this.imageHeight, this.x + 6 + this.imageWidth, this.y);
            OS.InvalidateRect(parentHandle, rect, true);
        }
        if (!this.parent.isAppThemed()) {
            OS.SetRect(rect, this.x, this.y + headerHeight, this.x + this.width, this.y + headerHeight + this.height + 1);
            OS.InvalidateRect(parentHandle, rect, true);
        }
    }

    void releaseHandle() {
        super.releaseHandle();
        this.parent = null;
    }

    void releaseWidget() {
        super.releaseWidget();
        this.control = null;
    }

    void setBounds(int x, int y, int width, int height, boolean move, boolean size) {
        this.redraw(true);
        int headerHeight = this.parent.getBandHeight();
        if (move) {
            if (this.imageHeight > headerHeight) {
                y += this.imageHeight - headerHeight;
            }
            this.x = x;
            this.y = y;
            this.redraw(true);
        }
        if (size) {
            this.width = width;
            this.height = height;
            this.redraw(true);
        }
        if (this.control != null && !this.control.isDisposed()) {
            if (!this.parent.isAppThemed()) {
                ++x;
                width = Math.max(0, width - 2);
                height = Math.max(0, height - 1);
            }
            if (move && size) {
                this.control.setBounds(x, y + headerHeight, width, height);
            }
            if (move && !size) {
                this.control.setLocation(x, y + headerHeight);
            }
            if (!move && size) {
                this.control.setSize(width, height);
            }
        }
    }

    public void setControl(Control control) {
        this.checkWidget();
        if (control != null) {
            if (control.isDisposed()) {
                this.error(5);
            }
            if (control.parent != this.parent) {
                this.error(32);
            }
        }
        this.control = control;
        if (control != null) {
            int headerHeight = this.parent.getBandHeight();
            control.setVisible(this.expanded);
            if (!this.parent.isAppThemed()) {
                int width = Math.max(0, this.width - 2);
                int height = Math.max(0, this.height - 1);
                control.setBounds(this.x + 1, this.y + headerHeight, width, height);
            } else {
                control.setBounds(this.x, this.y + headerHeight, this.width, this.height);
            }
        }
    }

    public void setExpanded(boolean expanded) {
        this.checkWidget();
        this.expanded = expanded;
        this.parent.showItem(this);
    }

    public void setHeight(int height) {
        this.checkWidget();
        if (height < 0) {
            return;
        }
        this.setBounds(0, 0, this.width, height, false, true);
        if (this.expanded) {
            this.parent.layoutItems(this.parent.indexOf(this) + 1, true);
        }
    }

    public void setImage(Image image) {
        super.setImage(image);
        int oldImageHeight = this.imageHeight;
        if (image != null) {
            Rectangle bounds = image.getBounds();
            this.imageHeight = bounds.height;
            this.imageWidth = bounds.width;
        } else {
            this.imageWidth = 0;
            this.imageHeight = 0;
        }
        if (oldImageHeight != this.imageHeight) {
            this.parent.layoutItems(this.parent.indexOf(this), true);
        } else {
            this.redraw(true);
        }
    }

    public void setText(String string) {
        super.setText(string);
        this.redraw(true);
    }
}

