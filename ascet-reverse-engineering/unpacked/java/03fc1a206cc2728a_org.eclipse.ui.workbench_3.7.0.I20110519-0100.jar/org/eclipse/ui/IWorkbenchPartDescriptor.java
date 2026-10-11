/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui;

import org.eclipse.jface.resource.ImageDescriptor;

public interface IWorkbenchPartDescriptor {
    public String getId();

    public ImageDescriptor getImageDescriptor();

    public String getLabel();
}

