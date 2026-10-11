/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExecutableExtension
 */
package org.eclipse.ui.menus;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExecutableExtension;
import org.eclipse.ui.menus.AbstractContributionFactory;

public abstract class ExtensionContributionFactory
extends AbstractContributionFactory
implements IExecutableExtension {
    private String namespace;
    private String locationURI;

    public ExtensionContributionFactory() {
        super(null, null);
    }

    public final String getLocation() {
        return this.locationURI;
    }

    public final String getNamespace() {
        return this.namespace;
    }

    public void setInitializationData(IConfigurationElement config, String propertyName, Object data) throws CoreException {
        this.locationURI = config.getAttribute("locationURI");
        this.namespace = config.getNamespaceIdentifier();
    }
}

