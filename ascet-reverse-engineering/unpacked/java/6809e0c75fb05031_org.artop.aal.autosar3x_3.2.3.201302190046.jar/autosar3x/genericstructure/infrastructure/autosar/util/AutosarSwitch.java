/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GARPackage
 *  gautosar.ggenericstructure.ginfrastructure.GAUTOSAR
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.genericstructure.infrastructure.autosar.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.autosar.ARPackage;
import autosar3x.genericstructure.infrastructure.autosar.AUTOSAR;
import autosar3x.genericstructure.infrastructure.autosar.AutosarPackage;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GARPackage;
import gautosar.ggenericstructure.ginfrastructure.GAUTOSAR;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import java.util.Map;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AutosarSwitch<T> {
    protected static AutosarPackage modelPackage;

    public AutosarSwitch() {
        if (modelPackage == null) {
            modelPackage = AutosarPackage.eINSTANCE;
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
                ARPackage arPackage = (ARPackage)theEObject;
                T result = this.caseARPackage(arPackage);
                if (result == null) {
                    result = this.caseIdentifiable(arPackage);
                }
                if (result == null) {
                    result = this.caseGARPackage(arPackage);
                }
                if (result == null) {
                    result = this.caseARObject(arPackage);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(arPackage);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)arPackage);
                }
                if (result == null) {
                    result = this.caseGARObject(arPackage);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                AUTOSAR autosar = (AUTOSAR)theEObject;
                T result = this.caseAUTOSAR(autosar);
                if (result == null) {
                    result = this.caseARObject(autosar);
                }
                if (result == null) {
                    result = this.caseGAUTOSAR(autosar);
                }
                if (result == null) {
                    result = this.caseGARObject(autosar);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                Map.Entry autosarAllExtensionsMapEntry = (Map.Entry)theEObject;
                T result = this.caseAUTOSARAllExtensionsMapEntry(autosarAllExtensionsMapEntry);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseARPackage(ARPackage object) {
        return null;
    }

    public T caseAUTOSAR(AUTOSAR object) {
        return null;
    }

    public T caseAUTOSARAllExtensionsMapEntry(Map.Entry<String, EObject> object) {
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

    public T caseGARPackage(GARPackage object) {
        return null;
    }

    public T caseGAUTOSAR(GAUTOSAR object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

