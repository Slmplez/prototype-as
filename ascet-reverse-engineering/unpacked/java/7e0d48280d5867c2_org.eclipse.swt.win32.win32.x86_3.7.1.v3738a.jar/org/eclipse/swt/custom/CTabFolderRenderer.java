/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import java.util.Hashtable;
import org.eclipse.swt.SWT;
import org.eclipse.swt.custom.CTabFolder;
import org.eclipse.swt.custom.CTabItem;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.Region;
import org.eclipse.swt.graphics.TextLayout;
import org.eclipse.swt.widgets.Display;

public class CTabFolderRenderer {
    protected CTabFolder parent;
    int[] curve;
    int[] topCurveHighlightStart;
    int[] topCurveHighlightEnd;
    int curveWidth = 0;
    int curveIndent = 0;
    int lastTabHeight = -1;
    Color fillColor;
    Color selectionHighlightGradientBegin = null;
    Color[] selectionHighlightGradientColorsCache = null;
    Color selectedOuterColor = null;
    Color selectedInnerColor = null;
    Color tabAreaColor = null;
    Color lastBorderColor = null;
    static final String COLOR_CACHE = "org.eclipse.swt.custom.CTabFolderRenderer.ColorCache";
    static final int[] TOP_LEFT_CORNER_HILITE = new int[]{5, 2, 4, 2, 3, 3, 2, 4, 2, 5, 1, 6};
    static final int[] TOP_LEFT_CORNER;
    static final int[] TOP_RIGHT_CORNER;
    static final int[] BOTTOM_LEFT_CORNER;
    static final int[] BOTTOM_RIGHT_CORNER;
    static final int[] SIMPLE_TOP_LEFT_CORNER;
    static final int[] SIMPLE_TOP_RIGHT_CORNER;
    static final int[] SIMPLE_BOTTOM_LEFT_CORNER;
    static final int[] SIMPLE_BOTTOM_RIGHT_CORNER;
    static final int[] SIMPLE_UNSELECTED_INNER_CORNER;
    static final int[] TOP_LEFT_CORNER_BORDERLESS;
    static final int[] TOP_RIGHT_CORNER_BORDERLESS;
    static final int[] BOTTOM_LEFT_CORNER_BORDERLESS;
    static final int[] BOTTOM_RIGHT_CORNER_BORDERLESS;
    static final int[] SIMPLE_TOP_LEFT_CORNER_BORDERLESS;
    static final int[] SIMPLE_TOP_RIGHT_CORNER_BORDERLESS;
    static final int[] SIMPLE_BOTTOM_LEFT_CORNER_BORDERLESS;
    static final int[] SIMPLE_BOTTOM_RIGHT_CORNER_BORDERLESS;
    static final RGB CLOSE_FILL;
    static final int BUTTON_SIZE = 18;
    static final int BUTTON_BORDER = 17;
    static final int BUTTON_FILL = 25;
    static final int BORDER1_COLOR = 18;
    static final int ITEM_TOP_MARGIN = 2;
    static final int ITEM_BOTTOM_MARGIN = 2;
    static final int ITEM_LEFT_MARGIN = 4;
    static final int ITEM_RIGHT_MARGIN = 4;
    static final int INTERNAL_SPACING = 4;
    static final int FLAGS = 9;
    static final String ELLIPSIS = "...";
    public static final int PART_BODY = -1;
    public static final int PART_HEADER = -2;
    public static final int PART_BORDER = -3;
    public static final int PART_BACKGROUND = -4;
    public static final int PART_MAX_BUTTON = -5;
    public static final int PART_MIN_BUTTON = -6;
    public static final int PART_CHEVRON_BUTTON = -7;
    public static final int PART_CLOSE_BUTTON = -8;
    public static final int MINIMUM_SIZE = 0x1000000;

    static {
        int[] nArray = new int[12];
        nArray[1] = 6;
        nArray[2] = 1;
        nArray[3] = 5;
        nArray[4] = 1;
        nArray[5] = 4;
        nArray[6] = 4;
        nArray[7] = 1;
        nArray[8] = 5;
        nArray[9] = 1;
        nArray[10] = 6;
        TOP_LEFT_CORNER = nArray;
        int[] nArray2 = new int[12];
        nArray2[0] = -6;
        nArray2[2] = -5;
        nArray2[3] = 1;
        nArray2[4] = -4;
        nArray2[5] = 1;
        nArray2[6] = -1;
        nArray2[7] = 4;
        nArray2[8] = -1;
        nArray2[9] = 5;
        nArray2[11] = 6;
        TOP_RIGHT_CORNER = nArray2;
        int[] nArray3 = new int[12];
        nArray3[1] = -6;
        nArray3[2] = 1;
        nArray3[3] = -5;
        nArray3[4] = 1;
        nArray3[5] = -4;
        nArray3[6] = 4;
        nArray3[7] = -1;
        nArray3[8] = 5;
        nArray3[9] = -1;
        nArray3[10] = 6;
        BOTTOM_LEFT_CORNER = nArray3;
        int[] nArray4 = new int[12];
        nArray4[0] = -6;
        nArray4[2] = -5;
        nArray4[3] = -1;
        nArray4[4] = -4;
        nArray4[5] = -1;
        nArray4[6] = -1;
        nArray4[7] = -4;
        nArray4[8] = -1;
        nArray4[9] = -5;
        nArray4[11] = -6;
        BOTTOM_RIGHT_CORNER = nArray4;
        int[] nArray5 = new int[6];
        nArray5[1] = 2;
        nArray5[2] = 1;
        nArray5[3] = 1;
        nArray5[4] = 2;
        SIMPLE_TOP_LEFT_CORNER = nArray5;
        int[] nArray6 = new int[6];
        nArray6[0] = -2;
        nArray6[2] = -1;
        nArray6[3] = 1;
        nArray6[5] = 2;
        SIMPLE_TOP_RIGHT_CORNER = nArray6;
        int[] nArray7 = new int[6];
        nArray7[1] = -2;
        nArray7[2] = 1;
        nArray7[3] = -1;
        nArray7[4] = 2;
        SIMPLE_BOTTOM_LEFT_CORNER = nArray7;
        int[] nArray8 = new int[6];
        nArray8[0] = -2;
        nArray8[2] = -1;
        nArray8[3] = -1;
        nArray8[5] = -2;
        SIMPLE_BOTTOM_RIGHT_CORNER = nArray8;
        SIMPLE_UNSELECTED_INNER_CORNER = new int[2];
        int[] nArray9 = new int[12];
        nArray9[1] = 6;
        nArray9[2] = 1;
        nArray9[3] = 5;
        nArray9[4] = 1;
        nArray9[5] = 4;
        nArray9[6] = 4;
        nArray9[7] = 1;
        nArray9[8] = 5;
        nArray9[9] = 1;
        nArray9[10] = 6;
        TOP_LEFT_CORNER_BORDERLESS = nArray9;
        int[] nArray10 = new int[12];
        nArray10[0] = -7;
        nArray10[2] = -6;
        nArray10[3] = 1;
        nArray10[4] = -5;
        nArray10[5] = 1;
        nArray10[6] = -2;
        nArray10[7] = 4;
        nArray10[8] = -2;
        nArray10[9] = 5;
        nArray10[10] = -1;
        nArray10[11] = 6;
        TOP_RIGHT_CORNER_BORDERLESS = nArray10;
        int[] nArray11 = new int[16];
        nArray11[1] = -6;
        nArray11[2] = 1;
        nArray11[3] = -6;
        nArray11[4] = 1;
        nArray11[5] = -5;
        nArray11[6] = 2;
        nArray11[7] = -4;
        nArray11[8] = 4;
        nArray11[9] = -2;
        nArray11[10] = 5;
        nArray11[11] = -1;
        nArray11[12] = 6;
        nArray11[13] = -1;
        nArray11[14] = 6;
        BOTTOM_LEFT_CORNER_BORDERLESS = nArray11;
        int[] nArray12 = new int[16];
        nArray12[0] = -7;
        nArray12[2] = -7;
        nArray12[3] = -1;
        nArray12[4] = -6;
        nArray12[5] = -1;
        nArray12[6] = -5;
        nArray12[7] = -2;
        nArray12[8] = -3;
        nArray12[9] = -4;
        nArray12[10] = -2;
        nArray12[11] = -5;
        nArray12[12] = -2;
        nArray12[13] = -6;
        nArray12[14] = -1;
        nArray12[15] = -6;
        BOTTOM_RIGHT_CORNER_BORDERLESS = nArray12;
        int[] nArray13 = new int[6];
        nArray13[1] = 2;
        nArray13[2] = 1;
        nArray13[3] = 1;
        nArray13[4] = 2;
        SIMPLE_TOP_LEFT_CORNER_BORDERLESS = nArray13;
        int[] nArray14 = new int[6];
        nArray14[0] = -3;
        nArray14[2] = -2;
        nArray14[3] = 1;
        nArray14[4] = -1;
        nArray14[5] = 2;
        SIMPLE_TOP_RIGHT_CORNER_BORDERLESS = nArray14;
        int[] nArray15 = new int[8];
        nArray15[1] = -3;
        nArray15[2] = 1;
        nArray15[3] = -2;
        nArray15[4] = 2;
        nArray15[5] = -1;
        nArray15[6] = 3;
        SIMPLE_BOTTOM_LEFT_CORNER_BORDERLESS = nArray15;
        int[] nArray16 = new int[8];
        nArray16[0] = -4;
        nArray16[2] = -3;
        nArray16[3] = -1;
        nArray16[4] = -2;
        nArray16[5] = -2;
        nArray16[6] = -1;
        nArray16[7] = -3;
        SIMPLE_BOTTOM_RIGHT_CORNER_BORDERLESS = nArray16;
        CLOSE_FILL = new RGB(252, 160, 160);
    }

