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
package autosar3x.swcomponent.datatype.constants.util;

import autosar3x.Activator;
import autosar3x.swcomponent.datatype.constants.ArraySpecification;
import autosar3x.swcomponent.datatype.constants.BooleanLiteral;
import autosar3x.swcomponent.datatype.constants.CharLiteral;
import autosar3x.swcomponent.datatype.constants.ConstantReference;
import autosar3x.swcomponent.datatype.constants.ConstantSpecification;
import autosar3x.swcomponent.datatype.constants.ConstantsPackage;
import autosar3x.swcomponent.datatype.constants.IntegerLiteral;
import autosar3x.swcomponent.datatype.constants.OpaqueLiteral;
import autosar3x.swcomponent.datatype.constants.PrimitiveSpecification;
import autosar3x.swcomponent.datatype.constants.RealLiteral;
import autosar3x.swcomponent.datatype.constants.RecordSpecification;
import autosar3x.swcomponent.datatype.constants.StringLiteral;
import autosar3x.swcomponent.datatype.constants.ValueSpecification;
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
public class ConstantsValidator
extends EObjectValidator {
    public static final ConstantsValidator INSTANCE = new ConstantsValidator();
    public static final String DIAGNOSTIC_SOURCE = "autosar3x.swcomponent.datatype.constants";
    public static final int ARRAY_SPECIFICATION__ROLEIDENTIFIERSAREINDEXNUMBERS = 1;
    public static final int VALUE_SPECIFICATION__TYPEREQUIREDFORROOTCONSTANT = 2;
    public static final int BOOLEAN_LITERAL__VALUE_OCL_IS_TYPE_OF_BOOLEAN_TYPE = 3;
    public static final int CHAR_LITERAL__CHARACTERISPARTOFENCODING = 4;
    public static final int CHAR_LITERAL__VALUE_SIZE1 = 5;
    public static final int CHAR_LITERAL__VALUETYPEOCL_IS_OF_TYPE_CHAR_TYPE = 6;
    public static final int OPAQUE_LITERAL__DATATYPEISOPAQUE = 7;
    public static final int REAL_LITERAL__SELFTYPEVALUES_INCLUDESVALUE = 8;
    public static final int REAL_LITERAL__VALUETYPEOCL_IS_TYPE_OF_REAL_DATATYPEORVALUETYPEOCL_IS_TYPE_OF_OPAQUE_DATATYPE = 9;
    public static final int STRING_LITERAL__CHARACTERSAREPARTOFENCODING = 10;
    public static final int STRING_LITERAL__VALUESIZEVALUETYPEOCL_AS_TYPE_STRING_TYPEMAX_LENGTH = 11;
    public static final int STRING_LITERAL__VALUETYPEOCL_IS_TYPE_OF_STRING_TYPE = 12;
    private static final int GENERATED_DIAGNOSTIC_CODE_COUNT = 12;
    protected static final int DIAGNOSTIC_CODE_COUNT = 12;

    protected EPackage getEPackage() {
        return ConstantsPackage.eINSTANCE;
    }

    protected boolean validate(int classifierID, Object value, DiagnosticChain diagnostics, Map<Object, Object> context) {
        switch (classifierID) {
            case 0: {
                return this.validateArraySpecification((ArraySpecification)value, diagnostics, context);
            }
            case 1: {
                return this.validateValueSpecification((ValueSpecification)value, diagnostics, context);
            }
            case 2: {
                return this.validateBooleanLiteral((BooleanLiteral)value, diagnostics, context);
            }
            case 3: {
                return this.validateCharLiteral((CharLiteral)value, diagnostics, context);
            }
            case 4: {
                return this.validateConstantReference((ConstantReference)value, diagnostics, context);
            }
            case 5: {
                return this.validateConstantSpecification((ConstantSpecification)value, diagnostics, context);
            }
            case 6: {
                return this.validateIntegerLiteral((IntegerLiteral)value, diagnostics, context);
            }
            case 7: {
                return this.validateOpaqueLiteral((OpaqueLiteral)value, diagnostics, context);
            }
            case 8: {
                return this.validateRealLiteral((RealLiteral)value, diagnostics, context);
            }
            case 9: {
                return this.validateRecordSpecification((RecordSpecification)value, diagnostics, context);
            }
            case 10: {
                return this.validateStringLiteral((StringLiteral)value, diagnostics, context);
            }
            case 11: {
                return this.validatePrimitiveSpecification((PrimitiveSpecification)value, diagnostics, context);
            }
        }
        return true;
    }

    public boolean validateArraySpecification(ArraySpecification arraySpecification, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)arraySpecification, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)arraySpecification, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)arraySpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)arraySpecification, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{arraySpecification, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)arraySpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)arraySpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)arraySpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)arraySpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateValueSpecification__typerequiredforrootconstant(arraySpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateArraySpecification__roleidentifiersareindexnumbers(arraySpecification, diagnostics, context);
        }
        return result;
    }

    public boolean validateArraySpecification__roleidentifiersareindexnumbers(ArraySpecification arraySpecification, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return arraySpecification._roleidentifiersareindexnumbers(diagnostics, context);
    }

    public boolean validateValueSpecification(ValueSpecification valueSpecification, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)valueSpecification, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)valueSpecification, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)valueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)valueSpecification, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{valueSpecification, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)valueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)valueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)valueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)valueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateValueSpecification__typerequiredforrootconstant(valueSpecification, diagnostics, context);
        }
        return result;
    }

    public boolean validateValueSpecification__typerequiredforrootconstant(ValueSpecification valueSpecification, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return valueSpecification._typerequiredforrootconstant(diagnostics, context);
    }

    public boolean validateBooleanLiteral(BooleanLiteral booleanLiteral, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)booleanLiteral, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)booleanLiteral, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)booleanLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)booleanLiteral, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{booleanLiteral, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)booleanLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)booleanLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)booleanLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)booleanLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateValueSpecification__typerequiredforrootconstant(booleanLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateBooleanLiteral_value_oclIsTypeOfBooleanType(booleanLiteral, diagnostics, context);
        }
        return result;
    }

    public boolean validateBooleanLiteral_value_oclIsTypeOfBooleanType(BooleanLiteral booleanLiteral, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return booleanLiteral.value_oclIsTypeOfBooleanType(diagnostics, context);
    }

    public boolean validateCharLiteral(CharLiteral charLiteral, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)charLiteral, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)charLiteral, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)charLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)charLiteral, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{charLiteral, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)charLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)charLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)charLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)charLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateValueSpecification__typerequiredforrootconstant(charLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateCharLiteral__characterispartofencoding(charLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateCharLiteral_value_size1(charLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateCharLiteral_valuetypeoclIsOfTypeCharType(charLiteral, diagnostics, context);
        }
        return result;
    }

    public boolean validateCharLiteral__characterispartofencoding(CharLiteral charLiteral, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return charLiteral._characterispartofencoding(diagnostics, context);
    }

    public boolean validateCharLiteral_value_size1(CharLiteral charLiteral, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return charLiteral.value_size1(diagnostics, context);
    }

    public boolean validateCharLiteral_valuetypeoclIsOfTypeCharType(CharLiteral charLiteral, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return charLiteral.valuetypeoclIsOfTypeCharType(diagnostics, context);
    }

    public boolean validateConstantReference(ConstantReference constantReference, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)constantReference, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)constantReference, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)constantReference, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)constantReference, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{constantReference, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)constantReference, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)constantReference, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)constantReference, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)constantReference, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateValueSpecification__typerequiredforrootconstant(constantReference, diagnostics, context);
        }
        return result;
    }

    public boolean validateConstantSpecification(ConstantSpecification constantSpecification, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)constantSpecification, diagnostics, context);
    }

    public boolean validateIntegerLiteral(IntegerLiteral integerLiteral, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)integerLiteral, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)integerLiteral, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)integerLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)integerLiteral, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{integerLiteral, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)integerLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)integerLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)integerLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)integerLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateValueSpecification__typerequiredforrootconstant(integerLiteral, diagnostics, context);
        }
        return result;
    }

    public boolean validateOpaqueLiteral(OpaqueLiteral opaqueLiteral, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)opaqueLiteral, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)opaqueLiteral, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)opaqueLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)opaqueLiteral, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{opaqueLiteral, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)opaqueLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)opaqueLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)opaqueLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)opaqueLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateValueSpecification__typerequiredforrootconstant(opaqueLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateOpaqueLiteral__datatypeisopaque(opaqueLiteral, diagnostics, context);
        }
        return result;
    }

    public boolean validateOpaqueLiteral__datatypeisopaque(OpaqueLiteral opaqueLiteral, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return opaqueLiteral._datatypeisopaque(diagnostics, context);
    }

    public boolean validateRealLiteral(RealLiteral realLiteral, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)realLiteral, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)realLiteral, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)realLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)realLiteral, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{realLiteral, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)realLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)realLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)realLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)realLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateValueSpecification__typerequiredforrootconstant(realLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateRealLiteral_selftypevalues_includesvalue(realLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateRealLiteral_valuetypeoclIsTypeOfRealDatatypeorvaluetypeoclIsTypeOfOpaqueDatatype(realLiteral, diagnostics, context);
        }
        return result;
    }

    public boolean validateRealLiteral_selftypevalues_includesvalue(RealLiteral realLiteral, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return realLiteral.selftypevalues_includesvalue(diagnostics, context);
    }

    public boolean validateRealLiteral_valuetypeoclIsTypeOfRealDatatypeorvaluetypeoclIsTypeOfOpaqueDatatype(RealLiteral realLiteral, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return realLiteral.valuetypeoclIsTypeOfRealDatatypeorvaluetypeoclIsTypeOfOpaqueDatatype(diagnostics, context);
    }

    public boolean validateRecordSpecification(RecordSpecification recordSpecification, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)recordSpecification, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)recordSpecification, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)recordSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)recordSpecification, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{recordSpecification, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)recordSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)recordSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)recordSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)recordSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateValueSpecification__typerequiredforrootconstant(recordSpecification, diagnostics, context);
        }
        return result;
    }

    public boolean validateStringLiteral(StringLiteral stringLiteral, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)stringLiteral, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)stringLiteral, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)stringLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)stringLiteral, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{stringLiteral, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)stringLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)stringLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)stringLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)stringLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateValueSpecification__typerequiredforrootconstant(stringLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateStringLiteral__charactersarepartofencoding(stringLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateStringLiteral_valuesizevaluetypeoclAsTypeStringTypemaxLength(stringLiteral, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateStringLiteral_valuetypeoclIsTypeOfStringType(stringLiteral, diagnostics, context);
        }
        return result;
    }

    public boolean validateStringLiteral__charactersarepartofencoding(StringLiteral stringLiteral, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return stringLiteral._charactersarepartofencoding(diagnostics, context);
    }

    public boolean validateStringLiteral_valuesizevaluetypeoclAsTypeStringTypemaxLength(StringLiteral stringLiteral, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return stringLiteral.valuesizevaluetypeoclAsTypeStringTypemaxLength(diagnostics, context);
    }

    public boolean validateStringLiteral_valuetypeoclIsTypeOfStringType(StringLiteral stringLiteral, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return stringLiteral.valuetypeoclIsTypeOfStringType(diagnostics, context);
    }

    public boolean validatePrimitiveSpecification(PrimitiveSpecification primitiveSpecification, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)primitiveSpecification, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)primitiveSpecification, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)primitiveSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)primitiveSpecification, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{primitiveSpecification, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)primitiveSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)primitiveSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)primitiveSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)primitiveSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateValueSpecification__typerequiredforrootconstant(primitiveSpecification, diagnostics, context);
        }
        return result;
    }

    public ResourceLocator getResourceLocator() {
        return Activator.INSTANCE;
    }
}

