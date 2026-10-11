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
package autosar40.system.fibex.fibex4ethernet.ethernetcommunication.impl;

import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.EthernetFrame;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.EthernetFrameTriggering;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.EthernetcommunicationFactory;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.EthernetcommunicationPackage;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.LogicAddress;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SoAdConfig;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SoAdConnectorType;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SoAdProtocolType;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SocketAddress;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SocketConnection;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SocketConnectionIpduIdentifier;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.impl.EthernetFrameImpl;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.impl.EthernetFrameTriggeringImpl;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.impl.LogicAddressImpl;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.impl.SoAdConfigImpl;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.impl.SocketAddressImpl;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.impl.SocketConnectionImpl;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.impl.SocketConnectionIpduIdentifierImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class EthernetcommunicationFactoryImpl
extends EFactoryImpl
implements EthernetcommunicationFactory {
    public static EthernetcommunicationFactory init() {
        try {
            EthernetcommunicationFactory theEthernetcommunicationFactory = (EthernetcommunicationFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/system/f/fe/ec");
            if (theEthernetcommunicationFactory != null) {
                return theEthernetcommunicationFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new EthernetcommunicationFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createEthernetFrame();
            }
            case 1: {
                return this.createEthernetFrameTriggering();
            }
            case 2: {
                return this.createLogicAddress();
            }
            case 3: {
                return this.createSoAdConfig();
            }
            case 4: {
                return this.createSocketAddress();
            }
            case 5: {
                return this.createSocketConnection();
            }
            case 6: {
                return this.createSocketConnectionIpduIdentifier();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 7: {
                return this.createSoAdConnectorTypeFromString(eDataType, initialValue);
            }
            case 8: {
                return this.createSoAdProtocolTypeFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 7: {
                return this.convertSoAdConnectorTypeToString(eDataType, instanceValue);
            }
            case 8: {
                return this.convertSoAdProtocolTypeToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public EthernetFrame createEthernetFrame() {
        EthernetFrameImpl ethernetFrame = new EthernetFrameImpl();
        return ethernetFrame;
    }

    public EthernetFrameTriggering createEthernetFrameTriggering() {
        EthernetFrameTriggeringImpl ethernetFrameTriggering = new EthernetFrameTriggeringImpl();
        return ethernetFrameTriggering;
    }

    public LogicAddress createLogicAddress() {
        LogicAddressImpl logicAddress = new LogicAddressImpl();
        return logicAddress;
    }

    public SoAdConfig createSoAdConfig() {
        SoAdConfigImpl soAdConfig = new SoAdConfigImpl();
        return soAdConfig;
    }

    public SocketAddress createSocketAddress() {
        SocketAddressImpl socketAddress = new SocketAddressImpl();
        return socketAddress;
    }

    public SocketConnection createSocketConnection() {
        SocketConnectionImpl socketConnection = new SocketConnectionImpl();
        return socketConnection;
    }

    public SocketConnectionIpduIdentifier createSocketConnectionIpduIdentifier() {
        SocketConnectionIpduIdentifierImpl socketConnectionIpduIdentifier = new SocketConnectionIpduIdentifierImpl();
        return socketConnectionIpduIdentifier;
    }

    public SoAdConnectorType createSoAdConnectorTypeFromString(EDataType eDataType, String initialValue) {
        SoAdConnectorType result = SoAdConnectorType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertSoAdConnectorTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public SoAdProtocolType createSoAdProtocolTypeFromString(EDataType eDataType, String initialValue) {
        SoAdProtocolType result = SoAdProtocolType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertSoAdProtocolTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public EthernetcommunicationPackage getEthernetcommunicationPackage() {
        return (EthernetcommunicationPackage)this.getEPackage();
    }

    @Deprecated
    public static EthernetcommunicationPackage getPackage() {
        return EthernetcommunicationPackage.eINSTANCE;
    }
}