    protected CTabFolderRenderer(CTabFolder parent) {
        if (parent == null) {
            return;
        }
        if (parent.isDisposed()) {
            SWT.error(5);
        }
        this.parent = parent;
    }

    static Color getColor(Display display, RGB rgb) {
        Color color;
        Object[] colorData;
        Hashtable<RGB, Object[]> ColorCache = (Hashtable<RGB, Object[]>)display.getData(COLOR_CACHE);
        if (ColorCache == null) {
            ColorCache = new Hashtable<RGB, Object[]>();
            display.setData(COLOR_CACHE, ColorCache);
        }
        if ((colorData = (Object[])ColorCache.get(rgb)) != null) {
            color = (Color)colorData[0];
            int refcount = (Integer)colorData[1];
            colorData[1] = new Integer(refcount + 1);
        } else {
            color = new Color(display, rgb);
            ColorCache.put(rgb, new Object[]{color, new Integer(1)});
        }
        return color;
    }

    static void releaseColor(Display display, Color color) {
        Object[] colorData;
        RGB rgb = color.getRGB();
        Hashtable ColorCache = (Hashtable)display.getData(COLOR_CACHE);
        if (ColorCache == null) {
            ColorCache = new Hashtable();
            display.setData(COLOR_CACHE, ColorCache);
        }
        if ((colorData = (Object[])ColorCache.get(rgb)) != null) {
            int refcount = (Integer)colorData[1];
            if (--refcount == 0) {
                ColorCache.remove(rgb);
                color.dispose();
            } else {
                colorData[1] = new Integer(refcount);
            }
        }
    }

    void antialias(int[] shape, Color innerColor, Color outerColor, GC gc) {
        int i;
        if (this.parent.simple) {
            return;
        }
        String platform = SWT.getPlatform();
        if ("cocoa".equals(platform)) {
            return;
        }
        if ("carbon".equals(platform)) {
            return;
        }
        if ("wpf".equals(platform)) {
            return;
        }
        if (this.parent.getDisplay().getDepth() < 15) {
            return;
        }
        if (outerColor != null) {
            int index = 0;
            boolean left = true;
            int oldY = this.parent.onBottom ? 0 : this.parent.getSize().y;
            int[] outer = new int[shape.length];
            i = 0;
            while (i < shape.length / 2) {
                if (left && index + 3 < shape.length) {
                    left = this.parent.onBottom ? oldY <= shape[index + 3] : oldY >= shape[index + 3];
                    oldY = shape[index + 1];
                }
                outer[index] = shape[index++] + (left ? -1 : 1);
                outer[index] = shape[index++];
                ++i;
            }
            gc.setForeground(outerColor);
            gc.drawPolyline(outer);
        }
        if (innerColor != null) {
            int[] inner = new int[shape.length];
            int index = 0;
            boolean left = true;
            int oldY = this.parent.onBottom ? 0 : this.parent.getSize().y;
            i = 0;
            while (i < shape.length / 2) {
                if (left && index + 3 < shape.length) {
                    left = this.parent.onBottom ? oldY <= shape[index + 3] : oldY >= shape[index + 3];
                    oldY = shape[index + 1];
                }
                inner[index] = shape[index++] + (left ? 1 : -1);
                inner[index] = shape[index++];
                ++i;
            }
            gc.setForeground(innerColor);
            gc.drawPolyline(inner);
        }
    }

    protected Point computeSize(int part, int state, GC gc, int wHint, int hHint) {
        int width = 0;
        int height = 0;
        switch (part) {
            case -2: {
                if (this.parent.fixedTabHeight != -1) {
                    height = this.parent.fixedTabHeight == 0 ? 0 : this.parent.fixedTabHeight + 1;
                    break;
                }
                CTabItem[] items = this.parent.items;
                if (items.length == 0) {
                    height = gc.textExtent((String)"Default", (int)9).y + 2 + 2;
                } else {
                    int i = 0;
                    while (i < items.length) {
                        height = Math.max(height, this.computeSize((int)i, (int)0, (GC)gc, (int)wHint, (int)hHint).y);
                        ++i;
                    }
                }
                gc.dispose();
                break;
            }
            case -8: 
            case -6: 
            case -5: {
                height = 18;
                width = 18;
                break;
            }
            case -7: {
                width = 27;
                height = 18;
                break;
            }
            default: {
                if (part < 0 || part >= this.parent.getItemCount()) break;
                this.updateCurves();
                CTabItem item = this.parent.items[part];
                if (item.isDisposed()) {
                    return new Point(0, 0);
                }
                Image image = item.getImage();
                if (image != null) {
                    Rectangle bounds = image.getBounds();
                    if ((state & 2) != 0 || this.parent.showUnselectedImage) {
                        width += bounds.width;
                    }
                    height = bounds.height;
                }
                String text = null;
                if ((state & 0x1000000) != 0) {
                    int minChars = this.parent.minChars;
                    String string = text = minChars == 0 ? null : item.getText();
                    if (text != null && text.length() > minChars) {
                        int end;
                        if (this.useEllipses()) {
                            end = minChars < ELLIPSIS.length() + 1 ? minChars : minChars - ELLIPSIS.length();
                            text = text.substring(0, end);
                            if (minChars > ELLIPSIS.length() + 1) {
                                text = String.valueOf(text) + ELLIPSIS;
                            }
                        } else {
                            end = minChars;
                            text = text.substring(0, end);
                        }
                    }
                } else {
                    text = item.getText();
                }
                if (text != null) {
                    if (width > 0) {
                        width += 4;
                    }
                    if (item.font == null) {
                        Point size = gc.textExtent(text, 9);
                        width += size.x;
                        height = Math.max(height, size.y);
                    } else {
                        Font gcFont = gc.getFont();
                        gc.setFont(item.font);
                        Point size = gc.textExtent(text, 9);
                        width += size.x;
                        height = Math.max(height, size.y);
                        gc.setFont(gcFont);
                    }
                }
                if (!this.parent.showClose && !item.showClose || (state & 2) == 0 && !this.parent.showUnselectedClose) break;
                if (width > 0) {
                    width += 4;
                }
                width += this.computeSize((int)-8, (int)0, (GC)gc, (int)-1, (int)-1).x;
            }
        }
        Rectangle trim = this.computeTrim(part, state, 0, 0, width, height);
        width = trim.width;
        height = trim.height;
        return new Point(width, height);
    }

    protected Rectangle computeTrim(int part, int state, int x, int y, int width, int height) {
        int borderLeft;
        int borderRight = borderLeft = this.parent.borderVisible ? 1 : 0;
        int borderTop = this.parent.onBottom ? borderLeft : 0;
        int borderBottom = this.parent.onBottom ? 0 : borderLeft;
        int tabHeight = this.parent.tabHeight;
        switch (part) {
            case -1: {
                int highlight_margin;
                int style = this.parent.getStyle();
                int highlight_header = (style & 0x800000) != 0 ? 1 : 3;
                int n = highlight_margin = (style & 0x800000) != 0 ? 0 : 2;
                if (this.parent.fixedTabHeight == 0 && (style & 0x800000) != 0 && (style & 0x800) == 0) {
                    highlight_header = 0;
                }
                int marginWidth = this.parent.marginWidth;
                int marginHeight = this.parent.marginHeight;
                x = x - marginWidth - highlight_margin - borderLeft;
                width = width + borderLeft + borderRight + 2 * marginWidth + 2 * highlight_margin;
                if (this.parent.minimized) {
                    y = this.parent.onBottom ? y - borderTop : y - highlight_header - tabHeight - borderTop;
                    height = borderTop + borderBottom + tabHeight + highlight_header;
                    break;
                }
                y = this.parent.onBottom ? y - marginHeight - highlight_margin - borderTop : y - marginHeight - highlight_header - tabHeight - borderTop;
                height = height + borderTop + borderBottom + 2 * marginHeight + tabHeight + highlight_header + highlight_margin;
                break;
            }
            case -2: {
                break;
            }
            case -3: {
                x -= borderLeft;
                width = width + borderLeft + borderRight;
                y -= borderTop;
                height = height + borderTop + borderBottom;
                break;
            }
            default: {
                if (part < 0 || part >= this.parent.getItemCount()) break;
                this.updateCurves();
                x -= 4;
                width = width + 4 + 4;
                if (!this.parent.simple && !this.parent.single && (state & 2) != 0) {
                    width += this.curveWidth - this.curveIndent;
                }
                y -= 2;
                height = height + 2 + 2;
            }
        }
        return new Rectangle(x, y, width, height);
    }

    void createAntialiasColors() {
        int blue;
        int green;
        int red;
        RGB to;
        RGB from;
        this.disposeAntialiasColors();
        Display display = this.parent.getDisplay();
        this.lastBorderColor = display.getSystemColor(18);
        RGB lineRGB = this.lastBorderColor.getRGB();
        RGB innerRGB = this.parent.selectionBackground.getRGB();
        if (this.parent.selectionBgImage != null || this.parent.selectionGradientColors != null && this.parent.selectionGradientColors.length > 1) {
            innerRGB = null;
        }
        RGB outerRGB = this.parent.getBackground().getRGB();
        if (this.parent.gradientColors != null && this.parent.gradientColors.length > 1) {
            outerRGB = null;
        }
        if (outerRGB != null) {
            from = lineRGB;
            to = outerRGB;
            red = from.red + 2 * (to.red - from.red) / 3;
            green = from.green + 2 * (to.green - from.green) / 3;
            blue = from.blue + 2 * (to.blue - from.blue) / 3;
            this.selectedOuterColor = CTabFolderRenderer.getColor(display, new RGB(red, green, blue));
        }
        if (innerRGB != null) {
            from = lineRGB;
            to = innerRGB;
            red = from.red + 2 * (to.red - from.red) / 3;
            green = from.green + 2 * (to.green - from.green) / 3;
            blue = from.blue + 2 * (to.blue - from.blue) / 3;
            this.selectedInnerColor = CTabFolderRenderer.getColor(display, new RGB(red, green, blue));
        }
        if ((outerRGB = this.parent.getParent().getBackground().getRGB()) != null) {
            from = lineRGB;
            to = outerRGB;
            red = from.red + 2 * (to.red - from.red) / 3;
            green = from.green + 2 * (to.green - from.green) / 3;
            blue = from.blue + 2 * (to.blue - from.blue) / 3;
            this.tabAreaColor = CTabFolderRenderer.getColor(display, new RGB(red, green, blue));
        }
    }

