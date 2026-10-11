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
package autosar21.system.communicationprotocol.instanceref.impl;

import autosar21.system.communicationprotocol.instanceref.CommProtocolFrameRoleFrameInstance;
import autosar21.system.communicationprotocol.instanceref.CommProtocolFrameRoleProtocolElement;
import autosar21.system.communicationprotocol.instanceref.CommProtocolSignalGroupRoleProtocolElement;
import autosar21.system.communicationprotocol.instanceref.CommProtocolSignalRoleProtocolElement;
import autosar21.system.communicationprotocol.instanceref.InstancerefFactory;
import autosar21.system.communicationprotocol.instanceref.InstancerefPackage;
import autosar21.system.communicationprotocol.instanceref.impl.CommProtocolFrameRoleFrameInstanceImpl;
import autosar21.system.communicationprotocol.instanceref.impl.CommProtocolFrameRoleProtocolElementImpl;
import autosar21.system.communicationprotocol.instanceref.impl.CommProtocolSignalGroupRoleProtocolElementImpl;
import autosar21.system.communicationprotocol.instanceref.impl.CommProtocolSignalRoleProtocolElementImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class InstancerefFactoryImpl
extends EFactoryImpl
implements InstancerefFactory {
    public static InstancerefFactory init() {
        try {
            InstancerefFactory theInstancerefFactory = (InstancerefFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/s/cp/r");
            if (theInstancerefFactory != null) {
                return theInstancerefFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new InstancerefFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createCommProtocolFrameRoleFrameInstance();
            }
            case 1: {
                return this.createCommProtocolFrameRoleProtocolElement();
            }
            case 2: {
                return this.createCommProtocolSignalGroupRoleProtocolElement();
            }
            case 3: {
                return this.createCommProtocolSignalRoleProtocolElement();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public CommProtocolFrameRoleFrameInstance createCommProtocolFrameRoleFrameInstance() {
        CommProtocolFrameRoleFrameInstanceImpl commProtocolFrameRoleFrameInstance = new CommProtocolFrameRoleFrameInstanceImpl();
        return commProtocolFrameRoleFrameInstance;
    }

    public CommProtocolFrameRoleProtocolElement createCommProtocolFrameRoleProtocolElement() {
        CommProtocolFrameRoleProtocolElementImpl commProtocolFrameRoleProtocolElement = new CommProtocolFrameRoleProtocolElementImpl();
        return commProtocolFrameRoleProtocolElement;
    }

    public CommProtocolSignalGroupRoleProtocolElement createCommProtocolSignalGroupRoleProtocolElement() {
        CommProtocolSignalGroupRoleProtocolElementImpl commProtocolSignalGroupRoleProtocolElement = new CommProtocolSignalGroupRoleProtocolElementImpl();
        return commProtocolSignalGroupRoleProtocolElement;
    }

    public CommProtocolSignalRoleProtocolElement createCommProtocolSignalRoleProtocolElement() {
        CommProtocolSignalRoleProtocolElementImpl commProtocolSignalRoleProtocolElement = new CommProtocolSignalRoleProtocolElementImpl();
        return commProtocolSignalRoleProtocolElement;
    }

    public InstancerefPackage getInstancerefPackage() {
        return (InstancerefPackage)this.getEPackage();
    }

    @Deprecated
    public static InstancerefPackage getPackage() {
        return InstancerefPackage.eINSTANCE;
    }
}

