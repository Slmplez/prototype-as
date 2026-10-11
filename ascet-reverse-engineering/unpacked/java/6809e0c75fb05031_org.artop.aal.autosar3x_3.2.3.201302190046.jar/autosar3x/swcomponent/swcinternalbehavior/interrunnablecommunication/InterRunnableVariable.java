/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype
 */
package autosar3x.swcomponent.swcinternalbehavior.interrunnablecommunication;

import autosar3x.swcomponent.datatype.constants.ValueSpecification;
import autosar3x.swcomponent.datatype.datatypes.DataPrototype;
import autosar3x.swcomponent.swcinternalbehavior.InternalBehavior;
import autosar3x.swcomponent.swcinternalbehavior.interrunnablecommunication.CommunicationApproachType;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype;

public interface InterRunnableVariable
extends DataPrototype,
GVariableDataPrototype {
    public InternalBehavior getInternalBehavior();

    public void setInternalBehavior(InternalBehavior var1);

    public CommunicationApproachType getCommunicationApproach();

    public void setCommunicationApproach(CommunicationApproachType var1);

    public void unsetCommunicationApproach();

    public boolean isSetCommunicationApproach();

    public ValueSpecification getInitValue();

    public void setInitValue(ValueSpecification var1);
}

