/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Font
 */
package org.eclipse.jface.text;

import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;

public class TextAttribute {
    public static final int STRIKETHROUGH = 0x20000000;
    public static final int UNDERLINE = 0x40000000;
    private Color foreground;
    private Color background;
    private int style;
    private Font font;
    private int fHashCode;

    public TextAttribute(Color foreground, Color background, int style) {
        this.foreground = foreground;
        this.background = background;
        this.style = style;
    }

    public TextAttribute(Color foreground, Color background, int style, Font font) {
        this.foreground = foreground;
        this.background = background;
        this.style = style;
        this.font = font;
    }

    public TextAttribute(Color foreground) {
        this(foreground, null, 0);
    }

    public boolean equals(Object object) {
        if (object == this) {
            return true;
        }
        if (!(object instanceof TextAttribute)) {
            return false;
        }
        TextAttribute a = (TextAttribute)object;
        return a.style == this.style && this.equals(a.foreground, this.foreground) && this.equals(a.background, this.background) && this.equals(a.font, this.font);
    }

    private boolean equals(Object o1, Object o2) {
        if (o1 != null) {
            return o1.equals(o2);
        }
        return o2 == null;
    }

    public int hashCode() {
        if (this.fHashCode == 0) {
            int multiplier = 37;
            this.fHashCode = 13;
            this.fHashCode = multiplier * this.fHashCode + (this.font == null ? 0 : this.font.hashCode());
            this.fHashCode = multiplier * this.fHashCode + (this.background == null ? 0 : this.background.hashCode());
            this.fHashCode = multiplier * this.fHashCode + (this.foreground == null ? 0 : this.foreground.hashCode());
            this.fHashCode = multiplier * this.fHashCode + this.style;
        }
        return this.fHashCode;
    }

    public Color getForeground() {
        return this.foreground;
    }

    public Color getBackground() {
        return this.background;
    }

    public int getStyle() {
        return this.style;
    }

    public Font getFont() {
        return this.font;
    }
}

