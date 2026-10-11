/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExecutableExtension
 *  org.eclipse.swt.graphics.RGB
 */
package org.eclipse.ui.themes;

import java.util.Hashtable;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExecutableExtension;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.ui.themes.ColorUtil;
import org.eclipse.ui.themes.IColorFactory;

public class RGBBlendColorFactory
implements IColorFactory,
IExecutableExtension {
    private String color1;
    private String color2;

    public RGB createColor() {
        if (this.color1 == null && this.color2 == null) {
            return new RGB(0, 0, 0);
        }
        if (this.color1 != null && this.color2 == null) {
            return ColorUtil.getColorValue(this.color1);
        }
        if (this.color1 == null && this.color2 != null) {
            return ColorUtil.getColorValue(this.color2);
        }
        RGB rgb1 = ColorUtil.getColorValue(this.color1);
        RGB rgb2 = ColorUtil.getColorValue(this.color2);
        return ColorUtil.blend(rgb1, rgb2);
    }

    public void setInitializationData(IConfigurationElement config, String propertyName, Object data) throws CoreException {
        if (data instanceof Hashtable) {
            Hashtable table = (Hashtable)data;
            this.color1 = (String)table.get("color1");
            this.color2 = (String)table.get("color2");
        }
    }
}

