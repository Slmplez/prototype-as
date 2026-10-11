/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.ManifestElement
 *  org.osgi.framework.BundleException
 */
package org.eclipse.pde.internal.core.text.bundle;

import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.pde.internal.core.bundle.BundlePluginBase;
import org.eclipse.pde.internal.core.ibundle.IBundle;
import org.eclipse.pde.internal.core.text.bundle.CompositeManifestHeader;
import org.eclipse.pde.internal.core.text.bundle.PDEManifestElement;
import org.eclipse.pde.internal.core.text.bundle.PackageObject;
import org.osgi.framework.BundleException;

public abstract class BasePackageHeader
extends CompositeManifestHeader {
    private static final long serialVersionUID = 1L;

    public BasePackageHeader(String name, String value, IBundle bundle, String lineDelimiter) {
        super(name, value, bundle, lineDelimiter, true);
    }

    protected String getVersionAttribute() {
        int manifestVersion = BundlePluginBase.getBundleManifestVersion(this.getBundle());
        return manifestVersion < 2 ? "specification-version" : "version";
    }

    public void addPackage(PackageObject object) {
        this.addManifestElement(object);
    }

    public Object removePackage(PackageObject object) {
        return this.removeManifestElement(object);
    }

    public boolean hasPackage(String packageName) {
        return this.hasElement(packageName);
    }

    public Object removePackage(String name) {
        return this.removeManifestElement(name);
    }

    public boolean renamePackage(String oldName, String newName) {
        if (this.hasPackage(oldName)) {
            PackageObject object = (PackageObject)this.removeManifestElement(oldName);
            object.setName(newName);
            this.addManifestElement(object);
            return true;
        }
        return false;
    }

    protected void processValue(String value) {
        try {
            ManifestElement[] elements = ManifestElement.parseHeader((String)this.fName, (String)value);
            int i = 0;
            while (i < elements.length) {
                if (elements[i].getValueComponents().length > 1) {
                    String[] values = elements[i].getValueComponents();
                    int j = 0;
                    while (j < values.length) {
                        PDEManifestElement elem = this.createElement(elements[i]);
                        elem.setValueComponents(new String[]{values[j]});
                        this.addManifestElement(elem, false);
                        ++j;
                    }
                } else {
                    this.addManifestElement(this.createElement(elements[i]), false);
                }
                ++i;
            }
        }
        catch (BundleException bundleException) {}
    }
}

