/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.ui.preferences;

import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.ui.internal.preferences.SettingsTransferRegistryReader;

public abstract class SettingsTransfer {
    public static IConfigurationElement[] getSettingsTransfers() {
        return new SettingsTransferRegistryReader().getSettingTransfers();
    }

    public abstract IStatus transferSettings(IPath var1);

    public abstract String getName();
}

