/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExecutableExtension
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.internal.themes;

import java.util.Hashtable;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExecutableExtension;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.themes.ColorUtil;
import org.eclipse.ui.themes.IColorFactory;

public class LightColorFactory
implements IColorFactory,
IExecutableExtension {
    protected static final RGB white = ColorUtil.getColorValue("COLOR_WHITE");
    protected static final RGB black = ColorUtil.getColorValue("COLOR_BLACK");
    String baseColorName;
    String definitionId;

    public static RGB createHighlightStartColor(RGB tabStartColor) {
        return ColorUtil.blend(white, tabStartColor);
    }

    public void setInitializationData(IConfigurationElement config, String propertyName, Object data) {
        if (data instanceof Hashtable) {
            Hashtable table = (Hashtable)data;
            this.baseColorName = (String)table.get("base");
            this.definitionId = (String)table.get("definitionId");
        }
    }

    protected int valuesInRange(RGB test, int lower, int upper) {
        int hits = 0;
        if (test.red >= lower && test.red <= upper) {
            ++hits;
        }
        if (test.blue >= lower && test.blue <= upper) {
            ++hits;
        }
        if (test.green >= lower && test.green <= upper) {
            ++hits;
        }
        return hits;
    }

    private RGB getLightenedColor(RGB sample) {
        if (this.valuesInRange(sample, 180, 255) >= 2) {
            return sample;
        }
        if (this.valuesInRange(sample, 100, 179) >= 2) {
            return ColorUtil.blend(white, sample, 40);
        }
        if (this.valuesInRange(sample, 0, 99) >= 2) {
            return ColorUtil.blend(white, sample, 60);
        }
        return ColorUtil.blend(white, sample, 30);
    }

    private RGB getActiveFocusStartColor() {
        if (Display.getCurrent().getDepth() < 15) {
            return this.getActiveFocusEndColor();
        }
        RGB startColor = ColorUtil.blend(white, this.getActiveFocusEndColor(), 75);
        return startColor;
    }

    private RGB getActiveFocusEndColor() {
        if (Display.getCurrent().getDepth() < 15) {
            return ColorUtil.getColorValue(this.baseColorName);
        }
        return this.getLightenedColor(ColorUtil.getColorValue(this.baseColorName));
    }

    private RGB getActiveFocusTextColor() {
        if (Display.getCurrent().getDepth() < 15) {
            return ColorUtil.getColorValue(this.baseColorName);
        }
        return ColorUtil.getColorValue("COLOR_BLACK");
    }

    private RGB getActiveNofocusStartColor() {
        RGB base = ColorUtil.getColorValue(this.baseColorName);
        if (Display.getCurrent().getDepth() < 15) {
            return base;
        }
        return ColorUtil.blend(white, base, 40);
    }

    public RGB createColor() {
        if (this.baseColorName == null || this.definitionId == null) {
            return white;
        }
        if (this.definitionId.equals("org.eclipse.ui.workbench.ACTIVE_TAB_BG_START")) {
            return this.getActiveFocusStartColor();
        }
        if (this.definitionId.equals("org.eclipse.ui.workbench.ACTIVE_TAB_BG_END")) {
            return this.getActiveFocusEndColor();
        }
        if (this.definitionId.equals("org.eclipse.ui.workbench.ACTIVE_TAB_TEXT_COLOR")) {
            return this.getActiveFocusTextColor();
        }
        if (this.definitionId.equals("org.eclipse.ui.workbench.ACTIVE_NOFOCUS_TAB_BG_START")) {
            return this.getActiveNofocusStartColor();
        }
        return white;
    }
}

