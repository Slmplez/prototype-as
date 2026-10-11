/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.resolver.ExportPackageDescription
 *  org.eclipse.osgi.util.ManifestElement
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.core.text.bundle;

import java.io.PrintWriter;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.pde.internal.core.bundle.BundlePluginBase;
import org.eclipse.pde.internal.core.ibundle.IBundleModel;
import org.eclipse.pde.internal.core.text.bundle.ImportPackageHeader;
import org.eclipse.pde.internal.core.text.bundle.ManifestHeader;
import org.eclipse.pde.internal.core.text.bundle.PackageObject;
import org.osgi.framework.Version;

public class ImportPackageObject
extends PackageObject {
    private static final long serialVersionUID = 1L;

    private static String getVersion(ExportPackageDescription desc) {
        String version = desc.getVersion().toString();
        if (!version.equals(Version.emptyVersion.toString())) {
            return desc.getVersion().toString();
        }
        return null;
    }

    public ImportPackageObject(ManifestHeader header, ManifestElement element, String versionAttribute) {
        super(header, element, versionAttribute);
    }

    public ImportPackageObject(ManifestHeader header, ExportPackageDescription desc, String versionAttribute) {
        super(header, desc.getName(), ImportPackageObject.getVersion(desc), versionAttribute);
    }

    public ImportPackageObject(ManifestHeader header, String id, String version, String versionAttribute) {
        super(header, id, version, versionAttribute);
    }

    public boolean isOptional() {
        int manifestVersion = BundlePluginBase.getBundleManifestVersion(this.getHeader().getBundle());
        if (manifestVersion > 1) {
            return "optional".equals(this.getDirective("resolution"));
        }
        return "true".equals(this.getAttribute("optional"));
    }

    public void setOptional(boolean optional) {
        boolean old = this.isOptional();
        int manifestVersion = BundlePluginBase.getBundleManifestVersion(this.getHeader().getBundle());
        if (optional) {
            if (manifestVersion > 1) {
                this.setDirective("resolution", "optional");
            } else {
                this.setAttribute("optional", "true");
            }
        } else {
            this.setDirective("resolution", null);
            this.setAttribute("optional", null);
        }
        this.fHeader.update();
        this.firePropertyChanged(this, "resolution", Boolean.toString(old), Boolean.toString(optional));
    }

    public void reconnect(IBundleModel model, ImportPackageHeader header, String versionAttribute) {
        super.reconnect(model, header, versionAttribute);
    }

    public void write(String indent, PrintWriter writer) {
        writer.write(this.write());
    }

    public void restoreProperty(String propertyName, Object oldValue, Object newValue) {
        if ("resolution".equalsIgnoreCase(propertyName)) {
            this.setOptional(new Boolean(newValue.toString()));
        } else if (this.fVersionAttribute != null && this.fVersionAttribute.equalsIgnoreCase(propertyName)) {
            this.setVersion(newValue.toString());
        }
    }
}

