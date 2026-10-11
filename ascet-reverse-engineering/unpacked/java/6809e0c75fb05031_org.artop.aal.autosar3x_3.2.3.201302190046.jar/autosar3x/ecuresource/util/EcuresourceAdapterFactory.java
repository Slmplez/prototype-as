/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.ecuresource.util;

import autosar3x.ecuresource.AssemblyHWConnection;
import autosar3x.ecuresource.DelegationHWConnection;
import autosar3x.ecuresource.ECU;
import autosar3x.ecuresource.EcuresourcePackage;
import autosar3x.ecuresource.HWConnection;
import autosar3x.ecuresource.HWContainer;
import autosar3x.ecuresource.HWElement;
import autosar3x.ecuresource.HWElementContainer;
import autosar3x.ecuresource.HWPin;
import autosar3x.ecuresource.HWPort;
import autosar3x.ecuresource.PinHWConnection;
import autosar3x.ecuresource.SignalTransformation;
import autosar3x.ecuresource.util.EcuresourceSwitch;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class EcuresourceAdapterFactory
extends AdapterFactoryImpl {
    protected static EcuresourcePackage modelPackage;
    protected EcuresourceSwitch<Adapter> modelSwitch = new EcuresourceSwitch<Adapter>(){

        @Override
        public Adapter caseAssemblyHWConnection(AssemblyHWConnection object) {
            return EcuresourceAdapterFactory.this.createAssemblyHWConnectionAdapter();
        }

        @Override
        public Adapter caseHWConnection(HWConnection object) {
            return EcuresourceAdapterFactory.this.createHWConnectionAdapter();
        }

        @Override
        public Adapter casePinHWConnection(PinHWConnection object) {
            return EcuresourceAdapterFactory.this.createPinHWConnectionAdapter();
        }

        @Override
        public Adapter caseHWPin(HWPin object) {
            return EcuresourceAdapterFactory.this.createHWPinAdapter();
        }

        @Override
        public Adapter caseHWPort(HWPort object) {
            return EcuresourceAdapterFactory.this.createHWPortAdapter();
        }

        @Override
        public Adapter caseDelegationHWConnection(DelegationHWConnection object) {
            return EcuresourceAdapterFactory.this.createDelegationHWConnectionAdapter();
        }

        @Override
        public Adapter caseECU(ECU object) {
            return EcuresourceAdapterFactory.this.createECUAdapter();
        }

        @Override
        public Adapter caseHWElementContainer(HWElementContainer object) {
            return EcuresourceAdapterFactory.this.createHWElementContainerAdapter();
        }

        @Override
        public Adapter caseHWContainer(HWContainer object) {
            return EcuresourceAdapterFactory.this.createHWContainerAdapter();
        }

        @Override
        public Adapter caseSignalTransformation(SignalTransformation object) {
            return EcuresourceAdapterFactory.this.createSignalTransformationAdapter();
        }

        @Override
        public Adapter caseHWElement(HWElement object) {
            return EcuresourceAdapterFactory.this.createHWElementAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return EcuresourceAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return EcuresourceAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return EcuresourceAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return EcuresourceAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return EcuresourceAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return EcuresourceAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return EcuresourceAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return EcuresourceAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return EcuresourceAdapterFactory.this.createEObjectAdapter();
        }
    };

    public EcuresourceAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = EcuresourcePackage.eINSTANCE;
        }
    }

    public boolean isFactoryForType(Object object) {
        if (object == modelPackage) {
            return true;
        }
        if (object instanceof EObject) {
            return ((EObject)object).eClass().getEPackage() == modelPackage;
        }
        return false;
    }

    public Adapter createAdapter(Notifier target) {
        return this.modelSwitch.doSwitch((EObject)target);
    }

    public Adapter createAssemblyHWConnectionAdapter() {
        return null;
    }

    public Adapter createHWConnectionAdapter() {
        return null;
    }

    public Adapter createPinHWConnectionAdapter() {
        return null;
    }

    public Adapter createHWPinAdapter() {
        return null;
    }

    public Adapter createHWPortAdapter() {
        return null;
    }

    public Adapter createDelegationHWConnectionAdapter() {
        return null;
    }

    public Adapter createECUAdapter() {
        return null;
    }

    public Adapter createHWElementContainerAdapter() {
        return null;
    }

    public Adapter createHWContainerAdapter() {
        return null;
    }

    public Adapter createSignalTransformationAdapter() {
        return null;
    }

    public Adapter createHWElementAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createGReferrableAdapter() {
        return null;
    }

    public Adapter createGIdentifiableAdapter() {
        return null;
    }

    public Adapter createIdentifiableAdapter() {
        return null;
    }

    public Adapter createGPackageableElementAdapter() {
        return null;
    }

    public Adapter createPackageableElementAdapter() {
        return null;
    }

    public Adapter createARElementAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

