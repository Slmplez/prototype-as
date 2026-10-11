/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.resource.LocalResourceManager
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.forms;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.resource.LocalResourceManager;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.widgets.Display;

public class FormColors {
    public static final String TITLE = "org.eclipse.ui.forms.TITLE";
    public static final String BORDER = "org.eclipse.ui.forms.BORDER";
    public static final String SEPARATOR = "org.eclipse.ui.forms.SEPARATOR";
    public static final String TB_BG = "org.eclipse.ui.forms.TB_BG";
    public static final String TB_FG = "org.eclipse.ui.forms.TB_FG";
    public static final String TB_GBG = "org.eclipse.ui.forms.TB_BG";
    public static final String TB_BORDER = "org.eclipse.ui.forms.TB_BORDER";
    public static final String TB_TOGGLE = "org.eclipse.ui.forms.TB_TOGGLE";
    public static final String TB_TOGGLE_HOVER = "org.eclipse.ui.forms.TB_TOGGLE_HOVER";
    protected Map colorRegistry = new HashMap(10);
    private LocalResourceManager resources;
    protected Color background;
    protected Color foreground;
    private boolean shared;
    protected Display display;
    protected Color border;

    public FormColors(Display display) {
        this.display = display;
        this.initialize();
    }

    public Display getDisplay() {
        return this.display;
    }

    protected void initialize() {
        this.background = this.display.getSystemColor(25);
        this.foreground = this.display.getSystemColor(24);
        this.initializeColorTable();
        this.updateBorderColor();
    }

    protected void initializeColorTable() {
        this.createTitleColor();
        this.createColor(SEPARATOR, this.getColor(TITLE).getRGB());
        RGB black = this.getSystemColor(2);
        RGB borderRGB = this.getSystemColor(35);
        this.createColor(BORDER, FormColors.blend(borderRGB, black, 80));
    }

    public void initializeSectionToolBarColors() {
        if (this.colorRegistry.containsKey("org.eclipse.ui.forms.TB_BG")) {
            return;
        }
        this.createTitleBarGradientColors();
        this.createTitleBarOutlineColors();
        this.createTwistieColors();
    }

    protected void initializeFormHeaderColors() {
        if (this.colorRegistry.containsKey("org.eclipse.ui.forms.H_BOTTOM_KEYLINE2")) {
            return;
        }
        this.createFormHeaderColors();
    }

    public RGB getSystemColor(int code) {
        return this.getDisplay().getSystemColor(code).getRGB();
    }

    public Color createColor(String key, RGB rgb) {
        Color c = this.getResourceManager().createColor(rgb);
        Color prevC = (Color)this.colorRegistry.get(key);
        if (prevC != null && !prevC.isDisposed()) {
            this.getResourceManager().destroyColor(prevC.getRGB());
        }
        this.colorRegistry.put(key, c);
        return c;
    }

    public Color getInactiveBackground() {
        String key = "__ncbg__";
        Color color = this.getColor(key);
        if (color == null) {
            RGB sel = this.getSystemColor(26);
            RGB ncbg = FormColors.blend(sel, this.getSystemColor(1), 5);
            color = this.createColor(key, ncbg);
        }
        return color;
    }

    public Color createColor(String key, int r, int g, int b) {
        return this.createColor(key, new RGB(r, g, b));
    }

    protected void updateBorderColor() {
        if (this.isWhiteBackground()) {
            this.border = this.getColor(BORDER);
        } else {
            this.border = this.display.getSystemColor(22);
            Color bg = this.getImpliedBackground();
            if (this.border.getRed() == bg.getRed() && this.border.getGreen() == bg.getGreen() && this.border.getBlue() == bg.getBlue()) {
                this.border = this.display.getSystemColor(17);
            }
        }
    }

    public void setBackground(Color bg) {
        this.background = bg;
        this.updateBorderColor();
        this.updateFormHeaderColors();
    }

    public void setForeground(Color fg) {
        this.foreground = fg;
    }

    public Color getBackground() {
        return this.background;
    }

