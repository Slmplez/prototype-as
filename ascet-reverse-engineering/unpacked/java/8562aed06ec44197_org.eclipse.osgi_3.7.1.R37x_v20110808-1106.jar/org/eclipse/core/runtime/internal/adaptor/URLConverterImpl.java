/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.internal.adaptor;

import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;
import org.eclipse.core.runtime.internal.adaptor.EclipseAdaptorMsg;
import org.eclipse.osgi.framework.internal.core.BundleURLConnection;
import org.eclipse.osgi.service.urlconversion.URLConverter;
import org.eclipse.osgi.util.NLS;

public class URLConverterImpl
implements URLConverter {
    public URL toFileURL(URL url) throws IOException {
        URLConnection connection = url.openConnection();
        if (connection instanceof BundleURLConnection) {
            URL result = ((BundleURLConnection)connection).getFileURL();
            if (result == null) {
                throw new IOException(NLS.bind(EclipseAdaptorMsg.ECLIPSE_PLUGIN_EXTRACTION_PROBLEM, url));
            }
            return result;
        }
        return url;
    }

    public URL resolve(URL url) throws IOException {
        URLConnection connection = url.openConnection();
        if (connection instanceof BundleURLConnection) {
            return ((BundleURLConnection)connection).getLocalURL();
        }
        return url;
    }
}

