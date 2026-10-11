/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.preference.IPreferenceNode
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.ui.internal.quickaccess;

import org.eclipse.jface.preference.IPreferenceNode;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.swt.graphics.Image;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.dialogs.PropertyDialog;
import org.eclipse.ui.internal.quickaccess.PropertiesProvider;
import org.eclipse.ui.internal.quickaccess.QuickAccessElement;

public class PropertiesElement
extends QuickAccessElement {
    private Object selectedElement;
    private IPreferenceNode preferenceNode;

    PropertiesElement(Object selectedElement, IPreferenceNode preferenceNode, PropertiesProvider propertiesProvider) {
        super(propertiesProvider);
        this.selectedElement = selectedElement;
        this.preferenceNode = preferenceNode;
    }

    public void execute() {
        IWorkbenchWindow window = PlatformUI.getWorkbench().getActiveWorkbenchWindow();
        if (window != null) {
            PropertyDialog dialog = PropertyDialog.createDialogOn(window.getShell(), this.preferenceNode.getId(), this.selectedElement);
            dialog.open();
        }
    }

    public String getId() {
        return this.preferenceNode.getId();
    }

    public ImageDescriptor getImageDescriptor() {
        Image image = this.preferenceNode.getLabelImage();
        if (image != null) {
            ImageDescriptor descriptor = ImageDescriptor.createFromImage((Image)image);
            return descriptor;
        }
        return null;
    }

    public String getLabel() {
        return this.preferenceNode.getLabelText();
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + (this.preferenceNode == null ? 0 : this.preferenceNode.hashCode());
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
        PropertiesElement other = (PropertiesElement)obj;
        return !(this.preferenceNode == null ? other.preferenceNode != null : !this.preferenceNode.equals(other.preferenceNode));
    }
}