    void createSelectionHighlightGradientColors(Color start) {
        this.disposeSelectionHighlightGradientColors();
        if (start == null) {
            return;
        }
        int fadeGradientSize = this.parent.tabHeight;
        RGB from = start.getRGB();
        RGB to = this.parent.selectionBackground.getRGB();
        this.selectionHighlightGradientColorsCache = new Color[fadeGradientSize];
        int denom = fadeGradientSize - 1;
        Display display = this.parent.getDisplay();
        int i = 0;
        while (i < fadeGradientSize) {
            int propFrom = denom - i;
            int propTo = i;
            int red = (to.red * propTo + from.red * propFrom) / denom;
            int green = (to.green * propTo + from.green * propFrom) / denom;
            int blue = (to.blue * propTo + from.blue * propFrom) / denom;
            this.selectionHighlightGradientColorsCache[i] = CTabFolderRenderer.getColor(display, new RGB(red, green, blue));
            ++i;
        }
    }

    protected void dispose() {
        this.disposeAntialiasColors();
        this.disposeSelectionHighlightGradientColors();
        if (this.fillColor != null) {
            CTabFolderRenderer.releaseColor(this.parent.getDisplay(), this.fillColor);
            this.fillColor = null;
        }
    }

    void disposeAntialiasColors() {
        Display display = this.parent.getDisplay();
        if (this.tabAreaColor != null) {
            CTabFolderRenderer.releaseColor(display, this.tabAreaColor);
        }
        if (this.selectedInnerColor != null) {
            CTabFolderRenderer.releaseColor(display, this.selectedInnerColor);
        }
        if (this.selectedOuterColor != null) {
            CTabFolderRenderer.releaseColor(display, this.selectedOuterColor);
        }
        this.selectedOuterColor = null;
        this.selectedInnerColor = null;
        this.tabAreaColor = null;
    }

    void disposeSelectionHighlightGradientColors() {
        if (this.selectionHighlightGradientColorsCache == null) {
            return;
        }
        Display display = this.parent.getDisplay();
        int i = 0;
        while (i < this.selectionHighlightGradientColorsCache.length) {
            CTabFolderRenderer.releaseColor(display, this.selectionHighlightGradientColorsCache[i]);
            ++i;
        }
        this.selectionHighlightGradientColorsCache = null;
    }

    protected void draw(int part, int state, Rectangle bounds, GC gc) {
        switch (part) {
            case -4: {
                this.drawBackground(gc, bounds, state);
                break;
            }
            case -1: {
                this.drawBody(gc, bounds, state);
                break;
            }
            case -2: {
                this.drawTabArea(gc, bounds, state);
                break;
            }
            case -5: {
                this.drawMaximize(gc, bounds, state);
                break;
            }
            case -6: {
                this.drawMinimize(gc, bounds, state);
                break;
            }
            case -7: {
                this.drawChevron(gc, bounds, state);
                break;
            }
            default: {
                if (part < 0 || part >= this.parent.getItemCount()) break;
                if (bounds.width == 0 || bounds.height == 0) {
                    return;
                }
                if ((state & 2) != 0) {
                    this.drawSelected(part, gc, bounds, state);
                    break;
                }
                this.drawUnselected(part, gc, bounds, state);
            }
        }
    }

    void drawBackground(GC gc, Rectangle bounds, int state) {
        boolean selected = (state & 2) != 0;
        Color defaultBackground = selected ? this.parent.selectionBackground : this.parent.getBackground();
        Image image = selected ? this.parent.selectionBgImage : null;
        Color[] colors = selected ? this.parent.selectionGradientColors : this.parent.gradientColors;
        int[] percents = selected ? this.parent.selectionGradientPercents : this.parent.gradientPercents;
        boolean vertical = selected ? this.parent.selectionGradientVertical : this.parent.gradientVertical;
        this.drawBackground(gc, null, bounds.x, bounds.y, bounds.width, bounds.height, defaultBackground, image, colors, percents, vertical);
    }

    void drawBackground(GC gc, int[] shape, boolean selected) {
        int borderBottom;
        Color defaultBackground = selected ? this.parent.selectionBackground : this.parent.getBackground();
        Image image = selected ? this.parent.selectionBgImage : null;
        Color[] colors = selected ? this.parent.selectionGradientColors : this.parent.gradientColors;
        int[] percents = selected ? this.parent.selectionGradientPercents : this.parent.gradientPercents;
        boolean vertical = selected ? this.parent.selectionGradientVertical : this.parent.gradientVertical;
        Point size = this.parent.getSize();
        int width = size.x;
        int height = this.parent.tabHeight + ((this.parent.getStyle() & 0x800000) != 0 ? 1 : 3);
        int x = 0;
        int borderLeft = this.parent.borderVisible ? 1 : 0;
        int borderTop = this.parent.onBottom ? borderLeft : 0;
        int n = borderBottom = this.parent.onBottom ? 0 : borderLeft;
        if (borderLeft > 0) {
            ++x;
            width -= 2;
        }
        int y = this.parent.onBottom ? size.y - borderBottom - height : borderTop;
        this.drawBackground(gc, shape, x, y, width, height, defaultBackground, image, colors, percents, vertical);
    }

    void drawBackground(GC gc, int[] shape, int x, int y, int width, int height, Color defaultBackground, Image image, Color[] colors, int[] percents, boolean vertical) {
        Region clipping = null;
        Region region = null;
        if (shape != null) {
            clipping = new Region();
            gc.getClipping(clipping);
            region = new Region();
            region.add(shape);
            region.intersect(clipping);
            gc.setClipping(region);
        }
        if (image != null) {
            gc.setBackground(defaultBackground);
            gc.fillRectangle(x, y, width, height);
            Rectangle imageRect = image.getBounds();
            gc.drawImage(image, imageRect.x, imageRect.y, imageRect.width, imageRect.height, x, y, width, height);
        } else if (colors != null) {
            if (colors.length == 1) {
                Color background = colors[0] != null ? colors[0] : defaultBackground;
                gc.setBackground(background);
                gc.fillRectangle(x, y, width, height);
            } else if (vertical) {
                if (this.parent.onBottom) {
                    Color lastColor;
                    int pos = 0;
                    if (percents[percents.length - 1] < 100) {
                        pos = (100 - percents[percents.length - 1]) * height / 100;
                        gc.setBackground(defaultBackground);
                        gc.fillRectangle(x, y, width, pos);
                    }
                    if ((lastColor = colors[colors.length - 1]) == null) {
                        lastColor = defaultBackground;
                    }
                    int i = percents.length - 1;
                    while (i >= 0) {
                        gc.setForeground(lastColor);
                        lastColor = colors[i];
                        if (lastColor == null) {
                            lastColor = defaultBackground;
                        }
                        gc.setBackground(lastColor);
                        int percentage = i > 0 ? percents[i] - percents[i - 1] : percents[i];
                        int gradientHeight = percentage * height / 100;
                        gc.fillGradientRectangle(x, y + pos, width, gradientHeight, true);
                        pos += gradientHeight;
                        --i;
                    }
                } else {
                    Color lastColor = colors[0];
                    if (lastColor == null) {
                        lastColor = defaultBackground;
                    }
                    int pos = 0;
                    int i = 0;
                    while (i < percents.length) {
                        gc.setForeground(lastColor);
                        lastColor = colors[i + 1];
                        if (lastColor == null) {
                            lastColor = defaultBackground;
                        }
                        gc.setBackground(lastColor);
                        int percentage = i > 0 ? percents[i] - percents[i - 1] : percents[i];
                        int gradientHeight = percentage * height / 100;
                        gc.fillGradientRectangle(x, y + pos, width, gradientHeight, true);
                        pos += gradientHeight;
                        ++i;
                    }
                    if (pos < height) {
                        gc.setBackground(defaultBackground);
                        gc.fillRectangle(x, pos, width, height - pos + 1);
                    }
                }
            } else {
                y = 0;
                height = this.parent.getSize().y;
                Color lastColor = colors[0];
                if (lastColor == null) {
                    lastColor = defaultBackground;
                }
                int pos = 0;
                int i = 0;
                while (i < percents.length) {
                    gc.setForeground(lastColor);
                    lastColor = colors[i + 1];
                    if (lastColor == null) {
                        lastColor = defaultBackground;
                    }
                    gc.setBackground(lastColor);
                    int gradientWidth = percents[i] * width / 100 - pos;
                    gc.fillGradientRectangle(x + pos, y, gradientWidth, height, false);
                    pos += gradientWidth;
                    ++i;
                }
                if (pos < width) {
                    gc.setBackground(defaultBackground);
                    gc.fillRectangle(x + pos, y, width - pos, height);
                }
            }
        } else if ((this.parent.getStyle() & 0x40000) != 0 || !defaultBackground.equals(this.parent.getBackground())) {
            gc.setBackground(defaultBackground);
            gc.fillRectangle(x, y, width, height);
        }
        if (shape != null) {
            gc.setClipping(clipping);
            clipping.dispose();
            region.dispose();
        }
    }

