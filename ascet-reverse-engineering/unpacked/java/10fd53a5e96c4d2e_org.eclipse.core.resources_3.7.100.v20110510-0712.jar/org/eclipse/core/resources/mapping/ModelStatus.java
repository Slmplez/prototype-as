/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.resources.mapping;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.Status;

public class ModelStatus
extends Status {
    private final String modelProviderId;

    public ModelStatus(int severity, String pluginId, String modelProviderId, String message) {
        super(severity, pluginId, 0, message, null);
        Assert.isNotNull((Object)modelProviderId);
        this.modelProviderId = modelProviderId;
    }

    public String getModelProviderId() {
        return this.modelProviderId;
    }
}

