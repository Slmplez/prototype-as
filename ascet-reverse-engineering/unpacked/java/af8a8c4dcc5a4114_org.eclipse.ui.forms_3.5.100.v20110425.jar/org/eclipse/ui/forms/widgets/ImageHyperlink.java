/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Event
 */
package org.eclipse.ui.forms.widgets;

import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Event;
import org.eclipse.ui.forms.widgets.Hyperlink;

public class ImageHyperlink
extends Hyperlink {
    public int textSpacing = 5;
    private Image image;
    private Image hoverImage;
    private Image activeImage;
    private Image disabledImage;
    private int state;
    private static final int HOVER = 2;
    private static final int ACTIVE = 4;
    private int verticalAlignment = 0x1000000;
    private int horizontalAlignment = 16384;

    public ImageHyperlink(Composite parent, int style) {
        super(parent, ImageHyperlink.removeAlignment(style));
        this.extractAlignment(style);
        this.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                if (ImageHyperlink.this.disabledImage != null) {
                    ImageHyperlink.this.disabledImage.dispose();
                }
            }
        });
    }

    protected void paintHyperlink(GC gc) {
        this.paintHyperlink(gc, this.getClientArea());
    }

    protected void paintHyperlink(GC gc, Rectangle bounds) {
        Image image = null;
        if (!this.isEnabled()) {
            image = this.disabledImage;
        } else {
            if ((this.state & 4) != 0) {
                image = this.activeImage;
            } else if ((this.state & 2) != 0) {
                image = this.hoverImage;
            }
            if (image == null) {
                image = this.image;
            }
        }
        Rectangle ibounds = image != null ? image.getBounds() : new Rectangle(0, 0, 0, 0);
        Point maxsize = this.computeMaxImageSize();
        int spacing = image != null ? this.textSpacing : 0;
        int textWidth = bounds.width - maxsize.x - spacing - this.marginWidth - this.marginWidth;
        int y = bounds.y + this.marginHeight + maxsize.y / 2 - ibounds.height / 2;
        if (this.horizontalAlignment == 16384) {
            int x = bounds.x + this.marginWidth + maxsize.x / 2 - ibounds.width / 2;
            int textX = bounds.x + this.marginWidth + maxsize.x + spacing;
            if (image != null) {
                gc.drawImage(image, x, y);
            }
            if (this.getText() != null) {
                this.drawText(gc, bounds, textX, textWidth);
            }
        } else if (this.horizontalAlignment == 131072) {
            int x = bounds.x + this.marginWidth;
            if (this.getText() != null) {
                x += this.drawText(gc, bounds, x, textWidth);
            }
            x += maxsize.x / 2 - ibounds.width / 2 + spacing;
            if (image != null) {
                gc.drawImage(image, x, y);
            }
        }
    }

    private int drawText(GC gc, Rectangle clientArea, int textX, int textWidth) {
        Point textSize = this.computeTextSize(textWidth, -1);
        int slotHeight = clientArea.height - this.marginHeight - this.marginHeight;
        textWidth = textSize.x;
        int textHeight = textSize.y;
        int textY = this.verticalAlignment == 1024 ? this.marginHeight + slotHeight - textHeight : (this.verticalAlignment == 0x1000000 ? this.marginHeight + slotHeight / 2 - textHeight / 2 : this.marginHeight);
        this.paintText(gc, new Rectangle(textX, textY, textWidth, textHeight));
        return textWidth;
    }

    public Point computeSize(int wHint, int hHint, boolean changed) {
        this.checkWidget();
        Point isize = this.computeMaxImageSize();
        int spacing = isize.x > 0 ? this.textSpacing : 0;
        Point textSize = null;
        if (this.getText() != null) {
            int innerWHint = wHint;
            if (wHint != -1) {
                innerWHint = wHint - 2 * this.marginWidth - isize.x - spacing;
            }
            textSize = super.computeSize(innerWHint, hHint, changed);
        }
        int width = isize.x;
        int height = isize.y;
        if (textSize != null) {
            width += spacing;
            width += textSize.x;
            height = Math.max(height, textSize.y);
        }
        return new Point(width += 2 * this.marginWidth, height += 2 * this.marginHeight);
    }

    protected void handleEnter(Event e) {
        this.state = 2;
        super.handleEnter(e);
    }

    protected void handleExit(Event e) {
        this.state = 0;
        super.handleExit(e);
    }

    protected void handleActivate(Event e) {
        this.state &= 4;
        this.redraw();
        super.handleActivate(e);
        this.state &= 0xFFFFFFFB;
        if (!this.isDisposed()) {
            this.redraw();
        }
    }

    public Image getActiveImage() {
        return this.activeImage;
    }

    public void setActiveImage(Image activeImage) {
        this.activeImage = activeImage;
    }

    public Image getHoverImage() {
        return this.hoverImage;
    }

    public void setHoverImage(Image hoverImage) {
        this.hoverImage = hoverImage;
    }

    public Image getImage() {
        return this.image;
    }

    public void setImage(Image image) {
        this.image = image;
        if (this.disabledImage != null) {
            this.disabledImage.dispose();
        }
        if (image != null && !image.isDisposed()) {
            this.disabledImage = new Image(image.getDevice(), image, 1);
        }
    }

    private Point computeMaxImageSize() {
        int x = 0;
        int y = 0;
        if (this.image != null) {
            x = Math.max(this.image.getBounds().width, x);
            y = Math.max(this.image.getBounds().height, y);
        }
        if (this.hoverImage != null) {
            x = Math.max(this.hoverImage.getBounds().width, x);
            y = Math.max(this.hoverImage.getBounds().height, y);
        }
        if (this.activeImage != null) {
            x = Math.max(this.activeImage.getBounds().width, x);
            y = Math.max(this.activeImage.getBounds().height, y);
        }
        return new Point(x, y);
    }

    private static int removeAlignment(int style) {
        int resultStyle = style;
        if ((style & 0x1000000) != 0) {
            resultStyle &= 0xFEFFFFFF;
        }
        if ((style & 0x80) != 0) {
            resultStyle &= 0xFFFFFF7F;
        }
        if ((style & 0x400) != 0) {
            resultStyle &= 0xFFFFFBFF;
        }
        if ((style & 0x4000) != 0) {
            resultStyle &= 0xFFFFBFFF;
        }
        if ((style & 0x20000) != 0) {
            resultStyle &= 0xFFFDFFFF;
        }
        return resultStyle;
    }

    private void extractAlignment(int style) {
        if ((style & 0x1000000) != 0) {
            this.verticalAlignment = 0x1000000;
        } else if ((style & 0x80) != 0) {
            this.verticalAlignment = 128;
        } else if ((style & 0x400) != 0) {
            this.verticalAlignment = 1024;
        }
        if ((style & 0x4000) != 0) {
            this.horizontalAlignment = 16384;
        } else if ((style & 0x20000) != 0) {
            this.horizontalAlignment = 131072;
        }
    }

    public void setEnabled(boolean enabled) {
        if (!(enabled || this.disabledImage != null && !this.disabledImage.isDisposed() || this.image == null || this.image.isDisposed())) {
            this.disabledImage = new Image(this.image.getDevice(), this.image, 1);
        }
        super.setEnabled(enabled);
        if (enabled && this.disabledImage != null) {
            this.disabledImage.dispose();
            this.disabledImage = null;
        }
    }
}

