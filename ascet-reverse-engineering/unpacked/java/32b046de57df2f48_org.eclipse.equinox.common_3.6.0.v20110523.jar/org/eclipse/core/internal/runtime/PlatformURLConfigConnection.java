/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.datalocation.Location
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.runtime;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URL;
import java.net.UnknownServiceException;
import org.eclipse.core.internal.boot.PlatformURLConnection;
import org.eclipse.core.internal.boot.PlatformURLHandler;
import org.eclipse.core.internal.runtime.Activator;
import org.eclipse.core.internal.runtime.CommonMessages;
import org.eclipse.osgi.service.datalocation.Location;
import org.eclipse.osgi.util.NLS;

public class PlatformURLConfigConnection
extends PlatformURLConnection {
    private static final String FILE_PROTOCOL = "file";
    private static boolean isRegistered = false;
    public static final String CONFIG = "config";
    private boolean parentConfiguration = false;
    static /* synthetic */ Class class$0;

    public PlatformURLConfigConnection(URL url) {
        super(url);
    }

    protected URL resolve() throws IOException {
        File parentFile;
        String spec = this.url.getFile().trim();
        if (spec.startsWith("/")) {
            spec = spec.substring(1);
        }
        if (!spec.startsWith(CONFIG)) {
            throw new IOException(NLS.bind((String)CommonMessages.url_badVariant, (Object)this.url.toString()));
        }
        String path = spec.substring(CONFIG.length() + 1);
        Activator activator = Activator.getDefault();
        if (activator == null) {
            throw new IOException(CommonMessages.activator_not_available);
        }
        Location localConfig = activator.getConfigurationLocation();
        Location parentConfig = localConfig.getParentLocation();
        URL localURL = new URL(localConfig.getURL(), path);
        if (!FILE_PROTOCOL.equals(localURL.getProtocol()) || parentConfig == null) {
            return localURL;
        }
        File localFile = new File(localURL.getPath());
        if (localFile.exists()) {
            return localURL;
        }
        URL parentURL = new URL(parentConfig.getURL(), path);
        if (FILE_PROTOCOL.equals(parentURL.getProtocol()) && (parentFile = new File(parentURL.getPath())).exists()) {
            this.parentConfiguration = true;
            return parentURL;
        }
        return localURL;
    }

    public static void startup() {
        if (isRegistered) {
            return;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.internal.runtime.PlatformURLConfigConnection");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        PlatformURLHandler.register(CONFIG, clazz);
        isRegistered = true;
    }

    public OutputStream getOutputStream() throws IOException {
        String fileString;
        if (this.parentConfiguration || Activator.getDefault() == null || Activator.getDefault().getConfigurationLocation().isReadOnly()) {
            throw new UnknownServiceException(NLS.bind((String)CommonMessages.url_noOutput, (Object)this.url));
        }
        URL resolved = this.getResolvedURL();
        if (resolved != null && (fileString = resolved.getFile()) != null) {
            File file = new File(fileString);
            String parent = file.getParent();
            if (parent != null) {
                new File(parent).mkdirs();
            }
            return new FileOutputStream(file);
        }
        return null;
    }
}

