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
package com.etas.amd620.core.amd620.impl;

import com.etas.amd620.core.amd620.Amd620Factory;
import com.etas.amd620.core.amd620.Amd620Package;
import com.etas.amd620.core.amd620.AscetClass;
import com.etas.amd620.core.amd620.AscetComponent;
import com.etas.amd620.core.amd620.AscetComponentType;
import com.etas.amd620.core.amd620.AscetInterface;
import com.etas.amd620.core.amd620.AscetProject;
import com.etas.amd620.core.amd620.DefaultConfiguration;
import com.etas.amd620.core.amd620.impl.AscetClassImpl;
import com.etas.amd620.core.amd620.impl.AscetComponentImpl;
import com.etas.amd620.core.amd620.impl.AscetInterfaceImpl;
import com.etas.amd620.core.amd620.impl.AscetProjectImpl;
import com.etas.amd620.core.amd620.impl.DefaultConfigurationImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class Amd620FactoryImpl
extends EFactoryImpl
implements Amd620Factory {
    public static Amd620Factory init() {
        try {
            Amd620Factory theAmd620Factory = (Amd620Factory)EPackage.Registry.INSTANCE.getEFactory("http://www.etas.com/ascet/amd/620/amd620");
            if (theAmd620Factory != null) {
                return theAmd620Factory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new Amd620FactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createAscetComponent();
            }
            case 1: {
                return this.createAscetClass();
            }
            case 2: {
                return this.createAscetProject();
            }
            case 3: {
                return this.createDefaultConfiguration();
            }
            case 4: {
                return this.createAscetInterface();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 5: {
                return this.createAscetComponentTypeFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 5: {
                return this.convertAscetComponentTypeToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    @Override
    public AscetComponent createAscetComponent() {
        AscetComponentImpl ascetComponent = new AscetComponentImpl();
        return ascetComponent;
    }

    @Override
    public AscetClass createAscetClass() {
        AscetClassImpl ascetClass = new AscetClassImpl();
        return ascetClass;
    }

    @Override
    public AscetProject createAscetProject() {
        AscetProjectImpl ascetProject = new AscetProjectImpl();
        return ascetProject;
    }

    @Override
    public DefaultConfiguration createDefaultConfiguration() {
        DefaultConfigurationImpl defaultConfiguration = new DefaultConfigurationImpl();
        return defaultConfiguration;
    }

    @Override
    public AscetInterface createAscetInterface() {
        AscetInterfaceImpl ascetInterface = new AscetInterfaceImpl();
        return ascetInterface;
    }

    public AscetComponentType createAscetComponentTypeFromString(EDataType eDataType, String initialValue) {
        AscetComponentType result = AscetComponentType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertAscetComponentTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    @Override
    public Amd620Package getAmd620Package() {
        return (Amd620Package)this.getEPackage();
    }

    @Deprecated
    public static Amd620Package getPackage() {
        return Amd620Package.eINSTANCE;
    }
}

