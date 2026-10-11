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
package autosar3x.system.fibex.fibex4can.cantopology.impl;

import autosar3x.system.fibex.fibex4can.cantopology.CanCluster;
import autosar3x.system.fibex.fibex4can.cantopology.CanCommunicationConnector;
import autosar3x.system.fibex.fibex4can.cantopology.CanCommunicationController;
import autosar3x.system.fibex.fibex4can.cantopology.CanControllerConfiguration;
import autosar3x.system.fibex.fibex4can.cantopology.CanControllerConfigurationRequirements;
import autosar3x.system.fibex.fibex4can.cantopology.CantopologyFactory;
import autosar3x.system.fibex.fibex4can.cantopology.CantopologyPackage;
import autosar3x.system.fibex.fibex4can.cantopology.impl.CanClusterImpl;
import autosar3x.system.fibex.fibex4can.cantopology.impl.CanCommunicationConnectorImpl;
import autosar3x.system.fibex.fibex4can.cantopology.impl.CanCommunicationControllerImpl;
import autosar3x.system.fibex.fibex4can.cantopology.impl.CanControllerConfigurationImpl;
import autosar3x.system.fibex.fibex4can.cantopology.impl.CanControllerConfigurationRequirementsImpl;
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
            CantopologyFactory theCantopologyFactory = (CantopologyFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/s/f/fcan/ct");
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
            case 1: {
                return this.createCanCluster();
            }
            case 2: {
                return this.createCanCommunicationConnector();
            }
            case 3: {
                return this.createCanCommunicationController();
            }
            case 4: {
                return this.createCanControllerConfiguration();
            }
            case 5: {
                return this.createCanControllerConfigurationRequirements();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public CanCluster createCanCluster() {
        CanClusterImpl canCluster = new CanClusterImpl();
        return canCluster;
    }

    public CanCommunicationConnector createCanCommunicationConnector() {
        CanCommunicationConnectorImpl canCommunicationConnector = new CanCommunicationConnectorImpl();
        return canCommunicationConnector;
    }

    public CanCommunicationController createCanCommunicationController() {
        CanCommunicationControllerImpl canCommunicationController = new CanCommunicationControllerImpl();
        return canCommunicationController;
    }

    public CanControllerConfiguration createCanControllerConfiguration() {
        CanControllerConfigurationImpl canControllerConfiguration = new CanControllerConfigurationImpl();
        return canControllerConfiguration;
    }

    public CanControllerConfigurationRequirements createCanControllerConfigurationRequirements() {
        CanControllerConfigurationRequirementsImpl canControllerConfigurationRequirements = new CanControllerConfigurationRequirementsImpl();
        return canControllerConfigurationRequirements;
    }

    public CantopologyPackage getCantopologyPackage() {
        return (CantopologyPackage)this.getEPackage();
    }

    @Deprecated
    public static CantopologyPackage getPackage() {
        return CantopologyPackage.eINSTANCE;
    }
}

