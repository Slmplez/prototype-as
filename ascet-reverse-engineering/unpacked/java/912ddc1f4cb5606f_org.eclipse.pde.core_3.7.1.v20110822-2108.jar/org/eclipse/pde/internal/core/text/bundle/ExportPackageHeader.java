/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.ManifestElement
 */
package org.eclipse.pde.internal.core.text.bundle;

import java.util.Vector;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.pde.internal.core.ibundle.IBundle;
import org.eclipse.pde.internal.core.text.bundle.BasePackageHeader;
import org.eclipse.pde.internal.core.text.bundle.ExportPackageObject;
import org.eclipse.pde.internal.core.text.bundle.ManifestHeader;
import org.eclipse.pde.internal.core.text.bundle.PDEManifestElement;

public class ExportPackageHeader
extends BasePackageHeader {
    private static final long serialVersionUID = 1L;

    public ExportPackageHeader(String name, String value, IBundle bundle, String lineDelimiter) {
        super(name, value, bundle, lineDelimiter);
    }

    protected PDEManifestElement createElement(ManifestElement element) {
        return new ExportPackageObject((ManifestHeader)this, element, this.getVersionAttribute());
    }

    public Vector getPackageNames() {
        return this.getElementNames();
    }

    public ExportPackageObject getPackage(String packageName) {
        return this.fElementMap == null || packageName == null ? null : (ExportPackageObject)this.fElementMap.get(packageName);
    }

    public ExportPackageObject[] getPackages() {
        PDEManifestElement[] elements = this.getElements();
        ExportPackageObject[] result = new ExportPackageObject[elements.length];
        System.arraycopy(elements, 0, result, 0, elements.length);
        return result;
    }

    public ExportPackageObject addPackage(String id) {
        ExportPackageObject obj = new ExportPackageObject(this, id, null, this.getVersionAttribute());
        this.addManifestElement(obj);
        return obj;
    }
}

