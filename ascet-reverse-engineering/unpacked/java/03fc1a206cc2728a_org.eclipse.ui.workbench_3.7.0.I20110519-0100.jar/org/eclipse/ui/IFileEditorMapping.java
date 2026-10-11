/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui;

import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.IEditorDescriptor;

public interface IFileEditorMapping {
    public IEditorDescriptor getDefaultEditor();

    public IEditorDescriptor[] getEditors();

    public IEditorDescriptor[] getDeletedEditors();

    public String getExtension();

    public ImageDescriptor getImageDescriptor();

    public String getLabel();

    public String getName();
}

