/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.jface.preference.IPreferencePage
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jface.preference.IPreferencePage;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.swt.graphics.Image;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.dialogs.EmptyPropertyPage;
import org.eclipse.ui.internal.dialogs.RegistryPageContributor;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.internal.preferences.WorkbenchPreferenceExtensionNode;
import org.eclipse.ui.statushandlers.StatusManager;

public class PropertyPageNode
extends WorkbenchPreferenceExtensionNode {
    private RegistryPageContributor contributor;
    private IPreferencePage page;
    private Image icon;
    private Object element;

    public PropertyPageNode(RegistryPageContributor contributor, Object element) {
        super(contributor.getPageId(), contributor.getConfigurationElement());
        this.contributor = contributor;
        this.element = element;
    }

    public void createPage() {
        try {
            this.page = this.contributor.createPage(this.element);
        }
        catch (CoreException e) {
            IStatus errStatus = StatusUtil.newStatus(e.getStatus(), WorkbenchMessages.PropertyPageNode_errorMessage);
            StatusManager.getManager().handle(errStatus, 2);
            this.page = new EmptyPropertyPage();
        }
        this.setPage(this.page);
    }

    public void disposeResources() {
        if (this.page != null) {
            this.page.dispose();
            this.page = null;
        }
        if (this.icon != null) {
            this.icon.dispose();
            this.icon = null;
        }
    }

    public Image getLabelImage() {
        ImageDescriptor desc;
        if (this.icon == null && (desc = this.contributor.getPageIcon()) != null) {
            this.icon = desc.createImage();
        }
        return this.icon;
    }

    public String getLabelText() {
        return this.contributor.getPageName();
    }
}

