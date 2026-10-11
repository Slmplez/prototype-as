/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.ILabelProviderListener;
import org.eclipse.jface.viewers.ITreePathLabelProvider;
import org.eclipse.jface.viewers.TableColumnViewerLabelProvider;
import org.eclipse.jface.viewers.TreePath;
import org.eclipse.jface.viewers.ViewerLabel;

public class TreeColumnViewerLabelProvider
extends TableColumnViewerLabelProvider {
    private ITreePathLabelProvider treePathProvider = new ITreePathLabelProvider(){

        public void updateLabel(ViewerLabel label, TreePath elementPath) {
        }

        public void dispose() {
        }

        public void addListener(ILabelProviderListener listener) {
        }

        public void removeListener(ILabelProviderListener listener) {
        }

        public boolean isLabelProperty(Object element, String property) {
            return false;
        }
    };

    public TreeColumnViewerLabelProvider(IBaseLabelProvider labelProvider) {
        super(labelProvider);
    }

    public void updateLabel(ViewerLabel label, TreePath elementPath) {
        this.treePathProvider.updateLabel(label, elementPath);
    }

    public void setProviders(Object provider) {
        super.setProviders(provider);
        if (provider instanceof ITreePathLabelProvider) {
            this.treePathProvider = (ITreePathLabelProvider)provider;
        }
    }

    public ITreePathLabelProvider getTreePathProvider() {
        return this.treePathProvider;
    }
}

