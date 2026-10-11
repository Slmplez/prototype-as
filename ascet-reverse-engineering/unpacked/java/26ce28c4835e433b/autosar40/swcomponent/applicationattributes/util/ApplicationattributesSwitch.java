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
package autosar40.swcomponent.applicationattributes.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.generalannotation.GeneralAnnotation;
import autosar40.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar40.swcomponent.applicationattributes.ClientServerAnnotation;
import autosar40.swcomponent.applicationattributes.DelegatedPortAnnotation;
import autosar40.swcomponent.applicationattributes.IoHwAbstractionServerAnnotation;
import autosar40.swcomponent.applicationattributes.ModePortAnnotation;
import autosar40.swcomponent.applicationattributes.NvDataPortAnnotation;
import autosar40.swcomponent.applicationattributes.ParameterPortAnnotation;
import autosar40.swcomponent.applicationattributes.ReceiverAnnotation;
import autosar40.swcomponent.applicationattributes.SenderAnnotation;
import autosar40.swcomponent.applicationattributes.SenderReceiverAnnotation;
import autosar40.swcomponent.applicationattributes.TriggerPortAnnotation;
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
                ClientServerAnnotation clientServerAnnotation = (ClientServerAnnotation)theEObject;
                T result = this.caseClientServerAnnotation(clientServerAnnotation);
                if (result == null) {
                    result = this.caseGeneralAnnotation(clientServerAnnotation);
                }
                if (result == null) {
                    result = this.caseARObject(clientServerAnnotation);
                }
                if (result == null) {
                    result = this.caseGGeneralAnnotation(clientServerAnnotation);
                }
                if (result == null) {
                    result = this.caseGARObject(clientServerAnnotation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
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
            case 2: {
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
            case 3: {
                ModePortAnnotation modePortAnnotation = (ModePortAnnotation)theEObject;
                T result = this.caseModePortAnnotation(modePortAnnotation);
                if (result == null) {
                    result = this.caseGeneralAnnotation(modePortAnnotation);
                }
                if (result == null) {
                    result = this.caseARObject(modePortAnnotation);
                }
                if (result == null) {
                    result = this.caseGGeneralAnnotation(modePortAnnotation);
                }
                if (result == null) {
                    result = this.caseGARObject(modePortAnnotation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                NvDataPortAnnotation nvDataPortAnnotation = (NvDataPortAnnotation)theEObject;
                T result = this.caseNvDataPortAnnotation(nvDataPortAnnotation);
                if (result == null) {
                    result = this.caseGeneralAnnotation(nvDataPortAnnotation);
                }
                if (result == null) {
                    result = this.caseARObject(nvDataPortAnnotation);
                }
                if (result == null) {
                    result = this.caseGGeneralAnnotation(nvDataPortAnnotation);
                }
                if (result == null) {
                    result = this.caseGARObject(nvDataPortAnnotation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                ParameterPortAnnotation parameterPortAnnotation = (ParameterPortAnnotation)theEObject;
                T result = this.caseParameterPortAnnotation(parameterPortAnnotation);
                if (result == null) {
                    result = this.caseGeneralAnnotation(parameterPortAnnotation);
                }
                if (result == null) {
                    result = this.caseARObject(parameterPortAnnotation);
                }
                if (result == null) {
                    result = this.caseGGeneralAnnotation(parameterPortAnnotation);
                }
                if (result == null) {
                    result = this.caseGARObject(parameterPortAnnotation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
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
            case 7: {
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
            case 8: {
                TriggerPortAnnotation triggerPortAnnotation = (TriggerPortAnnotation)theEObject;
                T result = this.caseTriggerPortAnnotation(triggerPortAnnotation);
                if (result == null) {
                    result = this.caseGeneralAnnotation(triggerPortAnnotation);
                }
                if (result == null) {
                    result = this.caseARObject(triggerPortAnnotation);
                }
                if (result == null) {
                    result = this.caseGGeneralAnnotation(triggerPortAnnotation);
                }
                if (result == null) {
                    result = this.caseGARObject(triggerPortAnnotation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
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
        }
        return this.defaultCase(theEObject);
    }

    public T caseClientServerAnnotation(ClientServerAnnotation object) {
        return null;
    }

    public T caseDelegatedPortAnnotation(DelegatedPortAnnotation object) {
        return null;
    }

    public T caseIoHwAbstractionServerAnnotation(IoHwAbstractionServerAnnotation object) {
        return null;
    }

    public T caseModePortAnnotation(ModePortAnnotation object) {
        return null;
    }

    public T caseNvDataPortAnnotation(NvDataPortAnnotation object) {
        return null;
    }

    public T caseParameterPortAnnotation(ParameterPortAnnotation object) {
        return null;
    }

    public T caseReceiverAnnotation(ReceiverAnnotation object) {
        return null;
    }

    public T caseSenderAnnotation(SenderAnnotation object) {
        return null;
    }

    public T caseTriggerPortAnnotation(TriggerPortAnnotation object) {
        return null;
    }

    public T caseSenderReceiverAnnotation(SenderReceiverAnnotation object) {
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

