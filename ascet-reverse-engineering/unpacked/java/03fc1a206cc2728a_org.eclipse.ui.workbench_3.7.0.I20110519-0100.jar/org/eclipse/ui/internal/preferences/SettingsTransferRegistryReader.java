/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.ui.internal.preferences;

import java.util.ArrayList;
import java.util.Collection;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.Platform;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.registry.RegistryReader;

public class SettingsTransferRegistryReader
extends RegistryReader {
    Collection settingsTransfers = new ArrayList();

    public IConfigurationElement[] getSettingTransfers() {
        this.settingsTransfers = new ArrayList();
        IExtensionRegistry registry = Platform.getExtensionRegistry();
        this.readRegistry(registry, WorkbenchPlugin.PI_WORKBENCH, "preferenceTransfer");
        IConfigurationElement[] transfers = new IConfigurationElement[this.settingsTransfers.size()];
        this.settingsTransfers.toArray(transfers);
        return transfers;
    }

    protected boolean readElement(IConfigurationElement element) {
        if (element.getName().equals("settingsTransfer")) {
            this.settingsTransfers.add(element);
            return true;
        }
        return element.getName().equals("transfer");
    }
}

