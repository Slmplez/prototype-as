/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.custom.TableTree
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.FontMetrics
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.ImageData
 *  org.eclipse.swt.graphics.PaletteData
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.ColorDialog
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.Tree
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.DialogCellEditor;
import org.eclipse.swt.custom.TableTree;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.ColorDialog;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.Tree;

public class ColorCellEditor
extends DialogCellEditor {
    private static final int DEFAULT_EXTENT = 16;
    private static final int GAP = 6;
    private Composite composite;
    private Label colorLabel;
    private Label rgbLabel;
    private Image image;

    public ColorCellEditor(Composite parent) {
        this(parent, 0);
    }

    public ColorCellEditor(Composite parent, int style) {
        super(parent, style);
        this.doSetValue(new RGB(0, 0, 0));
    }

    private ImageData createColorImage(Control w, RGB color) {
        GC gc = new GC((Drawable)w);
        FontMetrics fm = gc.getFontMetrics();
        int size = fm.getAscent();
        gc.dispose();
        int indent = 6;
        int extent = 16;
        if (w instanceof Table) {
            extent = ((Table)w).getItemHeight() - 1;
        } else if (w instanceof Tree) {
            extent = ((Tree)w).getItemHeight() - 1;
        } else if (w instanceof TableTree) {
            extent = ((TableTree)w).getItemHeight() - 1;
        }
        if (size > extent) {
            size = extent;
        }
        int width = indent + size;
        int height = extent;
        int xoffset = indent;
        int yoffset = (height - size) / 2;
        RGB black = new RGB(0, 0, 0);
        PaletteData dataPalette = new PaletteData(new RGB[]{black, black, color});
        ImageData data = new ImageData(width, height, 4, dataPalette);
        data.transparentPixel = 0;
        int end = size - 1;
        int y = 0;
        while (y < size) {
            int x = 0;
            while (x < size) {
                if (x == 0 || y == 0 || x == end || y == end) {
                    data.setPixel(x + xoffset, y + yoffset, 1);
                } else {
                    data.setPixel(x + xoffset, y + yoffset, 2);
                }
                ++x;
            }
            ++y;
        }
        return data;
    }

    protected Control createContents(Composite cell) {
        Color bg = cell.getBackground();
        this.composite = new Composite(cell, this.getStyle());
        this.composite.setBackground(bg);
        this.composite.setLayout((Layout)new ColorCellLayout());
        this.colorLabel = new Label(this.composite, 16384);
        this.colorLabel.setBackground(bg);
        this.rgbLabel = new Label(this.composite, 16384);
        this.rgbLabel.setBackground(bg);
        this.rgbLabel.setFont(cell.getFont());
        return this.composite;
    }

    public void dispose() {
        if (this.image != null) {
            this.image.dispose();
            this.image = null;
        }
        super.dispose();
    }

    protected Object openDialogBox(Control cellEditorWindow) {
        ColorDialog dialog = new ColorDialog(cellEditorWindow.getShell());
        Object value = this.getValue();
        if (value != null) {
            dialog.setRGB((RGB)value);
        }
        value = dialog.open();
        return dialog.getRGB();
    }

    protected void updateContents(Object value) {
        RGB rgb = (RGB)value;
        if (rgb == null) {
            rgb = new RGB(0, 0, 0);
        }
        if (this.image != null) {
            this.image.dispose();
        }
        ImageData id = this.createColorImage((Control)this.colorLabel.getParent().getParent(), rgb);
        ImageData mask = id.getTransparencyMask();
        this.image = new Image((Device)this.colorLabel.getDisplay(), id, mask);
        this.colorLabel.setImage(this.image);
        this.rgbLabel.setText("(" + rgb.red + "," + rgb.green + "," + rgb.blue + ")");
    }

    private class ColorCellLayout
    extends Layout {
        private ColorCellLayout() {
        }

        public Point computeSize(Composite editor, int wHint, int hHint, boolean force) {
            if (wHint != -1 && hHint != -1) {
                return new Point(wHint, hHint);
            }
            Point colorSize = ColorCellEditor.this.colorLabel.computeSize(-1, -1, force);
            Point rgbSize = ColorCellEditor.this.rgbLabel.computeSize(-1, -1, force);
            return new Point(colorSize.x + 6 + rgbSize.x, Math.max(colorSize.y, rgbSize.y));
        }

        public void layout(Composite editor, boolean force) {
            Rectangle bounds = editor.getClientArea();
            Point colorSize = ColorCellEditor.this.colorLabel.computeSize(-1, -1, force);
            Point rgbSize = ColorCellEditor.this.rgbLabel.computeSize(-1, -1, force);
            int ty = (bounds.height - rgbSize.y) / 2;
            if (ty < 0) {
                ty = 0;
            }
            ColorCellEditor.this.colorLabel.setBounds(-1, 0, colorSize.x, colorSize.y);
            ColorCellEditor.this.rgbLabel.setBounds(colorSize.x + 6 - 1, ty, bounds.width - colorSize.x - 6, bounds.height);
        }
    }
}

