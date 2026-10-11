/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.SWT;
import org.eclipse.swt.custom.CTabFolder;
import org.eclipse.swt.custom.CTabFolderRenderer;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Item;

public class CTabItem
extends Item {
    CTabFolder parent;
    int x;
    int y;
    int width;
    int height = 0;
    Control control;
    String toolTipText;
    String shortenedText;
    int shortenedTextWidth;
    Font font;
    Image disabledImage;
    Rectangle closeRect = new Rectangle(0, 0, 0, 0);
    int closeImageState = 8;
    int state = 0;
    boolean showClose = false;
    boolean showing = false;

    public CTabItem(CTabFolder parent, int style) {
        this(parent, style, parent.getItemCount());
    }

    public CTabItem(CTabFolder parent, int style, int index) {
        super(parent, style);
        this.showClose = (style & 0x40) != 0;
        parent.createItem(this, index);
    }

    public void dispose() {
        if (this.isDisposed()) {
            return;
        }
        this.parent.destroyItem(this);
        super.dispose();
        this.parent = null;
        this.control = null;
        this.toolTipText = null;
        this.shortenedText = null;
        this.font = null;
    }

    public Rectangle getBounds() {
        return new Rectangle(this.x, this.y, this.width, this.height);
    }

    public Control getControl() {
        this.checkWidget();
        return this.control;
    }

    public Image getDisabledImage() {
        this.checkWidget();
        return this.disabledImage;
    }

    public Font getFont() {
        this.checkWidget();
        if (this.font != null) {
            return this.font;
        }
        return this.parent.getFont();
    }

    public CTabFolder getParent() {
        return this.parent;
    }

    public boolean getShowClose() {
        this.checkWidget();
        return this.showClose;
    }

    public String getToolTipText() {
        String text;
        this.checkWidget();
        if (this.toolTipText == null && this.shortenedText != null && !this.shortenedText.equals(text = this.getText())) {
            return text;
        }
        return this.toolTipText;
    }

    public boolean isShowing() {
        this.checkWidget();
        return this.showing;
    }

    public void setControl(Control control) {
        this.checkWidget();
        if (control != null) {
            if (control.isDisposed()) {
                SWT.error(5);
            }
            if (control.getParent() != this.parent) {
                SWT.error(32);
            }
        }
        if (this.control != null && !this.control.isDisposed()) {
            this.control.setVisible(false);
        }
        this.control = control;
        if (this.control != null) {
            int index = this.parent.indexOf(this);
            if (index == this.parent.getSelectionIndex()) {
                this.control.setBounds(this.parent.getClientArea());
                this.control.setVisible(true);
            } else {
                int selectedIndex = this.parent.getSelectionIndex();
                Control selectedControl = null;
                if (selectedIndex != -1) {
                    selectedControl = this.parent.getItem(selectedIndex).getControl();
                }
                if (this.control != selectedControl) {
                    this.control.setVisible(false);
                }
            }
        }
    }

    public void setDisabledImage(Image image) {
        this.checkWidget();
        if (image != null && image.isDisposed()) {
            SWT.error(5);
        }
        this.disabledImage = image;
    }

    public void setFont(Font font) {
        this.checkWidget();
        if (font != null && font.isDisposed()) {
            SWT.error(5);
        }
        if (font == null && this.font == null) {
            return;
        }
        if (font != null && font.equals(this.font)) {
            return;
        }
        this.font = font;
        if (!this.parent.updateTabHeight(false)) {
            this.parent.updateItems();
            this.parent.redrawTabs();
        }
    }

    public void setImage(Image image) {
        this.checkWidget();
        if (image != null && image.isDisposed()) {
            SWT.error(5);
        }
        Image oldImage = this.getImage();
        if (image == null && oldImage == null) {
            return;
        }
        if (image != null && image.equals(oldImage)) {
            return;
        }
        super.setImage(image);
        if (!this.parent.updateTabHeight(false)) {
            if (oldImage != null && image != null) {
                Rectangle oldBounds = oldImage.getBounds();
                Rectangle bounds = image.getBounds();
                if (bounds.width == oldBounds.width && bounds.height == oldBounds.height) {
                    if (this.showing) {
                        boolean selected;
                        int index = this.parent.indexOf(this);
                        boolean bl = selected = index == this.parent.selectedIndex;
                        if (selected || this.parent.showUnselectedImage) {
                            int maxImageWidth;
                            CTabFolderRenderer renderer = this.parent.renderer;
                            Rectangle trim = renderer.computeTrim(index, 0, 0, 0, 0, 0);
                            int imageX = this.x - trim.x;
                            if (selected) {
                                GC gc = new GC(this.parent);
                                if (this.parent.single && (this.parent.showClose || this.showClose)) {
                                    imageX += renderer.computeSize((int)-8, (int)0, (GC)gc, (int)-1, (int)-1).x;
                                }
                                int rightEdge = Math.min(this.x + this.width, this.parent.getRightItemEdge(gc));
                                gc.dispose();
                                maxImageWidth = rightEdge - imageX - (trim.width + trim.x);
                                if (!this.parent.single && this.closeRect.width > 0) {
                                    maxImageWidth -= this.closeRect.width + 4;
                                }
                            } else {
                                maxImageWidth = this.x + this.width - imageX - (trim.width + trim.x);
                                if (this.parent.showUnselectedClose && (this.parent.showClose || this.showClose)) {
                                    maxImageWidth -= this.closeRect.width + 4;
                                }
                            }
                            if (bounds.width < maxImageWidth) {
                                int imageY = this.y + (this.height - bounds.height) / 2 + (this.parent.onBottom ? -1 : 1);
                                this.parent.redraw(imageX, imageY, bounds.width, bounds.height, false);
                            }
                        }
                    }
                    return;
                }
            }
            this.parent.updateItems();
            this.parent.redrawTabs();
        }
    }

    public void setShowClose(boolean close) {
        this.checkWidget();
        if (this.showClose == close) {
            return;
        }
        this.showClose = close;
        this.parent.updateItems();
        this.parent.redrawTabs();
    }

    public void setText(String string) {
        this.checkWidget();
        if (string == null) {
            SWT.error(4);
        }
        if (string.equals(this.getText())) {
            return;
        }
        super.setText(string);
        this.shortenedText = null;
        this.shortenedTextWidth = 0;
        if (!this.parent.updateTabHeight(false)) {
            this.parent.updateItems();
            this.parent.redrawTabs();
        }
    }

    public void setToolTipText(String string) {
        this.checkWidget();
        this.toolTipText = string;
    }
}

