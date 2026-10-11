/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 *  org.eclipse.emf.ecore.util.Diagnostician
 *  org.eclipse.emf.ecore.xml.type.XMLTypeFactory
 *  org.eclipse.emf.ecore.xml.type.XMLTypePackage$Literals
 */
package com.etas.amd620.core.ComponentMain.impl;

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
import com.etas.amd620.core.ComponentMain.ComponentMainFactory;
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
import com.etas.amd620.core.ComponentMain.impl.AccessModesTImpl;
import com.etas.amd620.core.ComponentMain.impl.ArgumentsComplexTypeImpl;
import com.etas.amd620.core.ComponentMain.impl.ArgumentsTypeImpl;
import com.etas.amd620.core.ComponentMain.impl.Asap2ItemTypeImpl;
import com.etas.amd620.core.ComponentMain.impl.AtomicSoftwareComponentTImpl;
import com.etas.amd620.core.ComponentMain.impl.AttributesBaseTImpl;
import com.etas.amd620.core.ComponentMain.impl.ColorTImpl;
import com.etas.amd620.core.ComponentMain.impl.ComplexAttributesTImpl;
import com.etas.amd620.core.ComponentMain.impl.ComplexTypeTypeImpl;
import com.etas.amd620.core.ComponentMain.impl.ComponentMainTypeImpl;
import com.etas.amd620.core.ComponentMain.impl.ComponentTImpl;
import com.etas.amd620.core.ComponentMain.impl.ConfigurationManagementTImpl;
import com.etas.amd620.core.ComponentMain.impl.ContainerTypeImpl;
import com.etas.amd620.core.ComponentMain.impl.CustomerSpecificAttributesTypeImpl;
import com.etas.amd620.core.ComponentMain.impl.DataInterfaceTImpl;
import com.etas.amd620.core.ComponentMain.impl.DimensionalAttributesTImpl;
import com.etas.amd620.core.ComponentMain.impl.DimensionalTypeTypeImpl;
import com.etas.amd620.core.ComponentMain.impl.DocumentRootImpl;
import com.etas.amd620.core.ComponentMain.impl.ElementAttributesTImpl;
import com.etas.amd620.core.ComponentMain.impl.ElementMappingType1Impl;
import com.etas.amd620.core.ComponentMain.impl.ElementMappingType2Impl;
import com.etas.amd620.core.ComponentMain.impl.ElementMappingTypeImpl;
import com.etas.amd620.core.ComponentMain.impl.ElementTImpl;
import com.etas.amd620.core.ComponentMain.impl.ElementsTypeImpl;
import com.etas.amd620.core.ComponentMain.impl.EnumerationAttributesTImpl;
import com.etas.amd620.core.ComponentMain.impl.EnumerationTypeImpl;
import com.etas.amd620.core.ComponentMain.impl.EnumeratorTImpl;
import com.etas.amd620.core.ComponentMain.impl.ExternalMappingObjectTImpl;
import com.etas.amd620.core.ComponentMain.impl.FileReferenceTImpl;
import com.etas.amd620.core.ComponentMain.impl.FormalTypeImpl;
import com.etas.amd620.core.ComponentMain.impl.FormattedTextTImpl;
import com.etas.amd620.core.ComponentMain.impl.FormulaTypeImpl;
import com.etas.amd620.core.ComponentMain.impl.GenericComponentTImpl;
import com.etas.amd620.core.ComponentMain.impl.GenericDataTImpl;
import com.etas.amd620.core.ComponentMain.impl.IconTImpl;
import com.etas.amd620.core.ComponentMain.impl.ImageTypeImpl;
import com.etas.amd620.core.ComponentMain.impl.IntervalTImpl;
import com.etas.amd620.core.ComponentMain.impl.ItemBaseTImpl;
import com.etas.amd620.core.ComponentMain.impl.ItemRefTImpl;
import com.etas.amd620.core.ComponentMain.impl.ItemTImpl;
import com.etas.amd620.core.ComponentMain.impl.ItemTypeImpl;
import com.etas.amd620.core.ComponentMain.impl.LocalsComplexTypeImpl;
import com.etas.amd620.core.ComponentMain.impl.MappingItemTImpl;
import com.etas.amd620.core.ComponentMain.impl.MappingObjectTImpl;
import com.etas.amd620.core.ComponentMain.impl.MethodBaseTImpl;
import com.etas.amd620.core.ComponentMain.impl.MethodInterfaceTImpl;
import com.etas.amd620.core.ComponentMain.impl.MethodSignatureTImpl;
import com.etas.amd620.core.ComponentMain.impl.MethodSignaturesType1Impl;
import com.etas.amd620.core.ComponentMain.impl.MethodSignaturesTypeImpl;
import com.etas.amd620.core.ComponentMain.impl.MethodTImpl;
import com.etas.amd620.core.ComponentMain.impl.ModeGroupTypeImpl;
import com.etas.amd620.core.ComponentMain.impl.NoteTypeImpl;
import com.etas.amd620.core.ComponentMain.impl.NotesTImpl;
import com.etas.amd620.core.ComponentMain.impl.OptionTImpl;
import com.etas.amd620.core.ComponentMain.impl.ParameterMappingsTypeImpl;
import com.etas.amd620.core.ComponentMain.impl.PointTImpl;
import com.etas.amd620.core.ComponentMain.impl.PrimitiveAttributesBaseTImpl;
import com.etas.amd620.core.ComponentMain.impl.RealizedElementTImpl;
import com.etas.amd620.core.ComponentMain.impl.RealizedMethodBaseTImpl;
import com.etas.amd620.core.ComponentMain.impl.RealizedMethodTImpl;
import com.etas.amd620.core.ComponentMain.impl.RealizedReturnTImpl;
import com.etas.amd620.core.ComponentMain.impl.RealizedRunnableTImpl;
import com.etas.amd620.core.ComponentMain.impl.RecordAttributesTImpl;
import com.etas.amd620.core.ComponentMain.impl.RequirementsManagementTImpl;
import com.etas.amd620.core.ComponentMain.impl.ReturnTImpl;
import com.etas.amd620.core.ComponentMain.impl.RunnableTImpl;
import com.etas.amd620.core.ComponentMain.impl.ScalarAttributesTImpl;
import com.etas.amd620.core.ComponentMain.impl.ScalarTypeTypeImpl;
import com.etas.amd620.core.ComponentMain.impl.SignalTypeImpl;
import com.etas.amd620.core.ComponentMain.impl.SizeTImpl;
import com.etas.amd620.core.ComponentMain.impl.SourceObjectTypeImpl;
import com.etas.amd620.core.ComponentMain.impl.TimeStampTImpl;
import com.etas.amd620.core.ComponentMain.impl.TimeStampsTypeImpl;
import com.etas.amd620.core.ComponentMain.impl.VariableMappingsExternalTypeImpl;
import com.etas.amd620.core.ComponentMain.impl.VariableMappingsInternalTypeImpl;
import com.etas.amd620.core.ComponentMain.impl.ViewTypeImpl;
import java.math.BigInteger;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;
import org.eclipse.emf.ecore.util.Diagnostician;
import org.eclipse.emf.ecore.xml.type.XMLTypeFactory;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;

