/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.custom.CLayoutData;
import org.eclipse.swt.custom.ViewForm;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Scrollable;

class ViewFormLayout
extends Layout {
    ViewFormLayout() {
    }

    protected Point computeSize(Composite composite, int wHint, int hHint, boolean flushCache) {
        ViewForm form = (ViewForm)composite;
        Control left = form.topLeft;
        Control center = form.topCenter;
        Control right = form.topRight;
        Control content = form.content;
        Point leftSize = new Point(0, 0);
        if (left != null) {
            leftSize = this.computeChildSize(left, -1, -1, flushCache);
        }
        Point centerSize = new Point(0, 0);
        if (center != null) {
            centerSize = this.computeChildSize(center, -1, -1, flushCache);
        }
        Point rightSize = new Point(0, 0);
        if (right != null) {
            rightSize = this.computeChildSize(right, -1, -1, flushCache);
        }
        Point size = new Point(0, 0);
        if (form.separateTopCenter || wHint != -1 && leftSize.x + centerSize.x + rightSize.x > wHint) {
            size.x = leftSize.x + rightSize.x;
            if (leftSize.x > 0 && rightSize.x > 0) {
                size.x += form.horizontalSpacing;
            }
            size.x = Math.max(centerSize.x, size.x);
            size.y = Math.max(leftSize.y, rightSize.y);
            if (center != null) {
                size.y += centerSize.y;
                if (left != null || right != null) {
                    size.y += form.verticalSpacing;
                }
            }
        } else {
            size.x = leftSize.x + centerSize.x + rightSize.x;
            int count = -1;
            if (leftSize.x > 0) {
                ++count;
            }
            if (centerSize.x > 0) {
                ++count;
            }
            if (rightSize.x > 0) {
                ++count;
            }
            if (count > 0) {
                size.x += count * form.horizontalSpacing;
            }
            size.y = Math.max(leftSize.y, Math.max(centerSize.y, rightSize.y));
        }
        if (content != null) {
            if (left != null || right != null || center != null) {
                ++size.y;
            }
            Point contentSize = new Point(0, 0);
            contentSize = this.computeChildSize(content, -1, -1, flushCache);
            size.x = Math.max(size.x, contentSize.x);
            size.y += contentSize.y;
            if (size.y > contentSize.y) {
                size.y += form.verticalSpacing;
            }
        }
        size.x += 2 * form.marginWidth;
        size.y += 2 * form.marginHeight;
        if (wHint != -1) {
            size.x = wHint;
        }
        if (hHint != -1) {
            size.y = hHint;
        }
        return size;
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
        int w;
        int topHeight;
        ViewForm form = (ViewForm)composite;
        Control left = form.topLeft;
        Control center = form.topCenter;
        Control right = form.topRight;
        Control content = form.content;
        Rectangle rect = composite.getClientArea();
        Point leftSize = new Point(0, 0);
        if (left != null && !left.isDisposed()) {
            leftSize = this.computeChildSize(left, -1, -1, flushCache);
        }
        Point centerSize = new Point(0, 0);
        if (center != null && !center.isDisposed()) {
            centerSize = this.computeChildSize(center, -1, -1, flushCache);
        }
        Point rightSize = new Point(0, 0);
        if (right != null && !right.isDisposed()) {
            rightSize = this.computeChildSize(right, -1, -1, flushCache);
        }
        int minTopWidth = leftSize.x + centerSize.x + rightSize.x + 2 * form.marginWidth + 2 * form.highlight;
        int count = -1;
        if (leftSize.x > 0) {
            ++count;
        }
        if (centerSize.x > 0) {
            ++count;
        }
        if (rightSize.x > 0) {
            ++count;
        }
        if (count > 0) {
            minTopWidth += count * form.horizontalSpacing;
        }
        int x = rect.x + rect.width - form.marginWidth - form.highlight;
        int y = rect.y + form.marginHeight + form.highlight;
        boolean top = false;
        if (form.separateTopCenter || minTopWidth > rect.width) {
            int trim;
            topHeight = Math.max(rightSize.y, leftSize.y);
            if (right != null && !right.isDisposed()) {
                top = true;
                right.setBounds(x -= rightSize.x, y, rightSize.x, topHeight);
                x -= form.horizontalSpacing;
            }
            if (left != null && !left.isDisposed()) {
                top = true;
                trim = this.computeTrim(left);
                int leftW = x - rect.x - form.marginWidth - form.highlight - trim;
                leftSize = this.computeChildSize(left, leftW, -1, false);
                left.setBounds(rect.x + form.marginWidth + form.highlight, y, leftSize.x, topHeight);
            }
            if (top) {
                y += topHeight + form.verticalSpacing;
            }
            if (center != null && !center.isDisposed()) {
                top = true;
                trim = this.computeTrim(center);
                w = rect.width - 2 * form.marginWidth - 2 * form.highlight - trim;
                Point size = this.computeChildSize(center, w, -1, false);
                if (size.x < centerSize.x) {
                    centerSize = size;
                }
                center.setBounds(rect.x + rect.width - form.marginWidth - form.highlight - centerSize.x, y, centerSize.x, centerSize.y);
                y += centerSize.y + form.verticalSpacing;
            }
        } else {
            topHeight = Math.max(rightSize.y, Math.max(centerSize.y, leftSize.y));
            if (right != null && !right.isDisposed()) {
                top = true;
                right.setBounds(x -= rightSize.x, y, rightSize.x, topHeight);
                x -= form.horizontalSpacing;
            }
            if (center != null && !center.isDisposed()) {
                top = true;
                center.setBounds(x -= centerSize.x, y, centerSize.x, topHeight);
                x -= form.horizontalSpacing;
            }
            if (left != null && !left.isDisposed()) {
                top = true;
                Rectangle trim = left instanceof Composite ? ((Composite)left).computeTrim(0, 0, 0, 0) : new Rectangle(0, 0, 0, 0);
                w = x - rect.x - form.marginWidth - form.highlight - trim.width;
                int h = topHeight - trim.height;
                leftSize = this.computeChildSize(left, w, h, false);
                left.setBounds(rect.x + form.marginWidth + form.highlight, y, leftSize.x, topHeight);
            }
            if (top) {
                y += topHeight + form.verticalSpacing;
            }
        }
        int oldSeperator = form.separator;
        form.separator = -1;
        if (content != null && !content.isDisposed()) {
            if (left != null || right != null || center != null) {
                form.separator = y++;
            }
            content.setBounds(rect.x + form.marginWidth + form.highlight, y, rect.width - 2 * form.marginWidth - 2 * form.highlight, rect.y + rect.height - y - form.marginHeight - form.highlight);
        }
        if (oldSeperator != form.separator) {
            int b;
            int t;
            if (oldSeperator == -1) {
                t = form.separator;
                b = form.separator + 1;
            } else if (form.separator == -1) {
                t = oldSeperator;
                b = oldSeperator + 1;
            } else {
                t = Math.min(form.separator, oldSeperator);
                b = Math.max(form.separator, oldSeperator);
            }
            form.redraw(form.borderLeft, t, form.getSize().x - form.borderLeft - form.borderRight, b - t, false);
        }
    }
}

