/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.graphics;

import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GlyphMetrics;

public class TextStyle {
    public Font font;
    public Color foreground;
    public Color background;
    public boolean underline;
    public Color underlineColor;
    public int underlineStyle;
    public boolean strikeout;
    public Color strikeoutColor;
    public int borderStyle;
    public Color borderColor;
    public GlyphMetrics metrics;
    public int rise;
    public Object data;

    public TextStyle() {
    }

    public TextStyle(Font font, Color foreground, Color background) {
        if (font != null && font.isDisposed()) {
            SWT.error(5);
        }
        if (foreground != null && foreground.isDisposed()) {
            SWT.error(5);
        }
        if (background != null && background.isDisposed()) {
            SWT.error(5);
        }
        this.font = font;
        this.foreground = foreground;
        this.background = background;
    }

    public TextStyle(TextStyle style) {
        if (style == null) {
            SWT.error(5);
        }
        this.font = style.font;
        this.foreground = style.foreground;
        this.background = style.background;
        this.underline = style.underline;
        this.underlineColor = style.underlineColor;
        this.underlineStyle = style.underlineStyle;
        this.strikeout = style.strikeout;
        this.strikeoutColor = style.strikeoutColor;
        this.borderStyle = style.borderStyle;
        this.borderColor = style.borderColor;
        this.metrics = style.metrics;
        this.rise = style.rise;
        this.data = style.data;
    }

    public boolean equals(Object object) {
        if (object == this) {
            return true;
        }
        if (object == null) {
            return false;
        }
        if (!(object instanceof TextStyle)) {
            return false;
        }
        TextStyle style = (TextStyle)object;
        if (this.foreground != null ? !this.foreground.equals(style.foreground) : style.foreground != null) {
            return false;
        }
        if (this.background != null ? !this.background.equals(style.background) : style.background != null) {
            return false;
        }
        if (this.font != null ? !this.font.equals(style.font) : style.font != null) {
            return false;
        }
        if (this.metrics != null || style.metrics != null) {
            return false;
        }
        if (this.underline != style.underline) {
            return false;
        }
        if (this.underlineStyle != style.underlineStyle) {
            return false;
        }
        if (this.borderStyle != style.borderStyle) {
            return false;
        }
        if (this.strikeout != style.strikeout) {
            return false;
        }
        if (this.rise != style.rise) {
            return false;
        }
        if (this.underlineColor != null ? !this.underlineColor.equals(style.underlineColor) : style.underlineColor != null) {
            return false;
        }
        if (this.strikeoutColor != null ? !this.strikeoutColor.equals(style.strikeoutColor) : style.strikeoutColor != null) {
            return false;
        }
        if (this.underlineStyle != style.underlineStyle) {
            return false;
        }
        if (this.borderColor != null ? !this.borderColor.equals(style.borderColor) : style.borderColor != null) {
            return false;
        }
        return !(this.data != null ? !this.data.equals(style.data) : style.data != null);
    }

    public int hashCode() {
        int hash = 0;
        if (this.foreground != null) {
            hash ^= this.foreground.hashCode();
        }
        if (this.background != null) {
            hash ^= this.background.hashCode();
        }
        if (this.font != null) {
            hash ^= this.font.hashCode();
        }
        if (this.metrics != null) {
            hash ^= this.metrics.hashCode();
        }
        if (this.underline) {
            hash ^= hash << 1;
        }
        if (this.strikeout) {
            hash ^= hash << 2;
        }
        hash ^= this.rise;
        if (this.underlineColor != null) {
            hash ^= this.underlineColor.hashCode();
        }
        if (this.strikeoutColor != null) {
            hash ^= this.strikeoutColor.hashCode();
        }
        if (this.borderColor != null) {
            hash ^= this.borderColor.hashCode();
        }
        return hash ^= this.underlineStyle;
    }

