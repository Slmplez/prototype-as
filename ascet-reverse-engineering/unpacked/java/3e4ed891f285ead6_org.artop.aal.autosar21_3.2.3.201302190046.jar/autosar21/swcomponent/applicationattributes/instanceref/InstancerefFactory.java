/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.applicationattributes.instanceref;

import autosar21.swcomponent.applicationattributes.instanceref.FailureMonitoringMonitorsFailure;
import autosar21.swcomponent.applicationattributes.instanceref.InstancerefPackage;
import autosar21.swcomponent.applicationattributes.instanceref.SenderReceiverAnnotationDataElement;
import autosar21.swcomponent.applicationattributes.instanceref.impl.InstancerefFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InstancerefFactory
extends EFactory {
    public static final InstancerefFactory eINSTANCE = InstancerefFactoryImpl.init();

    public FailureMonitoringMonitorsFailure createFailureMonitoringMonitorsFailure();

    public SenderReceiverAnnotationDataElement createSenderReceiverAnnotationDataElement();

    public InstancerefPackage getInstancerefPackage();
}

