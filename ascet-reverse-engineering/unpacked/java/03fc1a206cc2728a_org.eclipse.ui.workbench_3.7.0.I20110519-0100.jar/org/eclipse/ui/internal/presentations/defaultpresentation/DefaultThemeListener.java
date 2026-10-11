/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.RGB
 */
package org.eclipse.ui.internal.presentations.defaultpresentation;

import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.ui.internal.preferences.AbstractPropertyListener;
import org.eclipse.ui.internal.preferences.IPropertyMap;
import org.eclipse.ui.internal.preferences.PropertyUtil;
import org.eclipse.ui.internal.presentations.defaultpresentation.DefaultTabFolder;
import org.eclipse.ui.internal.presentations.defaultpresentation.DefaultTabFolderColors;
import org.eclipse.ui.internal.themes.LightColorFactory;

public class DefaultThemeListener
extends AbstractPropertyListener {
    private DefaultTabFolder folder;
    private IPropertyMap theme;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;

    public DefaultThemeListener(DefaultTabFolder folder, IPropertyMap theme) {
        this.folder = folder;
        this.theme = theme;
    }

    private Color getColor(String id, Color defaultValue) {
        Color value;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.swt.graphics.Color");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((value = (Color)this.theme.getValue(id, clazz)) == null) {
            value = defaultValue;
        }
        return value;
    }

    private int getInt(String id, int defaultValue) {
        Integer result;
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("java.lang.Integer");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((result = (Integer)this.theme.getValue(id, clazz)) == null) {
            return defaultValue;
        }
        return result;
    }

    private boolean getBoolean(String id, boolean defaultValue) {
        Boolean result;
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("java.lang.Boolean");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((result = (Boolean)this.theme.getValue(id, clazz)) == null) {
            return defaultValue;
        }
        return result;
    }

    private boolean updateHighlightColor() {
        if (!this.useHighlight()) {
            return false;
        }
        RGB newTabBegin = this.getColor("org.eclipse.ui.workbench.ACTIVE_TAB_BG_START", null).getRGB();
        RGB newHighlight = LightColorFactory.createHighlightStartColor(newTabBegin);
        JFaceResources.getColorRegistry().put("org.eclipse.ui.workbench.ACTIVE_TAB_HIGHLIGHT_START", newHighlight);
        return true;
    }

    private boolean useHighlight() {
        return PropertyUtil.get(this.theme, "org.eclipse.ui.workbench.ACTIVE_TAB_HIGHLIGHT", false);
    }

    public void update() {
        Color[] colorArray;
        if (this.updateHighlightColor()) {
            Color[] colorArray2 = new Color[3];
            colorArray2[0] = this.getColor("org.eclipse.ui.workbench.ACTIVE_TAB_BG_START", null);
            colorArray2[1] = this.getColor("org.eclipse.ui.workbench.ACTIVE_TAB_BG_END", null);
            colorArray = colorArray2;
            colorArray2[2] = JFaceResources.getColorRegistry().get("org.eclipse.ui.workbench.ACTIVE_TAB_HIGHLIGHT_START");
        } else {
            Color[] colorArray3 = new Color[2];
            colorArray3[0] = this.getColor("org.eclipse.ui.workbench.ACTIVE_TAB_BG_START", null);
            colorArray = colorArray3;
            colorArray3[1] = this.getColor("org.eclipse.ui.workbench.ACTIVE_TAB_BG_END", null);
        }
        Color[] activeFocusBackgroundColors = colorArray;
        this.folder.setColors(new DefaultTabFolderColors(this.getColor("org.eclipse.ui.workbench.ACTIVE_TAB_TEXT_COLOR", null), activeFocusBackgroundColors, new int[]{this.getInt("org.eclipse.ui.workbench.ACTIVE_TAB_PERCENT", 0)}, this.getBoolean("org.eclipse.ui.workbench.ACTIVE_TAB_VERTICAL", true)), 1, true);
        this.folder.setColors(new DefaultTabFolderColors(this.getColor("org.eclipse.ui.workbench.ACTIVE_NOFOCUS_TAB_TEXT_COLOR", null), new Color[]{this.getColor("org.eclipse.ui.workbench.ACTIVE_NOFOCUS_TAB_BG_START", null), this.getColor("org.eclipse.ui.workbench.ACTIVE_NOFOCUS_TAB_BG_END", null)}, new int[]{this.getInt("org.eclipse.ui.workbench.ACTIVE_NOFOCUS_TAB_PERCENT", 0)}, this.getBoolean("org.eclipse.ui.workbench.ACTIVE_NOFOCUS_TAB_VERTICAL", true)), 1, false);
        this.folder.setColors(new DefaultTabFolderColors(this.getColor("org.eclipse.ui.workbench.INACTIVE_TAB_TEXT_COLOR", null), new Color[]{this.getColor("org.eclipse.ui.workbench.INACTIVE_TAB_BG_START", null), this.getColor("org.eclipse.ui.workbench.INACTIVE_TAB_BG_END", null)}, new int[]{this.getInt("org.eclipse.ui.workbench.INACTIVE_TAB_PERCENT", 0)}, this.getBoolean("org.eclipse.ui.workbench.INACTIVE_TAB_VERTICAL", true)), 0);
        this.folder.setColors(new DefaultTabFolderColors(this.getColor("org.eclipse.ui.workbench.INACTIVE_TAB_TEXT_COLOR", null), new Color[]{this.getColor("org.eclipse.ui.workbench.INACTIVE_TAB_BG_START", null)}, new int[0], true), 2);
        Class<?> clazz = class$3;
        if (clazz == null) {
            try {
                clazz = class$3 = Class.forName("org.eclipse.swt.graphics.Font");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.folder.setFont((Font)this.theme.getValue("org.eclipse.ui.workbench.TAB_TEXT_FONT", clazz));
    }
}

