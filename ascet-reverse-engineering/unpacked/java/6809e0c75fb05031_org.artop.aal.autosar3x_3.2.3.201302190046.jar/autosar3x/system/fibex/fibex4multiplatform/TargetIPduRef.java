/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibex4multiplatform;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.fibex.fibex4multiplatform.IPduMapping;
import autosar3x.system.fibex.fibex4multiplatform.PduMappingDefaultValue;
import autosar3x.system.fibex.fibexcore.corecommunication.IPduTriggering;

public interface TargetIPduRef
extends ARObject {
    public IPduMapping getIPduMapping();

    public void setIPduMapping(IPduMapping var1);

    public PduMappingDefaultValue getDefaultValue();

    public void setDefaultValue(PduMappingDefaultValue var1);

    public IPduTriggering getTargetIPdu();

    public void setTargetIPdu(IPduTriggering var1);
}

