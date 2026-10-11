/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui;

import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.IPersistableElement;

public interface IWorkingSet
extends IPersistableElement,
IAdaptable {
    public IAdaptable[] getElements();

    public String getId();

    public ImageDescriptor getImage();

    public ImageDescriptor getImageDescriptor();

    public String getName();

    public void setElements(IAdaptable[] var1);

    public void setId(String var1);

    public void setName(String var1);

    public boolean isEditable();

    public boolean isVisible();

    public String getLabel();

    public void setLabel(String var1);

    public boolean isSelfUpdating();

    public boolean isAggregateWorkingSet();

    public boolean isEmpty();

    public IAdaptable[] adaptElements(IAdaptable[] var1);
}

