/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.preference.IPreferenceNode
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.jface.viewers.ViewerFilter
 */
package org.eclipse.ui.internal.dialogs;

import java.util.Collection;
import java.util.HashSet;
import org.eclipse.jface.preference.IPreferenceNode;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerFilter;

public class PreferenceNodeFilter
extends ViewerFilter {
    Collection ids = new HashSet();

    public PreferenceNodeFilter(String[] filteredIds) {
        int i = 0;
        while (i < filteredIds.length) {
            this.ids.add(filteredIds[i]);
            ++i;
        }
    }

    public boolean select(Viewer viewer, Object parentElement, Object element) {
        return this.checkNodeAndChildren((IPreferenceNode)element);
    }

    private boolean checkNodeAndChildren(IPreferenceNode node) {
        if (this.ids.contains(node.getId())) {
            return true;
        }
        IPreferenceNode[] subNodes = node.getSubNodes();
        int i = 0;
        while (i < subNodes.length) {
            if (this.checkNodeAndChildren(subNodes[i])) {
                return true;
            }
            ++i;
        }
        return false;
    }
}

