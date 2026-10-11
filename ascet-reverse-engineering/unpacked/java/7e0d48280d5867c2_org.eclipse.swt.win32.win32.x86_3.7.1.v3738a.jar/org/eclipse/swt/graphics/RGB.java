/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.graphics;

import org.eclipse.swt.SWT;
import org.eclipse.swt.internal.SerializableCompatibility;

public final class RGB
implements SerializableCompatibility {
    public int red;
    public int green;
    public int blue;
    static final long serialVersionUID = 3258415023461249074L;

    public RGB(int red, int green, int blue) {
        if (red > 255 || red < 0 || green > 255 || green < 0 || blue > 255 || blue < 0) {
            SWT.error(5);
        }
        this.red = red;
        this.green = green;
        this.blue = blue;
    }

    public RGB(float hue, float saturation, float brightness) {
        float r;
        float g;
        float b;
        if (hue < 0.0f || hue > 360.0f || saturation < 0.0f || saturation > 1.0f || brightness < 0.0f || brightness > 1.0f) {
            SWT.error(5);
        }
        if (saturation == 0.0f) {
            g = b = brightness;
            r = b;
        } else {
            if (hue == 360.0f) {
                hue = 0.0f;
            }
            int i = (int)(hue /= 60.0f);
            float f = hue - (float)i;
            float p = brightness * (1.0f - saturation);
            float q = brightness * (1.0f - saturation * f);
            float t = brightness * (1.0f - saturation * (1.0f - f));
            switch (i) {
                case 0: {
                    r = brightness;
                    g = t;
                    b = p;
                    break;
                }
                case 1: {
                    r = q;
                    g = brightness;
                    b = p;
                    break;
                }
                case 2: {
                    r = p;
                    g = brightness;
                    b = t;
                    break;
                }
                case 3: {
                    r = p;
                    g = q;
                    b = brightness;
                    break;
                }
                case 4: {
                    r = t;
                    g = p;
                    b = brightness;
                    break;
                }
                default: {
                    r = brightness;
                    g = p;
                    b = q;
                }
            }
        }
        this.red = (int)((double)(r * 255.0f) + 0.5);
        this.green = (int)((double)(g * 255.0f) + 0.5);
        this.blue = (int)((double)(b * 255.0f) + 0.5);
    }

    public float[] getHSB() {
        float saturation;
        float r = (float)this.red / 255.0f;
        float g = (float)this.green / 255.0f;
        float b = (float)this.blue / 255.0f;
        float max = Math.max(Math.max(r, g), b);
        float min = Math.min(Math.min(r, g), b);
        float delta = max - min;
        float hue = 0.0f;
        float brightness = max;
        float f = saturation = max == 0.0f ? 0.0f : (max - min) / max;
        if (delta != 0.0f) {
            hue = r == max ? (g - b) / delta : (g == max ? 2.0f + (b - r) / delta : 4.0f + (r - g) / delta);
            if ((hue *= 60.0f) < 0.0f) {
                hue += 360.0f;
            }
        }
        return new float[]{hue, saturation, brightness};
    }

    public boolean equals(Object object) {
        if (object == this) {
            return true;
        }
        if (!(object instanceof RGB)) {
            return false;
        }
        RGB rgb = (RGB)object;
        return rgb.red == this.red && rgb.green == this.green && rgb.blue == this.blue;
    }

    public int hashCode() {
        return this.blue << 16 | this.green << 8 | this.red;
    }

    public String toString() {
        return "RGB {" + this.red + ", " + this.green + ", " + this.blue + "}";
    }
}

