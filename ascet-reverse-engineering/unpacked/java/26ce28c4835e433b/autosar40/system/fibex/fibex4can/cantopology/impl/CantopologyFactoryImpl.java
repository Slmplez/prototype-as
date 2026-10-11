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
package autosar40.system.fibex.fibex4can.cantopology.impl;

import autosar40.system.fibex.fibex4can.cantopology.CanCluster;
import autosar40.system.fibex.fibex4can.cantopology.CanClusterConditional;
import autosar40.system.fibex.fibex4can.cantopology.CanCommunicationConnector;
import autosar40.system.fibex.fibex4can.cantopology.CanCommunicationController;
import autosar40.system.fibex.fibex4can.cantopology.CanCommunicationControllerConditional;
import autosar40.system.fibex.fibex4can.cantopology.CanControllerConfiguration;
import autosar40.system.fibex.fibex4can.cantopology.CanControllerConfigurationRequirements;
import autosar40.system.fibex.fibex4can.cantopology.CanPhysicalChannel;
import autosar40.system.fibex.fibex4can.cantopology.CantopologyFactory;
import autosar40.system.fibex.fibex4can.cantopology.CantopologyPackage;
import autosar40.system.fibex.fibex4can.cantopology.impl.CanClusterConditionalImpl;
import autosar40.system.fibex.fibex4can.cantopology.impl.CanClusterImpl;
import autosar40.system.fibex.fibex4can.cantopology.impl.CanCommunicationConnectorImpl;
import autosar40.system.fibex.fibex4can.cantopology.impl.CanCommunicationControllerConditionalImpl;
import autosar40.system.fibex.fibex4can.cantopology.impl.CanCommunicationControllerImpl;
import autosar40.system.fibex.fibex4can.cantopology.impl.CanControllerConfigurationImpl;
import autosar40.system.fibex.fibex4can.cantopology.impl.CanControllerConfigurationRequirementsImpl;
import autosar40.system.fibex.fibex4can.cantopology.impl.CanPhysicalChannelImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class CantopologyFactoryImpl
extends EFactoryImpl
implements CantopologyFactory {
    public static CantopologyFactory init() {
        try {
            CantopologyFactory theCantopologyFactory = (CantopologyFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/system/f/fcan/ct");
            if (theCantopologyFactory != null) {
                return theCantopologyFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new CantopologyFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 4: {
                return this.createCanCluster();
            }
            case 5: {
                return this.createCanClusterConditional();
            }
            case 8: {
                return this.createCanCommunicationConnector();
            }
            case 9: {
                return this.createCanCommunicationController();
            }
            case 10: {
                return this.createCanCommunicationControllerConditional();
            }
            case 13: {
                return this.createCanControllerConfiguration();
            }
            case 14: {
                return this.createCanControllerConfigurationRequirements();
            }
            case 15: {
                return this.createCanPhysicalChannel();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public CanCluster createCanCluster() {
        CanClusterImpl canCluster = new CanClusterImpl();
        return canCluster;
    }

    public CanClusterConditional createCanClusterConditional() {
        CanClusterConditionalImpl canClusterConditional = new CanClusterConditionalImpl();
        return canClusterConditional;
    }

    public CanCommunicationConnector createCanCommunicationConnector() {
        CanCommunicationConnectorImpl canCommunicationConnector = new CanCommunicationConnectorImpl();
        return canCommunicationConnector;
    }

    public CanCommunicationController createCanCommunicationController() {
        CanCommunicationControllerImpl canCommunicationController = new CanCommunicationControllerImpl();
        return canCommunicationController;
    }

    public CanCommunicationControllerConditional createCanCommunicationControllerConditional() {
        CanCommunicationControllerConditionalImpl canCommunicationControllerConditional = new CanCommunicationControllerConditionalImpl();
        return canCommunicationControllerConditional;
    }

    public CanControllerConfiguration createCanControllerConfiguration() {
        CanControllerConfigurationImpl canControllerConfiguration = new CanControllerConfigurationImpl();
        return canControllerConfiguration;
    }

    public CanControllerConfigurationRequirements createCanControllerConfigurationRequirements() {
        CanControllerConfigurationRequirementsImpl canControllerConfigurationRequirements = new CanControllerConfigurationRequirementsImpl();
        return canControllerConfigurationRequirements;
    }

    public CanPhysicalChannel createCanPhysicalChannel() {
        CanPhysicalChannelImpl canPhysicalChannel = new CanPhysicalChannelImpl();
        return canPhysicalChannel;
    }

    public CantopologyPackage getCantopologyPackage() {
        return (CantopologyPackage)this.getEPackage();
    }

    @Deprecated
    public static CantopologyPackage getPackage() {
        return CantopologyPackage.eINSTANCE;
    }
}

