/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package com.etas.amd620.core.ComponentMain;

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
import com.etas.amd620.core.ComponentMain.impl.ComponentMainFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ComponentMainFactory
extends EFactory {
    public static final ComponentMainFactory eINSTANCE = ComponentMainFactoryImpl.init();

    public AccessModesT createAccessModesT();

    public ArgumentsComplexType createArgumentsComplexType();

    public ArgumentsType createArgumentsType();

    public Asap2ItemType createAsap2ItemType();

    public AtomicSoftwareComponentT createAtomicSoftwareComponentT();

    public AttributesBaseT createAttributesBaseT();

    public ColorT createColorT();

    public ComplexAttributesT createComplexAttributesT();

    public ComplexTypeType createComplexTypeType();

    public ComponentMainType createComponentMainType();

    public ComponentT createComponentT();

    public ConfigurationManagementT createConfigurationManagementT();

    public ContainerType createContainerType();

    public CustomerSpecificAttributesType createCustomerSpecificAttributesType();

    public DataInterfaceT createDataInterfaceT();

    public DimensionalAttributesT createDimensionalAttributesT();

    public DimensionalTypeType createDimensionalTypeType();

    public DocumentRoot createDocumentRoot();

    public ElementAttributesT createElementAttributesT();

    public ElementMappingType createElementMappingType();

    public ElementMappingType1 createElementMappingType1();

    public ElementMappingType2 createElementMappingType2();

    public ElementsType createElementsType();

    public ElementT createElementT();

    public EnumerationAttributesT createEnumerationAttributesT();

    public EnumerationType createEnumerationType();

    public EnumeratorT createEnumeratorT();

    public ExternalMappingObjectT createExternalMappingObjectT();

    public FileReferenceT createFileReferenceT();

    public FormalType createFormalType();

    public FormattedTextT createFormattedTextT();

    public FormulaType createFormulaType();

    public GenericComponentT createGenericComponentT();

    public GenericDataT createGenericDataT();

    public IconT createIconT();

    public ImageType createImageType();

    public IntervalT createIntervalT();

    public ItemBaseT createItemBaseT();

    public ItemRefT createItemRefT();

    public ItemT createItemT();

    public ItemType createItemType();

    public LocalsComplexType createLocalsComplexType();

    public MappingItemT createMappingItemT();

    public MappingObjectT createMappingObjectT();

    public MethodBaseT createMethodBaseT();

    public MethodInterfaceT createMethodInterfaceT();

    public MethodSignaturesType createMethodSignaturesType();

    public MethodSignaturesType1 createMethodSignaturesType1();

    public MethodSignatureT createMethodSignatureT();

    public MethodT createMethodT();

    public ModeGroupType createModeGroupType();

    public NotesT createNotesT();

    public NoteType createNoteType();

    public OptionT createOptionT();

    public ParameterMappingsType createParameterMappingsType();

    public PointT createPointT();

    public PrimitiveAttributesBaseT createPrimitiveAttributesBaseT();

    public RealizedElementT createRealizedElementT();

    public RealizedMethodBaseT createRealizedMethodBaseT();

    public RealizedMethodT createRealizedMethodT();

    public RealizedReturnT createRealizedReturnT();

    public RealizedRunnableT createRealizedRunnableT();

    public RecordAttributesT createRecordAttributesT();

    public RequirementsManagementT createRequirementsManagementT();

    public ReturnT createReturnT();

    public RunnableT createRunnableT();

    public ScalarAttributesT createScalarAttributesT();

    public ScalarTypeType createScalarTypeType();

    public SignalType createSignalType();

    public SizeT createSizeT();

    public SourceObjectType createSourceObjectType();

    public TimeStampsType createTimeStampsType();

    public TimeStampT createTimeStampT();

    public VariableMappingsExternalType createVariableMappingsExternalType();

    public VariableMappingsInternalType createVariableMappingsInternalType();

    public ViewType createViewType();

    public ComponentMainPackage getComponentMainPackage();
}

