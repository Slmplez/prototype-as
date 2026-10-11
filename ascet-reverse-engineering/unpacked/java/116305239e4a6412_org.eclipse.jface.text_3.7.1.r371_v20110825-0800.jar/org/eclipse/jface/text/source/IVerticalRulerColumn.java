/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.source.IAnnotationModel
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.text.source;

import org.eclipse.jface.text.source.CompositeRuler;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;

public interface IVerticalRulerColumn {
    public void setModel(IAnnotationModel var1);

    public void redraw();

    public Control createControl(CompositeRuler var1, Composite var2);

    public Control getControl();

    public int getWidth();

    public void setFont(Font var1);
}

