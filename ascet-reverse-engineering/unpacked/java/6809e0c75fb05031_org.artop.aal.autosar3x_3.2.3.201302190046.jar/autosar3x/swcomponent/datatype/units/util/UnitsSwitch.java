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
package autosar3x.swcomponent.datatype.units.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import autosar3x.swcomponent.datatype.units.DisplayName;
import autosar3x.swcomponent.datatype.units.PhysicalDimension;
import autosar3x.swcomponent.datatype.units.Unit;
import autosar3x.swcomponent.datatype.units.UnitGroup;
import autosar3x.swcomponent.datatype.units.UnitSpec;
import autosar3x.swcomponent.datatype.units.UnitsPackage;
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
                DisplayName displayName = (DisplayName)theEObject;
                T result = this.caseDisplayName(displayName);
                if (result == null) {
                    result = this.caseARObject(displayName);
                }
                if (result == null) {
                    result = this.caseGARObject(displayName);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
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
                    result = this.caseIdentifiable(physicalDimension);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(physicalDimension);
                }
                if (result == null) {
                    result = this.caseARObject(physicalDimension);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(physicalDimension);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)physicalDimension);
                }
                if (result == null) {
                    result = this.caseGARObject(physicalDimension);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                UnitGroup unitGroup = (UnitGroup)theEObject;
                T result = this.caseUnitGroup(unitGroup);
                if (result == null) {
                    result = this.caseIdentifiable(unitGroup);
                }
                if (result == null) {
                    result = this.caseARObject(unitGroup);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(unitGroup);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)unitGroup);
                }
                if (result == null) {
                    result = this.caseGARObject(unitGroup);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                UnitSpec unitSpec = (UnitSpec)theEObject;
                T result = this.caseUnitSpec(unitSpec);
                if (result == null) {
                    result = this.caseARObject(unitSpec);
                }
                if (result == null) {
                    result = this.caseGARObject(unitSpec);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
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
                    result = this.caseIdentifiable(unit);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(unit);
                }
                if (result == null) {
                    result = this.caseARObject(unit);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(unit);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)unit);
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

    public T caseDisplayName(DisplayName object) {
        return null;
    }

    public T casePhysicalDimension(PhysicalDimension object) {
        return null;
    }

    public T caseUnitGroup(UnitGroup object) {
        return null;
    }

    public T caseUnitSpec(UnitSpec object) {
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

