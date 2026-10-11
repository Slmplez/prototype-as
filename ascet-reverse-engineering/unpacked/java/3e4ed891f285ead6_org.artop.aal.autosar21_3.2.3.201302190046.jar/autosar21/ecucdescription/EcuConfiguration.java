/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.ecucdescription;

import autosar21.ecucdescription.ModuleConfiguration;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.swcomponent.services.EcuSwComposition;
import autosar21.system.System;
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

