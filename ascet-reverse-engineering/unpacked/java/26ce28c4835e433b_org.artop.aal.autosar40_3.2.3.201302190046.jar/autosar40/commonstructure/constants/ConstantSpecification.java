/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.constants;

import autosar40.commonstructure.constants.ValueSpecification;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;

public interface ConstantSpecification
extends ARElement {
    public ValueSpecification getValueSpec();

    public void setValueSpec(ValueSpecification var1);
}

