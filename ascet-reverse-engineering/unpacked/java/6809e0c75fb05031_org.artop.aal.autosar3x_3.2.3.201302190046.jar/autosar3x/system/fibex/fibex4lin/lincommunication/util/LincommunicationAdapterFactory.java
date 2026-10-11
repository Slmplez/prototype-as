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
package autosar3x.system.fibex.fibex4lin.lincommunication.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import autosar3x.system.fibex.fibex4lin.lincommunication.AssignFrameIdTiming;
import autosar3x.system.fibex.fibex4lin.lincommunication.AssignNadTiming;
import autosar3x.system.fibex.fibex4lin.lincommunication.AssignmentTimingType;
import autosar3x.system.fibex.fibex4lin.lincommunication.DataTiming;
import autosar3x.system.fibex.fibex4lin.lincommunication.FreeFormat;
import autosar3x.system.fibex.fibex4lin.lincommunication.LinErrorResponse;
import autosar3x.system.fibex.fibex4lin.lincommunication.LinFrameTriggering;
import autosar3x.system.fibex.fibex4lin.lincommunication.LinScheduleTable;
import autosar3x.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar3x.system.fibex.fibex4lin.lincommunication.RelativelyScheduledTiming;
import autosar3x.system.fibex.fibex4lin.lincommunication.SubstitutionFrame;
import autosar3x.system.fibex.fibex4lin.lincommunication.UnassignFrameIdTiming;
import autosar3x.system.fibex.fibex4lin.lincommunication.util.LincommunicationSwitch;
import autosar3x.system.fibex.fibexcore.FibexElement;
import autosar3x.system.fibex.fibexcore.corecommunication.Frame;
import autosar3x.system.fibex.fibexcore.corecommunication.FrameTriggering;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class LincommunicationAdapterFactory
extends AdapterFactoryImpl {
    protected static LincommunicationPackage modelPackage;
    protected LincommunicationSwitch<Adapter> modelSwitch = new LincommunicationSwitch<Adapter>(){

        @Override
        public Adapter caseAssignFrameIdTiming(AssignFrameIdTiming object) {
            return LincommunicationAdapterFactory.this.createAssignFrameIdTimingAdapter();
        }

        @Override
        public Adapter caseAssignmentTimingType(AssignmentTimingType object) {
            return LincommunicationAdapterFactory.this.createAssignmentTimingTypeAdapter();
        }

        @Override
        public Adapter caseRelativelyScheduledTiming(RelativelyScheduledTiming object) {
            return LincommunicationAdapterFactory.this.createRelativelyScheduledTimingAdapter();
        }

        @Override
        public Adapter caseLinScheduleTable(LinScheduleTable object) {
            return LincommunicationAdapterFactory.this.createLinScheduleTableAdapter();
        }

        @Override
        public Adapter caseLinErrorResponse(LinErrorResponse object) {
            return LincommunicationAdapterFactory.this.createLinErrorResponseAdapter();
        }

        @Override
        public Adapter caseLinFrameTriggering(LinFrameTriggering object) {
            return LincommunicationAdapterFactory.this.createLinFrameTriggeringAdapter();
        }

        @Override
        public Adapter caseAssignNadTiming(AssignNadTiming object) {
            return LincommunicationAdapterFactory.this.createAssignNadTimingAdapter();
        }

        @Override
        public Adapter caseDataTiming(DataTiming object) {
            return LincommunicationAdapterFactory.this.createDataTimingAdapter();
        }

        @Override
        public Adapter caseFreeFormat(FreeFormat object) {
            return LincommunicationAdapterFactory.this.createFreeFormatAdapter();
        }

        @Override
        public Adapter caseSubstitutionFrame(SubstitutionFrame object) {
            return LincommunicationAdapterFactory.this.createSubstitutionFrameAdapter();
        }

        @Override
        public Adapter caseUnassignFrameIdTiming(UnassignFrameIdTiming object) {
            return LincommunicationAdapterFactory.this.createUnassignFrameIdTimingAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return LincommunicationAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return LincommunicationAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return LincommunicationAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return LincommunicationAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return LincommunicationAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseFrameTriggering(FrameTriggering object) {
            return LincommunicationAdapterFactory.this.createFrameTriggeringAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return LincommunicationAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return LincommunicationAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseFibexElement(FibexElement object) {
            return LincommunicationAdapterFactory.this.createFibexElementAdapter();
        }

        @Override
        public Adapter caseFrame(Frame object) {
            return LincommunicationAdapterFactory.this.createFrameAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return LincommunicationAdapterFactory.this.createEObjectAdapter();
        }
    };

    public LincommunicationAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = LincommunicationPackage.eINSTANCE;
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

    public Adapter createAssignFrameIdTimingAdapter() {
        return null;
    }

    public Adapter createAssignmentTimingTypeAdapter() {
        return null;
    }

    public Adapter createRelativelyScheduledTimingAdapter() {
        return null;
    }

    public Adapter createLinScheduleTableAdapter() {
        return null;
    }

    public Adapter createLinErrorResponseAdapter() {
        return null;
    }

    public Adapter createLinFrameTriggeringAdapter() {
        return null;
    }

    public Adapter createAssignNadTimingAdapter() {
        return null;
    }

    public Adapter createDataTimingAdapter() {
        return null;
    }

    public Adapter createFreeFormatAdapter() {
        return null;
    }

    public Adapter createSubstitutionFrameAdapter() {
        return null;
    }

    public Adapter createUnassignFrameIdTimingAdapter() {
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

    public Adapter createGPackageableElementAdapter() {
        return null;
    }

    public Adapter createPackageableElementAdapter() {
        return null;
    }

    public Adapter createFibexElementAdapter() {
        return null;
    }

    public Adapter createFrameAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

