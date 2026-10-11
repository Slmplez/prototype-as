/*
 * Decompiled with CFR 0.152.
 */
package autosar40.swcomponent.swcinternalbehavior.portapioptions;

import autosar40.commonstructure.constants.ValueSpecification;
import autosar40.commonstructure.implementationdatatypes.ImplementationDataType;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.swcinternalbehavior.portapioptions.PortAPIOption;

public interface PortDefinedArgumentValue
extends ARObject {
    public PortAPIOption getPortAPIOption();

    public void setPortAPIOption(PortAPIOption var1);

    public ValueSpecification getValue();

    public void setValue(ValueSpecification var1);

    public ImplementationDataType getValueType();

    public void setValueType(ImplementationDataType var1);
}

