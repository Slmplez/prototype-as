/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.viewers.IStructuredSelection
 */
package org.eclipse.ui.wizards;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.ui.IWorkbenchPartDescriptor;
import org.eclipse.ui.IWorkbenchWizard;
import org.eclipse.ui.wizards.IWizardCategory;

public interface IWizardDescriptor
extends IWorkbenchPartDescriptor,
IAdaptable {
    public IStructuredSelection adaptedSelection(IStructuredSelection var1);

    public String getDescription();

    public String[] getTags();

    public IWorkbenchWizard createWizard() throws CoreException;

    public ImageDescriptor getDescriptionImage();

    public String getHelpHref();

    public IWizardCategory getCategory();

    public boolean canFinishEarly();

    public boolean hasPages();
}

