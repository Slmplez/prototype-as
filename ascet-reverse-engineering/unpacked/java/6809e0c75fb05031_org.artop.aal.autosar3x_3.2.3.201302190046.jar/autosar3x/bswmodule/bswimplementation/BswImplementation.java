/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.bswmodule.bswimplementation;

import autosar3x.bswmodule.bswbehavior.BswBehavior;
import autosar3x.commonstructure.implementation.Implementation;
import autosar3x.ecucdescription.ModuleConfiguration;
import autosar3x.ecucparameterdef.ModuleDef;
import autosar3x.ecuresource.HWElement;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface BswImplementation
extends Implementation {
    public Integer getArMajorVersion();

    public void setArMajorVersion(Integer var1);

    public void unsetArMajorVersion();

    public boolean isSetArMajorVersion();

    public Integer getArMinorVersion();

    public void setArMinorVersion(Integer var1);

    public void unsetArMinorVersion();

    public boolean isSetArMinorVersion();

    public Integer getArPatchVersion();

    public void setArPatchVersion(Integer var1);

    public void unsetArPatchVersion();

    public boolean isSetArPatchVersion();

    public BswBehavior getBehavior();

    public void setBehavior(BswBehavior var1);

    public ModuleConfiguration getPreconfiguredConfiguration();

    public void setPreconfiguredConfiguration(ModuleConfiguration var1);

    public ModuleConfiguration getRecommendedConfiguration();

    public void setRecommendedConfiguration(ModuleConfiguration var1);

    public EList<HWElement> getRequiredHWs();

    public String getVendorApiInfix();

    public void setVendorApiInfix(String var1);

    public void unsetVendorApiInfix();

    public boolean isSetVendorApiInfix();

    public ModuleDef getVendorSpecificModuleDef();

    public void setVendorSpecificModuleDef(ModuleDef var1);
}

