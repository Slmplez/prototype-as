/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.content.IContentType
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui;

import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.IEditorDescriptor;
import org.eclipse.ui.IFileEditorMapping;
import org.eclipse.ui.IPropertyListener;

public interface IEditorRegistry {
    public static final int PROP_CONTENTS = 1;
    public static final String SYSTEM_EXTERNAL_EDITOR_ID = "org.eclipse.ui.systemExternalEditor";
    public static final String SYSTEM_INPLACE_EDITOR_ID = "org.eclipse.ui.systemInPlaceEditor";

    public void addPropertyListener(IPropertyListener var1);

    public IEditorDescriptor findEditor(String var1);

    public IEditorDescriptor getDefaultEditor();

    public IEditorDescriptor getDefaultEditor(String var1);

    public IEditorDescriptor getDefaultEditor(String var1, IContentType var2);

    public IEditorDescriptor[] getEditors(String var1);

    public IEditorDescriptor[] getEditors(String var1, IContentType var2);

    public IFileEditorMapping[] getFileEditorMappings();

    public ImageDescriptor getImageDescriptor(String var1);

    public ImageDescriptor getImageDescriptor(String var1, IContentType var2);

    public void removePropertyListener(IPropertyListener var1);

    public void setDefaultEditor(String var1, String var2);

    public boolean isSystemInPlaceEditorAvailable(String var1);

    public boolean isSystemExternalEditorAvailable(String var1);

    public ImageDescriptor getSystemExternalEditorImageDescriptor(String var1);
}

