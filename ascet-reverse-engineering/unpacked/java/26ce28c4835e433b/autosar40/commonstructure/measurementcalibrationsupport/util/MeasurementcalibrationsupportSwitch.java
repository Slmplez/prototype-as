/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.commonstructure.measurementcalibrationsupport.util;

import autosar40.commonstructure.measurementcalibrationsupport.ImplementationElementInParameterInstanceRef;
import autosar40.commonstructure.measurementcalibrationsupport.McDataInstance;
import autosar40.commonstructure.measurementcalibrationsupport.McParameterElementGroup;
import autosar40.commonstructure.measurementcalibrationsupport.McSupportData;
import autosar40.commonstructure.measurementcalibrationsupport.McSwEmulationMethodSupport;
import autosar40.commonstructure.measurementcalibrationsupport.MeasurementcalibrationsupportPackage;
import autosar40.genericstructure.abstractstructure.AtpInstanceRef;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MeasurementcalibrationsupportSwitch<T> {
    protected static MeasurementcalibrationsupportPackage modelPackage;

    public MeasurementcalibrationsupportSwitch() {
        if (modelPackage == null) {
            modelPackage = MeasurementcalibrationsupportPackage.eINSTANCE;
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
                ImplementationElementInParameterInstanceRef implementationElementInParameterInstanceRef = (ImplementationElementInParameterInstanceRef)theEObject;
                T result = this.caseImplementationElementInParameterInstanceRef(implementationElementInParameterInstanceRef);
                if (result == null) {
                    result = this.caseAtpInstanceRef(implementationElementInParameterInstanceRef);
                }
                if (result == null) {
                    result = this.caseARObject(implementationElementInParameterInstanceRef);
                }
                if (result == null) {
                    result = this.caseGARObject(implementationElementInParameterInstanceRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                McSupportData mcSupportData = (McSupportData)theEObject;
                T result = this.caseMcSupportData(mcSupportData);
                if (result == null) {
                    result = this.caseARObject(mcSupportData);
                }
                if (result == null) {
                    result = this.caseGARObject(mcSupportData);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                McSwEmulationMethodSupport mcSwEmulationMethodSupport = (McSwEmulationMethodSupport)theEObject;
                T result = this.caseMcSwEmulationMethodSupport(mcSwEmulationMethodSupport);
                if (result == null) {
                    result = this.caseARObject(mcSwEmulationMethodSupport);
                }
                if (result == null) {
                    result = this.caseGARObject(mcSwEmulationMethodSupport);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                McParameterElementGroup mcParameterElementGroup = (McParameterElementGroup)theEObject;
                T result = this.caseMcParameterElementGroup(mcParameterElementGroup);
                if (result == null) {
                    result = this.caseARObject(mcParameterElementGroup);
                }
                if (result == null) {
                    result = this.caseGARObject(mcParameterElementGroup);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                McDataInstance mcDataInstance = (McDataInstance)theEObject;
                T result = this.caseMcDataInstance(mcDataInstance);
                if (result == null) {
                    result = this.caseIdentifiable(mcDataInstance);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(mcDataInstance);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(mcDataInstance);
                }
                if (result == null) {
                    result = this.caseReferrable(mcDataInstance);
                }
                if (result == null) {
                    result = this.caseARObject(mcDataInstance);
                }
                if (result == null) {
                    result = this.caseGReferrable(mcDataInstance);
                }
                if (result == null) {
                    result = this.caseGARObject(mcDataInstance);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseImplementationElementInParameterInstanceRef(ImplementationElementInParameterInstanceRef object) {
        return null;
    }

    public T caseMcSupportData(McSupportData object) {
        return null;
    }

    public T caseMcSwEmulationMethodSupport(McSwEmulationMethodSupport object) {
        return null;
    }

    public T caseMcParameterElementGroup(McParameterElementGroup object) {
        return null;
    }

    public T caseMcDataInstance(McDataInstance object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseAtpInstanceRef(AtpInstanceRef object) {
        return null;
    }

    public T caseGReferrable(GReferrable object) {
        return null;
    }

    public T caseReferrable(Referrable object) {
        return null;
    }

    public T caseMultilanguageReferrable(MultilanguageReferrable object) {
        return null;
    }

    public T caseGIdentifiable(GIdentifiable object) {
        return null;
    }

    public T caseIdentifiable(Identifiable object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

