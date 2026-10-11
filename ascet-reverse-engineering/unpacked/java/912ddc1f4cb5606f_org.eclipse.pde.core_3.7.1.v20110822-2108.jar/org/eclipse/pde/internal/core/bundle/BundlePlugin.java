/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.bundle;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.plugin.IPluginImport;
import org.eclipse.pde.internal.core.bundle.BundlePluginBase;
import org.eclipse.pde.internal.core.ibundle.IBundle;
import org.eclipse.pde.internal.core.ibundle.IBundlePlugin;
import org.eclipse.pde.internal.core.ibundle.IManifestHeader;
import org.eclipse.pde.internal.core.text.bundle.BundleActivatorHeader;

public class BundlePlugin
extends BundlePluginBase
implements IBundlePlugin {
    private static final long serialVersionUID = 1L;

    public String getClassName() {
        return this.getValue(this.getClassHeader(), false);
    }

    public void setClassName(String className) throws CoreException {
        IBundle bundle = this.getBundle();
        if (bundle != null) {
            String old = this.getClassName();
            String classHeader = this.getClassHeader();
            IManifestHeader header = bundle.getManifestHeader(classHeader);
            if (header instanceof BundleActivatorHeader) {
                ((BundleActivatorHeader)header).setClassName(className);
            } else {
                bundle.setHeader(this.getClassHeader(), className);
            }
            this.model.fireModelObjectChanged(this, "class", old, className);
        }
    }

    private String getClassHeader() {
        IPluginImport[] imports = this.getImports();
        int i = 0;
        while (i < imports.length) {
            if ("org.eclipse.core.runtime.compatibility".equals(imports[i].getId())) {
                return "Plugin-Class";
            }
            ++i;
        }
        return "Bundle-Activator";
    }

    public boolean hasExtensibleAPI() {
        return "true".equals(this.getValue("Eclipse-ExtensibleAPI", false));
    }
}

