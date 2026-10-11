/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.swcomponent.applicationattributes;

import autosar3x.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar3x.swcomponent.applicationattributes.CalibrationPortAnnotation;
import autosar3x.swcomponent.applicationattributes.DelegatedPortAnnotation;
import autosar3x.swcomponent.applicationattributes.IoHwAbstractionServerAnnotation;
import autosar3x.swcomponent.applicationattributes.ReceiverAnnotation;
import autosar3x.swcomponent.applicationattributes.ReportFeature;
import autosar3x.swcomponent.applicationattributes.SenderAnnotation;
import autosar3x.swcomponent.applicationattributes.WakeUp;
import autosar3x.swcomponent.applicationattributes.impl.ApplicationattributesFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ApplicationattributesFactory
extends EFactory {
    public static final ApplicationattributesFactory eINSTANCE = ApplicationattributesFactoryImpl.init();

    public CalibrationPortAnnotation createCalibrationPortAnnotation();

    public IoHwAbstractionServerAnnotation createIoHwAbstractionServerAnnotation();

    public ReportFeature createReportFeature();

    public WakeUp createWakeUp();

    public ReceiverAnnotation createReceiverAnnotation();

    public SenderAnnotation createSenderAnnotation();

    public DelegatedPortAnnotation createDelegatedPortAnnotation();

    public ApplicationattributesPackage getApplicationattributesPackage();
}

