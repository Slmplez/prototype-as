/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GGeneralAnnotation
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.genericstructure.generaltemplateclasses.generalannotation.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.generalannotation.GeneralAnnotation;
import autosar40.genericstructure.generaltemplateclasses.generalannotation.GeneralannotationPackage;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GGeneralAnnotation;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GeneralannotationSwitch<T> {
    protected static GeneralannotationPackage modelPackage;

    public GeneralannotationSwitch() {
        if (modelPackage == null) {
            modelPackage = GeneralannotationPackage.eINSTANCE;
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
                GeneralAnnotation generalAnnotation = (GeneralAnnotation)theEObject;
                T result = this.caseGeneralAnnotation(generalAnnotation);
                if (result == null) {
                    result = this.caseARObject(generalAnnotation);
                }
                if (result == null) {
                    result = this.caseGGeneralAnnotation(generalAnnotation);
                }
                if (result == null) {
                    result = this.caseGARObject(generalAnnotation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseGeneralAnnotation(GeneralAnnotation object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseGGeneralAnnotation(GGeneralAnnotation object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

