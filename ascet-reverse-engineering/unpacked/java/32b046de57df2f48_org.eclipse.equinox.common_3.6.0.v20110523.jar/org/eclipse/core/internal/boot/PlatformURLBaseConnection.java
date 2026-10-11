/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.boot;

import java.io.IOException;
import java.net.URL;
import org.eclipse.core.internal.boot.PlatformURLConnection;
import org.eclipse.core.internal.boot.PlatformURLHandler;
import org.eclipse.core.internal.runtime.CommonMessages;
import org.eclipse.osgi.util.NLS;

public class PlatformURLBaseConnection
extends PlatformURLConnection {
    public static final String PLATFORM = "base";
    public static final String PLATFORM_URL_STRING = "platform:/base/";
    private static URL installURL;
    static /* synthetic */ Class class$0;

    public PlatformURLBaseConnection(URL url) {
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
        if (!spec.startsWith("base/")) {
            String message = NLS.bind((String)CommonMessages.url_badVariant, (Object)this.url);
            throw new IOException(message);
        }
        return spec.length() == PLATFORM.length() + 1 ? installURL : new URL(installURL, spec.substring(PLATFORM.length() + 1));
    }

    public static void startup(URL url) {
        if (installURL != null) {
            return;
        }
        installURL = url;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.internal.boot.PlatformURLBaseConnection");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        PlatformURLHandler.register(PLATFORM, clazz);
    }
}

