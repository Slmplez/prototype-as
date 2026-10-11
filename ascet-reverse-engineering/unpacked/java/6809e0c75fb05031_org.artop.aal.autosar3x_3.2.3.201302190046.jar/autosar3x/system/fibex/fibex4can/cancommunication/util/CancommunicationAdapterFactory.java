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
package autosar3x.system.fibex.fibex4can.cancommunication.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.system.fibex.fibex4can.cancommunication.CanFrameTriggering;
import autosar3x.system.fibex.fibex4can.cancommunication.CancommunicationPackage;
import autosar3x.system.fibex.fibex4can.cancommunication.RxIdentifierRange;
import autosar3x.system.fibex.fibex4can.cancommunication.util.CancommunicationSwitch;
import autosar3x.system.fibex.fibexcore.corecommunication.FrameTriggering;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class CancommunicationAdapterFactory
extends AdapterFactoryImpl {
    protected static CancommunicationPackage modelPackage;
    protected CancommunicationSwitch<Adapter> modelSwitch = new CancommunicationSwitch<Adapter>(){

        @Override
        public Adapter caseCanFrameTriggering(CanFrameTriggering object) {
            return CancommunicationAdapterFactory.this.createCanFrameTriggeringAdapter();
        }

        @Override
        public Adapter caseRxIdentifierRange(RxIdentifierRange object) {
            return CancommunicationAdapterFactory.this.createRxIdentifierRangeAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return CancommunicationAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return CancommunicationAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return CancommunicationAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return CancommunicationAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return CancommunicationAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseFrameTriggering(FrameTriggering object) {
            return CancommunicationAdapterFactory.this.createFrameTriggeringAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return CancommunicationAdapterFactory.this.createEObjectAdapter();
        }
    };

    public CancommunicationAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = CancommunicationPackage.eINSTANCE;
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

    public Adapter createCanFrameTriggeringAdapter() {
        return null;
    }

    public Adapter createRxIdentifierRangeAdapter() {
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

    public Adapter createFrameTriggeringAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

