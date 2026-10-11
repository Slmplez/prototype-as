/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.Composite
 */
package org.eclipse.ui;

import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.IPropertyListener;
import org.eclipse.ui.IWorkbenchPartSite;

public interface IWorkbenchPart
extends IAdaptable {
    public static final int PROP_TITLE = 1;

    public void addPropertyListener(IPropertyListener var1);

    public void createPartControl(Composite var1);

    public void dispose();

    public IWorkbenchPartSite getSite();

    public String getTitle();

    public Image getTitleImage();

    public String getTitleToolTip();

    public void removePropertyListener(IPropertyListener var1);

    public void setFocus();
}

