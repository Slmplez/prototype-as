/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.internalbehavior.nvrammapping;

import autosar21.swcomponent.internalbehavior.nvrammapping.NVRAMMapping;
import autosar21.swcomponent.internalbehavior.nvrammapping.NvrammappingPackage;
import autosar21.swcomponent.internalbehavior.nvrammapping.impl.NvrammappingFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface NvrammappingFactory
extends EFactory {
    public static final NvrammappingFactory eINSTANCE = NvrammappingFactoryImpl.init();

    public NVRAMMapping createNVRAMMapping();

    public NvrammappingPackage getNvrammappingPackage();
}

