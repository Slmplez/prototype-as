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
package autosar40.swcomponent.swcinternalbehavior.servicemapping.util;

import autosar40.commonstructure.serviceneeds.ServiceDependency;
import autosar40.genericstructure.abstractstructure.AtpClassifier;
import autosar40.genericstructure.abstractstructure.AtpFeature;
import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.swcomponent.swcinternalbehavior.servicemapping.RoleBasedPortAssignment;
import autosar40.swcomponent.swcinternalbehavior.servicemapping.ServicemappingPackage;
import autosar40.swcomponent.swcinternalbehavior.servicemapping.SwcServiceDependency;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ServicemappingSwitch<T> {
    protected static ServicemappingPackage modelPackage;

    public ServicemappingSwitch() {
        if (modelPackage == null) {
            modelPackage = ServicemappingPackage.eINSTANCE;
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
                RoleBasedPortAssignment roleBasedPortAssignment = (RoleBasedPortAssignment)theEObject;
                T result = this.caseRoleBasedPortAssignment(roleBasedPortAssignment);
                if (result == null) {
                    result = this.caseARObject(roleBasedPortAssignment);
                }
                if (result == null) {
                    result = this.caseGARObject(roleBasedPortAssignment);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                SwcServiceDependency swcServiceDependency = (SwcServiceDependency)theEObject;
                T result = this.caseSwcServiceDependency(swcServiceDependency);
                if (result == null) {
                    result = this.caseAtpStructureElement(swcServiceDependency);
                }
                if (result == null) {
                    result = this.caseServiceDependency(swcServiceDependency);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(swcServiceDependency);
                }
                if (result == null) {
                    result = this.caseAtpFeature(swcServiceDependency);
                }
                if (result == null) {
                    result = this.caseIdentifiable(swcServiceDependency);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(swcServiceDependency);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swcServiceDependency);
                }
                if (result == null) {
                    result = this.caseReferrable(swcServiceDependency);
                }
                if (result == null) {
                    result = this.caseARObject(swcServiceDependency);
                }
                if (result == null) {
                    result = this.caseGReferrable(swcServiceDependency);
                }
                if (result == null) {
                    result = this.caseGARObject(swcServiceDependency);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseRoleBasedPortAssignment(RoleBasedPortAssignment object) {
        return null;
    }

    public T caseSwcServiceDependency(SwcServiceDependency object) {
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

    public T caseAtpClassifier(AtpClassifier object) {
        return null;
    }

    public T caseAtpFeature(AtpFeature object) {
        return null;
    }

    public T caseAtpStructureElement(AtpStructureElement object) {
        return null;
    }

    public T caseServiceDependency(ServiceDependency object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

