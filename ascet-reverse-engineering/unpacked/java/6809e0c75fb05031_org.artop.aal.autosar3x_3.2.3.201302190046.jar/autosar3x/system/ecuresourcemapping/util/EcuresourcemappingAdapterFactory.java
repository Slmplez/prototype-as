/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.system.ecuresourcemapping.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.system.ecuresourcemapping.CommunicationControllerMapping;
import autosar3x.system.ecuresourcemapping.ECUMapping;
import autosar3x.system.ecuresourcemapping.EcuresourcemappingPackage;
import autosar3x.system.ecuresourcemapping.HWPortMapping;
import autosar3x.system.ecuresourcemapping.util.EcuresourcemappingSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class EcuresourcemappingAdapterFactory
extends AdapterFactoryImpl {
    protected static EcuresourcemappingPackage modelPackage;
    protected EcuresourcemappingSwitch<Adapter> modelSwitch = new EcuresourcemappingSwitch<Adapter>(){

        @Override
        public Adapter caseCommunicationControllerMapping(CommunicationControllerMapping object) {
            return EcuresourcemappingAdapterFactory.this.createCommunicationControllerMappingAdapter();
        }

        @Override
        public Adapter caseHWPortMapping(HWPortMapping object) {
            return EcuresourcemappingAdapterFactory.this.createHWPortMappingAdapter();
        }

        @Override
        public Adapter caseECUMapping(ECUMapping object) {
            return EcuresourcemappingAdapterFactory.this.createECUMappingAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return EcuresourcemappingAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return EcuresourcemappingAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return EcuresourcemappingAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return EcuresourcemappingAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return EcuresourcemappingAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return EcuresourcemappingAdapterFactory.this.createEObjectAdapter();
        }
    };

    public EcuresourcemappingAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = EcuresourcemappingPackage.eINSTANCE;
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

    public Adapter createCommunicationControllerMappingAdapter() {
        return null;
    }

    public Adapter createHWPortMappingAdapter() {
        return null;
    }

    public Adapter createECUMappingAdapter() {
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

    public Adapter createEObjectAdapter() {
        return null;
    }
}

