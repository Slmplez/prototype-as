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
package autosar3x.commonstructure.swclass.util;

import autosar3x.commonstructure.swclass.SwCalprmImpl;
import autosar3x.commonstructure.swclass.SwCalprmPrototype;
import autosar3x.commonstructure.swclass.SwClassAttr;
import autosar3x.commonstructure.swclass.SwClassAttrImpl;
import autosar3x.commonstructure.swclass.SwClassAttrInstanceImpl;
import autosar3x.commonstructure.swclass.SwClassImpl;
import autosar3x.commonstructure.swclass.SwClassInstance;
import autosar3x.commonstructure.swclass.SwClassPrototype;
import autosar3x.commonstructure.swclass.SwServicePrototype;
import autosar3x.commonstructure.swclass.SwVariableImpl;
import autosar3x.commonstructure.swclass.SwVariablePrototype;
import autosar3x.commonstructure.swclass.SwclassPackage;
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
public class SwclassSwitch<T> {
    protected static SwclassPackage modelPackage;

    public SwclassSwitch() {
        if (modelPackage == null) {
            modelPackage = SwclassPackage.eINSTANCE;
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
                SwCalprmImpl swCalprmImpl = (SwCalprmImpl)theEObject;
                T result = this.caseSwCalprmImpl(swCalprmImpl);
                if (result == null) {
                    result = this.caseARObject(swCalprmImpl);
                }
                if (result == null) {
                    result = this.caseGARObject(swCalprmImpl);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                SwCalprmPrototype swCalprmPrototype = (SwCalprmPrototype)theEObject;
                T result = this.caseSwCalprmPrototype(swCalprmPrototype);
                if (result == null) {
                    result = this.caseIdentifiable(swCalprmPrototype);
                }
                if (result == null) {
                    result = this.caseARObject(swCalprmPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swCalprmPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)swCalprmPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(swCalprmPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                SwClassAttr swClassAttr = (SwClassAttr)theEObject;
                T result = this.caseSwClassAttr(swClassAttr);
                if (result == null) {
                    result = this.caseARObject(swClassAttr);
                }
                if (result == null) {
                    result = this.caseGARObject(swClassAttr);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                SwVariablePrototype swVariablePrototype = (SwVariablePrototype)theEObject;
                T result = this.caseSwVariablePrototype(swVariablePrototype);
                if (result == null) {
                    result = this.caseIdentifiable(swVariablePrototype);
                }
                if (result == null) {
                    result = this.caseARObject(swVariablePrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swVariablePrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)swVariablePrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(swVariablePrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                SwClassPrototype swClassPrototype = (SwClassPrototype)theEObject;
                T result = this.caseSwClassPrototype(swClassPrototype);
                if (result == null) {
                    result = this.caseIdentifiable(swClassPrototype);
                }
                if (result == null) {
                    result = this.caseARObject(swClassPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swClassPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)swClassPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(swClassPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                SwServicePrototype swServicePrototype = (SwServicePrototype)theEObject;
                T result = this.caseSwServicePrototype(swServicePrototype);
                if (result == null) {
                    result = this.caseIdentifiable(swServicePrototype);
                }
                if (result == null) {
                    result = this.caseARObject(swServicePrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swServicePrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)swServicePrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(swServicePrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                SwClassAttrImpl swClassAttrImpl = (SwClassAttrImpl)theEObject;
                T result = this.caseSwClassAttrImpl(swClassAttrImpl);
                if (result == null) {
                    result = this.caseIdentifiable(swClassAttrImpl);
                }
                if (result == null) {
                    result = this.caseARObject(swClassAttrImpl);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swClassAttrImpl);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)swClassAttrImpl);
                }
                if (result == null) {
                    result = this.caseGARObject(swClassAttrImpl);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                SwClassImpl swClassImpl = (SwClassImpl)theEObject;
                T result = this.caseSwClassImpl(swClassImpl);
                if (result == null) {
                    result = this.caseARObject(swClassImpl);
                }
                if (result == null) {
                    result = this.caseGARObject(swClassImpl);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                SwVariableImpl swVariableImpl = (SwVariableImpl)theEObject;
                T result = this.caseSwVariableImpl(swVariableImpl);
                if (result == null) {
                    result = this.caseARObject(swVariableImpl);
                }
                if (result == null) {
                    result = this.caseGARObject(swVariableImpl);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                SwClassAttrInstanceImpl swClassAttrInstanceImpl = (SwClassAttrInstanceImpl)theEObject;
                T result = this.caseSwClassAttrInstanceImpl(swClassAttrInstanceImpl);
                if (result == null) {
                    result = this.caseARObject(swClassAttrInstanceImpl);
                }
                if (result == null) {
                    result = this.caseGARObject(swClassAttrInstanceImpl);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                SwClassInstance swClassInstance = (SwClassInstance)theEObject;
                T result = this.caseSwClassInstance(swClassInstance);
                if (result == null) {
                    result = this.caseARElement(swClassInstance);
                }
                if (result == null) {
                    result = this.casePackageableElement(swClassInstance);
                }
                if (result == null) {
                    result = this.caseIdentifiable(swClassInstance);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(swClassInstance);
                }
                if (result == null) {
                    result = this.caseARObject(swClassInstance);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swClassInstance);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)swClassInstance);
                }
                if (result == null) {
                    result = this.caseGARObject(swClassInstance);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseSwCalprmImpl(SwCalprmImpl object) {
        return null;
    }

    public T caseSwCalprmPrototype(SwCalprmPrototype object) {
        return null;
    }

    public T caseSwClassAttr(SwClassAttr object) {
        return null;
    }

    public T caseSwVariablePrototype(SwVariablePrototype object) {
        return null;
    }

    public T caseSwClassPrototype(SwClassPrototype object) {
        return null;
    }

    public T caseSwServicePrototype(SwServicePrototype object) {
        return null;
    }

    public T caseSwClassAttrImpl(SwClassAttrImpl object) {
        return null;
    }

    public T caseSwClassImpl(SwClassImpl object) {
        return null;
    }

    public T caseSwVariableImpl(SwVariableImpl object) {
        return null;
    }

    public T caseSwClassAttrInstanceImpl(SwClassAttrInstanceImpl object) {
        return null;
    }

    public T caseSwClassInstance(SwClassInstance object) {
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

