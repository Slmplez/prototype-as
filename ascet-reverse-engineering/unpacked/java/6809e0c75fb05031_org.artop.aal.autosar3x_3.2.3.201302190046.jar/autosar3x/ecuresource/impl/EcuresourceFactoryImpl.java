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
package autosar3x.ecuresource.impl;

import autosar3x.ecuresource.AssemblyHWConnection;
import autosar3x.ecuresource.DelegationHWConnection;
import autosar3x.ecuresource.ECU;
import autosar3x.ecuresource.EcuresourceFactory;
import autosar3x.ecuresource.EcuresourcePackage;
import autosar3x.ecuresource.HWContainer;
import autosar3x.ecuresource.HWElement;
import autosar3x.ecuresource.HWPin;
import autosar3x.ecuresource.HWPort;
import autosar3x.ecuresource.PinHWConnection;
import autosar3x.ecuresource.SignalTransformation;
import autosar3x.ecuresource.impl.AssemblyHWConnectionImpl;
import autosar3x.ecuresource.impl.DelegationHWConnectionImpl;
import autosar3x.ecuresource.impl.ECUImpl;
import autosar3x.ecuresource.impl.HWContainerImpl;
import autosar3x.ecuresource.impl.HWElementImpl;
import autosar3x.ecuresource.impl.HWPinImpl;
import autosar3x.ecuresource.impl.HWPortImpl;
import autosar3x.ecuresource.impl.PinHWConnectionImpl;
import autosar3x.ecuresource.impl.SignalTransformationImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class EcuresourceFactoryImpl
extends EFactoryImpl
implements EcuresourceFactory {
    public static EcuresourceFactory init() {
        try {
            EcuresourceFactory theEcuresourceFactory = (EcuresourceFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/ecur");
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
            case 8: {
                return this.createHWContainer();
            }
            case 9: {
                return this.createSignalTransformation();
            }
            case 10: {
                return this.createHWElement();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
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

    public HWContainer createHWContainer() {
        HWContainerImpl hwContainer = new HWContainerImpl();
        return hwContainer;
    }

    public SignalTransformation createSignalTransformation() {
        SignalTransformationImpl signalTransformation = new SignalTransformationImpl();
        return signalTransformation;
    }

    public HWElement createHWElement() {
        HWElementImpl hwElement = new HWElementImpl();
        return hwElement;
    }

    public EcuresourcePackage getEcuresourcePackage() {
        return (EcuresourcePackage)this.getEPackage();
    }

    @Deprecated
    public static EcuresourcePackage getPackage() {
        return EcuresourcePackage.eINSTANCE;
    }
}