    void drawBorder(GC gc, int[] shape) {
        gc.setForeground(this.parent.getDisplay().getSystemColor(18));
        gc.drawPolyline(shape);
    }

    void drawBody(GC gc, Rectangle bounds, int state) {
        int height;
        int highlight_margin;
        int borderLeft;
        Point size = new Point(bounds.width, bounds.height);
        int selectedIndex = this.parent.selectedIndex;
        int tabHeight = this.parent.tabHeight;
        int borderRight = borderLeft = this.parent.borderVisible ? 1 : 0;
        int borderTop = this.parent.onBottom ? borderLeft : 0;
        int borderBottom = this.parent.onBottom ? 0 : borderLeft;
        int style = this.parent.getStyle();
        int highlight_header = (style & 0x800000) != 0 ? 1 : 3;
        int n = highlight_margin = (style & 0x800000) != 0 ? 0 : 2;
        if (!this.parent.minimized) {
            int width = size.x - borderLeft - borderRight - 2 * highlight_margin;
            int height2 = size.y - borderTop - borderBottom - tabHeight - highlight_header - highlight_margin;
            if (highlight_margin > 0) {
                int x2;
                int y1;
                int x1;
                int[] shape = null;
                if (this.parent.onBottom) {
                    x1 = borderLeft;
                    y1 = borderTop;
                    x2 = size.x - borderRight;
                    int y2 = size.y - borderBottom - tabHeight - highlight_header;
                    shape = new int[]{x1, y1, x2, y1, x2, y2, x2 - highlight_margin, y2, x2 - highlight_margin, y1 + highlight_margin, x1 + highlight_margin, y1 + highlight_margin, x1 + highlight_margin, y2, x1, y2};
                } else {
                    x1 = borderLeft;
                    y1 = borderTop + tabHeight + highlight_header;
                    x2 = size.x - borderRight;
                    int y2 = size.y - borderBottom;
                    shape = new int[]{x1, y1, x1 + highlight_margin, y1, x1 + highlight_margin, y2 - highlight_margin, x2 - highlight_margin, y2 - highlight_margin, x2 - highlight_margin, y1, x2, y1, x2, y2, x1, y2};
                }
                if (selectedIndex != -1 && this.parent.selectionGradientColors != null && this.parent.selectionGradientColors.length > 1 && !this.parent.selectionGradientVertical) {
                    this.drawBackground(gc, shape, true);
                } else if (selectedIndex == -1 && this.parent.gradientColors != null && this.parent.gradientColors.length > 1 && !this.parent.gradientVertical) {
                    this.drawBackground(gc, shape, false);
                } else {
                    gc.setBackground(selectedIndex == -1 ? this.parent.getBackground() : this.parent.selectionBackground);
                    gc.fillPolygon(shape);
                }
            }
            if ((this.parent.getStyle() & 0x40000) != 0) {
                gc.setBackground(this.parent.getBackground());
                int marginWidth = this.parent.marginWidth;
                int marginHeight = this.parent.marginHeight;
                int xClient = borderLeft + marginWidth + highlight_margin;
                int yClient = this.parent.onBottom ? borderTop + highlight_margin + marginHeight : borderTop + tabHeight + highlight_header + marginHeight;
                gc.fillRectangle(xClient - marginWidth, yClient - marginHeight, width, height2);
            }
        } else if ((this.parent.getStyle() & 0x40000) != 0 && size.y > (height = borderTop + tabHeight + highlight_header + borderBottom)) {
            gc.setBackground(this.parent.getParent().getBackground());
            gc.fillRectangle(0, height, size.x, size.y - height);
        }
        if (borderLeft > 0) {
            gc.setForeground(this.parent.getDisplay().getSystemColor(18));
            int x1 = borderLeft - 1;
            int x2 = size.x - borderRight;
            int y1 = this.parent.onBottom ? borderTop - 1 : borderTop + tabHeight;
            int y2 = this.parent.onBottom ? size.y - tabHeight - borderBottom - 1 : size.y - borderBottom;
            gc.drawLine(x1, y1, x1, y2);
            gc.drawLine(x2, y1, x2, y2);
            if (this.parent.onBottom) {
                gc.drawLine(x1, y1, x2, y1);
            } else {
                gc.drawLine(x1, y2, x2, y2);
            }
        }
    }

    void drawClose(GC gc, Rectangle closeRect, int closeImageState) {
        if (closeRect.width == 0 || closeRect.height == 0) {
            return;
        }
        Display display = this.parent.getDisplay();
        int x = closeRect.x + Math.max(1, (closeRect.width - 9) / 2);
        int y = closeRect.y + Math.max(1, (closeRect.height - 9) / 2);
        y += this.parent.onBottom ? -1 : 1;
        Color closeBorder = display.getSystemColor(17);
        switch (closeImageState & 0x2A) {
            case 0: {
                int[] shape = new int[]{x, y, x + 2, y, x + 4, y + 2, x + 5, y + 2, x + 7, y, x + 9, y, x + 9, y + 2, x + 7, y + 4, x + 7, y + 5, x + 9, y + 7, x + 9, y + 9, x + 7, y + 9, x + 5, y + 7, x + 4, y + 7, x + 2, y + 9, x, y + 9, x, y + 7, x + 2, y + 5, x + 2, y + 4, x, y + 2};
                gc.setBackground(display.getSystemColor(25));
                gc.fillPolygon(shape);
                gc.setForeground(closeBorder);
                gc.drawPolygon(shape);
                break;
            }
            case 32: {
                int[] shape = new int[]{x, y, x + 2, y, x + 4, y + 2, x + 5, y + 2, x + 7, y, x + 9, y, x + 9, y + 2, x + 7, y + 4, x + 7, y + 5, x + 9, y + 7, x + 9, y + 9, x + 7, y + 9, x + 5, y + 7, x + 4, y + 7, x + 2, y + 9, x, y + 9, x, y + 7, x + 2, y + 5, x + 2, y + 4, x, y + 2};
                gc.setBackground(this.getFillColor());
                gc.fillPolygon(shape);
                gc.setForeground(closeBorder);
                gc.drawPolygon(shape);
                break;
            }
            case 2: {
                int[] shape = new int[]{x + 1, y + 1, x + 3, y + 1, x + 5, y + 3, x + 6, y + 3, x + 8, y + 1, x + 10, y + 1, x + 10, y + 3, x + 8, y + 5, x + 8, y + 6, x + 10, y + 8, x + 10, y + 10, x + 8, y + 10, x + 6, y + 8, x + 5, y + 8, x + 3, y + 10, x + 1, y + 10, x + 1, y + 8, x + 3, y + 6, x + 3, y + 5, x + 1, y + 3};
                gc.setBackground(this.getFillColor());
                gc.fillPolygon(shape);
                gc.setForeground(closeBorder);
                gc.drawPolygon(shape);
                break;
            }
            case 8: {
                int[] shape = new int[]{x, y, x + 10, y, x + 10, y + 10, x, y + 10};
                this.drawBackground(gc, shape, false);
            }
        }
    }

    void drawChevron(GC gc, Rectangle chevronRect, int chevronImageState) {
        int count;
        if (chevronRect.width == 0 || chevronRect.height == 0) {
            return;
        }
        int selectedIndex = this.parent.selectedIndex;
        Display display = this.parent.getDisplay();
        Point dpi = display.getDPI();
        int fontHeight = 720 / dpi.y;
        FontData fd = this.parent.getFont().getFontData()[0];
        fd.setHeight(fontHeight);
        Font f = new Font((Device)display, fd);
        int fHeight = f.getFontData()[0].getHeight() * dpi.y / 72;
        int indent = Math.max(2, (chevronRect.height - fHeight - 4) / 2);
        int x = chevronRect.x + 2;
        int y = chevronRect.y + indent;
        int itemCount = this.parent.getItemCount();
        if (this.parent.single) {
            count = selectedIndex == -1 ? itemCount : itemCount - 1;
        } else {
            int showCount = 0;
            while (showCount < this.parent.priority.length && this.parent.items[this.parent.priority[showCount]].showing) {
                ++showCount;
            }
            count = itemCount - showCount;
        }
        String chevronString = count > 99 ? "99+" : String.valueOf(count);
        switch (chevronImageState & 0x22) {
            case 0: {
                Color chevronBorder = this.parent.single ? this.parent.getSelectionForeground() : this.parent.getForeground();
                gc.setForeground(chevronBorder);
                gc.setFont(f);
                gc.drawLine(x, y, x + 2, y + 2);
                gc.drawLine(x + 2, y + 2, x, y + 4);
                gc.drawLine(x + 1, y, x + 3, y + 2);
                gc.drawLine(x + 3, y + 2, x + 1, y + 4);
                gc.drawLine(x + 4, y, x + 6, y + 2);
                gc.drawLine(x + 6, y + 2, x + 5, y + 4);
                gc.drawLine(x + 5, y, x + 7, y + 2);
                gc.drawLine(x + 7, y + 2, x + 4, y + 4);
                gc.drawString(chevronString, x + 7, y + 3, true);
                break;
            }
            case 32: {
                gc.setForeground(display.getSystemColor(17));
                gc.setBackground(display.getSystemColor(25));
                gc.setFont(f);
                gc.fillRoundRectangle(chevronRect.x, chevronRect.y, chevronRect.width, chevronRect.height, 6, 6);
                gc.drawRoundRectangle(chevronRect.x, chevronRect.y, chevronRect.width - 1, chevronRect.height - 1, 6, 6);
                gc.drawLine(x, y, x + 2, y + 2);
                gc.drawLine(x + 2, y + 2, x, y + 4);
                gc.drawLine(x + 1, y, x + 3, y + 2);
                gc.drawLine(x + 3, y + 2, x + 1, y + 4);
                gc.drawLine(x + 4, y, x + 6, y + 2);
                gc.drawLine(x + 6, y + 2, x + 5, y + 4);
                gc.drawLine(x + 5, y, x + 7, y + 2);
                gc.drawLine(x + 7, y + 2, x + 4, y + 4);
                gc.drawString(chevronString, x + 7, y + 3, true);
                break;
            }
            case 2: {
                gc.setForeground(display.getSystemColor(17));
                gc.setBackground(display.getSystemColor(25));
                gc.setFont(f);
                gc.fillRoundRectangle(chevronRect.x, chevronRect.y, chevronRect.width, chevronRect.height, 6, 6);
                gc.drawRoundRectangle(chevronRect.x, chevronRect.y, chevronRect.width - 1, chevronRect.height - 1, 6, 6);
                gc.drawLine(x + 1, y + 1, x + 3, y + 3);
                gc.drawLine(x + 3, y + 3, x + 1, y + 5);
                gc.drawLine(x + 2, y + 1, x + 4, y + 3);
                gc.drawLine(x + 4, y + 3, x + 2, y + 5);
                gc.drawLine(x + 5, y + 1, x + 7, y + 3);
                gc.drawLine(x + 7, y + 3, x + 6, y + 5);
                gc.drawLine(x + 6, y + 1, x + 8, y + 3);
                gc.drawLine(x + 8, y + 3, x + 5, y + 5);
                gc.drawString(chevronString, x + 8, y + 4, true);
            }
        }
        f.dispose();
    }

