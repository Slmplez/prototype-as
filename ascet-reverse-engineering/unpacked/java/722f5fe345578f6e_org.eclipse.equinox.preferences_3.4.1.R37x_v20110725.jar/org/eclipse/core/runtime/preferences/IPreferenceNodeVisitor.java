/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.preferences;

import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.osgi.service.prefs.BackingStoreException;

public interface IPreferenceNodeVisitor {
    public boolean visit(IEclipsePreferences var1) throws BackingStoreException;
}

