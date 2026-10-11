/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.ManifestElement
 */
package org.eclipse.pde.internal.core.text.bundle;

import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.pde.internal.core.bundle.BundlePluginBase;
import org.eclipse.pde.internal.core.text.bundle.ManifestHeader;
import org.eclipse.pde.internal.core.text.bundle.PDEManifestElement;

public class RequireBundleObject
extends PDEManifestElement {
    private static final long serialVersionUID = 1L;

    public RequireBundleObject(ManifestHeader header, String value) {
        super(header, value);
    }

    public RequireBundleObject(ManifestHeader header, ManifestElement manifestElement) {
        super(header, manifestElement);
    }

    public void setId(String id) {
        String old = this.getId();
        this.setValue(id);
        this.fHeader.update();
        this.firePropertyChanged(this, this.fHeader.getName(), old, id);
    }

    public String getId() {
        return this.getValue();
    }

    public void setVersion(String version) {
        String old = this.getVersion();
        this.setAttribute("bundle-version", null);
        String[] values = ManifestElement.getArrayFromList((String)version);
        if (values != null && values.length > 0) {
            int i = 0;
            while (i < values.length) {
                this.addAttribute("bundle-version", values[i]);
                ++i;
            }
        }
        this.fHeader.update();
        this.firePropertyChanged(this, "bundle-version", old, version);
    }

    public String getVersion() {
        String[] versionSegments = this.getAttributes("bundle-version");
        StringBuffer version = new StringBuffer();
        if (versionSegments == null) {
            return null;
        }
        if (versionSegments.length == 0) {
            return null;
        }
        if (versionSegments.length == 1) {
            version.append(versionSegments[0]);
        } else if (versionSegments.length == 2) {
            version.append(versionSegments[0]);
            version.append(',');
            version.append(versionSegments[1]);
        }
        return version.toString();
    }

    public void setOptional(boolean optional) {
        boolean old = this.isOptional();
        int bundleManifestVersion = BundlePluginBase.getBundleManifestVersion(this.fHeader.getBundle());
        if (optional) {
            if (bundleManifestVersion > 1) {
                this.setDirective("resolution", "optional");
            } else {
                this.setAttribute("optional", "true");
            }
        } else if (bundleManifestVersion > 1) {
            this.setDirective("resolution", null);
        } else {
            this.setAttribute("optional", null);
        }
        this.fHeader.update();
        this.firePropertyChanged(this, "resolution", Boolean.toString(old), Boolean.toString(optional));
    }

    public boolean isOptional() {
        int bundleManifestVersion = BundlePluginBase.getBundleManifestVersion(this.fHeader.getBundle());
        if (bundleManifestVersion > 1) {
            return "optional".equals(this.getDirective("resolution"));
        }
        return "true".equals(this.getAttribute("optional"));
    }

    public void setReexported(boolean export) {
        boolean old = this.isReexported();
        int bundleManifestVersion = BundlePluginBase.getBundleManifestVersion(this.fHeader.getBundle());
        if (export) {
            if (bundleManifestVersion > 1) {
                this.setDirective("visibility", "reexport");
            } else {
                this.setAttribute("reprovide", "true");
            }
        } else if (bundleManifestVersion > 1) {
            this.setDirective("visibility", null);
        } else {
            this.setAttribute("reprovide", null);
        }
        this.fHeader.update();
        this.firePropertyChanged(this, "visibility", Boolean.toString(old), Boolean.toString(export));
    }

    public boolean isReexported() {
        int bundleManifestVersion = BundlePluginBase.getBundleManifestVersion(this.fHeader.getBundle());
        if (bundleManifestVersion > 1) {
            return "reexport".equals(this.getDirective("visibility"));
        }
        return "true".equals(this.getAttribute("reprovide"));
    }
}

