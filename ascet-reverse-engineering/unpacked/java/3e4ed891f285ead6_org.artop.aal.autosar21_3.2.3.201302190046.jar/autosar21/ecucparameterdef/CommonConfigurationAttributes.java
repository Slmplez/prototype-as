/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GCommonConfigurationAttributes
 */
package autosar21.ecucparameterdef;

import autosar21.ecucparameterdef.ConfigurationClass;
import autosar21.ecucparameterdef.ConfigurationClassAffection;
import autosar21.ecucparameterdef.ParamConfMultiplicity;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import gautosar.gecucparameterdef.GCommonConfigurationAttributes;

public interface CommonConfigurationAttributes
extends Identifiable,
ParamConfMultiplicity,
GCommonConfigurationAttributes {
    public ConfigurationClassAffection getConfigurationClassAffection();

    public void setConfigurationClassAffection(ConfigurationClassAffection var1);

    public ConfigurationClass getImplementationConfigClass();

    public void setImplementationConfigClass(ConfigurationClass var1);

    public void unsetImplementationConfigClass();

    public boolean isSetImplementationConfigClass();

    public String getOrigin();

    public void setOrigin(String var1);

    public void unsetOrigin();

    public boolean isSetOrigin();
}

