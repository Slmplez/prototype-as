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
package autosar21.system.communicationprotocol.impl;

import autosar21.system.communicationprotocol.CommProtocolElement;
import autosar21.system.communicationprotocol.CommProtocolElementDirectionEnum;
import autosar21.system.communicationprotocol.CommProtocolFrameRole;
import autosar21.system.communicationprotocol.CommProtocolInstance;
import autosar21.system.communicationprotocol.CommProtocolSignalGroupRole;
import autosar21.system.communicationprotocol.CommProtocolSignalRole;
import autosar21.system.communicationprotocol.CommProtocolType;
import autosar21.system.communicationprotocol.CommunicationprotocolFactory;
import autosar21.system.communicationprotocol.CommunicationprotocolPackage;
import autosar21.system.communicationprotocol.impl.CommProtocolElementImpl;
import autosar21.system.communicationprotocol.impl.CommProtocolFrameRoleImpl;
import autosar21.system.communicationprotocol.impl.CommProtocolInstanceImpl;
import autosar21.system.communicationprotocol.impl.CommProtocolSignalGroupRoleImpl;
import autosar21.system.communicationprotocol.impl.CommProtocolSignalRoleImpl;
import autosar21.system.communicationprotocol.impl.CommProtocolTypeImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class CommunicationprotocolFactoryImpl
extends EFactoryImpl
implements CommunicationprotocolFactory {
    public static CommunicationprotocolFactory init() {
        try {
            CommunicationprotocolFactory theCommunicationprotocolFactory = (CommunicationprotocolFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/s/cp");
            if (theCommunicationprotocolFactory != null) {
                return theCommunicationprotocolFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new CommunicationprotocolFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createCommProtocolElement();
            }
            case 1: {
                return this.createCommProtocolFrameRole();
            }
            case 2: {
                return this.createCommProtocolSignalGroupRole();
            }
            case 3: {
                return this.createCommProtocolSignalRole();
            }
            case 4: {
                return this.createCommProtocolType();
            }
            case 5: {
                return this.createCommProtocolInstance();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 6: {
                return this.createCommProtocolElementDirectionEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 6: {
                return this.convertCommProtocolElementDirectionEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public CommProtocolElement createCommProtocolElement() {
        CommProtocolElementImpl commProtocolElement = new CommProtocolElementImpl();
        return commProtocolElement;
    }

    public CommProtocolFrameRole createCommProtocolFrameRole() {
        CommProtocolFrameRoleImpl commProtocolFrameRole = new CommProtocolFrameRoleImpl();
        return commProtocolFrameRole;
    }

    public CommProtocolSignalGroupRole createCommProtocolSignalGroupRole() {
        CommProtocolSignalGroupRoleImpl commProtocolSignalGroupRole = new CommProtocolSignalGroupRoleImpl();
        return commProtocolSignalGroupRole;
    }

    public CommProtocolSignalRole createCommProtocolSignalRole() {
        CommProtocolSignalRoleImpl commProtocolSignalRole = new CommProtocolSignalRoleImpl();
        return commProtocolSignalRole;
    }

    public CommProtocolType createCommProtocolType() {
        CommProtocolTypeImpl commProtocolType = new CommProtocolTypeImpl();
        return commProtocolType;
    }

    public CommProtocolInstance createCommProtocolInstance() {
        CommProtocolInstanceImpl commProtocolInstance = new CommProtocolInstanceImpl();
        return commProtocolInstance;
    }

    public CommProtocolElementDirectionEnum createCommProtocolElementDirectionEnumFromString(EDataType eDataType, String initialValue) {
        CommProtocolElementDirectionEnum result = CommProtocolElementDirectionEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertCommProtocolElementDirectionEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public CommunicationprotocolPackage getCommunicationprotocolPackage() {
        return (CommunicationprotocolPackage)this.getEPackage();
    }

    @Deprecated
    public static CommunicationprotocolPackage getPackage() {
        return CommunicationprotocolPackage.eINSTANCE;
    }
}

