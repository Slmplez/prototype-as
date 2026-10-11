/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.IDecorationContext;
import org.eclipse.jface.viewers.ILabelDecorator;
import org.eclipse.swt.graphics.Image;

public abstract class LabelDecorator
implements ILabelDecorator {
    public abstract Image decorateImage(Image var1, Object var2, IDecorationContext var3);

    public abstract String decorateText(String var1, Object var2, IDecorationContext var3);

    public abstract boolean prepareDecoration(Object var1, String var2, IDecorationContext var3);
}

