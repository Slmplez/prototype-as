/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.graphics;

public class LineAttributes {
    public float width;
    public int style;
    public int cap;
    public int join;
    public float[] dash;
    public float dashOffset;
    public float miterLimit;

    public LineAttributes(float width) {
        this(width, 1, 1, 1, null, 0.0f, 10.0f);
    }

    public LineAttributes(float width, int cap, int join) {
        this(width, cap, join, 1, null, 0.0f, 10.0f);
    }

    public LineAttributes(float width, int cap, int join, int style, float[] dash, float dashOffset, float miterLimit) {
        this.width = width;
        this.cap = cap;
        this.join = join;
        this.style = style;
        this.dash = dash;
        this.dashOffset = dashOffset;
        this.miterLimit = miterLimit;
    }

    public boolean equals(Object object) {
        if (object == this) {
            return true;
        }
        if (!(object instanceof LineAttributes)) {
            return false;
        }
        LineAttributes p = (LineAttributes)object;
        if (p.width != this.width) {
            return false;
        }
        if (p.cap != this.cap) {
            return false;
        }
        if (p.join != this.join) {
            return false;
        }
        if (p.style != this.style) {
            return false;
        }
        if (p.dashOffset != this.dashOffset) {
            return false;
        }
        if (p.miterLimit != this.miterLimit) {
            return false;
        }
        if (p.dash != null && this.dash != null) {
            if (p.dash.length != this.dash.length) {
                return false;
            }
            int i = 0;
            while (i < this.dash.length) {
                if (p.dash[i] != this.dash[i]) {
                    return false;
                }
                ++i;
            }
        } else if (p.dash != null || this.dash != null) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int hashCode = Float.floatToIntBits(this.width);
        hashCode = 31 * hashCode + this.cap;
        hashCode = 31 * hashCode + this.join;
        hashCode = 31 * hashCode + this.style;
        hashCode = 31 * hashCode + Float.floatToIntBits(this.dashOffset);
        hashCode = 31 * hashCode + Float.floatToIntBits(this.miterLimit);
        if (this.dash != null) {
            int i = 0;
            while (i < this.dash.length) {
                hashCode = 31 * hashCode + Float.floatToIntBits(this.dash[i]);
                ++i;
            }
        }
        return hashCode;
    }
}

