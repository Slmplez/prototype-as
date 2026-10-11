/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.bswmodule.bswimplementation;

import autosar40.bswmodule.bswbehavior.BswInternalBehavior;
import autosar40.bswmodule.bswimplementation.BswDebugInfo;
import autosar40.commonstructure.implementation.Implementation;
import autosar40.ecucdescription.EcucModuleConfigurationValues;
import autosar40.ecucparameterdef.EcucModuleDef;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface BswImplementation
extends Implementation {
    public String getArReleaseVersion();

    public void setArReleaseVersion(String var1);

    public void unsetArReleaseVersion();

    public boolean isSetArReleaseVersion();

    public BswInternalBehavior getBehavior();

    public void setBehavior(BswInternalBehavior var1);

    public EList<BswDebugInfo> getDebugInfos();

    public EList<EcucModuleConfigurationValues> getPreconfiguredConfigurations();

    public EList<EcucModuleConfigurationValues> getRecommendedConfigurations();

    public String getVendorApiInfix();

    public void setVendorApiInfix(String var1);

    public void unsetVendorApiInfix();

    public boolean isSetVendorApiInfix();

    public EList<EcucModuleDef> getVendorSpecificModuleDefs();
}

