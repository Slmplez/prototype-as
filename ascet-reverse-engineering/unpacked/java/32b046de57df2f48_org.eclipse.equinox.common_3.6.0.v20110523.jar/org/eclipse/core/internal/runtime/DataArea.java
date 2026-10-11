/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.framework.log.FrameworkLog
 *  org.eclipse.osgi.service.datalocation.Location
 *  org.eclipse.osgi.service.debug.DebugOptions
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Bundle
 */
package org.eclipse.core.internal.runtime;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import org.eclipse.core.internal.runtime.Activator;
import org.eclipse.core.internal.runtime.CommonMessages;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.framework.log.FrameworkLog;
import org.eclipse.osgi.service.datalocation.Location;
import org.eclipse.osgi.service.debug.DebugOptions;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Bundle;

public class DataArea {
    private static final String OPTION_DEBUG = "org.eclipse.equinox.common/debug";
    static final String F_META_AREA = ".metadata";
    static final String F_PLUGIN_DATA = ".plugins";
    static final String F_LOG = ".log";
    static final String F_TRACE = "trace.log";
    static final String PREFERENCES_FILE_NAME = "pref_store.ini";
    private IPath location;
    private boolean initialized = false;

    protected void assertLocationInitialized() throws IllegalStateException {
        if (this.location != null && this.initialized) {
            return;
        }
        Activator activator = Activator.getDefault();
        if (activator == null) {
            throw new IllegalStateException(CommonMessages.activator_not_available);
        }
        Location service = activator.getInstanceLocation();
        if (service == null) {
            throw new IllegalStateException(CommonMessages.meta_noDataModeSpecified);
        }
        try {
            URL url = service.getURL();
            if (url == null) {
                throw new IllegalStateException(CommonMessages.meta_instanceDataUnspecified);
            }
            this.location = new Path(new File(url.getFile()).toString());
            this.initializeLocation();
        }
        catch (CoreException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }

    public IPath getMetadataLocation() throws IllegalStateException {
        this.assertLocationInitialized();
        return this.location.append(F_META_AREA);
    }

    public IPath getInstanceDataLocation() throws IllegalStateException {
        this.assertLocationInitialized();
        return this.location;
    }

    public IPath getLogLocation() throws IllegalStateException {
        File file;
        FrameworkLog log;
        if (this.isInstanceLocationSet()) {
            this.assertLocationInitialized();
        }
        if ((log = Activator.getDefault().getFrameworkLog()) != null && (file = log.getFile()) != null) {
            return new Path(file.getAbsolutePath());
        }
        if (this.location == null) {
            throw new IllegalStateException(CommonMessages.meta_instanceDataUnspecified);
        }
        return this.location.append(F_META_AREA).append(F_LOG);
    }

    public IPath getTraceLocation() throws IllegalStateException {
        DebugOptions debugOptions = Activator.getDefault().getDebugOptions();
        if (debugOptions == null) {
            return null;
        }
        return new Path(debugOptions.getFile().getAbsolutePath());
    }

    private boolean isInstanceLocationSet() {
        Activator activator = Activator.getDefault();
        if (activator == null) {
            return false;
        }
        Location service = activator.getInstanceLocation();
        if (service == null) {
            return false;
        }
        return service.isSet();
    }

    public IPath getStateLocation(Bundle bundle) throws IllegalStateException {
        this.assertLocationInitialized();
        return this.getStateLocation(bundle.getSymbolicName());
    }

    public IPath getStateLocation(String bundleName) throws IllegalStateException {
        this.assertLocationInitialized();
        return this.getMetadataLocation().append(F_PLUGIN_DATA).append(bundleName);
    }

    public IPath getPreferenceLocation(String bundleName, boolean create) throws IllegalStateException {
        IPath result = this.getStateLocation(bundleName);
        if (create) {
            result.toFile().mkdirs();
        }
        return result.append(PREFERENCES_FILE_NAME);
    }

    private void initializeLocation() throws CoreException {
        if (this.location.toFile().exists() && !this.location.toFile().isDirectory()) {
            String message = NLS.bind((String)CommonMessages.meta_notDir, (Object)this.location);
            throw new CoreException(new Status(4, "org.eclipse.core.runtime", 5, message, null));
        }
        if (this.location.getDevice() == null) {
            this.location = new Path(this.location.toFile().getAbsolutePath());
        }
        this.createLocation();
        this.initialized = true;
    }

    private void createLocation() throws CoreException {
        File file = this.location.append(F_META_AREA).toFile();
        try {
            file.mkdirs();
        }
        catch (Exception e) {
            String message = NLS.bind((String)CommonMessages.meta_couldNotCreate, (Object)file.getAbsolutePath());
            throw new CoreException(new Status(4, "org.eclipse.core.runtime", 5, message, e));
        }
        if (!file.canWrite()) {
            String message = NLS.bind((String)CommonMessages.meta_readonly, (Object)file.getAbsolutePath());
            throw new CoreException(new Status(4, "org.eclipse.core.runtime", 5, message, null));
        }
        IPath logPath = this.location.append(F_META_AREA).append(F_LOG);
        try {
            Activator activator = Activator.getDefault();
            if (activator != null) {
                FrameworkLog log = activator.getFrameworkLog();
                if (log != null) {
                    log.setFile(logPath.toFile(), true);
                } else if (this.debug()) {
                    System.out.println("ERROR: Unable to acquire log service. Application will proceed, but logging will be disabled.");
                }
            }
        }
        catch (IOException e) {
            e.printStackTrace();
        }
        IPath tracePath = this.location.append(F_META_AREA).append(F_TRACE);
        Activator activator = Activator.getDefault();
        if (activator != null) {
            DebugOptions debugOptions = activator.getDebugOptions();
            if (debugOptions != null) {
                debugOptions.setFile(tracePath.toFile());
            } else {
                System.out.println("ERROR: Unable to acquire debug service. Application will proceed, but debugging will be disabled.");
            }
        }
    }

    private boolean debug() {
        Activator activator = Activator.getDefault();
        if (activator == null) {
            return false;
        }
        DebugOptions debugOptions = activator.getDebugOptions();
        if (debugOptions == null) {
            return false;
        }
        return debugOptions.getBooleanOption(OPTION_DEBUG, false);
    }
}

