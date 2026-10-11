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

public interface IEditorInput
extends IAdaptable {
    public boolean exists();

    public ImageDescriptor getImageDescriptor();

    public String getName();

    public IPersistableElement getPersistable();

    public String getToolTipText();
}

