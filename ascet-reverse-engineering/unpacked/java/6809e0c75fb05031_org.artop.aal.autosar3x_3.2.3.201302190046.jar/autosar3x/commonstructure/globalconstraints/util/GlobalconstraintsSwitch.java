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
package autosar3x.commonstructure.globalconstraints.util;

import autosar3x.commonstructure.globalconstraints.DataConstr;
import autosar3x.commonstructure.globalconstraints.DataConstrRule;
import autosar3x.commonstructure.globalconstraints.GlobalconstraintsPackage;
import autosar3x.commonstructure.globalconstraints.InternalConstrs;
import autosar3x.commonstructure.globalconstraints.PhysConstrs;
import autosar3x.commonstructure.globalconstraints.ScaleConstr;
import autosar3x.commonstructure.globalconstraints.ScaleConstrs;
import autosar3x.commonstructure.globalconstraints.SwConstrObjects;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
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
public class GlobalconstraintsSwitch<T> {
    protected static GlobalconstraintsPackage modelPackage;

    public GlobalconstraintsSwitch() {
        if (modelPackage == null) {
            modelPackage = GlobalconstraintsPackage.eINSTANCE;
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
                DataConstr dataConstr = (DataConstr)theEObject;
                T result = this.caseDataConstr(dataConstr);
                if (result == null) {
                    result = this.caseARElement(dataConstr);
                }
                if (result == null) {
                    result = this.casePackageableElement(dataConstr);
                }
                if (result == null) {
                    result = this.caseIdentifiable(dataConstr);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(dataConstr);
                }
                if (result == null) {
                    result = this.caseARObject(dataConstr);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(dataConstr);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)dataConstr);
                }
                if (result == null) {
                    result = this.caseGARObject(dataConstr);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                SwConstrObjects swConstrObjects = (SwConstrObjects)theEObject;
                T result = this.caseSwConstrObjects(swConstrObjects);
                if (result == null) {
                    result = this.caseARObject(swConstrObjects);
                }
                if (result == null) {
                    result = this.caseGARObject(swConstrObjects);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                DataConstrRule dataConstrRule = (DataConstrRule)theEObject;
                T result = this.caseDataConstrRule(dataConstrRule);
                if (result == null) {
                    result = this.caseARObject(dataConstrRule);
                }
                if (result == null) {
                    result = this.caseGARObject(dataConstrRule);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                PhysConstrs physConstrs = (PhysConstrs)theEObject;
                T result = this.casePhysConstrs(physConstrs);
                if (result == null) {
                    result = this.caseARObject(physConstrs);
                }
                if (result == null) {
                    result = this.caseGARObject(physConstrs);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                ScaleConstr scaleConstr = (ScaleConstr)theEObject;
                T result = this.caseScaleConstr(scaleConstr);
                if (result == null) {
                    result = this.caseARObject(scaleConstr);
                }
                if (result == null) {
                    result = this.caseGARObject(scaleConstr);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                InternalConstrs internalConstrs = (InternalConstrs)theEObject;
                T result = this.caseInternalConstrs(internalConstrs);
                if (result == null) {
                    result = this.caseARObject(internalConstrs);
                }
                if (result == null) {
                    result = this.caseGARObject(internalConstrs);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                ScaleConstrs scaleConstrs = (ScaleConstrs)theEObject;
                T result = this.caseScaleConstrs(scaleConstrs);
                if (result == null) {
                    result = this.caseARObject(scaleConstrs);
                }
                if (result == null) {
                    result = this.caseGARObject(scaleConstrs);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseDataConstr(DataConstr object) {
        return null;
    }

    public T caseSwConstrObjects(SwConstrObjects object) {
        return null;
    }

    public T caseDataConstrRule(DataConstrRule object) {
        return null;
    }

    public T casePhysConstrs(PhysConstrs object) {
        return null;
    }

    public T caseScaleConstr(ScaleConstr object) {
        return null;
    }

    public T caseInternalConstrs(InternalConstrs object) {
        return null;
    }

    public T caseScaleConstrs(ScaleConstrs object) {
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

    public T caseGPackageableElement(GPackageableElement object) {
        return null;
    }

    public T casePackageableElement(PackageableElement object) {
        return null;
    }

    public T caseARElement(ARElement object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

