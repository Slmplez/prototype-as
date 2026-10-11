/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.URIUtil
 */
package org.eclipse.equinox.internal.p2.core;

import java.net.URI;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.p2.core.IAgentLocation;

public class AgentLocation
implements IAgentLocation {
    private URI location = null;

    public AgentLocation(URI location) {
        this.location = location;
    }

    public synchronized URI getRootLocation() {
        return this.location;
    }

    public URI getDataArea(String touchpointId) {
        return URIUtil.append((URI)this.getRootLocation(), (String)(String.valueOf(touchpointId) + '/'));
    }
}

