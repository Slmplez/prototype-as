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
package autosar3x.system.transportprotocols.impl;

import autosar3x.system.transportprotocols.CanTpAddressingFormatType;
import autosar3x.system.transportprotocols.CanTpChannelModeType;
import autosar3x.system.transportprotocols.CanTpConnectionChannel;
import autosar3x.system.transportprotocols.CanTpNode;
import autosar3x.system.transportprotocols.FlexRayTpConnection;
import autosar3x.system.transportprotocols.FlexrayIsoTpConnection;
import autosar3x.system.transportprotocols.FlexrayIsoTpConnectionControl;
import autosar3x.system.transportprotocols.FlexrayIsoTpEcu;
import autosar3x.system.transportprotocols.FlexrayIsoTpNode;
import autosar3x.system.transportprotocols.FlexrayIsoTpPduPool;
import autosar3x.system.transportprotocols.FlexrayTpChannel;
import autosar3x.system.transportprotocols.FlexrayTpNode;
import autosar3x.system.transportprotocols.LinTpChannel;
import autosar3x.system.transportprotocols.LinTpNode;
import autosar3x.system.transportprotocols.MaximumMessageLengthType;
import autosar3x.system.transportprotocols.NetworkTargetAddressType;
import autosar3x.system.transportprotocols.TpAckType;
import autosar3x.system.transportprotocols.TpAddress;
import autosar3x.system.transportprotocols.TransportprotocolsFactory;
import autosar3x.system.transportprotocols.TransportprotocolsPackage;
import autosar3x.system.transportprotocols.impl.CanTpConnectionChannelImpl;
import autosar3x.system.transportprotocols.impl.CanTpNodeImpl;
import autosar3x.system.transportprotocols.impl.FlexRayTpConnectionImpl;
import autosar3x.system.transportprotocols.impl.FlexrayIsoTpConnectionControlImpl;
import autosar3x.system.transportprotocols.impl.FlexrayIsoTpConnectionImpl;
import autosar3x.system.transportprotocols.impl.FlexrayIsoTpEcuImpl;
import autosar3x.system.transportprotocols.impl.FlexrayIsoTpNodeImpl;
import autosar3x.system.transportprotocols.impl.FlexrayIsoTpPduPoolImpl;
import autosar3x.system.transportprotocols.impl.FlexrayTpChannelImpl;
import autosar3x.system.transportprotocols.impl.FlexrayTpNodeImpl;
import autosar3x.system.transportprotocols.impl.LinTpChannelImpl;
import autosar3x.system.transportprotocols.impl.LinTpNodeImpl;
import autosar3x.system.transportprotocols.impl.TpAddressImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class TransportprotocolsFactoryImpl
extends EFactoryImpl
implements TransportprotocolsFactory {
    public static TransportprotocolsFactory init() {
        try {
            TransportprotocolsFactory theTransportprotocolsFactory = (TransportprotocolsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/s/tp");
            if (theTransportprotocolsFactory != null) {
                return theTransportprotocolsFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new TransportprotocolsFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createCanTpConnectionChannel();
            }
            case 1: {
                return this.createCanTpNode();
            }
            case 3: {
                return this.createTpAddress();
            }
            case 4: {
                return this.createFlexrayIsoTpConnection();
            }
            case 5: {
                return this.createFlexrayIsoTpPduPool();
            }
            case 6: {
                return this.createFlexrayIsoTpNode();
            }
            case 7: {
                return this.createFlexrayIsoTpConnectionControl();
            }
            case 8: {
                return this.createFlexrayIsoTpEcu();
            }
            case 9: {
                return this.createFlexrayTpChannel();
            }
            case 10: {
                return this.createFlexRayTpConnection();
            }
            case 11: {
                return this.createFlexrayTpNode();
            }
            case 12: {
                return this.createLinTpChannel();
            }
            case 13: {
                return this.createLinTpNode();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 15: {
                return this.createCanTpAddressingFormatTypeFromString(eDataType, initialValue);
            }
            case 16: {
                return this.createCanTpChannelModeTypeFromString(eDataType, initialValue);
            }
            case 17: {
                return this.createNetworkTargetAddressTypeFromString(eDataType, initialValue);
            }
            case 18: {
                return this.createTpAckTypeFromString(eDataType, initialValue);
            }
            case 19: {
                return this.createMaximumMessageLengthTypeFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 15: {
                return this.convertCanTpAddressingFormatTypeToString(eDataType, instanceValue);
            }
            case 16: {
                return this.convertCanTpChannelModeTypeToString(eDataType, instanceValue);
            }
            case 17: {
                return this.convertNetworkTargetAddressTypeToString(eDataType, instanceValue);
            }
            case 18: {
                return this.convertTpAckTypeToString(eDataType, instanceValue);
            }
            case 19: {
                return this.convertMaximumMessageLengthTypeToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public CanTpConnectionChannel createCanTpConnectionChannel() {
        CanTpConnectionChannelImpl canTpConnectionChannel = new CanTpConnectionChannelImpl();
        return canTpConnectionChannel;
    }

    public CanTpNode createCanTpNode() {
        CanTpNodeImpl canTpNode = new CanTpNodeImpl();
        return canTpNode;
    }

    public TpAddress createTpAddress() {
        TpAddressImpl tpAddress = new TpAddressImpl();
        return tpAddress;
    }

    public FlexrayIsoTpConnection createFlexrayIsoTpConnection() {
        FlexrayIsoTpConnectionImpl flexrayIsoTpConnection = new FlexrayIsoTpConnectionImpl();
        return flexrayIsoTpConnection;
    }

    public FlexrayIsoTpPduPool createFlexrayIsoTpPduPool() {
        FlexrayIsoTpPduPoolImpl flexrayIsoTpPduPool = new FlexrayIsoTpPduPoolImpl();
        return flexrayIsoTpPduPool;
    }

    public FlexrayIsoTpNode createFlexrayIsoTpNode() {
        FlexrayIsoTpNodeImpl flexrayIsoTpNode = new FlexrayIsoTpNodeImpl();
        return flexrayIsoTpNode;
    }

    public FlexrayIsoTpConnectionControl createFlexrayIsoTpConnectionControl() {
        FlexrayIsoTpConnectionControlImpl flexrayIsoTpConnectionControl = new FlexrayIsoTpConnectionControlImpl();
        return flexrayIsoTpConnectionControl;
    }

    public FlexrayIsoTpEcu createFlexrayIsoTpEcu() {
        FlexrayIsoTpEcuImpl flexrayIsoTpEcu = new FlexrayIsoTpEcuImpl();
        return flexrayIsoTpEcu;
    }

    public FlexrayTpChannel createFlexrayTpChannel() {
        FlexrayTpChannelImpl flexrayTpChannel = new FlexrayTpChannelImpl();
        return flexrayTpChannel;
    }

    public FlexRayTpConnection createFlexRayTpConnection() {
        FlexRayTpConnectionImpl flexRayTpConnection = new FlexRayTpConnectionImpl();
        return flexRayTpConnection;
    }

    public FlexrayTpNode createFlexrayTpNode() {
        FlexrayTpNodeImpl flexrayTpNode = new FlexrayTpNodeImpl();
        return flexrayTpNode;
    }

    public LinTpChannel createLinTpChannel() {
        LinTpChannelImpl linTpChannel = new LinTpChannelImpl();
        return linTpChannel;
    }

    public LinTpNode createLinTpNode() {
        LinTpNodeImpl linTpNode = new LinTpNodeImpl();
        return linTpNode;
    }

    public CanTpAddressingFormatType createCanTpAddressingFormatTypeFromString(EDataType eDataType, String initialValue) {
        CanTpAddressingFormatType result = CanTpAddressingFormatType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertCanTpAddressingFormatTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public CanTpChannelModeType createCanTpChannelModeTypeFromString(EDataType eDataType, String initialValue) {
        CanTpChannelModeType result = CanTpChannelModeType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertCanTpChannelModeTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public NetworkTargetAddressType createNetworkTargetAddressTypeFromString(EDataType eDataType, String initialValue) {
        NetworkTargetAddressType result = NetworkTargetAddressType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertNetworkTargetAddressTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public TpAckType createTpAckTypeFromString(EDataType eDataType, String initialValue) {
        TpAckType result = TpAckType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertTpAckTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public MaximumMessageLengthType createMaximumMessageLengthTypeFromString(EDataType eDataType, String initialValue) {
        MaximumMessageLengthType result = MaximumMessageLengthType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertMaximumMessageLengthTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public TransportprotocolsPackage getTransportprotocolsPackage() {
        return (TransportprotocolsPackage)this.getEPackage();
    }

    @Deprecated
    public static TransportprotocolsPackage getPackage() {
        return TransportprotocolsPackage.eINSTANCE;
    }
}

