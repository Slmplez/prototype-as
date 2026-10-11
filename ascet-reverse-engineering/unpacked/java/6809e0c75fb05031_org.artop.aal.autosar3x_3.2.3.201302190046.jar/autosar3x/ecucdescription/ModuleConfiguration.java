/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucdescription.GModuleConfiguration
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.ecucdescription;

import autosar3x.bswmodule.bswimplementation.BswImplementation;
import autosar3x.ecucdescription.Container;
import autosar3x.ecucparameterdef.ConfigurationVariant;
import autosar3x.ecucparameterdef.ModuleDef;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import gautosar.gecucdescription.GModuleConfiguration;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ModuleConfiguration
extends ARElement,
GModuleConfiguration {
    public ModuleDef getDefinition();

    public void setDefinition(ModuleDef var1);

    public ConfigurationVariant getImplementationConfigVariant();

    public void setImplementationConfigVariant(ConfigurationVariant var1);

    public void unsetImplementationConfigVariant();

    public boolean isSetImplementationConfigVariant();

    public BswImplementation getModuleDescription();

    public void setModuleDescription(BswImplementation var1);

    public EList<Container> getContainers();
}

