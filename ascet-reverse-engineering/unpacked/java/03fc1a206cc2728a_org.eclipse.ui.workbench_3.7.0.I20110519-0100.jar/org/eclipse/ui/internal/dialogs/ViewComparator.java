/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.jface.viewers.ViewerComparator
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.ui.internal.dialogs.DialogUtil;
import org.eclipse.ui.internal.registry.Category;
import org.eclipse.ui.internal.registry.ViewRegistry;
import org.eclipse.ui.internal.registry.ViewRegistryReader;
import org.eclipse.ui.views.IViewCategory;
import org.eclipse.ui.views.IViewDescriptor;

public class ViewComparator
extends ViewerComparator {
    private ViewRegistry viewReg;

    public ViewComparator(ViewRegistry reg) {
        this.viewReg = reg;
    }

    public int compare(Viewer viewer, Object e1, Object e2) {
        if (e1 instanceof IViewDescriptor) {
            String str1 = DialogUtil.removeAccel(((IViewDescriptor)e1).getLabel());
            String str2 = DialogUtil.removeAccel(((IViewDescriptor)e2).getLabel());
            return this.getComparator().compare(str1, str2);
        }
        if (e1 instanceof IViewCategory) {
            Category miscCategory;
            IViewCategory generalCategory = this.viewReg.findCategory(ViewRegistryReader.GENERAL_VIEW_ID);
            if (generalCategory != null) {
                if (((IViewCategory)e1).getId().equals(generalCategory.getId())) {
                    return -1;
                }
                if (((IViewCategory)e2).getId().equals(generalCategory.getId())) {
                    return 1;
                }
            }
            if ((miscCategory = this.viewReg.getMiscCategory()) != null) {
                if (((IViewCategory)e1).getId().equals(miscCategory.getId())) {
                    return 1;
                }
                if (((IViewCategory)e2).getId().equals(miscCategory.getId())) {
                    return -1;
                }
            }
            String str1 = DialogUtil.removeAccel(((IViewCategory)e1).getLabel());
            String str2 = DialogUtil.removeAccel(((IViewCategory)e2).getLabel());
            return this.getComparator().compare(str1, str2);
        }
        return 0;
    }
}

