/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gresourceconsumption.GResourceConsumption
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.commonstructure.resourceconsumption.util;

import autosar40.commonstructure.resourceconsumption.HardwareConfiguration;
import autosar40.commonstructure.resourceconsumption.ResourceConsumption;
import autosar40.commonstructure.resourceconsumption.ResourceconsumptionPackage;
import autosar40.commonstructure.resourceconsumption.SoftwareContext;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import gautosar.gcommonstructure.gresourceconsumption.GResourceConsumption;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ResourceconsumptionSwitch<T> {
    protected static ResourceconsumptionPackage modelPackage;

    public ResourceconsumptionSwitch() {
        if (modelPackage == null) {
            modelPackage = ResourceconsumptionPackage.eINSTANCE;
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
                HardwareConfiguration hardwareConfiguration = (HardwareConfiguration)theEObject;
                T result = this.caseHardwareConfiguration(hardwareConfiguration);
                if (result == null) {
                    result = this.caseARObject(hardwareConfiguration);
                }
                if (result == null) {
                    result = this.caseGARObject(hardwareConfiguration);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                SoftwareContext softwareContext = (SoftwareContext)theEObject;
                T result = this.caseSoftwareContext(softwareContext);
                if (result == null) {
                    result = this.caseARObject(softwareContext);
                }
                if (result == null) {
                    result = this.caseGARObject(softwareContext);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                ResourceConsumption resourceConsumption = (ResourceConsumption)theEObject;
                T result = this.caseResourceConsumption(resourceConsumption);
                if (result == null) {
                    result = this.caseIdentifiable(resourceConsumption);
                }
                if (result == null) {
                    result = this.caseGResourceConsumption(resourceConsumption);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(resourceConsumption);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(resourceConsumption);
                }
                if (result == null) {
                    result = this.caseReferrable(resourceConsumption);
                }
                if (result == null) {
                    result = this.caseARObject(resourceConsumption);
                }
                if (result == null) {
                    result = this.caseGReferrable(resourceConsumption);
                }
                if (result == null) {
                    result = this.caseGARObject(resourceConsumption);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseHardwareConfiguration(HardwareConfiguration object) {
        return null;
    }

    public T caseSoftwareContext(SoftwareContext object) {
        return null;
    }

    public T caseResourceConsumption(ResourceConsumption object) {
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

    public T caseGResourceConsumption(GResourceConsumption object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

