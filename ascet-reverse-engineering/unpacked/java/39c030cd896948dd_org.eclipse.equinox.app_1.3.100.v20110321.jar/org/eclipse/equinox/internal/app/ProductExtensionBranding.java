/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.osgi.framework.Bundle
 */
package org.eclipse.equinox.internal.app;

import java.util.HashMap;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.equinox.internal.app.Activator;
import org.eclipse.equinox.internal.app.IBranding;
import org.osgi.framework.Bundle;

public class ProductExtensionBranding
implements IBranding {
    private static final String ATTR_DESCRIPTION = "description";
    private static final String ATTR_NAME = "name";
    private static final String ATTR_APPLICATION = "application";
    private static final String ATTR_VALUE = "value";
    String application = null;
    String name = null;
    String id = null;
    String description = null;
    HashMap properties;
    Bundle definingBundle = null;

    public ProductExtensionBranding(String id, IConfigurationElement element) {
        this.id = id;
        if (element == null) {
            return;
        }
        this.application = element.getAttribute(ATTR_APPLICATION);
        this.name = element.getAttribute(ATTR_NAME);
        this.description = element.getAttribute(ATTR_DESCRIPTION);
        this.loadProperties(element);
    }

    private void loadProperties(IConfigurationElement element) {
        IConfigurationElement[] children = element.getChildren();
        this.properties = new HashMap(children.length);
        int i = 0;
        while (i < children.length) {
            IConfigurationElement child = children[i];
            String key = child.getAttribute(ATTR_NAME);
            String value = child.getAttribute(ATTR_VALUE);
            if (key != null && value != null) {
                this.properties.put(key, value);
            }
            ++i;
        }
        this.definingBundle = Activator.getBundle(element.getContributor());
    }

    public Bundle getDefiningBundle() {
        return this.definingBundle;
    }

    public String getApplication() {
        return this.application;
    }

    public String getName() {
        return this.name;
    }

    public String getDescription() {
        return this.description;
    }

    public String getId() {
        return this.id;
    }

    public String getProperty(String key) {
        return (String)this.properties.get(key);
    }

    public Object getProduct() {
        return null;
    }
}

