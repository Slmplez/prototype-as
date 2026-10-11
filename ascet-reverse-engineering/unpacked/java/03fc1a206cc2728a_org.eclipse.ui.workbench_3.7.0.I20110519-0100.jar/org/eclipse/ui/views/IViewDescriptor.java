/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.views;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.IViewPart;
import org.eclipse.ui.IWorkbenchPartDescriptor;

public interface IViewDescriptor
extends IWorkbenchPartDescriptor,
IAdaptable {
    public IViewPart createView() throws CoreException;

    public String[] getCategoryPath();

    public String getDescription();

    public String getId();

    public ImageDescriptor getImageDescriptor();

    public String getLabel();

    public float getFastViewWidthRatio();

    public boolean getAllowMultiple();

    public boolean isRestorable();
}

