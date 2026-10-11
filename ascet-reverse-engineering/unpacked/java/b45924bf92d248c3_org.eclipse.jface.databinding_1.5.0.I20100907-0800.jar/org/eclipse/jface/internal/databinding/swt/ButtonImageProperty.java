/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.Button
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetImageValueProperty;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Button;

public class ButtonImageProperty
extends WidgetImageValueProperty {
    Image doGetImageValue(Object source) {
        return ((Button)source).getImage();
    }

    void doSetImageValue(Object source, Image value) {
        ((Button)source).setImage(value);
    }

    public String toString() {
        return "Button.image <Image>";
    }
}

