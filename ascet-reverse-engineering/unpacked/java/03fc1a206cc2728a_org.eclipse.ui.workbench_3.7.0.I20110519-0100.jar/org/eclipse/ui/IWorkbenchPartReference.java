/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.ui;

import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.ui.IPropertyListener;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPart;

public interface IWorkbenchPartReference {
    public IWorkbenchPart getPart(boolean var1);

    public String getTitle();

    public Image getTitleImage();

    public String getTitleToolTip();

    public String getId();

    public void addPropertyListener(IPropertyListener var1);

    public void removePropertyListener(IPropertyListener var1);

    public IWorkbenchPage getPage();

    public String getPartName();

    public String getContentDescription();

    public boolean isDirty();

    public String getPartProperty(String var1);

    public void addPartPropertyListener(IPropertyChangeListener var1);

    public void removePartPropertyListener(IPropertyChangeListener var1);
}

