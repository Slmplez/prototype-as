/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.GServiceSwComponentType
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.swcomponent.components;

import autosar3x.bswmodule.bswoverview.BswModuleDescription;
import autosar3x.swcomponent.components.AtomicSoftwareComponentType;
import gautosar.gswcomponents.gcomponents.GServiceSwComponentType;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ServiceComponentType
extends AtomicSoftwareComponentType,
GServiceSwComponentType {
    public EList<BswModuleDescription> getBswModuleDescriptions();
}

