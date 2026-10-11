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
package autosar40.swcomponent.datatype.datatypes.util;

import autosar40.Activator;
import autosar40.swcomponent.datatype.datatypes.ApplicationArrayDataType;
import autosar40.swcomponent.datatype.datatypes.ApplicationCompositeDataType;
import autosar40.swcomponent.datatype.datatypes.ApplicationDataType;
import autosar40.swcomponent.datatype.datatypes.ApplicationPrimitiveDataType;
import autosar40.swcomponent.datatype.datatypes.ApplicationRecordDataType;
import autosar40.swcomponent.datatype.datatypes.AutosarDataType;
import autosar40.swcomponent.datatype.datatypes.DataTypeMap;
import autosar40.swcomponent.datatype.datatypes.DataTypeMappingSet;
import autosar40.swcomponent.datatype.datatypes.DatatypesPackage;
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
    public static final String DIAGNOSTIC_SOURCE = "autosar40.swcomponent.datatype.datatypes";
    public static final int APPLICATION_ARRAY_DATA_TYPE__NUMBER_OF_ELEMENTS0 = 1;
    private static final int GENERATED_DIAGNOSTIC_CODE_COUNT = 1;
    protected static final int DIAGNOSTIC_CODE_COUNT = 1;

    protected EPackage getEPackage() {
        return DatatypesPackage.eINSTANCE;
    }

    protected boolean validate(int classifierID, Object value, DiagnosticChain diagnostics, Map<Object, Object> context) {
        switch (classifierID) {
            case 0: {
                return this.validateApplicationCompositeDataType((ApplicationCompositeDataType)value, diagnostics, context);
            }
            case 1: {
                return this.validateApplicationDataType((ApplicationDataType)value, diagnostics, context);
            }
            case 2: {
                return this.validateAutosarDataType((AutosarDataType)value, diagnostics, context);
            }
            case 3: {
                return this.validateDataTypeMap((DataTypeMap)value, diagnostics, context);
            }
            case 4: {
                return this.validateDataTypeMappingSet((DataTypeMappingSet)value, diagnostics, context);
            }
            case 5: {
                return this.validateApplicationPrimitiveDataType((ApplicationPrimitiveDataType)value, diagnostics, context);
            }
            case 6: {
                return this.validateApplicationArrayDataType((ApplicationArrayDataType)value, diagnostics, context);
            }
            case 7: {
                return this.validateApplicationRecordDataType((ApplicationRecordDataType)value, diagnostics, context);
            }
        }
        return true;
    }

    public boolean validateApplicationCompositeDataType(ApplicationCompositeDataType applicationCompositeDataType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)applicationCompositeDataType, diagnostics, context);
    }

    public boolean validateApplicationDataType(ApplicationDataType applicationDataType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)applicationDataType, diagnostics, context);
    }

    public boolean validateAutosarDataType(AutosarDataType autosarDataType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)autosarDataType, diagnostics, context);
    }

    public boolean validateDataTypeMap(DataTypeMap dataTypeMap, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)dataTypeMap, diagnostics, context);
    }

    public boolean validateDataTypeMappingSet(DataTypeMappingSet dataTypeMappingSet, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)dataTypeMappingSet, diagnostics, context);
    }

    public boolean validateApplicationPrimitiveDataType(ApplicationPrimitiveDataType applicationPrimitiveDataType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)applicationPrimitiveDataType, diagnostics, context);
    }

    public boolean validateApplicationArrayDataType(ApplicationArrayDataType applicationArrayDataType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)applicationArrayDataType, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)applicationArrayDataType, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)applicationArrayDataType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)applicationArrayDataType, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{applicationArrayDataType, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)applicationArrayDataType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)applicationArrayDataType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)applicationArrayDataType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)applicationArrayDataType, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateApplicationArrayDataType_numberOfElements0(applicationArrayDataType, diagnostics, context);
        }
        return result;
    }

    public boolean validateApplicationArrayDataType_numberOfElements0(ApplicationArrayDataType applicationArrayDataType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return applicationArrayDataType.numberOfElements0(diagnostics, context);
    }

    public boolean validateApplicationRecordDataType(ApplicationRecordDataType applicationRecordDataType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)applicationRecordDataType, diagnostics, context);
    }

    public ResourceLocator getResourceLocator() {
        return Activator.INSTANCE;
    }
}

