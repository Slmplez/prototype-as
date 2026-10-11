/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.auxillaryobjects;

import autosar40.commonstructure.auxillaryobjects.AuxillaryobjectsPackage;
import autosar40.commonstructure.auxillaryobjects.SwAddrMethod;
import autosar40.commonstructure.auxillaryobjects.impl.AuxillaryobjectsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface AuxillaryobjectsFactory
extends EFactory {
    public static final AuxillaryobjectsFactory eINSTANCE = AuxillaryobjectsFactoryImpl.init();

    public SwAddrMethod createSwAddrMethod();

    public AuxillaryobjectsPackage getAuxillaryobjectsPackage();
}

