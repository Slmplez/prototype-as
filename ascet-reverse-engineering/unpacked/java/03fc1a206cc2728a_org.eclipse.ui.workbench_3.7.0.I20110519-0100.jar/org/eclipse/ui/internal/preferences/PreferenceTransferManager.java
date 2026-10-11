/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.preferences;

import org.eclipse.ui.internal.preferences.PreferenceTransferElement;
import org.eclipse.ui.internal.registry.PreferenceTransferRegistryReader;

public class PreferenceTransferManager {
    public static PreferenceTransferElement[] getPreferenceTransfers() {
        return new PreferenceTransferRegistryReader("preferenceTransfer").getPreferenceTransfers();
    }
}

