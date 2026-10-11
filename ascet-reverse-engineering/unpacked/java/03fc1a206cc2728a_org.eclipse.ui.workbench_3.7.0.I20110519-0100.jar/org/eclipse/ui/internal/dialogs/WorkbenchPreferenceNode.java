/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.ui.IWorkbenchPreferencePage;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.dialogs.ErrorPreferencePage;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.internal.preferences.WorkbenchPreferenceExtensionNode;
import org.eclipse.ui.statushandlers.StatusManager;

public class WorkbenchPreferenceNode
extends WorkbenchPreferenceExtensionNode {
    public WorkbenchPreferenceNode(String nodeId, IConfigurationElement element) {
        super(nodeId, element);
    }

    public void createPage() {
        IWorkbenchPreferencePage page;
        try {
            page = (IWorkbenchPreferencePage)WorkbenchPlugin.createExtension(this.getConfigurationElement(), "class");
        }
        catch (CoreException e) {
            IStatus errStatus = StatusUtil.newStatus(e.getStatus(), WorkbenchMessages.PreferenceNode_errorMessage);
            StatusManager.getManager().handle(errStatus, 3);
            page = new ErrorPreferencePage();
        }
        page.init(PlatformUI.getWorkbench());
        if (this.getLabelImage() != null) {
            page.setImageDescriptor(this.getImageDescriptor());
        }
        page.setTitle(this.getLabelText());
        this.setPage(page);
    }

    public String getCategory() {
        return this.getConfigurationElement().getAttribute("category");
    }
}