    void drawHighlight(GC gc, Rectangle bounds, int state, int rightEdge) {
        int rawY;
        int rawX;
        if (this.parent.simple || this.parent.onBottom) {
            return;
        }
        if (this.selectionHighlightGradientBegin == null) {
            return;
        }
        Color[] gradients = this.selectionHighlightGradientColorsCache;
        if (gradients == null) {
            return;
        }
        int gradientsSize = gradients.length;
        if (gradientsSize == 0) {
            return;
        }
        int x = bounds.x;
        int y = bounds.y;
        gc.setForeground(gradients[0]);
        gc.drawLine(TOP_LEFT_CORNER_HILITE[0] + x + 1, 1 + y, rightEdge - this.curveIndent, 1 + y);
        int[] leftHighlightCurve = TOP_LEFT_CORNER_HILITE;
        int d = this.parent.tabHeight - this.topCurveHighlightEnd.length / 2;
        int lastX = 0;
        int lastY = 0;
        int lastColorIndex = 0;
        int i = 0;
        while (i < leftHighlightCurve.length / 2) {
            int rawX2 = leftHighlightCurve[i * 2];
            int rawY2 = leftHighlightCurve[i * 2 + 1];
            lastX = rawX2 + x;
            lastY = rawY2 + y;
            lastColorIndex = rawY2 - 1;
            gc.setForeground(gradients[lastColorIndex]);
            gc.drawPoint(lastX, lastY);
            ++i;
        }
        i = lastColorIndex;
        while (i < gradientsSize) {
            gc.setForeground(gradients[i]);
            gc.drawPoint(lastX, 1 + lastY++);
            ++i;
        }
        int rightEdgeOffset = rightEdge - this.curveIndent;
        int i2 = 0;
        while (i2 < this.topCurveHighlightStart.length / 2) {
            rawX = this.topCurveHighlightStart[i2 * 2];
            rawY = this.topCurveHighlightStart[i2 * 2 + 1];
            lastX = rawX + rightEdgeOffset;
            lastY = rawY + y;
            lastColorIndex = rawY - 1;
            if (lastColorIndex >= gradientsSize) break;
            gc.setForeground(gradients[lastColorIndex]);
            gc.drawPoint(lastX, lastY);
            ++i2;
        }
        i2 = lastColorIndex;
        while (i2 < lastColorIndex + d) {
            if (i2 >= gradientsSize) break;
            gc.setForeground(gradients[i2]);
            gc.drawPoint(1 + lastX++, 1 + lastY++);
            ++i2;
        }
        i2 = 0;
        while (i2 < this.topCurveHighlightEnd.length / 2) {
            rawX = this.topCurveHighlightEnd[i2 * 2];
            rawY = this.topCurveHighlightEnd[i2 * 2 + 1];
            lastX = rawX + rightEdgeOffset;
            lastY = rawY + y;
            lastColorIndex = rawY - 1;
            if (lastColorIndex >= gradientsSize) break;
            gc.setForeground(gradients[lastColorIndex]);
            gc.drawPoint(lastX, lastY);
            ++i2;
        }
    }

    void drawLeftUnselectedBorder(GC gc, Rectangle bounds, int state) {
        int x = bounds.x;
        int y = bounds.y;
        int height = bounds.height;
        int[] shape = null;
        if (this.parent.onBottom) {
            int[] left = this.parent.simple ? SIMPLE_UNSELECTED_INNER_CORNER : BOTTOM_LEFT_CORNER;
            shape = new int[left.length + 2];
            int index = 0;
            shape[index++] = x;
            shape[index++] = y - 1;
            int i = 0;
            while (i < left.length / 2) {
                shape[index++] = x + left[2 * i];
                shape[index++] = y + height + left[2 * i + 1] - 1;
                ++i;
            }
        } else {
            int[] left = this.parent.simple ? SIMPLE_UNSELECTED_INNER_CORNER : TOP_LEFT_CORNER;
            shape = new int[left.length + 2];
            int index = 0;
            shape[index++] = x;
            shape[index++] = y + height;
            int i = 0;
            while (i < left.length / 2) {
                shape[index++] = x + left[2 * i];
                shape[index++] = y + left[2 * i + 1];
                ++i;
            }
        }
        this.drawBorder(gc, shape);
    }

    void drawMaximize(GC gc, Rectangle maxRect, int maxImageState) {
        if (maxRect.width == 0 || maxRect.height == 0) {
            return;
        }
        Display display = this.parent.getDisplay();
        int x = maxRect.x + (maxRect.width - 10) / 2;
        int y = maxRect.y + 3;
        gc.setForeground(display.getSystemColor(17));
        gc.setBackground(display.getSystemColor(25));
        switch (maxImageState & 0x22) {
            case 0: {
                if (!this.parent.getMaximized()) {
                    gc.fillRectangle(x, y, 9, 9);
                    gc.drawRectangle(x, y, 9, 9);
                    gc.drawLine(x + 1, y + 2, x + 8, y + 2);
                    break;
                }
                gc.fillRectangle(x, y + 3, 5, 4);
                gc.fillRectangle(x + 2, y, 5, 4);
                gc.drawRectangle(x, y + 3, 5, 4);
                gc.drawRectangle(x + 2, y, 5, 4);
                gc.drawLine(x + 3, y + 1, x + 6, y + 1);
                gc.drawLine(x + 1, y + 4, x + 4, y + 4);
                break;
            }
            case 32: {
                gc.fillRoundRectangle(maxRect.x, maxRect.y, maxRect.width, maxRect.height, 6, 6);
                gc.drawRoundRectangle(maxRect.x, maxRect.y, maxRect.width - 1, maxRect.height - 1, 6, 6);
                if (!this.parent.getMaximized()) {
                    gc.fillRectangle(x, y, 9, 9);
                    gc.drawRectangle(x, y, 9, 9);
                    gc.drawLine(x + 1, y + 2, x + 8, y + 2);
                    break;
                }
                gc.fillRectangle(x, y + 3, 5, 4);
                gc.fillRectangle(x + 2, y, 5, 4);
                gc.drawRectangle(x, y + 3, 5, 4);
                gc.drawRectangle(x + 2, y, 5, 4);
                gc.drawLine(x + 3, y + 1, x + 6, y + 1);
                gc.drawLine(x + 1, y + 4, x + 4, y + 4);
                break;
            }
            case 2: {
                gc.fillRoundRectangle(maxRect.x, maxRect.y, maxRect.width, maxRect.height, 6, 6);
                gc.drawRoundRectangle(maxRect.x, maxRect.y, maxRect.width - 1, maxRect.height - 1, 6, 6);
                if (!this.parent.getMaximized()) {
                    gc.fillRectangle(x + 1, y + 1, 9, 9);
                    gc.drawRectangle(x + 1, y + 1, 9, 9);
                    gc.drawLine(x + 2, y + 3, x + 9, y + 3);
                    break;
                }
                gc.fillRectangle(x + 1, y + 4, 5, 4);
                gc.fillRectangle(x + 3, y + 1, 5, 4);
                gc.drawRectangle(x + 1, y + 4, 5, 4);
                gc.drawRectangle(x + 3, y + 1, 5, 4);
                gc.drawLine(x + 4, y + 2, x + 7, y + 2);
                gc.drawLine(x + 2, y + 5, x + 5, y + 5);
            }
        }
    }

