/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GGeneralAnnotation
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.swcomponent.applicationattributes.util;

import autosar3x.genericstructure.commonpatterns.annotation.GeneralAnnotation;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar3x.swcomponent.applicationattributes.CalibrationPortAnnotation;
import autosar3x.swcomponent.applicationattributes.DelegatedPortAnnotation;
import autosar3x.swcomponent.applicationattributes.IoHwAbstractionServerAnnotation;
import autosar3x.swcomponent.applicationattributes.ReceiverAnnotation;
import autosar3x.swcomponent.applicationattributes.ReportFeature;
import autosar3x.swcomponent.applicationattributes.SenderAnnotation;
import autosar3x.swcomponent.applicationattributes.SenderReceiverAnnotation;
import autosar3x.swcomponent.applicationattributes.WakeUp;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GGeneralAnnotation;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ApplicationattributesSwitch<T> {
    protected static ApplicationattributesPackage modelPackage;

    public ApplicationattributesSwitch() {
        if (modelPackage == null) {
            modelPackage = ApplicationattributesPackage.eINSTANCE;
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
                CalibrationPortAnnotation calibrationPortAnnotation = (CalibrationPortAnnotation)theEObject;
                T result = this.caseCalibrationPortAnnotation(calibrationPortAnnotation);
                if (result == null) {
                    result = this.caseGeneralAnnotation(calibrationPortAnnotation);
                }
                if (result == null) {
                    result = this.caseARObject(calibrationPortAnnotation);
                }
                if (result == null) {
                    result = this.caseGGeneralAnnotation(calibrationPortAnnotation);
                }
                if (result == null) {
                    result = this.caseGARObject(calibrationPortAnnotation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                IoHwAbstractionServerAnnotation ioHwAbstractionServerAnnotation = (IoHwAbstractionServerAnnotation)theEObject;
                T result = this.caseIoHwAbstractionServerAnnotation(ioHwAbstractionServerAnnotation);
                if (result == null) {
                    result = this.caseGeneralAnnotation(ioHwAbstractionServerAnnotation);
                }
                if (result == null) {
                    result = this.caseARObject(ioHwAbstractionServerAnnotation);
                }
                if (result == null) {
                    result = this.caseGGeneralAnnotation(ioHwAbstractionServerAnnotation);
                }
                if (result == null) {
                    result = this.caseGARObject(ioHwAbstractionServerAnnotation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                ReportFeature reportFeature = (ReportFeature)theEObject;
                T result = this.caseReportFeature(reportFeature);
                if (result == null) {
                    result = this.caseARObject(reportFeature);
                }
                if (result == null) {
                    result = this.caseGARObject(reportFeature);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                WakeUp wakeUp = (WakeUp)theEObject;
                T result = this.caseWakeUp(wakeUp);
                if (result == null) {
                    result = this.caseARObject(wakeUp);
                }
                if (result == null) {
                    result = this.caseGARObject(wakeUp);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                ReceiverAnnotation receiverAnnotation = (ReceiverAnnotation)theEObject;
                T result = this.caseReceiverAnnotation(receiverAnnotation);
                if (result == null) {
                    result = this.caseSenderReceiverAnnotation(receiverAnnotation);
                }
                if (result == null) {
                    result = this.caseGeneralAnnotation(receiverAnnotation);
                }
                if (result == null) {
                    result = this.caseARObject(receiverAnnotation);
                }
                if (result == null) {
                    result = this.caseGGeneralAnnotation(receiverAnnotation);
                }
                if (result == null) {
                    result = this.caseGARObject(receiverAnnotation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                SenderReceiverAnnotation senderReceiverAnnotation = (SenderReceiverAnnotation)theEObject;
                T result = this.caseSenderReceiverAnnotation(senderReceiverAnnotation);
                if (result == null) {
                    result = this.caseGeneralAnnotation(senderReceiverAnnotation);
                }
                if (result == null) {
                    result = this.caseARObject(senderReceiverAnnotation);
                }
                if (result == null) {
                    result = this.caseGGeneralAnnotation(senderReceiverAnnotation);
                }
                if (result == null) {
                    result = this.caseGARObject(senderReceiverAnnotation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                SenderAnnotation senderAnnotation = (SenderAnnotation)theEObject;
                T result = this.caseSenderAnnotation(senderAnnotation);
                if (result == null) {
                    result = this.caseSenderReceiverAnnotation(senderAnnotation);
                }
                if (result == null) {
                    result = this.caseGeneralAnnotation(senderAnnotation);
                }
                if (result == null) {
                    result = this.caseARObject(senderAnnotation);
                }
                if (result == null) {
                    result = this.caseGGeneralAnnotation(senderAnnotation);
                }
                if (result == null) {
                    result = this.caseGARObject(senderAnnotation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                DelegatedPortAnnotation delegatedPortAnnotation = (DelegatedPortAnnotation)theEObject;
                T result = this.caseDelegatedPortAnnotation(delegatedPortAnnotation);
                if (result == null) {
                    result = this.caseGeneralAnnotation(delegatedPortAnnotation);
                }
                if (result == null) {
                    result = this.caseARObject(delegatedPortAnnotation);
                }
                if (result == null) {
                    result = this.caseGGeneralAnnotation(delegatedPortAnnotation);
                }
                if (result == null) {
                    result = this.caseGARObject(delegatedPortAnnotation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseCalibrationPortAnnotation(CalibrationPortAnnotation object) {
        return null;
    }

    public T caseIoHwAbstractionServerAnnotation(IoHwAbstractionServerAnnotation object) {
        return null;
    }

    public T caseReportFeature(ReportFeature object) {
        return null;
    }

    public T caseWakeUp(WakeUp object) {
        return null;
    }

    public T caseReceiverAnnotation(ReceiverAnnotation object) {
        return null;
    }

    public T caseSenderReceiverAnnotation(SenderReceiverAnnotation object) {
        return null;
    }

    public T caseSenderAnnotation(SenderAnnotation object) {
        return null;
    }

    public T caseDelegatedPortAnnotation(DelegatedPortAnnotation object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseGGeneralAnnotation(GGeneralAnnotation object) {
        return null;
    }

    public T caseGeneralAnnotation(GeneralAnnotation object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

