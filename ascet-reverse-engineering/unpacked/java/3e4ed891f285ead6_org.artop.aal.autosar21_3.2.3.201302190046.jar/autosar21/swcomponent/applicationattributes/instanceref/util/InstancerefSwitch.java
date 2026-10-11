/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.applicationattributes.instanceref.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.applicationattributes.instanceref.FailureMonitoringMonitorsFailure;
import autosar21.swcomponent.applicationattributes.instanceref.InstancerefPackage;
import autosar21.swcomponent.applicationattributes.instanceref.SenderReceiverAnnotationDataElement;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class InstancerefSwitch<T> {
    protected static InstancerefPackage modelPackage;

    public InstancerefSwitch() {
        if (modelPackage == null) {
            modelPackage = InstancerefPackage.eINSTANCE;
        }
    }

    public T doSwitch(EObject theEObject) {
        return this.doSwitch(theEObject.eClass(), theEObject);
    }

    protected T doSwitch(EClass theEClass, EObject theEObject) {
        if (theEClass.eContainer() == modelPackage) {
            return this.doSwitch(theEClass.getClassifierID(), theEObject);
        }
        EList eSuperTypes = theEClass.getESuperTypes();
        return eSuperTypes.isEmpty() ? this.defaultCase(theEObject) : this.doSwitch((EClass)eSuperTypes.get(0), theEObject);
    }

    protected T doSwitch(int classifierID, EObject theEObject) {
        switch (classifierID) {
            case 0: {
                FailureMonitoringMonitorsFailure failureMonitoringMonitorsFailure = (FailureMonitoringMonitorsFailure)theEObject;
                T result = this.caseFailureMonitoringMonitorsFailure(failureMonitoringMonitorsFailure);
                if (result == null) {
                    result = this.caseARObject(failureMonitoringMonitorsFailure);
                }
                if (result == null) {
                    result = this.caseGARObject(failureMonitoringMonitorsFailure);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                SenderReceiverAnnotationDataElement senderReceiverAnnotationDataElement = (SenderReceiverAnnotationDataElement)theEObject;
                T result = this.caseSenderReceiverAnnotationDataElement(senderReceiverAnnotationDataElement);
                if (result == null) {
                    result = this.caseARObject(senderReceiverAnnotationDataElement);
                }
                if (result == null) {
                    result = this.caseGARObject(senderReceiverAnnotationDataElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseFailureMonitoringMonitorsFailure(FailureMonitoringMonitorsFailure object) {
        return null;
    }

    public T caseSenderReceiverAnnotationDataElement(SenderReceiverAnnotationDataElement object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

