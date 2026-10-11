/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.gformulalanguage.GFormulaExpression
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompu
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConst
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstContent
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstFormulaContent
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstNumericContent
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstTextContent
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuContent
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuMethod
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuNominatorDenominator
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuRationalCoeffs
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScale
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScaleConstantContents
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScaleContents
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScaleRationalFormula
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScales
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.swcomponent.datatype.computationmethod.util;

import autosar40.genericstructure.formulalanguage.FormulaExpression;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import autosar40.swcomponent.datatype.computationmethod.Compu;
import autosar40.swcomponent.datatype.computationmethod.CompuConst;
import autosar40.swcomponent.datatype.computationmethod.CompuConstContent;
import autosar40.swcomponent.datatype.computationmethod.CompuConstFormulaContent;
import autosar40.swcomponent.datatype.computationmethod.CompuConstNumericContent;
import autosar40.swcomponent.datatype.computationmethod.CompuConstTextContent;
import autosar40.swcomponent.datatype.computationmethod.CompuContent;
import autosar40.swcomponent.datatype.computationmethod.CompuGenericMath;
import autosar40.swcomponent.datatype.computationmethod.CompuMethod;
import autosar40.swcomponent.datatype.computationmethod.CompuNominatorDenominator;
import autosar40.swcomponent.datatype.computationmethod.CompuRationalCoeffs;
import autosar40.swcomponent.datatype.computationmethod.CompuScale;
import autosar40.swcomponent.datatype.computationmethod.CompuScaleConstantContents;
import autosar40.swcomponent.datatype.computationmethod.CompuScaleContents;
import autosar40.swcomponent.datatype.computationmethod.CompuScaleRationalFormula;
import autosar40.swcomponent.datatype.computationmethod.CompuScales;
import autosar40.swcomponent.datatype.computationmethod.ComputationmethodPackage;
import gautosar.ggenericstructure.gformulalanguage.GFormulaExpression;
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
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ComputationmethodSwitch<T> {
    protected static ComputationmethodPackage modelPackage;

    public ComputationmethodSwitch() {
        if (modelPackage == null) {
            modelPackage = ComputationmethodPackage.eINSTANCE;
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
                Compu compu = (Compu)theEObject;
                T result = this.caseCompu(compu);
                if (result == null) {
                    result = this.caseARObject(compu);
                }
                if (result == null) {
                    result = this.caseGCompu(compu);
                }
                if (result == null) {
                    result = this.caseGARObject(compu);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                CompuConst compuConst = (CompuConst)theEObject;
                T result = this.caseCompuConst(compuConst);
                if (result == null) {
                    result = this.caseARObject(compuConst);
                }
                if (result == null) {
                    result = this.caseGCompuConst(compuConst);
                }
                if (result == null) {
                    result = this.caseGARObject(compuConst);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                CompuConstContent compuConstContent = (CompuConstContent)theEObject;
                T result = this.caseCompuConstContent(compuConstContent);
                if (result == null) {
                    result = this.caseARObject(compuConstContent);
                }
                if (result == null) {
                    result = this.caseGCompuConstContent(compuConstContent);
                }
                if (result == null) {
                    result = this.caseGARObject(compuConstContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                CompuContent compuContent = (CompuContent)theEObject;
                T result = this.caseCompuContent(compuContent);
                if (result == null) {
                    result = this.caseARObject(compuContent);
                }
                if (result == null) {
                    result = this.caseGCompuContent(compuContent);
                }
                if (result == null) {
                    result = this.caseGARObject(compuContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                CompuConstFormulaContent compuConstFormulaContent = (CompuConstFormulaContent)theEObject;
                T result = this.caseCompuConstFormulaContent(compuConstFormulaContent);
                if (result == null) {
                    result = this.caseCompuConstContent(compuConstFormulaContent);
                }
                if (result == null) {
                    result = this.caseGCompuConstFormulaContent(compuConstFormulaContent);
                }
                if (result == null) {
                    result = this.caseARObject(compuConstFormulaContent);
                }
                if (result == null) {
                    result = this.caseGCompuConstContent(compuConstFormulaContent);
                }
                if (result == null) {
                    result = this.caseGARObject(compuConstFormulaContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                CompuConstNumericContent compuConstNumericContent = (CompuConstNumericContent)theEObject;
                T result = this.caseCompuConstNumericContent(compuConstNumericContent);
                if (result == null) {
                    result = this.caseCompuConstContent(compuConstNumericContent);
                }
                if (result == null) {
                    result = this.caseGCompuConstNumericContent(compuConstNumericContent);
                }
                if (result == null) {
                    result = this.caseARObject(compuConstNumericContent);
                }
                if (result == null) {
                    result = this.caseGCompuConstContent(compuConstNumericContent);
                }
                if (result == null) {
                    result = this.caseGARObject(compuConstNumericContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                CompuConstTextContent compuConstTextContent = (CompuConstTextContent)theEObject;
                T result = this.caseCompuConstTextContent(compuConstTextContent);
                if (result == null) {
                    result = this.caseCompuConstContent(compuConstTextContent);
                }
                if (result == null) {
                    result = this.caseGCompuConstTextContent(compuConstTextContent);
                }
                if (result == null) {
                    result = this.caseARObject(compuConstTextContent);
                }
                if (result == null) {
                    result = this.caseGCompuConstContent(compuConstTextContent);
                }
                if (result == null) {
                    result = this.caseGARObject(compuConstTextContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                CompuGenericMath compuGenericMath = (CompuGenericMath)theEObject;
                T result = this.caseCompuGenericMath(compuGenericMath);
                if (result == null) {
                    result = this.caseFormulaExpression(compuGenericMath);
                }
                if (result == null) {
                    result = this.caseARObject(compuGenericMath);
                }
                if (result == null) {
                    result = this.caseGFormulaExpression(compuGenericMath);
                }
                if (result == null) {
                    result = this.caseGARObject(compuGenericMath);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                CompuNominatorDenominator compuNominatorDenominator = (CompuNominatorDenominator)theEObject;
                T result = this.caseCompuNominatorDenominator(compuNominatorDenominator);
                if (result == null) {
                    result = this.caseARObject(compuNominatorDenominator);
                }
                if (result == null) {
                    result = this.caseGCompuNominatorDenominator(compuNominatorDenominator);
                }
                if (result == null) {
                    result = this.caseGARObject(compuNominatorDenominator);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                CompuRationalCoeffs compuRationalCoeffs = (CompuRationalCoeffs)theEObject;
                T result = this.caseCompuRationalCoeffs(compuRationalCoeffs);
                if (result == null) {
                    result = this.caseARObject(compuRationalCoeffs);
                }
                if (result == null) {
                    result = this.caseGCompuRationalCoeffs(compuRationalCoeffs);
                }
                if (result == null) {
                    result = this.caseGARObject(compuRationalCoeffs);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                CompuScale compuScale = (CompuScale)theEObject;
                T result = this.caseCompuScale(compuScale);
                if (result == null) {
                    result = this.caseARObject(compuScale);
                }
                if (result == null) {
                    result = this.caseGCompuScale(compuScale);
                }
                if (result == null) {
                    result = this.caseGARObject(compuScale);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                CompuScaleContents compuScaleContents = (CompuScaleContents)theEObject;
                T result = this.caseCompuScaleContents(compuScaleContents);
                if (result == null) {
                    result = this.caseARObject(compuScaleContents);
                }
                if (result == null) {
                    result = this.caseGCompuScaleContents(compuScaleContents);
                }
                if (result == null) {
                    result = this.caseGARObject(compuScaleContents);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                CompuScaleConstantContents compuScaleConstantContents = (CompuScaleConstantContents)theEObject;
                T result = this.caseCompuScaleConstantContents(compuScaleConstantContents);
                if (result == null) {
                    result = this.caseCompuScaleContents(compuScaleConstantContents);
                }
                if (result == null) {
                    result = this.caseGCompuScaleConstantContents(compuScaleConstantContents);
                }
                if (result == null) {
                    result = this.caseARObject(compuScaleConstantContents);
                }
                if (result == null) {
                    result = this.caseGCompuScaleContents(compuScaleConstantContents);
                }
                if (result == null) {
                    result = this.caseGARObject(compuScaleConstantContents);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                CompuScaleRationalFormula compuScaleRationalFormula = (CompuScaleRationalFormula)theEObject;
                T result = this.caseCompuScaleRationalFormula(compuScaleRationalFormula);
                if (result == null) {
                    result = this.caseCompuScaleContents(compuScaleRationalFormula);
                }
                if (result == null) {
                    result = this.caseGCompuScaleRationalFormula(compuScaleRationalFormula);
                }
                if (result == null) {
                    result = this.caseARObject(compuScaleRationalFormula);
                }
                if (result == null) {
                    result = this.caseGCompuScaleContents(compuScaleRationalFormula);
                }
                if (result == null) {
                    result = this.caseGARObject(compuScaleRationalFormula);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 14: {
                CompuScales compuScales = (CompuScales)theEObject;
                T result = this.caseCompuScales(compuScales);
                if (result == null) {
                    result = this.caseCompuContent(compuScales);
                }
                if (result == null) {
                    result = this.caseGCompuScales(compuScales);
                }
                if (result == null) {
                    result = this.caseARObject(compuScales);
                }
                if (result == null) {
                    result = this.caseGCompuContent(compuScales);
                }
                if (result == null) {
                    result = this.caseGARObject(compuScales);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 15: {
                CompuMethod compuMethod = (CompuMethod)theEObject;
                T result = this.caseCompuMethod(compuMethod);
                if (result == null) {
                    result = this.caseARElement(compuMethod);
                }
                if (result == null) {
                    result = this.caseAtpBlueprint(compuMethod);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(compuMethod);
                }
                if (result == null) {
                    result = this.caseGCompuMethod(compuMethod);
                }
                if (result == null) {
                    result = this.casePackageableElement(compuMethod);
                }
                if (result == null) {
                    result = this.caseCollectableElement(compuMethod);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(compuMethod);
                }
                if (result == null) {
                    result = this.caseIdentifiable(compuMethod);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(compuMethod);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(compuMethod);
                }
                if (result == null) {
                    result = this.caseReferrable(compuMethod);
                }
                if (result == null) {
                    result = this.caseARObject(compuMethod);
                }
                if (result == null) {
                    result = this.caseGReferrable(compuMethod);
                }
                if (result == null) {
                    result = this.caseGARObject(compuMethod);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseCompu(Compu object) {
        return null;
    }

    public T caseCompuConst(CompuConst object) {
        return null;
    }

    public T caseCompuConstContent(CompuConstContent object) {
        return null;
    }

    public T caseCompuContent(CompuContent object) {
        return null;
    }

    public T caseCompuConstFormulaContent(CompuConstFormulaContent object) {
        return null;
    }

    public T caseCompuConstNumericContent(CompuConstNumericContent object) {
        return null;
    }

    public T caseCompuConstTextContent(CompuConstTextContent object) {
        return null;
    }

    public T caseCompuGenericMath(CompuGenericMath object) {
        return null;
    }

    public T caseCompuNominatorDenominator(CompuNominatorDenominator object) {
        return null;
    }

    public T caseCompuRationalCoeffs(CompuRationalCoeffs object) {
        return null;
    }

    public T caseCompuScale(CompuScale object) {
        return null;
    }

    public T caseCompuScaleContents(CompuScaleContents object) {
        return null;
    }

    public T caseCompuScaleConstantContents(CompuScaleConstantContents object) {
        return null;
    }

    public T caseCompuScaleRationalFormula(CompuScaleRationalFormula object) {
        return null;
    }

    public T caseCompuScales(CompuScales object) {
        return null;
    }

    public T caseCompuMethod(CompuMethod object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseGCompu(GCompu object) {
        return null;
    }

    public T caseGCompuConst(GCompuConst object) {
        return null;
    }

    public T caseGCompuConstContent(GCompuConstContent object) {
        return null;
    }

    public T caseGCompuContent(GCompuContent object) {
        return null;
    }

    public T caseGCompuConstFormulaContent(GCompuConstFormulaContent object) {
        return null;
    }

    public T caseGCompuConstNumericContent(GCompuConstNumericContent object) {
        return null;
    }

    public T caseGCompuConstTextContent(GCompuConstTextContent object) {
        return null;
    }

    public T caseGFormulaExpression(GFormulaExpression object) {
        return null;
    }

    public T caseFormulaExpression(FormulaExpression object) {
        return null;
    }

    public T caseGCompuNominatorDenominator(GCompuNominatorDenominator object) {
        return null;
    }

    public T caseGCompuRationalCoeffs(GCompuRationalCoeffs object) {
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

    public T caseGCompuScales(GCompuScales object) {
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

    public T caseAtpBlueprint(AtpBlueprint object) {
        return null;
    }

    public T caseAtpBlueprintable(AtpBlueprintable object) {
        return null;
    }

    public T caseGCompuMethod(GCompuMethod object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

