/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.ecucparameterdef;

import autosar3x.ecucparameterdef.CommonConfigurationAttributes;
import autosar3x.ecucparameterdef.ConfigurationClass;
import autosar3x.ecucparameterdef.ConfigurationVariant;
import autosar3x.genericstructure.infrastructure.ARObject;

public interface ImplementationConfigClass
extends ARObject {
    public CommonConfigurationAttributes getCommonConfigurationAttributes();

    public void setCommonConfigurationAttributes(CommonConfigurationAttributes var1);

    public ConfigurationClass getConfigClass();

    public void setConfigClass(ConfigurationClass var1);

    public void unsetConfigClass();

    public boolean isSetConfigClass();

    public ConfigurationVariant getConfigVariant();

    public void setConfigVariant(ConfigurationVariant var1);

    public void unsetConfigVariant();

    public boolean isSetConfigVariant();
}

