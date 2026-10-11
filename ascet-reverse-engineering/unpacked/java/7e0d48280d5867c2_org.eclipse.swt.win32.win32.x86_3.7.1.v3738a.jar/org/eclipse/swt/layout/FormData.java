/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.layout;

import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.FormAttachment;
import org.eclipse.swt.widgets.Control;

public final class FormData {
    public int width = -1;
    public int height = -1;
    public FormAttachment left;
    public FormAttachment right;
    public FormAttachment top;
    public FormAttachment bottom;
    int cacheWidth = -1;
    int cacheHeight = -1;
    int defaultWhint;
    int defaultHhint;
    int defaultWidth = -1;
    int defaultHeight = -1;
    int currentWhint;
    int currentHhint;
    int currentWidth = -1;
    int currentHeight = -1;
    FormAttachment cacheLeft;
    FormAttachment cacheRight;
    FormAttachment cacheTop;
    FormAttachment cacheBottom;
    boolean isVisited;
    boolean needed;

    public FormData() {
    }

    public FormData(int width, int height) {
        this.width = width;
        this.height = height;
    }

    void computeSize(Control control, int wHint, int hHint, boolean flushCache) {
        if (this.cacheWidth != -1 && this.cacheHeight != -1) {
            return;
        }
        if (wHint == this.width && hHint == this.height) {
            if (this.defaultWidth == -1 || this.defaultHeight == -1 || wHint != this.defaultWhint || hHint != this.defaultHhint) {
                Point size = control.computeSize(wHint, hHint, flushCache);
                this.defaultWhint = wHint;
                this.defaultHhint = hHint;
                this.defaultWidth = size.x;
                this.defaultHeight = size.y;
            }
            this.cacheWidth = this.defaultWidth;
            this.cacheHeight = this.defaultHeight;
            return;
        }
        if (this.currentWidth == -1 || this.currentHeight == -1 || wHint != this.currentWhint || hHint != this.currentHhint) {
            Point size = control.computeSize(wHint, hHint, flushCache);
            this.currentWhint = wHint;
            this.currentHhint = hHint;
            this.currentWidth = size.x;
            this.currentHeight = size.y;
        }
        this.cacheWidth = this.currentWidth;
        this.cacheHeight = this.currentHeight;
    }

    void flushCache() {
        this.cacheHeight = -1;
        this.cacheWidth = -1;
        this.defaultWidth = -1;
        this.defaultHeight = -1;
        this.currentWidth = -1;
        this.currentHeight = -1;
    }

    int getWidth(Control control, boolean flushCache) {
        this.needed = true;
        this.computeSize(control, this.width, this.height, flushCache);
        return this.cacheWidth;
    }

    int getHeight(Control control, boolean flushCache) {
        this.computeSize(control, this.width, this.height, flushCache);
        return this.cacheHeight;
    }

    FormAttachment getBottomAttachment(Control control, int spacing, boolean flushCache) {
        if (this.cacheBottom != null) {
            return this.cacheBottom;
        }
        if (this.isVisited) {
            this.cacheBottom = new FormAttachment(0, this.getHeight(control, flushCache));
            return this.cacheBottom;
        }
        if (this.bottom == null) {
            if (this.top == null) {
                this.cacheBottom = new FormAttachment(0, this.getHeight(control, flushCache));
                return this.cacheBottom;
            }
            this.cacheBottom = this.getTopAttachment(control, spacing, flushCache).plus(this.getHeight(control, flushCache));
            return this.cacheBottom;
        }
        Control bottomControl = this.bottom.control;
        if (bottomControl != null) {
            if (bottomControl.isDisposed()) {
                bottomControl = null;
                this.bottom.control = null;
            } else if (bottomControl.getParent() != control.getParent()) {
                bottomControl = null;
            }
        }
        if (bottomControl == null) {
            this.cacheBottom = this.bottom;
            return this.cacheBottom;
        }
        this.isVisited = true;
        FormData bottomData = (FormData)bottomControl.getLayoutData();
        FormAttachment bottomAttachment = bottomData.getBottomAttachment(bottomControl, spacing, flushCache);
        switch (this.bottom.alignment) {
            case 1024: {
                this.cacheBottom = bottomAttachment.plus(this.bottom.offset);
                break;
            }
            case 0x1000000: {
                FormAttachment topAttachment = bottomData.getTopAttachment(bottomControl, spacing, flushCache);
                FormAttachment bottomHeight = bottomAttachment.minus(topAttachment);
                this.cacheBottom = bottomAttachment.minus(bottomHeight.minus(this.getHeight(control, flushCache)).divide(2));
                break;
            }
            default: {
                FormAttachment topAttachment = bottomData.getTopAttachment(bottomControl, spacing, flushCache);
                this.cacheBottom = topAttachment.plus(this.bottom.offset - spacing);
            }
        }
        this.isVisited = false;
        return this.cacheBottom;
    }

