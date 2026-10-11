/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.ecuresource.processingunit.util;

import autosar21.ecuresource.HWElement;
import autosar21.ecuresource.HWPort;
import autosar21.ecuresource.processingunit.InterruptConsumeHWPort;
import autosar21.ecuresource.processingunit.InterruptHWPort;
import autosar21.ecuresource.processingunit.InterruptProduceHWPort;
import autosar21.ecuresource.processingunit.MPU;
import autosar21.ecuresource.processingunit.ProcessingUnit;
import autosar21.ecuresource.processingunit.ProcessingunitPackage;
import autosar21.ecuresource.processingunit.Register;
import autosar21.ecuresource.processingunit.SupportedDataType;
import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.NonSplitableElement;
import autosar21.genericstructure.infrastructure.PackageableElement;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ProcessingunitSwitch<T> {
    protected static ProcessingunitPackage modelPackage;

    public ProcessingunitSwitch() {
        if (modelPackage == null) {
            modelPackage = ProcessingunitPackage.eINSTANCE;
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
                InterruptConsumeHWPort interruptConsumeHWPort = (InterruptConsumeHWPort)theEObject;
                T result = this.caseInterruptConsumeHWPort(interruptConsumeHWPort);
                if (result == null) {
                    result = this.caseInterruptHWPort(interruptConsumeHWPort);
                }
                if (result == null) {
                    result = this.caseHWPort(interruptConsumeHWPort);
                }
                if (result == null) {
                    result = this.caseIdentifiable(interruptConsumeHWPort);
                }
                if (result == null) {
                    result = this.caseARObject(interruptConsumeHWPort);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(interruptConsumeHWPort);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)interruptConsumeHWPort);
                }
                if (result == null) {
                    result = this.caseGARObject(interruptConsumeHWPort);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                InterruptHWPort interruptHWPort = (InterruptHWPort)theEObject;
                T result = this.caseInterruptHWPort(interruptHWPort);
                if (result == null) {
                    result = this.caseHWPort(interruptHWPort);
                }
                if (result == null) {
                    result = this.caseIdentifiable(interruptHWPort);
                }
                if (result == null) {
                    result = this.caseARObject(interruptHWPort);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(interruptHWPort);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)interruptHWPort);
                }
                if (result == null) {
                    result = this.caseGARObject(interruptHWPort);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                MPU mpu = (MPU)theEObject;
                T result = this.caseMPU(mpu);
                if (result == null) {
                    result = this.caseARObject(mpu);
                }
                if (result == null) {
                    result = this.caseGARObject(mpu);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                ProcessingUnit processingUnit = (ProcessingUnit)theEObject;
                T result = this.caseProcessingUnit(processingUnit);
                if (result == null) {
                    result = this.caseHWElement(processingUnit);
                }
                if (result == null) {
                    result = this.caseARElement(processingUnit);
                }
                if (result == null) {
                    result = this.caseNonSplitableElement(processingUnit);
                }
                if (result == null) {
                    result = this.casePackageableElement(processingUnit);
                }
                if (result == null) {
                    result = this.caseIdentifiable(processingUnit);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(processingUnit);
                }
                if (result == null) {
                    result = this.caseARObject(processingUnit);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(processingUnit);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)processingUnit);
                }
                if (result == null) {
                    result = this.caseGARObject(processingUnit);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                Register register = (Register)theEObject;
                T result = this.caseRegister(register);
                if (result == null) {
                    result = this.caseARObject(register);
                }
                if (result == null) {
                    result = this.caseGARObject(register);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                SupportedDataType supportedDataType = (SupportedDataType)theEObject;
                T result = this.caseSupportedDataType(supportedDataType);
                if (result == null) {
                    result = this.caseIdentifiable(supportedDataType);
                }
                if (result == null) {
                    result = this.caseARObject(supportedDataType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(supportedDataType);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)supportedDataType);
                }
                if (result == null) {
                    result = this.caseGARObject(supportedDataType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                InterruptProduceHWPort interruptProduceHWPort = (InterruptProduceHWPort)theEObject;
                T result = this.caseInterruptProduceHWPort(interruptProduceHWPort);
                if (result == null) {
                    result = this.caseInterruptHWPort(interruptProduceHWPort);
                }
                if (result == null) {
                    result = this.caseHWPort(interruptProduceHWPort);
                }
                if (result == null) {
                    result = this.caseIdentifiable(interruptProduceHWPort);
                }
                if (result == null) {
                    result = this.caseARObject(interruptProduceHWPort);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(interruptProduceHWPort);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)interruptProduceHWPort);
                }
                if (result == null) {
                    result = this.caseGARObject(interruptProduceHWPort);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseInterruptConsumeHWPort(InterruptConsumeHWPort object) {
        return null;
    }

    public T caseInterruptHWPort(InterruptHWPort object) {
        return null;
    }

    public T caseMPU(MPU object) {
        return null;
    }

    public T caseProcessingUnit(ProcessingUnit object) {
        return null;
    }

    public T caseRegister(Register object) {
        return null;
    }

    public T caseSupportedDataType(SupportedDataType object) {
        return null;
    }

    public T caseInterruptProduceHWPort(InterruptProduceHWPort object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseGReferrable(GReferrable object) {
        return null;
    }

    public T caseGIdentifiable(GIdentifiable object) {
        return null;
    }

    public T caseIdentifiable(Identifiable object) {
        return null;
    }

    public T caseHWPort(HWPort object) {
        return null;
    }

    public T caseGPackageableElement(GPackageableElement object) {
        return null;
    }

    public T casePackageableElement(PackageableElement object) {
        return null;
    }

    public T caseNonSplitableElement(NonSplitableElement object) {
        return null;
    }

    public T caseARElement(ARElement object) {
        return null;
    }

    public T caseHWElement(HWElement object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

