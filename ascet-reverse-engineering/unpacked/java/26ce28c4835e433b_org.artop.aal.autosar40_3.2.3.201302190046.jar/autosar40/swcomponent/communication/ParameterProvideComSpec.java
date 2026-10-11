/*
 * Decompiled with CFR 0.152.
 */
package autosar40.swcomponent.communication;

import autosar40.commonstructure.constants.ValueSpecification;
import autosar40.swcomponent.communication.PPortComSpec;
import autosar40.swcomponent.datatype.dataprototypes.ParameterDataPrototype;

public interface ParameterProvideComSpec
extends PPortComSpec {
    public ValueSpecification getInitValue();

    public void setInitValue(ValueSpecification var1);

    public ParameterDataPrototype getParameter();

    public void setParameter(ParameterDataPrototype var1);
}

