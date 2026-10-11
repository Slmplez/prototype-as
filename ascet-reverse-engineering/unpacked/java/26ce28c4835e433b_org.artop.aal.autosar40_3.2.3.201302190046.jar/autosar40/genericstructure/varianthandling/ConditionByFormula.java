/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.varianthandling;

import autosar40.genericstructure.varianthandling.BindingTimeEnum;
import autosar40.genericstructure.varianthandling.SwSystemconstDependentFormula;

public interface ConditionByFormula
extends SwSystemconstDependentFormula {
    public BindingTimeEnum getBindingTime();

    public void setBindingTime(BindingTimeEnum var1);

    public void unsetBindingTime();

    public boolean isSetBindingTime();
}

