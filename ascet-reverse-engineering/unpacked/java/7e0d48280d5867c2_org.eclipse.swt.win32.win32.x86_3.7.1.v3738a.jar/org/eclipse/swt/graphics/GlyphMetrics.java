/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.graphics;

import org.eclipse.swt.SWT;

public final class GlyphMetrics {
    public int ascent;
    public int descent;
    public int width;

    public GlyphMetrics(int ascent, int descent, int width) {
        if (ascent < 0 || descent < 0 || width < 0) {
            SWT.error(5);
        }
        this.ascent = ascent;
        this.descent = descent;
        this.width = width;
    }

    public boolean equals(Object object) {
        if (object == this) {
            return true;
        }
        if (!(object instanceof GlyphMetrics)) {
            return false;
        }
        GlyphMetrics metrics = (GlyphMetrics)object;
        return metrics.ascent == this.ascent && metrics.descent == this.descent && metrics.width == this.width;
    }

    public int hashCode() {
        return this.ascent ^ this.descent ^ this.width;
    }

    public String toString() {
        return "GlyphMetrics {" + this.ascent + ", " + this.descent + ", " + this.width + "}";
    }
}

