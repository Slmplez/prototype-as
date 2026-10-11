/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.part;

import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.part.EditorActionBarContributor;
import org.eclipse.ui.part.MultiPageEditorPart;

public abstract class MultiPageEditorActionBarContributor
extends EditorActionBarContributor {
    protected MultiPageEditorActionBarContributor() {
    }

    public void setActiveEditor(IEditorPart part) {
        IEditorPart activeNestedEditor = null;
        if (part instanceof MultiPageEditorPart) {
            activeNestedEditor = ((MultiPageEditorPart)part).getActiveEditor();
        }
        this.setActivePage(activeNestedEditor);
    }

    public abstract void setActivePage(IEditorPart var1);
}

