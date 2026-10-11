/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 */
package org.eclipse.ui.internal.statushandlers;

import java.util.HashMap;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.ui.IPluginContribution;
import org.eclipse.ui.statushandlers.AbstractStatusHandler;

public class StatusHandlerDescriptor
implements IPluginContribution {
    private AbstractStatusHandler cachedInstance;
    private static final String PREFIX = "prefix";
    private IConfigurationElement configElement;
    private String id;
    private String pluginId;
    private String prefix;

    public StatusHandlerDescriptor(IConfigurationElement configElement) {
        this.configElement = configElement;
        this.id = configElement.getAttribute("id");
        this.pluginId = configElement.getContributor().getName();
    }

    public synchronized AbstractStatusHandler getStatusHandler() throws CoreException {
        if (this.cachedInstance == null) {
            AbstractStatusHandler statusHandler = (AbstractStatusHandler)this.configElement.createExecutableExtension("class");
            statusHandler.setId(this.configElement.getAttribute("id"));
            IConfigurationElement[] parameters = this.configElement.getChildren("parameter");
            HashMap<String, String> params = new HashMap<String, String>();
            int i = 0;
            while (i < parameters.length) {
                params.put(parameters[i].getAttribute("name"), parameters[i].getAttribute("value"));
                ++i;
            }
            statusHandler.setParams(params);
            this.cachedInstance = statusHandler;
        }
        return this.cachedInstance;
    }

    public String getPrefix() {
        IConfigurationElement[] parameters = this.configElement.getChildren("parameter");
        int i = 0;
        while (i < parameters.length) {
            if (parameters[i].getAttribute("name").equals(PREFIX)) {
                this.prefix = parameters[i].getAttribute("value");
            }
            ++i;
        }
        return this.prefix;
    }

    public String getId() {
        return this.id;
    }

    public String getLocalId() {
        return this.id;
    }

    public String getPluginId() {
        return this.pluginId;
    }
}

