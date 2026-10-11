/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.swt.graphics.Image;

public interface ITableLabelProvider
extends IBaseLabelProvider {
    public Image getColumnImage(Object var1, int var2);

    public String getColumnText(Object var1, int var2);
}

