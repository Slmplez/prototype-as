/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.util;

import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GAnnotation;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GGeneralAnnotation;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GRemark;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GdocumentationPackage;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GdocumentationSwitch<T> {
    protected static GdocumentationPackage modelPackage;

    public GdocumentationSwitch() {
        if (modelPackage == null) {
            modelPackage = GdocumentationPackage.eINSTANCE;
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
                GAnnotation gAnnotation = (GAnnotation)theEObject;
                T result = this.caseGAnnotation(gAnnotation);
                if (result == null) {
                    result = this.caseGGeneralAnnotation(gAnnotation);
                }
                if (result == null) {
                    result = this.caseGARObject(gAnnotation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                GRemark gRemark = (GRemark)theEObject;
                T result = this.caseGRemark(gRemark);
                if (result == null) {
                    result = this.caseGARObject(gRemark);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                GGeneralAnnotation gGeneralAnnotation = (GGeneralAnnotation)theEObject;
                T result = this.caseGGeneralAnnotation(gGeneralAnnotation);
                if (result == null) {
                    result = this.caseGARObject(gGeneralAnnotation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseGAnnotation(GAnnotation object) {
        return null;
    }

    public T caseGRemark(GRemark object) {
        return null;
    }

    public T caseGGeneralAnnotation(GGeneralAnnotation object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

