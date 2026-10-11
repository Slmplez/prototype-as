/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.Platform
 *  org.osgi.framework.Bundle
 */
package org.eclipse.core.expressions;

import org.eclipse.core.expressions.IPropertyTester;
import org.eclipse.core.internal.expressions.PropertyTesterDescriptor;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.Platform;
import org.osgi.framework.Bundle;

public abstract class PropertyTester
implements IPropertyTester {
    private IConfigurationElement fConfigElement;
    private String fNamespace;
    private String fProperties;

    public final void internalInitialize(PropertyTesterDescriptor descriptor) {
        this.fProperties = descriptor.getProperties();
        this.fNamespace = descriptor.getNamespace();
        this.fConfigElement = descriptor.getConfigurationElement();
    }

    public final PropertyTesterDescriptor internalCreateDescriptor() {
        return new PropertyTesterDescriptor(this.fConfigElement, this.fNamespace, this.fProperties);
    }

    public final boolean handles(String namespace, String property) {
        return this.fNamespace.equals(namespace) && this.fProperties.indexOf("," + property + ",") != -1;
    }

    public final boolean isInstantiated() {
        return true;
    }

    public boolean isDeclaringPluginActive() {
        Bundle bundle = Platform.getBundle((String)this.fConfigElement.getContributor().getName());
        return bundle.getState() == 32;
    }

    public final IPropertyTester instantiate() {
        return this;
    }
}