    void drawMinimize(GC gc, Rectangle minRect, int minImageState) {
        if (minRect.width == 0 || minRect.height == 0) {
            return;
        }
        Display display = this.parent.getDisplay();
        int x = minRect.x + (minRect.width - 10) / 2;
        int y = minRect.y + 3;
        gc.setForeground(display.getSystemColor(17));
        gc.setBackground(display.getSystemColor(25));
        switch (minImageState & 0x22) {
            case 0: {
                if (!this.parent.getMinimized()) {
                    gc.fillRectangle(x, y, 9, 3);
                    gc.drawRectangle(x, y, 9, 3);
                    break;
                }
                gc.fillRectangle(x, y + 3, 5, 4);
                gc.fillRectangle(x + 2, y, 5, 4);
                gc.drawRectangle(x, y + 3, 5, 4);
                gc.drawRectangle(x + 2, y, 5, 4);
                gc.drawLine(x + 3, y + 1, x + 6, y + 1);
                gc.drawLine(x + 1, y + 4, x + 4, y + 4);
                break;
            }
            case 32: {
                gc.fillRoundRectangle(minRect.x, minRect.y, minRect.width, minRect.height, 6, 6);
                gc.drawRoundRectangle(minRect.x, minRect.y, minRect.width - 1, minRect.height - 1, 6, 6);
                if (!this.parent.getMinimized()) {
                    gc.fillRectangle(x, y, 9, 3);
                    gc.drawRectangle(x, y, 9, 3);
                    break;
                }
                gc.fillRectangle(x, y + 3, 5, 4);
                gc.fillRectangle(x + 2, y, 5, 4);
                gc.drawRectangle(x, y + 3, 5, 4);
                gc.drawRectangle(x + 2, y, 5, 4);
                gc.drawLine(x + 3, y + 1, x + 6, y + 1);
                gc.drawLine(x + 1, y + 4, x + 4, y + 4);
                break;
            }
            case 2: {
                gc.fillRoundRectangle(minRect.x, minRect.y, minRect.width, minRect.height, 6, 6);
                gc.drawRoundRectangle(minRect.x, minRect.y, minRect.width - 1, minRect.height - 1, 6, 6);
                if (!this.parent.getMinimized()) {
                    gc.fillRectangle(x + 1, y + 1, 9, 3);
                    gc.drawRectangle(x + 1, y + 1, 9, 3);
                    break;
                }
                gc.fillRectangle(x + 1, y + 4, 5, 4);
                gc.fillRectangle(x + 3, y + 1, 5, 4);
                gc.drawRectangle(x + 1, y + 4, 5, 4);
                gc.drawRectangle(x + 3, y + 1, 5, 4);
                gc.drawLine(x + 4, y + 2, x + 7, y + 2);
                gc.drawLine(x + 2, y + 5, x + 5, y + 5);
            }
        }
    }

    void drawRightUnselectedBorder(GC gc, Rectangle bounds, int state) {
        int x = bounds.x;
        int y = bounds.y;
        int width = bounds.width;
        int height = bounds.height;
        int[] shape = null;
        int startX = x + width - 1;
        if (this.parent.onBottom) {
            int[] right = this.parent.simple ? SIMPLE_UNSELECTED_INNER_CORNER : BOTTOM_RIGHT_CORNER;
            shape = new int[right.length + 2];
            int index = 0;
            int i = 0;
            while (i < right.length / 2) {
                shape[index++] = startX + right[2 * i];
                shape[index++] = y + height + right[2 * i + 1] - 1;
                ++i;
            }
            shape[index++] = startX;
            shape[index++] = y - 1;
        } else {
            int[] right = this.parent.simple ? SIMPLE_UNSELECTED_INNER_CORNER : TOP_RIGHT_CORNER;
            shape = new int[right.length + 2];
            int index = 0;
            int i = 0;
            while (i < right.length / 2) {
                shape[index++] = startX + right[2 * i];
                shape[index++] = y + right[2 * i + 1];
                ++i;
            }
            shape[index++] = startX;
            shape[index++] = y + height;
        }
        this.drawBorder(gc, shape);
    }

    void drawSelected(int itemIndex, GC gc, Rectangle bounds, int state) {
        int borderLeft;
        CTabItem item = this.parent.items[itemIndex];
        int x = bounds.x;
        int y = bounds.y;
        int height = bounds.height;
        int width = bounds.width;
        if (!this.parent.simple && !this.parent.single) {
            width -= this.curveWidth - this.curveIndent;
        }
        int borderRight = borderLeft = this.parent.borderVisible ? 1 : 0;
        int borderTop = this.parent.onBottom ? borderLeft : 0;
        int borderBottom = this.parent.onBottom ? 0 : borderLeft;
        Point size = this.parent.getSize();
        int rightEdge = Math.min(x + width, this.parent.getRightItemEdge(gc));
        if ((state & 8) != 0) {
            int highlight_header = (this.parent.getStyle() & 0x800000) != 0 ? 1 : 3;
            int xx = borderLeft;
            int yy = this.parent.onBottom ? size.y - borderBottom - this.parent.tabHeight - highlight_header : borderTop + this.parent.tabHeight + 1;
            int ww = size.x - borderLeft - borderRight;
            int hh = highlight_header - 1;
            int[] shape = new int[]{xx, yy, xx + ww, yy, xx + ww, yy + hh, xx, yy + hh};
            if (this.parent.selectionGradientColors != null && !this.parent.selectionGradientVertical) {
                this.drawBackground(gc, shape, true);
            } else {
                gc.setBackground(this.parent.selectionBackground);
                gc.fillRectangle(xx, yy, ww, hh);
            }
            if (this.parent.single) {
                if (!item.showing) {
                    return;
                }
            } else {
                boolean tabInPaint;
                int i;
                int index;
                int[] right;
                int[] left;
                if (!item.showing) {
                    int x1 = Math.max(0, borderLeft - 1);
                    int y1 = this.parent.onBottom ? y - 1 : y + height;
                    int x2 = size.x - borderRight;
                    gc.setForeground(this.parent.getDisplay().getSystemColor(18));
                    gc.drawLine(x1, y1, x2, y1);
                    return;
                }
                shape = null;
                if (this.parent.onBottom) {
                    left = this.parent.simple ? SIMPLE_BOTTOM_LEFT_CORNER : BOTTOM_LEFT_CORNER;
                    int[] nArray = right = this.parent.simple ? SIMPLE_BOTTOM_RIGHT_CORNER : this.curve;
                    if (borderLeft == 0 && itemIndex == this.parent.firstIndex) {
                        left = new int[]{x, y + height};
                    }
                    shape = new int[left.length + right.length + 8];
                    index = 0;
                    shape[index++] = x;
                    shape[index++] = y - 1;
                    shape[index++] = x;
                    shape[index++] = y - 1;
                    i = 0;
                    while (i < left.length / 2) {
                        shape[index++] = x + left[2 * i];
                        shape[index++] = y + height + left[2 * i + 1] - 1;
                        ++i;
                    }
                    i = 0;
                    while (i < right.length / 2) {
                        shape[index++] = this.parent.simple ? rightEdge - 1 + right[2 * i] : rightEdge - this.curveIndent + right[2 * i];
                        shape[index++] = this.parent.simple ? y + height + right[2 * i + 1] - 1 : y + right[2 * i + 1] - 2;
                        ++i;
                    }
                    shape[index++] = this.parent.simple ? rightEdge - 1 : rightEdge + this.curveWidth - this.curveIndent;
                    shape[index++] = y - 1;
                    shape[index++] = this.parent.simple ? rightEdge - 1 : rightEdge + this.curveWidth - this.curveIndent;
                    shape[index++] = y - 1;
                } else {
                    left = this.parent.simple ? SIMPLE_TOP_LEFT_CORNER : TOP_LEFT_CORNER;
                    int[] nArray = right = this.parent.simple ? SIMPLE_TOP_RIGHT_CORNER : this.curve;
                    if (borderLeft == 0 && itemIndex == this.parent.firstIndex) {
                        left = new int[]{x, y};
                    }
                    shape = new int[left.length + right.length + 8];
                    index = 0;
                    shape[index++] = x;
                    shape[index++] = y + height + 1;
                    shape[index++] = x;
                    shape[index++] = y + height + 1;
                    i = 0;
                    while (i < left.length / 2) {
                        shape[index++] = x + left[2 * i];
                        shape[index++] = y + left[2 * i + 1];
                        ++i;
                    }
                    i = 0;
                    while (i < right.length / 2) {
                        shape[index++] = this.parent.simple ? rightEdge - 1 + right[2 * i] : rightEdge - this.curveIndent + right[2 * i];
                        shape[index++] = y + right[2 * i + 1];
                        ++i;
                    }
                    shape[index++] = this.parent.simple ? rightEdge - 1 : rightEdge + this.curveWidth - this.curveIndent;
                    shape[index++] = y + height + 1;
                    shape[index++] = this.parent.simple ? rightEdge - 1 : rightEdge + this.curveWidth - this.curveIndent;
                    shape[index++] = y + height + 1;
                }
                Rectangle clipping = gc.getClipping();
                Rectangle clipBounds = item.getBounds();
                ++clipBounds.height;
                if (this.parent.onBottom) {
                    --clipBounds.y;
                }
                if (tabInPaint = clipping.intersects(clipBounds)) {
                    if (this.parent.selectionGradientColors != null && !this.parent.selectionGradientVertical) {
                        this.drawBackground(gc, shape, true);
                    } else {
                        Color defaultBackground = this.parent.selectionBackground;
                        Image image = this.parent.selectionBgImage;
                        Color[] colors = this.parent.selectionGradientColors;
                        int[] percents = this.parent.selectionGradientPercents;
                        boolean vertical = this.parent.selectionGradientVertical;
                        xx = x;
                        yy = this.parent.onBottom ? y - 1 : y + 1;
                        ww = width;
                        hh = height;
                        if (!this.parent.single && !this.parent.simple) {
                            ww += this.curveWidth - this.curveIndent;
                        }
                        this.drawBackground(gc, shape, xx, yy, ww, hh, defaultBackground, image, colors, percents, vertical);
                    }
                }
                this.drawHighlight(gc, bounds, state, rightEdge);
                shape[0] = Math.max(0, borderLeft - 1);
                if (borderLeft == 0 && itemIndex == this.parent.firstIndex) {
                    shape[1] = this.parent.onBottom ? y + height - 1 : y;
                    shape[5] = shape[3] = shape[1];
                }
                shape[shape.length - 2] = size.x - borderRight + 1;
                int i2 = 0;
                while (i2 < shape.length / 2) {
                    if (shape[2 * i2 + 1] == y + height + 1) {
                        int n = 2 * i2 + 1;
                        shape[n] = shape[n] - 1;
                    }
                    ++i2;
                }
                Color borderColor = this.parent.getDisplay().getSystemColor(18);
                if (!borderColor.equals(this.lastBorderColor)) {
                    this.createAntialiasColors();
                }
                this.antialias(shape, this.selectedInnerColor, this.selectedOuterColor, gc);
                gc.setForeground(borderColor);
                gc.drawPolyline(shape);
                if (!tabInPaint) {
                    return;
                }
            }
        }
        if ((state & 0x10) != 0) {
            Image image;
            Rectangle trim = this.computeTrim(itemIndex, 0, 0, 0, 0, 0);
            int xDraw = x - trim.x;
            if (this.parent.single && (this.parent.showClose || item.showClose)) {
                xDraw += item.closeRect.width;
            }
            if ((image = item.getImage()) != null) {
                Rectangle imageBounds = image.getBounds();
                int maxImageWidth = rightEdge - xDraw - (trim.width + trim.x);
                if (!this.parent.single && item.closeRect.width > 0) {
                    maxImageWidth -= item.closeRect.width + 4;
                }
                if (imageBounds.width < maxImageWidth) {
                    int imageX = xDraw;
                    int imageY = y + (height - imageBounds.height) / 2;
                    gc.drawImage(image, imageX, imageY += this.parent.onBottom ? -1 : 1);
                    xDraw += imageBounds.width + 4;
                }
            }
            int textWidth = rightEdge - xDraw - (trim.width + trim.x);
            if (!this.parent.single && item.closeRect.width > 0) {
                textWidth -= item.closeRect.width + 4;
            }
            if (textWidth > 0) {
                Font gcFont = gc.getFont();
                gc.setFont(item.font == null ? this.parent.getFont() : item.font);
                if (item.shortenedText == null || item.shortenedTextWidth != textWidth) {
                    item.shortenedText = this.shortenText(gc, item.getText(), textWidth);
                    item.shortenedTextWidth = textWidth;
                }
                Point extent = gc.textExtent(item.shortenedText, 9);
                int textY = y + (height - extent.y) / 2;
                int n = this.parent.onBottom ? -1 : 1;
                gc.setForeground(this.parent.selectionForeground);
                gc.drawText(item.shortenedText, xDraw, textY += n, 9);
                gc.setFont(gcFont);
                if (this.parent.isFocusControl()) {
                    Display display = this.parent.getDisplay();
                    if (this.parent.simple || this.parent.single) {
                        gc.setBackground(display.getSystemColor(2));
                        gc.setForeground(display.getSystemColor(1));
                        gc.drawFocus(xDraw - 1, textY - 1, extent.x + 2, extent.y + 2);
                    } else {
                        gc.setForeground(display.getSystemColor(17));
                        gc.drawLine(xDraw, textY + extent.y + 1, xDraw + extent.x + 1, textY + extent.y + 1);
                    }
                }
            }
            if (this.parent.showClose || item.showClose) {
                this.drawClose(gc, item.closeRect, item.closeImageState);
            }
        }
    }

