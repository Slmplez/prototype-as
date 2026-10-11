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
package autosar40.swcomponent.datatype.computationmethod.impl;

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
import autosar40.swcomponent.datatype.computationmethod.ComputationmethodFactory;
import autosar40.swcomponent.datatype.computationmethod.ComputationmethodPackage;
import autosar40.swcomponent.datatype.computationmethod.impl.CompuConstFormulaContentImpl;
import autosar40.swcomponent.datatype.computationmethod.impl.CompuConstImpl;
import autosar40.swcomponent.datatype.computationmethod.impl.CompuConstNumericContentImpl;
import autosar40.swcomponent.datatype.computationmethod.impl.CompuConstTextContentImpl;
import autosar40.swcomponent.datatype.computationmethod.impl.CompuGenericMathImpl;
import autosar40.swcomponent.datatype.computationmethod.impl.CompuImpl;
import autosar40.swcomponent.datatype.computationmethod.impl.CompuMethodImpl;
import autosar40.swcomponent.datatype.computationmethod.impl.CompuNominatorDenominatorImpl;
import autosar40.swcomponent.datatype.computationmethod.impl.CompuRationalCoeffsImpl;
import autosar40.swcomponent.datatype.computationmethod.impl.CompuScaleConstantContentsImpl;
import autosar40.swcomponent.datatype.computationmethod.impl.CompuScaleImpl;
import autosar40.swcomponent.datatype.computationmethod.impl.CompuScaleRationalFormulaImpl;
import autosar40.swcomponent.datatype.computationmethod.impl.CompuScalesImpl;
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
            ComputationmethodFactory theComputationmethodFactory = (ComputationmethodFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/swc/d/cm");
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
                return this.createCompuGenericMath();
            }
            case 8: {
                return this.createCompuNominatorDenominator();
            }
            case 9: {
                return this.createCompuRationalCoeffs();
            }
            case 10: {
                return this.createCompuScale();
            }
            case 12: {
                return this.createCompuScaleConstantContents();
            }
            case 13: {
                return this.createCompuScaleRationalFormula();
            }
            case 14: {
                return this.createCompuScales();
            }
            case 15: {
                return this.createCompuMethod();
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

    public CompuGenericMath createCompuGenericMath() {
        CompuGenericMathImpl compuGenericMath = new CompuGenericMathImpl();
        return compuGenericMath;
    }

    public CompuNominatorDenominator createCompuNominatorDenominator() {
        CompuNominatorDenominatorImpl compuNominatorDenominator = new CompuNominatorDenominatorImpl();
        return compuNominatorDenominator;
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

    public CompuScaleRationalFormula createCompuScaleRationalFormula() {
        CompuScaleRationalFormulaImpl compuScaleRationalFormula = new CompuScaleRationalFormulaImpl();
        return compuScaleRationalFormula;
    }

    public CompuScales createCompuScales() {
        CompuScalesImpl compuScales = new CompuScalesImpl();
        return compuScales;
    }

    public CompuMethod createCompuMethod() {
        CompuMethodImpl compuMethod = new CompuMethodImpl();
        return compuMethod;
    }

    public ComputationmethodPackage getComputationmethodPackage() {
        return (ComputationmethodPackage)this.getEPackage();
    }

    @Deprecated
    public static ComputationmethodPackage getPackage() {
        return ComputationmethodPackage.eINSTANCE;
    }
}

