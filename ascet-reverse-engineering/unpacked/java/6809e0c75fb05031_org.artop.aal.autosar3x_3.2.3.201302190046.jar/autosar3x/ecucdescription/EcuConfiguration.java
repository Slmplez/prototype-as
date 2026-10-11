/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.ecucdescription;

import autosar3x.ecucdescription.ModuleConfiguration;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.swcomponent.services.EcuSwComposition;
import autosar3x.system.System;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EcuConfiguration
extends ARElement {
    public System getEcuExtract();

    public void setEcuExtract(System var1);

    public EcuSwComposition getEcuSwComposition();

    public void setEcuSwComposition(EcuSwComposition var1);

    public EList<ModuleConfiguration> getModules();
}