    void drawTabArea(GC gc, Rectangle bounds, int state) {
        int i;
        int index;
        int[] right;
        int[] left;
        int highlight_header;
        int borderLeft;
        Point size = this.parent.getSize();
        int[] shape = null;
        Color borderColor = this.parent.getDisplay().getSystemColor(18);
        int tabHeight = this.parent.tabHeight;
        int style = this.parent.getStyle();
        int borderRight = borderLeft = this.parent.borderVisible ? 1 : 0;
        int borderTop = this.parent.onBottom ? borderLeft : 0;
        int borderBottom = this.parent.onBottom ? 0 : borderLeft;
        int selectedIndex = this.parent.selectedIndex;
        int n = highlight_header = (style & 0x800000) != 0 ? 1 : 3;
        if (tabHeight == 0) {
            int y2;
            if ((style & 0x800000) != 0 && (style & 0x800) == 0) {
                return;
            }
            int x1 = borderLeft - 1;
            int x2 = size.x - borderRight;
            int y1 = this.parent.onBottom ? size.y - borderBottom - highlight_header - 1 : borderTop + highlight_header;
            int n2 = y2 = this.parent.onBottom ? size.y - borderBottom : borderTop;
            if (borderLeft <= 0 || this.parent.onBottom) {
                // empty if block
            }
            shape = new int[]{x1, y1, x1, --y2, x2, y2, x2, y1};
            if (selectedIndex != -1 && this.parent.selectionGradientColors != null && this.parent.selectionGradientColors.length > 1 && !this.parent.selectionGradientVertical) {
                this.drawBackground(gc, shape, true);
            } else if (selectedIndex == -1 && this.parent.gradientColors != null && this.parent.gradientColors.length > 1 && !this.parent.gradientVertical) {
                this.drawBackground(gc, shape, false);
            } else {
                gc.setBackground(selectedIndex == -1 ? this.parent.getBackground() : this.parent.selectionBackground);
                gc.fillPolygon(shape);
            }
            if (borderLeft > 0) {
                gc.setForeground(borderColor);
                gc.drawPolyline(shape);
            }
            return;
        }
        int x = Math.max(0, borderLeft - 1);
        int y = this.parent.onBottom ? size.y - borderBottom - tabHeight : borderTop;
        int width = size.x - borderLeft - borderRight + 1;
        int height = tabHeight - 1;
        boolean simple = this.parent.simple;
        if (this.parent.onBottom) {
            if ((style & 0x800) != 0) {
                left = simple ? SIMPLE_BOTTOM_LEFT_CORNER : BOTTOM_LEFT_CORNER;
                right = simple ? SIMPLE_BOTTOM_RIGHT_CORNER : BOTTOM_RIGHT_CORNER;
            } else {
                left = simple ? SIMPLE_BOTTOM_LEFT_CORNER_BORDERLESS : BOTTOM_LEFT_CORNER_BORDERLESS;
                right = simple ? SIMPLE_BOTTOM_RIGHT_CORNER_BORDERLESS : BOTTOM_RIGHT_CORNER_BORDERLESS;
            }
            shape = new int[left.length + right.length + 4];
            index = 0;
            shape[index++] = x;
            shape[index++] = y - highlight_header;
            i = 0;
            while (i < left.length / 2) {
                shape[index++] = x + left[2 * i];
                shape[index++] = y + height + left[2 * i + 1];
                if (borderLeft == 0) {
                    int n3 = index - 1;
                    shape[n3] = shape[n3] + 1;
                }
                ++i;
            }
            i = 0;
            while (i < right.length / 2) {
                shape[index++] = x + width + right[2 * i];
                shape[index++] = y + height + right[2 * i + 1];
                if (borderLeft == 0) {
                    int n4 = index - 1;
                    shape[n4] = shape[n4] + 1;
                }
                ++i;
            }
            shape[index++] = x + width;
            shape[index++] = y - highlight_header;
        } else {
            if ((style & 0x800) != 0) {
                left = simple ? SIMPLE_TOP_LEFT_CORNER : TOP_LEFT_CORNER;
                right = simple ? SIMPLE_TOP_RIGHT_CORNER : TOP_RIGHT_CORNER;
            } else {
                left = simple ? SIMPLE_TOP_LEFT_CORNER_BORDERLESS : TOP_LEFT_CORNER_BORDERLESS;
                right = simple ? SIMPLE_TOP_RIGHT_CORNER_BORDERLESS : TOP_RIGHT_CORNER_BORDERLESS;
            }
            shape = new int[left.length + right.length + 4];
            index = 0;
            shape[index++] = x;
            shape[index++] = y + height + highlight_header + 1;
            i = 0;
            while (i < left.length / 2) {
                shape[index++] = x + left[2 * i];
                shape[index++] = y + left[2 * i + 1];
                ++i;
            }
            i = 0;
            while (i < right.length / 2) {
                shape[index++] = x + width + right[2 * i];
                shape[index++] = y + right[2 * i + 1];
                ++i;
            }
            shape[index++] = x + width;
            shape[index++] = y + height + highlight_header + 1;
        }
        boolean single = this.parent.single;
        boolean bkSelected = single && selectedIndex != -1;
        this.drawBackground(gc, shape, bkSelected);
        Region r = new Region();
        r.add(new Rectangle(x, y, width + 1, height + 1));
        r.subtract(shape);
        gc.setBackground(this.parent.getParent().getBackground());
        this.fillRegion(gc, r);
        r.dispose();
        if (selectedIndex == -1) {
            int x1 = borderLeft;
            int y1 = this.parent.onBottom ? size.y - borderBottom - tabHeight - 1 : borderTop + tabHeight;
            int x2 = size.x - borderRight;
            gc.setForeground(borderColor);
            gc.drawLine(x1, y1, x2, y1);
        }
        if (borderLeft > 0) {
            if (!borderColor.equals(this.lastBorderColor)) {
                this.createAntialiasColors();
            }
            this.antialias(shape, null, this.tabAreaColor, gc);
            gc.setForeground(borderColor);
            gc.drawPolyline(shape);
        }
    }

