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
package autosar40.system.fibex.fibex4lin.lincommunication.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.system.fibex.fibex4lin.lincommunication.ApplicationEntry;
import autosar40.system.fibex.fibex4lin.lincommunication.AssignFrameId;
import autosar40.system.fibex.fibex4lin.lincommunication.AssignFrameIdRange;
import autosar40.system.fibex.fibex4lin.lincommunication.AssignNad;
import autosar40.system.fibex.fibex4lin.lincommunication.ConditionalChangeNad;
import autosar40.system.fibex.fibex4lin.lincommunication.DataDumpEntry;
import autosar40.system.fibex.fibex4lin.lincommunication.FramePid;
import autosar40.system.fibex.fibex4lin.lincommunication.FreeFormat;
import autosar40.system.fibex.fibex4lin.lincommunication.FreeFormatEntry;
import autosar40.system.fibex.fibex4lin.lincommunication.LinConfigurationEntry;
import autosar40.system.fibex.fibex4lin.lincommunication.LinErrorResponse;
import autosar40.system.fibex.fibex4lin.lincommunication.LinEventTriggeredFrame;
import autosar40.system.fibex.fibex4lin.lincommunication.LinFrame;
import autosar40.system.fibex.fibex4lin.lincommunication.LinFrameTriggering;
import autosar40.system.fibex.fibex4lin.lincommunication.LinScheduleTable;
import autosar40.system.fibex.fibex4lin.lincommunication.LinSporadicFrame;
import autosar40.system.fibex.fibex4lin.lincommunication.LinUnconditionalFrame;
import autosar40.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar40.system.fibex.fibex4lin.lincommunication.SaveConfigurationEntry;
import autosar40.system.fibex.fibex4lin.lincommunication.ScheduleTableEntry;
import autosar40.system.fibex.fibex4lin.lincommunication.UnassignFrameId;
import autosar40.system.fibex.fibex4lin.lincommunication.util.LincommunicationSwitch;
import autosar40.system.fibex.fibexcore.FibexElement;
import autosar40.system.fibex.fibexcore.corecommunication.Frame;
import autosar40.system.fibex.fibexcore.corecommunication.FrameTriggering;
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
        public Adapter caseApplicationEntry(ApplicationEntry object) {
            return LincommunicationAdapterFactory.this.createApplicationEntryAdapter();
        }

        @Override
        public Adapter caseScheduleTableEntry(ScheduleTableEntry object) {
            return LincommunicationAdapterFactory.this.createScheduleTableEntryAdapter();
        }

        @Override
        public Adapter caseLinFrameTriggering(LinFrameTriggering object) {
            return LincommunicationAdapterFactory.this.createLinFrameTriggeringAdapter();
        }

        @Override
        public Adapter caseAssignFrameId(AssignFrameId object) {
            return LincommunicationAdapterFactory.this.createAssignFrameIdAdapter();
        }

        @Override
        public Adapter caseLinConfigurationEntry(LinConfigurationEntry object) {
            return LincommunicationAdapterFactory.this.createLinConfigurationEntryAdapter();
        }

        @Override
        public Adapter caseLinFrame(LinFrame object) {
            return LincommunicationAdapterFactory.this.createLinFrameAdapter();
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
        public Adapter caseAssignFrameIdRange(AssignFrameIdRange object) {
            return LincommunicationAdapterFactory.this.createAssignFrameIdRangeAdapter();
        }

        @Override
        public Adapter caseFramePid(FramePid object) {
            return LincommunicationAdapterFactory.this.createFramePidAdapter();
        }

        @Override
        public Adapter caseAssignNad(AssignNad object) {
            return LincommunicationAdapterFactory.this.createAssignNadAdapter();
        }

        @Override
        public Adapter caseConditionalChangeNad(ConditionalChangeNad object) {
            return LincommunicationAdapterFactory.this.createConditionalChangeNadAdapter();
        }

        @Override
        public Adapter caseDataDumpEntry(DataDumpEntry object) {
            return LincommunicationAdapterFactory.this.createDataDumpEntryAdapter();
        }

        @Override
        public Adapter caseFreeFormat(FreeFormat object) {
            return LincommunicationAdapterFactory.this.createFreeFormatAdapter();
        }

        @Override
        public Adapter caseFreeFormatEntry(FreeFormatEntry object) {
            return LincommunicationAdapterFactory.this.createFreeFormatEntryAdapter();
        }

        @Override
        public Adapter caseLinEventTriggeredFrame(LinEventTriggeredFrame object) {
            return LincommunicationAdapterFactory.this.createLinEventTriggeredFrameAdapter();
        }

        @Override
        public Adapter caseLinUnconditionalFrame(LinUnconditionalFrame object) {
            return LincommunicationAdapterFactory.this.createLinUnconditionalFrameAdapter();
        }

        @Override
        public Adapter caseLinSporadicFrame(LinSporadicFrame object) {
            return LincommunicationAdapterFactory.this.createLinSporadicFrameAdapter();
        }

        @Override
        public Adapter caseSaveConfigurationEntry(SaveConfigurationEntry object) {
            return LincommunicationAdapterFactory.this.createSaveConfigurationEntryAdapter();
        }

        @Override
        public Adapter caseUnassignFrameId(UnassignFrameId object) {
            return LincommunicationAdapterFactory.this.createUnassignFrameIdAdapter();
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
        public Adapter caseReferrable(Referrable object) {
            return LincommunicationAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return LincommunicationAdapterFactory.this.createMultilanguageReferrableAdapter();
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
        public Adapter caseCollectableElement(CollectableElement object) {
            return LincommunicationAdapterFactory.this.createCollectableElementAdapter();
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

    public Adapter createApplicationEntryAdapter() {
        return null;
    }

    public Adapter createScheduleTableEntryAdapter() {
        return null;
    }

    public Adapter createLinFrameTriggeringAdapter() {
        return null;
    }

    public Adapter createAssignFrameIdAdapter() {
        return null;
    }

    public Adapter createLinConfigurationEntryAdapter() {
        return null;
    }

    public Adapter createLinFrameAdapter() {
        return null;
    }

    public Adapter createLinScheduleTableAdapter() {
        return null;
    }

    public Adapter createLinErrorResponseAdapter() {
        return null;
    }

    public Adapter createAssignFrameIdRangeAdapter() {
        return null;
    }

    public Adapter createFramePidAdapter() {
        return null;
    }

    public Adapter createAssignNadAdapter() {
        return null;
    }

    public Adapter createConditionalChangeNadAdapter() {
        return null;
    }

    public Adapter createDataDumpEntryAdapter() {
        return null;
    }

    public Adapter createFreeFormatAdapter() {
        return null;
    }

    public Adapter createFreeFormatEntryAdapter() {
        return null;
    }

    public Adapter createLinEventTriggeredFrameAdapter() {
        return null;
    }

    public Adapter createLinUnconditionalFrameAdapter() {
        return null;
    }

    public Adapter createLinSporadicFrameAdapter() {
        return null;
    }

    public Adapter createSaveConfigurationEntryAdapter() {
        return null;
    }

    public Adapter createUnassignFrameIdAdapter() {
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

    public Adapter createFrameTriggeringAdapter() {
        return null;
    }

    public Adapter createCollectableElementAdapter() {
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

