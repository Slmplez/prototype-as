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
package autosar40.system.fibex.fibex4ethernet.ethernettopology.impl;

import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetCluster;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetClusterConditional;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetCommunicationConnector;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetCommunicationController;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetCommunicationControllerConditional;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetPhysicalChannel;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernettopologyFactory;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernettopologyPackage;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.impl.EthernetClusterConditionalImpl;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.impl.EthernetClusterImpl;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.impl.EthernetCommunicationConnectorImpl;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.impl.EthernetCommunicationControllerConditionalImpl;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.impl.EthernetCommunicationControllerImpl;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.impl.EthernetPhysicalChannelImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class EthernettopologyFactoryImpl
extends EFactoryImpl
implements EthernettopologyFactory {
    public static EthernettopologyFactory init() {
        try {
            EthernettopologyFactory theEthernettopologyFactory = (EthernettopologyFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/system/f/fe/et");
            if (theEthernettopologyFactory != null) {
                return theEthernettopologyFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new EthernettopologyFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createEthernetCluster();
            }
            case 1: {
                return this.createEthernetClusterConditional();
            }
            case 3: {
                return this.createEthernetCommunicationController();
            }
            case 4: {
                return this.createEthernetCommunicationControllerConditional();
            }
            case 6: {
                return this.createEthernetPhysicalChannel();
            }
            case 7: {
                return this.createEthernetCommunicationConnector();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public EthernetCluster createEthernetCluster() {
        EthernetClusterImpl ethernetCluster = new EthernetClusterImpl();
        return ethernetCluster;
    }

    public EthernetClusterConditional createEthernetClusterConditional() {
        EthernetClusterConditionalImpl ethernetClusterConditional = new EthernetClusterConditionalImpl();
        return ethernetClusterConditional;
    }

    public EthernetCommunicationController createEthernetCommunicationController() {
        EthernetCommunicationControllerImpl ethernetCommunicationController = new EthernetCommunicationControllerImpl();
        return ethernetCommunicationController;
    }

    public EthernetCommunicationControllerConditional createEthernetCommunicationControllerConditional() {
        EthernetCommunicationControllerConditionalImpl ethernetCommunicationControllerConditional = new EthernetCommunicationControllerConditionalImpl();
        return ethernetCommunicationControllerConditional;
    }

    public EthernetPhysicalChannel createEthernetPhysicalChannel() {
        EthernetPhysicalChannelImpl ethernetPhysicalChannel = new EthernetPhysicalChannelImpl();
        return ethernetPhysicalChannel;
    }

    public EthernetCommunicationConnector createEthernetCommunicationConnector() {
        EthernetCommunicationConnectorImpl ethernetCommunicationConnector = new EthernetCommunicationConnectorImpl();
        return ethernetCommunicationConnector;
    }

    public EthernettopologyPackage getEthernettopologyPackage() {
        return (EthernettopologyPackage)this.getEPackage();
    }

    @Deprecated
    public static EthernettopologyPackage getPackage() {
        return EthernettopologyPackage.eINSTANCE;
    }
}

