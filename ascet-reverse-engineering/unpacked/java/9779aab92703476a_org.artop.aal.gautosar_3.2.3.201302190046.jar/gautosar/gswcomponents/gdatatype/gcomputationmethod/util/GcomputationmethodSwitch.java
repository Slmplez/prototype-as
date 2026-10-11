/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gswcomponents.gdatatype.gcomputationmethod.util;

import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompu;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConst;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstContent;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstFormulaContent;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstNumericContent;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstTextContent;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuContent;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuMethod;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuNominatorDenominator;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuRationalCoeffs;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScale;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScaleConstantContents;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScaleContents;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScaleRationalFormula;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScales;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GcomputationmethodPackage;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GcomputationmethodSwitch<T> {
    protected static GcomputationmethodPackage modelPackage;

    public GcomputationmethodSwitch() {
        if (modelPackage == null) {
            modelPackage = GcomputationmethodPackage.eINSTANCE;
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
                GCompuMethod gCompuMethod = (GCompuMethod)theEObject;
                T result = this.caseGCompuMethod(gCompuMethod);
                if (result == null) {
                    result = this.caseGPackageableElement(gCompuMethod);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gCompuMethod);
                }
                if (result == null) {
                    result = this.caseGReferrable(gCompuMethod);
                }
                if (result == null) {
                    result = this.caseGARObject(gCompuMethod);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                GCompu gCompu = (GCompu)theEObject;
                T result = this.caseGCompu(gCompu);
                if (result == null) {
                    result = this.caseGARObject(gCompu);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                GCompuContent gCompuContent = (GCompuContent)theEObject;
                T result = this.caseGCompuContent(gCompuContent);
                if (result == null) {
                    result = this.caseGARObject(gCompuContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                GCompuScales gCompuScales = (GCompuScales)theEObject;
                T result = this.caseGCompuScales(gCompuScales);
                if (result == null) {
                    result = this.caseGCompuContent(gCompuScales);
                }
                if (result == null) {
                    result = this.caseGARObject(gCompuScales);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                GCompuScale gCompuScale = (GCompuScale)theEObject;
                T result = this.caseGCompuScale(gCompuScale);
                if (result == null) {
                    result = this.caseGARObject(gCompuScale);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                GCompuScaleContents gCompuScaleContents = (GCompuScaleContents)theEObject;
                T result = this.caseGCompuScaleContents(gCompuScaleContents);
                if (result == null) {
                    result = this.caseGARObject(gCompuScaleContents);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                GCompuScaleConstantContents gCompuScaleConstantContents = (GCompuScaleConstantContents)theEObject;
                T result = this.caseGCompuScaleConstantContents(gCompuScaleConstantContents);
                if (result == null) {
                    result = this.caseGCompuScaleContents(gCompuScaleConstantContents);
                }
                if (result == null) {
                    result = this.caseGARObject(gCompuScaleConstantContents);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                GCompuScaleRationalFormula gCompuScaleRationalFormula = (GCompuScaleRationalFormula)theEObject;
                T result = this.caseGCompuScaleRationalFormula(gCompuScaleRationalFormula);
                if (result == null) {
                    result = this.caseGCompuScaleContents(gCompuScaleRationalFormula);
                }
                if (result == null) {
                    result = this.caseGARObject(gCompuScaleRationalFormula);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                GCompuConst gCompuConst = (GCompuConst)theEObject;
                T result = this.caseGCompuConst(gCompuConst);
                if (result == null) {
                    result = this.caseGARObject(gCompuConst);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                GCompuConstContent gCompuConstContent = (GCompuConstContent)theEObject;
                T result = this.caseGCompuConstContent(gCompuConstContent);
                if (result == null) {
                    result = this.caseGARObject(gCompuConstContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                GCompuConstTextContent gCompuConstTextContent = (GCompuConstTextContent)theEObject;
                T result = this.caseGCompuConstTextContent(gCompuConstTextContent);
                if (result == null) {
                    result = this.caseGCompuConstContent(gCompuConstTextContent);
                }
                if (result == null) {
                    result = this.caseGARObject(gCompuConstTextContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                GCompuConstNumericContent gCompuConstNumericContent = (GCompuConstNumericContent)theEObject;
                T result = this.caseGCompuConstNumericContent(gCompuConstNumericContent);
                if (result == null) {
                    result = this.caseGCompuConstContent(gCompuConstNumericContent);
                }
                if (result == null) {
                    result = this.caseGARObject(gCompuConstNumericContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                GCompuConstFormulaContent gCompuConstFormulaContent = (GCompuConstFormulaContent)theEObject;
                T result = this.caseGCompuConstFormulaContent(gCompuConstFormulaContent);
                if (result == null) {
                    result = this.caseGCompuConstContent(gCompuConstFormulaContent);
                }
                if (result == null) {
                    result = this.caseGARObject(gCompuConstFormulaContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                GCompuRationalCoeffs gCompuRationalCoeffs = (GCompuRationalCoeffs)theEObject;
                T result = this.caseGCompuRationalCoeffs(gCompuRationalCoeffs);
                if (result == null) {
                    result = this.caseGARObject(gCompuRationalCoeffs);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 14: {
                GCompuNominatorDenominator gCompuNominatorDenominator = (GCompuNominatorDenominator)theEObject;
                T result = this.caseGCompuNominatorDenominator(gCompuNominatorDenominator);
                if (result == null) {
                    result = this.caseGARObject(gCompuNominatorDenominator);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseGCompuMethod(GCompuMethod object) {
        return null;
    }

    public T caseGCompu(GCompu object) {
        return null;
    }

    public T caseGCompuContent(GCompuContent object) {
        return null;
    }

    public T caseGCompuScales(GCompuScales object) {
        return null;
    }

    public T caseGCompuScale(GCompuScale object) {
        return null;
    }

    public T caseGCompuScaleContents(GCompuScaleContents object) {
        return null;
    }

    public T caseGCompuScaleConstantContents(GCompuScaleConstantContents object) {
        return null;
    }

    public T caseGCompuScaleRationalFormula(GCompuScaleRationalFormula object) {
        return null;
    }

    public T caseGCompuConst(GCompuConst object) {
        return null;
    }

    public T caseGCompuConstContent(GCompuConstContent object) {
        return null;
    }

    public T caseGCompuConstTextContent(GCompuConstTextContent object) {
        return null;
    }

    public T caseGCompuConstNumericContent(GCompuConstNumericContent object) {
        return null;
    }

    public T caseGCompuConstFormulaContent(GCompuConstFormulaContent object) {
        return null;
    }

    public T caseGCompuRationalCoeffs(GCompuRationalCoeffs object) {
        return null;
    }

    public T caseGCompuNominatorDenominator(GCompuNominatorDenominator object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseGReferrable(GReferrable object) {
        return null;
    }

    public T caseGIdentifiable(GIdentifiable object) {
        return null;
    }

    public T caseGPackageableElement(GPackageableElement object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

