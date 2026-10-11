/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
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
                    result = this.casePortAnnotation(calibrationPortAnnotation);
                }
                if (result == null) {
                    result = this.caseARObject(calibrationPortAnnotation);
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
                ComMUserNeeds comMUserNeeds = (ComMUserNeeds)theEObject;
                T result = this.caseComMUserNeeds(comMUserNeeds);
                if (result == null) {
                    result = this.caseServiceNeeds(comMUserNeeds);
                }
                if (result == null) {
                    result = this.casePortAnnotation(comMUserNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(comMUserNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(comMUserNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                ServiceNeeds serviceNeeds = (ServiceNeeds)theEObject;
                T result = this.caseServiceNeeds(serviceNeeds);
                if (result == null) {
                    result = this.casePortAnnotation(serviceNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(serviceNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(serviceNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                ExtAnnotation extAnnotation = (ExtAnnotation)theEObject;
                T result = this.caseExtAnnotation(extAnnotation);
                if (result == null) {
                    result = this.caseARObject(extAnnotation);
                }
                if (result == null) {
                    result = this.caseGARObject(extAnnotation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                FailureMonitoring failureMonitoring = (FailureMonitoring)theEObject;
                T result = this.caseFailureMonitoring(failureMonitoring);
                if (result == null) {
                    result = this.caseARObject(failureMonitoring);
                }
                if (result == null) {
                    result = this.caseGARObject(failureMonitoring);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                IoHwAbstractionServerAnnotation ioHwAbstractionServerAnnotation = (IoHwAbstractionServerAnnotation)theEObject;
                T result = this.caseIoHwAbstractionServerAnnotation(ioHwAbstractionServerAnnotation);
                if (result == null) {
                    result = this.casePortAnnotation(ioHwAbstractionServerAnnotation);
                }
                if (result == null) {
                    result = this.caseARObject(ioHwAbstractionServerAnnotation);
                }
                if (result == null) {
                    result = this.caseGARObject(ioHwAbstractionServerAnnotation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
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
            case 7: {
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
            case 8: {
                NVRAMBlockNeeds nvramBlockNeeds = (NVRAMBlockNeeds)theEObject;
                T result = this.caseNVRAMBlockNeeds(nvramBlockNeeds);
                if (result == null) {
                    result = this.caseServiceNeeds(nvramBlockNeeds);
                }
                if (result == null) {
                    result = this.casePortAnnotation(nvramBlockNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(nvramBlockNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(nvramBlockNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                ReceiverAnnotation receiverAnnotation = (ReceiverAnnotation)theEObject;
                T result = this.caseReceiverAnnotation(receiverAnnotation);
                if (result == null) {
                    result = this.caseSenderReceiverAnnotation(receiverAnnotation);
                }
                if (result == null) {
                    result = this.casePortAnnotation(receiverAnnotation);
                }
                if (result == null) {
                    result = this.caseARObject(receiverAnnotation);
                }
                if (result == null) {
                    result = this.caseGARObject(receiverAnnotation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                SenderReceiverAnnotation senderReceiverAnnotation = (SenderReceiverAnnotation)theEObject;
                T result = this.caseSenderReceiverAnnotation(senderReceiverAnnotation);
                if (result == null) {
                    result = this.casePortAnnotation(senderReceiverAnnotation);
                }
                if (result == null) {
                    result = this.caseARObject(senderReceiverAnnotation);
                }
                if (result == null) {
                    result = this.caseGARObject(senderReceiverAnnotation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                SenderAnnotation senderAnnotation = (SenderAnnotation)theEObject;
                T result = this.caseSenderAnnotation(senderAnnotation);
                if (result == null) {
                    result = this.caseSenderReceiverAnnotation(senderAnnotation);
                }
                if (result == null) {
                    result = this.casePortAnnotation(senderAnnotation);
                }
                if (result == null) {
                    result = this.caseARObject(senderAnnotation);
                }
                if (result == null) {
                    result = this.caseGARObject(senderAnnotation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                SupervisedEntityNeeds supervisedEntityNeeds = (SupervisedEntityNeeds)theEObject;
                T result = this.caseSupervisedEntityNeeds(supervisedEntityNeeds);
                if (result == null) {
                    result = this.caseServiceNeeds(supervisedEntityNeeds);
                }
                if (result == null) {
                    result = this.casePortAnnotation(supervisedEntityNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(supervisedEntityNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(supervisedEntityNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                PortAnnotation portAnnotation = (PortAnnotation)theEObject;
                T result = this.casePortAnnotation(portAnnotation);
                if (result == null) {
                    result = this.caseARObject(portAnnotation);
                }
                if (result == null) {
                    result = this.caseGARObject(portAnnotation);
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

    public T caseComMUserNeeds(ComMUserNeeds object) {
        return null;
    }

    public T caseServiceNeeds(ServiceNeeds object) {
        return null;
    }

    public T caseExtAnnotation(ExtAnnotation object) {
        return null;
    }

    public T caseFailureMonitoring(FailureMonitoring object) {
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

    public T caseNVRAMBlockNeeds(NVRAMBlockNeeds object) {
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

    public T caseSupervisedEntityNeeds(SupervisedEntityNeeds object) {
        return null;
    }

    public T casePortAnnotation(PortAnnotation object) {
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

