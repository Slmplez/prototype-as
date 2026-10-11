/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.osgi.framework.Bundle
 */
package org.eclipse.core.internal.expressions;

import org.eclipse.core.expressions.IPropertyTester;
import org.eclipse.core.internal.expressions.ExpressionMessages;
import org.eclipse.core.internal.expressions.ExpressionPlugin;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.osgi.framework.Bundle;

public class PropertyTesterDescriptor
implements IPropertyTester {
    private IConfigurationElement fConfigElement;
    private String fNamespace;
    private String fProperties;
    private static final String PROPERTIES = "properties";
    private static final String NAMESPACE = "namespace";
    private static final String CLASS = "class";

    public PropertyTesterDescriptor(IConfigurationElement element) throws CoreException {
        this.fConfigElement = element;
        this.fNamespace = this.fConfigElement.getAttribute(NAMESPACE);
        if (this.fNamespace == null) {
            throw new CoreException((IStatus)new Status(4, ExpressionPlugin.getPluginId(), 4, ExpressionMessages.PropertyTesterDescriptor_no_namespace, null));
        }
        StringBuffer buffer = new StringBuffer(",");
        String properties = element.getAttribute(PROPERTIES);
        if (properties == null) {
            throw new CoreException((IStatus)new Status(4, ExpressionPlugin.getPluginId(), 4, ExpressionMessages.PropertyTesterDescritpri_no_properties, null));
        }
        int i = 0;
        while (i < properties.length()) {
            char ch = properties.charAt(i);
            if (!Character.isWhitespace(ch)) {
                buffer.append(ch);
            }
            ++i;
        }
        buffer.append(',');
        this.fProperties = buffer.toString();
    }

    public PropertyTesterDescriptor(IConfigurationElement element, String namespace, String properties) {
        this.fConfigElement = element;
        this.fNamespace = namespace;
        this.fProperties = properties;
    }

    public String getProperties() {
        return this.fProperties;
    }

    public String getNamespace() {
        return this.fNamespace;
    }

    public IConfigurationElement getConfigurationElement() {
        return this.fConfigElement;
    }

    public boolean handles(String namespace, String property) {
        return this.fNamespace.equals(namespace) && this.fProperties.indexOf("," + property + ",") != -1;
    }

    public boolean isInstantiated() {
        return false;
    }

    public boolean isDeclaringPluginActive() {
        Bundle fBundle = Platform.getBundle((String)this.fConfigElement.getContributor().getName());
        return fBundle.getState() == 32;
    }

    public IPropertyTester instantiate() throws CoreException {
        return (IPropertyTester)this.fConfigElement.createExecutableExtension(CLASS);
    }

    public boolean test(Object receiver, String method, Object[] args, Object expectedValue) {
        Assert.isTrue((boolean)false, (String)"Method should never be called");
        return false;
    }
}

