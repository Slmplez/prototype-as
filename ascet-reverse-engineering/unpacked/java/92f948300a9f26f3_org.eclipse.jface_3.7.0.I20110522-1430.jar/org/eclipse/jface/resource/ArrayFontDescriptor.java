/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.FontData
 */
package org.eclipse.jface.resource;

import org.eclipse.jface.resource.FontDescriptor;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontData;

final class ArrayFontDescriptor
extends FontDescriptor {
    private FontData[] data;
    private Font originalFont = null;
    static /* synthetic */ Class class$0;

    public ArrayFontDescriptor(FontData[] data) {
        this.data = data;
    }

    public ArrayFontDescriptor(Font originalFont) {
        this(originalFont.getFontData());
        this.originalFont = originalFont;
    }

    public FontData[] getFontData() {
        return ArrayFontDescriptor.copy(this.data);
    }

    public Font createFont(Device device) {
        if (this.originalFont != null && this.originalFont.getDevice() == device) {
            return this.originalFont;
        }
        return new Font(device, this.data);
    }

    public boolean equals(Object obj) {
        Class<?> clazz = obj.getClass();
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.jface.resource.ArrayFontDescriptor");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz == clazz2) {
            ArrayFontDescriptor descr = (ArrayFontDescriptor)obj;
            if (descr.originalFont != this.originalFont) {
                return false;
            }
            if (this.originalFont != null) {
                return true;
            }
            if (this.data.length != descr.data.length) {
                return false;
            }
            int i = 0;
            while (i < this.data.length) {
                FontData fd = this.data[i];
                FontData fd2 = descr.data[i];
                if (!fd.equals((Object)fd2)) {
                    return false;
                }
                ++i;
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (this.originalFont != null) {
            return this.originalFont.hashCode();
        }
        int code = 0;
        int i = 0;
        while (i < this.data.length) {
            FontData fd = this.data[i];
            code += fd.hashCode();
            ++i;
        }
        return code;
    }

    public void destroyFont(Font previouslyCreatedFont) {
        if (previouslyCreatedFont == this.originalFont) {
            return;
        }
        previouslyCreatedFont.dispose();
    }
}

