/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucdescription.GModuleConfiguration
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.ecucdescription;

import autosar21.bswmodule.BswModuleDescription;
import autosar21.ecucdescription.Container;
import autosar21.ecucdescription.EcucElement;
import autosar21.ecucparameterdef.ModuleDef;
import gautosar.gecucdescription.GModuleConfiguration;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ModuleConfiguration
extends EcucElement,
GModuleConfiguration {
    public ModuleDef getDefinition();

    public void setDefinition(ModuleDef var1);

    public BswModuleDescription getModuleDescription();

    public void setModuleDescription(BswModuleDescription var1);

    public EList<Container> getContainers();
}

