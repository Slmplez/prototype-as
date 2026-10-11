/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.core.runtime.preferences;

import org.eclipse.core.internal.preferences.AbstractScope;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.IScopeContext;

public final class InstanceScope
extends AbstractScope {
    public static final String SCOPE = "instance";
    public static final IScopeContext INSTANCE = new InstanceScope();

    public IPath getLocation() {
        return null;
    }

    public String getName() {
        return SCOPE;
    }

    public IEclipsePreferences getNode(String qualifier) {
        return super.getNode(qualifier);
    }
}

