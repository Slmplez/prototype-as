/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.applicationattributes;

import autosar21.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar21.swcomponent.applicationattributes.CalibrationPortAnnotation;
import autosar21.swcomponent.applicationattributes.ComMUserNeeds;
import autosar21.swcomponent.applicationattributes.ExtAnnotation;
import autosar21.swcomponent.applicationattributes.FailureMonitoring;
import autosar21.swcomponent.applicationattributes.IoHwAbstractionServerAnnotation;
import autosar21.swcomponent.applicationattributes.NVRAMBlockNeeds;
import autosar21.swcomponent.applicationattributes.ReceiverAnnotation;
import autosar21.swcomponent.applicationattributes.ReportFeature;
import autosar21.swcomponent.applicationattributes.SenderAnnotation;
import autosar21.swcomponent.applicationattributes.ServiceNeeds;
import autosar21.swcomponent.applicationattributes.SupervisedEntityNeeds;
import autosar21.swcomponent.applicationattributes.WakeUp;
import autosar21.swcomponent.applicationattributes.impl.ApplicationattributesFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ApplicationattributesFactory
extends EFactory {
    public static final ApplicationattributesFactory eINSTANCE = ApplicationattributesFactoryImpl.init();

    public CalibrationPortAnnotation createCalibrationPortAnnotation();

    public ComMUserNeeds createComMUserNeeds();

    public ServiceNeeds createServiceNeeds();

    public ExtAnnotation createExtAnnotation();

    public FailureMonitoring createFailureMonitoring();

    public IoHwAbstractionServerAnnotation createIoHwAbstractionServerAnnotation();

    public ReportFeature createReportFeature();

    public WakeUp createWakeUp();

    public NVRAMBlockNeeds createNVRAMBlockNeeds();

    public ReceiverAnnotation createReceiverAnnotation();

    public SenderAnnotation createSenderAnnotation();

    public SupervisedEntityNeeds createSupervisedEntityNeeds();

    public ApplicationattributesPackage getApplicationattributesPackage();
}

