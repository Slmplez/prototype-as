/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.internal.quickaccess;

import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.actions.NewWizardShortcutAction;
import org.eclipse.ui.internal.quickaccess.QuickAccessElement;
import org.eclipse.ui.internal.quickaccess.WizardProvider;
import org.eclipse.ui.wizards.IWizardDescriptor;

public class WizardElement
extends QuickAccessElement {
    private IWizardDescriptor wizardDescriptor;

    WizardElement(IWizardDescriptor wizardDescriptor, WizardProvider wizardProvider) {
        super(wizardProvider);
        this.wizardDescriptor = wizardDescriptor;
    }

    public void execute() {
        IWorkbenchWindow window = PlatformUI.getWorkbench().getActiveWorkbenchWindow();
        if (window != null) {
            NewWizardShortcutAction wizardAction = new NewWizardShortcutAction(window, this.wizardDescriptor);
            wizardAction.run();
        }
    }

    public String getId() {
        return this.wizardDescriptor.getId();
    }

    public ImageDescriptor getImageDescriptor() {
        return this.wizardDescriptor.getImageDescriptor();
    }

    public String getLabel() {
        return String.valueOf(this.wizardDescriptor.getLabel()) + " - " + this.wizardDescriptor.getDescription();
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + (this.wizardDescriptor == null ? 0 : this.wizardDescriptor.hashCode());
        return result;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (this.getClass() != obj.getClass()) {
            return false;
        }
        WizardElement other = (WizardElement)obj;
        return !(this.wizardDescriptor == null ? other.wizardDescriptor != null : !this.wizardDescriptor.equals(other.wizardDescriptor));
    }
}

