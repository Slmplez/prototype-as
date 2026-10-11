/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.text.bundle;

import org.eclipse.pde.internal.core.ibundle.IBundle;
import org.eclipse.pde.internal.core.text.bundle.SingleManifestHeader;

public class BundleLocalizationHeader
extends SingleManifestHeader {
    private static final long serialVersionUID = 1L;

    public BundleLocalizationHeader(String name, String value, IBundle bundle, String lineDelimiter) {
        super(name, value, bundle, lineDelimiter);
    }

    public void setLocalization(String localization) {
        this.setMainComponent(localization);
    }

    public String getLocalization() {
        return this.getMainComponent();
    }
}

