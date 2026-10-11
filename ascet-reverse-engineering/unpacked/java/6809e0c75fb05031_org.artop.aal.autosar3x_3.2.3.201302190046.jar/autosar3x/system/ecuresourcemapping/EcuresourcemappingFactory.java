/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.system.ecuresourcemapping;

import autosar3x.system.ecuresourcemapping.CommunicationControllerMapping;
import autosar3x.system.ecuresourcemapping.ECUMapping;
import autosar3x.system.ecuresourcemapping.EcuresourcemappingPackage;
import autosar3x.system.ecuresourcemapping.HWPortMapping;
import autosar3x.system.ecuresourcemapping.impl.EcuresourcemappingFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface EcuresourcemappingFactory
extends EFactory {
    public static final EcuresourcemappingFactory eINSTANCE = EcuresourcemappingFactoryImpl.init();

    public CommunicationControllerMapping createCommunicationControllerMapping();

    public HWPortMapping createHWPortMapping();

    public ECUMapping createECUMapping();

    public EcuresourcemappingPackage getEcuresourcemappingPackage();
}

