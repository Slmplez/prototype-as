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
package autosar3x.system.fibex.fibex4flexray.flexraycommunication.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.system.fibex.fibex4flexray.flexraycommunication.AbsolutelyScheduledTiming;
import autosar3x.system.fibex.fibex4flexray.flexraycommunication.FlexrayFrameTriggering;
import autosar3x.system.fibex.fibex4flexray.flexraycommunication.FlexraycommunicationPackage;
import autosar3x.system.fibex.fibex4flexray.flexraycommunication.util.FlexraycommunicationSwitch;
import autosar3x.system.fibex.fibexcore.corecommunication.FrameTriggering;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class FlexraycommunicationAdapterFactory
extends AdapterFactoryImpl {
    protected static FlexraycommunicationPackage modelPackage;
    protected FlexraycommunicationSwitch<Adapter> modelSwitch = new FlexraycommunicationSwitch<Adapter>(){

        @Override
        public Adapter caseAbsolutelyScheduledTiming(AbsolutelyScheduledTiming object) {
            return FlexraycommunicationAdapterFactory.this.createAbsolutelyScheduledTimingAdapter();
        }

        @Override
        public Adapter caseFlexrayFrameTriggering(FlexrayFrameTriggering object) {
            return FlexraycommunicationAdapterFactory.this.createFlexrayFrameTriggeringAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return FlexraycommunicationAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return FlexraycommunicationAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return FlexraycommunicationAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return FlexraycommunicationAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return FlexraycommunicationAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseFrameTriggering(FrameTriggering object) {
            return FlexraycommunicationAdapterFactory.this.createFrameTriggeringAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return FlexraycommunicationAdapterFactory.this.createEObjectAdapter();
        }
    };

    public FlexraycommunicationAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = FlexraycommunicationPackage.eINSTANCE;
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

    public Adapter createAbsolutelyScheduledTimingAdapter() {
        return null;
    }

    public Adapter createFlexrayFrameTriggeringAdapter() {
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

