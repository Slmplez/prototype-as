/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.RGB
 */
package org.eclipse.jface.resource;

import org.eclipse.jface.resource.ColorDescriptor;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.RGB;

class RGBColorDescriptor
extends ColorDescriptor {
    private RGB color;
    private Color originalColor = null;

    public RGBColorDescriptor(RGB color) {
        this.color = color;
    }

    public RGBColorDescriptor(Color originalColor) {
        this(originalColor.getRGB());
        this.originalColor = originalColor;
    }

    public boolean equals(Object obj) {
        if (obj instanceof RGBColorDescriptor) {
            RGBColorDescriptor other = (RGBColorDescriptor)obj;
            return other.color.equals((Object)this.color) && other.originalColor == this.originalColor;
        }
        return false;
    }

    public int hashCode() {
        return this.color.hashCode();
    }

    public Color createColor(Device device) {
        if (this.originalColor != null && this.originalColor.getDevice() == device) {
            return this.originalColor;
        }
        return new Color(device, this.color);
    }

    public void destroyColor(Color toDestroy) {
        if (toDestroy == this.originalColor) {
            return;
        }
        toDestroy.dispose();
    }
}