public class ComponentMainFactoryImpl
extends EFactoryImpl
implements ComponentMainFactory {
    public static ComponentMainFactory init() {
        try {
            ComponentMainFactory theComponentMainFactory = (ComponentMainFactory)EPackage.Registry.INSTANCE.getEFactory("http://www.etas.com/ascet/amd/620/component_main");
            if (theComponentMainFactory != null) {
                return theComponentMainFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ComponentMainFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createAccessModesT();
            }
            case 1: {
                return this.createArgumentsComplexType();
            }
            case 2: {
                return this.createArgumentsType();
            }
            case 3: {
                return this.createAsap2ItemType();
            }
            case 4: {
                return this.createAtomicSoftwareComponentT();
            }
            case 5: {
                return this.createAttributesBaseT();
            }
            case 6: {
                return this.createColorT();
            }
            case 7: {
                return this.createComplexAttributesT();
            }
            case 8: {
                return this.createComplexTypeType();
            }
            case 9: {
                return this.createComponentMainType();
            }
            case 10: {
                return this.createComponentT();
            }
            case 11: {
                return this.createConfigurationManagementT();
            }
            case 12: {
                return this.createContainerType();
            }
            case 13: {
                return this.createCustomerSpecificAttributesType();
            }
            case 14: {
                return this.createDataInterfaceT();
            }
            case 15: {
                return this.createDimensionalAttributesT();
            }
            case 16: {
                return this.createDimensionalTypeType();
            }
            case 17: {
                return this.createDocumentRoot();
            }
            case 18: {
                return this.createElementAttributesT();
            }
            case 19: {
                return this.createElementMappingType();
            }
            case 20: {
                return this.createElementMappingType1();
            }
            case 21: {
                return this.createElementMappingType2();
            }
            case 22: {
                return this.createElementsType();
            }
            case 23: {
                return this.createElementT();
            }
            case 24: {
                return this.createEnumerationAttributesT();
            }
            case 25: {
                return this.createEnumerationType();
            }
            case 26: {
                return this.createEnumeratorT();
            }
            case 27: {
                return this.createExternalMappingObjectT();
            }
            case 28: {
                return this.createFileReferenceT();
            }
            case 29: {
                return this.createFormalType();
            }
            case 30: {
                return this.createFormattedTextT();
            }
            case 31: {
                return this.createFormulaType();
            }
            case 32: {
                return this.createGenericComponentT();
            }
            case 33: {
                return this.createGenericDataT();
            }
            case 34: {
                return this.createIconT();
            }
            case 35: {
                return this.createImageType();
            }
            case 36: {
                return this.createIntervalT();
            }
            case 37: {
                return this.createItemBaseT();
            }
            case 38: {
                return this.createItemRefT();
            }
            case 39: {
                return this.createItemT();
            }
            case 40: {
                return this.createItemType();
            }
            case 41: {
                return this.createLocalsComplexType();
            }
            case 42: {
                return this.createMappingItemT();
            }
            case 43: {
                return this.createMappingObjectT();
            }
            case 44: {
                return this.createMethodBaseT();
            }
            case 45: {
                return this.createMethodInterfaceT();
            }
            case 46: {
                return this.createMethodSignaturesType();
            }
            case 47: {
                return this.createMethodSignaturesType1();
            }
            case 48: {
                return this.createMethodSignatureT();
            }
            case 49: {
                return this.createMethodT();
            }
            case 50: {
                return this.createModeGroupType();
            }
            case 51: {
                return this.createNotesT();
            }
            case 52: {
                return this.createNoteType();
            }
            case 53: {
                return this.createOptionT();
            }
            case 54: {
                return this.createParameterMappingsType();
            }
            case 55: {
                return this.createPointT();
            }
            case 56: {
                return this.createPrimitiveAttributesBaseT();
            }
            case 57: {
                return this.createRealizedElementT();
            }
            case 58: {
                return this.createRealizedMethodBaseT();
            }
            case 59: {
                return this.createRealizedMethodT();
            }
            case 60: {
                return this.createRealizedReturnT();
            }
            case 61: {
                return this.createRealizedRunnableT();
            }
            case 62: {
                return this.createRecordAttributesT();
            }
            case 63: {
                return this.createRequirementsManagementT();
            }
            case 64: {
                return this.createReturnT();
            }
            case 65: {
                return this.createRunnableT();
            }
            case 66: {
                return this.createScalarAttributesT();
            }
            case 67: {
                return this.createScalarTypeType();
            }
            case 68: {
                return this.createSignalType();
            }
            case 69: {
                return this.createSizeT();
            }
            case 70: {
                return this.createSourceObjectType();
            }
            case 71: {
                return this.createTimeStampsType();
            }
            case 72: {
                return this.createTimeStampT();
            }
            case 73: {
                return this.createVariableMappingsExternalType();
            }
            case 74: {
                return this.createVariableMappingsInternalType();
            }
            case 75: {
                return this.createViewType();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 76: {
                return this.createBasicModelTypeTypeFromString(eDataType, initialValue);
            }
            case 77: {
                return this.createComponentTypeTypeFromString(eDataType, initialValue);
            }
            case 78: {
                return this.createInternalAccessTypeFromString(eDataType, initialValue);
            }
            case 79: {
                return this.createKindTypeFromString(eDataType, initialValue);
            }
            case 80: {
                return this.createModelTypeTypeFromString(eDataType, initialValue);
            }
            case 81: {
                return this.createScopeTypeFromString(eDataType, initialValue);
            }
            case 82: {
                return this.createSpecificationTypeTypeFromString(eDataType, initialValue);
            }
            case 83: {
                return this.createTypeTypeFromString(eDataType, initialValue);
            }
            case 84: {
                return this.createTypeType1FromString(eDataType, initialValue);
            }
            case 85: {
                return this.createBasicModelTypeTypeObjectFromString(eDataType, initialValue);
            }
            case 86: {
                return this.createComponentTypeTypeObjectFromString(eDataType, initialValue);
            }
            case 87: {
                return this.createIndexTypeFromString(eDataType, initialValue);
            }
            case 88: {
                return this.createInternalAccessTypeObjectFromString(eDataType, initialValue);
            }
            case 89: {
                return this.createKindTypeObjectFromString(eDataType, initialValue);
            }
            case 90: {
                return this.createModelTypeTypeObjectFromString(eDataType, initialValue);
            }
            case 91: {
                return this.createNumberOrFractionFromString(eDataType, initialValue);
            }
            case 92: {
                return this.createNumberOrFractionMember1FromString(eDataType, initialValue);
            }
            case 93: {
                return this.createNzqrFromString(eDataType, initialValue);
            }
            case 94: {
                return this.createNzqrMember2FromString(eDataType, initialValue);
            }
            case 95: {
                return this.createOIDFromString(eDataType, initialValue);
            }
            case 96: {
                return this.createScopeTypeObjectFromString(eDataType, initialValue);
            }
            case 97: {
                return this.createSpecificationTypeTypeObjectFromString(eDataType, initialValue);
            }
            case 98: {
                return this.createTypeTypeObjectFromString(eDataType, initialValue);
            }
            case 99: {
                return this.createTypeTypeObject1FromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 76: {
                return this.convertBasicModelTypeTypeToString(eDataType, instanceValue);
            }
            case 77: {
                return this.convertComponentTypeTypeToString(eDataType, instanceValue);
            }
            case 78: {
                return this.convertInternalAccessTypeToString(eDataType, instanceValue);
            }
            case 79: {
                return this.convertKindTypeToString(eDataType, instanceValue);
            }
            case 80: {
                return this.convertModelTypeTypeToString(eDataType, instanceValue);
            }
            case 81: {
                return this.convertScopeTypeToString(eDataType, instanceValue);
            }
            case 82: {
                return this.convertSpecificationTypeTypeToString(eDataType, instanceValue);
            }
            case 83: {
                return this.convertTypeTypeToString(eDataType, instanceValue);
            }
            case 84: {
                return this.convertTypeType1ToString(eDataType, instanceValue);
            }
            case 85: {
                return this.convertBasicModelTypeTypeObjectToString(eDataType, instanceValue);
            }
            case 86: {
                return this.convertComponentTypeTypeObjectToString(eDataType, instanceValue);
            }
            case 87: {
                return this.convertIndexTypeToString(eDataType, instanceValue);
            }
            case 88: {
                return this.convertInternalAccessTypeObjectToString(eDataType, instanceValue);
            }
            case 89: {
                return this.convertKindTypeObjectToString(eDataType, instanceValue);
            }
            case 90: {
                return this.convertModelTypeTypeObjectToString(eDataType, instanceValue);
            }
            case 91: {
                return this.convertNumberOrFractionToString(eDataType, instanceValue);
            }
            case 92: {
                return this.convertNumberOrFractionMember1ToString(eDataType, instanceValue);
            }
            case 93: {
                return this.convertNzqrToString(eDataType, instanceValue);
            }
            case 94: {
                return this.convertNzqrMember2ToString(eDataType, instanceValue);
            }
            case 95: {
                return this.convertOIDToString(eDataType, instanceValue);
            }
            case 96: {
                return this.convertScopeTypeObjectToString(eDataType, instanceValue);
            }
            case 97: {
                return this.convertSpecificationTypeTypeObjectToString(eDataType, instanceValue);
            }
            case 98: {
                return this.convertTypeTypeObjectToString(eDataType, instanceValue);
            }
            case 99: {
                return this.convertTypeTypeObject1ToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    @Override
    public AccessModesT createAccessModesT() {
        AccessModesTImpl accessModesT = new AccessModesTImpl();
        return accessModesT;
    }

    @Override
    public ArgumentsComplexType createArgumentsComplexType() {
        ArgumentsComplexTypeImpl argumentsComplexType = new ArgumentsComplexTypeImpl();
        return argumentsComplexType;
    }

    @Override
    public ArgumentsType createArgumentsType() {
        ArgumentsTypeImpl argumentsType = new ArgumentsTypeImpl();
        return argumentsType;
    }

    @Override
    public Asap2ItemType createAsap2ItemType() {
        Asap2ItemTypeImpl asap2ItemType = new Asap2ItemTypeImpl();
        return asap2ItemType;
    }

    @Override
    public AtomicSoftwareComponentT createAtomicSoftwareComponentT() {
        AtomicSoftwareComponentTImpl atomicSoftwareComponentT = new AtomicSoftwareComponentTImpl();
        return atomicSoftwareComponentT;
    }

    @Override
    public AttributesBaseT createAttributesBaseT() {
        AttributesBaseTImpl attributesBaseT = new AttributesBaseTImpl();
        return attributesBaseT;
    }

    @Override
    public ColorT createColorT() {
        ColorTImpl colorT = new ColorTImpl();
        return colorT;
    }

    @Override
    public ComplexAttributesT createComplexAttributesT() {
        ComplexAttributesTImpl complexAttributesT = new ComplexAttributesTImpl();
        return complexAttributesT;
    }

    @Override
    public ComplexTypeType createComplexTypeType() {
        ComplexTypeTypeImpl complexTypeType = new ComplexTypeTypeImpl();
        return complexTypeType;
    }

    @Override
    public ComponentMainType createComponentMainType() {
        ComponentMainTypeImpl componentMainType = new ComponentMainTypeImpl();
        return componentMainType;
    }

    @Override
    public ComponentT createComponentT() {
        ComponentTImpl componentT = new ComponentTImpl();
        return componentT;
    }

    @Override
    public ConfigurationManagementT createConfigurationManagementT() {
        ConfigurationManagementTImpl configurationManagementT = new ConfigurationManagementTImpl();
        return configurationManagementT;
    }

    @Override
    public ContainerType createContainerType() {
        ContainerTypeImpl containerType = new ContainerTypeImpl();
        return containerType;
    }

    @Override
    public CustomerSpecificAttributesType createCustomerSpecificAttributesType() {
        CustomerSpecificAttributesTypeImpl customerSpecificAttributesType = new CustomerSpecificAttributesTypeImpl();
        return customerSpecificAttributesType;
    }

    @Override
    public DataInterfaceT createDataInterfaceT() {
        DataInterfaceTImpl dataInterfaceT = new DataInterfaceTImpl();
        return dataInterfaceT;
    }

    @Override
    public DimensionalAttributesT createDimensionalAttributesT() {
        DimensionalAttributesTImpl dimensionalAttributesT = new DimensionalAttributesTImpl();
        return dimensionalAttributesT;
    }

    @Override
    public DimensionalTypeType createDimensionalTypeType() {
        DimensionalTypeTypeImpl dimensionalTypeType = new DimensionalTypeTypeImpl();
        return dimensionalTypeType;
    }

    @Override
    public DocumentRoot createDocumentRoot() {
        DocumentRootImpl documentRoot = new DocumentRootImpl();
        return documentRoot;
    }

    @Override
    public ElementAttributesT createElementAttributesT() {
        ElementAttributesTImpl elementAttributesT = new ElementAttributesTImpl();
        return elementAttributesT;
    }

    @Override
    public ElementMappingType createElementMappingType() {
        ElementMappingTypeImpl elementMappingType = new ElementMappingTypeImpl();
        return elementMappingType;
    }

    @Override
    public ElementMappingType1 createElementMappingType1() {
        ElementMappingType1Impl elementMappingType1 = new ElementMappingType1Impl();
        return elementMappingType1;
    }

    @Override
    public ElementMappingType2 createElementMappingType2() {
        ElementMappingType2Impl elementMappingType2 = new ElementMappingType2Impl();
        return elementMappingType2;
    }

    @Override
    public ElementsType createElementsType() {
        ElementsTypeImpl elementsType = new ElementsTypeImpl();
        return elementsType;
    }

    @Override
    public ElementT createElementT() {
        ElementTImpl elementT = new ElementTImpl();
        return elementT;
    }

    @Override
    public EnumerationAttributesT createEnumerationAttributesT() {
        EnumerationAttributesTImpl enumerationAttributesT = new EnumerationAttributesTImpl();
        return enumerationAttributesT;
    }

    @Override
    public EnumerationType createEnumerationType() {
        EnumerationTypeImpl enumerationType = new EnumerationTypeImpl();
        return enumerationType;
    }

    @Override
    public EnumeratorT createEnumeratorT() {
        EnumeratorTImpl enumeratorT = new EnumeratorTImpl();
        return enumeratorT;
    }

    @Override
    public ExternalMappingObjectT createExternalMappingObjectT() {
        ExternalMappingObjectTImpl externalMappingObjectT = new ExternalMappingObjectTImpl();
        return externalMappingObjectT;
    }

    @Override
    public FileReferenceT createFileReferenceT() {
        FileReferenceTImpl fileReferenceT = new FileReferenceTImpl();
        return fileReferenceT;
    }

    @Override
    public FormalType createFormalType() {
        FormalTypeImpl formalType = new FormalTypeImpl();
        return formalType;
    }

    @Override
    public FormattedTextT createFormattedTextT() {
        FormattedTextTImpl formattedTextT = new FormattedTextTImpl();
        return formattedTextT;
    }

    @Override
    public FormulaType createFormulaType() {
        FormulaTypeImpl formulaType = new FormulaTypeImpl();
        return formulaType;
    }

    @Override
    public GenericComponentT createGenericComponentT() {
        GenericComponentTImpl genericComponentT = new GenericComponentTImpl();
        return genericComponentT;
    }

    @Override
    public GenericDataT createGenericDataT() {
        GenericDataTImpl genericDataT = new GenericDataTImpl();
        return genericDataT;
    }

    @Override
    public IconT createIconT() {
        IconTImpl iconT = new IconTImpl();
        return iconT;
    }

    @Override
    public ImageType createImageType() {
        ImageTypeImpl imageType = new ImageTypeImpl();
        return imageType;
    }

    @Override
    public IntervalT createIntervalT() {
        IntervalTImpl intervalT = new IntervalTImpl();
        return intervalT;
    }

    @Override
    public ItemBaseT createItemBaseT() {
        ItemBaseTImpl itemBaseT = new ItemBaseTImpl();
        return itemBaseT;
    }

    @Override
    public ItemRefT createItemRefT() {
        ItemRefTImpl itemRefT = new ItemRefTImpl();
        return itemRefT;
    }

    @Override
    public ItemT createItemT() {
        ItemTImpl itemT = new ItemTImpl();
        return itemT;
    }

    @Override
    public ItemType createItemType() {
        ItemTypeImpl itemType = new ItemTypeImpl();
        return itemType;
    }

    @Override
    public LocalsComplexType createLocalsComplexType() {
        LocalsComplexTypeImpl localsComplexType = new LocalsComplexTypeImpl();
        return localsComplexType;
    }

    @Override
    public MappingItemT createMappingItemT() {
        MappingItemTImpl mappingItemT = new MappingItemTImpl();
        return mappingItemT;
    }

    @Override
    public MappingObjectT createMappingObjectT() {
        MappingObjectTImpl mappingObjectT = new MappingObjectTImpl();
        return mappingObjectT;
    }

    @Override
    public MethodBaseT createMethodBaseT() {
        MethodBaseTImpl methodBaseT = new MethodBaseTImpl();
        return methodBaseT;
    }

    @Override
    public MethodInterfaceT createMethodInterfaceT() {
        MethodInterfaceTImpl methodInterfaceT = new MethodInterfaceTImpl();
        return methodInterfaceT;
    }

    @Override
    public MethodSignaturesType createMethodSignaturesType() {
        MethodSignaturesTypeImpl methodSignaturesType = new MethodSignaturesTypeImpl();
        return methodSignaturesType;
    }

    @Override
    public MethodSignaturesType1 createMethodSignaturesType1() {
        MethodSignaturesType1Impl methodSignaturesType1 = new MethodSignaturesType1Impl();
        return methodSignaturesType1;
    }

    @Override
    public MethodSignatureT createMethodSignatureT() {
        MethodSignatureTImpl methodSignatureT = new MethodSignatureTImpl();
        return methodSignatureT;
    }

    @Override
    public MethodT createMethodT() {
        MethodTImpl methodT = new MethodTImpl();
        return methodT;
    }

    @Override
    public ModeGroupType createModeGroupType() {
        ModeGroupTypeImpl modeGroupType = new ModeGroupTypeImpl();
        return modeGroupType;
    }

    @Override
    public NotesT createNotesT() {
        NotesTImpl notesT = new NotesTImpl();
        return notesT;
    }

    @Override
    public NoteType createNoteType() {
        NoteTypeImpl noteType = new NoteTypeImpl();
        return noteType;
    }

    @Override
    public OptionT createOptionT() {
        OptionTImpl optionT = new OptionTImpl();
        return optionT;
    }

    @Override
    public ParameterMappingsType createParameterMappingsType() {
        ParameterMappingsTypeImpl parameterMappingsType = new ParameterMappingsTypeImpl();
        return parameterMappingsType;
    }

    @Override
    public PointT createPointT() {
        PointTImpl pointT = new PointTImpl();
        return pointT;
    }

    @Override
    public PrimitiveAttributesBaseT createPrimitiveAttributesBaseT() {
        PrimitiveAttributesBaseTImpl primitiveAttributesBaseT = new PrimitiveAttributesBaseTImpl();
        return primitiveAttributesBaseT;
    }

    @Override
    public RealizedElementT createRealizedElementT() {
        RealizedElementTImpl realizedElementT = new RealizedElementTImpl();
        return realizedElementT;
    }

    @Override
    public RealizedMethodBaseT createRealizedMethodBaseT() {
        RealizedMethodBaseTImpl realizedMethodBaseT = new RealizedMethodBaseTImpl();
        return realizedMethodBaseT;
    }

    @Override
    public RealizedMethodT createRealizedMethodT() {
        RealizedMethodTImpl realizedMethodT = new RealizedMethodTImpl();
        return realizedMethodT;
    }

    @Override
    public RealizedReturnT createRealizedReturnT() {
        RealizedReturnTImpl realizedReturnT = new RealizedReturnTImpl();
        return realizedReturnT;
    }

    @Override
    public RealizedRunnableT createRealizedRunnableT() {
        RealizedRunnableTImpl realizedRunnableT = new RealizedRunnableTImpl();
        return realizedRunnableT;
    }

    @Override
    public RecordAttributesT createRecordAttributesT() {
        RecordAttributesTImpl recordAttributesT = new RecordAttributesTImpl();
        return recordAttributesT;
    }

    @Override
    public RequirementsManagementT createRequirementsManagementT() {
        RequirementsManagementTImpl requirementsManagementT = new RequirementsManagementTImpl();
        return requirementsManagementT;
    }

    @Override
    public ReturnT createReturnT() {
        ReturnTImpl returnT = new ReturnTImpl();
        return returnT;
    }

    @Override
    public RunnableT createRunnableT() {
        RunnableTImpl runnableT = new RunnableTImpl();
        return runnableT;
    }

    @Override
    public ScalarAttributesT createScalarAttributesT() {
        ScalarAttributesTImpl scalarAttributesT = new ScalarAttributesTImpl();
        return scalarAttributesT;
    }

    @Override
    public ScalarTypeType createScalarTypeType() {
        ScalarTypeTypeImpl scalarTypeType = new ScalarTypeTypeImpl();
        return scalarTypeType;
    }

    @Override
    public SignalType createSignalType() {
        SignalTypeImpl signalType = new SignalTypeImpl();
        return signalType;
    }

    @Override
    public SizeT createSizeT() {
        SizeTImpl sizeT = new SizeTImpl();
        return sizeT;
    }

    @Override
    public SourceObjectType createSourceObjectType() {
        SourceObjectTypeImpl sourceObjectType = new SourceObjectTypeImpl();
        return sourceObjectType;
    }

    @Override
    public TimeStampsType createTimeStampsType() {
        TimeStampsTypeImpl timeStampsType = new TimeStampsTypeImpl();
        return timeStampsType;
    }

    @Override
    public TimeStampT createTimeStampT() {
        TimeStampTImpl timeStampT = new TimeStampTImpl();
        return timeStampT;
    }

    @Override
    public VariableMappingsExternalType createVariableMappingsExternalType() {
        VariableMappingsExternalTypeImpl variableMappingsExternalType = new VariableMappingsExternalTypeImpl();
        return variableMappingsExternalType;
    }

    @Override
    public VariableMappingsInternalType createVariableMappingsInternalType() {
        VariableMappingsInternalTypeImpl variableMappingsInternalType = new VariableMappingsInternalTypeImpl();
        return variableMappingsInternalType;
    }

    @Override
    public ViewType createViewType() {
        ViewTypeImpl viewType = new ViewTypeImpl();
        return viewType;
    }

    public BasicModelTypeType createBasicModelTypeTypeFromString(EDataType eDataType, String initialValue) {
        BasicModelTypeType result = BasicModelTypeType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertBasicModelTypeTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ComponentTypeType createComponentTypeTypeFromString(EDataType eDataType, String initialValue) {
        ComponentTypeType result = ComponentTypeType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertComponentTypeTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public InternalAccessType createInternalAccessTypeFromString(EDataType eDataType, String initialValue) {
        InternalAccessType result = InternalAccessType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertInternalAccessTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public KindType createKindTypeFromString(EDataType eDataType, String initialValue) {
        KindType result = KindType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertKindTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ModelTypeType createModelTypeTypeFromString(EDataType eDataType, String initialValue) {
        ModelTypeType result = ModelTypeType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertModelTypeTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ScopeType createScopeTypeFromString(EDataType eDataType, String initialValue) {
        ScopeType result = ScopeType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertScopeTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public SpecificationTypeType createSpecificationTypeTypeFromString(EDataType eDataType, String initialValue) {
        SpecificationTypeType result = SpecificationTypeType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertSpecificationTypeTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public TypeType createTypeTypeFromString(EDataType eDataType, String initialValue) {
        TypeType result = TypeType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertTypeTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public TypeType1 createTypeType1FromString(EDataType eDataType, String initialValue) {
        TypeType1 result = TypeType1.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertTypeType1ToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public BasicModelTypeType createBasicModelTypeTypeObjectFromString(EDataType eDataType, String initialValue) {
        return this.createBasicModelTypeTypeFromString((EDataType)ComponentMainPackage.Literals.BASIC_MODEL_TYPE_TYPE, initialValue);
    }

    public String convertBasicModelTypeTypeObjectToString(EDataType eDataType, Object instanceValue) {
        return this.convertBasicModelTypeTypeToString((EDataType)ComponentMainPackage.Literals.BASIC_MODEL_TYPE_TYPE, instanceValue);
    }

    public ComponentTypeType createComponentTypeTypeObjectFromString(EDataType eDataType, String initialValue) {
        return this.createComponentTypeTypeFromString((EDataType)ComponentMainPackage.Literals.COMPONENT_TYPE_TYPE, initialValue);
    }

    public String convertComponentTypeTypeObjectToString(EDataType eDataType, Object instanceValue) {
        return this.convertComponentTypeTypeToString((EDataType)ComponentMainPackage.Literals.COMPONENT_TYPE_TYPE, instanceValue);
    }

    public BigInteger createIndexTypeFromString(EDataType eDataType, String initialValue) {
        return (BigInteger)XMLTypeFactory.eINSTANCE.createFromString(XMLTypePackage.Literals.INTEGER, initialValue);
    }

    public String convertIndexTypeToString(EDataType eDataType, Object instanceValue) {
        return XMLTypeFactory.eINSTANCE.convertToString(XMLTypePackage.Literals.INTEGER, instanceValue);
    }

    public InternalAccessType createInternalAccessTypeObjectFromString(EDataType eDataType, String initialValue) {
        return this.createInternalAccessTypeFromString((EDataType)ComponentMainPackage.Literals.INTERNAL_ACCESS_TYPE, initialValue);
    }

    public String convertInternalAccessTypeObjectToString(EDataType eDataType, Object instanceValue) {
        return this.convertInternalAccessTypeToString((EDataType)ComponentMainPackage.Literals.INTERNAL_ACCESS_TYPE, instanceValue);
    }

    public KindType createKindTypeObjectFromString(EDataType eDataType, String initialValue) {
        return this.createKindTypeFromString((EDataType)ComponentMainPackage.Literals.KIND_TYPE, initialValue);
    }

    public String convertKindTypeObjectToString(EDataType eDataType, Object instanceValue) {
        return this.convertKindTypeToString((EDataType)ComponentMainPackage.Literals.KIND_TYPE, instanceValue);
    }

    public ModelTypeType createModelTypeTypeObjectFromString(EDataType eDataType, String initialValue) {
        return this.createModelTypeTypeFromString((EDataType)ComponentMainPackage.Literals.MODEL_TYPE_TYPE, initialValue);
    }

    public String convertModelTypeTypeObjectToString(EDataType eDataType, Object instanceValue) {
        return this.convertModelTypeTypeToString((EDataType)ComponentMainPackage.Literals.MODEL_TYPE_TYPE, instanceValue);
    }

    public Object createNumberOrFractionFromString(EDataType eDataType, String initialValue) {
        if (initialValue == null) {
            return null;
        }
        Object result = null;
        RuntimeException exception = null;
        try {
            result = XMLTypeFactory.eINSTANCE.createFromString(XMLTypePackage.Literals.DOUBLE, initialValue);
            if (result != null && Diagnostician.INSTANCE.validate(eDataType, result, null, null)) {
                return result;
            }
        }
        catch (RuntimeException e) {
            exception = e;
        }
        try {
            result = this.createNumberOrFractionMember1FromString(ComponentMainPackage.Literals.NUMBER_OR_FRACTION_MEMBER1, initialValue);
            if (result != null && Diagnostician.INSTANCE.validate(eDataType, result, null, null)) {
                return result;
            }
        }
        catch (RuntimeException e) {
            exception = e;
        }
        if (result != null || exception == null) {
            return result;
        }
        throw exception;
    }

    public String convertNumberOrFractionToString(EDataType eDataType, Object instanceValue) {
        String value;
        if (instanceValue == null) {
            return null;
        }
        if (XMLTypePackage.Literals.DOUBLE.isInstance(instanceValue)) {
            try {
                value = XMLTypeFactory.eINSTANCE.convertToString(XMLTypePackage.Literals.DOUBLE, instanceValue);
                if (value != null) {
                    return value;
                }
            }
            catch (Exception exception) {}
        }
        if (ComponentMainPackage.Literals.NUMBER_OR_FRACTION_MEMBER1.isInstance(instanceValue)) {
            try {
                value = this.convertNumberOrFractionMember1ToString(ComponentMainPackage.Literals.NUMBER_OR_FRACTION_MEMBER1, instanceValue);
                if (value != null) {
                    return value;
                }
            }
            catch (Exception exception) {}
        }
        throw new IllegalArgumentException("Invalid value: '" + instanceValue + "' for datatype :" + eDataType.getName());
    }

    public String createNumberOrFractionMember1FromString(EDataType eDataType, String initialValue) {
        return (String)XMLTypeFactory.eINSTANCE.createFromString(XMLTypePackage.Literals.STRING, initialValue);
    }

    public String convertNumberOrFractionMember1ToString(EDataType eDataType, Object instanceValue) {
        return XMLTypeFactory.eINSTANCE.convertToString(XMLTypePackage.Literals.STRING, instanceValue);
    }

    public Object createNzqrFromString(EDataType eDataType, String initialValue) {
        if (initialValue == null) {
            return null;
        }
        Object result = null;
        RuntimeException exception = null;
        try {
            result = XMLTypeFactory.eINSTANCE.createFromString(XMLTypePackage.Literals.DOUBLE, initialValue);
            if (result != null && Diagnostician.INSTANCE.validate(eDataType, result, null, null)) {
                return result;
            }
        }
        catch (RuntimeException e) {
            exception = e;
        }
        try {
            result = XMLTypeFactory.eINSTANCE.createFromString(XMLTypePackage.Literals.INT, initialValue);
            if (result != null && Diagnostician.INSTANCE.validate(eDataType, result, null, null)) {
                return result;
            }
        }
        catch (RuntimeException e) {
            exception = e;
        }
        try {
            result = this.createNzqrMember2FromString(ComponentMainPackage.Literals.NZQR_MEMBER2, initialValue);
            if (result != null && Diagnostician.INSTANCE.validate(eDataType, result, null, null)) {
                return result;
            }
        }
        catch (RuntimeException e) {
            exception = e;
        }
        if (result != null || exception == null) {
            return result;
        }
        throw exception;
    }

    public String convertNzqrToString(EDataType eDataType, Object instanceValue) {
        String value;
        if (instanceValue == null) {
            return null;
        }
        if (XMLTypePackage.Literals.DOUBLE.isInstance(instanceValue)) {
            try {
                value = XMLTypeFactory.eINSTANCE.convertToString(XMLTypePackage.Literals.DOUBLE, instanceValue);
                if (value != null) {
                    return value;
                }
            }
            catch (Exception exception) {}
        }
        if (XMLTypePackage.Literals.INT.isInstance(instanceValue)) {
            try {
                value = XMLTypeFactory.eINSTANCE.convertToString(XMLTypePackage.Literals.INT, instanceValue);
                if (value != null) {
                    return value;
                }
            }
            catch (Exception exception) {}
        }
        if (ComponentMainPackage.Literals.NZQR_MEMBER2.isInstance(instanceValue)) {
            try {
                value = this.convertNzqrMember2ToString(ComponentMainPackage.Literals.NZQR_MEMBER2, instanceValue);
                if (value != null) {
                    return value;
                }
            }
            catch (Exception exception) {}
        }
        throw new IllegalArgumentException("Invalid value: '" + instanceValue + "' for datatype :" + eDataType.getName());
    }

    public String createNzqrMember2FromString(EDataType eDataType, String initialValue) {
        return (String)XMLTypeFactory.eINSTANCE.createFromString(XMLTypePackage.Literals.STRING, initialValue);
    }

    public String convertNzqrMember2ToString(EDataType eDataType, Object instanceValue) {
        return XMLTypeFactory.eINSTANCE.convertToString(XMLTypePackage.Literals.STRING, instanceValue);
    }

    public String createOIDFromString(EDataType eDataType, String initialValue) {
        return (String)XMLTypeFactory.eINSTANCE.createFromString(XMLTypePackage.Literals.STRING, initialValue);
    }

    public String convertOIDToString(EDataType eDataType, Object instanceValue) {
        return XMLTypeFactory.eINSTANCE.convertToString(XMLTypePackage.Literals.STRING, instanceValue);
    }

    public ScopeType createScopeTypeObjectFromString(EDataType eDataType, String initialValue) {
        return this.createScopeTypeFromString((EDataType)ComponentMainPackage.Literals.SCOPE_TYPE, initialValue);
    }

    public String convertScopeTypeObjectToString(EDataType eDataType, Object instanceValue) {
        return this.convertScopeTypeToString((EDataType)ComponentMainPackage.Literals.SCOPE_TYPE, instanceValue);
    }

    public SpecificationTypeType createSpecificationTypeTypeObjectFromString(EDataType eDataType, String initialValue) {
        return this.createSpecificationTypeTypeFromString((EDataType)ComponentMainPackage.Literals.SPECIFICATION_TYPE_TYPE, initialValue);
    }

    public String convertSpecificationTypeTypeObjectToString(EDataType eDataType, Object instanceValue) {
        return this.convertSpecificationTypeTypeToString((EDataType)ComponentMainPackage.Literals.SPECIFICATION_TYPE_TYPE, instanceValue);
    }

    public TypeType createTypeTypeObjectFromString(EDataType eDataType, String initialValue) {
        return this.createTypeTypeFromString((EDataType)ComponentMainPackage.Literals.TYPE_TYPE, initialValue);
    }

    public String convertTypeTypeObjectToString(EDataType eDataType, Object instanceValue) {
        return this.convertTypeTypeToString((EDataType)ComponentMainPackage.Literals.TYPE_TYPE, instanceValue);
    }

    public TypeType1 createTypeTypeObject1FromString(EDataType eDataType, String initialValue) {
        return this.createTypeType1FromString((EDataType)ComponentMainPackage.Literals.TYPE_TYPE1, initialValue);
    }

    public String convertTypeTypeObject1ToString(EDataType eDataType, Object instanceValue) {
        return this.convertTypeType1ToString((EDataType)ComponentMainPackage.Literals.TYPE_TYPE1, instanceValue);
    }

    @Override
    public ComponentMainPackage getComponentMainPackage() {
        return (ComponentMainPackage)this.getEPackage();
    }

    @Deprecated
    public static ComponentMainPackage getPackage() {
        return ComponentMainPackage.eINSTANCE;
    }
}

