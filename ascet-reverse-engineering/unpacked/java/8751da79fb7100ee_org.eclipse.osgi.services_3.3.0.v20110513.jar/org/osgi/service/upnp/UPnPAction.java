/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.upnp;

import java.util.Dictionary;
import org.osgi.service.upnp.UPnPStateVariable;

public interface UPnPAction {
    public String getName();

    public String getReturnArgumentName();

    public String[] getInputArgumentNames();

    public String[] getOutputArgumentNames();

    public UPnPStateVariable getStateVariable(String var1);

    public Dictionary invoke(Dictionary var1) throws Exception;
}

