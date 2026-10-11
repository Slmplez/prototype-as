/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Group
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.ui.dialogs;

import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Group;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.ui.IWorkingSet;
import org.eclipse.ui.dialogs.WorkingSetConfigurationBlock;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;

public final class WorkingSetGroup {
    private WorkingSetConfigurationBlock workingSetBlock;

    public WorkingSetGroup(Composite composite, IStructuredSelection currentSelection, String[] workingSetTypes) {
        Group workingSetGroup = new Group(composite, 0);
        workingSetGroup.setFont(composite.getFont());
        workingSetGroup.setText(WorkbenchMessages.WorkingSetGroup_WorkingSets_group);
        workingSetGroup.setLayoutData((Object)new GridData(4, 128, true, false));
        workingSetGroup.setLayout((Layout)new GridLayout(1, false));
        this.workingSetBlock = new WorkingSetConfigurationBlock(workingSetTypes, WorkbenchPlugin.getDefault().getDialogSettings());
        this.workingSetBlock.setWorkingSets(this.workingSetBlock.findApplicableWorkingSets(currentSelection));
        this.workingSetBlock.createContent((Composite)workingSetGroup);
    }

    public IWorkingSet[] getSelectedWorkingSets() {
        return this.workingSetBlock.getSelectedWorkingSets();
    }
}

