/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibex4multiplatform;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.fibex.fibex4multiplatform.IPduMapping;
import autosar40.system.fibex.fibex4multiplatform.PduMappingDefaultValue;
import autosar40.system.fibex.fibexcore.corecommunication.PduTriggering;

public interface TargetIPduRef
extends ARObject {
    public IPduMapping getIPduMapping();

    public void setIPduMapping(IPduMapping var1);

    public PduMappingDefaultValue getDefaultValue();

    public void setDefaultValue(PduMappingDefaultValue var1);

    public PduTriggering getTargetIPdu();

    public void setTargetIPdu(PduTriggering var1);
}

