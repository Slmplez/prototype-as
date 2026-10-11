/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.ggenericstructure.gformulalanguage.util;

import gautosar.ggenericstructure.gformulalanguage.GFormulaExpression;
import gautosar.ggenericstructure.gformulalanguage.GformulalanguagePackage;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GformulalanguageSwitch<T> {
    protected static GformulalanguagePackage modelPackage;

    public GformulalanguageSwitch() {
        if (modelPackage == null) {
            modelPackage = GformulalanguagePackage.eINSTANCE;
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
                GFormulaExpression gFormulaExpression = (GFormulaExpression)theEObject;
                T result = this.caseGFormulaExpression(gFormulaExpression);
                if (result == null) {
                    result = this.caseGARObject(gFormulaExpression);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseGFormulaExpression(GFormulaExpression object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

