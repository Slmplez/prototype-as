/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.custom.CLabel
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetImageValueProperty;
import org.eclipse.swt.custom.CLabel;
import org.eclipse.swt.graphics.Image;

public class CLabelImageProperty
extends WidgetImageValueProperty {
    Image doGetImageValue(Object source) {
        return ((CLabel)source).getImage();
    }

    void doSetImageValue(Object source, Image value) {
        ((CLabel)source).setImage(value);
    }

    public String toString() {
        return "CLabel.image <Image>";
    }
}

