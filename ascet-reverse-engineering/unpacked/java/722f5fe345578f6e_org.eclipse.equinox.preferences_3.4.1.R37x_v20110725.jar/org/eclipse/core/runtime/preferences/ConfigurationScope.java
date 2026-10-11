/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.osgi.service.datalocation.Location
 */
package org.eclipse.core.runtime.preferences;

import java.net.URL;
import org.eclipse.core.internal.preferences.AbstractScope;
import org.eclipse.core.internal.preferences.PreferencesOSGiUtils;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.IScopeContext;
import org.eclipse.osgi.service.datalocation.Location;

public final class ConfigurationScope
extends AbstractScope {
    public static final String SCOPE = "configuration";
    public static final IScopeContext INSTANCE = new ConfigurationScope();

    public String getName() {
        return SCOPE;
    }

    public IEclipsePreferences getNode(String qualifier) {
        return super.getNode(qualifier);
    }

    public IPath getLocation() {
        URL url;
        Path result = null;
        Location location = PreferencesOSGiUtils.getDefault().getConfigurationLocation();
        if (!location.isReadOnly() && (url = location.getURL()) != null && (result = new Path(url.getFile())).isEmpty()) {
            result = null;
        }
        return result;
    }
}

