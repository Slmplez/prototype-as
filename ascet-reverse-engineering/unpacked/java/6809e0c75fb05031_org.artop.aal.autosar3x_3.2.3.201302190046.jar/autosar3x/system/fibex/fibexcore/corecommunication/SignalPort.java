/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibexcore.corecommunication;

import autosar3x.commonstructure.filter.DataFilter;
import autosar3x.system.fibex.fibexcore.coretopology.CommConnectorPort;

public interface SignalPort
extends CommConnectorPort {
    public DataFilter getDataFilter();

    public void setDataFilter(DataFilter var1);

    public Double getTimeout();

    public void setTimeout(Double var1);

    public void unsetTimeout();

    public boolean isSetTimeout();
}

