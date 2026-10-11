/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.upnp;

import org.osgi.service.upnp.UPnPAction;
import org.osgi.service.upnp.UPnPStateVariable;

public interface UPnPService {
    public static final String TYPE = "UPnP.service.type";
    public static final String ID = "UPnP.service.id";

    public String getId();

    public String getType();

    public String getVersion();

    public UPnPAction getAction(String var1);

    public UPnPAction[] getActions();

    public UPnPStateVariable[] getStateVariables();

    public UPnPStateVariable getStateVariable(String var1);
}

