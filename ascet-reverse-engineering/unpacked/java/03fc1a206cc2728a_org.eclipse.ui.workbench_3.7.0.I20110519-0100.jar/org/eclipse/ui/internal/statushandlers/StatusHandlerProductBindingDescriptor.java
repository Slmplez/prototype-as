/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 */
package org.eclipse.ui.internal.statushandlers;

import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.ui.IPluginContribution;

class StatusHandlerProductBindingDescriptor
implements IPluginContribution {
    private static String ATT_HANDLER_ID = "handlerId";
    private String id;
    private String pluginId;
    private String productId;
    private String handlerId;

    public StatusHandlerProductBindingDescriptor(IConfigurationElement configElement) {
        this.id = configElement.getAttribute("id");
        this.pluginId = configElement.getContributor().getName();
        this.productId = configElement.getAttribute("productId");
        this.handlerId = configElement.getAttribute(ATT_HANDLER_ID);
    }

    public String getLocalId() {
        return this.id;
    }

    public String getPluginId() {
        return this.pluginId;
    }

    public String getProductId() {
        return this.productId;
    }

    public String getHandlerId() {
        return this.handlerId;
    }
}

