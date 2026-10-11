/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
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
import gautosar.gswcomponents.gdatatype.gcomputationmethod.util.GcomputationmethodSwitch;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class GcomputationmethodAdapterFactory
extends AdapterFactoryImpl {
    protected static GcomputationmethodPackage modelPackage;
    protected GcomputationmethodSwitch<Adapter> modelSwitch = new GcomputationmethodSwitch<Adapter>(){

        @Override
        public Adapter caseGCompuMethod(GCompuMethod object) {
            return GcomputationmethodAdapterFactory.this.createGCompuMethodAdapter();
        }

        @Override
        public Adapter caseGCompu(GCompu object) {
            return GcomputationmethodAdapterFactory.this.createGCompuAdapter();
        }

        @Override
        public Adapter caseGCompuContent(GCompuContent object) {
            return GcomputationmethodAdapterFactory.this.createGCompuContentAdapter();
        }

        @Override
        public Adapter caseGCompuScales(GCompuScales object) {
            return GcomputationmethodAdapterFactory.this.createGCompuScalesAdapter();
        }

        @Override
        public Adapter caseGCompuScale(GCompuScale object) {
            return GcomputationmethodAdapterFactory.this.createGCompuScaleAdapter();
        }

        @Override
        public Adapter caseGCompuScaleContents(GCompuScaleContents object) {
            return GcomputationmethodAdapterFactory.this.createGCompuScaleContentsAdapter();
        }

        @Override
        public Adapter caseGCompuScaleConstantContents(GCompuScaleConstantContents object) {
            return GcomputationmethodAdapterFactory.this.createGCompuScaleConstantContentsAdapter();
        }

        @Override
        public Adapter caseGCompuScaleRationalFormula(GCompuScaleRationalFormula object) {
            return GcomputationmethodAdapterFactory.this.createGCompuScaleRationalFormulaAdapter();
        }

        @Override
        public Adapter caseGCompuConst(GCompuConst object) {
            return GcomputationmethodAdapterFactory.this.createGCompuConstAdapter();
        }

        @Override
        public Adapter caseGCompuConstContent(GCompuConstContent object) {
            return GcomputationmethodAdapterFactory.this.createGCompuConstContentAdapter();
        }

        @Override
        public Adapter caseGCompuConstTextContent(GCompuConstTextContent object) {
            return GcomputationmethodAdapterFactory.this.createGCompuConstTextContentAdapter();
        }

        @Override
        public Adapter caseGCompuConstNumericContent(GCompuConstNumericContent object) {
            return GcomputationmethodAdapterFactory.this.createGCompuConstNumericContentAdapter();
        }

        @Override
        public Adapter caseGCompuConstFormulaContent(GCompuConstFormulaContent object) {
            return GcomputationmethodAdapterFactory.this.createGCompuConstFormulaContentAdapter();
        }

        @Override
        public Adapter caseGCompuRationalCoeffs(GCompuRationalCoeffs object) {
            return GcomputationmethodAdapterFactory.this.createGCompuRationalCoeffsAdapter();
        }

        @Override
        public Adapter caseGCompuNominatorDenominator(GCompuNominatorDenominator object) {
            return GcomputationmethodAdapterFactory.this.createGCompuNominatorDenominatorAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return GcomputationmethodAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return GcomputationmethodAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return GcomputationmethodAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return GcomputationmethodAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return GcomputationmethodAdapterFactory.this.createEObjectAdapter();
        }
    };

    public GcomputationmethodAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = GcomputationmethodPackage.eINSTANCE;
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

    public Adapter createGCompuMethodAdapter() {
        return null;
    }

    public Adapter createGCompuAdapter() {
        return null;
    }

    public Adapter createGCompuContentAdapter() {
        return null;
    }

    public Adapter createGCompuScalesAdapter() {
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

    public Adapter createGCompuConstAdapter() {
        return null;
    }

    public Adapter createGCompuConstContentAdapter() {
        return null;
    }

    public Adapter createGCompuConstTextContentAdapter() {
        return null;
    }

    public Adapter createGCompuConstNumericContentAdapter() {
        return null;
    }

    public Adapter createGCompuConstFormulaContentAdapter() {
        return null;
    }

    public Adapter createGCompuRationalCoeffsAdapter() {
        return null;
    }

    public Adapter createGCompuNominatorDenominatorAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createGReferrableAdapter() {
        return null;
    }

    public Adapter createGIdentifiableAdapter() {
        return null;
    }

    public Adapter createGPackageableElementAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

