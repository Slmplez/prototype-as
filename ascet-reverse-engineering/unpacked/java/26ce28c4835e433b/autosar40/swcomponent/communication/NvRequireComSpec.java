/*
 * Decompiled with CFR 0.152.
 */
package autosar40.swcomponent.communication;

import autosar40.commonstructure.constants.ValueSpecification;
import autosar40.swcomponent.communication.RPortComSpec;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;

public interface NvRequireComSpec
extends RPortComSpec {
    public ValueSpecification getInitValue();

    public void setInitValue(ValueSpecification var1);

    public VariableDataPrototype getVariable();

    public void setVariable(VariableDataPrototype var1);
}

