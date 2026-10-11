/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.bswmodule.bswinterfaces;

import autosar3x.bswmodule.bswinterfaces.BswCallType;
import autosar3x.bswmodule.bswinterfaces.BswExecutionContext;
import autosar3x.commonstructure.serviceprocesstask.SwService;

public interface BswModuleEntry
extends SwService {
    public BswCallType getCallType();

    public void setCallType(BswCallType var1);

    public void unsetCallType();

    public boolean isSetCallType();

    public BswExecutionContext getExecutionContext();

    public void setExecutionContext(BswExecutionContext var1);

    public void unsetExecutionContext();

    public boolean isSetExecutionContext();

    public Boolean getIsSynchronous();

    public void setIsSynchronous(Boolean var1);

    public void unsetIsSynchronous();

    public boolean isSetIsSynchronous();

    public Integer getServiceId();

    public void setServiceId(Integer var1);

    public void unsetServiceId();

    public boolean isSetServiceId();
}

