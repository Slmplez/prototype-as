/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Bundle
 */
package org.eclipse.core.internal.runtime;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URL;
import org.eclipse.core.internal.boot.PlatformURLConnection;
import org.eclipse.core.internal.boot.PlatformURLHandler;
import org.eclipse.core.internal.runtime.Activator;
import org.eclipse.core.internal.runtime.CommonMessages;
import org.eclipse.core.internal.runtime.MetaDataKeeper;
import org.eclipse.core.runtime.IPath;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Bundle;

public class PlatformURLMetaConnection
extends PlatformURLConnection {
    private Bundle target = null;
    private static boolean isRegistered = false;
    public static final String META = "meta";
    static /* synthetic */ Class class$0;

    public PlatformURLMetaConnection(URL url) {
        super(url);
    }

    protected URL resolve() throws IOException {
        String spec = this.url.getFile().trim();
        if (spec.startsWith("/")) {
            spec = spec.substring(1);
        }
        if (!spec.startsWith(META)) {
            throw new IOException(NLS.bind((String)CommonMessages.url_badVariant, (Object)this.url.toString()));
        }
        int ix = spec.indexOf("/", META.length() + 1);
        String ref = ix == -1 ? spec.substring(META.length() + 1) : spec.substring(META.length() + 1, ix);
        String id = PlatformURLMetaConnection.getId(ref);
        Activator activator = Activator.getDefault();
        if (activator == null) {
            throw new IOException(CommonMessages.activator_not_available);
        }
        this.target = activator.getBundle(id);
        if (this.target == null) {
            throw new IOException(NLS.bind((String)CommonMessages.url_resolvePlugin, (Object)this.url.toString()));
        }
        IPath path = MetaDataKeeper.getMetaArea().getStateLocation(this.target);
        if (ix != -1 || ix + 1 <= spec.length()) {
            path = path.append(spec.substring(ix + 1));
        }
        return path.toFile().toURL();
    }

    public static void startup() {
        if (isRegistered) {
            return;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.internal.runtime.PlatformURLMetaConnection");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        PlatformURLHandler.register(META, clazz);
        isRegistered = true;
    }

    public OutputStream getOutputStream() throws IOException {
        String fileString;
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

