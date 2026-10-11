/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui;

import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.IEditorMatchingStrategy;
import org.eclipse.ui.IWorkbenchPartDescriptor;

public interface IEditorDescriptor
extends IWorkbenchPartDescriptor {
    public String getId();

    public ImageDescriptor getImageDescriptor();

    public String getLabel();

    public boolean isInternal();

    public boolean isOpenInPlace();

    public boolean isOpenExternal();

    public IEditorMatchingStrategy getEditorMatchingStrategy();
}

