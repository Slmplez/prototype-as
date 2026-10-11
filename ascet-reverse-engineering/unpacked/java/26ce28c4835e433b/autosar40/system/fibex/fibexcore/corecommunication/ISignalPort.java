/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibexcore.corecommunication;

import autosar40.commonstructure.filter.DataFilter;
import autosar40.system.fibex.fibexcore.coretopology.CommConnectorPort;

public interface ISignalPort
extends CommConnectorPort {
    public DataFilter getDataFilter();

    public void setDataFilter(DataFilter var1);

    public Double getTimeout();

    public void setTimeout(Double var1);

    public void unsetTimeout();

    public boolean isSetTimeout();
}

