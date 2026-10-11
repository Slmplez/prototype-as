/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 */
package org.eclipse.ui.internal.forms.widgets;

import java.util.Hashtable;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.ui.internal.forms.widgets.IHyperlinkSegment;
import org.eclipse.ui.internal.forms.widgets.Locator;
import org.eclipse.ui.internal.forms.widgets.Paragraph;
import org.eclipse.ui.internal.forms.widgets.SelectionData;

public class BulletParagraph
extends Paragraph {
    public static final int CIRCLE = 1;
    public static final int TEXT = 2;
    public static final int IMAGE = 3;
    private int style = 1;
    private String text;
    private int CIRCLE_DIAM = 5;
    private int SPACING = 10;
    private int indent = -1;
    private int bindent = -1;
    private Rectangle bbounds;

    public BulletParagraph(boolean addVerticalSpace) {
        super(addVerticalSpace);
    }

    public int getIndent() {
        int ivalue = this.indent;
        if (ivalue != -1) {
            return ivalue;
        }
        switch (this.style) {
            case 1: {
                ivalue = this.CIRCLE_DIAM + this.SPACING;
                break;
            }
            default: {
                ivalue = 20;
            }
        }
        return this.getBulletIndent() + ivalue;
    }

    public int getBulletIndent() {
        if (this.bindent != -1) {
            return this.bindent;
        }
        return 0;
    }

    public int getBulletStyle() {
        return this.style;
    }

    public void setBulletStyle(int style) {
        this.style = style;
    }

    public void setBulletText(String text) {
        this.text = text;
    }

    public void setIndent(int indent) {
        this.indent = indent;
    }

    public void setBulletIndent(int bindent) {
        this.bindent = bindent;
    }

    public String getBulletText() {
        return this.text;
    }

    public void layout(GC gc, int width, Locator loc, int lineHeight, Hashtable resourceTable, IHyperlinkSegment selectedLink) {
        this.computeRowHeights(gc, width, loc, lineHeight, resourceTable);
        this.layoutBullet(gc, loc, lineHeight, resourceTable);
        super.layout(gc, width, loc, lineHeight, resourceTable, selectedLink);
    }

    public void paint(GC gc, Rectangle repaintRegion, Hashtable resourceTable, IHyperlinkSegment selectedLink, SelectionData selData) {
        this.paintBullet(gc, repaintRegion, resourceTable);
        super.paint(gc, repaintRegion, resourceTable, selectedLink, selData);
    }

    private void layoutBullet(GC gc, Locator loc, int lineHeight, Hashtable resourceTable) {
        Image image;
        int x = loc.x - this.getIndent() + this.getBulletIndent();
        int rowHeight = ((int[])loc.heights.get(0))[0];
        if (this.style == 1) {
            int y = loc.y + rowHeight / 2 - this.CIRCLE_DIAM / 2;
            this.bbounds = new Rectangle(x, y, this.CIRCLE_DIAM, this.CIRCLE_DIAM);
        } else if (this.style == 2 && this.text != null) {
            Point textSize = gc.textExtent(this.text);
            this.bbounds = new Rectangle(x, loc.y, textSize.x, textSize.y);
        } else if (this.style == 3 && this.text != null && (image = (Image)resourceTable.get(this.text)) != null) {
            Rectangle ibounds = image.getBounds();
            int y = loc.y + rowHeight / 2 - ibounds.height / 2;
            this.bbounds = new Rectangle(x, y, ibounds.width, ibounds.height);
        }
    }

    public void paintBullet(GC gc, Rectangle repaintRegion, Hashtable resourceTable) {
        Image image;
        if (this.bbounds == null) {
            return;
        }
        int x = this.bbounds.x;
        int y = this.bbounds.y;
        if (repaintRegion != null) {
            x -= repaintRegion.x;
            y -= repaintRegion.y;
        }
        if (this.style == 1) {
            Color bg = gc.getBackground();
            Color fg = gc.getForeground();
            gc.setBackground(fg);
            gc.fillRectangle(x, y + 1, 5, 3);
            gc.fillRectangle(x + 1, y, 3, 5);
            gc.setBackground(bg);
        } else if (this.style == 2 && this.text != null) {
            gc.drawText(this.text, x, y);
        } else if (this.style == 3 && this.text != null && (image = (Image)resourceTable.get(this.text)) != null) {
            gc.drawImage(image, x, y);
        }
    }
}

