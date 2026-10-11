/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.commons.lang.StringUtils
 */
package com.etas.amd.core.type;

import com.etas.amd.core.type.AbstractAmdScalarType;
import com.etas.amd.core.util.AmdFactory;
import com.etas.amd.core.util.AmdFormulaFactory;
import com.etas.amd.core.util.FormulaUtil;
import com.etas.amd620.core.ComponentImplementation.ComponentImplementationFactory;
import com.etas.amd620.core.ComponentImplementation.IntervalT;
import com.etas.amd620.core.ComponentImplementation.LimitOverflowType;
import com.etas.amd620.core.ComponentImplementation.MasterType;
import com.etas.amd620.core.ComponentImplementation.NumericImplementationT;
import com.etas.amd620.core.ComponentImplementation.ScalarImplementationT;
import com.etas.amd620.core.ComponentMain.BasicModelTypeType;
import com.etas.amd620.core.ComponentMain.ElementAttributesT;
import com.etas.amd620.core.Formulas.FormulaComplexType;
import org.apache.commons.lang.StringUtils;

public class AmdNumericType
extends AbstractAmdScalarType {
    private static final long MAX_UINT32 = 0xFFFFFFFFL;
    private static final int MAX_UIN16 = 65535;
    private static final int MAX_UIN8 = 255;
    private static final String IMPL_REAL64 = "real64";
    private static final String IMPL_REAL32 = "real32";
    private static final String IMPL_UINT8 = "uint8";
    private static final String IMPL_UINT16 = "uint16";
    private static final String IMPL_UINT32 = "uint32";
    private static final String IMPL_SINT8 = "sint8";
    private static final String IMPL_SINT16 = "sint16";
    private static final String IMPL_SINT32 = "sint32";
    private static final String SDISC_PHYS_TYPE = "sint32";
    private static final String UDISC_PHYS_TYPE = "uint32";
    private static final String CONT_PHYS_TYPE = "real64";
    private static final FormulaComplexType IDENT_FORMULA = AmdFormulaFactory.createIdentFormula();
    private IntervalT physInterval;
    private IntervalT implInterval;
    private String implType;
    private String physType;
    private FormulaComplexType formula;
    private MasterType master;

    public static AmdNumericType createRealDubleType() {
        return AmdNumericType.createRealType("real64", "-INF", "INF");
    }

    public static AmdNumericType createRealSingleType() {
        return AmdNumericType.createRealType(IMPL_REAL32, "-INF", "INF");
    }

    public static AmdNumericType createRealSingleType(String lower, String upper) {
        return AmdNumericType.createRealType(IMPL_REAL32, lower, upper);
    }

    public static AmdNumericType createRealType(String typeStr, String lower, String upper) {
        AmdNumericType type = new AmdNumericType();
        type.formula = IDENT_FORMULA;
        type.physInterval = ComponentImplementationFactory.eINSTANCE.createIntervalT();
        type.physInterval.setMax(upper);
        type.physInterval.setMin(lower);
        type.physType = "real64";
        type.implType = typeStr;
        type.master = MasterType.IMPLEMENTATION;
        return type;
    }

    public static AmdNumericType createFixPointType() {
        return AmdNumericType.createFixPointType("sint32", "-INF", "INF");
    }

    public static AmdNumericType createFixPointType(String ascetImplType, String lowerLimit, String upperLimit) {
        return AmdNumericType.createFixPointType(ascetImplType, lowerLimit, upperLimit, IDENT_FORMULA);
    }

    public static AmdNumericType createFixPointType(String ascetImplType, String lowerLimit, String upperLimit, FormulaComplexType formula) {
        AmdNumericType type = new AmdNumericType();
        type.formula = formula;
        type.physInterval = ComponentImplementationFactory.eINSTANCE.createIntervalT();
        type.physInterval.setMax(upperLimit);
        type.physInterval.setMin(lowerLimit);
        type.physType = "real64";
        type.implType = ascetImplType;
        type.master = MasterType.IMPLEMENTATION;
        return type;
    }

    public static AmdNumericType createSDiscreteType(String ascetImplType, String lowerLimit, String upperLimit) {
        AmdNumericType type = new AmdNumericType();
        type.formula = IDENT_FORMULA;
        type.physInterval = ComponentImplementationFactory.eINSTANCE.createIntervalT();
        AmdNumericType.setMinMaxAttributes(type, ascetImplType, lowerLimit, upperLimit);
        type.physType = "sint32";
        type.implType = ascetImplType;
        type.master = MasterType.IMPLEMENTATION;
        return type;
    }

    public static AmdNumericType createUDiscreteType(String ascetImplType, String lowerLimit, String upperLimit) {
        AmdNumericType type = new AmdNumericType();
        type.formula = IDENT_FORMULA;
        type.physInterval = ComponentImplementationFactory.eINSTANCE.createIntervalT();
        AmdNumericType.setMinMaxAttributes(type, ascetImplType, lowerLimit, upperLimit);
        type.physType = "uint32";
        type.implType = ascetImplType;
        type.master = MasterType.IMPLEMENTATION;
        return type;
    }

    protected static void setMinMaxAttributes(AmdNumericType type, String ascetImplType, String lowerLimit, String upperLimit) {
        if (StringUtils.isEmpty((String)upperLimit)) {
            type.physInterval.setMax(AmdNumericType.getMaxValueForType(ascetImplType));
        } else {
            type.physInterval.setMax(upperLimit);
        }
        if (StringUtils.isEmpty((String)lowerLimit)) {
            type.physInterval.setMin(AmdNumericType.getMinValueForType(ascetImplType));
        } else {
            type.physInterval.setMin(lowerLimit);
        }
    }

    public static AmdNumericType createDiscreteType(String ascetImplType, String lowerLimit, String upperLimit) {
        if (ascetImplType.startsWith("u")) {
            return AmdNumericType.createUDiscreteType(ascetImplType, lowerLimit, upperLimit);
        }
        return AmdNumericType.createSDiscreteType(ascetImplType, lowerLimit, upperLimit);
    }

    public static AmdNumericType createCharType() {
        AmdNumericType type = new AmdNumericType();
        type.formula = IDENT_FORMULA;
        type.physInterval = ComponentImplementationFactory.eINSTANCE.createIntervalT();
        type.physInterval.setMax("255");
        type.physInterval.setMin("0");
        type.implInterval = ComponentImplementationFactory.eINSTANCE.createIntervalT();
        type.implInterval.setMax("255");
        type.implInterval.setMin("0");
        type.physType = "uint32";
        type.implType = IMPL_UINT8;
        type.master = MasterType.IMPLEMENTATION;
        return type;
    }

    private BasicModelTypeType getBasicModelKind() {
        if (this.physType.equals("real64")) {
            return BasicModelTypeType.CONT;
        }
        if (this.physType.equals("uint32")) {
            return BasicModelTypeType.UDISC;
        }
        return BasicModelTypeType.SDISC;
    }

    protected static String getMaxValueForType(String ascetImplType) {
        if ("uint32".equals(ascetImplType)) {
            return "4294967295";
        }
        if (IMPL_UINT16.equals(ascetImplType)) {
            return "65535";
        }
        if (IMPL_UINT8.equals(ascetImplType)) {
            return "255";
        }
        if ("sint32".equals(ascetImplType)) {
            return "2147483647";
        }
        if (IMPL_SINT16.equals(ascetImplType)) {
            return "32767";
        }
        return "127";
    }

    protected static String getMinValueForType(String ascetImplType) {
        if ("uint32".equals(ascetImplType)) {
            return "0";
        }
        if (IMPL_UINT16.equals(ascetImplType)) {
            return "0";
        }
        if (IMPL_UINT8.equals(ascetImplType)) {
            return "0";
        }
        if ("sint32".equals(ascetImplType)) {
            return "-2147483648";
        }
        if (IMPL_SINT16.equals(ascetImplType)) {
            return "-32768";
        }
        return "-128";
    }

    public static String selectImplTypeFromLimits(String lower, String upper) {
        long upperInt;
        long lowerInt;
        try {
            lowerInt = Long.parseLong(lower);
        }
        catch (NumberFormatException numberFormatException) {
            return "real64";
        }
        try {
            upperInt = Long.parseLong(upper);
        }
        catch (NumberFormatException numberFormatException) {
            return "real64";
        }
        if (lowerInt >= 0L) {
            return AmdNumericType.selectUnsignedType(upperInt);
        }
        return AmdNumericType.selectSignedType(lowerInt, upperInt);
    }

    private static String selectUnsignedType(long upperInt) {
        if (upperInt <= 255L) {
            return IMPL_UINT8;
        }
        if (upperInt <= 65535L) {
            return IMPL_UINT16;
        }
        if (upperInt <= 0xFFFFFFFFL) {
            return "uint32";
        }
        return "real64";
    }

    private static String selectSignedType(long lowerInt, long upperInt) {
        if (lowerInt >= -128L && upperInt <= 127L) {
            return IMPL_SINT8;
        }
        if (lowerInt >= -32768L && upperInt <= 32767L) {
            return IMPL_SINT16;
        }
        if (lowerInt >= Integer.MIN_VALUE && upperInt <= Integer.MAX_VALUE) {
            return "sint32";
        }
        return "real64";
    }

    @Override
    public ElementAttributesT createModelAttributes() {
        return AmdFactory.createElementAttributesForScalar(this.getBasicModelKind());
    }

    @Override
    public ScalarImplementationT createScalarImpl() {
        NumericImplementationT numImpl = ComponentImplementationFactory.eINSTANCE.createNumericImplementationT();
        numImpl.setLimitAssignments(true);
        numImpl.setIsLimitOverflow(false);
        numImpl.setLimitOverflow(LimitOverflowType.AUTOMATIC);
        numImpl.setZeroNotIncluded(false);
        numImpl.setQuantization("1");
        numImpl.setMemoryLocationInstance("Default");
        numImpl.setMaster(this.master);
        numImpl.setImplType(this.implType);
        numImpl.setPhysType(this.physType);
        numImpl.setFormula(this.getFormula().getName());
        numImpl.setImplementationInterval(this.getImplementationInterval());
        if (this.physInterval != null) {
            numImpl.setPhysicalInterval(this.physInterval);
        }
        ScalarImplementationT impl = ComponentImplementationFactory.eINSTANCE.createScalarImplementationT();
        impl.setNumericImplementation(numImpl);
        return impl;
    }

    private IntervalT getImplementationInterval() {
        if (this.implInterval != null) {
            return this.implInterval;
        }
        if (this.physInterval == null) {
            this.implInterval = ComponentImplementationFactory.eINSTANCE.createIntervalT();
            this.implInterval.setMax("INF");
            this.implInterval.setMin("-INF");
            return this.implInterval;
        }
        this.implInterval = ComponentImplementationFactory.eINSTANCE.createIntervalT();
        try {
            this.implInterval.setMax(FormulaUtil.getPhysValue(this.formula, (String)this.physInterval.getMax()));
            this.implInterval.setMin(FormulaUtil.getPhysValue(this.formula, (String)this.physInterval.getMin()));
        }
        catch (Exception exception) {
            this.implInterval.setMax("INF");
            this.implInterval.setMin("-INF");
        }
        return this.implInterval;
    }

    private FormulaComplexType getFormula() {
        if (this.formula == null) {
            return IDENT_FORMULA;
        }
        return this.formula;
    }
}

