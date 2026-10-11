/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar3x.swcomponent.datatype.computationmethod.impl;

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
import autosar3x.swcomponent.datatype.computationmethod.ComputationmethodFactory;
import autosar3x.swcomponent.datatype.computationmethod.ComputationmethodPackage;
import autosar3x.swcomponent.datatype.computationmethod.ProgCode;
import autosar3x.swcomponent.datatype.computationmethod.impl.CompuConstFormulaContentImpl;
import autosar3x.swcomponent.datatype.computationmethod.impl.CompuConstImpl;
import autosar3x.swcomponent.datatype.computationmethod.impl.CompuConstNumericContentImpl;
import autosar3x.swcomponent.datatype.computationmethod.impl.CompuConstTextContentImpl;
import autosar3x.swcomponent.datatype.computationmethod.impl.CompuGenericMathImpl;
import autosar3x.swcomponent.datatype.computationmethod.impl.CompuImpl;
import autosar3x.swcomponent.datatype.computationmethod.impl.CompuMethodImpl;
import autosar3x.swcomponent.datatype.computationmethod.impl.CompuNominatorDenominatorImpl;
import autosar3x.swcomponent.datatype.computationmethod.impl.CompuProgCodeImpl;
import autosar3x.swcomponent.datatype.computationmethod.impl.CompuRationalCoeffsImpl;
import autosar3x.swcomponent.datatype.computationmethod.impl.CompuScaleConstantContentsImpl;
import autosar3x.swcomponent.datatype.computationmethod.impl.CompuScaleGenericMathImpl;
import autosar3x.swcomponent.datatype.computationmethod.impl.CompuScaleImpl;
import autosar3x.swcomponent.datatype.computationmethod.impl.CompuScaleRationalFormulaImpl;
import autosar3x.swcomponent.datatype.computationmethod.impl.CompuScalesImpl;
import autosar3x.swcomponent.datatype.computationmethod.impl.ProgCodeImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class ComputationmethodFactoryImpl
extends EFactoryImpl
implements ComputationmethodFactory {
    public static ComputationmethodFactory init() {
        try {
            ComputationmethodFactory theComputationmethodFactory = (ComputationmethodFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/swc/d/cm");
            if (theComputationmethodFactory != null) {
                return theComputationmethodFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ComputationmethodFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createCompu();
            }
            case 1: {
                return this.createCompuConst();
            }
            case 4: {
                return this.createCompuConstFormulaContent();
            }
            case 5: {
                return this.createCompuConstNumericContent();
            }
            case 6: {
                return this.createCompuConstTextContent();
            }
            case 7: {
                return this.createCompuMethod();
            }
            case 8: {
                return this.createCompuNominatorDenominator();
            }
            case 9: {
                return this.createCompuProgCode();
            }
            case 10: {
                return this.createProgCode();
            }
            case 11: {
                return this.createCompuRationalCoeffs();
            }
            case 12: {
                return this.createCompuScale();
            }
            case 14: {
                return this.createCompuScaleConstantContents();
            }
            case 15: {
                return this.createCompuScaleGenericMath();
            }
            case 16: {
                return this.createCompuScaleRationalFormula();
            }
            case 17: {
                return this.createCompuScales();
            }
            case 18: {
                return this.createCompuGenericMath();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Compu createCompu() {
        CompuImpl compu = new CompuImpl();
        return compu;
    }

    public CompuConst createCompuConst() {
        CompuConstImpl compuConst = new CompuConstImpl();
        return compuConst;
    }

    public CompuConstFormulaContent createCompuConstFormulaContent() {
        CompuConstFormulaContentImpl compuConstFormulaContent = new CompuConstFormulaContentImpl();
        return compuConstFormulaContent;
    }

    public CompuConstNumericContent createCompuConstNumericContent() {
        CompuConstNumericContentImpl compuConstNumericContent = new CompuConstNumericContentImpl();
        return compuConstNumericContent;
    }

    public CompuConstTextContent createCompuConstTextContent() {
        CompuConstTextContentImpl compuConstTextContent = new CompuConstTextContentImpl();
        return compuConstTextContent;
    }

    public CompuMethod createCompuMethod() {
        CompuMethodImpl compuMethod = new CompuMethodImpl();
        return compuMethod;
    }

    public CompuNominatorDenominator createCompuNominatorDenominator() {
        CompuNominatorDenominatorImpl compuNominatorDenominator = new CompuNominatorDenominatorImpl();
        return compuNominatorDenominator;
    }

    public CompuProgCode createCompuProgCode() {
        CompuProgCodeImpl compuProgCode = new CompuProgCodeImpl();
        return compuProgCode;
    }

    public ProgCode createProgCode() {
        ProgCodeImpl progCode = new ProgCodeImpl();
        return progCode;
    }

    public CompuRationalCoeffs createCompuRationalCoeffs() {
        CompuRationalCoeffsImpl compuRationalCoeffs = new CompuRationalCoeffsImpl();
        return compuRationalCoeffs;
    }

    public CompuScale createCompuScale() {
        CompuScaleImpl compuScale = new CompuScaleImpl();
        return compuScale;
    }

    public CompuScaleConstantContents createCompuScaleConstantContents() {
        CompuScaleConstantContentsImpl compuScaleConstantContents = new CompuScaleConstantContentsImpl();
        return compuScaleConstantContents;
    }

    public CompuScaleGenericMath createCompuScaleGenericMath() {
        CompuScaleGenericMathImpl compuScaleGenericMath = new CompuScaleGenericMathImpl();
        return compuScaleGenericMath;
    }

    public CompuScaleRationalFormula createCompuScaleRationalFormula() {
        CompuScaleRationalFormulaImpl compuScaleRationalFormula = new CompuScaleRationalFormulaImpl();
        return compuScaleRationalFormula;
    }

    public CompuScales createCompuScales() {
        CompuScalesImpl compuScales = new CompuScalesImpl();
        return compuScales;
    }

    public CompuGenericMath createCompuGenericMath() {
        CompuGenericMathImpl compuGenericMath = new CompuGenericMathImpl();
        return compuGenericMath;
    }

    public ComputationmethodPackage getComputationmethodPackage() {
        return (ComputationmethodPackage)this.getEPackage();
    }

    @Deprecated
    public static ComputationmethodPackage getPackage() {
        return ComputationmethodPackage.eINSTANCE;
    }
}

