/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.source.IAnnotationModel
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.text.source;

import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.jface.text.source.IVerticalRulerInfo;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;

public interface IVerticalRuler
extends IVerticalRulerInfo {
    public void setModel(IAnnotationModel var1);

    public IAnnotationModel getModel();

    public void update();

    public Control createControl(Composite var1, ITextViewer var2);
}

