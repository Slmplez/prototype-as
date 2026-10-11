/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.swcomponent.swcinternalbehavior.componentlocalcalprm;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.datatype.constants.ValueSpecification;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CalprmElementPrototype;

public interface InitValueAssignment
extends ARObject {
    public ValueSpecification getInitValue();

    public void setInitValue(ValueSpecification var1);

    public CalprmElementPrototype getParameter();

    public void setParameter(CalprmElementPrototype var1);
}

