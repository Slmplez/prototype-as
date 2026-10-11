/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.core.runtime.preferences;

import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;

public interface IScopeContext {
    public String getName();

    public IEclipsePreferences getNode(String var1);

    public IPath getLocation();
}

