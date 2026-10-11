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
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.util;

import autosar40.commonstructure.timing.timingdescription.TimingDescription;
import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEvent;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventModeDeclaration;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventOperation;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventVariableDataPrototype;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventVfb;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TdeventvfbPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.util.TdeventvfbSwitch;
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

public class TdeventvfbAdapterFactory
extends AdapterFactoryImpl {
    protected static TdeventvfbPackage modelPackage;
    protected TdeventvfbSwitch<Adapter> modelSwitch = new TdeventvfbSwitch<Adapter>(){

        @Override
        public Adapter caseTDEventModeDeclaration(TDEventModeDeclaration object) {
            return TdeventvfbAdapterFactory.this.createTDEventModeDeclarationAdapter();
        }

        @Override
        public Adapter caseTDEventVfb(TDEventVfb object) {
            return TdeventvfbAdapterFactory.this.createTDEventVfbAdapter();
        }

        @Override
        public Adapter caseTDEventOperation(TDEventOperation object) {
            return TdeventvfbAdapterFactory.this.createTDEventOperationAdapter();
        }

        @Override
        public Adapter caseTDEventVariableDataPrototype(TDEventVariableDataPrototype object) {
            return TdeventvfbAdapterFactory.this.createTDEventVariableDataPrototypeAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return TdeventvfbAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return TdeventvfbAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return TdeventvfbAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return TdeventvfbAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return TdeventvfbAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return TdeventvfbAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return TdeventvfbAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseTimingDescription(TimingDescription object) {
            return TdeventvfbAdapterFactory.this.createTimingDescriptionAdapter();
        }

        @Override
        public Adapter caseTimingDescriptionEvent(TimingDescriptionEvent object) {
            return TdeventvfbAdapterFactory.this.createTimingDescriptionEventAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return TdeventvfbAdapterFactory.this.createEObjectAdapter();
        }
    };

    public TdeventvfbAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = TdeventvfbPackage.eINSTANCE;
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

    public Adapter createTDEventModeDeclarationAdapter() {
        return null;
    }

    public Adapter createTDEventVfbAdapter() {
        return null;
    }

    public Adapter createTDEventOperationAdapter() {
        return null;
    }

    public Adapter createTDEventVariableDataPrototypeAdapter() {
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

