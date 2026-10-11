/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.model;

import org.eclipse.jface.resource.ImageDescriptor;

public interface IWorkbenchAdapter {
    public Object[] getChildren(Object var1);

    public ImageDescriptor getImageDescriptor(Object var1);

    public String getLabel(Object var1);

    public Object getParent(Object var1);
}

