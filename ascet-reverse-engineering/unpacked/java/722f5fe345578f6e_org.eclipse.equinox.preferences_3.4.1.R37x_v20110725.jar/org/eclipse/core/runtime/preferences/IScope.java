/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.preferences;

import org.eclipse.core.runtime.preferences.IEclipsePreferences;

public interface IScope {
    public IEclipsePreferences create(IEclipsePreferences var1, String var2);
}

