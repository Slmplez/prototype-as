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
package autosar21.system.topology.impl;

import autosar21.system.topology.CANBus;
import autosar21.system.topology.CANBusCanAddressingModeEnum;
import autosar21.system.topology.CANCommunicationPortInstance;
import autosar21.system.topology.CANCommunicationPortInstanceProtocolVersionEnum;
import autosar21.system.topology.CommunicationCluster;
import autosar21.system.topology.Connector;
import autosar21.system.topology.ECUCommunicationPortInstance;
import autosar21.system.topology.ECUInstance;
import autosar21.system.topology.ECUInstancePowerSupplyEnum;
import autosar21.system.topology.FlexrayCluster;
import autosar21.system.topology.FlexrayCommunicationPortInstance;
import autosar21.system.topology.Hub;
import autosar21.system.topology.HubHubTypeEnum;
import autosar21.system.topology.LINCommunicationPortInstance;
import autosar21.system.topology.LINCommunicationPortInstanceNodeRoleEnum;
import autosar21.system.topology.LINCommunicationPortInstanceProtocolVersionEnum;
import autosar21.system.topology.LINSubBus;
import autosar21.system.topology.PhysicalChannel;
import autosar21.system.topology.PhysicalMediumSegment;
import autosar21.system.topology.PhysicalMediumSegmentPhysicalMediumTypeEnum;
import autosar21.system.topology.SystemTopologyType;
import autosar21.system.topology.TopologyElement;
import autosar21.system.topology.TopologyFactory;
import autosar21.system.topology.TopologyPackage;
import autosar21.system.topology.UnspecifiedConnection;
import autosar21.system.topology.impl.CANBusImpl;
import autosar21.system.topology.impl.CANCommunicationPortInstanceImpl;
import autosar21.system.topology.impl.CommunicationClusterImpl;
import autosar21.system.topology.impl.ConnectorImpl;
import autosar21.system.topology.impl.ECUCommunicationPortInstanceImpl;
import autosar21.system.topology.impl.ECUInstanceImpl;
import autosar21.system.topology.impl.FlexrayClusterImpl;
import autosar21.system.topology.impl.FlexrayCommunicationPortInstanceImpl;
import autosar21.system.topology.impl.HubImpl;
import autosar21.system.topology.impl.LINCommunicationPortInstanceImpl;
import autosar21.system.topology.impl.LINSubBusImpl;
import autosar21.system.topology.impl.PhysicalChannelImpl;
import autosar21.system.topology.impl.PhysicalMediumSegmentImpl;
import autosar21.system.topology.impl.SystemTopologyTypeImpl;
import autosar21.system.topology.impl.TopologyElementImpl;
import autosar21.system.topology.impl.UnspecifiedConnectionImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class TopologyFactoryImpl
extends EFactoryImpl
implements TopologyFactory {
    public static TopologyFactory init() {
        try {
            TopologyFactory theTopologyFactory = (TopologyFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/s/t");
            if (theTopologyFactory != null) {
                return theTopologyFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new TopologyFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createCANBus();
            }
            case 1: {
                return this.createCANCommunicationPortInstance();
            }
            case 2: {
                return this.createECUCommunicationPortInstance();
            }
            case 3: {
                return this.createConnector();
            }
            case 4: {
                return this.createECUInstance();
            }
            case 5: {
                return this.createTopologyElement();
            }
            case 6: {
                return this.createFlexrayCluster();
            }
            case 7: {
                return this.createFlexrayCommunicationPortInstance();
            }
            case 8: {
                return this.createHub();
            }
            case 9: {
                return this.createLINCommunicationPortInstance();
            }
            case 10: {
                return this.createLINSubBus();
            }
            case 11: {
                return this.createPhysicalChannel();
            }
            case 12: {
                return this.createPhysicalMediumSegment();
            }
            case 13: {
                return this.createSystemTopologyType();
            }
            case 14: {
                return this.createUnspecifiedConnection();
            }
            case 15: {
                return this.createCommunicationCluster();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 16: {
                return this.createCANBusCanAddressingModeEnumFromString(eDataType, initialValue);
            }
            case 17: {
                return this.createCANCommunicationPortInstanceProtocolVersionEnumFromString(eDataType, initialValue);
            }
            case 18: {
                return this.createECUInstancePowerSupplyEnumFromString(eDataType, initialValue);
            }
            case 19: {
                return this.createHubHubTypeEnumFromString(eDataType, initialValue);
            }
            case 20: {
                return this.createLINCommunicationPortInstanceProtocolVersionEnumFromString(eDataType, initialValue);
            }
            case 21: {
                return this.createLINCommunicationPortInstanceNodeRoleEnumFromString(eDataType, initialValue);
            }
            case 22: {
                return this.createPhysicalMediumSegmentPhysicalMediumTypeEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 16: {
                return this.convertCANBusCanAddressingModeEnumToString(eDataType, instanceValue);
            }
            case 17: {
                return this.convertCANCommunicationPortInstanceProtocolVersionEnumToString(eDataType, instanceValue);
            }
            case 18: {
                return this.convertECUInstancePowerSupplyEnumToString(eDataType, instanceValue);
            }
            case 19: {
                return this.convertHubHubTypeEnumToString(eDataType, instanceValue);
            }
            case 20: {
                return this.convertLINCommunicationPortInstanceProtocolVersionEnumToString(eDataType, instanceValue);
            }
            case 21: {
                return this.convertLINCommunicationPortInstanceNodeRoleEnumToString(eDataType, instanceValue);
            }
            case 22: {
                return this.convertPhysicalMediumSegmentPhysicalMediumTypeEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public CANBus createCANBus() {
        CANBusImpl canBus = new CANBusImpl();
        return canBus;
    }

    public CANCommunicationPortInstance createCANCommunicationPortInstance() {
        CANCommunicationPortInstanceImpl canCommunicationPortInstance = new CANCommunicationPortInstanceImpl();
        return canCommunicationPortInstance;
    }

    public ECUCommunicationPortInstance createECUCommunicationPortInstance() {
        ECUCommunicationPortInstanceImpl ecuCommunicationPortInstance = new ECUCommunicationPortInstanceImpl();
        return ecuCommunicationPortInstance;
    }

    public Connector createConnector() {
        ConnectorImpl connector = new ConnectorImpl();
        return connector;
    }

    public ECUInstance createECUInstance() {
        ECUInstanceImpl ecuInstance = new ECUInstanceImpl();
        return ecuInstance;
    }

    public TopologyElement createTopologyElement() {
        TopologyElementImpl topologyElement = new TopologyElementImpl();
        return topologyElement;
    }

    public FlexrayCluster createFlexrayCluster() {
        FlexrayClusterImpl flexrayCluster = new FlexrayClusterImpl();
        return flexrayCluster;
    }

    public FlexrayCommunicationPortInstance createFlexrayCommunicationPortInstance() {
        FlexrayCommunicationPortInstanceImpl flexrayCommunicationPortInstance = new FlexrayCommunicationPortInstanceImpl();
        return flexrayCommunicationPortInstance;
    }

    public Hub createHub() {
        HubImpl hub = new HubImpl();
        return hub;
    }

    public LINCommunicationPortInstance createLINCommunicationPortInstance() {
        LINCommunicationPortInstanceImpl linCommunicationPortInstance = new LINCommunicationPortInstanceImpl();
        return linCommunicationPortInstance;
    }

    public LINSubBus createLINSubBus() {
        LINSubBusImpl linSubBus = new LINSubBusImpl();
        return linSubBus;
    }

    public PhysicalChannel createPhysicalChannel() {
        PhysicalChannelImpl physicalChannel = new PhysicalChannelImpl();
        return physicalChannel;
    }

    public PhysicalMediumSegment createPhysicalMediumSegment() {
        PhysicalMediumSegmentImpl physicalMediumSegment = new PhysicalMediumSegmentImpl();
        return physicalMediumSegment;
    }

    public SystemTopologyType createSystemTopologyType() {
        SystemTopologyTypeImpl systemTopologyType = new SystemTopologyTypeImpl();
        return systemTopologyType;
    }

    public UnspecifiedConnection createUnspecifiedConnection() {
        UnspecifiedConnectionImpl unspecifiedConnection = new UnspecifiedConnectionImpl();
        return unspecifiedConnection;
    }

    public CommunicationCluster createCommunicationCluster() {
        CommunicationClusterImpl communicationCluster = new CommunicationClusterImpl();
        return communicationCluster;
    }

    public CANBusCanAddressingModeEnum createCANBusCanAddressingModeEnumFromString(EDataType eDataType, String initialValue) {
        CANBusCanAddressingModeEnum result = CANBusCanAddressingModeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertCANBusCanAddressingModeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public CANCommunicationPortInstanceProtocolVersionEnum createCANCommunicationPortInstanceProtocolVersionEnumFromString(EDataType eDataType, String initialValue) {
        CANCommunicationPortInstanceProtocolVersionEnum result = CANCommunicationPortInstanceProtocolVersionEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertCANCommunicationPortInstanceProtocolVersionEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ECUInstancePowerSupplyEnum createECUInstancePowerSupplyEnumFromString(EDataType eDataType, String initialValue) {
        ECUInstancePowerSupplyEnum result = ECUInstancePowerSupplyEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertECUInstancePowerSupplyEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public HubHubTypeEnum createHubHubTypeEnumFromString(EDataType eDataType, String initialValue) {
        HubHubTypeEnum result = HubHubTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertHubHubTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public LINCommunicationPortInstanceProtocolVersionEnum createLINCommunicationPortInstanceProtocolVersionEnumFromString(EDataType eDataType, String initialValue) {
        LINCommunicationPortInstanceProtocolVersionEnum result = LINCommunicationPortInstanceProtocolVersionEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertLINCommunicationPortInstanceProtocolVersionEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public LINCommunicationPortInstanceNodeRoleEnum createLINCommunicationPortInstanceNodeRoleEnumFromString(EDataType eDataType, String initialValue) {
        LINCommunicationPortInstanceNodeRoleEnum result = LINCommunicationPortInstanceNodeRoleEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertLINCommunicationPortInstanceNodeRoleEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public PhysicalMediumSegmentPhysicalMediumTypeEnum createPhysicalMediumSegmentPhysicalMediumTypeEnumFromString(EDataType eDataType, String initialValue) {
        PhysicalMediumSegmentPhysicalMediumTypeEnum result = PhysicalMediumSegmentPhysicalMediumTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertPhysicalMediumSegmentPhysicalMediumTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public TopologyPackage getTopologyPackage() {
        return (TopologyPackage)this.getEPackage();
    }

    @Deprecated
    public static TopologyPackage getPackage() {
        return TopologyPackage.eINSTANCE;
    }
}

