/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.graphics.RGB
 */
package org.eclipse.jface.internal.text.revisions;

import org.eclipse.core.runtime.Assert;
import org.eclipse.swt.graphics.RGB;

public final class Colors {
    public static float brightness(RGB rgb) {
        return Math.min(1.0f, (0.2126f * (float)rgb.red + 0.7152f * (float)rgb.green + 0.0722f * (float)rgb.blue + 0.5f) / 255.0f);
    }

    public static RGB adjustBrightness(RGB color, float brightness) {
        float[] hsi = Colors.toHSI(color);
        float psychoFactor = brightness - Colors.brightness(color);
        float weight = 0.5f;
        hsi[2] = Math.max(0.0f, Math.min(1.0f, hsi[2] + psychoFactor * weight));
        color = Colors.fromHSI(hsi);
        return color;
    }

    private static float[] toHSI(RGB color) {
        float r = (float)color.red / 255.0f;
        float g = (float)color.green / 255.0f;
        float b = (float)color.blue / 255.0f;
        float max = Math.max(Math.max(r, g), b);
        float min = Math.min(Math.min(r, g), b);
        float delta = max - min;
        float maxPlusMin = max + min;
        float intensity = maxPlusMin / 2.0f;
        float saturation = (double)intensity < 0.5 ? delta / maxPlusMin : delta / (2.0f - maxPlusMin);
        float hue = 0.0f;
        if (delta != 0.0f) {
            hue = r == max ? (g - b) / delta : (g == max ? 2.0f + (b - r) / delta : 4.0f + (r - g) / delta);
            if ((hue *= 60.0f) < 0.0f) {
                hue += 360.0f;
            }
        }
        return new float[]{hue, saturation, intensity};
    }

    private static RGB fromHSI(float[] hsi) {
        float r;
        float g;
        float b;
        float hue = hsi[0];
        float saturation = hsi[1];
        float intensity = hsi[2];
        if (saturation == 0.0f) {
            g = b = intensity;
            r = b;
        } else {
            float temp2 = intensity < 0.5f ? intensity * (1.0f + saturation) : intensity + saturation - intensity * saturation;
            float temp1 = 2.0f * intensity - temp2;
            if (hue == 360.0f) {
                hue = 0.0f;
            }
            r = Colors.hue2RGB(temp1, temp2, (hue /= 360.0f) + 0.33333334f);
            g = Colors.hue2RGB(temp1, temp2, hue);
            b = Colors.hue2RGB(temp1, temp2, hue - 0.33333334f);
        }
        int red = (int)((double)(r * 255.0f) + 0.5);
        int green = (int)((double)(g * 255.0f) + 0.5);
        int blue = (int)((double)(b * 255.0f) + 0.5);
        return new RGB(red, green, blue);
    }

    private static float hue2RGB(float t1, float t2, float hue) {
        if (hue < 0.0f) {
            hue += 1.0f;
        } else if (hue > 1.0f) {
            hue -= 1.0f;
        }
        if (6.0f * hue < 1.0f) {
            return t1 + (t2 - t1) * 6.0f * hue;
        }
        if (2.0f * hue < 1.0f) {
            return t2;
        }
        if (3.0f * hue < 2.0f) {
            return t1 + (t2 - t1) * (0.6666667f - hue) * 6.0f;
        }
        return t1;
    }

    public static RGB blend(RGB bg, RGB fg, float factor) {
        Assert.isLegal((bg != null ? 1 : 0) != 0);
        Assert.isLegal((fg != null ? 1 : 0) != 0);
        Assert.isLegal((factor >= 0.0f && factor <= 1.0f ? 1 : 0) != 0);
        float complement = 1.0f - factor;
        return new RGB((int)(complement * (float)bg.red + factor * (float)fg.red), (int)(complement * (float)bg.green + factor * (float)fg.green), (int)(complement * (float)bg.blue + factor * (float)fg.blue));
    }

    public static RGB[] palette(RGB start, RGB end, int steps) {
        Assert.isLegal((start != null ? 1 : 0) != 0);
        Assert.isLegal((end != null ? 1 : 0) != 0);
        Assert.isLegal((steps > 0 ? 1 : 0) != 0);
        if (steps == 1) {
            return new RGB[]{start};
        }
        float step = 1.0f / (float)(steps - 1);
        RGB[] gradient = new RGB[steps];
        int i = 0;
        while (i < steps) {
            gradient[i] = Colors.blend(start, end, step * (float)i);
            ++i;
        }
        return gradient;
    }

    public static RGB[] rainbow(int steps) {
        Assert.isLegal((steps >= 2 ? 1 : 0) != 0);
        RGB[] rainbow = new RGB[steps];
        int i = 0;
        while (i < steps) {
            rainbow[i] = new RGB(Colors.computeHue(i), 1.0f, 1.0f);
            ++i;
        }
        return rainbow;
    }

    public static float computeHue(int index) {
        Assert.isLegal((index >= 0 ? 1 : 0) != 0);
        int baseIndex = index / 3;
        float baseRange = 120.0f;
        float baseOffset = 0.0f;
        while (baseIndex > 0) {
            int lsb = baseIndex % 2;
            baseOffset += (float)lsb * (baseRange /= 2.0f);
            baseIndex >>= 1;
        }
        int baseMod = index % 3;
        float hue = baseOffset + (float)baseMod * 360.0f / 3.0f;
        Assert.isTrue((hue >= 0.0f && hue < 360.0f ? 1 : 0) != 0);
        return hue;
    }

    private Colors() {
    }
}

