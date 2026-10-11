/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.Item
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetImageValueProperty;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Item;

public class ItemImageProperty
extends WidgetImageValueProperty {
    Image doGetImageValue(Object source) {
        return ((Item)source).getImage();
    }

    void doSetImageValue(Object source, Image value) {
        ((Item)source).setImage(value);
    }

    public String toString() {
        return "Item.image <Image>";
    }
}

