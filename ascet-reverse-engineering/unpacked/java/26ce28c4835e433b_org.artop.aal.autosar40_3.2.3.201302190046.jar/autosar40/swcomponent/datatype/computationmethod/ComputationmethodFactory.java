/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.swcomponent.datatype.computationmethod;

import autosar40.swcomponent.datatype.computationmethod.Compu;
import autosar40.swcomponent.datatype.computationmethod.CompuConst;
import autosar40.swcomponent.datatype.computationmethod.CompuConstFormulaContent;
import autosar40.swcomponent.datatype.computationmethod.CompuConstNumericContent;
import autosar40.swcomponent.datatype.computationmethod.CompuConstTextContent;
import autosar40.swcomponent.datatype.computationmethod.CompuGenericMath;
import autosar40.swcomponent.datatype.computationmethod.CompuMethod;
import autosar40.swcomponent.datatype.computationmethod.CompuNominatorDenominator;
import autosar40.swcomponent.datatype.computationmethod.CompuRationalCoeffs;
import autosar40.swcomponent.datatype.computationmethod.CompuScale;
import autosar40.swcomponent.datatype.computationmethod.CompuScaleConstantContents;
import autosar40.swcomponent.datatype.computationmethod.CompuScaleRationalFormula;
import autosar40.swcomponent.datatype.computationmethod.CompuScales;
import autosar40.swcomponent.datatype.computationmethod.ComputationmethodPackage;
import autosar40.swcomponent.datatype.computationmethod.impl.ComputationmethodFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ComputationmethodFactory
extends EFactory {
    public static final ComputationmethodFactory eINSTANCE = ComputationmethodFactoryImpl.init();

    public Compu createCompu();

    public CompuConst createCompuConst();

    public CompuConstFormulaContent createCompuConstFormulaContent();

    public CompuConstNumericContent createCompuConstNumericContent();

    public CompuConstTextContent createCompuConstTextContent();

    public CompuGenericMath createCompuGenericMath();

    public CompuNominatorDenominator createCompuNominatorDenominator();

    public CompuRationalCoeffs createCompuRationalCoeffs();

    public CompuScale createCompuScale();

    public CompuScaleConstantContents createCompuScaleConstantContents();

    public CompuScaleRationalFormula createCompuScaleRationalFormula();

    public CompuScales createCompuScales();

    public CompuMethod createCompuMethod();

    public ComputationmethodPackage getComputationmethodPackage();
}

