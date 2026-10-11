/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.ITreeContentProvider
 *  org.eclipse.jface.viewers.Viewer
 */
package org.eclipse.ui.internal.dialogs;

import java.util.ArrayList;
import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.ui.internal.dialogs.WizardCollectionElement;
import org.eclipse.ui.model.AdaptableList;
import org.eclipse.ui.wizards.IWizardDescriptor;

public class WizardContentProvider
implements ITreeContentProvider {
    private AdaptableList input;

    public void dispose() {
        this.input = null;
    }

    public Object[] getChildren(Object parentElement) {
        if (parentElement instanceof WizardCollectionElement) {
            ArrayList list = new ArrayList();
            WizardCollectionElement element = (WizardCollectionElement)parentElement;
            Object[] childCollections = element.getChildren();
            int i = 0;
            while (i < childCollections.length) {
                this.handleChild(childCollections[i], list);
                ++i;
            }
            IWizardDescriptor[] childWizards = element.getWizards();
            int i2 = 0;
            while (i2 < childWizards.length) {
                this.handleChild(childWizards[i2], list);
                ++i2;
            }
            if (list.size() == 1 && list.get(0) instanceof WizardCollectionElement) {
                return this.getChildren(list.get(0));
            }
            return list.toArray();
        }
        if (parentElement instanceof AdaptableList) {
            AdaptableList aList = (AdaptableList)parentElement;
            Object[] children = aList.getChildren();
            ArrayList list = new ArrayList(children.length);
            int i = 0;
            while (i < children.length) {
                this.handleChild(children[i], list);
                ++i;
            }
            if (list.size() == 1 && list.get(0) instanceof WizardCollectionElement) {
                return this.getChildren(list.get(0));
            }
            return list.toArray();
        }
        return new Object[0];
    }

    public Object[] getElements(Object inputElement) {
        return this.getChildren(inputElement);
    }

    public Object getParent(Object element) {
        if (element instanceof WizardCollectionElement) {
            Object[] children = this.input.getChildren();
            int i = 0;
            while (i < children.length) {
                if (children[i].equals(element)) {
                    return this.input;
                }
                ++i;
            }
            return ((WizardCollectionElement)element).getParent(element);
        }
        return null;
    }

    private void handleChild(Object element, ArrayList list) {
        if (element instanceof WizardCollectionElement) {
            if (this.hasChildren(element)) {
                list.add(element);
            }
        } else {
            list.add(element);
        }
    }

    public boolean hasChildren(Object element) {
        return element instanceof WizardCollectionElement && this.getChildren(element).length > 0;
    }

    public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
        this.input = (AdaptableList)newInput;
    }
}

