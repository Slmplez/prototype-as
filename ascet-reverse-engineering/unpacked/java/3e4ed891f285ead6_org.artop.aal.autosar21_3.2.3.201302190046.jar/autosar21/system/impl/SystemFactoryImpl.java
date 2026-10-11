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
package autosar21.system.impl;

import autosar21.system.CommunicationMatrixInstance;
import autosar21.system.GatewayInstance;
import autosar21.system.SoftwareComposition;
import autosar21.system.System;
import autosar21.system.SystemCommunication;
import autosar21.system.SystemFactory;
import autosar21.system.SystemMapping;
import autosar21.system.SystemPackage;
import autosar21.system.SystemTopologyInstance;
import autosar21.system.impl.CommunicationMatrixInstanceImpl;
import autosar21.system.impl.GatewayInstanceImpl;
import autosar21.system.impl.SoftwareCompositionImpl;
import autosar21.system.impl.SystemCommunicationImpl;
import autosar21.system.impl.SystemImpl;
import autosar21.system.impl.SystemMappingImpl;
import autosar21.system.impl.SystemTopologyInstanceImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class SystemFactoryImpl
extends EFactoryImpl
implements SystemFactory {
    public static SystemFactory init() {
        try {
            SystemFactory theSystemFactory = (SystemFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/s");
            if (theSystemFactory != null) {
                return theSystemFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new SystemFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createSystemTopologyInstance();
            }
            case 1: {
                return this.createCommunicationMatrixInstance();
            }
            case 2: {
                return this.createGatewayInstance();
            }
            case 3: {
                return this.createSystem();
            }
            case 4: {
                return this.createSystemCommunication();
            }
            case 5: {
                return this.createSystemMapping();
            }
            case 6: {
                return this.createSoftwareComposition();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public SystemTopologyInstance createSystemTopologyInstance() {
        SystemTopologyInstanceImpl systemTopologyInstance = new SystemTopologyInstanceImpl();
        return systemTopologyInstance;
    }

    public CommunicationMatrixInstance createCommunicationMatrixInstance() {
        CommunicationMatrixInstanceImpl communicationMatrixInstance = new CommunicationMatrixInstanceImpl();
        return communicationMatrixInstance;
    }

    public GatewayInstance createGatewayInstance() {
        GatewayInstanceImpl gatewayInstance = new GatewayInstanceImpl();
        return gatewayInstance;
    }

    public System createSystem() {
        SystemImpl system = new SystemImpl();
        return system;
    }

    public SystemCommunication createSystemCommunication() {
        SystemCommunicationImpl systemCommunication = new SystemCommunicationImpl();
        return systemCommunication;
    }

    public SystemMapping createSystemMapping() {
        SystemMappingImpl systemMapping = new SystemMappingImpl();
        return systemMapping;
    }

    public SoftwareComposition createSoftwareComposition() {
        SoftwareCompositionImpl softwareComposition = new SoftwareCompositionImpl();
        return softwareComposition;
    }

    public SystemPackage getSystemPackage() {
        return (SystemPackage)this.getEPackage();
    }

    @Deprecated
    public static SystemPackage getPackage() {
        return SystemPackage.eINSTANCE;
    }
}

