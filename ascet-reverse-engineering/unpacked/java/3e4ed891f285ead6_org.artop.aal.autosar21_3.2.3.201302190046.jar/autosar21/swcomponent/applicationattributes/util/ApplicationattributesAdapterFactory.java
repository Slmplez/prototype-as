/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.applicationattributes.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar21.swcomponent.applicationattributes.CalibrationPortAnnotation;
import autosar21.swcomponent.applicationattributes.ComMUserNeeds;
import autosar21.swcomponent.applicationattributes.ExtAnnotation;
import autosar21.swcomponent.applicationattributes.FailureMonitoring;
import autosar21.swcomponent.applicationattributes.IoHwAbstractionServerAnnotation;
import autosar21.swcomponent.applicationattributes.NVRAMBlockNeeds;
import autosar21.swcomponent.applicationattributes.PortAnnotation;
import autosar21.swcomponent.applicationattributes.ReceiverAnnotation;
import autosar21.swcomponent.applicationattributes.ReportFeature;
import autosar21.swcomponent.applicationattributes.SenderAnnotation;
import autosar21.swcomponent.applicationattributes.SenderReceiverAnnotation;
import autosar21.swcomponent.applicationattributes.ServiceNeeds;
import autosar21.swcomponent.applicationattributes.SupervisedEntityNeeds;
import autosar21.swcomponent.applicationattributes.WakeUp;
import autosar21.swcomponent.applicationattributes.util.ApplicationattributesSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class ApplicationattributesAdapterFactory
extends AdapterFactoryImpl {
    protected static ApplicationattributesPackage modelPackage;
    protected ApplicationattributesSwitch<Adapter> modelSwitch = new ApplicationattributesSwitch<Adapter>(){

        @Override
        public Adapter caseCalibrationPortAnnotation(CalibrationPortAnnotation object) {
            return ApplicationattributesAdapterFactory.this.createCalibrationPortAnnotationAdapter();
        }

        @Override
        public Adapter caseComMUserNeeds(ComMUserNeeds object) {
            return ApplicationattributesAdapterFactory.this.createComMUserNeedsAdapter();
        }

        @Override
        public Adapter caseServiceNeeds(ServiceNeeds object) {
            return ApplicationattributesAdapterFactory.this.createServiceNeedsAdapter();
        }

        @Override
        public Adapter caseExtAnnotation(ExtAnnotation object) {
            return ApplicationattributesAdapterFactory.this.createExtAnnotationAdapter();
        }

        @Override
        public Adapter caseFailureMonitoring(FailureMonitoring object) {
            return ApplicationattributesAdapterFactory.this.createFailureMonitoringAdapter();
        }

        @Override
        public Adapter caseIoHwAbstractionServerAnnotation(IoHwAbstractionServerAnnotation object) {
            return ApplicationattributesAdapterFactory.this.createIoHwAbstractionServerAnnotationAdapter();
        }

        @Override
        public Adapter caseReportFeature(ReportFeature object) {
            return ApplicationattributesAdapterFactory.this.createReportFeatureAdapter();
        }

        @Override
        public Adapter caseWakeUp(WakeUp object) {
            return ApplicationattributesAdapterFactory.this.createWakeUpAdapter();
        }

        @Override
        public Adapter caseNVRAMBlockNeeds(NVRAMBlockNeeds object) {
            return ApplicationattributesAdapterFactory.this.createNVRAMBlockNeedsAdapter();
        }

        @Override
        public Adapter caseReceiverAnnotation(ReceiverAnnotation object) {
            return ApplicationattributesAdapterFactory.this.createReceiverAnnotationAdapter();
        }

        @Override
        public Adapter caseSenderReceiverAnnotation(SenderReceiverAnnotation object) {
            return ApplicationattributesAdapterFactory.this.createSenderReceiverAnnotationAdapter();
        }

        @Override
        public Adapter caseSenderAnnotation(SenderAnnotation object) {
            return ApplicationattributesAdapterFactory.this.createSenderAnnotationAdapter();
        }

        @Override
        public Adapter caseSupervisedEntityNeeds(SupervisedEntityNeeds object) {
            return ApplicationattributesAdapterFactory.this.createSupervisedEntityNeedsAdapter();
        }

        @Override
        public Adapter casePortAnnotation(PortAnnotation object) {
            return ApplicationattributesAdapterFactory.this.createPortAnnotationAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return ApplicationattributesAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return ApplicationattributesAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return ApplicationattributesAdapterFactory.this.createEObjectAdapter();
        }
    };

    public ApplicationattributesAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = ApplicationattributesPackage.eINSTANCE;
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

    public Adapter createCalibrationPortAnnotationAdapter() {
        return null;
    }

    public Adapter createComMUserNeedsAdapter() {
        return null;
    }

    public Adapter createServiceNeedsAdapter() {
        return null;
    }

    public Adapter createExtAnnotationAdapter() {
        return null;
    }

    public Adapter createFailureMonitoringAdapter() {
        return null;
    }

    public Adapter createIoHwAbstractionServerAnnotationAdapter() {
        return null;
    }

    public Adapter createReportFeatureAdapter() {
        return null;
    }

    public Adapter createWakeUpAdapter() {
        return null;
    }

    public Adapter createNVRAMBlockNeedsAdapter() {
        return null;
    }

    public Adapter createReceiverAnnotationAdapter() {
        return null;
    }

    public Adapter createSenderReceiverAnnotationAdapter() {
        return null;
    }

    public Adapter createSenderAnnotationAdapter() {
        return null;
    }

    public Adapter createSupervisedEntityNeedsAdapter() {
        return null;
    }

    public Adapter createPortAnnotationAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

