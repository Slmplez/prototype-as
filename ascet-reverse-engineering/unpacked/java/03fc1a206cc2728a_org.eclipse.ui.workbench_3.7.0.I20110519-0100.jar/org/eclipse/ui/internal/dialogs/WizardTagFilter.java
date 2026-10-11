/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.AbstractTreeViewer
 *  org.eclipse.jface.viewers.ITreeContentProvider
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.jface.viewers.ViewerFilter
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.jface.viewers.AbstractTreeViewer;
import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerFilter;
import org.eclipse.ui.wizards.IWizardDescriptor;

public class WizardTagFilter
extends ViewerFilter {
    private String[] myTags;

    public WizardTagFilter(String[] tags) {
        this.myTags = tags;
    }

    public boolean select(Viewer viewer, Object parentElement, Object element) {
        if (element instanceof IWizardDescriptor) {
            IWizardDescriptor desc = (IWizardDescriptor)element;
            String[] tags = desc.getTags();
            int i = 0;
            while (i < tags.length) {
                int j = 0;
                while (j < this.myTags.length) {
                    if (tags[i].equals(this.myTags[j])) {
                        return true;
                    }
                    ++j;
                }
                ++i;
            }
            return false;
        }
        Object[] children = ((ITreeContentProvider)((AbstractTreeViewer)viewer).getContentProvider()).getChildren(element);
        if (children.length > 0) {
            return this.filter(viewer, element, children).length > 0;
        }
        return false;
    }
}

