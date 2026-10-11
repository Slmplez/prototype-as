/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentMain.util;

import com.etas.amd620.core.ComponentMain.AccessModesT;
import com.etas.amd620.core.ComponentMain.ArgumentsComplexType;
import com.etas.amd620.core.ComponentMain.ArgumentsType;
import com.etas.amd620.core.ComponentMain.Asap2ItemType;
import com.etas.amd620.core.ComponentMain.AtomicSoftwareComponentT;
import com.etas.amd620.core.ComponentMain.AttributesBaseT;
import com.etas.amd620.core.ComponentMain.ColorT;
import com.etas.amd620.core.ComponentMain.ComplexAttributesT;
import com.etas.amd620.core.ComponentMain.ComplexTypeType;
import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.ComponentMainType;
import com.etas.amd620.core.ComponentMain.ComponentT;
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
import com.etas.amd620.core.ComponentMain.IntervalT;
import com.etas.amd620.core.ComponentMain.ItemBaseT;
import com.etas.amd620.core.ComponentMain.ItemRefT;
import com.etas.amd620.core.ComponentMain.ItemT;
import com.etas.amd620.core.ComponentMain.ItemType;
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
import com.etas.amd620.core.ComponentMain.SignalType;
import com.etas.amd620.core.ComponentMain.SizeT;
import com.etas.amd620.core.ComponentMain.SourceObjectType;
import com.etas.amd620.core.ComponentMain.TimeStampT;
import com.etas.amd620.core.ComponentMain.TimeStampsType;
import com.etas.amd620.core.ComponentMain.VariableMappingsExternalType;
import com.etas.amd620.core.ComponentMain.VariableMappingsInternalType;
import com.etas.amd620.core.ComponentMain.ViewType;
import com.etas.amd620.core.ComponentMain.util.ComponentMainSwitch;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class ComponentMainAdapterFactory
extends AdapterFactoryImpl {
    protected static ComponentMainPackage modelPackage;
    protected ComponentMainSwitch<Adapter> modelSwitch = new ComponentMainSwitch<Adapter>(){

        @Override
        public Adapter caseAccessModesT(AccessModesT object) {
            return ComponentMainAdapterFactory.this.createAccessModesTAdapter();
        }

        @Override
        public Adapter caseArgumentsComplexType(ArgumentsComplexType object) {
            return ComponentMainAdapterFactory.this.createArgumentsComplexTypeAdapter();
        }

        @Override
        public Adapter caseArgumentsType(ArgumentsType object) {
            return ComponentMainAdapterFactory.this.createArgumentsTypeAdapter();
        }

        @Override
        public Adapter caseAsap2ItemType(Asap2ItemType object) {
            return ComponentMainAdapterFactory.this.createAsap2ItemTypeAdapter();
        }

        @Override
        public Adapter caseAtomicSoftwareComponentT(AtomicSoftwareComponentT object) {
            return ComponentMainAdapterFactory.this.createAtomicSoftwareComponentTAdapter();
        }

        @Override
        public Adapter caseAttributesBaseT(AttributesBaseT object) {
            return ComponentMainAdapterFactory.this.createAttributesBaseTAdapter();
        }

        @Override
        public Adapter caseColorT(ColorT object) {
            return ComponentMainAdapterFactory.this.createColorTAdapter();
        }

        @Override
        public Adapter caseComplexAttributesT(ComplexAttributesT object) {
            return ComponentMainAdapterFactory.this.createComplexAttributesTAdapter();
        }

        @Override
        public Adapter caseComplexTypeType(ComplexTypeType object) {
            return ComponentMainAdapterFactory.this.createComplexTypeTypeAdapter();
        }

        @Override
        public Adapter caseComponentMainType(ComponentMainType object) {
            return ComponentMainAdapterFactory.this.createComponentMainTypeAdapter();
        }

        @Override
        public Adapter caseComponentT(ComponentT object) {
            return ComponentMainAdapterFactory.this.createComponentTAdapter();
        }

        @Override
        public Adapter caseConfigurationManagementT(ConfigurationManagementT object) {
            return ComponentMainAdapterFactory.this.createConfigurationManagementTAdapter();
        }

        @Override
        public Adapter caseContainerType(ContainerType object) {
            return ComponentMainAdapterFactory.this.createContainerTypeAdapter();
        }

        @Override
        public Adapter caseCustomerSpecificAttributesType(CustomerSpecificAttributesType object) {
            return ComponentMainAdapterFactory.this.createCustomerSpecificAttributesTypeAdapter();
        }

        @Override
        public Adapter caseDataInterfaceT(DataInterfaceT object) {
            return ComponentMainAdapterFactory.this.createDataInterfaceTAdapter();
        }

        @Override
        public Adapter caseDimensionalAttributesT(DimensionalAttributesT object) {
            return ComponentMainAdapterFactory.this.createDimensionalAttributesTAdapter();
        }

        @Override
        public Adapter caseDimensionalTypeType(DimensionalTypeType object) {
            return ComponentMainAdapterFactory.this.createDimensionalTypeTypeAdapter();
        }

        @Override
        public Adapter caseDocumentRoot(DocumentRoot object) {
            return ComponentMainAdapterFactory.this.createDocumentRootAdapter();
        }

        @Override
        public Adapter caseElementAttributesT(ElementAttributesT object) {
            return ComponentMainAdapterFactory.this.createElementAttributesTAdapter();
        }

        @Override
        public Adapter caseElementMappingType(ElementMappingType object) {
            return ComponentMainAdapterFactory.this.createElementMappingTypeAdapter();
        }

        @Override
        public Adapter caseElementMappingType1(ElementMappingType1 object) {
            return ComponentMainAdapterFactory.this.createElementMappingType1Adapter();
        }

        @Override
        public Adapter caseElementMappingType2(ElementMappingType2 object) {
            return ComponentMainAdapterFactory.this.createElementMappingType2Adapter();
        }

        @Override
        public Adapter caseElementsType(ElementsType object) {
            return ComponentMainAdapterFactory.this.createElementsTypeAdapter();
        }

        @Override
        public Adapter caseElementT(ElementT object) {
            return ComponentMainAdapterFactory.this.createElementTAdapter();
        }

        @Override
        public Adapter caseEnumerationAttributesT(EnumerationAttributesT object) {
            return ComponentMainAdapterFactory.this.createEnumerationAttributesTAdapter();
        }

        @Override
        public Adapter caseEnumerationType(EnumerationType object) {
            return ComponentMainAdapterFactory.this.createEnumerationTypeAdapter();
        }

        @Override
        public Adapter caseEnumeratorT(EnumeratorT object) {
            return ComponentMainAdapterFactory.this.createEnumeratorTAdapter();
        }

        @Override
        public Adapter caseExternalMappingObjectT(ExternalMappingObjectT object) {
            return ComponentMainAdapterFactory.this.createExternalMappingObjectTAdapter();
        }

        @Override
        public Adapter caseFileReferenceT(FileReferenceT object) {
            return ComponentMainAdapterFactory.this.createFileReferenceTAdapter();
        }

        @Override
        public Adapter caseFormalType(FormalType object) {
            return ComponentMainAdapterFactory.this.createFormalTypeAdapter();
        }

        @Override
        public Adapter caseFormattedTextT(FormattedTextT object) {
            return ComponentMainAdapterFactory.this.createFormattedTextTAdapter();
        }

        @Override
        public Adapter caseFormulaType(FormulaType object) {
            return ComponentMainAdapterFactory.this.createFormulaTypeAdapter();
        }

        @Override
        public Adapter caseGenericComponentT(GenericComponentT object) {
            return ComponentMainAdapterFactory.this.createGenericComponentTAdapter();
        }

        @Override
        public Adapter caseGenericDataT(GenericDataT object) {
            return ComponentMainAdapterFactory.this.createGenericDataTAdapter();
        }

        @Override
        public Adapter caseIconT(IconT object) {
            return ComponentMainAdapterFactory.this.createIconTAdapter();
        }

        @Override
        public Adapter caseImageType(ImageType object) {
            return ComponentMainAdapterFactory.this.createImageTypeAdapter();
        }

        @Override
        public Adapter caseIntervalT(IntervalT object) {
            return ComponentMainAdapterFactory.this.createIntervalTAdapter();
        }

        @Override
        public Adapter caseItemBaseT(ItemBaseT object) {
            return ComponentMainAdapterFactory.this.createItemBaseTAdapter();
        }

        @Override
        public Adapter caseItemRefT(ItemRefT object) {
            return ComponentMainAdapterFactory.this.createItemRefTAdapter();
        }

        @Override
        public Adapter caseItemT(ItemT object) {
            return ComponentMainAdapterFactory.this.createItemTAdapter();
        }

        @Override
        public Adapter caseItemType(ItemType object) {
            return ComponentMainAdapterFactory.this.createItemTypeAdapter();
        }

        @Override
        public Adapter caseLocalsComplexType(LocalsComplexType object) {
            return ComponentMainAdapterFactory.this.createLocalsComplexTypeAdapter();
        }

        @Override
        public Adapter caseMappingItemT(MappingItemT object) {
            return ComponentMainAdapterFactory.this.createMappingItemTAdapter();
        }

        @Override
        public Adapter caseMappingObjectT(MappingObjectT object) {
            return ComponentMainAdapterFactory.this.createMappingObjectTAdapter();
        }

        @Override
        public Adapter caseMethodBaseT(MethodBaseT object) {
            return ComponentMainAdapterFactory.this.createMethodBaseTAdapter();
        }

        @Override
        public Adapter caseMethodInterfaceT(MethodInterfaceT object) {
            return ComponentMainAdapterFactory.this.createMethodInterfaceTAdapter();
        }

        @Override
        public Adapter caseMethodSignaturesType(MethodSignaturesType object) {
            return ComponentMainAdapterFactory.this.createMethodSignaturesTypeAdapter();
        }

        @Override
        public Adapter caseMethodSignaturesType1(MethodSignaturesType1 object) {
            return ComponentMainAdapterFactory.this.createMethodSignaturesType1Adapter();
        }

        @Override
        public Adapter caseMethodSignatureT(MethodSignatureT object) {
            return ComponentMainAdapterFactory.this.createMethodSignatureTAdapter();
        }

        @Override
        public Adapter caseMethodT(MethodT object) {
            return ComponentMainAdapterFactory.this.createMethodTAdapter();
        }

        @Override
        public Adapter caseModeGroupType(ModeGroupType object) {
            return ComponentMainAdapterFactory.this.createModeGroupTypeAdapter();
        }

        @Override
        public Adapter caseNotesT(NotesT object) {
            return ComponentMainAdapterFactory.this.createNotesTAdapter();
        }

        @Override
        public Adapter caseNoteType(NoteType object) {
            return ComponentMainAdapterFactory.this.createNoteTypeAdapter();
        }

        @Override
        public Adapter caseOptionT(OptionT object) {
            return ComponentMainAdapterFactory.this.createOptionTAdapter();
        }

        @Override
        public Adapter caseParameterMappingsType(ParameterMappingsType object) {
            return ComponentMainAdapterFactory.this.createParameterMappingsTypeAdapter();
        }

        @Override
        public Adapter casePointT(PointT object) {
            return ComponentMainAdapterFactory.this.createPointTAdapter();
        }

        @Override
        public Adapter casePrimitiveAttributesBaseT(PrimitiveAttributesBaseT object) {
            return ComponentMainAdapterFactory.this.createPrimitiveAttributesBaseTAdapter();
        }

        @Override
        public Adapter caseRealizedElementT(RealizedElementT object) {
            return ComponentMainAdapterFactory.this.createRealizedElementTAdapter();
        }

        @Override
        public Adapter caseRealizedMethodBaseT(RealizedMethodBaseT object) {
            return ComponentMainAdapterFactory.this.createRealizedMethodBaseTAdapter();
        }

        @Override
        public Adapter caseRealizedMethodT(RealizedMethodT object) {
            return ComponentMainAdapterFactory.this.createRealizedMethodTAdapter();
        }

        @Override
        public Adapter caseRealizedReturnT(RealizedReturnT object) {
            return ComponentMainAdapterFactory.this.createRealizedReturnTAdapter();
        }

        @Override
        public Adapter caseRealizedRunnableT(RealizedRunnableT object) {
            return ComponentMainAdapterFactory.this.createRealizedRunnableTAdapter();
        }

        @Override
        public Adapter caseRecordAttributesT(RecordAttributesT object) {
            return ComponentMainAdapterFactory.this.createRecordAttributesTAdapter();
        }

        @Override
        public Adapter caseRequirementsManagementT(RequirementsManagementT object) {
            return ComponentMainAdapterFactory.this.createRequirementsManagementTAdapter();
        }

        @Override
        public Adapter caseReturnT(ReturnT object) {
            return ComponentMainAdapterFactory.this.createReturnTAdapter();
        }

        @Override
        public Adapter caseRunnableT(RunnableT object) {
            return ComponentMainAdapterFactory.this.createRunnableTAdapter();
        }

        @Override
        public Adapter caseScalarAttributesT(ScalarAttributesT object) {
            return ComponentMainAdapterFactory.this.createScalarAttributesTAdapter();
        }

        @Override
        public Adapter caseScalarTypeType(ScalarTypeType object) {
            return ComponentMainAdapterFactory.this.createScalarTypeTypeAdapter();
        }

        @Override
        public Adapter caseSignalType(SignalType object) {
            return ComponentMainAdapterFactory.this.createSignalTypeAdapter();
        }

        @Override
        public Adapter caseSizeT(SizeT object) {
            return ComponentMainAdapterFactory.this.createSizeTAdapter();
        }

        @Override
        public Adapter caseSourceObjectType(SourceObjectType object) {
            return ComponentMainAdapterFactory.this.createSourceObjectTypeAdapter();
        }

        @Override
        public Adapter caseTimeStampsType(TimeStampsType object) {
            return ComponentMainAdapterFactory.this.createTimeStampsTypeAdapter();
        }

        @Override
        public Adapter caseTimeStampT(TimeStampT object) {
            return ComponentMainAdapterFactory.this.createTimeStampTAdapter();
        }

        @Override
        public Adapter caseVariableMappingsExternalType(VariableMappingsExternalType object) {
            return ComponentMainAdapterFactory.this.createVariableMappingsExternalTypeAdapter();
        }

        @Override
        public Adapter caseVariableMappingsInternalType(VariableMappingsInternalType object) {
            return ComponentMainAdapterFactory.this.createVariableMappingsInternalTypeAdapter();
        }

        @Override
        public Adapter caseViewType(ViewType object) {
            return ComponentMainAdapterFactory.this.createViewTypeAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return ComponentMainAdapterFactory.this.createEObjectAdapter();
        }
    };

    public ComponentMainAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = ComponentMainPackage.eINSTANCE;
        }
    }

    public boolean isFactoryForType(Object object) {
        if (object == modelPackage) {
            return true;
        }
        if (object instanceof EObject) {
            return ((EObject)object).eClass().getEPackage() == modelPackage;
        }
        return false;
    }

    public Adapter createAdapter(Notifier target) {
        return (Adapter)this.modelSwitch.doSwitch((EObject)target);
    }

    public Adapter createAccessModesTAdapter() {
        return null;
    }

    public Adapter createArgumentsComplexTypeAdapter() {
        return null;
    }

    public Adapter createArgumentsTypeAdapter() {
        return null;
    }

    public Adapter createAsap2ItemTypeAdapter() {
        return null;
    }

    public Adapter createAtomicSoftwareComponentTAdapter() {
        return null;
    }

    public Adapter createAttributesBaseTAdapter() {
        return null;
    }

    public Adapter createColorTAdapter() {
        return null;
    }

    public Adapter createComplexAttributesTAdapter() {
        return null;
    }

    public Adapter createComplexTypeTypeAdapter() {
        return null;
    }

    public Adapter createComponentMainTypeAdapter() {
        return null;
    }

    public Adapter createComponentTAdapter() {
        return null;
    }

    public Adapter createConfigurationManagementTAdapter() {
        return null;
    }

    public Adapter createContainerTypeAdapter() {
        return null;
    }

    public Adapter createCustomerSpecificAttributesTypeAdapter() {
        return null;
    }

    public Adapter createDataInterfaceTAdapter() {
        return null;
    }

    public Adapter createDimensionalAttributesTAdapter() {
        return null;
    }

    public Adapter createDimensionalTypeTypeAdapter() {
        return null;
    }

    public Adapter createDocumentRootAdapter() {
        return null;
    }

    public Adapter createElementAttributesTAdapter() {
        return null;
    }

    public Adapter createElementMappingTypeAdapter() {
        return null;
    }

    public Adapter createElementMappingType1Adapter() {
        return null;
    }

    public Adapter createElementMappingType2Adapter() {
        return null;
    }

    public Adapter createElementsTypeAdapter() {
        return null;
    }

    public Adapter createElementTAdapter() {
        return null;
    }

    public Adapter createEnumerationAttributesTAdapter() {
        return null;
    }

    public Adapter createEnumerationTypeAdapter() {
        return null;
    }

    public Adapter createEnumeratorTAdapter() {
        return null;
    }

    public Adapter createExternalMappingObjectTAdapter() {
        return null;
    }

    public Adapter createFileReferenceTAdapter() {
        return null;
    }

    public Adapter createFormalTypeAdapter() {
        return null;
    }

    public Adapter createFormattedTextTAdapter() {
        return null;
    }

    public Adapter createFormulaTypeAdapter() {
        return null;
    }

    public Adapter createGenericComponentTAdapter() {
        return null;
    }

    public Adapter createGenericDataTAdapter() {
        return null;
    }

    public Adapter createIconTAdapter() {
        return null;
    }

    public Adapter createImageTypeAdapter() {
        return null;
    }

    public Adapter createIntervalTAdapter() {
        return null;
    }

    public Adapter createItemBaseTAdapter() {
        return null;
    }

    public Adapter createItemRefTAdapter() {
        return null;
    }

    public Adapter createItemTAdapter() {
        return null;
    }

    public Adapter createItemTypeAdapter() {
        return null;
    }

    public Adapter createLocalsComplexTypeAdapter() {
        return null;
    }

    public Adapter createMappingItemTAdapter() {
        return null;
    }

    public Adapter createMappingObjectTAdapter() {
        return null;
    }

    public Adapter createMethodBaseTAdapter() {
        return null;
    }

    public Adapter createMethodInterfaceTAdapter() {
        return null;
    }

    public Adapter createMethodSignaturesTypeAdapter() {
        return null;
    }

    public Adapter createMethodSignaturesType1Adapter() {
        return null;
    }

    public Adapter createMethodSignatureTAdapter() {
        return null;
    }

    public Adapter createMethodTAdapter() {
        return null;
    }

    public Adapter createModeGroupTypeAdapter() {
        return null;
    }

    public Adapter createNotesTAdapter() {
        return null;
    }

    public Adapter createNoteTypeAdapter() {
        return null;
    }

    public Adapter createOptionTAdapter() {
        return null;
    }

    public Adapter createParameterMappingsTypeAdapter() {
        return null;
    }

    public Adapter createPointTAdapter() {
        return null;
    }

    public Adapter createPrimitiveAttributesBaseTAdapter() {
        return null;
    }

    public Adapter createRealizedElementTAdapter() {
        return null;
    }

    public Adapter createRealizedMethodBaseTAdapter() {
        return null;
    }

    public Adapter createRealizedMethodTAdapter() {
        return null;
    }

    public Adapter createRealizedReturnTAdapter() {
        return null;
    }

    public Adapter createRealizedRunnableTAdapter() {
        return null;
    }

    public Adapter createRecordAttributesTAdapter() {
        return null;
    }

    public Adapter createRequirementsManagementTAdapter() {
        return null;
    }

    public Adapter createReturnTAdapter() {
        return null;
    }

    public Adapter createRunnableTAdapter() {
        return null;
    }

    public Adapter createScalarAttributesTAdapter() {
        return null;
    }

    public Adapter createScalarTypeTypeAdapter() {
        return null;
    }

    public Adapter createSignalTypeAdapter() {
        return null;
    }

    public Adapter createSizeTAdapter() {
        return null;
    }

    public Adapter createSourceObjectTypeAdapter() {
        return null;
    }

    public Adapter createTimeStampsTypeAdapter() {
        return null;
    }

    public Adapter createTimeStampTAdapter() {
        return null;
    }

    public Adapter createVariableMappingsExternalTypeAdapter() {
        return null;
    }

    public Adapter createVariableMappingsInternalTypeAdapter() {
        return null;
    }

    public Adapter createViewTypeAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

