/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.Composite
 */
package org.eclipse.ui.intro;

import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IPropertyListener;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.intro.IIntroSite;

public interface IIntroPart
extends IAdaptable {
    public static final int PROP_TITLE = 1;

    public IIntroSite getIntroSite();

    public void init(IIntroSite var1, IMemento var2) throws PartInitException;

    public void standbyStateChanged(boolean var1);

    public void saveState(IMemento var1);

    public void addPropertyListener(IPropertyListener var1);

    public void createPartControl(Composite var1);

    public void dispose();

    public Image getTitleImage();

    public String getTitle();

    public void removePropertyListener(IPropertyListener var1);

    public void setFocus();
}

