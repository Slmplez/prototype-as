/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GModuleDef
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.ecucparameterdef;

import autosar21.ecucparameterdef.ContainerDef;
import autosar21.ecucparameterdef.ParamConfMultiplicity;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import gautosar.gecucparameterdef.GModuleDef;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ModuleDef
extends ARElement,
ParamConfMultiplicity,
GModuleDef {
    public String getImplementationConfigVariant();

    public void setImplementationConfigVariant(String var1);

    public void unsetImplementationConfigVariant();

    public boolean isSetImplementationConfigVariant();

    public ModuleDef getRefinedModuleDef();

    public void setRefinedModuleDef(ModuleDef var1);

    public EList<ContainerDef> getContainers();
}

