/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.datatype.computationmethod;

import autosar21.swcomponent.datatype.computationmethod.Compu;
import autosar21.swcomponent.datatype.computationmethod.CompuConst;
import autosar21.swcomponent.datatype.computationmethod.CompuConstFormulaContent;
import autosar21.swcomponent.datatype.computationmethod.CompuConstNumericContent;
import autosar21.swcomponent.datatype.computationmethod.CompuConstTextContent;
import autosar21.swcomponent.datatype.computationmethod.CompuDefaultValue;
import autosar21.swcomponent.datatype.computationmethod.CompuGenericMath;
import autosar21.swcomponent.datatype.computationmethod.CompuMethod;
import autosar21.swcomponent.datatype.computationmethod.CompuNominatorDenominator;
import autosar21.swcomponent.datatype.computationmethod.CompuProgCode;
import autosar21.swcomponent.datatype.computationmethod.CompuRationalCoeffs;
import autosar21.swcomponent.datatype.computationmethod.CompuScale;
import autosar21.swcomponent.datatype.computationmethod.CompuScaleConstantContents;
import autosar21.swcomponent.datatype.computationmethod.CompuScaleGenericMath;
import autosar21.swcomponent.datatype.computationmethod.CompuScaleRationalFormula;
import autosar21.swcomponent.datatype.computationmethod.CompuScales;
import autosar21.swcomponent.datatype.computationmethod.ComputationmethodPackage;
import autosar21.swcomponent.datatype.computationmethod.ProgCode;
import autosar21.swcomponent.datatype.computationmethod.impl.ComputationmethodFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ComputationmethodFactory
extends EFactory {
    public static final ComputationmethodFactory eINSTANCE = ComputationmethodFactoryImpl.init();

    public Compu createCompu();

    public CompuConst createCompuConst();

    public CompuConstFormulaContent createCompuConstFormulaContent();

    public CompuConstNumericContent createCompuConstNumericContent();

    public CompuConstTextContent createCompuConstTextContent();

    public CompuDefaultValue createCompuDefaultValue();

    public CompuGenericMath createCompuGenericMath();

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

    public ComputationmethodPackage getComputationmethodPackage();
}

