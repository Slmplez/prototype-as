/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.system.ecuresourcemapping;

import autosar40.system.ecuresourcemapping.CommunicationControllerMapping;
import autosar40.system.ecuresourcemapping.ECUMapping;
import autosar40.system.ecuresourcemapping.EcuresourcemappingPackage;
import autosar40.system.ecuresourcemapping.HwPortMapping;
import autosar40.system.ecuresourcemapping.impl.EcuresourcemappingFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface EcuresourcemappingFactory
extends EFactory {
    public static final EcuresourcemappingFactory eINSTANCE = EcuresourcemappingFactoryImpl.init();

    public CommunicationControllerMapping createCommunicationControllerMapping();

    public HwPortMapping createHwPortMapping();

    public ECUMapping createECUMapping();

    public EcuresourcemappingPackage getEcuresourcemappingPackage();
}

