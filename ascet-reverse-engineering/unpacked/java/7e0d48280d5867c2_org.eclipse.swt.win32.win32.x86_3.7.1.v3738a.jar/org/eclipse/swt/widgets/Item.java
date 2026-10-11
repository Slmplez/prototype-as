/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Widget;

public abstract class Item
extends Widget {
    String text = "";
    Image image;

    public Item(Widget parent, int style) {
        super(parent, style);
    }

    public Item(Widget parent, int style, int index) {
        this(parent, style);
    }

    protected void checkSubclass() {
    }

    public Image getImage() {
        this.checkWidget();
        return this.image;
    }

    String getNameText() {
        return this.getText();
    }

    public String getText() {
        this.checkWidget();
        return this.text;
    }

    void releaseWidget() {
        super.releaseWidget();
        this.text = null;
        this.image = null;
    }

    public void setImage(Image image) {
        this.checkWidget();
        if (image != null && image.isDisposed()) {
            this.error(5);
        }
        this.image = image;
    }

    public void setText(String string) {
        this.checkWidget();
        if (string == null) {
            this.error(4);
        }
        this.text = string;
    }
}

