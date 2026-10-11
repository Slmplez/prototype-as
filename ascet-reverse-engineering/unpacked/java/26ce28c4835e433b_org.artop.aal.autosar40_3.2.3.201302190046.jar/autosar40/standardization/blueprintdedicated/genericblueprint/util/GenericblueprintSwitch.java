/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.standardization.blueprintdedicated.genericblueprint.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintMapping;
import autosar40.standardization.blueprintdedicated.genericblueprint.BlueprintMapping;
import autosar40.standardization.blueprintdedicated.genericblueprint.GenericblueprintPackage;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GenericblueprintSwitch<T> {
    protected static GenericblueprintPackage modelPackage;

    public GenericblueprintSwitch() {
        if (modelPackage == null) {
            modelPackage = GenericblueprintPackage.eINSTANCE;
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
                BlueprintMapping blueprintMapping = (BlueprintMapping)theEObject;
                T result = this.caseBlueprintMapping(blueprintMapping);
                if (result == null) {
                    result = this.caseAtpBlueprintMapping(blueprintMapping);
                }
                if (result == null) {
                    result = this.caseARObject(blueprintMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(blueprintMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseBlueprintMapping(BlueprintMapping object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseAtpBlueprintMapping(AtpBlueprintMapping object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

