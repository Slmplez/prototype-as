/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.ui.internal.part;

import org.eclipse.swt.graphics.Image;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IPropertyListener;
import org.eclipse.ui.IWorkbenchPart;

public interface IPartPropertyProvider {
    public void addPropertyListener(IWorkbenchPart var1, IPropertyListener var2);

    public void removePropertyListener(IWorkbenchPart var1, IPropertyListener var2);

    public String getTitleToolTip();

    public Image getTitleImage();

    public String getPartName();

    public String getTitle();

    public String getContentDescription();

    public IEditorInput getEditorInput();

    public boolean isDirty();
}

