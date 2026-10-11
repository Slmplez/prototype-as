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
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.util;

import autosar40.commonstructure.timing.timingdescription.TimingDescription;
import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEvent;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.TDEventBsw;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.TDEventBswModeDeclaration;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.TDEventBswModule;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.TdeventbswPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.util.TdeventbswSwitch;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class TdeventbswAdapterFactory
extends AdapterFactoryImpl {
    protected static TdeventbswPackage modelPackage;
    protected TdeventbswSwitch<Adapter> modelSwitch = new TdeventbswSwitch<Adapter>(){

        @Override
        public Adapter caseTDEventBsw(TDEventBsw object) {
            return TdeventbswAdapterFactory.this.createTDEventBswAdapter();
        }

        @Override
        public Adapter caseTDEventBswModeDeclaration(TDEventBswModeDeclaration object) {
            return TdeventbswAdapterFactory.this.createTDEventBswModeDeclarationAdapter();
        }

        @Override
        public Adapter caseTDEventBswModule(TDEventBswModule object) {
            return TdeventbswAdapterFactory.this.createTDEventBswModuleAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return TdeventbswAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return TdeventbswAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return TdeventbswAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return TdeventbswAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return TdeventbswAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return TdeventbswAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return TdeventbswAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseTimingDescription(TimingDescription object) {
            return TdeventbswAdapterFactory.this.createTimingDescriptionAdapter();
        }

        @Override
        public Adapter caseTimingDescriptionEvent(TimingDescriptionEvent object) {
            return TdeventbswAdapterFactory.this.createTimingDescriptionEventAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return TdeventbswAdapterFactory.this.createEObjectAdapter();
        }
    };

    public TdeventbswAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = TdeventbswPackage.eINSTANCE;
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

    public Adapter createTDEventBswAdapter() {
        return null;
    }

    public Adapter createTDEventBswModeDeclarationAdapter() {
        return null;
    }

    public Adapter createTDEventBswModuleAdapter() {
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

    public Adapter createTimingDescriptionAdapter() {
        return null;
    }

    public Adapter createTimingDescriptionEventAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

