/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucdescription.GModuleConfiguration
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.ecucdescription;

import autosar40.bswmodule.bswimplementation.BswImplementation;
import autosar40.ecucdescription.EcucContainerValue;
import autosar40.ecucparameterdef.EcucConfigurationVariantEnum;
import autosar40.ecucparameterdef.EcucModuleDef;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import gautosar.gecucdescription.GModuleConfiguration;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EcucModuleConfigurationValues
extends ARElement,
GModuleConfiguration {
    public EcucModuleDef getDefinition();

    public void setDefinition(EcucModuleDef var1);

    public String getEcucDefEdition();

    public void setEcucDefEdition(String var1);

    public void unsetEcucDefEdition();

    public boolean isSetEcucDefEdition();

    public EcucConfigurationVariantEnum getImplementationConfigVariant();

    public void setImplementationConfigVariant(EcucConfigurationVariantEnum var1);

    public void unsetImplementationConfigVariant();

    public boolean isSetImplementationConfigVariant();

    public BswImplementation getModuleDescription();

    public void setModuleDescription(BswImplementation var1);

    public EList<EcucContainerValue> getContainers();
}

