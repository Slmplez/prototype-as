/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.text.bundle;

import org.eclipse.pde.internal.core.ibundle.IBundle;
import org.eclipse.pde.internal.core.text.bundle.CompositeManifestHeader;

public class BundleClasspathHeader
extends CompositeManifestHeader {
    private static final long serialVersionUID = 1L;

    public BundleClasspathHeader(String name, String value, IBundle bundle, String lineDelimiter) {
        super(name, value, bundle, lineDelimiter);
    }

    public void addLibrary(String name) {
        this.addManifestElement(name);
    }

    public void addLibrary(String name, int index) {
        this.addManifestElement(name, index);
    }

    public void removeLibrary(String name) {
        this.removeManifestElement(name);
    }
}

