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
package autosar40.system.transportprotocols.impl;

import autosar40.system.transportprotocols.CanTpAddress;
import autosar40.system.transportprotocols.CanTpAddressingFormatType;
import autosar40.system.transportprotocols.CanTpChannel;
import autosar40.system.transportprotocols.CanTpChannelModeType;
import autosar40.system.transportprotocols.CanTpConfig;
import autosar40.system.transportprotocols.CanTpConnection;
import autosar40.system.transportprotocols.CanTpEcu;
import autosar40.system.transportprotocols.CanTpNode;
import autosar40.system.transportprotocols.FlexrayArTpChannel;
import autosar40.system.transportprotocols.FlexrayArTpConfig;
import autosar40.system.transportprotocols.FlexrayArTpConnection;
import autosar40.system.transportprotocols.FlexrayArTpNode;
import autosar40.system.transportprotocols.FlexrayTpConfig;
import autosar40.system.transportprotocols.FlexrayTpConnection;
import autosar40.system.transportprotocols.FlexrayTpConnectionControl;
import autosar40.system.transportprotocols.FlexrayTpEcu;
import autosar40.system.transportprotocols.FlexrayTpNode;
import autosar40.system.transportprotocols.FlexrayTpPduPool;
import autosar40.system.transportprotocols.FrArTpAckType;
import autosar40.system.transportprotocols.J1939TpConfig;
import autosar40.system.transportprotocols.J1939TpConnection;
import autosar40.system.transportprotocols.J1939TpNode;
import autosar40.system.transportprotocols.LinTpConfig;
import autosar40.system.transportprotocols.LinTpConnection;
import autosar40.system.transportprotocols.LinTpNode;
import autosar40.system.transportprotocols.MaximumMessageLengthType;
import autosar40.system.transportprotocols.NetworkTargetAddressType;
import autosar40.system.transportprotocols.TpAckType;
import autosar40.system.transportprotocols.TpAddress;
import autosar40.system.transportprotocols.TransportprotocolsFactory;
import autosar40.system.transportprotocols.TransportprotocolsPackage;
import autosar40.system.transportprotocols.impl.CanTpAddressImpl;
import autosar40.system.transportprotocols.impl.CanTpChannelImpl;
import autosar40.system.transportprotocols.impl.CanTpConfigImpl;
import autosar40.system.transportprotocols.impl.CanTpConnectionImpl;
import autosar40.system.transportprotocols.impl.CanTpEcuImpl;
import autosar40.system.transportprotocols.impl.CanTpNodeImpl;
import autosar40.system.transportprotocols.impl.FlexrayArTpChannelImpl;
import autosar40.system.transportprotocols.impl.FlexrayArTpConfigImpl;
import autosar40.system.transportprotocols.impl.FlexrayArTpConnectionImpl;
import autosar40.system.transportprotocols.impl.FlexrayArTpNodeImpl;
import autosar40.system.transportprotocols.impl.FlexrayTpConfigImpl;
import autosar40.system.transportprotocols.impl.FlexrayTpConnectionControlImpl;
import autosar40.system.transportprotocols.impl.FlexrayTpConnectionImpl;
import autosar40.system.transportprotocols.impl.FlexrayTpEcuImpl;
import autosar40.system.transportprotocols.impl.FlexrayTpNodeImpl;
import autosar40.system.transportprotocols.impl.FlexrayTpPduPoolImpl;
import autosar40.system.transportprotocols.impl.J1939TpConfigImpl;
import autosar40.system.transportprotocols.impl.J1939TpConnectionImpl;
import autosar40.system.transportprotocols.impl.J1939TpNodeImpl;
import autosar40.system.transportprotocols.impl.LinTpConfigImpl;
import autosar40.system.transportprotocols.impl.LinTpConnectionImpl;
import autosar40.system.transportprotocols.impl.LinTpNodeImpl;
import autosar40.system.transportprotocols.impl.TpAddressImpl;
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
            TransportprotocolsFactory theTransportprotocolsFactory = (TransportprotocolsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/system/tp");
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
                return this.createCanTpAddress();
            }
            case 1: {
                return this.createCanTpChannel();
            }
            case 2: {
                return this.createCanTpConfig();
            }
            case 4: {
                return this.createCanTpConnection();
            }
            case 5: {
                return this.createCanTpNode();
            }
            case 6: {
                return this.createCanTpEcu();
            }
            case 7: {
                return this.createFlexrayArTpChannel();
            }
            case 8: {
                return this.createFlexrayArTpConnection();
            }
            case 9: {
                return this.createFlexrayArTpNode();
            }
            case 10: {
                return this.createFlexrayArTpConfig();
            }
            case 11: {
                return this.createFlexrayTpConfig();
            }
            case 12: {
                return this.createFlexrayTpConnectionControl();
            }
            case 13: {
                return this.createFlexrayTpEcu();
            }
            case 14: {
                return this.createFlexrayTpConnection();
            }
            case 15: {
                return this.createFlexrayTpPduPool();
            }
            case 16: {
                return this.createFlexrayTpNode();
            }
            case 17: {
                return this.createJ1939TpConfig();
            }
            case 18: {
                return this.createJ1939TpNode();
            }
            case 19: {
                return this.createJ1939TpConnection();
            }
            case 20: {
                return this.createLinTpConfig();
            }
            case 21: {
                return this.createLinTpConnection();
            }
            case 22: {
                return this.createLinTpNode();
            }
            case 23: {
                return this.createTpAddress();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 24: {
                return this.createCanTpAddressingFormatTypeFromString(eDataType, initialValue);
            }
            case 25: {
                return this.createCanTpChannelModeTypeFromString(eDataType, initialValue);
            }
            case 26: {
                return this.createNetworkTargetAddressTypeFromString(eDataType, initialValue);
            }
            case 27: {
                return this.createFrArTpAckTypeFromString(eDataType, initialValue);
            }
            case 28: {
                return this.createMaximumMessageLengthTypeFromString(eDataType, initialValue);
            }
            case 29: {
                return this.createTpAckTypeFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 24: {
                return this.convertCanTpAddressingFormatTypeToString(eDataType, instanceValue);
            }
            case 25: {
                return this.convertCanTpChannelModeTypeToString(eDataType, instanceValue);
            }
            case 26: {
                return this.convertNetworkTargetAddressTypeToString(eDataType, instanceValue);
            }
            case 27: {
                return this.convertFrArTpAckTypeToString(eDataType, instanceValue);
            }
            case 28: {
                return this.convertMaximumMessageLengthTypeToString(eDataType, instanceValue);
            }
            case 29: {
                return this.convertTpAckTypeToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public CanTpAddress createCanTpAddress() {
        CanTpAddressImpl canTpAddress = new CanTpAddressImpl();
        return canTpAddress;
    }

    public CanTpChannel createCanTpChannel() {
        CanTpChannelImpl canTpChannel = new CanTpChannelImpl();
        return canTpChannel;
    }

    public CanTpConfig createCanTpConfig() {
        CanTpConfigImpl canTpConfig = new CanTpConfigImpl();
        return canTpConfig;
    }

    public CanTpConnection createCanTpConnection() {
        CanTpConnectionImpl canTpConnection = new CanTpConnectionImpl();
        return canTpConnection;
    }

    public CanTpNode createCanTpNode() {
        CanTpNodeImpl canTpNode = new CanTpNodeImpl();
        return canTpNode;
    }

    public CanTpEcu createCanTpEcu() {
        CanTpEcuImpl canTpEcu = new CanTpEcuImpl();
        return canTpEcu;
    }

    public FlexrayArTpChannel createFlexrayArTpChannel() {
        FlexrayArTpChannelImpl flexrayArTpChannel = new FlexrayArTpChannelImpl();
        return flexrayArTpChannel;
    }

    public FlexrayArTpConnection createFlexrayArTpConnection() {
        FlexrayArTpConnectionImpl flexrayArTpConnection = new FlexrayArTpConnectionImpl();
        return flexrayArTpConnection;
    }

    public FlexrayArTpNode createFlexrayArTpNode() {
        FlexrayArTpNodeImpl flexrayArTpNode = new FlexrayArTpNodeImpl();
        return flexrayArTpNode;
    }

    public FlexrayArTpConfig createFlexrayArTpConfig() {
        FlexrayArTpConfigImpl flexrayArTpConfig = new FlexrayArTpConfigImpl();
        return flexrayArTpConfig;
    }

    public FlexrayTpConfig createFlexrayTpConfig() {
        FlexrayTpConfigImpl flexrayTpConfig = new FlexrayTpConfigImpl();
        return flexrayTpConfig;
    }

    public FlexrayTpConnectionControl createFlexrayTpConnectionControl() {
        FlexrayTpConnectionControlImpl flexrayTpConnectionControl = new FlexrayTpConnectionControlImpl();
        return flexrayTpConnectionControl;
    }

    public FlexrayTpEcu createFlexrayTpEcu() {
        FlexrayTpEcuImpl flexrayTpEcu = new FlexrayTpEcuImpl();
        return flexrayTpEcu;
    }

    public FlexrayTpConnection createFlexrayTpConnection() {
        FlexrayTpConnectionImpl flexrayTpConnection = new FlexrayTpConnectionImpl();
        return flexrayTpConnection;
    }

    public FlexrayTpPduPool createFlexrayTpPduPool() {
        FlexrayTpPduPoolImpl flexrayTpPduPool = new FlexrayTpPduPoolImpl();
        return flexrayTpPduPool;
    }

    public FlexrayTpNode createFlexrayTpNode() {
        FlexrayTpNodeImpl flexrayTpNode = new FlexrayTpNodeImpl();
        return flexrayTpNode;
    }

    public J1939TpConfig createJ1939TpConfig() {
        J1939TpConfigImpl j1939TpConfig = new J1939TpConfigImpl();
        return j1939TpConfig;
    }

    public J1939TpNode createJ1939TpNode() {
        J1939TpNodeImpl j1939TpNode = new J1939TpNodeImpl();
        return j1939TpNode;
    }

    public J1939TpConnection createJ1939TpConnection() {
        J1939TpConnectionImpl j1939TpConnection = new J1939TpConnectionImpl();
        return j1939TpConnection;
    }

    public LinTpConfig createLinTpConfig() {
        LinTpConfigImpl linTpConfig = new LinTpConfigImpl();
        return linTpConfig;
    }

    public LinTpConnection createLinTpConnection() {
        LinTpConnectionImpl linTpConnection = new LinTpConnectionImpl();
        return linTpConnection;
    }

    public LinTpNode createLinTpNode() {
        LinTpNodeImpl linTpNode = new LinTpNodeImpl();
        return linTpNode;
    }

    public TpAddress createTpAddress() {
        TpAddressImpl tpAddress = new TpAddressImpl();
        return tpAddress;
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

    public FrArTpAckType createFrArTpAckTypeFromString(EDataType eDataType, String initialValue) {
        FrArTpAckType result = FrArTpAckType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertFrArTpAckTypeToString(EDataType eDataType, Object instanceValue) {
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

    public TransportprotocolsPackage getTransportprotocolsPackage() {
        return (TransportprotocolsPackage)this.getEPackage();
    }

    @Deprecated
    public static TransportprotocolsPackage getPackage() {
        return TransportprotocolsPackage.eINSTANCE;
    }
}

