/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.ManifestElement
 */
package org.eclipse.pde.internal.core.text.bundle;

import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.pde.internal.core.ibundle.IBundle;
import org.eclipse.pde.internal.core.text.bundle.BasePackageHeader;
import org.eclipse.pde.internal.core.text.bundle.ImportPackageObject;
import org.eclipse.pde.internal.core.text.bundle.ManifestHeader;
import org.eclipse.pde.internal.core.text.bundle.PDEManifestElement;

public class ImportPackageHeader
extends BasePackageHeader {
    private static final long serialVersionUID = 1L;

    public ImportPackageHeader(String name, String value, IBundle bundle, String lineDelimiter) {
        super(name, value, bundle, lineDelimiter);
    }

    protected PDEManifestElement createElement(ManifestElement element) {
        return new ImportPackageObject((ManifestHeader)this, element, this.getVersionAttribute());
    }

    public ImportPackageObject getPackage(String packageName) {
        return this.fElementMap == null ? null : (ImportPackageObject)this.fElementMap.get(packageName);
    }

    public ImportPackageObject[] getPackages() {
        PDEManifestElement[] elements = this.getElements();
        ImportPackageObject[] result = new ImportPackageObject[elements.length];
        System.arraycopy(elements, 0, result, 0, elements.length);
        return result;
    }

    public ImportPackageObject addPackage(String id) {
        ImportPackageObject obj = new ImportPackageObject(this, id, null, this.getVersionAttribute());
        this.addManifestElement(obj);
        return obj;
    }
}