    public Color getForeground() {
        return this.foreground;
    }

    public Color getBorderColor() {
        return this.border;
    }

    public boolean isWhiteBackground() {
        Color bg = this.getImpliedBackground();
        return bg.getRed() == 255 && bg.getGreen() == 255 && bg.getBlue() == 255;
    }

    public Color getColor(String key) {
        if (key.startsWith("org.eclipse.ui.forms.TB_")) {
            this.initializeSectionToolBarColors();
        } else if (key.startsWith("org.eclipse.ui.forms.H_")) {
            this.initializeFormHeaderColors();
        }
        return (Color)this.colorRegistry.get(key);
    }

    public void dispose() {
        if (this.resources != null) {
            this.resources.dispose();
        }
        this.resources = null;
        this.colorRegistry = null;
    }

    public void markShared() {
        this.shared = true;
    }

    public boolean isShared() {
        return this.shared;
    }

    public static RGB blend(RGB c1, RGB c2, int ratio) {
        int r = FormColors.blend(c1.red, c2.red, ratio);
        int g = FormColors.blend(c1.green, c2.green, ratio);
        int b = FormColors.blend(c1.blue, c2.blue, ratio);
        return new RGB(r, g, b);
    }

    public static boolean testAnyPrimaryColor(RGB rgb, int from, int to) {
        if (FormColors.testPrimaryColor(rgb.red, from, to)) {
            return true;
        }
        if (FormColors.testPrimaryColor(rgb.green, from, to)) {
            return true;
        }
        return FormColors.testPrimaryColor(rgb.blue, from, to);
    }

    public static boolean testTwoPrimaryColors(RGB rgb, int from, int to) {
        int total = 0;
        if (FormColors.testPrimaryColor(rgb.red, from, to)) {
            ++total;
        }
        if (FormColors.testPrimaryColor(rgb.green, from, to)) {
            ++total;
        }
        if (FormColors.testPrimaryColor(rgb.blue, from, to)) {
            ++total;
        }
        return total >= 2;
    }

    private static int blend(int v1, int v2, int ratio) {
        int b = (ratio * v1 + (100 - ratio) * v2) / 100;
        return Math.min(255, b);
    }

    private Color getImpliedBackground() {
        if (this.getBackground() != null) {
            return this.getBackground();
        }
        return this.getDisplay().getSystemColor(22);
    }

    private static boolean testPrimaryColor(int value, int from, int to) {
        return value > from && value < to;
    }

    private void createTitleColor() {
        RGB bg = this.getImpliedBackground().getRGB();
        RGB listSelection = this.getSystemColor(26);
        RGB listForeground = this.getSystemColor(24);
        RGB rgb = listSelection;
        if (FormColors.testTwoPrimaryColors(listSelection, -1, 121)) {
            rgb = listSelection;
        } else if (FormColors.testTwoPrimaryColors(listSelection, 120, 256) || bg.red == 0 && bg.green == 0 && bg.blue == 0) {
            rgb = FormColors.blend(listSelection, listForeground, 50);
        }
        this.createColor(TITLE, rgb);
    }

    private void createTwistieColors() {
        RGB rgb = this.getColor(TITLE).getRGB();
        RGB white = this.getSystemColor(1);
        this.createColor(TB_TOGGLE, rgb);
        rgb = FormColors.blend(rgb, white, 60);
        this.createColor(TB_TOGGLE_HOVER, rgb);
    }

    private void createTitleBarGradientColors() {
        RGB tbBg = this.getSystemColor(31);
        RGB bg = this.getImpliedBackground().getRGB();
        tbBg = FormColors.testTwoPrimaryColors(tbBg, 179, 256) ? FormColors.blend(tbBg, bg, 30) : (FormColors.testTwoPrimaryColors(tbBg, 120, 180) ? FormColors.blend(tbBg, bg, 20) : FormColors.blend(tbBg, bg, 10));
        this.createColor("org.eclipse.ui.forms.TB_BG", tbBg);
        this.createColor("org.eclipse.ui.forms.TB_BG", tbBg);
    }

