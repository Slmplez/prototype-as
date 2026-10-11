/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.swcomponent.datatype.computationmethod;

import autosar3x.swcomponent.datatype.computationmethod.Compu;
import autosar3x.swcomponent.datatype.computationmethod.CompuConst;
import autosar3x.swcomponent.datatype.computationmethod.CompuConstFormulaContent;
import autosar3x.swcomponent.datatype.computationmethod.CompuConstNumericContent;
import autosar3x.swcomponent.datatype.computationmethod.CompuConstTextContent;
import autosar3x.swcomponent.datatype.computationmethod.CompuGenericMath;
import autosar3x.swcomponent.datatype.computationmethod.CompuMethod;
import autosar3x.swcomponent.datatype.computationmethod.CompuNominatorDenominator;
import autosar3x.swcomponent.datatype.computationmethod.CompuProgCode;
import autosar3x.swcomponent.datatype.computationmethod.CompuRationalCoeffs;
import autosar3x.swcomponent.datatype.computationmethod.CompuScale;
import autosar3x.swcomponent.datatype.computationmethod.CompuScaleConstantContents;
import autosar3x.swcomponent.datatype.computationmethod.CompuScaleGenericMath;
import autosar3x.swcomponent.datatype.computationmethod.CompuScaleRationalFormula;
import autosar3x.swcomponent.datatype.computationmethod.CompuScales;
import autosar3x.swcomponent.datatype.computationmethod.ComputationmethodPackage;
import autosar3x.swcomponent.datatype.computationmethod.ProgCode;
import autosar3x.swcomponent.datatype.computationmethod.impl.ComputationmethodFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ComputationmethodFactory
extends EFactory {
    public static final ComputationmethodFactory eINSTANCE = ComputationmethodFactoryImpl.init();

    public Compu createCompu();

    public CompuConst createCompuConst();

    public CompuConstFormulaContent createCompuConstFormulaContent();

    public CompuConstNumericContent createCompuConstNumericContent();

    public CompuConstTextContent createCompuConstTextContent();

    public CompuMethod createCompuMethod();

    public CompuNominatorDenominator createCompuNominatorDenominator();

    public CompuProgCode createCompuProgCode();

    public ProgCode createProgCode();

    public CompuRationalCoeffs createCompuRationalCoeffs();

    public CompuScale createCompuScale();

    public CompuScaleConstantContents createCompuScaleConstantContents();

    public CompuScaleGenericMath createCompuScaleGenericMath();

    public CompuScaleRationalFormula createCompuScaleRationalFormula();

    public CompuScales createCompuScales();

    public CompuGenericMath createCompuGenericMath();

    public ComputationmethodPackage getComputationmethodPackage();
}

