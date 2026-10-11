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
package autosar21.genericstructure.commonpatterns.specialdata.util;

import autosar21.genericstructure.commonpatterns.specialdata.Caption;
import autosar21.genericstructure.commonpatterns.specialdata.Sd;
import autosar21.genericstructure.commonpatterns.specialdata.Sdg;
import autosar21.genericstructure.commonpatterns.specialdata.SdgContents;
import autosar21.genericstructure.commonpatterns.specialdata.Sdgs;
import autosar21.genericstructure.commonpatterns.specialdata.SpecialdataPackage;
import autosar21.genericstructure.commonpatterns.specialdata.util.SpecialdataSwitch;
import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class SpecialdataAdapterFactory
extends AdapterFactoryImpl {
    protected static SpecialdataPackage modelPackage;
    protected SpecialdataSwitch<Adapter> modelSwitch = new SpecialdataSwitch<Adapter>(){

        @Override
        public Adapter caseCaption(Caption object) {
            return SpecialdataAdapterFactory.this.createCaptionAdapter();
        }

        @Override
        public Adapter caseSd(Sd object) {
            return SpecialdataAdapterFactory.this.createSdAdapter();
        }

        @Override
        public Adapter caseSdgContents(SdgContents object) {
            return SpecialdataAdapterFactory.this.createSdgContentsAdapter();
        }

        @Override
        public Adapter caseSdgs(Sdgs object) {
            return SpecialdataAdapterFactory.this.createSdgsAdapter();
        }

        @Override
        public Adapter caseSdg(Sdg object) {
            return SpecialdataAdapterFactory.this.createSdgAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return SpecialdataAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return SpecialdataAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return SpecialdataAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return SpecialdataAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return SpecialdataAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return SpecialdataAdapterFactory.this.createEObjectAdapter();
        }
    };

    public SpecialdataAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = SpecialdataPackage.eINSTANCE;
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

    public Adapter createCaptionAdapter() {
        return null;
    }

    public Adapter createSdAdapter() {
        return null;
    }

    public Adapter createSdgContentsAdapter() {
        return null;
    }

    public Adapter createSdgsAdapter() {
        return null;
    }

    public Adapter createSdgAdapter() {
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

