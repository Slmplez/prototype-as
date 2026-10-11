/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.measurementcalibrationsupport;

import autosar40.commonstructure.implementationdatatypes.ImplementationDataTypeElement;
import autosar40.commonstructure.measurementcalibrationsupport.McDataInstance;
import autosar40.genericstructure.abstractstructure.AtpInstanceRef;
import autosar40.swcomponent.datatype.dataprototypes.ParameterDataPrototype;

public interface ImplementationElementInParameterInstanceRef
extends AtpInstanceRef {
    public McDataInstance getMcDataInstance();

    public void setMcDataInstance(McDataInstance var1);

    public ParameterDataPrototype getContext();

    public void setContext(ParameterDataPrototype var1);

    public ImplementationDataTypeElement getTarget();

    public void setTarget(ImplementationDataTypeElement var1);
}