    private void createTitleBarOutlineColors() {
        RGB tbBorder = this.getSystemColor(31);
        RGB bg = this.getImpliedBackground().getRGB();
        tbBorder = FormColors.testTwoPrimaryColors(tbBorder, 179, 256) ? FormColors.blend(tbBorder, bg, 70) : (FormColors.testTwoPrimaryColors(tbBorder, 120, 180) ? FormColors.blend(tbBorder, bg, 50) : FormColors.blend(tbBorder, bg, 30));
        this.createColor(TB_BORDER, tbBorder);
    }

    private void updateFormHeaderColors() {
        if (this.colorRegistry.containsKey("org.eclipse.ui.forms.H_GRADIENT_END")) {
            this.disposeIfFound("org.eclipse.ui.forms.H_GRADIENT_END");
            this.disposeIfFound("org.eclipse.ui.forms.H_GRADIENT_START");
            this.disposeIfFound("org.eclipse.ui.forms.H_BOTTOM_KEYLINE1");
            this.disposeIfFound("org.eclipse.ui.forms.H_BOTTOM_KEYLINE2");
            this.disposeIfFound("org.eclipse.ui.forms.H_H_HOVER_LIGHT");
            this.disposeIfFound("org.eclipse.ui.forms.H_H_HOVER_FULL");
            this.initializeFormHeaderColors();
        }
    }

    private void disposeIfFound(String key) {
        Color color = this.getColor(key);
        if (color != null) {
            this.colorRegistry.remove(key);
            color.dispose();
        }
    }

    private void createFormHeaderColors() {
        this.createFormHeaderGradientColors();
        this.createFormHeaderKeylineColors();
        this.createFormHeaderDNDColors();
    }

    private void createFormHeaderGradientColors() {
        RGB top;
        RGB bottom;
        RGB titleBg = this.getSystemColor(31);
        Color bgColor = this.getImpliedBackground();
        RGB bg = bgColor.getRGB();
        if (FormColors.testTwoPrimaryColors(titleBg, 179, 256)) {
            bottom = FormColors.blend(titleBg, bg, 30);
            top = bg;
        } else if (FormColors.testTwoPrimaryColors(titleBg, 120, 180)) {
            bottom = FormColors.blend(titleBg, bg, 20);
            top = bg;
        } else {
            bottom = FormColors.blend(titleBg, bg, 10);
            top = bg;
        }
        this.createColor("org.eclipse.ui.forms.H_GRADIENT_END", top);
        this.createColor("org.eclipse.ui.forms.H_GRADIENT_START", bottom);
    }

    private void createFormHeaderKeylineColors() {
        RGB titleBg = this.getSystemColor(31);
        Color bgColor = this.getImpliedBackground();
        RGB bg = bgColor.getRGB();
        this.createColor("org.eclipse.ui.forms.H_BOTTOM_KEYLINE1", new RGB(255, 255, 255));
        RGB keyline2 = FormColors.testTwoPrimaryColors(titleBg, 179, 256) ? FormColors.blend(titleBg, bg, 70) : (FormColors.testTwoPrimaryColors(titleBg, 120, 180) ? FormColors.blend(titleBg, bg, 50) : FormColors.blend(titleBg, bg, 30));
        this.createColor("org.eclipse.ui.forms.H_BOTTOM_KEYLINE2", keyline2);
    }

    private void createFormHeaderDNDColors() {
        RGB titleBg = this.getSystemColor(32);
        Color bgColor = this.getImpliedBackground();
        RGB bg = bgColor.getRGB();
        RGB light = FormColors.blend(titleBg, bg, 40);
        RGB full = FormColors.blend(titleBg, bg, 60);
        this.createColor("org.eclipse.ui.forms.H_H_HOVER_LIGHT", light);
        this.createColor("org.eclipse.ui.forms.H_H_HOVER_FULL", full);
    }

    private LocalResourceManager getResourceManager() {
        if (this.resources == null) {
            this.resources = new LocalResourceManager(JFaceResources.getResources());
        }
        return this.resources;
    }
}

