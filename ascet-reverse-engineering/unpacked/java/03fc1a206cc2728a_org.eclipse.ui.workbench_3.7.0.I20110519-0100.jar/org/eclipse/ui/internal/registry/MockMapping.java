/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.content.IContentType
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.internal.registry;

import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.IEditorDescriptor;
import org.eclipse.ui.IFileEditorMapping;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.activities.WorkbenchActivityHelper;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.registry.EditorRegistry;
import org.eclipse.ui.internal.util.Util;

class MockMapping
implements IFileEditorMapping {
    private IContentType contentType;
    private String extension;
    private String filename;

    MockMapping(IContentType type, String name, String ext) {
        this.contentType = type;
        this.filename = name;
        this.extension = ext;
    }

    public IEditorDescriptor getDefaultEditor() {
        IEditorDescriptor[] candidates = ((EditorRegistry)PlatformUI.getWorkbench().getEditorRegistry()).getEditorsForContentType(this.contentType);
        if (candidates.length == 0 || WorkbenchActivityHelper.restrictUseOf(candidates[0])) {
            return null;
        }
        return candidates[0];
    }

    public IEditorDescriptor[] getEditors() {
        Object[] editorsForContentType = ((EditorRegistry)PlatformUI.getWorkbench().getEditorRegistry()).getEditorsForContentType(this.contentType);
        return (IEditorDescriptor[])WorkbenchActivityHelper.restrictArray(editorsForContentType);
    }

    public IEditorDescriptor[] getDeletedEditors() {
        return new IEditorDescriptor[0];
    }

    public String getExtension() {
        return this.extension;
    }

    public ImageDescriptor getImageDescriptor() {
        IEditorDescriptor editor = this.getDefaultEditor();
        if (editor == null) {
            return WorkbenchImages.getImageDescriptor("IMG_OBJ_FILE");
        }
        return editor.getImageDescriptor();
    }

    public String getLabel() {
        return String.valueOf(this.filename) + '.' + this.extension;
    }

    public String getName() {
        return this.filename;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MockMapping)) {
            return false;
        }
        MockMapping mapping = (MockMapping)obj;
        if (!this.filename.equals(mapping.filename)) {
            return false;
        }
        if (!this.extension.equals(mapping.extension)) {
            return false;
        }
        if (!Util.equals(this.getEditors(), mapping.getEditors())) {
            return false;
        }
        return Util.equals(this.getDeletedEditors(), mapping.getDeletedEditors());
    }
}

