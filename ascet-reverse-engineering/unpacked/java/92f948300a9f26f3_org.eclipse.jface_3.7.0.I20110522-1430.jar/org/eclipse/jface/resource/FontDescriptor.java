/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.FontData
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.jface.resource;

import org.eclipse.jface.resource.ArrayFontDescriptor;
import org.eclipse.jface.resource.DeviceResourceDescriptor;
import org.eclipse.jface.resource.DeviceResourceException;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.widgets.Display;

public abstract class FontDescriptor
extends DeviceResourceDescriptor {
    public static FontDescriptor createFrom(Font font, Device originalDevice) {
        return new ArrayFontDescriptor(font);
    }

    public static FontDescriptor createFrom(Font font) {
        return new ArrayFontDescriptor(font);
    }

    public static FontDescriptor createFrom(FontData[] data) {
        return new ArrayFontDescriptor(data);
    }

    public static FontDescriptor createFrom(FontData data) {
        return new ArrayFontDescriptor(new FontData[]{data});
    }

    public static FontDescriptor createFrom(String name, int height, int style) {
        return FontDescriptor.createFrom(new FontData(name, height, style));
    }

    public FontData[] getFontData() {
        Font tempFont = this.createFont((Device)Display.getCurrent());
        FontData[] result = tempFont.getFontData();
        this.destroyFont(tempFont);
        return result;
    }

    public static FontData[] copy(FontData[] original) {
        FontData[] result = new FontData[original.length];
        int i = 0;
        while (i < original.length) {
            FontData next = original[i];
            result[i] = FontDescriptor.copy(next);
            ++i;
        }
        return result;
    }

    public static FontData copy(FontData next) {
        FontData result = new FontData(next.getName(), next.getHeight(), next.getStyle());
        result.setLocale(next.getLocale());
        return result;
    }

    public final FontDescriptor setStyle(int style) {
        FontData[] data = this.getFontData();
        int i = 0;
        while (i < data.length) {
            FontData next = data[i];
            next.setStyle(style);
            ++i;
        }
        ArrayFontDescriptor result = new ArrayFontDescriptor(data);
        if (((Object)result).equals(this)) {
            return this;
        }
        return result;
    }

    public final FontDescriptor withStyle(int style) {
        FontData[] data = this.getFontData();
        int i = 0;
        while (i < data.length) {
            FontData next = data[i];
            next.setStyle(next.getStyle() | style);
            ++i;
        }
        ArrayFontDescriptor result = new ArrayFontDescriptor(data);
        if (((Object)result).equals(this)) {
            return this;
        }
        return result;
    }

    public final FontDescriptor setHeight(int height) {
        FontData[] data = this.getFontData();
        int i = 0;
        while (i < data.length) {
            FontData next = data[i];
            next.setHeight(height);
            ++i;
        }
        ArrayFontDescriptor result = new ArrayFontDescriptor(data);
        if (((Object)result).equals(this)) {
            return this;
        }
        return result;
    }

    public final FontDescriptor increaseHeight(int heightDelta) {
        if (heightDelta == 0) {
            return this;
        }
        FontData[] data = this.getFontData();
        int i = 0;
        while (i < data.length) {
            FontData next = data[i];
            next.setHeight(next.getHeight() + heightDelta);
            ++i;
        }
        return new ArrayFontDescriptor(data);
    }

    public abstract Font createFont(Device var1) throws DeviceResourceException;

    public abstract void destroyFont(Font var1);

    public final Object createResource(Device device) throws DeviceResourceException {
        return this.createFont(device);
    }

    public final void destroyResource(Object previouslyCreatedObject) {
        this.destroyFont((Font)previouslyCreatedObject);
    }
}

