/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.TextStyle;
import org.eclipse.swt.internal.CloneableCompatibility;

public class StyleRange
extends TextStyle
implements CloneableCompatibility {
    public int start;
    public int length;
    public int fontStyle = 0;

    public StyleRange() {
    }

    public StyleRange(TextStyle style) {
        super(style);
    }

    public StyleRange(int start, int length, Color foreground, Color background) {
        super(null, foreground, background);
        this.start = start;
        this.length = length;
    }

    public StyleRange(int start, int length, Color foreground, Color background, int fontStyle) {
        this(start, length, foreground, background);
        this.fontStyle = fontStyle;
    }

    public boolean equals(Object object) {
        if (object == this) {
            return true;
        }
        if (object instanceof StyleRange) {
            StyleRange style = (StyleRange)object;
            if (this.start != style.start) {
                return false;
            }
            if (this.length != style.length) {
                return false;
            }
            return this.similarTo(style);
        }
        return false;
    }

    public int hashCode() {
        return super.hashCode() ^ this.fontStyle;
    }

    boolean isVariableHeight() {
        return this.font != null || this.metrics != null || this.rise != 0;
    }

    public boolean isUnstyled() {
        if (this.font != null) {
            return false;
        }
        if (this.rise != 0) {
            return false;
        }
        if (this.metrics != null) {
            return false;
        }
        if (this.foreground != null) {
            return false;
        }
        if (this.background != null) {
            return false;
        }
        if (this.fontStyle != 0) {
            return false;
        }
        if (this.underline) {
            return false;
        }
        if (this.strikeout) {
            return false;
        }
        return this.borderStyle == 0;
    }

    public boolean similarTo(StyleRange style) {
        if (!super.equals(style)) {
            return false;
        }
        return this.fontStyle == style.fontStyle;
    }

    public Object clone() {
        try {
            return super.clone();
        }
        catch (CloneNotSupportedException cloneNotSupportedException) {
            return null;
        }
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("StyleRange {");
        buffer.append(this.start);
        buffer.append(", ");
        buffer.append(this.length);
        buffer.append(", fontStyle=");
        switch (this.fontStyle) {
            case 1: {
                buffer.append("bold");
                break;
            }
            case 2: {
                buffer.append("italic");
                break;
            }
            case 3: {
                buffer.append("bold-italic");
                break;
            }
            default: {
                buffer.append("normal");
            }
        }
        String str = super.toString();
        int index = str.indexOf(123);
        str = str.substring(index + 1);
        if (str.length() > 1) {
            buffer.append(", ");
        }
        buffer.append(str);
        return buffer.toString();
    }
}

