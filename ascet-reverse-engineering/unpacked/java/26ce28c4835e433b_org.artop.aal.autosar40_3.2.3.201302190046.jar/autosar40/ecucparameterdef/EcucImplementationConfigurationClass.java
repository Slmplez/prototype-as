/*
 * Decompiled with CFR 0.152.
 */
package autosar40.ecucparameterdef;

import autosar40.ecucparameterdef.EcucCommonAttributes;
import autosar40.ecucparameterdef.EcucConfigurationClassEnum;
import autosar40.ecucparameterdef.EcucConfigurationVariantEnum;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;

public interface EcucImplementationConfigurationClass
extends ARObject {
    public EcucCommonAttributes getEcucCommonAttributes();

    public void setEcucCommonAttributes(EcucCommonAttributes var1);

    public EcucConfigurationClassEnum getConfigClass();

    public void setConfigClass(EcucConfigurationClassEnum var1);

    public void unsetConfigClass();

    public boolean isSetConfigClass();

    public EcucConfigurationVariantEnum getConfigVariant();

    public void setConfigVariant(EcucConfigurationVariantEnum var1);

    public void unsetConfigVariant();

    public boolean isSetConfigVariant();
}

