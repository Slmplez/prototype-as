/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.preferences;

import org.eclipse.core.runtime.preferences.IEclipsePreferences;

public abstract class PreferenceModifyListener {
    public IEclipsePreferences preApply(IEclipsePreferences node) {
        return node;
    }
}

