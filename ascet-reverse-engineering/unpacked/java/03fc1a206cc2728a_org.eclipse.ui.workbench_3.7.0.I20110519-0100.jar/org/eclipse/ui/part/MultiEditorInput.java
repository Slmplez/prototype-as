/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.part;

import java.util.Arrays;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IPersistableElement;

public class MultiEditorInput
implements IEditorInput {
    IEditorInput[] input;
    String[] editors;

    public MultiEditorInput(String[] editorIDs, IEditorInput[] innerEditors) {
        Assert.isNotNull((Object)editorIDs);
        Assert.isNotNull((Object)innerEditors);
        this.editors = editorIDs;
        this.input = innerEditors;
    }

    public IEditorInput[] getInput() {
        return this.input;
    }

    public String[] getEditors() {
        return this.editors;
    }

    public boolean exists() {
        return true;
    }

    public ImageDescriptor getImageDescriptor() {
        return null;
    }

    public String getName() {
        String name = "";
        int i = 0;
        while (i < this.input.length - 1) {
            name = String.valueOf(name) + this.input[i].getName() + "/";
            ++i;
        }
        name = String.valueOf(name) + this.input[this.input.length - 1].getName();
        return name;
    }

    public IPersistableElement getPersistable() {
        return null;
    }

    public String getToolTipText() {
        return this.getName();
    }

    public Object getAdapter(Class adapter) {
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MultiEditorInput)) {
            return false;
        }
        MultiEditorInput other = (MultiEditorInput)obj;
        return Arrays.equals(this.editors, other.editors) && Arrays.equals(this.input, other.input);
    }

    public int hashCode() {
        int hash = 0;
        int i = 0;
        while (i < this.editors.length) {
            hash = hash * 37 + this.editors[i].hashCode();
            ++i;
        }
        i = 0;
        while (i < this.input.length) {
            hash = hash * 37 + this.input[i].hashCode();
            ++i;
        }
        return hash;
    }
}

