/*
 * Decompiled with CFR 0.152.
 */
package autosar21.bswmodule;

import autosar21.ecucdescription.ModuleConfiguration;
import autosar21.ecucparameterdef.ModuleDef;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;

public interface BswModuleDescription
extends ARElement {
    public Integer getModuleId();

    public void setModuleId(Integer var1);

    public void unsetModuleId();

    public boolean isSetModuleId();

    public ModuleConfiguration getPreconfiguredConfiguration();

    public void setPreconfiguredConfiguration(ModuleConfiguration var1);

    public ModuleConfiguration getRecommendedConfiguration();

    public void setRecommendedConfiguration(ModuleConfiguration var1);

    public ModuleDef getVendorSpecificModuleDef();

    public void setVendorSpecificModuleDef(ModuleDef var1);
}

