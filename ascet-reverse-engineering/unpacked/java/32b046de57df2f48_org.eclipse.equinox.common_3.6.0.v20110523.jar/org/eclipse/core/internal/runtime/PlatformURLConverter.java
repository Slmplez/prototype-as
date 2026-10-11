/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.urlconversion.URLConverter
 */
package org.eclipse.core.internal.runtime;

import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;
import org.eclipse.core.internal.boot.PlatformURLConnection;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.osgi.service.urlconversion.URLConverter;

public class PlatformURLConverter
implements URLConverter {
    public URL toFileURL(URL url) throws IOException {
        URLConnection connection = url.openConnection();
        if (!(connection instanceof PlatformURLConnection)) {
            return url;
        }
        URL result = ((PlatformURLConnection)connection).getURLAsLocal();
        if (!result.getProtocol().startsWith("bundle")) {
            return result;
        }
        return FileLocator.toFileURL(result);
    }

    public URL resolve(URL url) throws IOException {
        URLConnection connection = url.openConnection();
        if (!(connection instanceof PlatformURLConnection)) {
            return url;
        }
        URL result = ((PlatformURLConnection)connection).getResolvedURL();
        if (!result.getProtocol().startsWith("bundle")) {
            return result;
        }
        return FileLocator.resolve(result);
    }
}

