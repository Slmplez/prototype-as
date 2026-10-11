/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Color
 */
package org.eclipse.jface.text.source;

import org.eclipse.jface.text.source.IAnnotationHover;
import org.eclipse.jface.text.source.IVerticalRulerColumn;
import org.eclipse.jface.text.source.IVerticalRulerInfoExtension;
import org.eclipse.swt.graphics.Color;

public interface IChangeRulerColumn
extends IVerticalRulerColumn,
IVerticalRulerInfoExtension {
    public static final String QUICK_DIFF_MODEL_ID = "diff";

    public void setHover(IAnnotationHover var1);

    public void setBackground(Color var1);

    public void setAddedColor(Color var1);

    public void setChangedColor(Color var1);

    public void setDeletedColor(Color var1);
}

