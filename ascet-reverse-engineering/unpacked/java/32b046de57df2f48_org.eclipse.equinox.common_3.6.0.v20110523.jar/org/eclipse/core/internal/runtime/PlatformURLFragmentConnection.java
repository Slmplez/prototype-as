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

public class PlatformURLFragmentConnection
extends PlatformURLConnection {
    private Bundle target = null;
    private static boolean isRegistered = false;
    public static final String FRAGMENT = "fragment";
    static /* synthetic */ Class class$0;

    public PlatformURLFragmentConnection(URL url) {
        super(url);
    }

    protected boolean allowCaching() {
        return true;
    }

    protected URL resolve() throws IOException {
        String spec = this.url.getFile().trim();
        if (spec.startsWith("/")) {
            spec = spec.substring(1);
        }
        if (!spec.startsWith(FRAGMENT)) {
            throw new IOException(NLS.bind((String)CommonMessages.url_badVariant, (Object)this.url));
        }
        int ix = spec.indexOf("/", FRAGMENT.length() + 1);
        String ref = ix == -1 ? spec.substring(FRAGMENT.length() + 1) : spec.substring(FRAGMENT.length() + 1, ix);
        String id = PlatformURLFragmentConnection.getId(ref);
        Activator activator = Activator.getDefault();
        if (activator == null) {
            throw new IOException(CommonMessages.activator_not_available);
        }
        this.target = activator.getBundle(id);
        if (this.target == null) {
            throw new IOException(NLS.bind((String)CommonMessages.url_resolveFragment, (Object)this.url));
        }
        URL result = this.target.getEntry("/");
        if (ix == -1 || ix + 1 >= spec.length()) {
            return result;
        }
        return new URL(result, spec.substring(ix + 1));
    }

    public static void startup() {
        if (isRegistered) {
            return;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.internal.runtime.PlatformURLFragmentConnection");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        PlatformURLHandler.register(FRAGMENT, clazz);
        isRegistered = true;
    }
}

