/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.internal.p2.core.helpers.ServiceHelper
 *  org.eclipse.osgi.service.datalocation.Location
 *  org.osgi.framework.BundleActivator
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.equinox.internal.p2.artifact.repository;

import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.internal.p2.core.helpers.ServiceHelper;
import org.eclipse.osgi.service.datalocation.Location;
import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;

public class Activator
implements BundleActivator {
    public static final String ID = "org.eclipse.equinox.p2.artifact.repository";
    public static final String ENABLE_ARTIFACT_LOCKING = "eclipse.p2.internal.simple.artifact.repository.locking";
    public static final String REPO_PROVIDER_XPT = "org.eclipse.equinox.p2.artifact.repository.artifactRepositories";
    private Map<URI, Location> locationCache = null;
    private static BundleContext context;
    private static Activator instance;
    static /* synthetic */ Class class$0;

    public static BundleContext getContext() {
        return context;
    }

    public void start(BundleContext aContext) throws Exception {
        context = aContext;
        instance = this;
        this.locationCache = new HashMap<URI, Location>();
    }

    public void stop(BundleContext aContext) throws Exception {
        context = null;
        instance = null;
        this.locationCache = null;
    }

    public static Activator getInstance() {
        return instance;
    }

    public boolean enableArtifactLocking() {
        String property = Activator.getContext().getProperty(ENABLE_ARTIFACT_LOCKING);
        if (property == null || property.length() == 0) {
            return false;
        }
        Boolean valueOf = Boolean.valueOf(property);
        if (valueOf != null) {
            return valueOf;
        }
        return false;
    }

    public synchronized Location getLockLocation(URI repositoryLocation) throws IOException {
        if (this.locationCache.containsKey(repositoryLocation)) {
            return this.locationCache.get(repositoryLocation);
        }
        BundleContext bundleContext = Activator.getContext();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.service.datalocation.Location");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Location anyLoc = (Location)ServiceHelper.getService((BundleContext)bundleContext, (String)clazz.getName());
        File repositoryFile = URIUtil.toFile((URI)repositoryLocation);
        Location location = anyLoc.createLocation(null, this.getLockFile(repositoryLocation).toURL(), this.isReadOnly(repositoryFile));
        location.set(this.getLockFile(repositoryLocation).toURL(), false);
        this.locationCache.put(repositoryLocation, location);
        return location;
    }

    private boolean isReadOnly(File file) {
        if (file == null) {
            return true;
        }
        if (file.canWrite()) {
            return false;
        }
        if (file.exists()) {
            return true;
        }
        return this.isReadOnly(file.getParentFile());
    }

    private File getLockFile(URI repositoryLocation) throws IOException {
        if (!URIUtil.isFileURI((URI)repositoryLocation)) {
            throw new IOException("Cannot lock a non file based repository");
        }
        URI result = URIUtil.append((URI)repositoryLocation, (String)".artifactlock");
        return URIUtil.toFile((URI)result);
    }
}

