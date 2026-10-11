/*
 * Decompiled with CFR 0.152.
 */
package autosar40.swcomponent.communication;

import autosar40.commonstructure.constants.ValueSpecification;
import autosar40.swcomponent.communication.PPortComSpec;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;

public interface NvProvideComSpec
extends PPortComSpec {
    public ValueSpecification getRamBlockInitValue();

    public void setRamBlockInitValue(ValueSpecification var1);

    public ValueSpecification getRomBlockInitValue();

    public void setRomBlockInitValue(ValueSpecification var1);

    public VariableDataPrototype getVariable();

    public void setVariable(VariableDataPrototype var1);
}

