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
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
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
import autosar40.swcomponent.datatype.computationmethod.util.ComputationmethodSwitch;
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
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class ComputationmethodAdapterFactory
extends AdapterFactoryImpl {
    protected static ComputationmethodPackage modelPackage;
    protected ComputationmethodSwitch<Adapter> modelSwitch = new ComputationmethodSwitch<Adapter>(){

        @Override
        public Adapter caseCompu(Compu object) {
            return ComputationmethodAdapterFactory.this.createCompuAdapter();
        }

        @Override
        public Adapter caseCompuConst(CompuConst object) {
            return ComputationmethodAdapterFactory.this.createCompuConstAdapter();
        }

        @Override
        public Adapter caseCompuConstContent(CompuConstContent object) {
            return ComputationmethodAdapterFactory.this.createCompuConstContentAdapter();
        }

        @Override
        public Adapter caseCompuContent(CompuContent object) {
            return ComputationmethodAdapterFactory.this.createCompuContentAdapter();
        }

        @Override
        public Adapter caseCompuConstFormulaContent(CompuConstFormulaContent object) {
            return ComputationmethodAdapterFactory.this.createCompuConstFormulaContentAdapter();
        }

        @Override
        public Adapter caseCompuConstNumericContent(CompuConstNumericContent object) {
            return ComputationmethodAdapterFactory.this.createCompuConstNumericContentAdapter();
        }

        @Override
        public Adapter caseCompuConstTextContent(CompuConstTextContent object) {
            return ComputationmethodAdapterFactory.this.createCompuConstTextContentAdapter();
        }

        @Override
        public Adapter caseCompuGenericMath(CompuGenericMath object) {
            return ComputationmethodAdapterFactory.this.createCompuGenericMathAdapter();
        }

        @Override
        public Adapter caseCompuNominatorDenominator(CompuNominatorDenominator object) {
            return ComputationmethodAdapterFactory.this.createCompuNominatorDenominatorAdapter();
        }

        @Override
        public Adapter caseCompuRationalCoeffs(CompuRationalCoeffs object) {
            return ComputationmethodAdapterFactory.this.createCompuRationalCoeffsAdapter();
        }

        @Override
        public Adapter caseCompuScale(CompuScale object) {
            return ComputationmethodAdapterFactory.this.createCompuScaleAdapter();
        }

        @Override
        public Adapter caseCompuScaleContents(CompuScaleContents object) {
            return ComputationmethodAdapterFactory.this.createCompuScaleContentsAdapter();
        }

        @Override
        public Adapter caseCompuScaleConstantContents(CompuScaleConstantContents object) {
            return ComputationmethodAdapterFactory.this.createCompuScaleConstantContentsAdapter();
        }

        @Override
        public Adapter caseCompuScaleRationalFormula(CompuScaleRationalFormula object) {
            return ComputationmethodAdapterFactory.this.createCompuScaleRationalFormulaAdapter();
        }

        @Override
        public Adapter caseCompuScales(CompuScales object) {
            return ComputationmethodAdapterFactory.this.createCompuScalesAdapter();
        }

        @Override
        public Adapter caseCompuMethod(CompuMethod object) {
            return ComputationmethodAdapterFactory.this.createCompuMethodAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return ComputationmethodAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return ComputationmethodAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGCompu(GCompu object) {
            return ComputationmethodAdapterFactory.this.createGCompuAdapter();
        }

        @Override
        public Adapter caseGCompuConst(GCompuConst object) {
            return ComputationmethodAdapterFactory.this.createGCompuConstAdapter();
        }

        @Override
        public Adapter caseGCompuConstContent(GCompuConstContent object) {
            return ComputationmethodAdapterFactory.this.createGCompuConstContentAdapter();
        }

        @Override
        public Adapter caseGCompuContent(GCompuContent object) {
            return ComputationmethodAdapterFactory.this.createGCompuContentAdapter();
        }

        @Override
        public Adapter caseGCompuConstFormulaContent(GCompuConstFormulaContent object) {
            return ComputationmethodAdapterFactory.this.createGCompuConstFormulaContentAdapter();
        }

        @Override
        public Adapter caseGCompuConstNumericContent(GCompuConstNumericContent object) {
            return ComputationmethodAdapterFactory.this.createGCompuConstNumericContentAdapter();
        }

        @Override
        public Adapter caseGCompuConstTextContent(GCompuConstTextContent object) {
            return ComputationmethodAdapterFactory.this.createGCompuConstTextContentAdapter();
        }

        @Override
        public Adapter caseGFormulaExpression(GFormulaExpression object) {
            return ComputationmethodAdapterFactory.this.createGFormulaExpressionAdapter();
        }

        @Override
        public Adapter caseFormulaExpression(FormulaExpression object) {
            return ComputationmethodAdapterFactory.this.createFormulaExpressionAdapter();
        }

        @Override
        public Adapter caseGCompuNominatorDenominator(GCompuNominatorDenominator object) {
            return ComputationmethodAdapterFactory.this.createGCompuNominatorDenominatorAdapter();
        }

        @Override
        public Adapter caseGCompuRationalCoeffs(GCompuRationalCoeffs object) {
            return ComputationmethodAdapterFactory.this.createGCompuRationalCoeffsAdapter();
        }

        @Override
        public Adapter caseGCompuScale(GCompuScale object) {
            return ComputationmethodAdapterFactory.this.createGCompuScaleAdapter();
        }

        @Override
        public Adapter caseGCompuScaleContents(GCompuScaleContents object) {
            return ComputationmethodAdapterFactory.this.createGCompuScaleContentsAdapter();
        }

        @Override
        public Adapter caseGCompuScaleConstantContents(GCompuScaleConstantContents object) {
            return ComputationmethodAdapterFactory.this.createGCompuScaleConstantContentsAdapter();
        }

        @Override
        public Adapter caseGCompuScaleRationalFormula(GCompuScaleRationalFormula object) {
            return ComputationmethodAdapterFactory.this.createGCompuScaleRationalFormulaAdapter();
        }

        @Override
        public Adapter caseGCompuScales(GCompuScales object) {
            return ComputationmethodAdapterFactory.this.createGCompuScalesAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return ComputationmethodAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return ComputationmethodAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return ComputationmethodAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return ComputationmethodAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return ComputationmethodAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseCollectableElement(CollectableElement object) {
            return ComputationmethodAdapterFactory.this.createCollectableElementAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return ComputationmethodAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return ComputationmethodAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return ComputationmethodAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseAtpBlueprint(AtpBlueprint object) {
            return ComputationmethodAdapterFactory.this.createAtpBlueprintAdapter();
        }

        @Override
        public Adapter caseAtpBlueprintable(AtpBlueprintable object) {
            return ComputationmethodAdapterFactory.this.createAtpBlueprintableAdapter();
        }

        @Override
        public Adapter caseGCompuMethod(GCompuMethod object) {
            return ComputationmethodAdapterFactory.this.createGCompuMethodAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return ComputationmethodAdapterFactory.this.createEObjectAdapter();
        }
    };

    public ComputationmethodAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = ComputationmethodPackage.eINSTANCE;
        }
    }

    public boolean isFactoryForType(Object object) {
        if (object == modelPackage) {
            return true;
        }
        if (object instanceof EObject) {
            return ((EObject)object).eClass().getEPackage() == modelPackage;
        }
        return false;
    }

    public Adapter createAdapter(Notifier target) {
        return this.modelSwitch.doSwitch((EObject)target);
    }

    public Adapter createCompuAdapter() {
        return null;
    }

    public Adapter createCompuConstAdapter() {
        return null;
    }

    public Adapter createCompuConstContentAdapter() {
        return null;
    }

    public Adapter createCompuContentAdapter() {
        return null;
    }

    public Adapter createCompuConstFormulaContentAdapter() {
        return null;
    }

    public Adapter createCompuConstNumericContentAdapter() {
        return null;
    }

    public Adapter createCompuConstTextContentAdapter() {
        return null;
    }

    public Adapter createCompuGenericMathAdapter() {
        return null;
    }

    public Adapter createCompuNominatorDenominatorAdapter() {
        return null;
    }

    public Adapter createCompuRationalCoeffsAdapter() {
        return null;
    }

    public Adapter createCompuScaleAdapter() {
        return null;
    }

    public Adapter createCompuScaleContentsAdapter() {
        return null;
    }

    public Adapter createCompuScaleConstantContentsAdapter() {
        return null;
    }

    public Adapter createCompuScaleRationalFormulaAdapter() {
        return null;
    }

    public Adapter createCompuScalesAdapter() {
        return null;
    }

    public Adapter createCompuMethodAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createGCompuAdapter() {
        return null;
    }

    public Adapter createGCompuConstAdapter() {
        return null;
    }

    public Adapter createGCompuConstContentAdapter() {
        return null;
    }

    public Adapter createGCompuContentAdapter() {
        return null;
    }

    public Adapter createGCompuConstFormulaContentAdapter() {
        return null;
    }

    public Adapter createGCompuConstNumericContentAdapter() {
        return null;
    }

    public Adapter createGCompuConstTextContentAdapter() {
        return null;
    }

    public Adapter createGFormulaExpressionAdapter() {
        return null;
    }

    public Adapter createFormulaExpressionAdapter() {
        return null;
    }

    public Adapter createGCompuNominatorDenominatorAdapter() {
        return null;
    }

    public Adapter createGCompuRationalCoeffsAdapter() {
        return null;
    }

    public Adapter createGCompuScaleAdapter() {
        return null;
    }

    public Adapter createGCompuScaleContentsAdapter() {
        return null;
    }

    public Adapter createGCompuScaleConstantContentsAdapter() {
        return null;
    }

    public Adapter createGCompuScaleRationalFormulaAdapter() {
        return null;
    }

    public Adapter createGCompuScalesAdapter() {
        return null;
    }

    public Adapter createGReferrableAdapter() {
        return null;
    }

    public Adapter createReferrableAdapter() {
        return null;
    }

    public Adapter createMultilanguageReferrableAdapter() {
        return null;
    }

    public Adapter createGIdentifiableAdapter() {
        return null;
    }

    public Adapter createIdentifiableAdapter() {
        return null;
    }

    public Adapter createCollectableElementAdapter() {
        return null;
    }

    public Adapter createGPackageableElementAdapter() {
        return null;
    }

    public Adapter createPackageableElementAdapter() {
        return null;
    }

    public Adapter createARElementAdapter() {
        return null;
    }

    public Adapter createAtpBlueprintAdapter() {
        return null;
    }

    public Adapter createAtpBlueprintableAdapter() {
        return null;
    }

    public Adapter createGCompuMethodAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

