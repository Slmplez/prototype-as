/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.osgi.service.prefs.BackingStoreException
 */
package org.eclipse.ui.preferences;

import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.osgi.service.prefs.BackingStoreException;

public interface IWorkingCopyManager {
    public IEclipsePreferences getWorkingCopy(IEclipsePreferences var1);

    public void applyChanges() throws BackingStoreException;
}

