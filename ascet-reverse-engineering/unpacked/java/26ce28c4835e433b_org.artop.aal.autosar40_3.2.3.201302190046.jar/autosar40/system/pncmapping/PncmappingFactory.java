/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.system.pncmapping;

import autosar40.system.pncmapping.PncMapping;
import autosar40.system.pncmapping.PncmappingPackage;
import autosar40.system.pncmapping.impl.PncmappingFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface PncmappingFactory
extends EFactory {
    public static final PncmappingFactory eINSTANCE = PncmappingFactoryImpl.init();

    public PncMapping createPncMapping();

    public PncmappingPackage getPncmappingPackage();
}

