/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.ViewerComparator
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.ui.internal.dialogs.WizardCollectionElement;

class DataTransferWizardCollectionComparator
extends ViewerComparator {
    public static final DataTransferWizardCollectionComparator INSTANCE = new DataTransferWizardCollectionComparator();

    private DataTransferWizardCollectionComparator() {
    }

    public int category(Object element) {
        if (element instanceof WizardCollectionElement) {
            String id = ((WizardCollectionElement)element).getId();
            if ("org.eclipse.ui.Basic".equals(id)) {
                return 1;
            }
            if ("org.eclipse.ui.Other".equals(id)) {
                return 3;
            }
            return 2;
        }
        return super.category(element);
    }

    public boolean isSorterProperty(Object object, String propertyId) {
        return propertyId.equals("org.eclipse.jface.text");
    }
}