    void drawUnselected(int index, GC gc, Rectangle bounds, int state) {
        CTabItem item = this.parent.items[index];
        int x = bounds.x;
        int y = bounds.y;
        int height = bounds.height;
        int width = bounds.width;
        if (!item.showing) {
            return;
        }
        Rectangle clipping = gc.getClipping();
        if (!clipping.intersects(bounds)) {
            return;
        }
        if ((state & 8) != 0) {
            if (index > 0 && index < this.parent.selectedIndex) {
                this.drawLeftUnselectedBorder(gc, bounds, state);
            }
            if (index > this.parent.selectedIndex) {
                this.drawRightUnselectedBorder(gc, bounds, state);
            }
        }
        if ((state & 0x10) != 0) {
            Rectangle trim = this.computeTrim(index, 0, 0, 0, 0, 0);
            int xDraw = x - trim.x;
            Image image = item.getImage();
            if (image != null && this.parent.showUnselectedImage) {
                Rectangle imageBounds = image.getBounds();
                int maxImageWidth = x + width - xDraw - (trim.width + trim.x);
                if (this.parent.showUnselectedClose && (this.parent.showClose || item.showClose)) {
                    maxImageWidth -= item.closeRect.width + 4;
                }
                if (imageBounds.width < maxImageWidth) {
                    int imageX = xDraw;
                    int imageHeight = imageBounds.height;
                    int imageY = y + (height - imageHeight) / 2;
                    int n = this.parent.onBottom ? -1 : 1;
                    int imageWidth = imageBounds.width * imageHeight / imageBounds.height;
                    gc.drawImage(image, imageBounds.x, imageBounds.y, imageBounds.width, imageBounds.height, imageX, imageY += n, imageWidth, imageHeight);
                    xDraw += imageWidth + 4;
                }
            }
            int textWidth = x + width - xDraw - (trim.width + trim.x);
            if (this.parent.showUnselectedClose && (this.parent.showClose || item.showClose)) {
                textWidth -= item.closeRect.width + 4;
            }
            if (textWidth > 0) {
                Font gcFont = gc.getFont();
                gc.setFont(item.font == null ? this.parent.getFont() : item.font);
                if (item.shortenedText == null || item.shortenedTextWidth != textWidth) {
                    item.shortenedText = this.shortenText(gc, item.getText(), textWidth);
                    item.shortenedTextWidth = textWidth;
                }
                Point extent = gc.textExtent(item.shortenedText, 9);
                int textY = y + (height - extent.y) / 2;
                int n = this.parent.onBottom ? -1 : 1;
                gc.setForeground(this.parent.getForeground());
                gc.drawText(item.shortenedText, xDraw, textY += n, 9);
                gc.setFont(gcFont);
            }
            if (this.parent.showUnselectedClose && (this.parent.showClose || item.showClose)) {
                this.drawClose(gc, item.closeRect, item.closeImageState);
            }
        }
    }

    void fillRegion(GC gc, Region region) {
        Region clipping = new Region();
        gc.getClipping(clipping);
        region.intersect(clipping);
        gc.setClipping(region);
        gc.fillRectangle(region.getBounds());
        gc.setClipping(clipping);
        clipping.dispose();
    }

    Color getFillColor() {
        if (this.fillColor == null) {
            this.fillColor = CTabFolderRenderer.getColor(this.parent.getDisplay(), CLOSE_FILL);
        }
        return this.fillColor;
    }

    boolean isSelectionHighlightColorsCacheHit(Color start) {
        if (this.selectionHighlightGradientColorsCache == null) {
            return false;
        }
        if (this.selectionHighlightGradientColorsCache.length < 2) {
            return false;
        }
        Color highlightBegin = this.selectionHighlightGradientColorsCache[0];
        Color highlightEnd = this.selectionHighlightGradientColorsCache[this.selectionHighlightGradientColorsCache.length - 1];
        if (!highlightBegin.equals(start)) {
            return false;
        }
        if (this.selectionHighlightGradientColorsCache.length != this.parent.tabHeight) {
            return false;
        }
        return highlightEnd.equals(this.parent.selectionBackground);
    }

    void setSelectionHighlightGradientColor(Color start) {
        this.selectionHighlightGradientBegin = null;
        if (start == null) {
            return;
        }
        if (this.parent.getDisplay().getDepth() < 15) {
            return;
        }
        if (this.parent.selectionGradientColors.length < 2) {
            return;
        }
        this.selectionHighlightGradientBegin = start;
        if (!this.isSelectionHighlightColorsCacheHit(start)) {
            this.createSelectionHighlightGradientColors(start);
        }
    }

    String shortenText(GC gc, String text, int width) {
        return this.useEllipses() ? this.shortenText(gc, text, width, ELLIPSIS) : this.shortenText(gc, text, width, "");
    }

    String shortenText(GC gc, String text, int width, String ellipses) {
        if (gc.textExtent((String)text, (int)9).x <= width) {
            return text;
        }
        int ellipseWidth = gc.textExtent((String)ellipses, (int)9).x;
        int length = text.length();
        TextLayout layout = new TextLayout(this.parent.getDisplay());
        layout.setText(text);
        int end = layout.getPreviousOffset(length, 2);
        while (end > 0) {
            text = text.substring(0, end);
            int l = gc.textExtent((String)text, (int)9).x;
            if (l + ellipseWidth <= width) break;
            end = layout.getPreviousOffset(end, 2);
        }
        layout.dispose();
        return end == 0 ? text.substring(0, 1) : String.valueOf(text) + ellipses;
    }

    void updateCurves() {
        int tabHeight = this.parent.tabHeight;
        if (tabHeight == this.lastTabHeight) {
            return;
        }
        if (this.parent.onBottom) {
            int d = tabHeight - 12;
            int[] nArray = new int[40];
            nArray[1] = 13 + d;
            nArray[3] = 12 + d;
            nArray[4] = 2;
            nArray[5] = 12 + d;
            nArray[6] = 3;
            nArray[7] = 11 + d;
            nArray[8] = 5;
            nArray[9] = 11 + d;
            nArray[10] = 6;
            nArray[11] = 10 + d;
            nArray[12] = 7;
            nArray[13] = 10 + d;
            nArray[14] = 9;
            nArray[15] = 8 + d;
            nArray[16] = 10;
            nArray[17] = 8 + d;
            nArray[18] = 11;
            nArray[19] = 7 + d;
            nArray[20] = 11 + d;
            nArray[21] = 7;
            nArray[22] = 12 + d;
            nArray[23] = 6;
            nArray[24] = 13 + d;
            nArray[25] = 6;
            nArray[26] = 15 + d;
            nArray[27] = 4;
            nArray[28] = 16 + d;
            nArray[29] = 4;
            nArray[30] = 17 + d;
            nArray[31] = 3;
            nArray[32] = 19 + d;
            nArray[33] = 3;
            nArray[34] = 20 + d;
            nArray[35] = 2;
            nArray[36] = 22 + d;
            nArray[37] = 2;
            nArray[38] = 23 + d;
            nArray[39] = 1;
            this.curve = nArray;
            this.curveWidth = 26 + d;
            this.curveIndent = this.curveWidth / 3;
        } else {
            int d = tabHeight - 12;
            int[] nArray = new int[40];
            nArray[3] = 1;
            nArray[4] = 2;
            nArray[5] = 1;
            nArray[6] = 3;
            nArray[7] = 2;
            nArray[8] = 5;
            nArray[9] = 2;
            nArray[10] = 6;
            nArray[11] = 3;
            nArray[12] = 7;
            nArray[13] = 3;
            nArray[14] = 9;
            nArray[15] = 5;
            nArray[16] = 10;
            nArray[17] = 5;
            nArray[18] = 11;
            nArray[19] = 6;
            nArray[20] = 11 + d;
            nArray[21] = 6 + d;
            nArray[22] = 12 + d;
            nArray[23] = 7 + d;
            nArray[24] = 13 + d;
            nArray[25] = 7 + d;
            nArray[26] = 15 + d;
            nArray[27] = 9 + d;
            nArray[28] = 16 + d;
            nArray[29] = 9 + d;
            nArray[30] = 17 + d;
            nArray[31] = 10 + d;
            nArray[32] = 19 + d;
            nArray[33] = 10 + d;
            nArray[34] = 20 + d;
            nArray[35] = 11 + d;
            nArray[36] = 22 + d;
            nArray[37] = 11 + d;
            nArray[38] = 23 + d;
            nArray[39] = 12 + d;
            this.curve = nArray;
            this.curveWidth = 26 + d;
            this.curveIndent = this.curveWidth / 3;
            int[] nArray2 = new int[22];
            nArray2[1] = 2;
            nArray2[2] = 1;
            nArray2[3] = 2;
            nArray2[4] = 2;
            nArray2[5] = 2;
            nArray2[6] = 3;
            nArray2[7] = 3;
            nArray2[8] = 4;
            nArray2[9] = 3;
            nArray2[10] = 5;
            nArray2[11] = 3;
            nArray2[12] = 6;
            nArray2[13] = 4;
            nArray2[14] = 7;
            nArray2[15] = 4;
            nArray2[16] = 8;
            nArray2[17] = 5;
            nArray2[18] = 9;
            nArray2[19] = 6;
            nArray2[20] = 10;
            nArray2[21] = 6;
            this.topCurveHighlightStart = nArray2;
            this.topCurveHighlightEnd = new int[]{10 + d, 6 + d, 11 + d, 7 + d, 12 + d, 8 + d, 13 + d, 8 + d, 14 + d, 9 + d, 15 + d, 10 + d, 16 + d, 10 + d, 17 + d, 11 + d, 18 + d, 11 + d, 19 + d, 11 + d, 20 + d, 12 + d, 21 + d, 12 + d, 22 + d, 12 + d};
        }
    }

    boolean useEllipses() {
        return this.parent.simple;
    }
}

