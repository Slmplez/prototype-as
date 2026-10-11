/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.internal.part;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IPersistableElement;
import org.eclipse.ui.internal.EditorReference;

public class NullEditorInput
implements IEditorInput {
    private EditorReference editorReference;

    public NullEditorInput() {
    }

    public NullEditorInput(EditorReference editorReference) {
        Assert.isLegal((editorReference != null ? 1 : 0) != 0);
        this.editorReference = editorReference;
    }

    public boolean exists() {
        return false;
    }

    public ImageDescriptor getImageDescriptor() {
        return ImageDescriptor.getMissingImageDescriptor();
    }

    public String getName() {
        String result = null;
        if (this.editorReference != null) {
            result = this.editorReference.internalGetName();
        }
        if (result != null) {
            return result;
        }
        return "";
    }

    public IPersistableElement getPersistable() {
        return null;
    }

    public String getToolTipText() {
        if (this.editorReference != null) {
            return this.editorReference.getTitleToolTip();
        }
        return "";
    }

    public Object getAdapter(Class adapter) {
        return null;
    }
}

