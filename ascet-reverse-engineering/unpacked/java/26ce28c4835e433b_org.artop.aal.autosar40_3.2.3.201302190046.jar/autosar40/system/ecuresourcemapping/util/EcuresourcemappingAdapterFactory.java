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
package autosar40.system.ecuresourcemapping.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.system.ecuresourcemapping.CommunicationControllerMapping;
import autosar40.system.ecuresourcemapping.ECUMapping;
import autosar40.system.ecuresourcemapping.EcuresourcemappingPackage;
import autosar40.system.ecuresourcemapping.HwPortMapping;
import autosar40.system.ecuresourcemapping.util.EcuresourcemappingSwitch;
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
        public Adapter caseHwPortMapping(HwPortMapping object) {
            return EcuresourcemappingAdapterFactory.this.createHwPortMappingAdapter();
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
        public Adapter caseReferrable(Referrable object) {
            return EcuresourcemappingAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return EcuresourcemappingAdapterFactory.this.createMultilanguageReferrableAdapter();
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

    public Adapter createHwPortMappingAdapter() {
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

    public Adapter createReferrableAdapter() {
        return null;
    }

    public Adapter createMultilanguageReferrableAdapter() {
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

