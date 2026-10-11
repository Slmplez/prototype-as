/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.security.storage.provider;

import java.net.URL;
import org.eclipse.equinox.security.storage.ISecurePreferences;

public interface IPreferencesContainer {
    public URL getLocation();

    public ISecurePreferences getPreferences();

    public boolean hasOption(Object var1);

    public Object getOption(Object var1);
}

