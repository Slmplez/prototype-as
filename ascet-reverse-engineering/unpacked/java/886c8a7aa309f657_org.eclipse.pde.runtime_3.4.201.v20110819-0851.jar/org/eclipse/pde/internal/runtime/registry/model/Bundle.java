/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.MultiStatus
 *  org.osgi.framework.BundleException
 */
package org.eclipse.pde.internal.runtime.registry.model;

import java.util.ArrayList;
import java.util.Iterator;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.pde.internal.runtime.registry.model.BundleLibrary;
import org.eclipse.pde.internal.runtime.registry.model.BundlePrerequisite;
import org.eclipse.pde.internal.runtime.registry.model.Extension;
import org.eclipse.pde.internal.runtime.registry.model.ExtensionPoint;
import org.eclipse.pde.internal.runtime.registry.model.ModelObject;
import org.eclipse.pde.internal.runtime.registry.model.ServiceRegistration;
import org.osgi.framework.BundleException;

public class Bundle
extends ModelObject {
    public static final int ACTIVE = 32;
    public static final int UNINSTALLED = 1;
    public static final int INSTALLED = 2;
    private String symbolicName;
    private String location;
    private boolean isEnabled;
    private BundlePrerequisite[] imports = new BundlePrerequisite[0];
    private String version;
    private int state;
    private long id;
    private BundleLibrary[] libraries = new BundleLibrary[0];
    private BundlePrerequisite[] importedPackages = new BundlePrerequisite[0];
    private BundlePrerequisite[] exportedPackages = new BundlePrerequisite[0];
    private String fragmentHost;
    private String fragmentHostVersion;

    public void setFragmentHost(String fragmentHost) {
        this.fragmentHost = fragmentHost;
    }

    public String getFragmentHost() {
        return this.fragmentHost;
    }

    public String getFragmentHostVersion() {
        return this.fragmentHostVersion;
    }

    public void setFragmentHostVersion(String fragmentHostVersion) {
        this.fragmentHostVersion = fragmentHostVersion;
    }

    public void setSymbolicName(String symbolicName) {
        this.symbolicName = symbolicName;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public void setImports(BundlePrerequisite[] imports) {
        if (imports == null) {
            throw new IllegalArgumentException();
        }
        this.imports = imports;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public void setState(int state) {
        this.state = state;
    }

    public void setId(long id) {
        this.id = id;
    }

    public void setEnabled(boolean enabled) {
        this.isEnabled = enabled;
    }

    public void setLibraries(BundleLibrary[] libraries) {
        if (libraries == null) {
            throw new IllegalArgumentException();
        }
        this.libraries = libraries;
    }

    public String getSymbolicName() {
        return this.symbolicName;
    }

    public boolean isEnabled() {
        return this.isEnabled;
    }

    public BundlePrerequisite[] getImports() {
        return this.imports;
    }

    public BundleLibrary[] getLibraries() {
        return this.libraries;
    }

    public String getLocation() {
        return this.location;
    }

    public String getVersion() {
        return this.version;
    }

    public int getState() {
        return this.state;
    }

    public long getId() {
        return this.id;
    }

    public void start() throws BundleException {
        if (this.model == null) {
            return;
        }
        this.model.backend.start(this.id);
    }

    public void stop() throws BundleException {
        if (this.model == null) {
            return;
        }
        this.model.backend.stop(this.id);
    }

    public void enable() {
        if (this.model == null) {
            return;
        }
        this.model.backend.setEnabled(this.id, true);
    }

    public void disable() {
        if (this.model == null) {
            return;
        }
        this.model.backend.setEnabled(this.id, false);
    }

    public MultiStatus diagnose() {
        if (this.model == null) {
            return null;
        }
        return this.model.backend.diagnose(this.id);
    }

    public ExtensionPoint[] getExtensionPoints() {
        if (this.model == null) {
            return new ExtensionPoint[0];
        }
        ExtensionPoint[] extPoints = this.model.getExtensionPoints();
        ArrayList<ExtensionPoint> result = new ArrayList<ExtensionPoint>();
        int i = 0;
        while (i < extPoints.length) {
            if (extPoints[i].getContributorId() == this.id) {
                result.add(extPoints[i]);
            }
            ++i;
        }
        return result.toArray(new ExtensionPoint[result.size()]);
    }

    public Extension[] getExtensions() {
        if (this.model == null) {
            return new Extension[0];
        }
        ExtensionPoint[] extPoints = this.model.getExtensionPoints();
        ArrayList<Extension> result = new ArrayList<Extension>();
        int i = 0;
        while (i < extPoints.length) {
            Iterator it = extPoints[i].getExtensions().iterator();
            while (it.hasNext()) {
                Extension a = (Extension)it.next();
                if (a.getContributorId() != this.id) continue;
                result.add(a);
            }
            ++i;
        }
        return result.toArray(new Extension[result.size()]);
    }

    public ServiceRegistration[] getRegisteredServices() {
        if (this.model == null) {
            return new ServiceRegistration[0];
        }
        ServiceRegistration[] services = this.model.getServices();
        ArrayList<ServiceRegistration> result = new ArrayList<ServiceRegistration>();
        int i = 0;
        while (i < services.length) {
            if (this.symbolicName.equals(services[i].getBundle())) {
                result.add(services[i]);
            }
            ++i;
        }
        return result.toArray(new ServiceRegistration[result.size()]);
    }

    public ServiceRegistration[] getServicesInUse() {
        if (this.model == null) {
            return new ServiceRegistration[0];
        }
        ServiceRegistration[] services = this.model.getServices();
        ArrayList<ServiceRegistration> result = new ArrayList<ServiceRegistration>();
        int i = 0;
        while (i < services.length) {
            long[] usingBundles = services[i].getUsingBundleIds();
            if (usingBundles != null) {
                int j = 0;
                while (j < usingBundles.length) {
                    if (this.id == usingBundles[j]) {
                        result.add(services[i]);
                    }
                    ++j;
                }
            }
            ++i;
        }
        return result.toArray(new ServiceRegistration[result.size()]);
    }

    public boolean equals(Object obj) {
        return obj instanceof Bundle && this.id == ((Bundle)obj).id;
    }

    public int hashCode() {
        return (int)this.id;
    }

    public Bundle[] getFragments() {
        if (this.model == null) {
            return new Bundle[0];
        }
        return this.model.getFragments(this);
    }

    public void setImportedPackages(BundlePrerequisite[] importedPackages) {
        this.importedPackages = importedPackages;
    }

    public BundlePrerequisite[] getImportedPackages() {
        return this.importedPackages;
    }

    public void setExportedPackages(BundlePrerequisite[] exportedPackages) {
        this.exportedPackages = exportedPackages;
    }

    public BundlePrerequisite[] getExportedPackages() {
        return this.exportedPackages;
    }
}