    FormAttachment getLeftAttachment(Control control, int spacing, boolean flushCache) {
        if (this.cacheLeft != null) {
            return this.cacheLeft;
        }
        if (this.isVisited) {
            this.cacheLeft = new FormAttachment(0, 0);
            return this.cacheLeft;
        }
        if (this.left == null) {
            if (this.right == null) {
                this.cacheLeft = new FormAttachment(0, 0);
                return this.cacheLeft;
            }
            this.cacheLeft = this.getRightAttachment(control, spacing, flushCache).minus(this.getWidth(control, flushCache));
            return this.cacheLeft;
        }
        Control leftControl = this.left.control;
        if (leftControl != null) {
            if (leftControl.isDisposed()) {
                leftControl = null;
                this.left.control = null;
            } else if (leftControl.getParent() != control.getParent()) {
                leftControl = null;
            }
        }
        if (leftControl == null) {
            this.cacheLeft = this.left;
            return this.cacheLeft;
        }
        this.isVisited = true;
        FormData leftData = (FormData)leftControl.getLayoutData();
        FormAttachment leftAttachment = leftData.getLeftAttachment(leftControl, spacing, flushCache);
        switch (this.left.alignment) {
            case 16384: {
                this.cacheLeft = leftAttachment.plus(this.left.offset);
                break;
            }
            case 0x1000000: {
                FormAttachment rightAttachment = leftData.getRightAttachment(leftControl, spacing, flushCache);
                FormAttachment leftWidth = rightAttachment.minus(leftAttachment);
                this.cacheLeft = leftAttachment.plus(leftWidth.minus(this.getWidth(control, flushCache)).divide(2));
                break;
            }
            default: {
                FormAttachment rightAttachment = leftData.getRightAttachment(leftControl, spacing, flushCache);
                this.cacheLeft = rightAttachment.plus(this.left.offset + spacing);
            }
        }
        this.isVisited = false;
        return this.cacheLeft;
    }

    String getName() {
        String string = this.getClass().getName();
        int index = string.lastIndexOf(46);
        if (index == -1) {
            return string;
        }
        return string.substring(index + 1, string.length());
    }

