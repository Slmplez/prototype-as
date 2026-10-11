/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.preference;

import org.eclipse.jface.preference.IPreferenceNode;
import org.eclipse.jface.preference.PreferenceManager;
import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.jface.viewers.Viewer;

public class PreferenceContentProvider
implements ITreeContentProvider {
    private PreferenceManager manager;

    public void dispose() {
        this.manager = null;
    }

    private IPreferenceNode findParent(IPreferenceNode parent, IPreferenceNode target) {
        if (parent.getId().equals(target.getId())) {
            return null;
        }
        IPreferenceNode found = parent.findSubNode(target.getId());
        if (found != null) {
            return parent;
        }
        IPreferenceNode[] children = parent.getSubNodes();
        int i = 0;
        while (i < children.length) {
            found = this.findParent(children[i], target);
            if (found != null) {
                return found;
            }
            ++i;
        }
        return null;
    }

    public Object[] getChildren(Object parentElement) {
        return ((IPreferenceNode)parentElement).getSubNodes();
    }

    public Object[] getElements(Object inputElement) {
        return this.getChildren(((PreferenceManager)inputElement).getRoot());
    }

    public Object getParent(Object element) {
        IPreferenceNode targetNode = (IPreferenceNode)element;
        IPreferenceNode root = this.manager.getRoot();
        return this.findParent(root, targetNode);
    }

    public boolean hasChildren(Object element) {
        return this.getChildren(element).length > 0;
    }

    public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
        this.manager = (PreferenceManager)newInput;
    }

    protected void setManager(PreferenceManager manager) {
        this.manager = manager;
    }
}

