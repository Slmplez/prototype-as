/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GEnumerationLiteralDef
 */
package autosar40.ecucparameterdef;

import autosar40.ecucparameterdef.EcucConditionSpecification;
import autosar40.ecucparameterdef.EcucEnumerationParamDef;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import gautosar.gecucparameterdef.GEnumerationLiteralDef;

public interface EcucEnumerationLiteralDef
extends Identifiable,
GEnumerationLiteralDef {
    public EcucEnumerationParamDef getEcucEnumerationParamDef();

    public void setEcucEnumerationParamDef(EcucEnumerationParamDef var1);

    public EcucConditionSpecification getEcucCond();

    public void setEcucCond(EcucConditionSpecification var1);

    public String getOrigin();

    public void setOrigin(String var1);

    public void unsetOrigin();

    public boolean isSetOrigin();
}

