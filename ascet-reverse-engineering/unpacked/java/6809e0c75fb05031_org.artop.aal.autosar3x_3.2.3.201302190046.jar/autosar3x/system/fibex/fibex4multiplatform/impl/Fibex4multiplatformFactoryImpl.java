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
package autosar3x.system.fibex.fibex4multiplatform.impl;

import autosar3x.system.fibex.fibex4multiplatform.DefaultValueElement;
import autosar3x.system.fibex.fibex4multiplatform.Fibex4multiplatformFactory;
import autosar3x.system.fibex.fibex4multiplatform.Fibex4multiplatformPackage;
import autosar3x.system.fibex.fibex4multiplatform.FrameMapping;
import autosar3x.system.fibex.fibex4multiplatform.Gateway;
import autosar3x.system.fibex.fibex4multiplatform.IPduMapping;
import autosar3x.system.fibex.fibex4multiplatform.PduMappingDefaultValue;
import autosar3x.system.fibex.fibex4multiplatform.SignalMapping;
import autosar3x.system.fibex.fibex4multiplatform.SourceIPduRef;
import autosar3x.system.fibex.fibex4multiplatform.TargetIPduRef;
import autosar3x.system.fibex.fibex4multiplatform.impl.DefaultValueElementImpl;
import autosar3x.system.fibex.fibex4multiplatform.impl.FrameMappingImpl;
import autosar3x.system.fibex.fibex4multiplatform.impl.GatewayImpl;
import autosar3x.system.fibex.fibex4multiplatform.impl.IPduMappingImpl;
import autosar3x.system.fibex.fibex4multiplatform.impl.PduMappingDefaultValueImpl;
import autosar3x.system.fibex.fibex4multiplatform.impl.SignalMappingImpl;
import autosar3x.system.fibex.fibex4multiplatform.impl.SourceIPduRefImpl;
import autosar3x.system.fibex.fibex4multiplatform.impl.TargetIPduRefImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class Fibex4multiplatformFactoryImpl
extends EFactoryImpl
implements Fibex4multiplatformFactory {
    public static Fibex4multiplatformFactory init() {
        try {
            Fibex4multiplatformFactory theFibex4multiplatformFactory = (Fibex4multiplatformFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/s/f/fm");
            if (theFibex4multiplatformFactory != null) {
                return theFibex4multiplatformFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new Fibex4multiplatformFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createDefaultValueElement();
            }
            case 1: {
                return this.createFrameMapping();
            }
            case 2: {
                return this.createGateway();
            }
            case 3: {
                return this.createSignalMapping();
            }
            case 4: {
                return this.createIPduMapping();
            }
            case 5: {
                return this.createSourceIPduRef();
            }
            case 6: {
                return this.createPduMappingDefaultValue();
            }
            case 7: {
                return this.createTargetIPduRef();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public DefaultValueElement createDefaultValueElement() {
        DefaultValueElementImpl defaultValueElement = new DefaultValueElementImpl();
        return defaultValueElement;
    }

    public FrameMapping createFrameMapping() {
        FrameMappingImpl frameMapping = new FrameMappingImpl();
        return frameMapping;
    }

    public Gateway createGateway() {
        GatewayImpl gateway = new GatewayImpl();
        return gateway;
    }

    public SignalMapping createSignalMapping() {
        SignalMappingImpl signalMapping = new SignalMappingImpl();
        return signalMapping;
    }

    public IPduMapping createIPduMapping() {
        IPduMappingImpl iPduMapping = new IPduMappingImpl();
        return iPduMapping;
    }

    public SourceIPduRef createSourceIPduRef() {
        SourceIPduRefImpl sourceIPduRef = new SourceIPduRefImpl();
        return sourceIPduRef;
    }

    public PduMappingDefaultValue createPduMappingDefaultValue() {
        PduMappingDefaultValueImpl pduMappingDefaultValue = new PduMappingDefaultValueImpl();
        return pduMappingDefaultValue;
    }

    public TargetIPduRef createTargetIPduRef() {
        TargetIPduRefImpl targetIPduRef = new TargetIPduRefImpl();
        return targetIPduRef;
    }

    public Fibex4multiplatformPackage getFibex4multiplatformPackage() {
        return (Fibex4multiplatformPackage)this.getEPackage();
    }

    @Deprecated
    public static Fibex4multiplatformPackage getPackage() {
        return Fibex4multiplatformPackage.eINSTANCE;
    }
}

