/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.ManifestElement
 */
package org.eclipse.pde.internal.core.text.bundle;

import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.pde.core.plugin.IPluginImport;
import org.eclipse.pde.internal.core.bundle.BundlePluginBase;
import org.eclipse.pde.internal.core.ibundle.IBundle;
import org.eclipse.pde.internal.core.text.bundle.CompositeManifestHeader;
import org.eclipse.pde.internal.core.text.bundle.ManifestHeader;
import org.eclipse.pde.internal.core.text.bundle.PDEManifestElement;
import org.eclipse.pde.internal.core.text.bundle.RequireBundleObject;

public class RequireBundleHeader
extends CompositeManifestHeader {
    private static final long serialVersionUID = 1L;

    public RequireBundleHeader(String name, String value, IBundle bundle, String lineDelimiter) {
        super(name, value, bundle, lineDelimiter);
    }

    public void addBundle(IPluginImport iimport) {
        this.addBundle(iimport.getId(), iimport.getVersion(), iimport.isReexported(), iimport.isOptional());
    }

    public void addBundle(IPluginImport iimport, int index) {
        String id = iimport.getId();
        String version = iimport.getVersion();
        boolean exported = iimport.isReexported();
        boolean optional = iimport.isOptional();
        RequireBundleObject element = new RequireBundleObject((ManifestHeader)this, id);
        this.configureBundle(version, exported, optional, element);
        this.addManifestElement(element, index, true);
    }

    public void addBundle(String id) {
        this.addBundle(id, null, false, false);
    }

    public void addBundle(String id, String version, boolean exported, boolean optional) {
        RequireBundleObject element = new RequireBundleObject((ManifestHeader)this, id);
        this.configureBundle(version, exported, optional, element);
        this.addManifestElement(element);
    }

    private void configureBundle(String version, boolean exported, boolean optional, RequireBundleObject element) {
        int bundleManifestVersion = BundlePluginBase.getBundleManifestVersion(this.getBundle());
        if (optional) {
            if (bundleManifestVersion > 1) {
                element.setDirective("resolution", "optional");
            } else {
                element.setAttribute("optional", "true");
            }
        }
        if (exported) {
            if (bundleManifestVersion > 1) {
                element.setDirective("visibility", "reexport");
            } else {
                element.setAttribute("reprovide", "true");
            }
        }
        if (version != null && version.trim().length() > 0) {
            element.setAttribute("bundle-version", version.trim());
        }
    }

    public void removeBundle(String id) {
        this.removeManifestElement(id);
    }

    public void removeBundle(RequireBundleObject bundle) {
        this.removeManifestElement(bundle);
    }

    protected PDEManifestElement createElement(ManifestElement element) {
        return new RequireBundleObject((ManifestHeader)this, element);
    }

    public void updateBundle(int index, IPluginImport iimport) {
        if (index == -1) {
            return;
        }
        PDEManifestElement element = this.getElementAt(index);
        if (element != null) {
            element.setValue(iimport.getId());
            int bundleManifestVersion = BundlePluginBase.getBundleManifestVersion(this.getBundle());
            if (iimport.isOptional()) {
                if (bundleManifestVersion > 1) {
                    element.setDirective("resolution", "optional");
                } else {
                    element.setAttribute("optional", "true");
                }
            } else if (bundleManifestVersion > 1) {
                element.setDirective("resolution", null);
            } else {
                element.setAttribute("optional", null);
            }
            if (iimport.isReexported()) {
                if (bundleManifestVersion > 1) {
                    element.setDirective("visibility", "reexport");
                } else {
                    element.setAttribute("reprovide", "true");
                }
            } else if (bundleManifestVersion > 1) {
                element.setDirective("visibility", null);
            } else {
                element.setAttribute("reprovide", null);
            }
            element.setAttribute("bundle-version", iimport.getVersion());
        }
        this.update(true);
    }

    public RequireBundleObject[] getRequiredBundles() {
        PDEManifestElement[] elements = this.getElements();
        RequireBundleObject[] result = new RequireBundleObject[elements.length];
        System.arraycopy(elements, 0, result, 0, elements.length);
        return result;
    }
}

