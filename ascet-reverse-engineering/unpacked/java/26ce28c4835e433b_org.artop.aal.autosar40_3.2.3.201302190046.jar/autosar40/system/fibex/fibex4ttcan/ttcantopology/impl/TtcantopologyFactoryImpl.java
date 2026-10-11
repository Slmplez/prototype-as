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
package autosar40.system.fibex.fibex4ttcan.ttcantopology.impl;

import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanCluster;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanClusterConditional;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanCommunicationConnector;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanCommunicationController;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanCommunicationControllerConditional;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanPhysicalChannel;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcantopologyFactory;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcantopologyPackage;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.impl.TtcanClusterConditionalImpl;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.impl.TtcanClusterImpl;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.impl.TtcanCommunicationConnectorImpl;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.impl.TtcanCommunicationControllerConditionalImpl;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.impl.TtcanCommunicationControllerImpl;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.impl.TtcanPhysicalChannelImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class TtcantopologyFactoryImpl
extends EFactoryImpl
implements TtcantopologyFactory {
    public static TtcantopologyFactory init() {
        try {
            TtcantopologyFactory theTtcantopologyFactory = (TtcantopologyFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/system/f/ft/tt");
            if (theTtcantopologyFactory != null) {
                return theTtcantopologyFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new TtcantopologyFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createTtcanCluster();
            }
            case 1: {
                return this.createTtcanClusterConditional();
            }
            case 3: {
                return this.createTtcanCommunicationConnector();
            }
            case 4: {
                return this.createTtcanCommunicationController();
            }
            case 5: {
                return this.createTtcanCommunicationControllerConditional();
            }
            case 7: {
                return this.createTtcanPhysicalChannel();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public TtcanCluster createTtcanCluster() {
        TtcanClusterImpl ttcanCluster = new TtcanClusterImpl();
        return ttcanCluster;
    }

    public TtcanClusterConditional createTtcanClusterConditional() {
        TtcanClusterConditionalImpl ttcanClusterConditional = new TtcanClusterConditionalImpl();
        return ttcanClusterConditional;
    }

    public TtcanCommunicationConnector createTtcanCommunicationConnector() {
        TtcanCommunicationConnectorImpl ttcanCommunicationConnector = new TtcanCommunicationConnectorImpl();
        return ttcanCommunicationConnector;
    }

    public TtcanCommunicationController createTtcanCommunicationController() {
        TtcanCommunicationControllerImpl ttcanCommunicationController = new TtcanCommunicationControllerImpl();
        return ttcanCommunicationController;
    }

    public TtcanCommunicationControllerConditional createTtcanCommunicationControllerConditional() {
        TtcanCommunicationControllerConditionalImpl ttcanCommunicationControllerConditional = new TtcanCommunicationControllerConditionalImpl();
        return ttcanCommunicationControllerConditional;
    }

    public TtcanPhysicalChannel createTtcanPhysicalChannel() {
        TtcanPhysicalChannelImpl ttcanPhysicalChannel = new TtcanPhysicalChannelImpl();
        return ttcanPhysicalChannel;
    }

    public TtcantopologyPackage getTtcantopologyPackage() {
        return (TtcantopologyPackage)this.getEPackage();
    }

    @Deprecated
    public static TtcantopologyPackage getPackage() {
        return TtcantopologyPackage.eINSTANCE;
    }
}

