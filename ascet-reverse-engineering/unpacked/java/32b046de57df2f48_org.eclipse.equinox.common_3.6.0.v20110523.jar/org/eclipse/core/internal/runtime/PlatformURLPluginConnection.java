/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Bundle
 */
package org.eclipse.core.internal.runtime;

import java.io.IOException;
import java.net.URL;
import org.eclipse.core.internal.boot.PlatformURLConnection;
import org.eclipse.core.internal.boot.PlatformURLHandler;
import org.eclipse.core.internal.runtime.Activator;
import org.eclipse.core.internal.runtime.CommonMessages;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Bundle;

public class PlatformURLPluginConnection
extends PlatformURLConnection {
    private Bundle target = null;
    private static boolean isRegistered = false;
    public static final String PLUGIN = "plugin";
    static /* synthetic */ Class class$0;

    public PlatformURLPluginConnection(URL url) {
        super(url);
    }

    protected boolean allowCaching() {
        return true;
    }

    public static Object[] parse(String spec, URL originalURL) throws IOException {
        Object[] result = new Object[2];
        if (spec.startsWith("/")) {
            spec = spec.substring(1);
        }
        if (!spec.startsWith(PLUGIN)) {
            throw new IOException(NLS.bind((String)CommonMessages.url_badVariant, (Object)originalURL));
        }
        int ix = spec.indexOf("/", PLUGIN.length() + 1);
        String ref = ix == -1 ? spec.substring(PLUGIN.length() + 1) : spec.substring(PLUGIN.length() + 1, ix);
        String id = PlatformURLPluginConnection.getId(ref);
        Activator activator = Activator.getDefault();
        if (activator == null) {
            throw new IOException(CommonMessages.activator_not_available);
        }
        Bundle bundle = activator.getBundle(id);
        if (bundle == null) {
            throw new IOException(NLS.bind((String)CommonMessages.url_resolvePlugin, (Object)originalURL));
        }
        result[0] = bundle;
        result[1] = ix == -1 || ix + 1 >= spec.length() ? "/" : spec.substring(ix + 1);
        return result;
    }

    protected URL resolve() throws IOException {
        String path;
        String spec = this.url.getFile().trim();
        Object[] obj = PlatformURLPluginConnection.parse(spec, this.url);
        Bundle b = (Bundle)obj[0];
        URL result = b.getEntry(path = (String)obj[1]);
        if (result != null || "/".equals(path)) {
            return result;
        }
        return new URL(b.getEntry("/"), path);
    }

    public static void startup() {
        if (isRegistered) {
            return;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.internal.runtime.PlatformURLPluginConnection");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        PlatformURLHandler.register(PLUGIN, clazz);
        isRegistered = true;
    }

    public URL[] getAuxillaryURLs() throws IOException {
        Bundle[] fragments;
        int fragmentLength;
        if (this.target == null) {
            String spec = this.url.getFile().trim();
            if (spec.startsWith("/")) {
                spec = spec.substring(1);
            }
            if (!spec.startsWith(PLUGIN)) {
                throw new IOException(NLS.bind((String)CommonMessages.url_badVariant, (Object)this.url));
            }
            int ix = spec.indexOf("/", PLUGIN.length() + 1);
            String ref = ix == -1 ? spec.substring(PLUGIN.length() + 1) : spec.substring(PLUGIN.length() + 1, ix);
            String id = PlatformURLPluginConnection.getId(ref);
            Activator activator = Activator.getDefault();
            if (activator == null) {
                throw new IOException(CommonMessages.activator_not_available);
            }
            this.target = activator.getBundle(id);
            if (this.target == null) {
                throw new IOException(NLS.bind((String)CommonMessages.url_resolvePlugin, (Object)this.url));
            }
        }
        int n = fragmentLength = (fragments = Activator.getDefault().getFragments(this.target)) == null ? 0 : fragments.length;
        if (fragmentLength == 0) {
            return null;
        }
        URL[] result = new URL[fragmentLength];
        int i = 0;
        while (i < fragmentLength) {
            result[i] = fragments[i].getEntry("/");
            ++i;
        }
        return result;
    }
}

