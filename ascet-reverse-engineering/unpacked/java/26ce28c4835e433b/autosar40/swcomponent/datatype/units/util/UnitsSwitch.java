/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gdatatype.gunits.GPhysicalDimension
 *  gautosar.gswcomponents.gdatatype.gunits.GUnit
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.swcomponent.datatype.units.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.swcomponent.datatype.units.PhysicalDimension;
import autosar40.swcomponent.datatype.units.Unit;
import autosar40.swcomponent.datatype.units.UnitGroup;
import autosar40.swcomponent.datatype.units.UnitsPackage;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gdatatype.gunits.GPhysicalDimension;
import gautosar.gswcomponents.gdatatype.gunits.GUnit;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class UnitsSwitch<T> {
    protected static UnitsPackage modelPackage;

    public UnitsSwitch() {
        if (modelPackage == null) {
            modelPackage = UnitsPackage.eINSTANCE;
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
                PhysicalDimension physicalDimension = (PhysicalDimension)theEObject;
                T result = this.casePhysicalDimension(physicalDimension);
                if (result == null) {
                    result = this.caseARElement(physicalDimension);
                }
                if (result == null) {
                    result = this.caseGPhysicalDimension(physicalDimension);
                }
                if (result == null) {
                    result = this.casePackageableElement(physicalDimension);
                }
                if (result == null) {
                    result = this.caseCollectableElement(physicalDimension);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(physicalDimension);
                }
                if (result == null) {
                    result = this.caseIdentifiable(physicalDimension);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(physicalDimension);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(physicalDimension);
                }
                if (result == null) {
                    result = this.caseReferrable(physicalDimension);
                }
                if (result == null) {
                    result = this.caseARObject(physicalDimension);
                }
                if (result == null) {
                    result = this.caseGReferrable(physicalDimension);
                }
                if (result == null) {
                    result = this.caseGARObject(physicalDimension);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                UnitGroup unitGroup = (UnitGroup)theEObject;
                T result = this.caseUnitGroup(unitGroup);
                if (result == null) {
                    result = this.caseARElement(unitGroup);
                }
                if (result == null) {
                    result = this.casePackageableElement(unitGroup);
                }
                if (result == null) {
                    result = this.caseCollectableElement(unitGroup);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(unitGroup);
                }
                if (result == null) {
                    result = this.caseIdentifiable(unitGroup);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(unitGroup);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(unitGroup);
                }
                if (result == null) {
                    result = this.caseReferrable(unitGroup);
                }
                if (result == null) {
                    result = this.caseARObject(unitGroup);
                }
                if (result == null) {
                    result = this.caseGReferrable(unitGroup);
                }
                if (result == null) {
                    result = this.caseGARObject(unitGroup);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                Unit unit = (Unit)theEObject;
                T result = this.caseUnit(unit);
                if (result == null) {
                    result = this.caseARElement(unit);
                }
                if (result == null) {
                    result = this.caseGUnit(unit);
                }
                if (result == null) {
                    result = this.casePackageableElement(unit);
                }
                if (result == null) {
                    result = this.caseCollectableElement(unit);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(unit);
                }
                if (result == null) {
                    result = this.caseIdentifiable(unit);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(unit);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(unit);
                }
                if (result == null) {
                    result = this.caseReferrable(unit);
                }
                if (result == null) {
                    result = this.caseARObject(unit);
                }
                if (result == null) {
                    result = this.caseGReferrable(unit);
                }
                if (result == null) {
                    result = this.caseGARObject(unit);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T casePhysicalDimension(PhysicalDimension object) {
        return null;
    }

    public T caseUnitGroup(UnitGroup object) {
        return null;
    }

    public T caseUnit(Unit object) {
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

    public T caseCollectableElement(CollectableElement object) {
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

    public T caseGPhysicalDimension(GPhysicalDimension object) {
        return null;
    }

    public T caseGUnit(GUnit object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

