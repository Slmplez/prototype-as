/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 */
package org.eclipse.ui.testing;

import org.eclipse.core.runtime.IConfigurationElement;

public class ContributionInfo {
    private String bundleId;
    private String elementType;
    private IConfigurationElement configurationElement;

    public ContributionInfo(String bundleId, String elementType, IConfigurationElement configurationElement) {
        this.bundleId = bundleId;
        this.elementType = elementType;
        this.configurationElement = configurationElement;
    }

    public String getBundleId() {
        return this.bundleId;
    }

    public String getElementType() {
        return this.elementType;
    }

    public IConfigurationElement getConfigurationElement() {
        return this.configurationElement;
    }
}

