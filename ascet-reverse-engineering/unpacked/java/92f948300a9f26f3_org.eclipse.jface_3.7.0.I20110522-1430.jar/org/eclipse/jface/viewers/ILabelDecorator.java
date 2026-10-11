/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.swt.graphics.Image;

public interface ILabelDecorator
extends IBaseLabelProvider {
    public Image decorateImage(Image var1, Object var2);

    public String decorateText(String var1, Object var2);
}

