/*
 * Decompiled with CFR 0.152.
 */
package autosar21.ecucparameterdef;

import autosar21.ecucparameterdef.CalculationLanguage;
import autosar21.genericstructure.infrastructure.ARObject;

public interface DerivedParamType
extends ARObject {
    public String getCalculationFormula();

    public void setCalculationFormula(String var1);

    public void unsetCalculationFormula();

    public boolean isSetCalculationFormula();

    public CalculationLanguage getCalculationLanguage();

    public void setCalculationLanguage(CalculationLanguage var1);

    public void unsetCalculationLanguage();

    public boolean isSetCalculationLanguage();
}

