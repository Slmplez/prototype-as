/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GConfigParameter
 */
package autosar40.ecucparameterdef;

import autosar40.ecucparameterdef.EcucCommonAttributes;
import autosar40.ecucparameterdef.EcucDerivationSpecification;
import autosar40.ecucparameterdef.EcucParamConfContainerDef;
import gautosar.gecucparameterdef.GConfigParameter;

public interface EcucParameterDef
extends EcucCommonAttributes,
GConfigParameter {
    public EcucParamConfContainerDef getEcucParamConfContainerDef();

    public void setEcucParamConfContainerDef(EcucParamConfContainerDef var1);

    public EcucDerivationSpecification getDerivation();

    public void setDerivation(EcucDerivationSpecification var1);

    public Boolean getSymbolicNameValue();

    public void setSymbolicNameValue(Boolean var1);

    public void unsetSymbolicNameValue();

    public boolean isSetSymbolicNameValue();

    public Boolean getWithAuto();

    public void setWithAuto(Boolean var1);

    public void unsetWithAuto();

    public boolean isSetWithAuto();
}

