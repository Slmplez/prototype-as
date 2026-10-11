/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.common.util.ResourceLocator
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.util.EObjectValidator
 *  org.eclipse.sphinx.platform.util.ExtendedPlatform
 *  org.eclipse.sphinx.platform.util.ReflectUtil
 */
package autosar3x.swcomponent.datatype.datatypes.util;

import autosar3x.Activator;
import autosar3x.swcomponent.datatype.datatypes.ARLimit;
import autosar3x.swcomponent.datatype.datatypes.ArrayElement;
import autosar3x.swcomponent.datatype.datatypes.ArrayType;
import autosar3x.swcomponent.datatype.datatypes.BooleanType;
import autosar3x.swcomponent.datatype.datatypes.CharType;
import autosar3x.swcomponent.datatype.datatypes.CompositeType;
import autosar3x.swcomponent.datatype.datatypes.DataPrototype;
import autosar3x.swcomponent.datatype.datatypes.Datatype;
import autosar3x.swcomponent.datatype.datatypes.DatatypesPackage;
import autosar3x.swcomponent.datatype.datatypes.IntegerType;
import autosar3x.swcomponent.datatype.datatypes.OpaqueType;
import autosar3x.swcomponent.datatype.datatypes.PrimitiveType;
import autosar3x.swcomponent.datatype.datatypes.Range;
import autosar3x.swcomponent.datatype.datatypes.RealType;
import autosar3x.swcomponent.datatype.datatypes.RealTypeEncodingEnum;
import autosar3x.swcomponent.datatype.datatypes.RecordElement;
import autosar3x.swcomponent.datatype.datatypes.RecordType;
import autosar3x.swcomponent.datatype.datatypes.StringType;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.common.util.ResourceLocator;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.util.EObjectValidator;
import org.eclipse.sphinx.platform.util.ExtendedPlatform;
import org.eclipse.sphinx.platform.util.ReflectUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DatatypesValidator
extends EObjectValidator {
    public static final DatatypesValidator INSTANCE = new DatatypesValidator();
    public static final String DIAGNOSTIC_SOURCE = "autosar3x.swcomponent.datatype.datatypes";
    public static final int BOOLEAN_TYPE__DEFVALUES_TRUEFALSE = 1;
    public static final int DATATYPE__DEFVALUES_SET_OCL_ANY = 2;
    public static final int OPAQUE_TYPE__NUMBER_OF_BITS0 = 3;
    public static final int RANGE__DEFVALUES_IN_RANGE_SET_FLOAT = 4;
    public static final int RANGE__LOWER_LIMITUPPER_LIMIT = 5;
    public static final int STRING_TYPE__MAX_LENGTH0 = 6;
    public static final int INTEGER_TYPE__DEFVALUESVALUES_IN_RANGEINTERSECT_INTEGER = 7;
    public static final int REAL_TYPE__DEFALL_REALS_SET_REALDEFINEDBYENCODING = 8;
    public static final int REAL_TYPE__DEFVALUESVALUES_IN_RANGEINTERSECTALL_REALS = 9;
    public static final int CHAR_TYPE__TB_DNAMINGCONVENTIONFORENCODING = 10;
    public static final int ARRAY_TYPE__NUMBER_OF_ELEMENTS0 = 11;
    private static final int GENERATED_DIAGNOSTIC_CODE_COUNT = 11;
    protected static final int DIAGNOSTIC_CODE_COUNT = 11;

    protected EPackage getEPackage() {
        return DatatypesPackage.eINSTANCE;
    }

    protected boolean validate(int classifierID, Object value, DiagnosticChain diagnostics, Map<Object, Object> context) {
        switch (classifierID) {
            case 0: {
                return this.validateARLimit((ARLimit)value, diagnostics, context);
            }
            case 1: {
                return this.validateArrayElement((ArrayElement)value, diagnostics, context);
            }
            case 2: {
                return this.validateBooleanType((BooleanType)value, diagnostics, context);
            }
            case 3: {
                return this.validatePrimitiveType((PrimitiveType)value, diagnostics, context);
            }
            case 4: {
                return this.validateDatatype((Datatype)value, diagnostics, context);
            }
            case 5: {
                return this.validateCompositeType((CompositeType)value, diagnostics, context);
            }
            case 6: {
                return this.validateOpaqueType((OpaqueType)value, diagnostics, context);
            }
            case 7: {
                return this.validateRange((Range)value, diagnostics, context);
            }
            case 8: {
                return this.validateRecordElement((RecordElement)value, diagnostics, context);
            }
            case 9: {
                return this.validateStringType((StringType)value, diagnostics, context);
            }
            case 10: {
                return this.validateIntegerType((IntegerType)value, diagnostics, context);
            }
            case 11: {
                return this.validateRealType((RealType)value, diagnostics, context);
            }
            case 12: {
                return this.validateCharType((CharType)value, diagnostics, context);
            }
            case 13: {
                return this.validateArrayType((ArrayType)value, diagnostics, context);
            }
            case 14: {
                return this.validateRecordType((RecordType)value, diagnostics, context);
            }
            case 15: {
                return this.validateDataPrototype((DataPrototype)value, diagnostics, context);
            }
            case 16: {
                return this.validateRealTypeEncodingEnum((RealTypeEncodingEnum)((Object)value), diagnostics, context);
            }
        }
        return true;
    }

    public boolean validateARLimit(ARLimit arLimit, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)arLimit, diagnostics, context);
    }

    public boolean validateArrayElement(ArrayElement arrayElement, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)arrayElement, diagnostics, context);
    }

    public boolean validateBooleanType(BooleanType booleanType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)booleanType, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)booleanType, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)booleanType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)booleanType, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{booleanType, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)booleanType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)booleanType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)booleanType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)booleanType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDatatype_defvaluesSetOclAny(booleanType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateBooleanType_defvaluesTRUEFALSE(booleanType, diagnostics, context);
        }
        return result;
    }

    public boolean validateBooleanType_defvaluesTRUEFALSE(BooleanType booleanType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return booleanType.defvaluesTRUEFALSE(diagnostics, context);
    }

    public boolean validatePrimitiveType(PrimitiveType primitiveType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)primitiveType, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)primitiveType, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)primitiveType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)primitiveType, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{primitiveType, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)primitiveType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)primitiveType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)primitiveType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)primitiveType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDatatype_defvaluesSetOclAny(primitiveType, diagnostics, context);
        }
        return result;
    }

    public boolean validateDatatype(Datatype datatype, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)datatype, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)datatype, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)datatype, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)datatype, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{datatype, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)datatype, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)datatype, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)datatype, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)datatype, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDatatype_defvaluesSetOclAny(datatype, diagnostics, context);
        }
        return result;
    }

    public boolean validateDatatype_defvaluesSetOclAny(Datatype datatype, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return datatype.defvaluesSetOclAny(diagnostics, context);
    }

    public boolean validateCompositeType(CompositeType compositeType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)compositeType, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)compositeType, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)compositeType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)compositeType, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{compositeType, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)compositeType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)compositeType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)compositeType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)compositeType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDatatype_defvaluesSetOclAny(compositeType, diagnostics, context);
        }
        return result;
    }

    public boolean validateOpaqueType(OpaqueType opaqueType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)opaqueType, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)opaqueType, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)opaqueType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)opaqueType, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{opaqueType, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)opaqueType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)opaqueType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)opaqueType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)opaqueType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDatatype_defvaluesSetOclAny(opaqueType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateOpaqueType_numberOfBits0(opaqueType, diagnostics, context);
        }
        return result;
    }

    public boolean validateOpaqueType_numberOfBits0(OpaqueType opaqueType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return opaqueType.numberOfBits0(diagnostics, context);
    }

    public boolean validateRange(Range range, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)range, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)range, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)range, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)range, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{range, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)range, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)range, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)range, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)range, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateRange_defvaluesInRangeSetFloat(range, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateRange_lowerLimitupperLimit(range, diagnostics, context);
        }
        return result;
    }

    public boolean validateRange_defvaluesInRangeSetFloat(Range range, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return range.defvaluesInRangeSetFloat(diagnostics, context);
    }

    public boolean validateRange_lowerLimitupperLimit(Range range, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return range.lowerLimitupperLimit(diagnostics, context);
    }

    public boolean validateRecordElement(RecordElement recordElement, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)recordElement, diagnostics, context);
    }

    public boolean validateStringType(StringType stringType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)stringType, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)stringType, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)stringType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)stringType, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{stringType, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)stringType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)stringType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)stringType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)stringType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDatatype_defvaluesSetOclAny(stringType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateStringType_maxLength0(stringType, diagnostics, context);
        }
        return result;
    }

    public boolean validateStringType_maxLength0(StringType stringType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return stringType.maxLength0(diagnostics, context);
    }

    public boolean validateIntegerType(IntegerType integerType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)integerType, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)integerType, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)integerType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)integerType, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{integerType, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)integerType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)integerType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)integerType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)integerType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDatatype_defvaluesSetOclAny(integerType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateRange_defvaluesInRangeSetFloat(integerType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateRange_lowerLimitupperLimit(integerType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateIntegerType_defvaluesvaluesInRangeintersectInteger(integerType, diagnostics, context);
        }
        return result;
    }

    public boolean validateIntegerType_defvaluesvaluesInRangeintersectInteger(IntegerType integerType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return integerType.defvaluesvaluesInRangeintersectInteger(diagnostics, context);
    }

    public boolean validateRealType(RealType realType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)realType, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)realType, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)realType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)realType, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{realType, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)realType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)realType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)realType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)realType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDatatype_defvaluesSetOclAny(realType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateRange_defvaluesInRangeSetFloat(realType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateRange_lowerLimitupperLimit(realType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateRealType_defallRealsSetRealdefinedbyencoding(realType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateRealType_defvaluesvaluesInRangeintersectallReals(realType, diagnostics, context);
        }
        return result;
    }

    public boolean validateRealType_defallRealsSetRealdefinedbyencoding(RealType realType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return realType.defallRealsSetRealdefinedbyencoding(diagnostics, context);
    }

    public boolean validateRealType_defvaluesvaluesInRangeintersectallReals(RealType realType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return realType.defvaluesvaluesInRangeintersectallReals(diagnostics, context);
    }

    public boolean validateCharType(CharType charType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)charType, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)charType, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)charType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)charType, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{charType, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)charType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)charType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)charType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)charType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDatatype_defvaluesSetOclAny(charType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateCharType_TBDnamingconventionforencoding(charType, diagnostics, context);
        }
        return result;
    }

    public boolean validateCharType_TBDnamingconventionforencoding(CharType charType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return charType.TBDnamingconventionforencoding(diagnostics, context);
    }

    public boolean validateArrayType(ArrayType arrayType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)arrayType, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)arrayType, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)arrayType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)arrayType, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{arrayType, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)arrayType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)arrayType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)arrayType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)arrayType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDatatype_defvaluesSetOclAny(arrayType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateArrayType_numberOfElements0(arrayType, diagnostics, context);
        }
        return result;
    }

    public boolean validateArrayType_numberOfElements0(ArrayType arrayType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return arrayType.numberOfElements0(diagnostics, context);
    }

    public boolean validateRecordType(RecordType recordType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)recordType, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)recordType, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)recordType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)recordType, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{recordType, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)recordType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)recordType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)recordType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)recordType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateDatatype_defvaluesSetOclAny(recordType, diagnostics, context);
        }
        return result;
    }

    public boolean validateDataPrototype(DataPrototype dataPrototype, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)dataPrototype, diagnostics, context);
    }

    public boolean validateRealTypeEncodingEnum(RealTypeEncodingEnum realTypeEncodingEnum, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public ResourceLocator getResourceLocator() {
        return Activator.INSTANCE;
    }
}

