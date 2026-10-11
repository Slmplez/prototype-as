/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.layout.PixelConverter
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Combo
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.internal.texteditor;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.layout.PixelConverter;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Control;

public class SWTUtil {
    public static final int COMBO_VISIBLE_ITEM_COUNT = 30;

    public static int getButtonWidthHint(Button button) {
        button.setFont(JFaceResources.getDialogFont());
        PixelConverter converter = new PixelConverter((Control)button);
        int widthHint = converter.convertHorizontalDLUsToPixels(61);
        return Math.max(widthHint, button.computeSize((int)-1, (int)-1, (boolean)true).x);
    }

    public static void setButtonDimensionHint(Button button) {
        Assert.isNotNull((Object)button);
        Object gd = button.getLayoutData();
        if (gd instanceof GridData) {
            ((GridData)gd).widthHint = SWTUtil.getButtonWidthHint(button);
            ((GridData)gd).horizontalAlignment = 4;
        }
    }

    public static void setDefaultVisibleItemCount(Combo combo) {
        combo.setVisibleItemCount(30);
    }
}