    boolean isAdherentBorder(TextStyle style) {
        if (this == style) {
            return true;
        }
        if (style == null) {
            return false;
        }
        if (this.borderStyle != style.borderStyle) {
            return false;
        }
        if (this.borderColor != null) {
            if (!this.borderColor.equals(style.borderColor)) {
                return false;
            }
        } else {
            if (style.borderColor != null) {
                return false;
            }
            if (this.foreground != null ? !this.foreground.equals(style.foreground) : style.foreground != null) {
                return false;
            }
        }
        return true;
    }

    boolean isAdherentUnderline(TextStyle style) {
        if (this == style) {
            return true;
        }
        if (style == null) {
            return false;
        }
        if (this.underline != style.underline) {
            return false;
        }
        if (this.underlineStyle != style.underlineStyle) {
            return false;
        }
        if (this.underlineColor != null) {
            if (!this.underlineColor.equals(style.underlineColor)) {
                return false;
            }
        } else {
            if (style.underlineColor != null) {
                return false;
            }
            if (this.foreground != null ? !this.foreground.equals(style.foreground) : style.foreground != null) {
                return false;
            }
        }
        return true;
    }

    boolean isAdherentStrikeout(TextStyle style) {
        if (this == style) {
            return true;
        }
        if (style == null) {
            return false;
        }
        if (this.strikeout != style.strikeout) {
            return false;
        }
        if (this.strikeoutColor != null) {
            if (!this.strikeoutColor.equals(style.strikeoutColor)) {
                return false;
            }
        } else {
            if (style.strikeoutColor != null) {
                return false;
            }
            if (this.foreground != null ? !this.foreground.equals(style.foreground) : style.foreground != null) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer("TextStyle {");
        int startLength = buffer.length();
        if (this.font != null) {
            if (buffer.length() > startLength) {
                buffer.append(", ");
            }
            buffer.append("font=");
            buffer.append(this.font);
        }
        if (this.foreground != null) {
            if (buffer.length() > startLength) {
                buffer.append(", ");
            }
            buffer.append("foreground=");
            buffer.append(this.foreground);
        }
        if (this.background != null) {
            if (buffer.length() > startLength) {
                buffer.append(", ");
            }
            buffer.append("background=");
            buffer.append(this.background);
        }
        if (this.underline) {
            if (buffer.length() > startLength) {
                buffer.append(", ");
            }
            buffer.append("underline=");
            switch (this.underlineStyle) {
                case 0: {
                    buffer.append("single");
                    break;
                }
                case 1: {
                    buffer.append("double");
                    break;
                }
                case 3: {
                    buffer.append("squiggle");
                    break;
                }
                case 2: {
                    buffer.append("error");
                    break;
                }
                case 4: {
                    buffer.append("link");
                }
            }
            if (this.underlineColor != null) {
                buffer.append(", underlineColor=");
                buffer.append(this.underlineColor);
            }
        }
        if (this.strikeout) {
            if (buffer.length() > startLength) {
                buffer.append(", ");
            }
            buffer.append("striked out");
            if (this.strikeoutColor != null) {
                buffer.append(", strikeoutColor=");
                buffer.append(this.strikeoutColor);
            }
        }
        if (this.borderStyle != 0) {
            if (buffer.length() > startLength) {
                buffer.append(", ");
            }
            buffer.append("border=");
            switch (this.borderStyle) {
                case 1: {
                    buffer.append("solid");
                    break;
                }
                case 4: {
                    buffer.append("dot");
                    break;
                }
                case 2: {
                    buffer.append("dash");
                }
            }
            if (this.borderColor != null) {
                buffer.append(", borderColor=");
                buffer.append(this.borderColor);
            }
        }
        if (this.rise != 0) {
            if (buffer.length() > startLength) {
                buffer.append(", ");
            }
            buffer.append("rise=");
            buffer.append(this.rise);
        }
        if (this.metrics != null) {
            if (buffer.length() > startLength) {
                buffer.append(", ");
            }
            buffer.append("metrics=");
            buffer.append(this.metrics);
        }
        buffer.append("}");
        return buffer.toString();
    }
}

