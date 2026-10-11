/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.ui.PlatformUI
 */
package org.eclipse.ui.views.properties;

import org.eclipse.jface.action.IAction;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.views.properties.PropertySheetAction;
import org.eclipse.ui.views.properties.PropertySheetViewer;

class FilterAction
extends PropertySheetAction {
    public FilterAction(PropertySheetViewer viewer, String name) {
        super(viewer, name);
        PlatformUI.getWorkbench().getHelpSystem().setHelp((IAction)this, "org.eclipse.ui.properties_filter_action_context");
    }

    public void run() {
        PropertySheetViewer ps = this.getPropertySheet();
        ps.deactivateCellEditor();
        if (this.isChecked()) {
            ps.showExpert();
        } else {
            ps.hideExpert();
        }
    }
}

