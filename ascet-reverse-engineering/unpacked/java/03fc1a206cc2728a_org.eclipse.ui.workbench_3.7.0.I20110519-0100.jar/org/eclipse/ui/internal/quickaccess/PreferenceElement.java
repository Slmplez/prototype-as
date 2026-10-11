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
import org.eclipse.ui.internal.dialogs.WorkbenchPreferenceDialog;
import org.eclipse.ui.internal.quickaccess.PreferenceProvider;
import org.eclipse.ui.internal.quickaccess.QuickAccessElement;

public class PreferenceElement
extends QuickAccessElement {
    private IPreferenceNode preferenceNode;
    private String prefix;

    PreferenceElement(IPreferenceNode preferenceNode, String prefix, PreferenceProvider preferenceProvider) {
        super(preferenceProvider);
        this.preferenceNode = preferenceNode;
        this.prefix = prefix;
    }

    public void execute() {
        IWorkbenchWindow window = PlatformUI.getWorkbench().getActiveWorkbenchWindow();
        if (window != null) {
            WorkbenchPreferenceDialog dialog = WorkbenchPreferenceDialog.createDialogOn(window.getShell(), this.preferenceNode.getId());
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
        if (this.prefix != null && this.prefix.length() > 0) {
            return String.valueOf(this.preferenceNode.getLabelText()) + " - " + this.prefix;
        }
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
        PreferenceElement other = (PreferenceElement)obj;
        return !(this.preferenceNode == null ? other.preferenceNode != null : !this.preferenceNode.equals(other.preferenceNode));
    }
}

