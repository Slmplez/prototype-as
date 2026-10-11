/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExecutableExtension
 *  org.eclipse.swt.graphics.RGB
 */
package org.eclipse.ui.internal.themes;

import java.util.Hashtable;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExecutableExtension;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.ui.themes.ColorUtil;
import org.eclipse.ui.themes.IColorFactory;

public class RGBContrastFactory
implements IColorFactory,
IExecutableExtension {
    private String fg;
    private String bg1;
    private String bg2;

    double voltage_to_intensity_srgb(double val) {
        if (val < 0.0) {
            return 0.0;
        }
        if (val > 1.0) {
            return 1.0;
        }
        if (val <= 0.04045) {
            return val / 12.92;
        }
        return Math.pow((val + 0.055) / 1.055, 2.4);
    }

    double lightness(RGB color) {
        double r = this.voltage_to_intensity_srgb((double)color.red / 255.0);
        double g = this.voltage_to_intensity_srgb((double)color.green / 255.0);
        double b = this.voltage_to_intensity_srgb((double)color.blue / 255.0);
        double l = 0.3139 * r + 0.6395 * g + 0.0466 * b;
        double m = 0.1516 * r + 0.7482 * g + 0.1 * b;
        double s = 0.0177 * r + 0.1095 * g + 0.8729 * b;
        double lp = l < 0.0 ? -Math.pow(-l, 0.43) : Math.pow(l, 0.43);
        double mp = m < 0.0 ? -Math.pow(-m, 0.43) : Math.pow(m, 0.43);
        double sp = s < 0.0 ? -Math.pow(-s, 0.43) : Math.pow(s, 0.43);
        return 0.4 * lp + 0.4 * mp + 0.2 * sp;
    }

    public RGB createColor() {
        RGB cfg = this.fg != null ? ColorUtil.getColorValue(this.fg) : new RGB(255, 255, 255);
        RGB cbg1 = this.bg1 != null ? ColorUtil.getColorValue(this.bg1) : new RGB(0, 0, 0);
        RGB cbg2 = this.bg2 != null ? ColorUtil.getColorValue(this.bg2) : new RGB(0, 0, 0);
        double lfg = this.lightness(cfg);
        double lbg1 = this.lightness(cbg1);
        double lbg2 = this.lightness(cbg2);
        if (Math.abs(lbg1 - lfg) > Math.abs(lbg2 - lfg)) {
            return cbg1;
        }
        return cbg2;
    }

    public void setInitializationData(IConfigurationElement config, String propertyName, Object data) throws CoreException {
        if (data instanceof Hashtable) {
            Hashtable table = (Hashtable)data;
            this.fg = (String)table.get("foreground");
            this.bg1 = (String)table.get("background1");
            this.bg2 = (String)table.get("background2");
        }
    }
}

