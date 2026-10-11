/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.Viewer
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.jface.viewers.Viewer;
import org.eclipse.ui.dialogs.PatternFilter;
import org.eclipse.ui.internal.dialogs.WizardCollectionElement;
import org.eclipse.ui.internal.dialogs.WorkbenchWizardElement;

public class WizardPatternFilter
extends PatternFilter {
    public boolean isElementSelectable(Object element) {
        return element instanceof WorkbenchWizardElement;
    }

    protected boolean isLeafMatch(Viewer viewer, Object element) {
        if (element instanceof WizardCollectionElement) {
            return false;
        }
        if (element instanceof WorkbenchWizardElement) {
            WorkbenchWizardElement desc = (WorkbenchWizardElement)element;
            String text = desc.getLabel();
            if (this.wordMatches(text)) {
                return true;
            }
            String[] keywordLabels = desc.getKeywordLabels();
            int i = 0;
            while (i < keywordLabels.length) {
                if (this.wordMatches(keywordLabels[i])) {
                    return true;
                }
                ++i;
            }
        }
        return false;
    }
}

