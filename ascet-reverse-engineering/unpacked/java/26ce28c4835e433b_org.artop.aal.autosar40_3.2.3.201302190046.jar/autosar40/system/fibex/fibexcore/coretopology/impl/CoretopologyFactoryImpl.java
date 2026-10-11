/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar40.system.fibex.fibexcore.coretopology.impl;

import autosar40.system.fibex.fibexcore.coretopology.CommunicationCluster;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationConnector;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationConnectorRefConditional;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationController;
import autosar40.system.fibex.fibexcore.coretopology.CoretopologyFactory;
import autosar40.system.fibex.fibexcore.coretopology.CoretopologyPackage;
import autosar40.system.fibex.fibexcore.coretopology.CycleCounter;
import autosar40.system.fibex.fibexcore.coretopology.CycleRepetition;
import autosar40.system.fibex.fibexcore.coretopology.CycleRepetitionType;
import autosar40.system.fibex.fibexcore.coretopology.EcuInstance;
import autosar40.system.fibex.fibexcore.coretopology.PhysicalChannel;
import autosar40.system.fibex.fibexcore.coretopology.PncGatewayTypeEnum;
import autosar40.system.fibex.fibexcore.coretopology.impl.CommunicationClusterImpl;
import autosar40.system.fibex.fibexcore.coretopology.impl.CommunicationConnectorImpl;
import autosar40.system.fibex.fibexcore.coretopology.impl.CommunicationConnectorRefConditionalImpl;
import autosar40.system.fibex.fibexcore.coretopology.impl.CommunicationControllerImpl;
import autosar40.system.fibex.fibexcore.coretopology.impl.CycleCounterImpl;
import autosar40.system.fibex.fibexcore.coretopology.impl.CycleRepetitionImpl;
import autosar40.system.fibex.fibexcore.coretopology.impl.EcuInstanceImpl;
import autosar40.system.fibex.fibexcore.coretopology.impl.PhysicalChannelImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class CoretopologyFactoryImpl
extends EFactoryImpl
implements CoretopologyFactory {
    public static CoretopologyFactory init() {
        try {
            CoretopologyFactory theCoretopologyFactory = (CoretopologyFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/system/f/fcore/ct");
            if (theCoretopologyFactory != null) {
                return theCoretopologyFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new CoretopologyFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 1: {
                return this.createCommunicationConnector();
            }
            case 2: {
                return this.createCommunicationController();
            }
            case 3: {
                return this.createPhysicalChannel();
            }
            case 4: {
                return this.createCommunicationConnectorRefConditional();
            }
            case 7: {
                return this.createCommunicationCluster();
            }
            case 9: {
                return this.createCycleCounter();
            }
            case 10: {
                return this.createCycleRepetition();
            }
            case 11: {
                return this.createEcuInstance();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 12: {
                return this.createPncGatewayTypeEnumFromString(eDataType, initialValue);
            }
            case 13: {
                return this.createCycleRepetitionTypeFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 12: {
                return this.convertPncGatewayTypeEnumToString(eDataType, instanceValue);
            }
            case 13: {
                return this.convertCycleRepetitionTypeToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public CommunicationConnector createCommunicationConnector() {
        CommunicationConnectorImpl communicationConnector = new CommunicationConnectorImpl();
        return communicationConnector;
    }

    public CommunicationController createCommunicationController() {
        CommunicationControllerImpl communicationController = new CommunicationControllerImpl();
        return communicationController;
    }

    public PhysicalChannel createPhysicalChannel() {
        PhysicalChannelImpl physicalChannel = new PhysicalChannelImpl();
        return physicalChannel;
    }

    public CommunicationConnectorRefConditional createCommunicationConnectorRefConditional() {
        CommunicationConnectorRefConditionalImpl communicationConnectorRefConditional = new CommunicationConnectorRefConditionalImpl();
        return communicationConnectorRefConditional;
    }

    public CommunicationCluster createCommunicationCluster() {
        CommunicationClusterImpl communicationCluster = new CommunicationClusterImpl();
        return communicationCluster;
    }

    public CycleCounter createCycleCounter() {
        CycleCounterImpl cycleCounter = new CycleCounterImpl();
        return cycleCounter;
    }

    public CycleRepetition createCycleRepetition() {
        CycleRepetitionImpl cycleRepetition = new CycleRepetitionImpl();
        return cycleRepetition;
    }

    public EcuInstance createEcuInstance() {
        EcuInstanceImpl ecuInstance = new EcuInstanceImpl();
        return ecuInstance;
    }

    public PncGatewayTypeEnum createPncGatewayTypeEnumFromString(EDataType eDataType, String initialValue) {
        PncGatewayTypeEnum result = PncGatewayTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertPncGatewayTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public CycleRepetitionType createCycleRepetitionTypeFromString(EDataType eDataType, String initialValue) {
        CycleRepetitionType result = CycleRepetitionType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertCycleRepetitionTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public CoretopologyPackage getCoretopologyPackage() {
        return (CoretopologyPackage)this.getEPackage();
    }

    @Deprecated
    public static CoretopologyPackage getPackage() {
        return CoretopologyPackage.eINSTANCE;
    }
}

