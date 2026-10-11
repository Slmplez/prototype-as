/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GModuleDef
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.ecucparameterdef;

import autosar3x.ecucparameterdef.ConfigurationVariant;
import autosar3x.ecucparameterdef.ContainerDef;
import autosar3x.ecucparameterdef.ParamConfMultiplicity;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import gautosar.gecucparameterdef.GModuleDef;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ModuleDef
extends ARElement,
ParamConfMultiplicity,
GModuleDef {
    public ModuleDef getRefinedModuleDef();

    public void setRefinedModuleDef(ModuleDef var1);

    public EList<ConfigurationVariant> getSupportedConfigVariants();

    public void unsetSupportedConfigVariants();

    public boolean isSetSupportedConfigVariants();

    public EList<ContainerDef> getContainers();
}

