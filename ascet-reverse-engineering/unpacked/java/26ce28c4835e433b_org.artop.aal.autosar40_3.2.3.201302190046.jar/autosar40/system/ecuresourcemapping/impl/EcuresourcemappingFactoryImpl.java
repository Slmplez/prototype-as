/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar40.system.ecuresourcemapping.impl;

import autosar40.system.ecuresourcemapping.CommunicationControllerMapping;
import autosar40.system.ecuresourcemapping.ECUMapping;
import autosar40.system.ecuresourcemapping.EcuresourcemappingFactory;
import autosar40.system.ecuresourcemapping.EcuresourcemappingPackage;
import autosar40.system.ecuresourcemapping.HwPortMapping;
import autosar40.system.ecuresourcemapping.impl.CommunicationControllerMappingImpl;
import autosar40.system.ecuresourcemapping.impl.ECUMappingImpl;
import autosar40.system.ecuresourcemapping.impl.HwPortMappingImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class EcuresourcemappingFactoryImpl
extends EFactoryImpl
implements EcuresourcemappingFactory {
    public static EcuresourcemappingFactory init() {
        try {
            EcuresourcemappingFactory theEcuresourcemappingFactory = (EcuresourcemappingFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/system/ecurm");
            if (theEcuresourcemappingFactory != null) {
                return theEcuresourcemappingFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new EcuresourcemappingFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createCommunicationControllerMapping();
            }
            case 1: {
                return this.createHwPortMapping();
            }
            case 2: {
                return this.createECUMapping();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public CommunicationControllerMapping createCommunicationControllerMapping() {
        CommunicationControllerMappingImpl communicationControllerMapping = new CommunicationControllerMappingImpl();
        return communicationControllerMapping;
    }

    public HwPortMapping createHwPortMapping() {
        HwPortMappingImpl hwPortMapping = new HwPortMappingImpl();
        return hwPortMapping;
    }

    public ECUMapping createECUMapping() {
        ECUMappingImpl ecuMapping = new ECUMappingImpl();
        return ecuMapping;
    }

    public EcuresourcemappingPackage getEcuresourcemappingPackage() {
        return (EcuresourcemappingPackage)this.getEPackage();
    }

    @Deprecated
    public static EcuresourcemappingPackage getPackage() {
        return EcuresourcemappingPackage.eINSTANCE;
    }
}

