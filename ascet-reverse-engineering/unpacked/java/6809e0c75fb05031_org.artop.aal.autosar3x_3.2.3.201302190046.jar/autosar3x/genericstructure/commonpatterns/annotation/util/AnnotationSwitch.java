/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GAnnotation
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GGeneralAnnotation
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GRemark
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.genericstructure.commonpatterns.annotation.util;

import autosar3x.genericstructure.commonpatterns.annotation.Annotation;
import autosar3x.genericstructure.commonpatterns.annotation.AnnotationPackage;
import autosar3x.genericstructure.commonpatterns.annotation.GeneralAnnotation;
import autosar3x.genericstructure.commonpatterns.annotation.Remark;
import autosar3x.genericstructure.infrastructure.ARObject;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GAnnotation;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GGeneralAnnotation;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GRemark;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AnnotationSwitch<T> {
    protected static AnnotationPackage modelPackage;

    public AnnotationSwitch() {
        if (modelPackage == null) {
            modelPackage = AnnotationPackage.eINSTANCE;
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
            case 1: {
                Remark remark = (Remark)theEObject;
                T result = this.caseRemark(remark);
                if (result == null) {
                    result = this.caseARObject(remark);
                }
                if (result == null) {
                    result = this.caseGRemark(remark);
                }
                if (result == null) {
                    result = this.caseGARObject(remark);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                Annotation annotation = (Annotation)theEObject;
                T result = this.caseAnnotation(annotation);
                if (result == null) {
                    result = this.caseGeneralAnnotation(annotation);
                }
                if (result == null) {
                    result = this.caseGAnnotation(annotation);
                }
                if (result == null) {
                    result = this.caseARObject(annotation);
                }
                if (result == null) {
                    result = this.caseGGeneralAnnotation(annotation);
                }
                if (result == null) {
                    result = this.caseGARObject(annotation);
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

    public T caseRemark(Remark object) {
        return null;
    }

    public T caseAnnotation(Annotation object) {
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

    public T caseGRemark(GRemark object) {
        return null;
    }

    public T caseGAnnotation(GAnnotation object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

