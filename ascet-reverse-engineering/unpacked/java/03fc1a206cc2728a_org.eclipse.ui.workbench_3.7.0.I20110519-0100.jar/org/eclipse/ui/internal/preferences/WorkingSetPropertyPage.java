/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.jface.wizard.IWizard
 *  org.eclipse.jface.wizard.IWizardPage
 *  org.eclipse.jface.wizard.Wizard
 *  org.eclipse.jface.wizard.WizardPage
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.ui.internal.preferences;

import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.jface.wizard.IWizard;
import org.eclipse.jface.wizard.IWizardPage;
import org.eclipse.jface.wizard.Wizard;
import org.eclipse.jface.wizard.WizardPage;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.ui.IWorkingSet;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.preferences.WizardPropertyPage;

public class WorkingSetPropertyPage
extends WizardPropertyPage {
    private IWorkingSet fWorkingSet;
    static /* synthetic */ Class class$0;

    public WorkingSetPropertyPage() {
        this.noDefaultAndApplyButton();
    }

    public void setElement(IAdaptable element) {
        super.setElement(element);
        if (element instanceof IWorkingSet) {
            this.fWorkingSet = (IWorkingSet)element;
        } else {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.IWorkingSet");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.fWorkingSet = (IWorkingSet)element.getAdapter((Class)clazz);
        }
    }

    protected void applyChanges() {
    }

    protected IWizard createWizard() {
        if (this.fWorkingSet.isEditable()) {
            return PlatformUI.getWorkbench().getWorkingSetManager().createWorkingSetEditWizard(this.fWorkingSet);
        }
        return new ReadOnlyWizard();
    }

    private static final class ReadOnlyPage
    extends WizardPage {
        protected ReadOnlyPage() {
            super(WorkbenchMessages.WorkingSetPropertyPage_ReadOnlyWorkingSet_title);
            this.setDescription(WorkbenchMessages.WorkingSetPropertyPage_ReadOnlyWorkingSet_description);
        }

        public void createControl(Composite parent) {
            Composite composite = new Composite(parent, 0);
            composite.setLayoutData((Object)new GridData(4, 4, true, true));
            composite.setLayout((Layout)new GridLayout(1, false));
            this.setControl((Control)composite);
        }
    }

    private static final class ReadOnlyWizard
    extends Wizard {
        public boolean performFinish() {
            return true;
        }

        public void addPages() {
            this.addPage((IWizardPage)new ReadOnlyPage());
        }
    }
}