    FormAttachment getRightAttachment(Control control, int spacing, boolean flushCache) {
        if (this.cacheRight != null) {
            return this.cacheRight;
        }
        if (this.isVisited) {
            this.cacheRight = new FormAttachment(0, this.getWidth(control, flushCache));
            return this.cacheRight;
        }
        if (this.right == null) {
            if (this.left == null) {
                this.cacheRight = new FormAttachment(0, this.getWidth(control, flushCache));
                return this.cacheRight;
            }
            this.cacheRight = this.getLeftAttachment(control, spacing, flushCache).plus(this.getWidth(control, flushCache));
            return this.cacheRight;
        }
        Control rightControl = this.right.control;
        if (rightControl != null) {
            if (rightControl.isDisposed()) {
                rightControl = null;
                this.right.control = null;
            } else if (rightControl.getParent() != control.getParent()) {
                rightControl = null;
            }
        }
        if (rightControl == null) {
            this.cacheRight = this.right;
            return this.cacheRight;
        }
        this.isVisited = true;
        FormData rightData = (FormData)rightControl.getLayoutData();
        FormAttachment rightAttachment = rightData.getRightAttachment(rightControl, spacing, flushCache);
        switch (this.right.alignment) {
            case 131072: {
                this.cacheRight = rightAttachment.plus(this.right.offset);
                break;
            }
            case 0x1000000: {
                FormAttachment leftAttachment = rightData.getLeftAttachment(rightControl, spacing, flushCache);
                FormAttachment rightWidth = rightAttachment.minus(leftAttachment);
                this.cacheRight = rightAttachment.minus(rightWidth.minus(this.getWidth(control, flushCache)).divide(2));
                break;
            }
            default: {
                FormAttachment leftAttachment = rightData.getLeftAttachment(rightControl, spacing, flushCache);
                this.cacheRight = leftAttachment.plus(this.right.offset - spacing);
            }
        }
        this.isVisited = false;
        return this.cacheRight;
    }

    FormAttachment getTopAttachment(Control control, int spacing, boolean flushCache) {
        if (this.cacheTop != null) {
            return this.cacheTop;
        }
        if (this.isVisited) {
            this.cacheTop = new FormAttachment(0, 0);
            return this.cacheTop;
        }
        if (this.top == null) {
            if (this.bottom == null) {
                this.cacheTop = new FormAttachment(0, 0);
                return this.cacheTop;
            }
            this.cacheTop = this.getBottomAttachment(control, spacing, flushCache).minus(this.getHeight(control, flushCache));
            return this.cacheTop;
        }
        Control topControl = this.top.control;
        if (topControl != null) {
            if (topControl.isDisposed()) {
                topControl = null;
                this.top.control = null;
            } else if (topControl.getParent() != control.getParent()) {
                topControl = null;
            }
        }
        if (topControl == null) {
            this.cacheTop = this.top;
            return this.cacheTop;
        }
        this.isVisited = true;
        FormData topData = (FormData)topControl.getLayoutData();
        FormAttachment topAttachment = topData.getTopAttachment(topControl, spacing, flushCache);
        switch (this.top.alignment) {
            case 128: {
                this.cacheTop = topAttachment.plus(this.top.offset);
                break;
            }
            case 0x1000000: {
                FormAttachment bottomAttachment = topData.getBottomAttachment(topControl, spacing, flushCache);
                FormAttachment topHeight = bottomAttachment.minus(topAttachment);
                this.cacheTop = topAttachment.plus(topHeight.minus(this.getHeight(control, flushCache)).divide(2));
                break;
            }
            default: {
                FormAttachment bottomAttachment = topData.getBottomAttachment(topControl, spacing, flushCache);
                this.cacheTop = bottomAttachment.plus(this.top.offset + spacing);
            }
        }
        this.isVisited = false;
        return this.cacheTop;
    }

    public String toString() {
        String string = String.valueOf(this.getName()) + " {";
        if (this.width != -1) {
            string = String.valueOf(string) + "width=" + this.width + " ";
        }
        if (this.height != -1) {
            string = String.valueOf(string) + "height=" + this.height + " ";
        }
        if (this.left != null) {
            string = String.valueOf(string) + "left=" + this.left + " ";
        }
        if (this.right != null) {
            string = String.valueOf(string) + "right=" + this.right + " ";
        }
        if (this.top != null) {
            string = String.valueOf(string) + "top=" + this.top + " ";
        }
        if (this.bottom != null) {
            string = String.valueOf(string) + "bottom=" + this.bottom + " ";
        }
        string = string.trim();
        string = String.valueOf(string) + "}";
        return string;
    }
}

