/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.ui.internal.registry;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.ui.IPluginContribution;
import org.eclipse.ui.views.IStickyViewDescriptor;

public class StickyViewDescriptor
implements IStickyViewDescriptor,
IPluginContribution {
    private IConfigurationElement configurationElement;
    private String id;
    public static final String STICKY_FOLDER_RIGHT = "stickyFolderRight";
    public static final String STICKY_FOLDER_LEFT = "stickyFolderLeft";
    public static final String STICKY_FOLDER_TOP = "stickyFolderTop";
    public static final String STICKY_FOLDER_BOTTOM = "stickyFolderBottom";

    public StickyViewDescriptor(IConfigurationElement element) throws CoreException {
        this.configurationElement = element;
        this.id = this.configurationElement.getAttribute("id");
        if (this.id == null) {
            throw new CoreException((IStatus)new Status(4, element.getNamespace(), 0, "Invalid extension (missing id) ", null));
        }
    }

    public IConfigurationElement getConfigurationElement() {
        return this.configurationElement;
    }

    public int getLocation() {
        int direction = 2;
        String location = this.configurationElement.getAttribute("location");
        if (location != null) {
            if (location.equalsIgnoreCase("left")) {
                direction = 1;
            } else if (location.equalsIgnoreCase("top")) {
                direction = 3;
            } else if (location.equalsIgnoreCase("bottom")) {
                direction = 4;
            }
        }
        return direction;
    }

    public String getId() {
        return this.id;
    }

    public String getLocalId() {
        return this.id;
    }

    public String getPluginId() {
        return this.configurationElement.getContributor().getName();
    }

    public boolean isCloseable() {
        boolean closeable = true;
        String closeableString = this.configurationElement.getAttribute("closeable");
        if (closeableString != null) {
            closeable = !closeableString.equals("false");
        }
        return closeable;
    }

    public boolean isMoveable() {
        boolean moveable = true;
        String moveableString = this.configurationElement.getAttribute("moveable");
        if (moveableString != null) {
            moveable = !moveableString.equals("false");
        }
        return moveable;
    }
}

