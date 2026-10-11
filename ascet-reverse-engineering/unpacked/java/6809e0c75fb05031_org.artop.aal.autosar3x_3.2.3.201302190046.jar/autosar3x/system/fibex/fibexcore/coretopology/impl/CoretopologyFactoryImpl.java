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
package autosar3x.system.fibex.fibexcore.coretopology.impl;

import autosar3x.system.fibex.fibexcore.coretopology.CommunicationCluster;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationConnector;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationController;
import autosar3x.system.fibex.fibexcore.coretopology.CoretopologyFactory;
import autosar3x.system.fibex.fibexcore.coretopology.CoretopologyPackage;
import autosar3x.system.fibex.fibexcore.coretopology.EcuInstance;
import autosar3x.system.fibex.fibexcore.coretopology.PhysicalChannel;
import autosar3x.system.fibex.fibexcore.coretopology.PncGatewayTypeEnum;
import autosar3x.system.fibex.fibexcore.coretopology.impl.CommunicationClusterImpl;
import autosar3x.system.fibex.fibexcore.coretopology.impl.CommunicationConnectorImpl;
import autosar3x.system.fibex.fibexcore.coretopology.impl.CommunicationControllerImpl;
import autosar3x.system.fibex.fibexcore.coretopology.impl.EcuInstanceImpl;
import autosar3x.system.fibex.fibexcore.coretopology.impl.PhysicalChannelImpl;
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
            CoretopologyFactory theCoretopologyFactory = (CoretopologyFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/s/f/fcore/ct");
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
                return this.createCommunicationCluster();
            }
            case 2: {
                return this.createPhysicalChannel();
            }
            case 3: {
                return this.createCommunicationConnector();
            }
            case 4: {
                return this.createCommunicationController();
            }
            case 5: {
                return this.createEcuInstance();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 6: {
                return this.createPncGatewayTypeEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 6: {
                return this.convertPncGatewayTypeEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public CommunicationCluster createCommunicationCluster() {
        CommunicationClusterImpl communicationCluster = new CommunicationClusterImpl();
        return communicationCluster;
    }

    public PhysicalChannel createPhysicalChannel() {
        PhysicalChannelImpl physicalChannel = new PhysicalChannelImpl();
        return physicalChannel;
    }

    public CommunicationConnector createCommunicationConnector() {
        CommunicationConnectorImpl communicationConnector = new CommunicationConnectorImpl();
        return communicationConnector;
    }

    public CommunicationController createCommunicationController() {
        CommunicationControllerImpl communicationController = new CommunicationControllerImpl();
        return communicationController;
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

    public CoretopologyPackage getCoretopologyPackage() {
        return (CoretopologyPackage)this.getEPackage();
    }

    @Deprecated
    public static CoretopologyPackage getPackage() {
        return CoretopologyPackage.eINSTANCE;
    }
}

