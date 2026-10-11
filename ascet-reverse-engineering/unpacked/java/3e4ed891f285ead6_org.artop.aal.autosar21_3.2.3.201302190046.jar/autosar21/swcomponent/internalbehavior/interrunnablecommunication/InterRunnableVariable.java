/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype
 */
package autosar21.swcomponent.internalbehavior.interrunnablecommunication;

import autosar21.swcomponent.datatype.constants.ValueSpecification;
import autosar21.swcomponent.datatype.datatypes.DataPrototype;
import autosar21.swcomponent.internalbehavior.InternalBehavior;
import autosar21.swcomponent.internalbehavior.interrunnablecommunication.CommunicationApproachType;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.Measurable;
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

    public Measurable getMeasurable();

    public void setMeasurable(Measurable var1);
}

