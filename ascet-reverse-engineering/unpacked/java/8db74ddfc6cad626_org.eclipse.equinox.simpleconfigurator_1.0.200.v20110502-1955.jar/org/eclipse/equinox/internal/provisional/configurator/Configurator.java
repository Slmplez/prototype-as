/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.provisional.configurator;

import java.io.IOException;
import java.net.URL;

public interface Configurator {
    public void applyConfiguration(URL var1) throws IOException;

    public void applyConfiguration() throws IOException;

    public URL getUrlInUse();
}

