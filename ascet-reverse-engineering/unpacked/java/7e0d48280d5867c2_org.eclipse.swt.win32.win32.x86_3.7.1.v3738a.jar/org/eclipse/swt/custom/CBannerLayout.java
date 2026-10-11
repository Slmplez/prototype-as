/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.custom.CBanner;
import org.eclipse.swt.custom.CLayoutData;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Scrollable;

class CBannerLayout
extends Layout {
    CBannerLayout() {
    }

    protected Point computeSize(Composite composite, int wHint, int hHint, boolean flushCache) {
        CBanner banner = (CBanner)composite;
        Control left = banner.left;
        Control right = banner.right;
        Control bottom = banner.bottom;
        boolean showCurve = left != null && right != null;
        int height = hHint;
        int width = wHint;
        Point bottomSize = new Point(0, 0);
        if (bottom != null) {
            int trim = this.computeTrim(bottom);
            int w = wHint == -1 ? -1 : Math.max(0, width - trim);
            bottomSize = this.computeChildSize(bottom, w, -1, flushCache);
        }
        Point rightSize = new Point(0, 0);
        if (right != null) {
            int trim = this.computeTrim(right);
            int w = -1;
            if (banner.rightWidth != -1) {
                w = banner.rightWidth - trim;
                if (left != null) {
                    w = Math.min(w, width - banner.curve_width + 2 * banner.curve_indent - 10 - trim);
                }
                w = Math.max(0, w);
            }
            rightSize = this.computeChildSize(right, w, -1, flushCache);
            if (wHint != -1) {
                width -= rightSize.x + banner.curve_width - 2 * banner.curve_indent;
            }
        }
        Point leftSize = new Point(0, 0);
        if (left != null) {
            int trim = this.computeTrim(left);
            int w = wHint == -1 ? -1 : Math.max(0, width - trim);
            leftSize = this.computeChildSize(left, w, -1, flushCache);
        }
        width = leftSize.x + rightSize.x;
        height = bottomSize.y;
        if (bottom != null && (left != null || right != null)) {
            height += 3;
        }
        height = left != null ? (right == null ? (height += leftSize.y) : (height += Math.max(leftSize.y, banner.rightMinHeight == -1 ? rightSize.y : banner.rightMinHeight))) : (height += rightSize.y);
        if (showCurve) {
            width += banner.curve_width - 2 * banner.curve_indent;
            height += 7;
        }
        if (wHint != -1) {
            width = wHint;
        }
        if (hHint != -1) {
            height = hHint;
        }
        return new Point(width, height);
    }

    Point computeChildSize(Control control, int wHint, int hHint, boolean flushCache) {
        Object data = control.getLayoutData();
        if (data == null || !(data instanceof CLayoutData)) {
            data = new CLayoutData();
            control.setLayoutData(data);
        }
        return ((CLayoutData)data).computeSize(control, wHint, hHint, flushCache);
    }

    int computeTrim(Control c) {
        if (c instanceof Scrollable) {
            Rectangle rect = ((Scrollable)c).computeTrim(0, 0, 0, 0);
            return rect.width;
        }
        return c.getBorderWidth() * 2;
    }

    protected boolean flushCache(Control control) {
        Object data = control.getLayoutData();
        if (data != null && data instanceof CLayoutData) {
            ((CLayoutData)data).flushCache();
        }
        return true;
    }

    protected void layout(Composite composite, boolean flushCache) {
        CBanner banner = (CBanner)composite;
        Control left = banner.left;
        Control right = banner.right;
        Control bottom = banner.bottom;
        Point size = banner.getSize();
        boolean showCurve = left != null && right != null;
        int width = size.x - 2 * banner.getBorderWidth();
        int height = size.y - 2 * banner.getBorderWidth();
        Point bottomSize = new Point(0, 0);
        if (bottom != null) {
            int trim = this.computeTrim(bottom);
            int w = Math.max(0, width - trim);
            bottomSize = this.computeChildSize(bottom, w, -1, flushCache);
            height -= bottomSize.y + 1 + 2;
        }
        if (showCurve) {
            height -= 7;
        }
        height = Math.max(0, height);
        Point rightSize = new Point(0, 0);
        if (right != null) {
            int trim = this.computeTrim(right);
            int w = -1;
            if (banner.rightWidth != -1) {
                w = banner.rightWidth - trim;
                if (left != null) {
                    w = Math.min(w, width - banner.curve_width + 2 * banner.curve_indent - 10 - trim);
                }
                w = Math.max(0, w);
            }
            rightSize = this.computeChildSize(right, w, -1, flushCache);
            width -= rightSize.x - banner.curve_indent + banner.curve_width - banner.curve_indent;
        }
        Point leftSize = new Point(0, 0);
        if (left != null) {
            int trim = this.computeTrim(left);
            int w = Math.max(0, width - trim);
            leftSize = this.computeChildSize(left, w, -1, flushCache);
        }
        int x = 0;
        int y = 0;
        int oldStart = banner.curveStart;
        Rectangle leftRect = null;
        Rectangle rightRect = null;
        Rectangle bottomRect = null;
        if (bottom != null) {
            bottomRect = new Rectangle(x, y + size.y - bottomSize.y, bottomSize.x, bottomSize.y);
        }
        if (showCurve) {
            y += 4;
        }
        if (left != null) {
            leftRect = new Rectangle(x, y, leftSize.x, leftSize.y);
            banner.curveStart = x + leftSize.x - banner.curve_indent;
            x += leftSize.x - banner.curve_indent + banner.curve_width - banner.curve_indent;
        }
        if (right != null) {
            if (left != null) {
                rightSize.y = Math.max(leftSize.y, banner.rightMinHeight == -1 ? rightSize.y : banner.rightMinHeight);
            }
            rightRect = new Rectangle(x, y, rightSize.x, rightSize.y);
        }
        if (banner.curveStart < oldStart) {
            banner.redraw(banner.curveStart - 200, 0, oldStart + banner.curve_width - banner.curveStart + 200 + 5, size.y, false);
        }
        if (banner.curveStart > oldStart) {
            banner.redraw(oldStart - 200, 0, banner.curveStart + banner.curve_width - oldStart + 200 + 5, size.y, false);
        }
        banner.update();
        banner.curveRect = new Rectangle(banner.curveStart, 0, banner.curve_width, size.y);
        if (bottomRect != null) {
            bottom.setBounds(bottomRect);
        }
        if (rightRect != null) {
            right.setBounds(rightRect);
        }
        if (leftRect != null) {
            left.setBounds(leftRect);
        }
    }
}

