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
package autosar21.ecuresource.impl;

import autosar21.ecuresource.AssemblyHWConnection;
import autosar21.ecuresource.DelegationHWConnection;
import autosar21.ecuresource.ECU;
import autosar21.ecuresource.EcuresourceFactory;
import autosar21.ecuresource.EcuresourcePackage;
import autosar21.ecuresource.HWContainer;
import autosar21.ecuresource.HWPin;
import autosar21.ecuresource.HWPort;
import autosar21.ecuresource.HWPortDirectionEnum;
import autosar21.ecuresource.PinHWConnection;
import autosar21.ecuresource.SignalTransformation;
import autosar21.ecuresource.impl.AssemblyHWConnectionImpl;
import autosar21.ecuresource.impl.DelegationHWConnectionImpl;
import autosar21.ecuresource.impl.ECUImpl;
import autosar21.ecuresource.impl.HWContainerImpl;
import autosar21.ecuresource.impl.HWPinImpl;
import autosar21.ecuresource.impl.HWPortImpl;
import autosar21.ecuresource.impl.PinHWConnectionImpl;
import autosar21.ecuresource.impl.SignalTransformationImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class EcuresourceFactoryImpl
extends EFactoryImpl
implements EcuresourceFactory {
    public static EcuresourceFactory init() {
        try {
            EcuresourceFactory theEcuresourceFactory = (EcuresourceFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/ecur");
            if (theEcuresourceFactory != null) {
                return theEcuresourceFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new EcuresourceFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createAssemblyHWConnection();
            }
            case 2: {
                return this.createPinHWConnection();
            }
            case 3: {
                return this.createHWPin();
            }
            case 4: {
                return this.createHWPort();
            }
            case 5: {
                return this.createDelegationHWConnection();
            }
            case 6: {
                return this.createECU();
            }
            case 9: {
                return this.createSignalTransformation();
            }
            case 10: {
                return this.createHWContainer();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 11: {
                return this.createHWPortDirectionEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 11: {
                return this.convertHWPortDirectionEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public AssemblyHWConnection createAssemblyHWConnection() {
        AssemblyHWConnectionImpl assemblyHWConnection = new AssemblyHWConnectionImpl();
        return assemblyHWConnection;
    }

    public PinHWConnection createPinHWConnection() {
        PinHWConnectionImpl pinHWConnection = new PinHWConnectionImpl();
        return pinHWConnection;
    }

    public HWPin createHWPin() {
        HWPinImpl hwPin = new HWPinImpl();
        return hwPin;
    }

    public HWPort createHWPort() {
        HWPortImpl hwPort = new HWPortImpl();
        return hwPort;
    }

    public DelegationHWConnection createDelegationHWConnection() {
        DelegationHWConnectionImpl delegationHWConnection = new DelegationHWConnectionImpl();
        return delegationHWConnection;
    }

    public ECU createECU() {
        ECUImpl ecu = new ECUImpl();
        return ecu;
    }

    public SignalTransformation createSignalTransformation() {
        SignalTransformationImpl signalTransformation = new SignalTransformationImpl();
        return signalTransformation;
    }

    public HWContainer createHWContainer() {
        HWContainerImpl hwContainer = new HWContainerImpl();
        return hwContainer;
    }

    public HWPortDirectionEnum createHWPortDirectionEnumFromString(EDataType eDataType, String initialValue) {
        HWPortDirectionEnum result = HWPortDirectionEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertHWPortDirectionEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public EcuresourcePackage getEcuresourcePackage() {
        return (EcuresourcePackage)this.getEPackage();
    }

    @Deprecated
    public static EcuresourcePackage getPackage() {
        return EcuresourcePackage.eINSTANCE;
    }
}

