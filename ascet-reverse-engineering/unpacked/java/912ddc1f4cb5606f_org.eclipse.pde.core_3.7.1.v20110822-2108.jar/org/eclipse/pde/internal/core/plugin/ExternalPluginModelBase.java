/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.osgi.service.resolver.BundleDescription
 */
package org.eclipse.pde.internal.core.plugin;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import org.eclipse.core.runtime.Path;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.pde.core.build.IBuildModel;
import org.eclipse.pde.internal.core.NLResourceHelper;
import org.eclipse.pde.internal.core.PDEManager;
import org.eclipse.pde.internal.core.PDEState;
import org.eclipse.pde.internal.core.plugin.AbstractPluginModelBase;

public abstract class ExternalPluginModelBase
extends AbstractPluginModelBase {
    private static final long serialVersionUID = 1L;
    private String fInstallLocation;
    private String fLocalization;

    protected NLResourceHelper createNLResourceHelper() {
        return this.fLocalization == null ? null : new NLResourceHelper(this.fLocalization, PDEManager.getNLLookupLocations(this));
    }

    public URL getNLLookupLocation() {
        try {
            if (this.fInstallLocation != null && new File(this.fInstallLocation).isDirectory() && !this.fInstallLocation.endsWith("/")) {
                return new URL("file:" + this.fInstallLocation + "/");
            }
            return new URL("file:" + this.fInstallLocation);
        }
        catch (MalformedURLException malformedURLException) {
            return null;
        }
    }

    public IBuildModel getBuildModel() {
        return null;
    }

    public String getInstallLocation() {
        return this.fInstallLocation;
    }

    public boolean isEditable() {
        return false;
    }

    public void load() {
    }

    public void load(BundleDescription description, PDEState state) {
        Path path = new Path(description.getLocation());
        String device = path.getDevice();
        if (device != null) {
            path = path.setDevice(device.toUpperCase());
        }
        this.setInstallLocation(path.toOSString());
        this.fLocalization = state.getBundleLocalization(description.getBundleId());
        super.load(description, state);
    }

    public boolean isInSync() {
        return this.isInSync(this.getLocalFile());
    }

    private File getLocalFile() {
        File file = new File(this.getInstallLocation());
        if (file.isFile()) {
            return file;
        }
        if (!(file = new File(file, "META-INF/MANIFEST.MF")).exists()) {
            String manifest = this.isFragmentModel() ? "fragment.xml" : "plugin.xml";
            file = new File(this.getInstallLocation(), manifest);
        }
        return file;
    }

    protected void updateTimeStamp() {
        this.updateTimeStamp(this.getLocalFile());
    }

    public void setInstallLocation(String newInstallLocation) {
        this.fInstallLocation = newInstallLocation;
    }

    public String getLocalization() {
        return this.fLocalization;
    }
}

