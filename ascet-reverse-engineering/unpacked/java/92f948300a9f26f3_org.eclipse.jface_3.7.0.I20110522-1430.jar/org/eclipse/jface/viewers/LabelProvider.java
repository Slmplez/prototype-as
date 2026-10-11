/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.BaseLabelProvider;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.swt.graphics.Image;

public class LabelProvider
extends BaseLabelProvider
implements ILabelProvider {
    public Image getImage(Object element) {
        return null;
    }

    public String getText(Object element) {
        return element == null ? "" : element.toString();
    }
}

