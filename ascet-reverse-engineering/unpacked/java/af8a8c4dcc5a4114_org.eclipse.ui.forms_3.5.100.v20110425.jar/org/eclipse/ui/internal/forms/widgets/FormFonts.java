/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.DeviceResourceDescriptor
 *  org.eclipse.jface.resource.DeviceResourceException
 *  org.eclipse.jface.resource.FontDescriptor
 *  org.eclipse.jface.resource.LocalResourceManager
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.FontData
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.internal.forms.widgets;

import java.util.HashMap;
import org.eclipse.jface.resource.DeviceResourceDescriptor;
import org.eclipse.jface.resource.DeviceResourceException;
import org.eclipse.jface.resource.FontDescriptor;
import org.eclipse.jface.resource.LocalResourceManager;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.internal.forms.widgets.ResourceManagerManger;

public class FormFonts {
    private static FormFonts instance;
    private ResourceManagerManger manager = new ResourceManagerManger();
    private HashMap descriptors;

    public static FormFonts getInstance() {
        if (instance == null) {
            instance = new FormFonts();
        }
        return instance;
    }

    private FormFonts() {
    }

    public Font getBoldFont(Display display, Font font) {
        this.checkHashMaps();
        BoldFontDescriptor desc = new BoldFontDescriptor(font);
        Font result = this.manager.getResourceManager(display).createFont((FontDescriptor)desc);
        this.descriptors.put(result, desc);
        return result;
    }

    public boolean markFinished(Font boldFont, Display display) {
        this.checkHashMaps();
        BoldFontDescriptor desc = (BoldFontDescriptor)((Object)this.descriptors.get(boldFont));
        if (desc != null) {
            LocalResourceManager resourceManager = this.manager.getResourceManager(display);
            resourceManager.destroyFont((FontDescriptor)desc);
            if (resourceManager.find((DeviceResourceDescriptor)desc) == null) {
                this.descriptors.remove(boldFont);
                this.validateHashMaps();
            }
            return true;
        }
        boldFont.dispose();
        return false;
    }

    private void checkHashMaps() {
        if (this.descriptors == null) {
            this.descriptors = new HashMap();
        }
    }

    private void validateHashMaps() {
        if (this.descriptors.size() == 0) {
            this.descriptors = null;
        }
    }

    private class BoldFontDescriptor
    extends FontDescriptor {
        private FontData[] fFontData;

        BoldFontDescriptor(Font font) {
            this.fFontData = font.getFontData();
            int i = 0;
            while (i < this.fFontData.length) {
                this.fFontData[i].setStyle(this.fFontData[i].getStyle() | 1);
                ++i;
            }
        }

        public boolean equals(Object obj) {
            if (obj instanceof BoldFontDescriptor) {
                BoldFontDescriptor desc = (BoldFontDescriptor)((Object)obj);
                if (desc.fFontData.length != this.fFontData.length) {
                    return false;
                }
                int i = 0;
                while (i < this.fFontData.length) {
                    if (!this.fFontData[i].equals((Object)desc.fFontData[i])) {
                        return false;
                    }
                    ++i;
                }
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hash = 0;
            int i = 0;
            while (i < this.fFontData.length) {
                hash = hash * 7 + this.fFontData[i].hashCode();
                ++i;
            }
            return hash;
        }

        public Font createFont(Device device) throws DeviceResourceException {
            return new Font(device, this.fFontData);
        }

        public void destroyFont(Font previouslyCreatedFont) {
            previouslyCreatedFont.dispose();
        }
    }
}

