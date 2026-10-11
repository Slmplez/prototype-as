/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.IInformationControlCreator;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Control;

public interface IInformationControlExtension5 {
    public boolean containsControl(Control var1);

    public boolean isVisible();

    public Point computeSizeConstraints(int var1, int var2);

    public IInformationControlCreator getInformationPresenterControlCreator();
}

