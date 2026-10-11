/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.events.PaintEvent
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.ui.forms.widgets;

import java.util.Hashtable;
import org.eclipse.core.runtime.Assert;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Text;
import org.eclipse.ui.forms.widgets.ExpandableComposite;
import org.eclipse.ui.forms.widgets.SharedScrolledComposite;
import org.eclipse.ui.internal.forms.widgets.FormImages;
import org.eclipse.ui.internal.forms.widgets.FormUtil;

public class Section
extends ExpandableComposite {
    public static final int DESCRIPTION = 128;
    private Control descriptionControl;
    private Control separator;
    private Hashtable titleColors;
    private static final String COLOR_BG = "bg";
    private static final String COLOR_GBG = "gbg";
    private static final String COLOR_BORDER = "border";

    public Section(Composite parent, int style) {
        this(parent, 0, style);
    }

    Section(Composite parent, int cstyle, int style) {
        super(parent, cstyle | Section.getBackgroundStyle(style), style);
        int rtl = cstyle & 0x4000000;
        if ((style & 0x80) != 0) {
            this.descriptionControl = new Text((Composite)this, 0x48 | rtl);
        }
        if ((style & 0x100) != 0) {
            Listener listener = new Listener(){

                public void handleEvent(Event e) {
                    Image image = Section.super.getBackgroundImage();
                    if (image != null) {
                        FormImages.getInstance().markFinished(image, Section.this.getDisplay());
                    }
                    Section.super.setBackgroundImage(null);
                }
            };
            this.addListener(12, listener);
            this.addListener(11, listener);
        }
    }

    private static int getBackgroundStyle(int estyle) {
        return (estyle & 0x100) != 0 ? 262144 : 0;
    }

    protected void internalSetExpanded(boolean expanded) {
        super.internalSetExpanded(expanded);
        if ((this.getExpansionStyle() & 0x100) != 0 && !expanded) {
            super.setBackgroundImage(null);
        }
        this.reflow();
    }

    protected void reflow() {
        Section c = this;
        while (c != null) {
            c.setRedraw(false);
            c = c.getParent();
            if (c instanceof SharedScrolledComposite || c instanceof Shell) break;
        }
        for (c = this; c != null; c = c.getParent()) {
            c.layout(true);
            if (!(c instanceof SharedScrolledComposite)) continue;
            ((SharedScrolledComposite)((Object)c)).reflow(true);
            break;
        }
        c = this;
        while (c != null) {
            c.setRedraw(true);
            c = c.getParent();
            if (c instanceof SharedScrolledComposite || c instanceof Shell) break;
        }
    }

    public void setDescription(String description) {
        if (this.descriptionControl instanceof Text) {
            ((Text)this.descriptionControl).setText(description);
        }
    }

    public String getDescription() {
        if (this.descriptionControl instanceof Text) {
            return ((Text)this.descriptionControl).getText();
        }
        return null;
    }

    public void setSeparatorControl(Control separator) {
        Assert.isTrue((separator != null && separator.getParent().equals((Object)this) ? 1 : 0) != 0);
        this.separator = separator;
    }

    public Control getSeparatorControl() {
        return this.separator;
    }

    public void setBackground(Color bg) {
        super.setBackground(bg);
        if (this.descriptionControl != null && (this.getExpansionStyle() & 0x80) != 0) {
            this.descriptionControl.setBackground(bg);
        }
    }

    public void setForeground(Color fg) {
        super.setForeground(fg);
        if (this.descriptionControl != null && (this.getExpansionStyle() & 0x80) != 0) {
            this.descriptionControl.setForeground(fg);
        }
    }

    public Control getDescriptionControl() {
        return this.descriptionControl;
    }

    public void setDescriptionControl(Control descriptionControl) {
        Assert.isTrue(((this.getExpansionStyle() & 0x80) == 0 ? 1 : 0) != 0);
        Assert.isTrue((descriptionControl != null && descriptionControl.getParent().equals((Object)this) ? 1 : 0) != 0);
        this.descriptionControl = descriptionControl;
    }

    public void setTitleBarBorderColor(Color color) {
        this.putTitleBarColor(COLOR_BORDER, color);
    }

    public void setTitleBarBackground(Color color) {
        this.putTitleBarColor(COLOR_BG, color);
    }

    public void setTitleBarGradientBackground(Color color) {
        this.putTitleBarColor(COLOR_GBG, color);
    }

    public Color getTitleBarBorderColor() {
        if (this.titleColors == null) {
            return null;
        }
        return (Color)this.titleColors.get(COLOR_BORDER);
    }

    public Color getTitleBarGradientBackground() {
        if (this.titleColors == null) {
            return null;
        }
        if ((this.getExpansionStyle() & 0x200) != 0) {
            return this.getBackground();
        }
        return (Color)this.titleColors.get(COLOR_GBG);
    }

    public Color getTitleBarBackground() {
        if (this.titleColors == null) {
            return null;
        }
        return (Color)this.titleColors.get(COLOR_BG);
    }

    private void putTitleBarColor(String key, Color color) {
        if (color == null) {
            return;
        }
        if (this.titleColors == null) {
            this.titleColors = new Hashtable();
        }
        this.titleColors.put(key, color);
    }

    protected void onPaint(PaintEvent e) {
        Color bg = null;
        Color fg = null;
        Color border = null;
        GC gc = e.gc;
        Image buffer = null;
        Rectangle bounds = this.getClientArea();
        if ((this.getExpansionStyle() & 0x100) != 0) {
            buffer = new Image((Device)this.getDisplay(), bounds.width, bounds.height);
            buffer.setBackground(this.getBackground());
            gc = new GC((Drawable)buffer);
        }
        if (this.titleColors != null) {
            bg = (Color)this.titleColors.get(COLOR_BG);
            fg = this.getTitleBarForeground();
            border = (Color)this.titleColors.get(COLOR_BORDER);
        }
        if (bg == null) {
            bg = this.getBackground();
        }
        if (fg == null) {
            fg = this.getForeground();
        }
        if (border == null) {
            border = fg;
        }
        int theight = 0;
        int gradientheight = 0;
        int tvmargin = 4;
        if ((this.getExpansionStyle() & 0x100) != 0) {
            Point size;
            Point tsize = null;
            Point tcsize = null;
            if (this.toggle != null) {
                tsize = this.toggle.getSize();
            }
            if (this.getTextClient() != null) {
                tcsize = this.getTextClient().getSize();
            }
            Point point = size = this.textLabel == null ? new Point(0, 0) : this.textLabel.getSize();
            if (tsize != null) {
                theight += Math.max(theight, tsize.y);
            }
            gradientheight = theight;
            if (tcsize != null) {
                theight = Math.max(theight, tcsize.y);
            }
            theight = Math.max(theight, size.y);
            gradientheight = Math.max(gradientheight, size.y);
            theight += tvmargin + tvmargin;
            gradientheight += tvmargin + tvmargin;
        } else {
            theight = 5;
        }
        if ((this.getExpansionStyle() & 0x100) != 0) {
            if (this.getBackgroundImage() == null) {
                this.updateHeaderImage(bg, bounds, gradientheight, theight);
            }
            gc.setBackground(this.getBackground());
            gc.fillRectangle(bounds.x, bounds.y, bounds.width, bounds.height);
            this.drawBackground(gc, bounds.x, bounds.y, bounds.width, theight);
            if (this.marginWidth > 0) {
                gc.setBackground(this.getBackground());
                gc.fillRectangle(0, 0, this.marginWidth, theight);
                gc.fillRectangle(bounds.x + bounds.width - this.marginWidth, 0, this.marginWidth, theight);
            }
        } else if (this.isExpanded()) {
            gc.setForeground(bg);
            gc.setBackground(this.getBackground());
            gc.fillGradientRectangle(this.marginWidth, this.marginHeight, bounds.width - this.marginWidth - this.marginWidth, theight, true);
        }
        gc.setBackground(this.getBackground());
        FormUtil.setAntialias(gc, 1);
        gc.fillPolygon(new int[]{this.marginWidth, this.marginHeight, this.marginWidth, this.marginHeight + 2, this.marginWidth + 2, this.marginHeight});
        gc.fillPolygon(new int[]{bounds.width - this.marginWidth - 3, this.marginHeight, bounds.width - this.marginWidth, this.marginHeight, bounds.width - this.marginWidth, this.marginHeight + 3});
        gc.setForeground(border);
        if (this.isExpanded() || (this.getExpansionStyle() & 0x100) != 0) {
            gc.drawLine(this.marginWidth, this.marginHeight + 2, this.marginWidth + 2, this.marginHeight);
            gc.drawLine(this.marginWidth + 2, this.marginHeight, bounds.width - this.marginWidth - 3, this.marginHeight);
            gc.drawLine(bounds.width - this.marginWidth - 3, this.marginHeight, bounds.width - this.marginWidth - 1, this.marginHeight + 2);
        } else {
            gc.drawLine(this.marginWidth, this.marginHeight, bounds.width - 1, this.marginHeight);
        }
        if ((this.getExpansionStyle() & 0x100) != 0 || this.isExpanded()) {
            gc.fillGradientRectangle(this.marginWidth, this.marginHeight + 2, 1, gradientheight - 2, true);
            gc.fillGradientRectangle(bounds.width - this.marginWidth - 1, this.marginHeight + 2, 1, gradientheight - 2, true);
        }
        if ((this.getExpansionStyle() & 0x100) != 0) {
            gc.setForeground(this.getBackground());
            gc.drawPolyline(new int[]{this.marginWidth + 1, this.marginHeight + gradientheight - 1, this.marginWidth + 1, this.marginHeight + 2, this.marginWidth + 2, this.marginHeight + 2, this.marginWidth + 2, this.marginHeight + 1, bounds.width - this.marginWidth - 3, this.marginHeight + 1, bounds.width - this.marginWidth - 3, this.marginHeight + 2, bounds.width - this.marginWidth - 2, this.marginHeight + 2, bounds.width - this.marginWidth - 2, this.marginHeight + gradientheight - 1});
        }
        if (buffer != null) {
            gc.dispose();
            e.gc.drawImage(buffer, 0, 0);
            buffer.dispose();
        }
    }

    private void updateHeaderImage(Color bg, Rectangle bounds, int theight, int realtheight) {
        Image image = FormImages.getInstance().getGradient(this.getBackground(), bg, realtheight, theight, this.marginHeight, this.getDisplay());
        super.setBackgroundImage(image);
    }

    public final void setBackgroundImage(Image image) {
    }
}

