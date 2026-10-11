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
package autosar40.commonstructure.constants.util;

import autosar40.Activator;
import autosar40.commonstructure.constants.ApplicationValueSpecification;
import autosar40.commonstructure.constants.ArrayValueSpecification;
import autosar40.commonstructure.constants.ConstantReference;
import autosar40.commonstructure.constants.ConstantSpecification;
import autosar40.commonstructure.constants.ConstantSpecificationMapping;
import autosar40.commonstructure.constants.ConstantSpecificationMappingSet;
import autosar40.commonstructure.constants.ConstantsPackage;
import autosar40.commonstructure.constants.NumericalValueSpecification;
import autosar40.commonstructure.constants.RecordValueSpecification;
import autosar40.commonstructure.constants.ReferenceValueSpecification;
import autosar40.commonstructure.constants.TextValueSpecification;
import autosar40.commonstructure.constants.ValueSpecification;
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
    public static final String DIAGNOSTIC_SOURCE = "autosar40.commonstructure.constants";
    public static final int ARRAY_VALUE_SPECIFICATION__ROLEIDENTIFIERSAREINDEXNUMBERS = 1;
    public static final int VALUE_SPECIFICATION__TYPEREQUIREDFORROOTCONSTANT = 2;
    private static final int GENERATED_DIAGNOSTIC_CODE_COUNT = 2;
    protected static final int DIAGNOSTIC_CODE_COUNT = 2;

    protected EPackage getEPackage() {
        return ConstantsPackage.eINSTANCE;
    }

    protected boolean validate(int classifierID, Object value, DiagnosticChain diagnostics, Map<Object, Object> context) {
        switch (classifierID) {
            case 0: {
                return this.validateApplicationValueSpecification((ApplicationValueSpecification)value, diagnostics, context);
            }
            case 1: {
                return this.validateArrayValueSpecification((ArrayValueSpecification)value, diagnostics, context);
            }
            case 2: {
                return this.validateConstantReference((ConstantReference)value, diagnostics, context);
            }
            case 3: {
                return this.validateConstantSpecification((ConstantSpecification)value, diagnostics, context);
            }
            case 4: {
                return this.validateConstantSpecificationMapping((ConstantSpecificationMapping)value, diagnostics, context);
            }
            case 5: {
                return this.validateConstantSpecificationMappingSet((ConstantSpecificationMappingSet)value, diagnostics, context);
            }
            case 6: {
                return this.validateNumericalValueSpecification((NumericalValueSpecification)value, diagnostics, context);
            }
            case 7: {
                return this.validateRecordValueSpecification((RecordValueSpecification)value, diagnostics, context);
            }
            case 8: {
                return this.validateReferenceValueSpecification((ReferenceValueSpecification)value, diagnostics, context);
            }
            case 9: {
                return this.validateTextValueSpecification((TextValueSpecification)value, diagnostics, context);
            }
            case 10: {
                return this.validateValueSpecification((ValueSpecification)value, diagnostics, context);
            }
        }
        return true;
    }

    public boolean validateApplicationValueSpecification(ApplicationValueSpecification applicationValueSpecification, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)applicationValueSpecification, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)applicationValueSpecification, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)applicationValueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)applicationValueSpecification, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{applicationValueSpecification, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)applicationValueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)applicationValueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)applicationValueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)applicationValueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateValueSpecification__typerequiredforrootconstant(applicationValueSpecification, diagnostics, context);
        }
        return result;
    }

    public boolean validateArrayValueSpecification(ArrayValueSpecification arrayValueSpecification, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)arrayValueSpecification, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)arrayValueSpecification, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)arrayValueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)arrayValueSpecification, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{arrayValueSpecification, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)arrayValueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)arrayValueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)arrayValueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)arrayValueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateValueSpecification__typerequiredforrootconstant(arrayValueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateArrayValueSpecification__roleidentifiersareindexnumbers(arrayValueSpecification, diagnostics, context);
        }
        return result;
    }

    public boolean validateArrayValueSpecification__roleidentifiersareindexnumbers(ArrayValueSpecification arrayValueSpecification, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return arrayValueSpecification._roleidentifiersareindexnumbers(diagnostics, context);
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

    public boolean validateConstantSpecificationMapping(ConstantSpecificationMapping constantSpecificationMapping, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)constantSpecificationMapping, diagnostics, context);
    }

    public boolean validateConstantSpecificationMappingSet(ConstantSpecificationMappingSet constantSpecificationMappingSet, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)constantSpecificationMappingSet, diagnostics, context);
    }

    public boolean validateNumericalValueSpecification(NumericalValueSpecification numericalValueSpecification, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)numericalValueSpecification, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)numericalValueSpecification, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)numericalValueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)numericalValueSpecification, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{numericalValueSpecification, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)numericalValueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)numericalValueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)numericalValueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)numericalValueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateValueSpecification__typerequiredforrootconstant(numericalValueSpecification, diagnostics, context);
        }
        return result;
    }

    public boolean validateRecordValueSpecification(RecordValueSpecification recordValueSpecification, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)recordValueSpecification, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)recordValueSpecification, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)recordValueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)recordValueSpecification, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{recordValueSpecification, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)recordValueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)recordValueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)recordValueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)recordValueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateValueSpecification__typerequiredforrootconstant(recordValueSpecification, diagnostics, context);
        }
        return result;
    }

    public boolean validateReferenceValueSpecification(ReferenceValueSpecification referenceValueSpecification, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)referenceValueSpecification, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)referenceValueSpecification, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)referenceValueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)referenceValueSpecification, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{referenceValueSpecification, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)referenceValueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)referenceValueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)referenceValueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)referenceValueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateValueSpecification__typerequiredforrootconstant(referenceValueSpecification, diagnostics, context);
        }
        return result;
    }

    public boolean validateTextValueSpecification(TextValueSpecification textValueSpecification, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)textValueSpecification, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)textValueSpecification, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)textValueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)textValueSpecification, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{textValueSpecification, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)textValueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)textValueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)textValueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)textValueSpecification, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateValueSpecification__typerequiredforrootconstant(textValueSpecification, diagnostics, context);
        }
        return result;
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

    public ResourceLocator getResourceLocator() {
        return Activator.INSTANCE;
    }
}

