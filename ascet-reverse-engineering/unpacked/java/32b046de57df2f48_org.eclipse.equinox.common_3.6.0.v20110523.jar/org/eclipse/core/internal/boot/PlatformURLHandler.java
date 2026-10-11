/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.service.url.AbstractURLStreamHandlerService
 */
package org.eclipse.core.internal.boot;

import java.io.IOException;
import java.lang.reflect.Constructor;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.Hashtable;
import org.eclipse.core.internal.boot.PlatformURLConnection;
import org.eclipse.core.internal.runtime.CommonMessages;
import org.eclipse.osgi.util.NLS;
import org.osgi.service.url.AbstractURLStreamHandlerService;

public class PlatformURLHandler
extends AbstractURLStreamHandlerService {
    private static Hashtable connectionType = new Hashtable();
    public static final String PROTOCOL = "platform";
    public static final String FILE = "file";
    public static final String JAR = "jar";
    public static final String BUNDLE = "bundle";
    public static final String JAR_SEPARATOR = "!/";
    public static final String PROTOCOL_SEPARATOR = ":";
    static /* synthetic */ Class class$0;

    public URLConnection openConnection(URL url) throws IOException {
        int ix;
        String spec = url.getFile().trim();
        if (spec.startsWith("/")) {
            spec = spec.substring(1);
        }
        if ((ix = spec.indexOf("/")) == -1) {
            throw new MalformedURLException(NLS.bind((String)CommonMessages.url_invalidURL, (Object)url.toExternalForm()));
        }
        String type = spec.substring(0, ix);
        Constructor construct = (Constructor)connectionType.get(type);
        if (construct == null) {
            throw new MalformedURLException(NLS.bind((String)CommonMessages.url_badVariant, (Object)type));
        }
        PlatformURLConnection connection = null;
        try {
            connection = (PlatformURLConnection)construct.newInstance(url);
        }
        catch (Exception e) {
            throw new IOException(NLS.bind((String)CommonMessages.url_createConnection, (Object)e.getMessage()));
        }
        connection.setResolvedURL(connection.resolve());
        return connection;
    }

    public static void register(String type, Class connectionClass) {
        try {
            Class[] classArray = new Class[1];
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("java.net.URL");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            classArray[0] = clazz;
            Constructor c = connectionClass.getConstructor(classArray);
            connectionType.put(type, c);
        }
        catch (NoSuchMethodException noSuchMethodException) {}
    }

    public static void unregister(String type) {
        connectionType.remove(type);
    }
}

