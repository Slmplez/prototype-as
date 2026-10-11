/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.Label
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetImageValueProperty;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Label;

public class LabelImageProperty
extends WidgetImageValueProperty {
    Image doGetImageValue(Object source) {
        return ((Label)source).getImage();
    }

    void doSetImageValue(Object source, Image value) {
        ((Label)source).setImage(value);
    }

    public String toString() {
        return "Label.image <Image>";
    }
}

