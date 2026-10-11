/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.graphics;

import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.internal.SerializableCompatibility;

public final class Rectangle
implements SerializableCompatibility {
    public int x;
    public int y;
    public int width;
    public int height;
    static final long serialVersionUID = 3256439218279428914L;

    public Rectangle(int x, int y, int width, int height) {
        this.x = x;
        this.y = y;
        this.width = width;
        this.height = height;
    }

    public void add(Rectangle rect) {
        if (rect == null) {
            SWT.error(4);
        }
        int left = this.x < rect.x ? this.x : rect.x;
        int top = this.y < rect.y ? this.y : rect.y;
        int lhs = this.x + this.width;
        int rhs = rect.x + rect.width;
        int right = lhs > rhs ? lhs : rhs;
        lhs = this.y + this.height;
        rhs = rect.y + rect.height;
        int bottom = lhs > rhs ? lhs : rhs;
        this.x = left;
        this.y = top;
        this.width = right - left;
        this.height = bottom - top;
    }

    public boolean contains(int x, int y) {
        return x >= this.x && y >= this.y && x < this.x + this.width && y < this.y + this.height;
    }

    public boolean contains(Point pt) {
        if (pt == null) {
            SWT.error(4);
        }
        return this.contains(pt.x, pt.y);
    }

    public boolean equals(Object object) {
        if (object == this) {
            return true;
        }
        if (!(object instanceof Rectangle)) {
            return false;
        }
        Rectangle r = (Rectangle)object;
        return r.x == this.x && r.y == this.y && r.width == this.width && r.height == this.height;
    }

    public int hashCode() {
        return this.x ^ this.y ^ this.width ^ this.height;
    }

    public void intersect(Rectangle rect) {
        if (rect == null) {
            SWT.error(4);
        }
        if (this == rect) {
            return;
        }
        int left = this.x > rect.x ? this.x : rect.x;
        int top = this.y > rect.y ? this.y : rect.y;
        int lhs = this.x + this.width;
        int rhs = rect.x + rect.width;
        int right = lhs < rhs ? lhs : rhs;
        lhs = this.y + this.height;
        rhs = rect.y + rect.height;
        int bottom = lhs < rhs ? lhs : rhs;
        this.x = right < left ? 0 : left;
        this.y = bottom < top ? 0 : top;
        this.width = right < left ? 0 : right - left;
        this.height = bottom < top ? 0 : bottom - top;
    }

    public Rectangle intersection(Rectangle rect) {
        if (rect == null) {
            SWT.error(4);
        }
        if (this == rect) {
            return new Rectangle(this.x, this.y, this.width, this.height);
        }
        int left = this.x > rect.x ? this.x : rect.x;
        int top = this.y > rect.y ? this.y : rect.y;
        int lhs = this.x + this.width;
        int rhs = rect.x + rect.width;
        int right = lhs < rhs ? lhs : rhs;
        lhs = this.y + this.height;
        rhs = rect.y + rect.height;
        int bottom = lhs < rhs ? lhs : rhs;
        return new Rectangle(right < left ? 0 : left, bottom < top ? 0 : top, right < left ? 0 : right - left, bottom < top ? 0 : bottom - top);
    }

    public boolean intersects(int x, int y, int width, int height) {
        return x < this.x + this.width && y < this.y + this.height && x + width > this.x && y + height > this.y;
    }

    public boolean intersects(Rectangle rect) {
        if (rect == null) {
            SWT.error(4);
        }
        return rect == this || this.intersects(rect.x, rect.y, rect.width, rect.height);
    }

    public boolean isEmpty() {
        return this.width <= 0 || this.height <= 0;
    }

    public String toString() {
        return "Rectangle {" + this.x + ", " + this.y + ", " + this.width + ", " + this.height + "}";
    }

    public Rectangle union(Rectangle rect) {
        if (rect == null) {
            SWT.error(4);
        }
        int left = this.x < rect.x ? this.x : rect.x;
        int top = this.y < rect.y ? this.y : rect.y;
        int lhs = this.x + this.width;
        int rhs = rect.x + rect.width;
        int right = lhs > rhs ? lhs : rhs;
        lhs = this.y + this.height;
        rhs = rect.y + rect.height;
        int bottom = lhs > rhs ? lhs : rhs;
        return new Rectangle(left, top, right - left, bottom - top);
    }
}

