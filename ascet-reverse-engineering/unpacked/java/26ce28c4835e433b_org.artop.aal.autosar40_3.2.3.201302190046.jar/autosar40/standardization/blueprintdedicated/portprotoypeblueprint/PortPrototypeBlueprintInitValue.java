/*
 * Decompiled with CFR 0.152.
 */
package autosar40.standardization.blueprintdedicated.portprotoypeblueprint;

import autosar40.commonstructure.constants.ValueSpecification;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.PortPrototypeBlueprint;
import autosar40.swcomponent.datatype.dataprototypes.AutosarDataPrototype;

public interface PortPrototypeBlueprintInitValue
extends ARObject {
    public PortPrototypeBlueprint getPortPrototypeBlueprint();

    public void setPortPrototypeBlueprint(PortPrototypeBlueprint var1);

    public AutosarDataPrototype getDataPrototype();

    public void setDataPrototype(AutosarDataPrototype var1);

    public ValueSpecification getValue();

    public void setValue(ValueSpecification var1);
}

