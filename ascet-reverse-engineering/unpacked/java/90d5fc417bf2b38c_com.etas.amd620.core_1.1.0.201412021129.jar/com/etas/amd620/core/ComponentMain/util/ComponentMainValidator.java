/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.BasicDiagnostic
 *  org.eclipse.emf.common.util.Diagnostic
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.common.util.ResourceLocator
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EValidator$PatternMatcher
 *  org.eclipse.emf.ecore.util.EObjectValidator
 *  org.eclipse.emf.ecore.xml.type.XMLTypePackage$Literals
 *  org.eclipse.emf.ecore.xml.type.util.XMLTypeUtil
 *  org.eclipse.emf.ecore.xml.type.util.XMLTypeValidator
 */
package com.etas.amd620.core.ComponentMain.util;

import com.etas.amd620.core.ComponentMain.AccessModesT;
import com.etas.amd620.core.ComponentMain.ArgumentsComplexType;
import com.etas.amd620.core.ComponentMain.ArgumentsType;
import com.etas.amd620.core.ComponentMain.Asap2ItemType;
import com.etas.amd620.core.ComponentMain.AtomicSoftwareComponentT;
import com.etas.amd620.core.ComponentMain.AttributesBaseT;
import com.etas.amd620.core.ComponentMain.BasicModelTypeType;
import com.etas.amd620.core.ComponentMain.ColorT;
import com.etas.amd620.core.ComponentMain.ComplexAttributesT;
import com.etas.amd620.core.ComponentMain.ComplexTypeType;
import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.ComponentMainType;
import com.etas.amd620.core.ComponentMain.ComponentT;
import com.etas.amd620.core.ComponentMain.ComponentTypeType;
import com.etas.amd620.core.ComponentMain.ConfigurationManagementT;
import com.etas.amd620.core.ComponentMain.ContainerType;
import com.etas.amd620.core.ComponentMain.CustomerSpecificAttributesType;
import com.etas.amd620.core.ComponentMain.DataInterfaceT;
import com.etas.amd620.core.ComponentMain.DimensionalAttributesT;
import com.etas.amd620.core.ComponentMain.DimensionalTypeType;
import com.etas.amd620.core.ComponentMain.DocumentRoot;
import com.etas.amd620.core.ComponentMain.ElementAttributesT;
import com.etas.amd620.core.ComponentMain.ElementMappingType;
import com.etas.amd620.core.ComponentMain.ElementMappingType1;
import com.etas.amd620.core.ComponentMain.ElementMappingType2;
import com.etas.amd620.core.ComponentMain.ElementT;
import com.etas.amd620.core.ComponentMain.ElementsType;
import com.etas.amd620.core.ComponentMain.EnumerationAttributesT;
import com.etas.amd620.core.ComponentMain.EnumerationType;
import com.etas.amd620.core.ComponentMain.EnumeratorT;
import com.etas.amd620.core.ComponentMain.ExternalMappingObjectT;
import com.etas.amd620.core.ComponentMain.FileReferenceT;
import com.etas.amd620.core.ComponentMain.FormalType;
import com.etas.amd620.core.ComponentMain.FormattedTextT;
import com.etas.amd620.core.ComponentMain.FormulaType;
import com.etas.amd620.core.ComponentMain.GenericComponentT;
import com.etas.amd620.core.ComponentMain.GenericDataT;
import com.etas.amd620.core.ComponentMain.IconT;
import com.etas.amd620.core.ComponentMain.ImageType;
import com.etas.amd620.core.ComponentMain.InternalAccessType;
import com.etas.amd620.core.ComponentMain.IntervalT;
import com.etas.amd620.core.ComponentMain.ItemBaseT;
import com.etas.amd620.core.ComponentMain.ItemRefT;
import com.etas.amd620.core.ComponentMain.ItemT;
import com.etas.amd620.core.ComponentMain.ItemType;
import com.etas.amd620.core.ComponentMain.KindType;
import com.etas.amd620.core.ComponentMain.LocalsComplexType;
import com.etas.amd620.core.ComponentMain.MappingItemT;
import com.etas.amd620.core.ComponentMain.MappingObjectT;
import com.etas.amd620.core.ComponentMain.MethodBaseT;
import com.etas.amd620.core.ComponentMain.MethodInterfaceT;
import com.etas.amd620.core.ComponentMain.MethodSignatureT;
import com.etas.amd620.core.ComponentMain.MethodSignaturesType;
import com.etas.amd620.core.ComponentMain.MethodSignaturesType1;
import com.etas.amd620.core.ComponentMain.MethodT;
import com.etas.amd620.core.ComponentMain.ModeGroupType;
import com.etas.amd620.core.ComponentMain.ModelTypeType;
import com.etas.amd620.core.ComponentMain.NoteType;
import com.etas.amd620.core.ComponentMain.NotesT;
import com.etas.amd620.core.ComponentMain.OptionT;
import com.etas.amd620.core.ComponentMain.ParameterMappingsType;
import com.etas.amd620.core.ComponentMain.PointT;
import com.etas.amd620.core.ComponentMain.PrimitiveAttributesBaseT;
import com.etas.amd620.core.ComponentMain.RealizedElementT;
import com.etas.amd620.core.ComponentMain.RealizedMethodBaseT;
import com.etas.amd620.core.ComponentMain.RealizedMethodT;
import com.etas.amd620.core.ComponentMain.RealizedReturnT;
import com.etas.amd620.core.ComponentMain.RealizedRunnableT;
import com.etas.amd620.core.ComponentMain.RecordAttributesT;
import com.etas.amd620.core.ComponentMain.RequirementsManagementT;
import com.etas.amd620.core.ComponentMain.ReturnT;
import com.etas.amd620.core.ComponentMain.RunnableT;
import com.etas.amd620.core.ComponentMain.ScalarAttributesT;
import com.etas.amd620.core.ComponentMain.ScalarTypeType;
import com.etas.amd620.core.ComponentMain.ScopeType;
import com.etas.amd620.core.ComponentMain.SignalType;
import com.etas.amd620.core.ComponentMain.SizeT;
import com.etas.amd620.core.ComponentMain.SourceObjectType;
import com.etas.amd620.core.ComponentMain.SpecificationTypeType;
import com.etas.amd620.core.ComponentMain.TimeStampT;
import com.etas.amd620.core.ComponentMain.TimeStampsType;
import com.etas.amd620.core.ComponentMain.TypeType;
import com.etas.amd620.core.ComponentMain.TypeType1;
import com.etas.amd620.core.ComponentMain.VariableMappingsExternalType;
import com.etas.amd620.core.ComponentMain.VariableMappingsInternalType;
import com.etas.amd620.core.ComponentMain.ViewType;
import java.math.BigInteger;
import java.util.Map;
import org.eclipse.emf.common.util.BasicDiagnostic;
import org.eclipse.emf.common.util.Diagnostic;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.common.util.ResourceLocator;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EValidator;
import org.eclipse.emf.ecore.util.EObjectValidator;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;
import org.eclipse.emf.ecore.xml.type.util.XMLTypeUtil;
import org.eclipse.emf.ecore.xml.type.util.XMLTypeValidator;

