/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.templates.persistence.TemplateStore
 *  org.eclipse.jface.viewers.IStructuredContentProvider
 *  org.eclipse.jface.viewers.Viewer
 */
package org.eclipse.ui.texteditor.templates;

import org.eclipse.jface.text.templates.persistence.TemplateStore;
import org.eclipse.jface.viewers.IStructuredContentProvider;
import org.eclipse.jface.viewers.Viewer;

class TemplateContentProvider
implements IStructuredContentProvider {
    private TemplateStore fStore;

    TemplateContentProvider() {
    }

    public Object[] getElements(Object input) {
        return this.fStore.getTemplateData(false);
    }

    public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
        this.fStore = (TemplateStore)newInput;
    }

    public void dispose() {
        this.fStore = null;
    }
}

