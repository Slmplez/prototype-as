/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar21.swcomponent.applicationattributes.instanceref.impl;

import autosar21.swcomponent.applicationattributes.instanceref.FailureMonitoringMonitorsFailure;
import autosar21.swcomponent.applicationattributes.instanceref.InstancerefFactory;
import autosar21.swcomponent.applicationattributes.instanceref.InstancerefPackage;
import autosar21.swcomponent.applicationattributes.instanceref.SenderReceiverAnnotationDataElement;
import autosar21.swcomponent.applicationattributes.instanceref.impl.FailureMonitoringMonitorsFailureImpl;
import autosar21.swcomponent.applicationattributes.instanceref.impl.SenderReceiverAnnotationDataElementImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class InstancerefFactoryImpl
extends EFactoryImpl
implements InstancerefFactory {
    public static InstancerefFactory init() {
        try {
            InstancerefFactory theInstancerefFactory = (InstancerefFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/aa/r");
            if (theInstancerefFactory != null) {
                return theInstancerefFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new InstancerefFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createFailureMonitoringMonitorsFailure();
            }
            case 1: {
                return this.createSenderReceiverAnnotationDataElement();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public FailureMonitoringMonitorsFailure createFailureMonitoringMonitorsFailure() {
        FailureMonitoringMonitorsFailureImpl failureMonitoringMonitorsFailure = new FailureMonitoringMonitorsFailureImpl();
        return failureMonitoringMonitorsFailure;
    }

    public SenderReceiverAnnotationDataElement createSenderReceiverAnnotationDataElement() {
        SenderReceiverAnnotationDataElementImpl senderReceiverAnnotationDataElement = new SenderReceiverAnnotationDataElementImpl();
        return senderReceiverAnnotationDataElement;
    }

    public InstancerefPackage getInstancerefPackage() {
        return (InstancerefPackage)this.getEPackage();
    }

    @Deprecated
    public static InstancerefPackage getPackage() {
        return InstancerefPackage.eINSTANCE;
    }
}