public class ComponentMainValidator
extends EObjectValidator {
    public static final ComponentMainValidator INSTANCE = new ComponentMainValidator();
    public static final String DIAGNOSTIC_SOURCE = "com.etas.amd620.core.ComponentMain";
    private static final int GENERATED_DIAGNOSTIC_CODE_COUNT = 0;
    protected static final int DIAGNOSTIC_CODE_COUNT = 0;
    protected XMLTypeValidator xmlTypeValidator = XMLTypeValidator.INSTANCE;
    public static final BigInteger INDEX_TYPE__MIN__VALUE = new BigInteger("-2147483648");
    public static final BigInteger INDEX_TYPE__MAX__VALUE = new BigInteger("4294967295");
    public static final EValidator.PatternMatcher[][] NUMBER_OR_FRACTION_MEMBER1__PATTERN__VALUES = new EValidator.PatternMatcher[][]{{XMLTypeUtil.createPatternMatcher((String)"-?\\d*.?\\d*/\\d*\\.?\\d*")}};
    public static final EValidator.PatternMatcher[][] NZQR_MEMBER2__PATTERN__VALUES = new EValidator.PatternMatcher[][]{{XMLTypeUtil.createPatternMatcher((String)"-?\\d*/\\d*")}};
    public static final EValidator.PatternMatcher[][] OID__PATTERN__VALUES = new EValidator.PatternMatcher[][]{{XMLTypeUtil.createPatternMatcher((String)"(_040|_07v)\\w{26}|_sm")}};

    protected EPackage getEPackage() {
        return ComponentMainPackage.eINSTANCE;
    }

    protected boolean validate(int classifierID, Object value, DiagnosticChain diagnostics, Map<Object, Object> context) {
        switch (classifierID) {
            case 0: {
                return this.validateAccessModesT((AccessModesT)value, diagnostics, context);
            }
            case 1: {
                return this.validateArgumentsComplexType((ArgumentsComplexType)value, diagnostics, context);
            }
            case 2: {
                return this.validateArgumentsType((ArgumentsType)value, diagnostics, context);
            }
            case 3: {
                return this.validateAsap2ItemType((Asap2ItemType)value, diagnostics, context);
            }
            case 4: {
                return this.validateAtomicSoftwareComponentT((AtomicSoftwareComponentT)value, diagnostics, context);
            }
            case 5: {
                return this.validateAttributesBaseT((AttributesBaseT)value, diagnostics, context);
            }
            case 6: {
                return this.validateColorT((ColorT)value, diagnostics, context);
            }
            case 7: {
                return this.validateComplexAttributesT((ComplexAttributesT)value, diagnostics, context);
            }
            case 8: {
                return this.validateComplexTypeType((ComplexTypeType)value, diagnostics, context);
            }
            case 9: {
                return this.validateComponentMainType((ComponentMainType)value, diagnostics, context);
            }
            case 10: {
                return this.validateComponentT((ComponentT)value, diagnostics, context);
            }
            case 11: {
                return this.validateConfigurationManagementT((ConfigurationManagementT)value, diagnostics, context);
            }
            case 12: {
                return this.validateContainerType((ContainerType)value, diagnostics, context);
            }
            case 13: {
                return this.validateCustomerSpecificAttributesType((CustomerSpecificAttributesType)value, diagnostics, context);
            }
            case 14: {
                return this.validateDataInterfaceT((DataInterfaceT)value, diagnostics, context);
            }
            case 15: {
                return this.validateDimensionalAttributesT((DimensionalAttributesT)value, diagnostics, context);
            }
            case 16: {
                return this.validateDimensionalTypeType((DimensionalTypeType)value, diagnostics, context);
            }
            case 17: {
                return this.validateDocumentRoot((DocumentRoot)value, diagnostics, context);
            }
            case 18: {
                return this.validateElementAttributesT((ElementAttributesT)value, diagnostics, context);
            }
            case 19: {
                return this.validateElementMappingType((ElementMappingType)value, diagnostics, context);
            }
            case 20: {
                return this.validateElementMappingType1((ElementMappingType1)value, diagnostics, context);
            }
            case 21: {
                return this.validateElementMappingType2((ElementMappingType2)value, diagnostics, context);
            }
            case 22: {
                return this.validateElementsType((ElementsType)value, diagnostics, context);
            }
            case 23: {
                return this.validateElementT((ElementT)value, diagnostics, context);
            }
            case 24: {
                return this.validateEnumerationAttributesT((EnumerationAttributesT)value, diagnostics, context);
            }
            case 25: {
                return this.validateEnumerationType((EnumerationType)value, diagnostics, context);
            }
            case 26: {
                return this.validateEnumeratorT((EnumeratorT)value, diagnostics, context);
            }
            case 27: {
                return this.validateExternalMappingObjectT((ExternalMappingObjectT)value, diagnostics, context);
            }
            case 28: {
                return this.validateFileReferenceT((FileReferenceT)value, diagnostics, context);
            }
            case 29: {
                return this.validateFormalType((FormalType)value, diagnostics, context);
            }
            case 30: {
                return this.validateFormattedTextT((FormattedTextT)value, diagnostics, context);
            }
            case 31: {
                return this.validateFormulaType((FormulaType)value, diagnostics, context);
            }
            case 32: {
                return this.validateGenericComponentT((GenericComponentT)value, diagnostics, context);
            }
            case 33: {
                return this.validateGenericDataT((GenericDataT)value, diagnostics, context);
            }
            case 34: {
                return this.validateIconT((IconT)value, diagnostics, context);
            }
            case 35: {
                return this.validateImageType((ImageType)value, diagnostics, context);
            }
            case 36: {
                return this.validateIntervalT((IntervalT)value, diagnostics, context);
            }
            case 37: {
                return this.validateItemBaseT((ItemBaseT)value, diagnostics, context);
            }
            case 38: {
                return this.validateItemRefT((ItemRefT)value, diagnostics, context);
            }
            case 39: {
                return this.validateItemT((ItemT)value, diagnostics, context);
            }
            case 40: {
                return this.validateItemType((ItemType)value, diagnostics, context);
            }
            case 41: {
                return this.validateLocalsComplexType((LocalsComplexType)value, diagnostics, context);
            }
            case 42: {
                return this.validateMappingItemT((MappingItemT)value, diagnostics, context);
            }
            case 43: {
                return this.validateMappingObjectT((MappingObjectT)value, diagnostics, context);
            }
            case 44: {
                return this.validateMethodBaseT((MethodBaseT)value, diagnostics, context);
            }
            case 45: {
                return this.validateMethodInterfaceT((MethodInterfaceT)value, diagnostics, context);
            }
            case 46: {
                return this.validateMethodSignaturesType((MethodSignaturesType)value, diagnostics, context);
            }
            case 47: {
                return this.validateMethodSignaturesType1((MethodSignaturesType1)value, diagnostics, context);
            }
            case 48: {
                return this.validateMethodSignatureT((MethodSignatureT)value, diagnostics, context);
            }
            case 49: {
                return this.validateMethodT((MethodT)value, diagnostics, context);
            }
            case 50: {
                return this.validateModeGroupType((ModeGroupType)value, diagnostics, context);
            }
            case 51: {
                return this.validateNotesT((NotesT)value, diagnostics, context);
            }
            case 52: {
                return this.validateNoteType((NoteType)value, diagnostics, context);
            }
            case 53: {
                return this.validateOptionT((OptionT)value, diagnostics, context);
            }
            case 54: {
                return this.validateParameterMappingsType((ParameterMappingsType)value, diagnostics, context);
            }
            case 55: {
                return this.validatePointT((PointT)value, diagnostics, context);
            }
            case 56: {
                return this.validatePrimitiveAttributesBaseT((PrimitiveAttributesBaseT)value, diagnostics, context);
            }
            case 57: {
                return this.validateRealizedElementT((RealizedElementT)value, diagnostics, context);
            }
            case 58: {
                return this.validateRealizedMethodBaseT((RealizedMethodBaseT)value, diagnostics, context);
            }
            case 59: {
                return this.validateRealizedMethodT((RealizedMethodT)value, diagnostics, context);
            }
            case 60: {
                return this.validateRealizedReturnT((RealizedReturnT)value, diagnostics, context);
            }
            case 61: {
                return this.validateRealizedRunnableT((RealizedRunnableT)value, diagnostics, context);
            }
            case 62: {
                return this.validateRecordAttributesT((RecordAttributesT)value, diagnostics, context);
            }
            case 63: {
                return this.validateRequirementsManagementT((RequirementsManagementT)value, diagnostics, context);
            }
            case 64: {
                return this.validateReturnT((ReturnT)value, diagnostics, context);
            }
            case 65: {
                return this.validateRunnableT((RunnableT)value, diagnostics, context);
            }
            case 66: {
                return this.validateScalarAttributesT((ScalarAttributesT)value, diagnostics, context);
            }
            case 67: {
                return this.validateScalarTypeType((ScalarTypeType)value, diagnostics, context);
            }
            case 68: {
                return this.validateSignalType((SignalType)value, diagnostics, context);
            }
            case 69: {
                return this.validateSizeT((SizeT)value, diagnostics, context);
            }
            case 70: {
                return this.validateSourceObjectType((SourceObjectType)value, diagnostics, context);
            }
            case 71: {
                return this.validateTimeStampsType((TimeStampsType)value, diagnostics, context);
            }
            case 72: {
                return this.validateTimeStampT((TimeStampT)value, diagnostics, context);
            }
            case 73: {
                return this.validateVariableMappingsExternalType((VariableMappingsExternalType)value, diagnostics, context);
            }
            case 74: {
                return this.validateVariableMappingsInternalType((VariableMappingsInternalType)value, diagnostics, context);
            }
            case 75: {
                return this.validateViewType((ViewType)value, diagnostics, context);
            }
            case 76: {
                return this.validateBasicModelTypeType((BasicModelTypeType)((Object)value), diagnostics, context);
            }
            case 77: {
                return this.validateComponentTypeType((ComponentTypeType)((Object)value), diagnostics, context);
            }
            case 78: {
                return this.validateInternalAccessType((InternalAccessType)((Object)value), diagnostics, context);
            }
            case 79: {
                return this.validateKindType((KindType)((Object)value), diagnostics, context);
            }
            case 80: {
                return this.validateModelTypeType((ModelTypeType)((Object)value), diagnostics, context);
            }
            case 81: {
                return this.validateScopeType((ScopeType)((Object)value), diagnostics, context);
            }
            case 82: {
                return this.validateSpecificationTypeType((SpecificationTypeType)((Object)value), diagnostics, context);
            }
            case 83: {
                return this.validateTypeType((TypeType)((Object)value), diagnostics, context);
            }
            case 84: {
                return this.validateTypeType1((TypeType1)((Object)value), diagnostics, context);
            }
            case 85: {
                return this.validateBasicModelTypeTypeObject((BasicModelTypeType)((Object)value), diagnostics, context);
            }
            case 86: {
                return this.validateComponentTypeTypeObject((ComponentTypeType)((Object)value), diagnostics, context);
            }
            case 87: {
                return this.validateIndexType((BigInteger)value, diagnostics, context);
            }
            case 88: {
                return this.validateInternalAccessTypeObject((InternalAccessType)((Object)value), diagnostics, context);
            }
            case 89: {
                return this.validateKindTypeObject((KindType)((Object)value), diagnostics, context);
            }
            case 90: {
                return this.validateModelTypeTypeObject((ModelTypeType)((Object)value), diagnostics, context);
            }
            case 91: {
                return this.validateNumberOrFraction(value, diagnostics, context);
            }
            case 92: {
                return this.validateNumberOrFractionMember1((String)value, diagnostics, context);
            }
            case 93: {
                return this.validateNzqr(value, diagnostics, context);
            }
            case 94: {
                return this.validateNzqrMember2((String)value, diagnostics, context);
            }
            case 95: {
                return this.validateOID((String)value, diagnostics, context);
            }
            case 96: {
                return this.validateScopeTypeObject((ScopeType)((Object)value), diagnostics, context);
            }
            case 97: {
                return this.validateSpecificationTypeTypeObject((SpecificationTypeType)((Object)value), diagnostics, context);
            }
            case 98: {
                return this.validateTypeTypeObject((TypeType)((Object)value), diagnostics, context);
            }
            case 99: {
                return this.validateTypeTypeObject1((TypeType1)((Object)value), diagnostics, context);
            }
        }
        return true;
    }

    public boolean validateAccessModesT(AccessModesT accessModesT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(accessModesT, diagnostics, context);
    }

    public boolean validateArgumentsComplexType(ArgumentsComplexType argumentsComplexType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(argumentsComplexType, diagnostics, context);
    }

    public boolean validateArgumentsType(ArgumentsType argumentsType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(argumentsType, diagnostics, context);
    }

    public boolean validateAsap2ItemType(Asap2ItemType asap2ItemType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(asap2ItemType, diagnostics, context);
    }

    public boolean validateAtomicSoftwareComponentT(AtomicSoftwareComponentT atomicSoftwareComponentT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(atomicSoftwareComponentT, diagnostics, context);
    }

    public boolean validateAttributesBaseT(AttributesBaseT attributesBaseT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(attributesBaseT, diagnostics, context);
    }

    public boolean validateColorT(ColorT colorT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(colorT, diagnostics, context);
    }

    public boolean validateComplexAttributesT(ComplexAttributesT complexAttributesT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(complexAttributesT, diagnostics, context);
    }

    public boolean validateComplexTypeType(ComplexTypeType complexTypeType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(complexTypeType, diagnostics, context);
    }

    public boolean validateComponentMainType(ComponentMainType componentMainType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(componentMainType, diagnostics, context);
    }

    public boolean validateComponentT(ComponentT componentT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(componentT, diagnostics, context);
    }

    public boolean validateConfigurationManagementT(ConfigurationManagementT configurationManagementT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(configurationManagementT, diagnostics, context);
    }

    public boolean validateContainerType(ContainerType containerType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(containerType, diagnostics, context);
    }

    public boolean validateCustomerSpecificAttributesType(CustomerSpecificAttributesType customerSpecificAttributesType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(customerSpecificAttributesType, diagnostics, context);
    }

    public boolean validateDataInterfaceT(DataInterfaceT dataInterfaceT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(dataInterfaceT, diagnostics, context);
    }

    public boolean validateDimensionalAttributesT(DimensionalAttributesT dimensionalAttributesT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(dimensionalAttributesT, diagnostics, context);
    }

    public boolean validateDimensionalTypeType(DimensionalTypeType dimensionalTypeType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(dimensionalTypeType, diagnostics, context);
    }

    public boolean validateDocumentRoot(DocumentRoot documentRoot, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(documentRoot, diagnostics, context);
    }

    public boolean validateElementAttributesT(ElementAttributesT elementAttributesT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(elementAttributesT, diagnostics, context);
    }

    public boolean validateElementMappingType(ElementMappingType elementMappingType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(elementMappingType, diagnostics, context);
    }

    public boolean validateElementMappingType1(ElementMappingType1 elementMappingType1, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(elementMappingType1, diagnostics, context);
    }

    public boolean validateElementMappingType2(ElementMappingType2 elementMappingType2, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(elementMappingType2, diagnostics, context);
    }

    public boolean validateElementsType(ElementsType elementsType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(elementsType, diagnostics, context);
    }

    public boolean validateElementT(ElementT elementT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(elementT, diagnostics, context);
    }

    public boolean validateEnumerationAttributesT(EnumerationAttributesT enumerationAttributesT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(enumerationAttributesT, diagnostics, context);
    }

    public boolean validateEnumerationType(EnumerationType enumerationType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(enumerationType, diagnostics, context);
    }

    public boolean validateEnumeratorT(EnumeratorT enumeratorT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(enumeratorT, diagnostics, context);
    }

    public boolean validateExternalMappingObjectT(ExternalMappingObjectT externalMappingObjectT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(externalMappingObjectT, diagnostics, context);
    }

    public boolean validateFileReferenceT(FileReferenceT fileReferenceT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(fileReferenceT, diagnostics, context);
    }

    public boolean validateFormalType(FormalType formalType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(formalType, diagnostics, context);
    }

    public boolean validateFormattedTextT(FormattedTextT formattedTextT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(formattedTextT, diagnostics, context);
    }

    public boolean validateFormulaType(FormulaType formulaType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(formulaType, diagnostics, context);
    }

    public boolean validateGenericComponentT(GenericComponentT genericComponentT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(genericComponentT, diagnostics, context);
    }

    public boolean validateGenericDataT(GenericDataT genericDataT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(genericDataT, diagnostics, context);
    }

    public boolean validateIconT(IconT iconT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(iconT, diagnostics, context);
    }

    public boolean validateImageType(ImageType imageType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(imageType, diagnostics, context);
    }

    public boolean validateIntervalT(IntervalT intervalT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(intervalT, diagnostics, context);
    }

    public boolean validateItemBaseT(ItemBaseT itemBaseT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(itemBaseT, diagnostics, context);
    }

    public boolean validateItemRefT(ItemRefT itemRefT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(itemRefT, diagnostics, context);
    }

    public boolean validateItemT(ItemT itemT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(itemT, diagnostics, context);
    }

    public boolean validateItemType(ItemType itemType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(itemType, diagnostics, context);
    }

    public boolean validateLocalsComplexType(LocalsComplexType localsComplexType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(localsComplexType, diagnostics, context);
    }

    public boolean validateMappingItemT(MappingItemT mappingItemT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(mappingItemT, diagnostics, context);
    }

    public boolean validateMappingObjectT(MappingObjectT mappingObjectT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(mappingObjectT, diagnostics, context);
    }

    public boolean validateMethodBaseT(MethodBaseT methodBaseT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(methodBaseT, diagnostics, context);
    }

    public boolean validateMethodInterfaceT(MethodInterfaceT methodInterfaceT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(methodInterfaceT, diagnostics, context);
    }

    public boolean validateMethodSignaturesType(MethodSignaturesType methodSignaturesType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(methodSignaturesType, diagnostics, context);
    }

    public boolean validateMethodSignaturesType1(MethodSignaturesType1 methodSignaturesType1, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(methodSignaturesType1, diagnostics, context);
    }

    public boolean validateMethodSignatureT(MethodSignatureT methodSignatureT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(methodSignatureT, diagnostics, context);
    }

    public boolean validateMethodT(MethodT methodT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(methodT, diagnostics, context);
    }

    public boolean validateModeGroupType(ModeGroupType modeGroupType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(modeGroupType, diagnostics, context);
    }

    public boolean validateNotesT(NotesT notesT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(notesT, diagnostics, context);
    }

    public boolean validateNoteType(NoteType noteType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(noteType, diagnostics, context);
    }

    public boolean validateOptionT(OptionT optionT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(optionT, diagnostics, context);
    }

    public boolean validateParameterMappingsType(ParameterMappingsType parameterMappingsType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(parameterMappingsType, diagnostics, context);
    }

    public boolean validatePointT(PointT pointT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(pointT, diagnostics, context);
    }

    public boolean validatePrimitiveAttributesBaseT(PrimitiveAttributesBaseT primitiveAttributesBaseT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(primitiveAttributesBaseT, diagnostics, context);
    }

    public boolean validateRealizedElementT(RealizedElementT realizedElementT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(realizedElementT, diagnostics, context);
    }

    public boolean validateRealizedMethodBaseT(RealizedMethodBaseT realizedMethodBaseT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(realizedMethodBaseT, diagnostics, context);
    }

    public boolean validateRealizedMethodT(RealizedMethodT realizedMethodT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(realizedMethodT, diagnostics, context);
    }

    public boolean validateRealizedReturnT(RealizedReturnT realizedReturnT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(realizedReturnT, diagnostics, context);
    }

    public boolean validateRealizedRunnableT(RealizedRunnableT realizedRunnableT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(realizedRunnableT, diagnostics, context);
    }

    public boolean validateRecordAttributesT(RecordAttributesT recordAttributesT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(recordAttributesT, diagnostics, context);
    }

    public boolean validateRequirementsManagementT(RequirementsManagementT requirementsManagementT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(requirementsManagementT, diagnostics, context);
    }

    public boolean validateReturnT(ReturnT returnT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(returnT, diagnostics, context);
    }

    public boolean validateRunnableT(RunnableT runnableT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(runnableT, diagnostics, context);
    }

    public boolean validateScalarAttributesT(ScalarAttributesT scalarAttributesT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(scalarAttributesT, diagnostics, context);
    }

    public boolean validateScalarTypeType(ScalarTypeType scalarTypeType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(scalarTypeType, diagnostics, context);
    }

    public boolean validateSignalType(SignalType signalType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(signalType, diagnostics, context);
    }

    public boolean validateSizeT(SizeT sizeT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(sizeT, diagnostics, context);
    }

    public boolean validateSourceObjectType(SourceObjectType sourceObjectType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(sourceObjectType, diagnostics, context);
    }

    public boolean validateTimeStampsType(TimeStampsType timeStampsType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(timeStampsType, diagnostics, context);
    }

    public boolean validateTimeStampT(TimeStampT timeStampT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(timeStampT, diagnostics, context);
    }

    public boolean validateVariableMappingsExternalType(VariableMappingsExternalType variableMappingsExternalType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(variableMappingsExternalType, diagnostics, context);
    }

    public boolean validateVariableMappingsInternalType(VariableMappingsInternalType variableMappingsInternalType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(variableMappingsInternalType, diagnostics, context);
    }

    public boolean validateViewType(ViewType viewType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(viewType, diagnostics, context);
    }

    public boolean validateBasicModelTypeType(BasicModelTypeType basicModelTypeType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateComponentTypeType(ComponentTypeType componentTypeType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateInternalAccessType(InternalAccessType internalAccessType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateKindType(KindType kindType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateModelTypeType(ModelTypeType modelTypeType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateScopeType(ScopeType scopeType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateSpecificationTypeType(SpecificationTypeType specificationTypeType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateTypeType(TypeType typeType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateTypeType1(TypeType1 typeType1, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateBasicModelTypeTypeObject(BasicModelTypeType basicModelTypeTypeObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateComponentTypeTypeObject(ComponentTypeType componentTypeTypeObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateIndexType(BigInteger indexType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateIndexType_Min(indexType, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validateIndexType_Max(indexType, diagnostics, context);
        }
        return result;
    }

    public boolean validateIndexType_Min(BigInteger indexType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        boolean bl = result = indexType.compareTo(INDEX_TYPE__MIN__VALUE) >= 0;
        if (!result && diagnostics != null) {
            this.reportMinViolation(ComponentMainPackage.Literals.INDEX_TYPE, indexType, INDEX_TYPE__MIN__VALUE, true, diagnostics, context);
        }
        return result;
    }

    public boolean validateIndexType_Max(BigInteger indexType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        boolean bl = result = indexType.compareTo(INDEX_TYPE__MAX__VALUE) <= 0;
        if (!result && diagnostics != null) {
            this.reportMaxViolation(ComponentMainPackage.Literals.INDEX_TYPE, indexType, INDEX_TYPE__MAX__VALUE, true, diagnostics, context);
        }
        return result;
    }

    public boolean validateInternalAccessTypeObject(InternalAccessType internalAccessTypeObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateKindTypeObject(KindType kindTypeObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateModelTypeTypeObject(ModelTypeType modelTypeTypeObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateNumberOrFraction(Object numberOrFraction, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateNumberOrFraction_MemberTypes(numberOrFraction, diagnostics, context);
        return result;
    }

    public boolean validateNumberOrFraction_MemberTypes(Object numberOrFraction, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (diagnostics != null) {
            BasicDiagnostic tempDiagnostics = new BasicDiagnostic();
            if (XMLTypePackage.Literals.DOUBLE.isInstance(numberOrFraction) && this.xmlTypeValidator.validateDouble(((Double)numberOrFraction).doubleValue(), (DiagnosticChain)tempDiagnostics, context)) {
                return true;
            }
            if (ComponentMainPackage.Literals.NUMBER_OR_FRACTION_MEMBER1.isInstance(numberOrFraction) && this.validateNumberOrFractionMember1((String)numberOrFraction, (DiagnosticChain)tempDiagnostics, context)) {
                return true;
            }
            for (Diagnostic diagnostic : tempDiagnostics.getChildren()) {
                diagnostics.add(diagnostic);
            }
        } else {
            if (XMLTypePackage.Literals.DOUBLE.isInstance(numberOrFraction) && this.xmlTypeValidator.validateDouble(((Double)numberOrFraction).doubleValue(), null, context)) {
                return true;
            }
            if (ComponentMainPackage.Literals.NUMBER_OR_FRACTION_MEMBER1.isInstance(numberOrFraction) && this.validateNumberOrFractionMember1((String)numberOrFraction, null, context)) {
                return true;
            }
        }
        return false;
    }

    public boolean validateNumberOrFractionMember1(String numberOrFractionMember1, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateNumberOrFractionMember1_Pattern(numberOrFractionMember1, diagnostics, context);
        return result;
    }

    public boolean validateNumberOrFractionMember1_Pattern(String numberOrFractionMember1, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validatePattern(ComponentMainPackage.Literals.NUMBER_OR_FRACTION_MEMBER1, numberOrFractionMember1, NUMBER_OR_FRACTION_MEMBER1__PATTERN__VALUES, diagnostics, context);
    }

    public boolean validateNzqr(Object nzqr, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateNzqr_MemberTypes(nzqr, diagnostics, context);
        return result;
    }

    public boolean validateNzqr_MemberTypes(Object nzqr, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (diagnostics != null) {
            BasicDiagnostic tempDiagnostics = new BasicDiagnostic();
            if (XMLTypePackage.Literals.DOUBLE.isInstance(nzqr) && this.xmlTypeValidator.validateDouble(((Double)nzqr).doubleValue(), (DiagnosticChain)tempDiagnostics, context)) {
                return true;
            }
            if (XMLTypePackage.Literals.INT.isInstance(nzqr) && this.xmlTypeValidator.validateInt(((Integer)nzqr).intValue(), (DiagnosticChain)tempDiagnostics, context)) {
                return true;
            }
            if (ComponentMainPackage.Literals.NZQR_MEMBER2.isInstance(nzqr) && this.validateNzqrMember2((String)nzqr, (DiagnosticChain)tempDiagnostics, context)) {
                return true;
            }
            for (Diagnostic diagnostic : tempDiagnostics.getChildren()) {
                diagnostics.add(diagnostic);
            }
        } else {
            if (XMLTypePackage.Literals.DOUBLE.isInstance(nzqr) && this.xmlTypeValidator.validateDouble(((Double)nzqr).doubleValue(), null, context)) {
                return true;
            }
            if (XMLTypePackage.Literals.INT.isInstance(nzqr) && this.xmlTypeValidator.validateInt(((Integer)nzqr).intValue(), null, context)) {
                return true;
            }
            if (ComponentMainPackage.Literals.NZQR_MEMBER2.isInstance(nzqr) && this.validateNzqrMember2((String)nzqr, null, context)) {
                return true;
            }
        }
        return false;
    }

    public boolean validateNzqrMember2(String nzqrMember2, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateNzqrMember2_Pattern(nzqrMember2, diagnostics, context);
        return result;
    }

    public boolean validateNzqrMember2_Pattern(String nzqrMember2, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validatePattern(ComponentMainPackage.Literals.NZQR_MEMBER2, nzqrMember2, NZQR_MEMBER2__PATTERN__VALUES, diagnostics, context);
    }

    public boolean validateOID(String oid, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateOID_Pattern(oid, diagnostics, context);
        return result;
    }

    public boolean validateOID_Pattern(String oid, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validatePattern(ComponentMainPackage.Literals.OID, oid, OID__PATTERN__VALUES, diagnostics, context);
    }

    public boolean validateScopeTypeObject(ScopeType scopeTypeObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateSpecificationTypeTypeObject(SpecificationTypeType specificationTypeTypeObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateTypeTypeObject(TypeType typeTypeObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateTypeTypeObject1(TypeType1 typeTypeObject1, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public ResourceLocator getResourceLocator() {
        return super.getResourceLocator();
    }
}

