/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.ENamedElement
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EValidator
 *  org.eclipse.emf.ecore.EValidator$Descriptor
 *  org.eclipse.emf.ecore.EValidator$Registry
 *  org.eclipse.emf.ecore.impl.EPackageImpl
 *  org.eclipse.emf.ecore.xml.type.XMLTypePackage
 */
package com.etas.amd620.core.ComponentMain.impl;

import com.etas.amd620.core.ComponentData.ComponentDataPackage;
import com.etas.amd620.core.ComponentData.impl.ComponentDataPackageImpl;
import com.etas.amd620.core.ComponentImplementation.ComponentImplementationPackage;
import com.etas.amd620.core.ComponentImplementation.impl.ComponentImplementationPackageImpl;
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
import com.etas.amd620.core.ComponentMain.util.ComponentMainValidator;
import com.etas.amd620.core.ComponentProject.ComponentProjectPackage;
import com.etas.amd620.core.ComponentProject.impl.ComponentProjectPackageImpl;
import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.impl.ComponentSpecificationPackageImpl;
import com.etas.amd620.core.Formulas.FormulasPackage;
import com.etas.amd620.core.Formulas.impl.FormulasPackageImpl;
import com.etas.amd620.core.Implementationtypes.ImplementationtypesPackage;
import com.etas.amd620.core.Implementationtypes.impl.ImplementationtypesPackageImpl;
import com.etas.amd620.core.amd620.Amd620Package;
import com.etas.amd620.core.amd620.impl.Amd620PackageImpl;
import java.math.BigInteger;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EValidator;
import org.eclipse.emf.ecore.impl.EPackageImpl;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;
import org.w3._2000._09.xmldsig.XmldsigPackage;
import org.w3._2000._09.xmldsig.impl.XmldsigPackageImpl;

public class ComponentMainPackageImpl
extends EPackageImpl
implements ComponentMainPackage {
    private EClass accessModesTEClass = null;
    private EClass argumentsComplexTypeEClass = null;
    private EClass argumentsTypeEClass = null;
    private EClass asap2ItemTypeEClass = null;
    private EClass atomicSoftwareComponentTEClass = null;
    private EClass attributesBaseTEClass = null;
    private EClass colorTEClass = null;
    private EClass complexAttributesTEClass = null;
    private EClass complexTypeTypeEClass = null;
    private EClass componentMainTypeEClass = null;
    private EClass componentTEClass = null;
    private EClass configurationManagementTEClass = null;
    private EClass containerTypeEClass = null;
    private EClass customerSpecificAttributesTypeEClass = null;
    private EClass dataInterfaceTEClass = null;
    private EClass dimensionalAttributesTEClass = null;
    private EClass dimensionalTypeTypeEClass = null;
    private EClass documentRootEClass = null;
    private EClass elementAttributesTEClass = null;
    private EClass elementMappingTypeEClass = null;
    private EClass elementMappingType1EClass = null;
    private EClass elementMappingType2EClass = null;
    private EClass elementsTypeEClass = null;
    private EClass elementTEClass = null;
    private EClass enumerationAttributesTEClass = null;
    private EClass enumerationTypeEClass = null;
    private EClass enumeratorTEClass = null;
    private EClass externalMappingObjectTEClass = null;
    private EClass fileReferenceTEClass = null;
    private EClass formalTypeEClass = null;
    private EClass formattedTextTEClass = null;
    private EClass formulaTypeEClass = null;
    private EClass genericComponentTEClass = null;
    private EClass genericDataTEClass = null;
    private EClass iconTEClass = null;
    private EClass imageTypeEClass = null;
    private EClass intervalTEClass = null;
    private EClass itemBaseTEClass = null;
    private EClass itemRefTEClass = null;
    private EClass itemTEClass = null;
    private EClass itemTypeEClass = null;
    private EClass localsComplexTypeEClass = null;
    private EClass mappingItemTEClass = null;
    private EClass mappingObjectTEClass = null;
    private EClass methodBaseTEClass = null;
    private EClass methodInterfaceTEClass = null;
    private EClass methodSignaturesTypeEClass = null;
    private EClass methodSignaturesType1EClass = null;
    private EClass methodSignatureTEClass = null;
    private EClass methodTEClass = null;
    private EClass modeGroupTypeEClass = null;
    private EClass notesTEClass = null;
    private EClass noteTypeEClass = null;
    private EClass optionTEClass = null;
    private EClass parameterMappingsTypeEClass = null;
    private EClass pointTEClass = null;
    private EClass primitiveAttributesBaseTEClass = null;
    private EClass realizedElementTEClass = null;
    private EClass realizedMethodBaseTEClass = null;
    private EClass realizedMethodTEClass = null;
    private EClass realizedReturnTEClass = null;
    private EClass realizedRunnableTEClass = null;
    private EClass recordAttributesTEClass = null;
    private EClass requirementsManagementTEClass = null;
    private EClass returnTEClass = null;
    private EClass runnableTEClass = null;
    private EClass scalarAttributesTEClass = null;
    private EClass scalarTypeTypeEClass = null;
    private EClass signalTypeEClass = null;
    private EClass sizeTEClass = null;
    private EClass sourceObjectTypeEClass = null;
    private EClass timeStampsTypeEClass = null;
    private EClass timeStampTEClass = null;
    private EClass variableMappingsExternalTypeEClass = null;
    private EClass variableMappingsInternalTypeEClass = null;
    private EClass viewTypeEClass = null;
    private EEnum basicModelTypeTypeEEnum = null;
    private EEnum componentTypeTypeEEnum = null;
    private EEnum internalAccessTypeEEnum = null;
    private EEnum kindTypeEEnum = null;
    private EEnum modelTypeTypeEEnum = null;
    private EEnum scopeTypeEEnum = null;
    private EEnum specificationTypeTypeEEnum = null;
    private EEnum typeTypeEEnum = null;
    private EEnum typeType1EEnum = null;
    private EDataType basicModelTypeTypeObjectEDataType = null;
    private EDataType componentTypeTypeObjectEDataType = null;
    private EDataType indexTypeEDataType = null;
    private EDataType internalAccessTypeObjectEDataType = null;
    private EDataType kindTypeObjectEDataType = null;
    private EDataType modelTypeTypeObjectEDataType = null;
    private EDataType numberOrFractionEDataType = null;
    private EDataType numberOrFractionMember1EDataType = null;
    private EDataType nzqrEDataType = null;
    private EDataType nzqrMember2EDataType = null;
    private EDataType oidEDataType = null;
    private EDataType scopeTypeObjectEDataType = null;
    private EDataType specificationTypeTypeObjectEDataType = null;
    private EDataType typeTypeObjectEDataType = null;
    private EDataType typeTypeObject1EDataType = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private ComponentMainPackageImpl() {
        super("http://www.etas.com/ascet/amd/620/component_main", (EFactory)ComponentMainFactory.eINSTANCE);
    }

    public static ComponentMainPackage init() {
        if (isInited) {
            return (ComponentMainPackage)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_main");
        }
        ComponentMainPackageImpl theComponentMainPackage = (ComponentMainPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://www.etas.com/ascet/amd/620/component_main") instanceof ComponentMainPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://www.etas.com/ascet/amd/620/component_main") : new ComponentMainPackageImpl());
        isInited = true;
        XMLTypePackage.eINSTANCE.eClass();
        Amd620PackageImpl theAmd620Package = (Amd620PackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/amd620") instanceof Amd620PackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/amd620") : Amd620Package.eINSTANCE);
        ComponentDataPackageImpl theComponentDataPackage = (ComponentDataPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_data") instanceof ComponentDataPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_data") : ComponentDataPackage.eINSTANCE);
        ComponentImplementationPackageImpl theComponentImplementationPackage = (ComponentImplementationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_implementation") instanceof ComponentImplementationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_implementation") : ComponentImplementationPackage.eINSTANCE);
        ComponentSpecificationPackageImpl theComponentSpecificationPackage = (ComponentSpecificationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification") instanceof ComponentSpecificationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification") : ComponentSpecificationPackage.eINSTANCE);
        ComponentProjectPackageImpl theComponentProjectPackage = (ComponentProjectPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_project") instanceof ComponentProjectPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_project") : ComponentProjectPackage.eINSTANCE);
        ImplementationtypesPackageImpl theImplementationtypesPackage = (ImplementationtypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/implementationtypes") instanceof ImplementationtypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/implementationtypes") : ImplementationtypesPackage.eINSTANCE);
        FormulasPackageImpl theFormulasPackage = (FormulasPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/formulas") instanceof FormulasPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/formulas") : FormulasPackage.eINSTANCE);
        XmldsigPackageImpl theXmldsigPackage = (XmldsigPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.w3.org/2000/09/xmldsig#") instanceof XmldsigPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.w3.org/2000/09/xmldsig#") : XmldsigPackage.eINSTANCE);
        theComponentSpecificationPackage.loadPackage();
        theComponentMainPackage.createPackageContents();
        theAmd620Package.createPackageContents();
        theComponentDataPackage.createPackageContents();
        theComponentImplementationPackage.createPackageContents();
        theComponentProjectPackage.createPackageContents();
        theImplementationtypesPackage.createPackageContents();
        theFormulasPackage.createPackageContents();
        theXmldsigPackage.createPackageContents();
        theComponentMainPackage.initializePackageContents();
        theAmd620Package.initializePackageContents();
        theComponentDataPackage.initializePackageContents();
        theComponentImplementationPackage.initializePackageContents();
        theComponentProjectPackage.initializePackageContents();
        theImplementationtypesPackage.initializePackageContents();
        theFormulasPackage.initializePackageContents();
        theXmldsigPackage.initializePackageContents();
        theComponentSpecificationPackage.fixPackageContents();
        EValidator.Registry.INSTANCE.put((Object)theComponentMainPackage, (Object)new EValidator.Descriptor(){

            public EValidator getEValidator() {
                return ComponentMainValidator.INSTANCE;
            }
        });
        theComponentMainPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://www.etas.com/ascet/amd/620/component_main", (Object)theComponentMainPackage);
        return theComponentMainPackage;
    }

    @Override
    public EClass getAccessModesT() {
        return this.accessModesTEClass;
    }

    @Override
    public EAttribute getAccessModesT_Import() {
        return (EAttribute)this.accessModesTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getAccessModesT_Read() {
        return (EAttribute)this.accessModesTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getAccessModesT_Write() {
        return (EAttribute)this.accessModesTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getArgumentsComplexType() {
        return this.argumentsComplexTypeEClass;
    }

    @Override
    public EReference getArgumentsComplexType_Argument() {
        return (EReference)this.argumentsComplexTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getArgumentsType() {
        return this.argumentsTypeEClass;
    }

    @Override
    public EReference getArgumentsType_Argument() {
        return (EReference)this.argumentsTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getAsap2ItemType() {
        return this.asap2ItemTypeEClass;
    }

    @Override
    public EReference getAsap2ItemType_File() {
        return (EReference)this.asap2ItemTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getAsap2ItemType_OriginalLocation() {
        return (EAttribute)this.asap2ItemTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getAtomicSoftwareComponentT() {
        return this.atomicSoftwareComponentTEClass;
    }

    @Override
    public EReference getAtomicSoftwareComponentT_ParameterMappings() {
        return (EReference)this.atomicSoftwareComponentTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getAtomicSoftwareComponentT_VariableMappingsInternal() {
        return (EReference)this.atomicSoftwareComponentTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getAtomicSoftwareComponentT_VariableMappingsExternal() {
        return (EReference)this.atomicSoftwareComponentTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getAtomicSoftwareComponentT_Category() {
        return (EAttribute)this.atomicSoftwareComponentTEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getAtomicSoftwareComponentT_SupportsMultipleInstantiation() {
        return (EAttribute)this.atomicSoftwareComponentTEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EClass getAttributesBaseT() {
        return this.attributesBaseTEClass;
    }

    @Override
    public EAttribute getAttributesBaseT_Direct() {
        return (EAttribute)this.attributesBaseTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getAttributesBaseT_Get() {
        return (EAttribute)this.attributesBaseTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getAttributesBaseT_Read() {
        return (EAttribute)this.attributesBaseTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getAttributesBaseT_Scope() {
        return (EAttribute)this.attributesBaseTEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getAttributesBaseT_Set() {
        return (EAttribute)this.attributesBaseTEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getAttributesBaseT_Write() {
        return (EAttribute)this.attributesBaseTEClass.getEStructuralFeatures().get(5);
    }

    @Override
    public EClass getColorT() {
        return this.colorTEClass;
    }

    @Override
    public EAttribute getColorT_Blue() {
        return (EAttribute)this.colorTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getColorT_Green() {
        return (EAttribute)this.colorTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getColorT_Red() {
        return (EAttribute)this.colorTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getComplexAttributesT() {
        return this.complexAttributesTEClass;
    }

    @Override
    public EAttribute getComplexAttributesT_ComponentID() {
        return (EAttribute)this.complexAttributesTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getComplexAttributesT_ComponentName() {
        return (EAttribute)this.complexAttributesTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getComplexAttributesT_Kind() {
        return (EAttribute)this.complexAttributesTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getComplexAttributesT_Queued() {
        return (EAttribute)this.complexAttributesTEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getComplexAttributesT_Reference() {
        return (EAttribute)this.complexAttributesTEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EClass getComplexTypeType() {
        return this.complexTypeTypeEClass;
    }

    @Override
    public EReference getComplexTypeType_ComplexAttributes() {
        return (EReference)this.complexTypeTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getComplexTypeType_RecordAttributes() {
        return (EReference)this.complexTypeTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getComponentMainType() {
        return this.componentMainTypeEClass;
    }

    @Override
    public EReference getComponentMainType_Component() {
        return (EReference)this.componentMainTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getComponentMainType_GenericComponent() {
        return (EReference)this.componentMainTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getComponentMainType_AtomicSoftwareComponent() {
        return (EReference)this.componentMainTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EReference getComponentMainType_Enumeration() {
        return (EReference)this.componentMainTypeEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EReference getComponentMainType_ModeGroup() {
        return (EReference)this.componentMainTypeEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EReference getComponentMainType_Image() {
        return (EReference)this.componentMainTypeEClass.getEStructuralFeatures().get(5);
    }

    @Override
    public EReference getComponentMainType_Signal() {
        return (EReference)this.componentMainTypeEClass.getEStructuralFeatures().get(6);
    }

    @Override
    public EReference getComponentMainType_Asap2Item() {
        return (EReference)this.componentMainTypeEClass.getEStructuralFeatures().get(7);
    }

    @Override
    public EReference getComponentMainType_Container() {
        return (EReference)this.componentMainTypeEClass.getEStructuralFeatures().get(8);
    }

    @Override
    public EReference getComponentMainType_Folder() {
        return (EReference)this.componentMainTypeEClass.getEStructuralFeatures().get(9);
    }

    @Override
    public EReference getComponentMainType_Signature() {
        return (EReference)this.componentMainTypeEClass.getEStructuralFeatures().get(10);
    }

    @Override
    public EAttribute getComponentMainType_SchemaVersion() {
        return (EAttribute)this.componentMainTypeEClass.getEStructuralFeatures().get(11);
    }

    @Override
    public EAttribute getComponentMainType_ToolVersion() {
        return (EAttribute)this.componentMainTypeEClass.getEStructuralFeatures().get(12);
    }

    @Override
    public EClass getComponentT() {
        return this.componentTEClass;
    }

    @Override
    public EReference getComponentT_Elements() {
        return (EReference)this.componentTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getComponentT_MethodSignatures() {
        return (EReference)this.componentTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getComponentT_TimeStamps() {
        return (EReference)this.componentTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getComponentT_ChecksumGeneral() {
        return (EAttribute)this.componentTEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getComponentT_ChecksumPublicInterface() {
        return (EAttribute)this.componentTEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getComponentT_DefaultProjectName() {
        return (EAttribute)this.componentTEClass.getEStructuralFeatures().get(5);
    }

    @Override
    public EAttribute getComponentT_DefaultProjectOID() {
        return (EAttribute)this.componentTEClass.getEStructuralFeatures().get(6);
    }

    @Override
    public EAttribute getComponentT_SpecificationType() {
        return (EAttribute)this.componentTEClass.getEStructuralFeatures().get(7);
    }

    @Override
    public EClass getConfigurationManagementT() {
        return this.configurationManagementTEClass;
    }

    @Override
    public EReference getConfigurationManagementT_GenericData() {
        return (EReference)this.configurationManagementTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getConfigurationManagementT_ConfigurationID() {
        return (EAttribute)this.configurationManagementTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getConfigurationManagementT_Edition() {
        return (EAttribute)this.configurationManagementTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getConfigurationManagementT_VersionID() {
        return (EAttribute)this.configurationManagementTEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EClass getContainerType() {
        return this.containerTypeEClass;
    }

    @Override
    public EReference getContainerType_Item() {
        return (EReference)this.containerTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getCustomerSpecificAttributesType() {
        return this.customerSpecificAttributesTypeEClass;
    }

    @Override
    public EReference getCustomerSpecificAttributesType_ConfigurationManagement() {
        return (EReference)this.customerSpecificAttributesTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getCustomerSpecificAttributesType_RequirementsManagement() {
        return (EReference)this.customerSpecificAttributesTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getCustomerSpecificAttributesType_AccessManagement() {
        return (EReference)this.customerSpecificAttributesTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EReference getCustomerSpecificAttributesType_CustomerData() {
        return (EReference)this.customerSpecificAttributesTypeEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EClass getDataInterfaceT() {
        return this.dataInterfaceTEClass;
    }

    @Override
    public EReference getDataInterfaceT_Elements() {
        return (EReference)this.dataInterfaceTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getDataInterfaceT_ChecksumGeneral() {
        return (EAttribute)this.dataInterfaceTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getDataInterfaceT_ChecksumPublicInterface() {
        return (EAttribute)this.dataInterfaceTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getDimensionalAttributesT() {
        return this.dimensionalAttributesTEClass;
    }

    @Override
    public EReference getDimensionalAttributesT_Formula() {
        return (EReference)this.dimensionalAttributesTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getDimensionalAttributesT_Dependent() {
        return (EAttribute)this.dimensionalAttributesTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getDimensionalAttributesT_Reference() {
        return (EAttribute)this.dimensionalAttributesTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getDimensionalAttributesT_Virtual() {
        return (EAttribute)this.dimensionalAttributesTEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EClass getDimensionalTypeType() {
        return this.dimensionalTypeTypeEClass;
    }

    @Override
    public EReference getDimensionalTypeType_DimensionalAttributes() {
        return (EReference)this.dimensionalTypeTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getDimensionalTypeType_Interpolation() {
        return (EAttribute)this.dimensionalTypeTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getDimensionalTypeType_MaxSizeX() {
        return (EAttribute)this.dimensionalTypeTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getDimensionalTypeType_MaxSizeY() {
        return (EAttribute)this.dimensionalTypeTypeEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getDimensionalTypeType_Type() {
        return (EAttribute)this.dimensionalTypeTypeEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getDimensionalTypeType_XDistributionName() {
        return (EAttribute)this.dimensionalTypeTypeEClass.getEStructuralFeatures().get(5);
    }

    @Override
    public EAttribute getDimensionalTypeType_XDistributionOID() {
        return (EAttribute)this.dimensionalTypeTypeEClass.getEStructuralFeatures().get(6);
    }

    @Override
    public EAttribute getDimensionalTypeType_XSizeVariantElementName() {
        return (EAttribute)this.dimensionalTypeTypeEClass.getEStructuralFeatures().get(7);
    }

    @Override
    public EAttribute getDimensionalTypeType_XSizeVariantElementOID() {
        return (EAttribute)this.dimensionalTypeTypeEClass.getEStructuralFeatures().get(8);
    }

    @Override
    public EAttribute getDimensionalTypeType_YDistributionName() {
        return (EAttribute)this.dimensionalTypeTypeEClass.getEStructuralFeatures().get(9);
    }

    @Override
    public EAttribute getDimensionalTypeType_YDistributionOID() {
        return (EAttribute)this.dimensionalTypeTypeEClass.getEStructuralFeatures().get(10);
    }

    @Override
    public EAttribute getDimensionalTypeType_YSizeVariantElementName() {
        return (EAttribute)this.dimensionalTypeTypeEClass.getEStructuralFeatures().get(11);
    }

    @Override
    public EAttribute getDimensionalTypeType_YSizeVariantElementOID() {
        return (EAttribute)this.dimensionalTypeTypeEClass.getEStructuralFeatures().get(12);
    }

    @Override
    public EClass getDocumentRoot() {
        return this.documentRootEClass;
    }

    @Override
    public EAttribute getDocumentRoot_Mixed() {
        return (EAttribute)this.documentRootEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getDocumentRoot_XMLNSPrefixMap() {
        return (EReference)this.documentRootEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getDocumentRoot_XSISchemaLocation() {
        return (EReference)this.documentRootEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EReference getDocumentRoot_ComponentMain() {
        return (EReference)this.documentRootEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EClass getElementAttributesT() {
        return this.elementAttributesTEClass;
    }

    @Override
    public EReference getElementAttributesT_ScalarType() {
        return (EReference)this.elementAttributesTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getElementAttributesT_ComplexType() {
        return (EReference)this.elementAttributesTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getElementAttributesT_DimensionalType() {
        return (EReference)this.elementAttributesTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getElementAttributesT_BasicModelType() {
        return (EAttribute)this.elementAttributesTEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getElementAttributesT_ModelType() {
        return (EAttribute)this.elementAttributesTEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getElementAttributesT_Unit() {
        return (EAttribute)this.elementAttributesTEClass.getEStructuralFeatures().get(5);
    }

    @Override
    public EClass getElementMappingType() {
        return this.elementMappingTypeEClass;
    }

    @Override
    public EAttribute getElementMappingType_ElementName() {
        return (EAttribute)this.elementMappingTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getElementMappingType1() {
        return this.elementMappingType1EClass;
    }

    @Override
    public EAttribute getElementMappingType1_ElementName() {
        return (EAttribute)this.elementMappingType1EClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getElementMappingType2() {
        return this.elementMappingType2EClass;
    }

    @Override
    public EAttribute getElementMappingType2_ElementName() {
        return (EAttribute)this.elementMappingType2EClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getElementsType() {
        return this.elementsTypeEClass;
    }

    @Override
    public EReference getElementsType_Element() {
        return (EReference)this.elementsTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getElementT() {
        return this.elementTEClass;
    }

    @Override
    public EReference getElementT_Comment() {
        return (EReference)this.elementTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getElementT_ElementAttributes() {
        return (EReference)this.elementTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getElementT_CustomerData() {
        return (EReference)this.elementTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getElementT_Ignore() {
        return (EAttribute)this.elementTEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getElementT_Name() {
        return (EAttribute)this.elementTEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getElementT_OID() {
        return (EAttribute)this.elementTEClass.getEStructuralFeatures().get(5);
    }

    @Override
    public EAttribute getElementT_UUID() {
        return (EAttribute)this.elementTEClass.getEStructuralFeatures().get(6);
    }

    @Override
    public EClass getEnumerationAttributesT() {
        return this.enumerationAttributesTEClass;
    }

    @Override
    public EAttribute getEnumerationAttributesT_EnumerationName() {
        return (EAttribute)this.enumerationAttributesTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getEnumerationAttributesT_EnumerationOID() {
        return (EAttribute)this.enumerationAttributesTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getEnumerationAttributesT_Explicit() {
        return (EAttribute)this.enumerationAttributesTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getEnumerationType() {
        return this.enumerationTypeEClass;
    }

    @Override
    public EReference getEnumerationType_Enumerator() {
        return (EReference)this.enumerationTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getEnumeratorT() {
        return this.enumeratorTEClass;
    }

    @Override
    public EAttribute getEnumeratorT_Index() {
        return (EAttribute)this.enumeratorTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getEnumeratorT_Value() {
        return (EAttribute)this.enumeratorTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getExternalMappingObjectT() {
        return this.externalMappingObjectTEClass;
    }

    @Override
    public EReference getExternalMappingObjectT_SourceObject() {
        return (EReference)this.externalMappingObjectTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getExternalMappingObjectT_TargetObject() {
        return (EReference)this.externalMappingObjectTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getFileReferenceT() {
        return this.fileReferenceTEClass;
    }

    @Override
    public EAttribute getFileReferenceT_Value() {
        return (EAttribute)this.fileReferenceTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getFileReferenceT_Checksum() {
        return (EAttribute)this.fileReferenceTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getFileReferenceT_Type() {
        return (EAttribute)this.fileReferenceTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getFormalType() {
        return this.formalTypeEClass;
    }

    @Override
    public EAttribute getFormalType_Name() {
        return (EAttribute)this.formalTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getFormalType_OID() {
        return (EAttribute)this.formalTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getFormattedTextT() {
        return this.formattedTextTEClass;
    }

    @Override
    public EAttribute getFormattedTextT_Value() {
        return (EAttribute)this.formattedTextTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getFormulaType() {
        return this.formulaTypeEClass;
    }

    @Override
    public EReference getFormulaType_Formal() {
        return (EReference)this.formulaTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getFormulaType_Code() {
        return (EAttribute)this.formulaTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getGenericComponentT() {
        return this.genericComponentTEClass;
    }

    @Override
    public EAttribute getGenericComponentT_FactoryKey() {
        return (EAttribute)this.genericComponentTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getGenericComponentT_IconName() {
        return (EAttribute)this.genericComponentTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getGenericDataT() {
        return this.genericDataTEClass;
    }

    @Override
    public EAttribute getGenericDataT_Any() {
        return (EAttribute)this.genericDataTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getGenericDataT_Name() {
        return (EAttribute)this.genericDataTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getIconT() {
        return this.iconTEClass;
    }

    @Override
    public EReference getIconT_IconFile() {
        return (EReference)this.iconTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getIconT_Size() {
        return (EReference)this.iconTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getIconT_IconName() {
        return (EAttribute)this.iconTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getIconT_IconOID() {
        return (EAttribute)this.iconTEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EClass getImageType() {
        return this.imageTypeEClass;
    }

    @Override
    public EReference getImageType_File() {
        return (EReference)this.imageTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getIntervalT() {
        return this.intervalTEClass;
    }

    @Override
    public EAttribute getIntervalT_Max() {
        return (EAttribute)this.intervalTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getIntervalT_Min() {
        return (EAttribute)this.intervalTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getItemBaseT() {
        return this.itemBaseTEClass;
    }

    @Override
    public EReference getItemBaseT_TimeStamp() {
        return (EReference)this.itemBaseTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getItemBaseT_Comment() {
        return (EReference)this.itemBaseTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getItemBaseT_Checksum() {
        return (EAttribute)this.itemBaseTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getItemBaseT_ComponentType() {
        return (EAttribute)this.itemBaseTEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getItemBaseT_Name() {
        return (EAttribute)this.itemBaseTEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getItemBaseT_NameSpace() {
        return (EAttribute)this.itemBaseTEClass.getEStructuralFeatures().get(5);
    }

    @Override
    public EAttribute getItemBaseT_OID() {
        return (EAttribute)this.itemBaseTEClass.getEStructuralFeatures().get(6);
    }

    @Override
    public EAttribute getItemBaseT_TimeStamp1() {
        return (EAttribute)this.itemBaseTEClass.getEStructuralFeatures().get(7);
    }

    @Override
    public EAttribute getItemBaseT_UUID() {
        return (EAttribute)this.itemBaseTEClass.getEStructuralFeatures().get(8);
    }

    @Override
    public EClass getItemRefT() {
        return this.itemRefTEClass;
    }

    @Override
    public EAttribute getItemRefT_Name() {
        return (EAttribute)this.itemRefTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getItemRefT_OID() {
        return (EAttribute)this.itemRefTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getItemT() {
        return this.itemTEClass;
    }

    @Override
    public EReference getItemT_Notes() {
        return (EReference)this.itemTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getItemT_CustomerSpecificAttributes() {
        return (EReference)this.itemTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getItemType() {
        return this.itemTypeEClass;
    }

    @Override
    public EAttribute getItemType_ItemName() {
        return (EAttribute)this.itemTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getItemType_ItemOID() {
        return (EAttribute)this.itemTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getLocalsComplexType() {
        return this.localsComplexTypeEClass;
    }

    @Override
    public EReference getLocalsComplexType_Local() {
        return (EReference)this.localsComplexTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getMappingItemT() {
        return this.mappingItemTEClass;
    }

    @Override
    public EAttribute getMappingItemT_DisplayName() {
        return (EAttribute)this.mappingItemTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getMappingItemT_ElementName() {
        return (EAttribute)this.mappingItemTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getMappingItemT_ElementOID() {
        return (EAttribute)this.mappingItemTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getMappingItemT_ModelName() {
        return (EAttribute)this.mappingItemTEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getMappingItemT_ModelOID() {
        return (EAttribute)this.mappingItemTEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EClass getMappingObjectT() {
        return this.mappingObjectTEClass;
    }

    @Override
    public EReference getMappingObjectT_SourceObject() {
        return (EReference)this.mappingObjectTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getMappingObjectT_TargetObject() {
        return (EReference)this.mappingObjectTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getMethodBaseT() {
        return this.methodBaseTEClass;
    }

    @Override
    public EReference getMethodBaseT_CustomerData() {
        return (EReference)this.methodBaseTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getMethodBaseT_AvailableForOS() {
        return (EAttribute)this.methodBaseTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getMethodBaseT_Default() {
        return (EAttribute)this.methodBaseTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getMethodBaseT_DefaultMethod() {
        return (EAttribute)this.methodBaseTEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getMethodBaseT_Hidden() {
        return (EAttribute)this.methodBaseTEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getMethodBaseT_Name() {
        return (EAttribute)this.methodBaseTEClass.getEStructuralFeatures().get(5);
    }

    @Override
    public EAttribute getMethodBaseT_OID() {
        return (EAttribute)this.methodBaseTEClass.getEStructuralFeatures().get(6);
    }

    @Override
    public EAttribute getMethodBaseT_Public() {
        return (EAttribute)this.methodBaseTEClass.getEStructuralFeatures().get(7);
    }

    @Override
    public EAttribute getMethodBaseT_ReinitializeMethod() {
        return (EAttribute)this.methodBaseTEClass.getEStructuralFeatures().get(8);
    }

    @Override
    public EAttribute getMethodBaseT_UUID() {
        return (EAttribute)this.methodBaseTEClass.getEStructuralFeatures().get(9);
    }

    @Override
    public EClass getMethodInterfaceT() {
        return this.methodInterfaceTEClass;
    }

    @Override
    public EReference getMethodInterfaceT_MethodSignatures() {
        return (EReference)this.methodInterfaceTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getMethodInterfaceT_ChecksumGeneral() {
        return (EAttribute)this.methodInterfaceTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getMethodInterfaceT_ChecksumPublicInterface() {
        return (EAttribute)this.methodInterfaceTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getMethodSignaturesType() {
        return this.methodSignaturesTypeEClass;
    }

    @Override
    public EAttribute getMethodSignaturesType_Group() {
        return (EAttribute)this.methodSignaturesTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getMethodSignaturesType_MethodSignature() {
        return (EReference)this.methodSignaturesTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getMethodSignaturesType1() {
        return this.methodSignaturesType1EClass;
    }

    @Override
    public EAttribute getMethodSignaturesType1_Group() {
        return (EAttribute)this.methodSignaturesType1EClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getMethodSignaturesType1_RunnableSignature() {
        return (EReference)this.methodSignaturesType1EClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getMethodSignaturesType1_RealizedRunnableSignature() {
        return (EReference)this.methodSignaturesType1EClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EReference getMethodSignaturesType1_MethodSignature() {
        return (EReference)this.methodSignaturesType1EClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EReference getMethodSignaturesType1_RealizedMethodSignature() {
        return (EReference)this.methodSignaturesType1EClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EClass getMethodSignatureT() {
        return this.methodSignatureTEClass;
    }

    @Override
    public EReference getMethodSignatureT_Arguments() {
        return (EReference)this.methodSignatureTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getMethodSignatureT_Return() {
        return (EReference)this.methodSignatureTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getMethodT() {
        return this.methodTEClass;
    }

    @Override
    public EReference getMethodT_Arguments() {
        return (EReference)this.methodTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getMethodT_Return() {
        return (EReference)this.methodTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getMethodT_Locals() {
        return (EReference)this.methodTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getModeGroupType() {
        return this.modeGroupTypeEClass;
    }

    @Override
    public EReference getModeGroupType_Mode() {
        return (EReference)this.modeGroupTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getModeGroupType_DefaultMode() {
        return (EAttribute)this.modeGroupTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getNotesT() {
        return this.notesTEClass;
    }

    @Override
    public EReference getNotesT_Note() {
        return (EReference)this.notesTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getNoteType() {
        return this.noteTypeEClass;
    }

    @Override
    public EReference getNoteType_Text() {
        return (EReference)this.noteTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getNoteType_View() {
        return (EReference)this.noteTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getNoteType_Name() {
        return (EAttribute)this.noteTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getOptionT() {
        return this.optionTEClass;
    }

    @Override
    public EAttribute getOptionT_Name() {
        return (EAttribute)this.optionTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getOptionT_Type() {
        return (EAttribute)this.optionTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getOptionT_Value() {
        return (EAttribute)this.optionTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getParameterMappingsType() {
        return this.parameterMappingsTypeEClass;
    }

    @Override
    public EAttribute getParameterMappingsType_Group() {
        return (EAttribute)this.parameterMappingsTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getParameterMappingsType_ElementMapping() {
        return (EReference)this.parameterMappingsTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getPointT() {
        return this.pointTEClass;
    }

    @Override
    public EAttribute getPointT_X() {
        return (EAttribute)this.pointTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getPointT_Y() {
        return (EAttribute)this.pointTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getPrimitiveAttributesBaseT() {
        return this.primitiveAttributesBaseTEClass;
    }

    @Override
    public EAttribute getPrimitiveAttributesBaseT_CalibrationRead() {
        return (EAttribute)this.primitiveAttributesBaseTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getPrimitiveAttributesBaseT_CalibrationWrite() {
        return (EAttribute)this.primitiveAttributesBaseTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getPrimitiveAttributesBaseT_Kind() {
        return (EAttribute)this.primitiveAttributesBaseTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getPrimitiveAttributesBaseT_Volatile() {
        return (EAttribute)this.primitiveAttributesBaseTEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EClass getRealizedElementT() {
        return this.realizedElementTEClass;
    }

    @Override
    public EAttribute getRealizedElementT_MasterElementName() {
        return (EAttribute)this.realizedElementTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getRealizedElementT_MasterElementOID() {
        return (EAttribute)this.realizedElementTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getRealizedMethodBaseT() {
        return this.realizedMethodBaseTEClass;
    }

    @Override
    public EAttribute getRealizedMethodBaseT_InterfaceName() {
        return (EAttribute)this.realizedMethodBaseTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getRealizedMethodBaseT_InterfaceOID() {
        return (EAttribute)this.realizedMethodBaseTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getRealizedMethodBaseT_SignatureName() {
        return (EAttribute)this.realizedMethodBaseTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getRealizedMethodBaseT_SignatureOID() {
        return (EAttribute)this.realizedMethodBaseTEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EClass getRealizedMethodT() {
        return this.realizedMethodTEClass;
    }

    @Override
    public EReference getRealizedMethodT_Arguments() {
        return (EReference)this.realizedMethodTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getRealizedMethodT_Return() {
        return (EReference)this.realizedMethodTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getRealizedMethodT_Locals() {
        return (EReference)this.realizedMethodTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getRealizedReturnT() {
        return this.realizedReturnTEClass;
    }

    @Override
    public EAttribute getRealizedReturnT_MasterElementOID() {
        return (EAttribute)this.realizedReturnTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getRealizedRunnableT() {
        return this.realizedRunnableTEClass;
    }

    @Override
    public EAttribute getRealizedRunnableT_CanBeInvokedConcurrently() {
        return (EAttribute)this.realizedRunnableTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getRealizedRunnableT_MinimumStartTime() {
        return (EAttribute)this.realizedRunnableTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getRecordAttributesT() {
        return this.recordAttributesTEClass;
    }

    @Override
    public EAttribute getRecordAttributesT_CalibrationRead() {
        return (EAttribute)this.recordAttributesTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getRecordAttributesT_CalibrationWrite() {
        return (EAttribute)this.recordAttributesTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getRecordAttributesT_Virtual() {
        return (EAttribute)this.recordAttributesTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getRecordAttributesT_Volatile() {
        return (EAttribute)this.recordAttributesTEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EClass getRequirementsManagementT() {
        return this.requirementsManagementTEClass;
    }

    @Override
    public EReference getRequirementsManagementT_GenericData() {
        return (EReference)this.requirementsManagementTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getRequirementsManagementT_RequirementsID() {
        return (EAttribute)this.requirementsManagementTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getReturnT() {
        return this.returnTEClass;
    }

    @Override
    public EReference getReturnT_Comment() {
        return (EReference)this.returnTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getReturnT_ElementAttributes() {
        return (EReference)this.returnTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getReturnT_CustomerData() {
        return (EReference)this.returnTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getReturnT_OID() {
        return (EAttribute)this.returnTEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getReturnT_UUID() {
        return (EAttribute)this.returnTEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EClass getRunnableT() {
        return this.runnableTEClass;
    }

    @Override
    public EReference getRunnableT_Locals() {
        return (EReference)this.runnableTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getRunnableT_CanBeInvokedConcurrently() {
        return (EAttribute)this.runnableTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getRunnableT_MinimumStartTime() {
        return (EAttribute)this.runnableTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getScalarAttributesT() {
        return this.scalarAttributesTEClass;
    }

    @Override
    public EReference getScalarAttributesT_Formula() {
        return (EReference)this.scalarAttributesTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getScalarAttributesT_Dependent() {
        return (EAttribute)this.scalarAttributesTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getScalarAttributesT_Explicit() {
        return (EAttribute)this.scalarAttributesTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getScalarAttributesT_Interrunnable() {
        return (EAttribute)this.scalarAttributesTEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getScalarAttributesT_Virtual() {
        return (EAttribute)this.scalarAttributesTEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EClass getScalarTypeType() {
        return this.scalarTypeTypeEClass;
    }

    @Override
    public EReference getScalarTypeType_ScalarAttributes() {
        return (EReference)this.scalarTypeTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getScalarTypeType_EnumerationAttributes() {
        return (EReference)this.scalarTypeTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getSignalType() {
        return this.signalTypeEClass;
    }

    @Override
    public EReference getSignalType_File() {
        return (EReference)this.signalTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getSizeT() {
        return this.sizeTEClass;
    }

    @Override
    public EAttribute getSizeT_X() {
        return (EAttribute)this.sizeTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getSizeT_Y() {
        return (EAttribute)this.sizeTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getSourceObjectType() {
        return this.sourceObjectTypeEClass;
    }

    @Override
    public EAttribute getSourceObjectType_InternalAccess() {
        return (EAttribute)this.sourceObjectTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getTimeStampsType() {
        return this.timeStampsTypeEClass;
    }

    @Override
    public EReference getTimeStampsType_TimeStamp() {
        return (EReference)this.timeStampsTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getTimeStampT() {
        return this.timeStampTEClass;
    }

    @Override
    public EAttribute getTimeStampT_TimeStampCounter() {
        return (EAttribute)this.timeStampTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getTimeStampT_TimeStampKey() {
        return (EAttribute)this.timeStampTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getTimeStampT_TimeStampValue() {
        return (EAttribute)this.timeStampTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getVariableMappingsExternalType() {
        return this.variableMappingsExternalTypeEClass;
    }

    @Override
    public EAttribute getVariableMappingsExternalType_Group() {
        return (EAttribute)this.variableMappingsExternalTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getVariableMappingsExternalType_ElementMapping() {
        return (EReference)this.variableMappingsExternalTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getVariableMappingsInternalType() {
        return this.variableMappingsInternalTypeEClass;
    }

    @Override
    public EAttribute getVariableMappingsInternalType_Group() {
        return (EAttribute)this.variableMappingsInternalTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getVariableMappingsInternalType_ElementMapping() {
        return (EReference)this.variableMappingsInternalTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getViewType() {
        return this.viewTypeEClass;
    }

    @Override
    public EAttribute getViewType_Name() {
        return (EAttribute)this.viewTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EEnum getBasicModelTypeType() {
        return this.basicModelTypeTypeEEnum;
    }

    @Override
    public EEnum getComponentTypeType() {
        return this.componentTypeTypeEEnum;
    }

    @Override
    public EEnum getInternalAccessType() {
        return this.internalAccessTypeEEnum;
    }

    @Override
    public EEnum getKindType() {
        return this.kindTypeEEnum;
    }

    @Override
    public EEnum getModelTypeType() {
        return this.modelTypeTypeEEnum;
    }

    @Override
    public EEnum getScopeType() {
        return this.scopeTypeEEnum;
    }

    @Override
    public EEnum getSpecificationTypeType() {
        return this.specificationTypeTypeEEnum;
    }

    @Override
    public EEnum getTypeType() {
        return this.typeTypeEEnum;
    }

    @Override
    public EEnum getTypeType1() {
        return this.typeType1EEnum;
    }

    @Override
    public EDataType getBasicModelTypeTypeObject() {
        return this.basicModelTypeTypeObjectEDataType;
    }

    @Override
    public EDataType getComponentTypeTypeObject() {
        return this.componentTypeTypeObjectEDataType;
    }

    @Override
    public EDataType getIndexType() {
        return this.indexTypeEDataType;
    }

    @Override
    public EDataType getInternalAccessTypeObject() {
        return this.internalAccessTypeObjectEDataType;
    }

    @Override
    public EDataType getKindTypeObject() {
        return this.kindTypeObjectEDataType;
    }

    @Override
    public EDataType getModelTypeTypeObject() {
        return this.modelTypeTypeObjectEDataType;
    }

    @Override
    public EDataType getNumberOrFraction() {
        return this.numberOrFractionEDataType;
    }

    @Override
    public EDataType getNumberOrFractionMember1() {
        return this.numberOrFractionMember1EDataType;
    }

    @Override
    public EDataType getNzqr() {
        return this.nzqrEDataType;
    }

    @Override
    public EDataType getNzqrMember2() {
        return this.nzqrMember2EDataType;
    }

    @Override
    public EDataType getOID() {
        return this.oidEDataType;
    }

    @Override
    public EDataType getScopeTypeObject() {
        return this.scopeTypeObjectEDataType;
    }

    @Override
    public EDataType getSpecificationTypeTypeObject() {
        return this.specificationTypeTypeObjectEDataType;
    }

    @Override
    public EDataType getTypeTypeObject() {
        return this.typeTypeObjectEDataType;
    }

    @Override
    public EDataType getTypeTypeObject1() {
        return this.typeTypeObject1EDataType;
    }

    @Override
    public ComponentMainFactory getComponentMainFactory() {
        return (ComponentMainFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.accessModesTEClass = this.createEClass(0);
        this.createEAttribute(this.accessModesTEClass, 0);
        this.createEAttribute(this.accessModesTEClass, 1);
        this.createEAttribute(this.accessModesTEClass, 2);
        this.argumentsComplexTypeEClass = this.createEClass(1);
        this.createEReference(this.argumentsComplexTypeEClass, 0);
        this.argumentsTypeEClass = this.createEClass(2);
        this.createEReference(this.argumentsTypeEClass, 0);
        this.asap2ItemTypeEClass = this.createEClass(3);
        this.createEReference(this.asap2ItemTypeEClass, 11);
        this.createEAttribute(this.asap2ItemTypeEClass, 12);
        this.atomicSoftwareComponentTEClass = this.createEClass(4);
        this.createEReference(this.atomicSoftwareComponentTEClass, 19);
        this.createEReference(this.atomicSoftwareComponentTEClass, 20);
        this.createEReference(this.atomicSoftwareComponentTEClass, 21);
        this.createEAttribute(this.atomicSoftwareComponentTEClass, 22);
        this.createEAttribute(this.atomicSoftwareComponentTEClass, 23);
        this.attributesBaseTEClass = this.createEClass(5);
        this.createEAttribute(this.attributesBaseTEClass, 0);
        this.createEAttribute(this.attributesBaseTEClass, 1);
        this.createEAttribute(this.attributesBaseTEClass, 2);
        this.createEAttribute(this.attributesBaseTEClass, 3);
        this.createEAttribute(this.attributesBaseTEClass, 4);
        this.createEAttribute(this.attributesBaseTEClass, 5);
        this.colorTEClass = this.createEClass(6);
        this.createEAttribute(this.colorTEClass, 0);
        this.createEAttribute(this.colorTEClass, 1);
        this.createEAttribute(this.colorTEClass, 2);
        this.complexAttributesTEClass = this.createEClass(7);
        this.createEAttribute(this.complexAttributesTEClass, 6);
        this.createEAttribute(this.complexAttributesTEClass, 7);
        this.createEAttribute(this.complexAttributesTEClass, 8);
        this.createEAttribute(this.complexAttributesTEClass, 9);
        this.createEAttribute(this.complexAttributesTEClass, 10);
        this.complexTypeTypeEClass = this.createEClass(8);
        this.createEReference(this.complexTypeTypeEClass, 0);
        this.createEReference(this.complexTypeTypeEClass, 1);
        this.componentMainTypeEClass = this.createEClass(9);
        this.createEReference(this.componentMainTypeEClass, 0);
        this.createEReference(this.componentMainTypeEClass, 1);
        this.createEReference(this.componentMainTypeEClass, 2);
        this.createEReference(this.componentMainTypeEClass, 3);
        this.createEReference(this.componentMainTypeEClass, 4);
        this.createEReference(this.componentMainTypeEClass, 5);
        this.createEReference(this.componentMainTypeEClass, 6);
        this.createEReference(this.componentMainTypeEClass, 7);
        this.createEReference(this.componentMainTypeEClass, 8);
        this.createEReference(this.componentMainTypeEClass, 9);
        this.createEReference(this.componentMainTypeEClass, 10);
        this.createEAttribute(this.componentMainTypeEClass, 11);
        this.createEAttribute(this.componentMainTypeEClass, 12);
        this.componentTEClass = this.createEClass(10);
        this.createEReference(this.componentTEClass, 11);
        this.createEReference(this.componentTEClass, 12);
        this.createEReference(this.componentTEClass, 13);
        this.createEAttribute(this.componentTEClass, 14);
        this.createEAttribute(this.componentTEClass, 15);
        this.createEAttribute(this.componentTEClass, 16);
        this.createEAttribute(this.componentTEClass, 17);
        this.createEAttribute(this.componentTEClass, 18);
        this.configurationManagementTEClass = this.createEClass(11);
        this.createEReference(this.configurationManagementTEClass, 0);
        this.createEAttribute(this.configurationManagementTEClass, 1);
        this.createEAttribute(this.configurationManagementTEClass, 2);
        this.createEAttribute(this.configurationManagementTEClass, 3);
        this.containerTypeEClass = this.createEClass(12);
        this.createEReference(this.containerTypeEClass, 11);
        this.customerSpecificAttributesTypeEClass = this.createEClass(13);
        this.createEReference(this.customerSpecificAttributesTypeEClass, 0);
        this.createEReference(this.customerSpecificAttributesTypeEClass, 1);
        this.createEReference(this.customerSpecificAttributesTypeEClass, 2);
        this.createEReference(this.customerSpecificAttributesTypeEClass, 3);
        this.dataInterfaceTEClass = this.createEClass(14);
        this.createEReference(this.dataInterfaceTEClass, 11);
        this.createEAttribute(this.dataInterfaceTEClass, 12);
        this.createEAttribute(this.dataInterfaceTEClass, 13);
        this.dimensionalAttributesTEClass = this.createEClass(15);
        this.createEReference(this.dimensionalAttributesTEClass, 10);
        this.createEAttribute(this.dimensionalAttributesTEClass, 11);
        this.createEAttribute(this.dimensionalAttributesTEClass, 12);
        this.createEAttribute(this.dimensionalAttributesTEClass, 13);
        this.dimensionalTypeTypeEClass = this.createEClass(16);
        this.createEReference(this.dimensionalTypeTypeEClass, 0);
        this.createEAttribute(this.dimensionalTypeTypeEClass, 1);
        this.createEAttribute(this.dimensionalTypeTypeEClass, 2);
        this.createEAttribute(this.dimensionalTypeTypeEClass, 3);
        this.createEAttribute(this.dimensionalTypeTypeEClass, 4);
        this.createEAttribute(this.dimensionalTypeTypeEClass, 5);
        this.createEAttribute(this.dimensionalTypeTypeEClass, 6);
        this.createEAttribute(this.dimensionalTypeTypeEClass, 7);
        this.createEAttribute(this.dimensionalTypeTypeEClass, 8);
        this.createEAttribute(this.dimensionalTypeTypeEClass, 9);
        this.createEAttribute(this.dimensionalTypeTypeEClass, 10);
        this.createEAttribute(this.dimensionalTypeTypeEClass, 11);
        this.createEAttribute(this.dimensionalTypeTypeEClass, 12);
        this.documentRootEClass = this.createEClass(17);
        this.createEAttribute(this.documentRootEClass, 0);
        this.createEReference(this.documentRootEClass, 1);
        this.createEReference(this.documentRootEClass, 2);
        this.createEReference(this.documentRootEClass, 3);
        this.elementAttributesTEClass = this.createEClass(18);
        this.createEReference(this.elementAttributesTEClass, 0);
        this.createEReference(this.elementAttributesTEClass, 1);
        this.createEReference(this.elementAttributesTEClass, 2);
        this.createEAttribute(this.elementAttributesTEClass, 3);
        this.createEAttribute(this.elementAttributesTEClass, 4);
        this.createEAttribute(this.elementAttributesTEClass, 5);
        this.elementMappingTypeEClass = this.createEClass(19);
        this.createEAttribute(this.elementMappingTypeEClass, 2);
        this.elementMappingType1EClass = this.createEClass(20);
        this.createEAttribute(this.elementMappingType1EClass, 2);
        this.elementMappingType2EClass = this.createEClass(21);
        this.createEAttribute(this.elementMappingType2EClass, 2);
        this.elementsTypeEClass = this.createEClass(22);
        this.createEReference(this.elementsTypeEClass, 0);
        this.elementTEClass = this.createEClass(23);
        this.createEReference(this.elementTEClass, 0);
        this.createEReference(this.elementTEClass, 1);
        this.createEReference(this.elementTEClass, 2);
        this.createEAttribute(this.elementTEClass, 3);
        this.createEAttribute(this.elementTEClass, 4);
        this.createEAttribute(this.elementTEClass, 5);
        this.createEAttribute(this.elementTEClass, 6);
        this.enumerationAttributesTEClass = this.createEClass(24);
        this.createEAttribute(this.enumerationAttributesTEClass, 10);
        this.createEAttribute(this.enumerationAttributesTEClass, 11);
        this.createEAttribute(this.enumerationAttributesTEClass, 12);
        this.enumerationTypeEClass = this.createEClass(25);
        this.createEReference(this.enumerationTypeEClass, 11);
        this.enumeratorTEClass = this.createEClass(26);
        this.createEAttribute(this.enumeratorTEClass, 0);
        this.createEAttribute(this.enumeratorTEClass, 1);
        this.externalMappingObjectTEClass = this.createEClass(27);
        this.createEReference(this.externalMappingObjectTEClass, 0);
        this.createEReference(this.externalMappingObjectTEClass, 1);
        this.fileReferenceTEClass = this.createEClass(28);
        this.createEAttribute(this.fileReferenceTEClass, 0);
        this.createEAttribute(this.fileReferenceTEClass, 1);
        this.createEAttribute(this.fileReferenceTEClass, 2);
        this.formalTypeEClass = this.createEClass(29);
        this.createEAttribute(this.formalTypeEClass, 0);
        this.createEAttribute(this.formalTypeEClass, 1);
        this.formattedTextTEClass = this.createEClass(30);
        this.createEAttribute(this.formattedTextTEClass, 0);
        this.formulaTypeEClass = this.createEClass(31);
        this.createEReference(this.formulaTypeEClass, 0);
        this.createEAttribute(this.formulaTypeEClass, 1);
        this.genericComponentTEClass = this.createEClass(32);
        this.createEAttribute(this.genericComponentTEClass, 19);
        this.createEAttribute(this.genericComponentTEClass, 20);
        this.genericDataTEClass = this.createEClass(33);
        this.createEAttribute(this.genericDataTEClass, 0);
        this.createEAttribute(this.genericDataTEClass, 1);
        this.iconTEClass = this.createEClass(34);
        this.createEReference(this.iconTEClass, 0);
        this.createEReference(this.iconTEClass, 1);
        this.createEAttribute(this.iconTEClass, 2);
        this.createEAttribute(this.iconTEClass, 3);
        this.imageTypeEClass = this.createEClass(35);
        this.createEReference(this.imageTypeEClass, 11);
        this.intervalTEClass = this.createEClass(36);
        this.createEAttribute(this.intervalTEClass, 0);
        this.createEAttribute(this.intervalTEClass, 1);
        this.itemBaseTEClass = this.createEClass(37);
        this.createEReference(this.itemBaseTEClass, 0);
        this.createEReference(this.itemBaseTEClass, 1);
        this.createEAttribute(this.itemBaseTEClass, 2);
        this.createEAttribute(this.itemBaseTEClass, 3);
        this.createEAttribute(this.itemBaseTEClass, 4);
        this.createEAttribute(this.itemBaseTEClass, 5);
        this.createEAttribute(this.itemBaseTEClass, 6);
        this.createEAttribute(this.itemBaseTEClass, 7);
        this.createEAttribute(this.itemBaseTEClass, 8);
        this.itemRefTEClass = this.createEClass(38);
        this.createEAttribute(this.itemRefTEClass, 0);
        this.createEAttribute(this.itemRefTEClass, 1);
        this.itemTEClass = this.createEClass(39);
        this.createEReference(this.itemTEClass, 9);
        this.createEReference(this.itemTEClass, 10);
        this.itemTypeEClass = this.createEClass(40);
        this.createEAttribute(this.itemTypeEClass, 0);
        this.createEAttribute(this.itemTypeEClass, 1);
        this.localsComplexTypeEClass = this.createEClass(41);
        this.createEReference(this.localsComplexTypeEClass, 0);
        this.mappingItemTEClass = this.createEClass(42);
        this.createEAttribute(this.mappingItemTEClass, 0);
        this.createEAttribute(this.mappingItemTEClass, 1);
        this.createEAttribute(this.mappingItemTEClass, 2);
        this.createEAttribute(this.mappingItemTEClass, 3);
        this.createEAttribute(this.mappingItemTEClass, 4);
        this.mappingObjectTEClass = this.createEClass(43);
        this.createEReference(this.mappingObjectTEClass, 0);
        this.createEReference(this.mappingObjectTEClass, 1);
        this.methodBaseTEClass = this.createEClass(44);
        this.createEReference(this.methodBaseTEClass, 0);
        this.createEAttribute(this.methodBaseTEClass, 1);
        this.createEAttribute(this.methodBaseTEClass, 2);
        this.createEAttribute(this.methodBaseTEClass, 3);
        this.createEAttribute(this.methodBaseTEClass, 4);
        this.createEAttribute(this.methodBaseTEClass, 5);
        this.createEAttribute(this.methodBaseTEClass, 6);
        this.createEAttribute(this.methodBaseTEClass, 7);
        this.createEAttribute(this.methodBaseTEClass, 8);
        this.createEAttribute(this.methodBaseTEClass, 9);
        this.methodInterfaceTEClass = this.createEClass(45);
        this.createEReference(this.methodInterfaceTEClass, 11);
        this.createEAttribute(this.methodInterfaceTEClass, 12);
        this.createEAttribute(this.methodInterfaceTEClass, 13);
        this.methodSignaturesTypeEClass = this.createEClass(46);
        this.createEAttribute(this.methodSignaturesTypeEClass, 0);
        this.createEReference(this.methodSignaturesTypeEClass, 1);
        this.methodSignaturesType1EClass = this.createEClass(47);
        this.createEAttribute(this.methodSignaturesType1EClass, 0);
        this.createEReference(this.methodSignaturesType1EClass, 1);
        this.createEReference(this.methodSignaturesType1EClass, 2);
        this.createEReference(this.methodSignaturesType1EClass, 3);
        this.createEReference(this.methodSignaturesType1EClass, 4);
        this.methodSignatureTEClass = this.createEClass(48);
        this.createEReference(this.methodSignatureTEClass, 10);
        this.createEReference(this.methodSignatureTEClass, 11);
        this.methodTEClass = this.createEClass(49);
        this.createEReference(this.methodTEClass, 10);
        this.createEReference(this.methodTEClass, 11);
        this.createEReference(this.methodTEClass, 12);
        this.modeGroupTypeEClass = this.createEClass(50);
        this.createEReference(this.modeGroupTypeEClass, 11);
        this.createEAttribute(this.modeGroupTypeEClass, 12);
        this.notesTEClass = this.createEClass(51);
        this.createEReference(this.notesTEClass, 0);
        this.noteTypeEClass = this.createEClass(52);
        this.createEReference(this.noteTypeEClass, 0);
        this.createEReference(this.noteTypeEClass, 1);
        this.createEAttribute(this.noteTypeEClass, 2);
        this.optionTEClass = this.createEClass(53);
        this.createEAttribute(this.optionTEClass, 0);
        this.createEAttribute(this.optionTEClass, 1);
        this.createEAttribute(this.optionTEClass, 2);
        this.parameterMappingsTypeEClass = this.createEClass(54);
        this.createEAttribute(this.parameterMappingsTypeEClass, 0);
        this.createEReference(this.parameterMappingsTypeEClass, 1);
        this.pointTEClass = this.createEClass(55);
        this.createEAttribute(this.pointTEClass, 0);
        this.createEAttribute(this.pointTEClass, 1);
        this.primitiveAttributesBaseTEClass = this.createEClass(56);
        this.createEAttribute(this.primitiveAttributesBaseTEClass, 6);
        this.createEAttribute(this.primitiveAttributesBaseTEClass, 7);
        this.createEAttribute(this.primitiveAttributesBaseTEClass, 8);
        this.createEAttribute(this.primitiveAttributesBaseTEClass, 9);
        this.realizedElementTEClass = this.createEClass(57);
        this.createEAttribute(this.realizedElementTEClass, 7);
        this.createEAttribute(this.realizedElementTEClass, 8);
        this.realizedMethodBaseTEClass = this.createEClass(58);
        this.createEAttribute(this.realizedMethodBaseTEClass, 10);
        this.createEAttribute(this.realizedMethodBaseTEClass, 11);
        this.createEAttribute(this.realizedMethodBaseTEClass, 12);
        this.createEAttribute(this.realizedMethodBaseTEClass, 13);
        this.realizedMethodTEClass = this.createEClass(59);
        this.createEReference(this.realizedMethodTEClass, 14);
        this.createEReference(this.realizedMethodTEClass, 15);
        this.createEReference(this.realizedMethodTEClass, 16);
        this.realizedReturnTEClass = this.createEClass(60);
        this.createEAttribute(this.realizedReturnTEClass, 5);
        this.realizedRunnableTEClass = this.createEClass(61);
        this.createEAttribute(this.realizedRunnableTEClass, 17);
        this.createEAttribute(this.realizedRunnableTEClass, 18);
        this.recordAttributesTEClass = this.createEClass(62);
        this.createEAttribute(this.recordAttributesTEClass, 11);
        this.createEAttribute(this.recordAttributesTEClass, 12);
        this.createEAttribute(this.recordAttributesTEClass, 13);
        this.createEAttribute(this.recordAttributesTEClass, 14);
        this.requirementsManagementTEClass = this.createEClass(63);
        this.createEReference(this.requirementsManagementTEClass, 0);
        this.createEAttribute(this.requirementsManagementTEClass, 1);
        this.returnTEClass = this.createEClass(64);
        this.createEReference(this.returnTEClass, 0);
        this.createEReference(this.returnTEClass, 1);
        this.createEReference(this.returnTEClass, 2);
        this.createEAttribute(this.returnTEClass, 3);
        this.createEAttribute(this.returnTEClass, 4);
        this.runnableTEClass = this.createEClass(65);
        this.createEReference(this.runnableTEClass, 10);
        this.createEAttribute(this.runnableTEClass, 11);
        this.createEAttribute(this.runnableTEClass, 12);
        this.scalarAttributesTEClass = this.createEClass(66);
        this.createEReference(this.scalarAttributesTEClass, 10);
        this.createEAttribute(this.scalarAttributesTEClass, 11);
        this.createEAttribute(this.scalarAttributesTEClass, 12);
        this.createEAttribute(this.scalarAttributesTEClass, 13);
        this.createEAttribute(this.scalarAttributesTEClass, 14);
        this.scalarTypeTypeEClass = this.createEClass(67);
        this.createEReference(this.scalarTypeTypeEClass, 0);
        this.createEReference(this.scalarTypeTypeEClass, 1);
        this.signalTypeEClass = this.createEClass(68);
        this.createEReference(this.signalTypeEClass, 11);
        this.sizeTEClass = this.createEClass(69);
        this.createEAttribute(this.sizeTEClass, 0);
        this.createEAttribute(this.sizeTEClass, 1);
        this.sourceObjectTypeEClass = this.createEClass(70);
        this.createEAttribute(this.sourceObjectTypeEClass, 5);
        this.timeStampsTypeEClass = this.createEClass(71);
        this.createEReference(this.timeStampsTypeEClass, 0);
        this.timeStampTEClass = this.createEClass(72);
        this.createEAttribute(this.timeStampTEClass, 0);
        this.createEAttribute(this.timeStampTEClass, 1);
        this.createEAttribute(this.timeStampTEClass, 2);
        this.variableMappingsExternalTypeEClass = this.createEClass(73);
        this.createEAttribute(this.variableMappingsExternalTypeEClass, 0);
        this.createEReference(this.variableMappingsExternalTypeEClass, 1);
        this.variableMappingsInternalTypeEClass = this.createEClass(74);
        this.createEAttribute(this.variableMappingsInternalTypeEClass, 0);
        this.createEReference(this.variableMappingsInternalTypeEClass, 1);
        this.viewTypeEClass = this.createEClass(75);
        this.createEAttribute(this.viewTypeEClass, 0);
        this.basicModelTypeTypeEEnum = this.createEEnum(76);
        this.componentTypeTypeEEnum = this.createEEnum(77);
        this.internalAccessTypeEEnum = this.createEEnum(78);
        this.kindTypeEEnum = this.createEEnum(79);
        this.modelTypeTypeEEnum = this.createEEnum(80);
        this.scopeTypeEEnum = this.createEEnum(81);
        this.specificationTypeTypeEEnum = this.createEEnum(82);
        this.typeTypeEEnum = this.createEEnum(83);
        this.typeType1EEnum = this.createEEnum(84);
        this.basicModelTypeTypeObjectEDataType = this.createEDataType(85);
        this.componentTypeTypeObjectEDataType = this.createEDataType(86);
        this.indexTypeEDataType = this.createEDataType(87);
        this.internalAccessTypeObjectEDataType = this.createEDataType(88);
        this.kindTypeObjectEDataType = this.createEDataType(89);
        this.modelTypeTypeObjectEDataType = this.createEDataType(90);
        this.numberOrFractionEDataType = this.createEDataType(91);
        this.numberOrFractionMember1EDataType = this.createEDataType(92);
        this.nzqrEDataType = this.createEDataType(93);
        this.nzqrMember2EDataType = this.createEDataType(94);
        this.oidEDataType = this.createEDataType(95);
        this.scopeTypeObjectEDataType = this.createEDataType(96);
        this.specificationTypeTypeObjectEDataType = this.createEDataType(97);
        this.typeTypeObjectEDataType = this.createEDataType(98);
        this.typeTypeObject1EDataType = this.createEDataType(99);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("ComponentMain");
        this.setNsPrefix("ComponentMain");
        this.setNsURI("http://www.etas.com/ascet/amd/620/component_main");
        XMLTypePackage theXMLTypePackage = (XMLTypePackage)EPackage.Registry.INSTANCE.getEPackage("http://www.eclipse.org/emf/2003/XMLType");
        XmldsigPackage theXmldsigPackage = (XmldsigPackage)EPackage.Registry.INSTANCE.getEPackage("http://www.w3.org/2000/09/xmldsig#");
        this.asap2ItemTypeEClass.getESuperTypes().add((Object)this.getItemT());
        this.atomicSoftwareComponentTEClass.getESuperTypes().add((Object)this.getComponentT());
        this.complexAttributesTEClass.getESuperTypes().add((Object)this.getAttributesBaseT());
        this.componentTEClass.getESuperTypes().add((Object)this.getItemT());
        this.containerTypeEClass.getESuperTypes().add((Object)this.getItemT());
        this.dataInterfaceTEClass.getESuperTypes().add((Object)this.getItemT());
        this.dimensionalAttributesTEClass.getESuperTypes().add((Object)this.getPrimitiveAttributesBaseT());
        this.elementMappingTypeEClass.getESuperTypes().add((Object)this.getMappingObjectT());
        this.elementMappingType1EClass.getESuperTypes().add((Object)this.getExternalMappingObjectT());
        this.elementMappingType2EClass.getESuperTypes().add((Object)this.getMappingObjectT());
        this.enumerationAttributesTEClass.getESuperTypes().add((Object)this.getPrimitiveAttributesBaseT());
        this.enumerationTypeEClass.getESuperTypes().add((Object)this.getItemT());
        this.genericComponentTEClass.getESuperTypes().add((Object)this.getComponentT());
        this.imageTypeEClass.getESuperTypes().add((Object)this.getItemT());
        this.itemTEClass.getESuperTypes().add((Object)this.getItemBaseT());
        this.methodInterfaceTEClass.getESuperTypes().add((Object)this.getItemT());
        this.methodSignatureTEClass.getESuperTypes().add((Object)this.getMethodBaseT());
        this.methodTEClass.getESuperTypes().add((Object)this.getMethodBaseT());
        this.modeGroupTypeEClass.getESuperTypes().add((Object)this.getItemT());
        this.primitiveAttributesBaseTEClass.getESuperTypes().add((Object)this.getAttributesBaseT());
        this.realizedElementTEClass.getESuperTypes().add((Object)this.getElementT());
        this.realizedMethodBaseTEClass.getESuperTypes().add((Object)this.getMethodBaseT());
        this.realizedMethodTEClass.getESuperTypes().add((Object)this.getRealizedMethodBaseT());
        this.realizedReturnTEClass.getESuperTypes().add((Object)this.getReturnT());
        this.realizedRunnableTEClass.getESuperTypes().add((Object)this.getRealizedMethodT());
        this.recordAttributesTEClass.getESuperTypes().add((Object)this.getComplexAttributesT());
        this.runnableTEClass.getESuperTypes().add((Object)this.getMethodBaseT());
        this.scalarAttributesTEClass.getESuperTypes().add((Object)this.getPrimitiveAttributesBaseT());
        this.signalTypeEClass.getESuperTypes().add((Object)this.getItemT());
        this.sourceObjectTypeEClass.getESuperTypes().add((Object)this.getMappingItemT());
        this.initEClass(this.accessModesTEClass, AccessModesT.class, "AccessModesT", false, false, true);
        this.initEAttribute(this.getAccessModesT_Import(), (EClassifier)theXMLTypePackage.getBoolean(), "import", null, 0, 1, AccessModesT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getAccessModesT_Read(), (EClassifier)theXMLTypePackage.getBoolean(), "read", null, 0, 1, AccessModesT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getAccessModesT_Write(), (EClassifier)theXMLTypePackage.getBoolean(), "write", null, 0, 1, AccessModesT.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.argumentsComplexTypeEClass, ArgumentsComplexType.class, "ArgumentsComplexType", false, false, true);
        this.initEReference(this.getArgumentsComplexType_Argument(), (EClassifier)this.getElementT(), null, "argument", null, 1, -1, ArgumentsComplexType.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.argumentsTypeEClass, ArgumentsType.class, "ArgumentsType", false, false, true);
        this.initEReference(this.getArgumentsType_Argument(), (EClassifier)this.getRealizedElementT(), null, "argument", null, 1, -1, ArgumentsType.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.asap2ItemTypeEClass, Asap2ItemType.class, "Asap2ItemType", false, false, true);
        this.initEReference(this.getAsap2ItemType_File(), (EClassifier)this.getFileReferenceT(), null, "file", null, 0, 1, Asap2ItemType.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getAsap2ItemType_OriginalLocation(), (EClassifier)theXMLTypePackage.getString(), "originalLocation", null, 1, 1, Asap2ItemType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.atomicSoftwareComponentTEClass, AtomicSoftwareComponentT.class, "AtomicSoftwareComponentT", false, false, true);
        this.initEReference(this.getAtomicSoftwareComponentT_ParameterMappings(), (EClassifier)this.getParameterMappingsType(), null, "parameterMappings", null, 0, 1, AtomicSoftwareComponentT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getAtomicSoftwareComponentT_VariableMappingsInternal(), (EClassifier)this.getVariableMappingsInternalType(), null, "variableMappingsInternal", null, 0, 1, AtomicSoftwareComponentT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getAtomicSoftwareComponentT_VariableMappingsExternal(), (EClassifier)this.getVariableMappingsExternalType(), null, "variableMappingsExternal", null, 0, 1, AtomicSoftwareComponentT.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getAtomicSoftwareComponentT_Category(), (EClassifier)theXMLTypePackage.getString(), "category", null, 0, 1, AtomicSoftwareComponentT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getAtomicSoftwareComponentT_SupportsMultipleInstantiation(), (EClassifier)theXMLTypePackage.getBoolean(), "supportsMultipleInstantiation", null, 1, 1, AtomicSoftwareComponentT.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.attributesBaseTEClass, AttributesBaseT.class, "AttributesBaseT", false, false, true);
        this.initEAttribute(this.getAttributesBaseT_Direct(), (EClassifier)theXMLTypePackage.getBoolean(), "direct", null, 0, 1, AttributesBaseT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getAttributesBaseT_Get(), (EClassifier)theXMLTypePackage.getBoolean(), "get", "false", 0, 1, AttributesBaseT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getAttributesBaseT_Read(), (EClassifier)theXMLTypePackage.getBoolean(), "read", null, 0, 1, AttributesBaseT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getAttributesBaseT_Scope(), (EClassifier)this.getScopeType(), "scope", null, 1, 1, AttributesBaseT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getAttributesBaseT_Set(), (EClassifier)theXMLTypePackage.getBoolean(), "set", "false", 0, 1, AttributesBaseT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getAttributesBaseT_Write(), (EClassifier)theXMLTypePackage.getBoolean(), "write", null, 0, 1, AttributesBaseT.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.colorTEClass, ColorT.class, "ColorT", false, false, true);
        this.initEAttribute(this.getColorT_Blue(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "blue", null, 1, 1, ColorT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getColorT_Green(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "green", null, 1, 1, ColorT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getColorT_Red(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "red", null, 1, 1, ColorT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.complexAttributesTEClass, ComplexAttributesT.class, "ComplexAttributesT", false, false, true);
        this.initEAttribute(this.getComplexAttributesT_ComponentID(), (EClassifier)this.getOID(), "componentID", null, 0, 1, ComplexAttributesT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getComplexAttributesT_ComponentName(), (EClassifier)theXMLTypePackage.getString(), "componentName", null, 1, 1, ComplexAttributesT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getComplexAttributesT_Kind(), (EClassifier)this.getKindType(), "kind", null, 0, 1, ComplexAttributesT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getComplexAttributesT_Queued(), (EClassifier)theXMLTypePackage.getBoolean(), "queued", null, 0, 1, ComplexAttributesT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getComplexAttributesT_Reference(), (EClassifier)theXMLTypePackage.getBoolean(), "reference", null, 0, 1, ComplexAttributesT.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.complexTypeTypeEClass, ComplexTypeType.class, "ComplexTypeType", false, false, true);
        this.initEReference(this.getComplexTypeType_ComplexAttributes(), (EClassifier)this.getComplexAttributesT(), null, "complexAttributes", null, 0, 1, ComplexTypeType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getComplexTypeType_RecordAttributes(), (EClassifier)this.getRecordAttributesT(), null, "recordAttributes", null, 0, 1, ComplexTypeType.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.componentMainTypeEClass, ComponentMainType.class, "ComponentMainType", false, false, true);
        this.initEReference(this.getComponentMainType_Component(), (EClassifier)this.getComponentT(), null, "component", null, 0, 1, ComponentMainType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getComponentMainType_GenericComponent(), (EClassifier)this.getGenericComponentT(), null, "genericComponent", null, 0, 1, ComponentMainType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getComponentMainType_AtomicSoftwareComponent(), (EClassifier)this.getAtomicSoftwareComponentT(), null, "atomicSoftwareComponent", null, 0, 1, ComponentMainType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getComponentMainType_Enumeration(), (EClassifier)this.getEnumerationType(), null, "enumeration", null, 0, 1, ComponentMainType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getComponentMainType_ModeGroup(), (EClassifier)this.getModeGroupType(), null, "modeGroup", null, 0, 1, ComponentMainType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getComponentMainType_Image(), (EClassifier)this.getImageType(), null, "image", null, 0, 1, ComponentMainType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getComponentMainType_Signal(), (EClassifier)this.getSignalType(), null, "signal", null, 0, 1, ComponentMainType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getComponentMainType_Asap2Item(), (EClassifier)this.getAsap2ItemType(), null, "asap2Item", null, 0, 1, ComponentMainType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getComponentMainType_Container(), (EClassifier)this.getContainerType(), null, "container", null, 0, 1, ComponentMainType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getComponentMainType_Folder(), (EClassifier)this.getItemBaseT(), null, "folder", null, 0, 1, ComponentMainType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getComponentMainType_Signature(), (EClassifier)theXmldsigPackage.getSignatureType(), null, "signature", null, 0, 1, ComponentMainType.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getComponentMainType_SchemaVersion(), (EClassifier)theXMLTypePackage.getString(), "schemaVersion", null, 0, 1, ComponentMainType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getComponentMainType_ToolVersion(), (EClassifier)theXMLTypePackage.getString(), "toolVersion", null, 0, 1, ComponentMainType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.componentTEClass, ComponentT.class, "ComponentT", false, false, true);
        this.initEReference(this.getComponentT_Elements(), (EClassifier)this.getElementsType(), null, "elements", null, 1, 1, ComponentT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getComponentT_MethodSignatures(), (EClassifier)this.getMethodSignaturesType1(), null, "methodSignatures", null, 1, 1, ComponentT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getComponentT_TimeStamps(), (EClassifier)this.getTimeStampsType(), null, "timeStamps", null, 0, 1, ComponentT.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getComponentT_ChecksumGeneral(), (EClassifier)theXMLTypePackage.getDouble(), "checksumGeneral", null, 0, 1, ComponentT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getComponentT_ChecksumPublicInterface(), (EClassifier)theXMLTypePackage.getDouble(), "checksumPublicInterface", null, 0, 1, ComponentT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getComponentT_DefaultProjectName(), (EClassifier)theXMLTypePackage.getAnySimpleType(), "defaultProjectName", null, 0, 1, ComponentT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getComponentT_DefaultProjectOID(), (EClassifier)theXMLTypePackage.getAnySimpleType(), "defaultProjectOID", null, 0, 1, ComponentT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getComponentT_SpecificationType(), (EClassifier)this.getSpecificationTypeType(), "specificationType", "Unknown", 0, 1, ComponentT.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.configurationManagementTEClass, ConfigurationManagementT.class, "ConfigurationManagementT", false, false, true);
        this.initEReference(this.getConfigurationManagementT_GenericData(), (EClassifier)this.getGenericDataT(), null, "genericData", null, 0, -1, ConfigurationManagementT.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getConfigurationManagementT_ConfigurationID(), (EClassifier)theXMLTypePackage.getAnySimpleType(), "configurationID", null, 0, 1, ConfigurationManagementT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getConfigurationManagementT_Edition(), (EClassifier)theXMLTypePackage.getAnySimpleType(), "edition", null, 0, 1, ConfigurationManagementT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getConfigurationManagementT_VersionID(), (EClassifier)theXMLTypePackage.getString(), "versionID", null, 0, 1, ConfigurationManagementT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.containerTypeEClass, ContainerType.class, "ContainerType", false, false, true);
        this.initEReference(this.getContainerType_Item(), (EClassifier)this.getItemType(), null, "item", null, 0, -1, ContainerType.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.customerSpecificAttributesTypeEClass, CustomerSpecificAttributesType.class, "CustomerSpecificAttributesType", false, false, true);
        this.initEReference(this.getCustomerSpecificAttributesType_ConfigurationManagement(), (EClassifier)this.getConfigurationManagementT(), null, "configurationManagement", null, 0, 1, CustomerSpecificAttributesType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getCustomerSpecificAttributesType_RequirementsManagement(), (EClassifier)this.getRequirementsManagementT(), null, "requirementsManagement", null, 0, 1, CustomerSpecificAttributesType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getCustomerSpecificAttributesType_AccessManagement(), (EClassifier)this.getAccessModesT(), null, "accessManagement", null, 0, 1, CustomerSpecificAttributesType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getCustomerSpecificAttributesType_CustomerData(), (EClassifier)this.getGenericDataT(), null, "customerData", null, 0, -1, CustomerSpecificAttributesType.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.dataInterfaceTEClass, DataInterfaceT.class, "DataInterfaceT", false, false, true);
        this.initEReference(this.getDataInterfaceT_Elements(), (EClassifier)this.getElementsType(), null, "elements", null, 1, 1, DataInterfaceT.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getDataInterfaceT_ChecksumGeneral(), (EClassifier)theXMLTypePackage.getDouble(), "checksumGeneral", null, 0, 1, DataInterfaceT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getDataInterfaceT_ChecksumPublicInterface(), (EClassifier)theXMLTypePackage.getDouble(), "checksumPublicInterface", null, 0, 1, DataInterfaceT.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.dimensionalAttributesTEClass, DimensionalAttributesT.class, "DimensionalAttributesT", false, false, true);
        this.initEReference(this.getDimensionalAttributesT_Formula(), (EClassifier)this.getFormulaType(), null, "formula", null, 0, 1, DimensionalAttributesT.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getDimensionalAttributesT_Dependent(), (EClassifier)theXMLTypePackage.getBoolean(), "dependent", null, 1, 1, DimensionalAttributesT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getDimensionalAttributesT_Reference(), (EClassifier)theXMLTypePackage.getBoolean(), "reference", null, 0, 1, DimensionalAttributesT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getDimensionalAttributesT_Virtual(), (EClassifier)theXMLTypePackage.getBoolean(), "virtual", null, 1, 1, DimensionalAttributesT.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.dimensionalTypeTypeEClass, DimensionalTypeType.class, "DimensionalTypeType", false, false, true);
        this.initEReference(this.getDimensionalTypeType_DimensionalAttributes(), (EClassifier)this.getDimensionalAttributesT(), null, "dimensionalAttributes", null, 1, 1, DimensionalTypeType.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getDimensionalTypeType_Interpolation(), (EClassifier)theXMLTypePackage.getString(), "interpolation", null, 0, 1, DimensionalTypeType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getDimensionalTypeType_MaxSizeX(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "maxSizeX", null, 1, 1, DimensionalTypeType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getDimensionalTypeType_MaxSizeY(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "maxSizeY", null, 0, 1, DimensionalTypeType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getDimensionalTypeType_Type(), (EClassifier)this.getTypeType1(), "type", null, 0, 1, DimensionalTypeType.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getDimensionalTypeType_XDistributionName(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "xDistributionName", null, 0, 1, DimensionalTypeType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getDimensionalTypeType_XDistributionOID(), (EClassifier)theXMLTypePackage.getString(), "xDistributionOID", null, 0, 1, DimensionalTypeType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getDimensionalTypeType_XSizeVariantElementName(), (EClassifier)theXMLTypePackage.getString(), "xSizeVariantElementName", null, 0, 1, DimensionalTypeType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getDimensionalTypeType_XSizeVariantElementOID(), (EClassifier)theXMLTypePackage.getString(), "xSizeVariantElementOID", null, 0, 1, DimensionalTypeType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getDimensionalTypeType_YDistributionName(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "yDistributionName", null, 0, 1, DimensionalTypeType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getDimensionalTypeType_YDistributionOID(), (EClassifier)theXMLTypePackage.getString(), "yDistributionOID", null, 0, 1, DimensionalTypeType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getDimensionalTypeType_YSizeVariantElementName(), (EClassifier)theXMLTypePackage.getString(), "ySizeVariantElementName", null, 0, 1, DimensionalTypeType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getDimensionalTypeType_YSizeVariantElementOID(), (EClassifier)theXMLTypePackage.getString(), "ySizeVariantElementOID", null, 0, 1, DimensionalTypeType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.documentRootEClass, DocumentRoot.class, "DocumentRoot", false, false, true);
        this.initEAttribute(this.getDocumentRoot_Mixed(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "mixed", null, 0, -1, null, false, false, true, false, false, false, false, true);
        this.initEReference(this.getDocumentRoot_XMLNSPrefixMap(), (EClassifier)this.ecorePackage.getEStringToStringMapEntry(), null, "xMLNSPrefixMap", null, 0, -1, null, true, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDocumentRoot_XSISchemaLocation(), (EClassifier)this.ecorePackage.getEStringToStringMapEntry(), null, "xSISchemaLocation", null, 0, -1, null, true, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDocumentRoot_ComponentMain(), (EClassifier)this.getComponentMainType(), null, "componentMain", null, 0, -2, null, true, true, true, true, false, false, true, true, true);
        this.initEClass(this.elementAttributesTEClass, ElementAttributesT.class, "ElementAttributesT", false, false, true);
        this.initEReference(this.getElementAttributesT_ScalarType(), (EClassifier)this.getScalarTypeType(), null, "scalarType", null, 0, 1, ElementAttributesT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getElementAttributesT_ComplexType(), (EClassifier)this.getComplexTypeType(), null, "complexType", null, 0, 1, ElementAttributesT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getElementAttributesT_DimensionalType(), (EClassifier)this.getDimensionalTypeType(), null, "dimensionalType", null, 0, 1, ElementAttributesT.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getElementAttributesT_BasicModelType(), (EClassifier)this.getBasicModelTypeType(), "basicModelType", null, 1, 1, ElementAttributesT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getElementAttributesT_ModelType(), (EClassifier)this.getModelTypeType(), "modelType", null, 1, 1, ElementAttributesT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getElementAttributesT_Unit(), (EClassifier)theXMLTypePackage.getString(), "unit", null, 0, 1, ElementAttributesT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.elementMappingTypeEClass, ElementMappingType.class, "ElementMappingType", false, false, true);
        this.initEAttribute(this.getElementMappingType_ElementName(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "elementName", null, 1, 1, ElementMappingType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.elementMappingType1EClass, ElementMappingType1.class, "ElementMappingType1", false, false, true);
        this.initEAttribute(this.getElementMappingType1_ElementName(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "elementName", null, 1, 1, ElementMappingType1.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.elementMappingType2EClass, ElementMappingType2.class, "ElementMappingType2", false, false, true);
        this.initEAttribute(this.getElementMappingType2_ElementName(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "elementName", null, 1, 1, ElementMappingType2.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.elementsTypeEClass, ElementsType.class, "ElementsType", false, false, true);
        this.initEReference(this.getElementsType_Element(), (EClassifier)this.getElementT(), null, "element", null, 0, -1, ElementsType.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.elementTEClass, ElementT.class, "ElementT", false, false, true);
        this.initEReference(this.getElementT_Comment(), (EClassifier)this.getFormattedTextT(), null, "comment", null, 1, 1, ElementT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getElementT_ElementAttributes(), (EClassifier)this.getElementAttributesT(), null, "elementAttributes", null, 1, 1, ElementT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getElementT_CustomerData(), (EClassifier)this.getGenericDataT(), null, "customerData", null, 0, -1, ElementT.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getElementT_Ignore(), (EClassifier)theXMLTypePackage.getString(), "ignore", "false", 0, 1, ElementT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getElementT_Name(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "name", null, 1, 1, ElementT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getElementT_OID(), (EClassifier)theXMLTypePackage.getID(), "oID", null, 0, 1, ElementT.class, false, false, true, false, true, true, false, true);
        this.initEAttribute(this.getElementT_UUID(), (EClassifier)theXMLTypePackage.getString(), "uUID", null, 0, 1, ElementT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.enumerationAttributesTEClass, EnumerationAttributesT.class, "EnumerationAttributesT", false, false, true);
        this.initEAttribute(this.getEnumerationAttributesT_EnumerationName(), (EClassifier)theXMLTypePackage.getString(), "enumerationName", null, 1, 1, EnumerationAttributesT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getEnumerationAttributesT_EnumerationOID(), (EClassifier)this.getOID(), "enumerationOID", null, 0, 1, EnumerationAttributesT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getEnumerationAttributesT_Explicit(), (EClassifier)theXMLTypePackage.getAnySimpleType(), "explicit", null, 0, 1, EnumerationAttributesT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.enumerationTypeEClass, EnumerationType.class, "EnumerationType", false, false, true);
        this.initEReference(this.getEnumerationType_Enumerator(), (EClassifier)this.getEnumeratorT(), null, "enumerator", null, 1, -1, EnumerationType.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.enumeratorTEClass, EnumeratorT.class, "EnumeratorT", false, false, true);
        this.initEAttribute(this.getEnumeratorT_Index(), (EClassifier)this.getIndexType(), "index", null, 1, 1, EnumeratorT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getEnumeratorT_Value(), (EClassifier)theXMLTypePackage.getString(), "value", null, 1, 1, EnumeratorT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.externalMappingObjectTEClass, ExternalMappingObjectT.class, "ExternalMappingObjectT", false, false, true);
        this.initEReference(this.getExternalMappingObjectT_SourceObject(), (EClassifier)this.getSourceObjectType(), null, "sourceObject", null, 1, 1, ExternalMappingObjectT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getExternalMappingObjectT_TargetObject(), (EClassifier)this.getMappingItemT(), null, "targetObject", null, 0, 1, ExternalMappingObjectT.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.fileReferenceTEClass, FileReferenceT.class, "FileReferenceT", false, false, true);
        this.initEAttribute(this.getFileReferenceT_Value(), (EClassifier)theXMLTypePackage.getString(), "value", null, 0, 1, FileReferenceT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getFileReferenceT_Checksum(), (EClassifier)theXMLTypePackage.getHexBinary(), "checksum", null, 0, 1, FileReferenceT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getFileReferenceT_Type(), (EClassifier)this.getTypeType(), "type", null, 1, 1, FileReferenceT.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.formalTypeEClass, FormalType.class, "FormalType", false, false, true);
        this.initEAttribute(this.getFormalType_Name(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "name", null, 1, 1, FormalType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getFormalType_OID(), (EClassifier)theXMLTypePackage.getString(), "oID", null, 0, 1, FormalType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.formattedTextTEClass, FormattedTextT.class, "FormattedTextT", false, false, true);
        this.initEAttribute(this.getFormattedTextT_Value(), (EClassifier)theXMLTypePackage.getString(), "value", null, 0, 1, FormattedTextT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.formulaTypeEClass, FormulaType.class, "FormulaType", false, false, true);
        this.initEReference(this.getFormulaType_Formal(), (EClassifier)this.getFormalType(), null, "formal", null, 0, -1, FormulaType.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getFormulaType_Code(), (EClassifier)theXMLTypePackage.getString(), "code", null, 1, 1, FormulaType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.genericComponentTEClass, GenericComponentT.class, "GenericComponentT", false, false, true);
        this.initEAttribute(this.getGenericComponentT_FactoryKey(), (EClassifier)theXMLTypePackage.getString(), "factoryKey", null, 1, 1, GenericComponentT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getGenericComponentT_IconName(), (EClassifier)theXMLTypePackage.getString(), "iconName", null, 1, 1, GenericComponentT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.genericDataTEClass, GenericDataT.class, "GenericDataT", false, false, true);
        this.initEAttribute(this.getGenericDataT_Any(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "any", null, 1, -1, GenericDataT.class, false, false, true, false, false, false, false, true);
        this.initEAttribute(this.getGenericDataT_Name(), (EClassifier)theXMLTypePackage.getString(), "name", null, 0, 1, GenericDataT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.iconTEClass, IconT.class, "IconT", false, false, true);
        this.initEReference(this.getIconT_IconFile(), (EClassifier)this.getFileReferenceT(), null, "iconFile", null, 0, 1, IconT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getIconT_Size(), (EClassifier)this.getSizeT(), null, "size", null, 1, 1, IconT.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getIconT_IconName(), (EClassifier)theXMLTypePackage.getString(), "iconName", null, 0, 1, IconT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getIconT_IconOID(), (EClassifier)this.getOID(), "iconOID", null, 0, 1, IconT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.imageTypeEClass, ImageType.class, "ImageType", false, false, true);
        this.initEReference(this.getImageType_File(), (EClassifier)this.getFileReferenceT(), null, "file", null, 1, 1, ImageType.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.intervalTEClass, IntervalT.class, "IntervalT", false, false, true);
        this.initEAttribute(this.getIntervalT_Max(), (EClassifier)this.getNzqr(), "max", null, 1, 1, IntervalT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getIntervalT_Min(), (EClassifier)this.getNzqr(), "min", null, 1, 1, IntervalT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.itemBaseTEClass, ItemBaseT.class, "ItemBaseT", false, false, true);
        this.initEReference(this.getItemBaseT_TimeStamp(), (EClassifier)this.getTimeStampT(), null, "timeStamp", null, 0, 1, ItemBaseT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getItemBaseT_Comment(), (EClassifier)this.getFormattedTextT(), null, "comment", null, 0, 1, ItemBaseT.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getItemBaseT_Checksum(), (EClassifier)theXMLTypePackage.getHexBinary(), "checksum", null, 0, 1, ItemBaseT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getItemBaseT_ComponentType(), (EClassifier)this.getComponentTypeType(), "componentType", null, 1, 1, ItemBaseT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getItemBaseT_Name(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "name", null, 1, 1, ItemBaseT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getItemBaseT_NameSpace(), (EClassifier)theXMLTypePackage.getString(), "nameSpace", null, 1, 1, ItemBaseT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getItemBaseT_OID(), (EClassifier)this.getOID(), "oID", null, 0, 1, ItemBaseT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getItemBaseT_TimeStamp1(), (EClassifier)theXMLTypePackage.getDateTime(), "timeStamp1", null, 0, 1, ItemBaseT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getItemBaseT_UUID(), (EClassifier)theXMLTypePackage.getString(), "uUID", null, 0, 1, ItemBaseT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.itemRefTEClass, ItemRefT.class, "ItemRefT", false, false, true);
        this.initEAttribute(this.getItemRefT_Name(), (EClassifier)theXMLTypePackage.getString(), "name", null, 1, 1, ItemRefT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getItemRefT_OID(), (EClassifier)this.getOID(), "oID", null, 0, 1, ItemRefT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.itemTEClass, ItemT.class, "ItemT", false, false, true);
        this.initEReference(this.getItemT_Notes(), (EClassifier)this.getNotesT(), null, "notes", null, 0, 1, ItemT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getItemT_CustomerSpecificAttributes(), (EClassifier)this.getCustomerSpecificAttributesType(), null, "customerSpecificAttributes", null, 0, 1, ItemT.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.itemTypeEClass, ItemType.class, "ItemType", false, false, true);
        this.initEAttribute(this.getItemType_ItemName(), (EClassifier)theXMLTypePackage.getString(), "itemName", null, 1, 1, ItemType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getItemType_ItemOID(), (EClassifier)this.getOID(), "itemOID", null, 0, 1, ItemType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.localsComplexTypeEClass, LocalsComplexType.class, "LocalsComplexType", false, false, true);
        this.initEReference(this.getLocalsComplexType_Local(), (EClassifier)this.getElementT(), null, "local", null, 1, -1, LocalsComplexType.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.mappingItemTEClass, MappingItemT.class, "MappingItemT", false, false, true);
        this.initEAttribute(this.getMappingItemT_DisplayName(), (EClassifier)theXMLTypePackage.getString(), "displayName", null, 1, 1, MappingItemT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getMappingItemT_ElementName(), (EClassifier)theXMLTypePackage.getString(), "elementName", null, 0, 1, MappingItemT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getMappingItemT_ElementOID(), (EClassifier)theXMLTypePackage.getString(), "elementOID", null, 0, 1, MappingItemT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getMappingItemT_ModelName(), (EClassifier)theXMLTypePackage.getString(), "modelName", null, 0, 1, MappingItemT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getMappingItemT_ModelOID(), (EClassifier)theXMLTypePackage.getString(), "modelOID", null, 0, 1, MappingItemT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.mappingObjectTEClass, MappingObjectT.class, "MappingObjectT", false, false, true);
        this.initEReference(this.getMappingObjectT_SourceObject(), (EClassifier)this.getMappingItemT(), null, "sourceObject", null, 1, 1, MappingObjectT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getMappingObjectT_TargetObject(), (EClassifier)this.getMappingItemT(), null, "targetObject", null, 0, 1, MappingObjectT.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.methodBaseTEClass, MethodBaseT.class, "MethodBaseT", false, false, true);
        this.initEReference(this.getMethodBaseT_CustomerData(), (EClassifier)this.getGenericDataT(), null, "customerData", null, 0, -1, MethodBaseT.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getMethodBaseT_AvailableForOS(), (EClassifier)theXMLTypePackage.getBoolean(), "availableForOS", null, 0, 1, MethodBaseT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getMethodBaseT_Default(), (EClassifier)theXMLTypePackage.getAnySimpleType(), "default", null, 1, 1, MethodBaseT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getMethodBaseT_DefaultMethod(), (EClassifier)theXMLTypePackage.getBoolean(), "defaultMethod", null, 0, 1, MethodBaseT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getMethodBaseT_Hidden(), (EClassifier)theXMLTypePackage.getBoolean(), "hidden", null, 0, 1, MethodBaseT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getMethodBaseT_Name(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "name", null, 1, 1, MethodBaseT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getMethodBaseT_OID(), (EClassifier)theXMLTypePackage.getID(), "oID", null, 0, 1, MethodBaseT.class, false, false, true, false, true, true, false, true);
        this.initEAttribute(this.getMethodBaseT_Public(), (EClassifier)theXMLTypePackage.getBoolean(), "public", null, 1, 1, MethodBaseT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getMethodBaseT_ReinitializeMethod(), (EClassifier)theXMLTypePackage.getBoolean(), "reinitializeMethod", null, 0, 1, MethodBaseT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getMethodBaseT_UUID(), (EClassifier)theXMLTypePackage.getString(), "uUID", null, 0, 1, MethodBaseT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.methodInterfaceTEClass, MethodInterfaceT.class, "MethodInterfaceT", false, false, true);
        this.initEReference(this.getMethodInterfaceT_MethodSignatures(), (EClassifier)this.getMethodSignaturesType(), null, "methodSignatures", null, 1, 1, MethodInterfaceT.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getMethodInterfaceT_ChecksumGeneral(), (EClassifier)theXMLTypePackage.getDouble(), "checksumGeneral", null, 0, 1, MethodInterfaceT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getMethodInterfaceT_ChecksumPublicInterface(), (EClassifier)theXMLTypePackage.getDouble(), "checksumPublicInterface", null, 0, 1, MethodInterfaceT.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.methodSignaturesTypeEClass, MethodSignaturesType.class, "MethodSignaturesType", false, false, true);
        this.initEAttribute(this.getMethodSignaturesType_Group(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "group", null, 0, -1, MethodSignaturesType.class, false, false, true, false, false, false, false, true);
        this.initEReference(this.getMethodSignaturesType_MethodSignature(), (EClassifier)this.getMethodSignatureT(), null, "methodSignature", null, 0, -1, MethodSignaturesType.class, true, true, true, true, false, false, true, true, true);
        this.initEClass(this.methodSignaturesType1EClass, MethodSignaturesType1.class, "MethodSignaturesType1", false, false, true);
        this.initEAttribute(this.getMethodSignaturesType1_Group(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "group", null, 0, -1, MethodSignaturesType1.class, false, false, true, false, false, false, false, true);
        this.initEReference(this.getMethodSignaturesType1_RunnableSignature(), (EClassifier)this.getRunnableT(), null, "runnableSignature", null, 0, -1, MethodSignaturesType1.class, true, true, true, true, false, false, true, true, true);
        this.initEReference(this.getMethodSignaturesType1_RealizedRunnableSignature(), (EClassifier)this.getRealizedRunnableT(), null, "realizedRunnableSignature", null, 0, -1, MethodSignaturesType1.class, true, true, true, true, false, false, true, true, true);
        this.initEReference(this.getMethodSignaturesType1_MethodSignature(), (EClassifier)this.getMethodT(), null, "methodSignature", null, 0, -1, MethodSignaturesType1.class, true, true, true, true, false, false, true, true, true);
        this.initEReference(this.getMethodSignaturesType1_RealizedMethodSignature(), (EClassifier)this.getRealizedMethodT(), null, "realizedMethodSignature", null, 0, -1, MethodSignaturesType1.class, true, true, true, true, false, false, true, true, true);
        this.initEClass(this.methodSignatureTEClass, MethodSignatureT.class, "MethodSignatureT", false, false, true);
        this.initEReference(this.getMethodSignatureT_Arguments(), (EClassifier)this.getArgumentsComplexType(), null, "arguments", null, 0, 1, MethodSignatureT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getMethodSignatureT_Return(), (EClassifier)this.getReturnT(), null, "return", null, 0, 1, MethodSignatureT.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.methodTEClass, MethodT.class, "MethodT", false, false, true);
        this.initEReference(this.getMethodT_Arguments(), (EClassifier)this.getArgumentsComplexType(), null, "arguments", null, 0, 1, MethodT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getMethodT_Return(), (EClassifier)this.getReturnT(), null, "return", null, 0, 1, MethodT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getMethodT_Locals(), (EClassifier)this.getLocalsComplexType(), null, "locals", null, 0, 1, MethodT.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.modeGroupTypeEClass, ModeGroupType.class, "ModeGroupType", false, false, true);
        this.initEReference(this.getModeGroupType_Mode(), (EClassifier)this.getEnumeratorT(), null, "mode", null, 1, -1, ModeGroupType.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getModeGroupType_DefaultMode(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "defaultMode", null, 0, 1, ModeGroupType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.notesTEClass, NotesT.class, "NotesT", false, false, true);
        this.initEReference(this.getNotesT_Note(), (EClassifier)this.getNoteType(), null, "note", null, 0, -1, NotesT.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.noteTypeEClass, NoteType.class, "NoteType", false, false, true);
        this.initEReference(this.getNoteType_Text(), (EClassifier)this.getFormattedTextT(), null, "text", null, 0, 1, NoteType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getNoteType_View(), (EClassifier)this.getViewType(), null, "view", null, 0, -1, NoteType.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getNoteType_Name(), (EClassifier)theXMLTypePackage.getString(), "name", null, 0, 1, NoteType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.optionTEClass, OptionT.class, "OptionT", false, false, true);
        this.initEAttribute(this.getOptionT_Name(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "name", null, 1, 1, OptionT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getOptionT_Type(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "type", null, 0, 1, OptionT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getOptionT_Value(), (EClassifier)theXMLTypePackage.getAnySimpleType(), "value", null, 1, 1, OptionT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.parameterMappingsTypeEClass, ParameterMappingsType.class, "ParameterMappingsType", false, false, true);
        this.initEAttribute(this.getParameterMappingsType_Group(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "group", null, 0, -1, ParameterMappingsType.class, false, false, true, false, false, false, false, true);
        this.initEReference(this.getParameterMappingsType_ElementMapping(), (EClassifier)this.getElementMappingType2(), null, "elementMapping", null, 0, -1, ParameterMappingsType.class, true, true, true, true, false, false, true, true, true);
        this.initEClass(this.pointTEClass, PointT.class, "PointT", false, false, true);
        this.initEAttribute(this.getPointT_X(), (EClassifier)theXMLTypePackage.getInteger(), "x", null, 1, 1, PointT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getPointT_Y(), (EClassifier)theXMLTypePackage.getInteger(), "y", null, 1, 1, PointT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.primitiveAttributesBaseTEClass, PrimitiveAttributesBaseT.class, "PrimitiveAttributesBaseT", false, false, true);
        this.initEAttribute(this.getPrimitiveAttributesBaseT_CalibrationRead(), (EClassifier)theXMLTypePackage.getBoolean(), "calibrationRead", null, 1, 1, PrimitiveAttributesBaseT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPrimitiveAttributesBaseT_CalibrationWrite(), (EClassifier)theXMLTypePackage.getBoolean(), "calibrationWrite", null, 1, 1, PrimitiveAttributesBaseT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPrimitiveAttributesBaseT_Kind(), (EClassifier)this.getKindType(), "kind", null, 1, 1, PrimitiveAttributesBaseT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPrimitiveAttributesBaseT_Volatile(), (EClassifier)theXMLTypePackage.getBoolean(), "volatile", null, 1, 1, PrimitiveAttributesBaseT.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.realizedElementTEClass, RealizedElementT.class, "RealizedElementT", false, false, true);
        this.initEAttribute(this.getRealizedElementT_MasterElementName(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "masterElementName", null, 1, 1, RealizedElementT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getRealizedElementT_MasterElementOID(), (EClassifier)theXMLTypePackage.getString(), "masterElementOID", null, 0, 1, RealizedElementT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.realizedMethodBaseTEClass, RealizedMethodBaseT.class, "RealizedMethodBaseT", false, false, true);
        this.initEAttribute(this.getRealizedMethodBaseT_InterfaceName(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "interfaceName", null, 1, 1, RealizedMethodBaseT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getRealizedMethodBaseT_InterfaceOID(), (EClassifier)theXMLTypePackage.getString(), "interfaceOID", null, 0, 1, RealizedMethodBaseT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getRealizedMethodBaseT_SignatureName(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "signatureName", null, 1, 1, RealizedMethodBaseT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getRealizedMethodBaseT_SignatureOID(), (EClassifier)theXMLTypePackage.getString(), "signatureOID", null, 0, 1, RealizedMethodBaseT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.realizedMethodTEClass, RealizedMethodT.class, "RealizedMethodT", false, false, true);
        this.initEReference(this.getRealizedMethodT_Arguments(), (EClassifier)this.getArgumentsType(), null, "arguments", null, 0, 1, RealizedMethodT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getRealizedMethodT_Return(), (EClassifier)this.getRealizedReturnT(), null, "return", null, 0, 1, RealizedMethodT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getRealizedMethodT_Locals(), (EClassifier)this.getLocalsComplexType(), null, "locals", null, 0, 1, RealizedMethodT.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.realizedReturnTEClass, RealizedReturnT.class, "RealizedReturnT", false, false, true);
        this.initEAttribute(this.getRealizedReturnT_MasterElementOID(), (EClassifier)theXMLTypePackage.getString(), "masterElementOID", null, 0, 1, RealizedReturnT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.realizedRunnableTEClass, RealizedRunnableT.class, "RealizedRunnableT", false, false, true);
        this.initEAttribute(this.getRealizedRunnableT_CanBeInvokedConcurrently(), (EClassifier)theXMLTypePackage.getBoolean(), "canBeInvokedConcurrently", null, 1, 1, RealizedRunnableT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getRealizedRunnableT_MinimumStartTime(), (EClassifier)theXMLTypePackage.getDouble(), "minimumStartTime", null, 1, 1, RealizedRunnableT.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.recordAttributesTEClass, RecordAttributesT.class, "RecordAttributesT", false, false, true);
        this.initEAttribute(this.getRecordAttributesT_CalibrationRead(), (EClassifier)theXMLTypePackage.getAnySimpleType(), "calibrationRead", null, 0, 1, RecordAttributesT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getRecordAttributesT_CalibrationWrite(), (EClassifier)theXMLTypePackage.getBoolean(), "calibrationWrite", null, 0, 1, RecordAttributesT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getRecordAttributesT_Virtual(), (EClassifier)theXMLTypePackage.getBoolean(), "virtual", null, 0, 1, RecordAttributesT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getRecordAttributesT_Volatile(), (EClassifier)theXMLTypePackage.getBoolean(), "volatile", null, 0, 1, RecordAttributesT.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.requirementsManagementTEClass, RequirementsManagementT.class, "RequirementsManagementT", false, false, true);
        this.initEReference(this.getRequirementsManagementT_GenericData(), (EClassifier)this.getGenericDataT(), null, "genericData", null, 0, 1, RequirementsManagementT.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getRequirementsManagementT_RequirementsID(), (EClassifier)theXMLTypePackage.getString(), "requirementsID", null, 0, 1, RequirementsManagementT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.returnTEClass, ReturnT.class, "ReturnT", false, false, true);
        this.initEReference(this.getReturnT_Comment(), (EClassifier)this.getFormattedTextT(), null, "comment", null, 0, 1, ReturnT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getReturnT_ElementAttributes(), (EClassifier)this.getElementAttributesT(), null, "elementAttributes", null, 1, 1, ReturnT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getReturnT_CustomerData(), (EClassifier)this.getGenericDataT(), null, "customerData", null, 0, -1, ReturnT.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getReturnT_OID(), (EClassifier)theXMLTypePackage.getID(), "oID", null, 0, 1, ReturnT.class, false, false, true, false, true, true, false, true);
        this.initEAttribute(this.getReturnT_UUID(), (EClassifier)theXMLTypePackage.getString(), "uUID", null, 0, 1, ReturnT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.runnableTEClass, RunnableT.class, "RunnableT", false, false, true);
        this.initEReference(this.getRunnableT_Locals(), (EClassifier)this.getLocalsComplexType(), null, "locals", null, 0, 1, RunnableT.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getRunnableT_CanBeInvokedConcurrently(), (EClassifier)theXMLTypePackage.getBoolean(), "canBeInvokedConcurrently", null, 1, 1, RunnableT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getRunnableT_MinimumStartTime(), (EClassifier)theXMLTypePackage.getDouble(), "minimumStartTime", null, 1, 1, RunnableT.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.scalarAttributesTEClass, ScalarAttributesT.class, "ScalarAttributesT", false, false, true);
        this.initEReference(this.getScalarAttributesT_Formula(), (EClassifier)this.getFormulaType(), null, "formula", null, 0, 1, ScalarAttributesT.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getScalarAttributesT_Dependent(), (EClassifier)theXMLTypePackage.getBoolean(), "dependent", null, 1, 1, ScalarAttributesT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getScalarAttributesT_Explicit(), (EClassifier)theXMLTypePackage.getAnySimpleType(), "explicit", null, 0, 1, ScalarAttributesT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getScalarAttributesT_Interrunnable(), (EClassifier)theXMLTypePackage.getBoolean(), "interrunnable", null, 0, 1, ScalarAttributesT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getScalarAttributesT_Virtual(), (EClassifier)theXMLTypePackage.getBoolean(), "virtual", null, 1, 1, ScalarAttributesT.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.scalarTypeTypeEClass, ScalarTypeType.class, "ScalarTypeType", false, false, true);
        this.initEReference(this.getScalarTypeType_ScalarAttributes(), (EClassifier)this.getScalarAttributesT(), null, "scalarAttributes", null, 0, 1, ScalarTypeType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getScalarTypeType_EnumerationAttributes(), (EClassifier)this.getEnumerationAttributesT(), null, "enumerationAttributes", null, 0, 1, ScalarTypeType.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.signalTypeEClass, SignalType.class, "SignalType", false, false, true);
        this.initEReference(this.getSignalType_File(), (EClassifier)this.getFileReferenceT(), null, "file", null, 0, 1, SignalType.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.sizeTEClass, SizeT.class, "SizeT", false, false, true);
        this.initEAttribute(this.getSizeT_X(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "x", null, 1, 1, SizeT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getSizeT_Y(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "y", null, 1, 1, SizeT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.sourceObjectTypeEClass, SourceObjectType.class, "SourceObjectType", false, false, true);
        this.initEAttribute(this.getSourceObjectType_InternalAccess(), (EClassifier)this.getInternalAccessType(), "internalAccess", null, 0, 1, SourceObjectType.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.timeStampsTypeEClass, TimeStampsType.class, "TimeStampsType", false, false, true);
        this.initEReference(this.getTimeStampsType_TimeStamp(), (EClassifier)this.getTimeStampT(), null, "timeStamp", null, 0, -1, TimeStampsType.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.timeStampTEClass, TimeStampT.class, "TimeStampT", false, false, true);
        this.initEAttribute(this.getTimeStampT_TimeStampCounter(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "timeStampCounter", null, 0, 1, TimeStampT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getTimeStampT_TimeStampKey(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "timeStampKey", null, 1, 1, TimeStampT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getTimeStampT_TimeStampValue(), (EClassifier)theXMLTypePackage.getDateTime(), "timeStampValue", null, 1, 1, TimeStampT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.variableMappingsExternalTypeEClass, VariableMappingsExternalType.class, "VariableMappingsExternalType", false, false, true);
        this.initEAttribute(this.getVariableMappingsExternalType_Group(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "group", null, 0, -1, VariableMappingsExternalType.class, false, false, true, false, false, false, false, true);
        this.initEReference(this.getVariableMappingsExternalType_ElementMapping(), (EClassifier)this.getElementMappingType1(), null, "elementMapping", null, 0, -1, VariableMappingsExternalType.class, true, true, true, true, false, false, true, true, true);
        this.initEClass(this.variableMappingsInternalTypeEClass, VariableMappingsInternalType.class, "VariableMappingsInternalType", false, false, true);
        this.initEAttribute(this.getVariableMappingsInternalType_Group(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "group", null, 0, -1, VariableMappingsInternalType.class, false, false, true, false, false, false, false, true);
        this.initEReference(this.getVariableMappingsInternalType_ElementMapping(), (EClassifier)this.getElementMappingType(), null, "elementMapping", null, 0, -1, VariableMappingsInternalType.class, true, true, true, true, false, false, true, true, true);
        this.initEClass(this.viewTypeEClass, ViewType.class, "ViewType", false, false, true);
        this.initEAttribute(this.getViewType_Name(), (EClassifier)theXMLTypePackage.getString(), "name", null, 1, 1, ViewType.class, false, false, true, false, false, true, false, true);
        this.initEEnum(this.basicModelTypeTypeEEnum, BasicModelTypeType.class, "BasicModelTypeType");
        this.addEEnumLiteral(this.basicModelTypeTypeEEnum, BasicModelTypeType.DT);
        this.addEEnumLiteral(this.basicModelTypeTypeEEnum, BasicModelTypeType.CONT);
        this.addEEnumLiteral(this.basicModelTypeTypeEEnum, BasicModelTypeType.SDISC);
        this.addEEnumLiteral(this.basicModelTypeTypeEEnum, BasicModelTypeType.UDISC);
        this.addEEnumLiteral(this.basicModelTypeTypeEEnum, BasicModelTypeType.LOG);
        this.addEEnumLiteral(this.basicModelTypeTypeEEnum, BasicModelTypeType.ENUMERATION);
        this.addEEnumLiteral(this.basicModelTypeTypeEEnum, BasicModelTypeType.MODEGROUP);
        this.addEEnumLiteral(this.basicModelTypeTypeEEnum, BasicModelTypeType.IMPLEMENTATION_CAST);
        this.addEEnumLiteral(this.basicModelTypeTypeEEnum, BasicModelTypeType.RESOURCE);
        this.addEEnumLiteral(this.basicModelTypeTypeEEnum, BasicModelTypeType.CLASS);
        this.addEEnumLiteral(this.basicModelTypeTypeEEnum, BasicModelTypeType.MODULE);
        this.addEEnumLiteral(this.basicModelTypeTypeEEnum, BasicModelTypeType.INTERFACE);
        this.addEEnumLiteral(this.basicModelTypeTypeEEnum, BasicModelTypeType.RTE_STANDARD_RETURN_TYPE);
        this.addEEnumLiteral(this.basicModelTypeTypeEEnum, BasicModelTypeType.UNDEFINED);
        this.initEEnum(this.componentTypeTypeEEnum, ComponentTypeType.class, "ComponentTypeType");
        this.addEEnumLiteral(this.componentTypeTypeEEnum, ComponentTypeType.ASCET_CLASS);
        this.addEEnumLiteral(this.componentTypeTypeEEnum, ComponentTypeType.ASCET_MODULE);
        this.addEEnumLiteral(this.componentTypeTypeEEnum, ComponentTypeType.ASCETCT_CLASS);
        this.addEEnumLiteral(this.componentTypeTypeEEnum, ComponentTypeType.ASCET_PROJECT);
        this.addEEnumLiteral(this.componentTypeTypeEEnum, ComponentTypeType.ASCET_DEFAULT_PROJECT);
        this.addEEnumLiteral(this.componentTypeTypeEEnum, ComponentTypeType.ASCET_PROTOCOL);
        this.addEEnumLiteral(this.componentTypeTypeEEnum, ComponentTypeType.ASCET_INTERFACE);
        this.addEEnumLiteral(this.componentTypeTypeEEnum, ComponentTypeType.ASCET_RECORD);
        this.addEEnumLiteral(this.componentTypeTypeEEnum, ComponentTypeType.ASCET_CONTAINER);
        this.addEEnumLiteral(this.componentTypeTypeEEnum, ComponentTypeType.ASCET_ENUMERATION);
        this.addEEnumLiteral(this.componentTypeTypeEEnum, ComponentTypeType.ASCET_IMAGE);
        this.addEEnumLiteral(this.componentTypeTypeEEnum, ComponentTypeType.ASCET_SIGNAL);
        this.addEEnumLiteral(this.componentTypeTypeEEnum, ComponentTypeType.ASCET_ASAP2_ITEM);
        this.addEEnumLiteral(this.componentTypeTypeEEnum, ComponentTypeType.ASCET_FOLDER);
        this.addEEnumLiteral(this.componentTypeTypeEEnum, ComponentTypeType.ASCET_GENERIC_COMPONENT);
        this.addEEnumLiteral(this.componentTypeTypeEEnum, ComponentTypeType.AUTOSAR_MODE_GROUP);
        this.addEEnumLiteral(this.componentTypeTypeEEnum, ComponentTypeType.AUTOSAR_CLIENT_SERVER_INTERFACE);
        this.addEEnumLiteral(this.componentTypeTypeEEnum, ComponentTypeType.AUTOSAR_CALIBRATION_INTERFACE);
        this.addEEnumLiteral(this.componentTypeTypeEEnum, ComponentTypeType.AUTOSAR_SENDER_RECEIVER_INTERFACE);
        this.addEEnumLiteral(this.componentTypeTypeEEnum, ComponentTypeType.AUTOSAR_ATOMIC_SOFTWARE_COMPONENT);
        this.addEEnumLiteral(this.componentTypeTypeEEnum, ComponentTypeType.AUTOSARNV_DATA_INTERFACE);
        this.initEEnum(this.internalAccessTypeEEnum, InternalAccessType.class, "InternalAccessType");
        this.addEEnumLiteral(this.internalAccessTypeEEnum, InternalAccessType.SEND);
        this.addEEnumLiteral(this.internalAccessTypeEEnum, InternalAccessType.RECEIVE);
        this.addEEnumLiteral(this.internalAccessTypeEEnum, InternalAccessType.SEND_RECEIVE);
        this.initEEnum(this.kindTypeEEnum, KindType.class, "KindType");
        this.addEEnumLiteral(this.kindTypeEEnum, KindType.VARIABLE);
        this.addEEnumLiteral(this.kindTypeEEnum, KindType.PARAMETER);
        this.addEEnumLiteral(this.kindTypeEEnum, KindType.CONSTANT);
        this.addEEnumLiteral(this.kindTypeEEnum, KindType.SYSCONSTANT);
        this.addEEnumLiteral(this.kindTypeEEnum, KindType.INPUT);
        this.addEEnumLiteral(this.kindTypeEEnum, KindType.OUTPUT);
        this.addEEnumLiteral(this.kindTypeEEnum, KindType.CT);
        this.addEEnumLiteral(this.kindTypeEEnum, KindType.DISCRETE);
        this.addEEnumLiteral(this.kindTypeEEnum, KindType.CONTINUOUS);
        this.addEEnumLiteral(this.kindTypeEEnum, KindType.STEPLOCAL);
        this.addEEnumLiteral(this.kindTypeEEnum, KindType.DEPENDENT);
        this.addEEnumLiteral(this.kindTypeEEnum, KindType.MESSAGE);
        this.addEEnumLiteral(this.kindTypeEEnum, KindType.INTERRUNNABLE);
        this.initEEnum(this.modelTypeTypeEEnum, ModelTypeType.class, "ModelTypeType");
        this.addEEnumLiteral(this.modelTypeTypeEEnum, ModelTypeType.SCALAR);
        this.addEEnumLiteral(this.modelTypeTypeEEnum, ModelTypeType.ONED);
        this.addEEnumLiteral(this.modelTypeTypeEEnum, ModelTypeType.TWOD);
        this.addEEnumLiteral(this.modelTypeTypeEEnum, ModelTypeType.ARRAY);
        this.addEEnumLiteral(this.modelTypeTypeEEnum, ModelTypeType.MATRIX);
        this.addEEnumLiteral(this.modelTypeTypeEEnum, ModelTypeType.DISTRIBUTION);
        this.addEEnumLiteral(this.modelTypeTypeEEnum, ModelTypeType.COMPLEX);
        this.initEEnum(this.scopeTypeEEnum, ScopeType.class, "ScopeType");
        this.addEEnumLiteral(this.scopeTypeEEnum, ScopeType.LOCAL);
        this.addEEnumLiteral(this.scopeTypeEEnum, ScopeType.IMPORTED);
        this.addEEnumLiteral(this.scopeTypeEEnum, ScopeType.EXPORTED);
        this.initEEnum(this.specificationTypeTypeEEnum, SpecificationTypeType.class, "SpecificationTypeType");
        this.addEEnumLiteral(this.specificationTypeTypeEEnum, SpecificationTypeType.UNKNOWN);
        this.addEEnumLiteral(this.specificationTypeTypeEEnum, SpecificationTypeType.ATOMIC_SOFTWARE_COMPONENT);
        this.addEEnumLiteral(this.specificationTypeTypeEEnum, SpecificationTypeType.BLOCK_DIAGRAM);
        this.addEEnumLiteral(this.specificationTypeTypeEEnum, SpecificationTypeType.BOOLEAN_TABLE);
        this.addEEnumLiteral(this.specificationTypeTypeEEnum, SpecificationTypeType.CCODE);
        this.addEEnumLiteral(this.specificationTypeTypeEEnum, SpecificationTypeType.CONDITIONAL_TABLE);
        this.addEEnumLiteral(this.specificationTypeTypeEEnum, SpecificationTypeType.ESDL);
        this.addEEnumLiteral(this.specificationTypeTypeEEnum, SpecificationTypeType.LAYOUT_ONLY);
        this.addEEnumLiteral(this.specificationTypeTypeEEnum, SpecificationTypeType.PROJECT);
        this.addEEnumLiteral(this.specificationTypeTypeEEnum, SpecificationTypeType.STATE_MACHINE);
        this.addEEnumLiteral(this.specificationTypeTypeEEnum, SpecificationTypeType.METHOD_INTERFACE);
        this.initEEnum(this.typeTypeEEnum, TypeType.class, "TypeType");
        this.addEEnumLiteral(this.typeTypeEEnum, TypeType.ASAM);
        this.addEEnumLiteral(this.typeTypeEEnum, TypeType.OBJECTCODE);
        this.addEEnumLiteral(this.typeTypeEEnum, TypeType.COMPONENT);
        this.addEEnumLiteral(this.typeTypeEEnum, TypeType.CSOURCE);
        this.addEEnumLiteral(this.typeTypeEEnum, TypeType.DATA);
        this.addEEnumLiteral(this.typeTypeEEnum, TypeType.EXPERIMENT);
        this.addEEnumLiteral(this.typeTypeEEnum, TypeType.HEADER);
        this.addEEnumLiteral(this.typeTypeEEnum, TypeType.IMPLEMENTATION);
        this.addEEnumLiteral(this.typeTypeEEnum, TypeType.SETTING);
        this.addEEnumLiteral(this.typeTypeEEnum, TypeType.SPECIFICATION);
        this.addEEnumLiteral(this.typeTypeEEnum, TypeType.GRAPHIC);
        this.addEEnumLiteral(this.typeTypeEEnum, TypeType.FORMULA);
        this.addEEnumLiteral(this.typeTypeEEnum, TypeType.IMPLEMENTATIONTYPE);
        this.addEEnumLiteral(this.typeTypeEEnum, TypeType.OSLOGIC);
        this.addEEnumLiteral(this.typeTypeEEnum, TypeType.GENERIC);
        this.addEEnumLiteral(this.typeTypeEEnum, TypeType.FOLDER);
        this.addEEnumLiteral(this.typeTypeEEnum, TypeType.SIGNAL);
        this.initEEnum(this.typeType1EEnum, TypeType1.class, "TypeType1");
        this.addEEnumLiteral(this.typeType1EEnum, TypeType1.NORMAL);
        this.addEEnumLiteral(this.typeType1EEnum, TypeType1.GROUPED);
        this.addEEnumLiteral(this.typeType1EEnum, TypeType1.FIXED);
        this.initEDataType(this.basicModelTypeTypeObjectEDataType, BasicModelTypeType.class, "BasicModelTypeTypeObject", true, true);
        this.initEDataType(this.componentTypeTypeObjectEDataType, ComponentTypeType.class, "ComponentTypeTypeObject", true, true);
        this.initEDataType(this.indexTypeEDataType, BigInteger.class, "IndexType", true, false);
        this.initEDataType(this.internalAccessTypeObjectEDataType, InternalAccessType.class, "InternalAccessTypeObject", true, true);
        this.initEDataType(this.kindTypeObjectEDataType, KindType.class, "KindTypeObject", true, true);
        this.initEDataType(this.modelTypeTypeObjectEDataType, ModelTypeType.class, "ModelTypeTypeObject", true, true);
        this.initEDataType(this.numberOrFractionEDataType, Object.class, "NumberOrFraction", true, false);
        this.initEDataType(this.numberOrFractionMember1EDataType, String.class, "NumberOrFractionMember1", true, false);
        this.initEDataType(this.nzqrEDataType, Object.class, "Nzqr", true, false);
        this.initEDataType(this.nzqrMember2EDataType, String.class, "NzqrMember2", true, false);
        this.initEDataType(this.oidEDataType, String.class, "OID", true, false);
        this.initEDataType(this.scopeTypeObjectEDataType, ScopeType.class, "ScopeTypeObject", true, true);
        this.initEDataType(this.specificationTypeTypeObjectEDataType, SpecificationTypeType.class, "SpecificationTypeTypeObject", true, true);
        this.initEDataType(this.typeTypeObjectEDataType, TypeType.class, "TypeTypeObject", true, true);
        this.initEDataType(this.typeTypeObject1EDataType, TypeType1.class, "TypeTypeObject1", true, true);
        this.createResource("http://www.etas.com/ascet/amd/620/component_main");
        this.createExtendedMetaDataAnnotations();
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.accessModesTEClass, source, new String[]{"name", "AccessModesT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getAccessModesT_Import(), source, new String[]{"kind", "attribute", "name", "import", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getAccessModesT_Read(), source, new String[]{"kind", "attribute", "name", "read", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getAccessModesT_Write(), source, new String[]{"kind", "attribute", "name", "write", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.argumentsComplexTypeEClass, source, new String[]{"name", "ArgumentsComplexType", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getArgumentsComplexType_Argument(), source, new String[]{"kind", "element", "name", "Argument", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.argumentsTypeEClass, source, new String[]{"name", "Arguments_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getArgumentsType_Argument(), source, new String[]{"kind", "element", "name", "Argument", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.asap2ItemTypeEClass, source, new String[]{"name", "Asap2Item_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getAsap2ItemType_File(), source, new String[]{"kind", "element", "name", "File", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getAsap2ItemType_OriginalLocation(), source, new String[]{"kind", "element", "name", "OriginalLocation", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.atomicSoftwareComponentTEClass, source, new String[]{"name", "AtomicSoftwareComponentT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getAtomicSoftwareComponentT_ParameterMappings(), source, new String[]{"kind", "element", "name", "ParameterMappings", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getAtomicSoftwareComponentT_VariableMappingsInternal(), source, new String[]{"kind", "element", "name", "VariableMappingsInternal", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getAtomicSoftwareComponentT_VariableMappingsExternal(), source, new String[]{"kind", "element", "name", "VariableMappingsExternal", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getAtomicSoftwareComponentT_Category(), source, new String[]{"kind", "attribute", "name", "category", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getAtomicSoftwareComponentT_SupportsMultipleInstantiation(), source, new String[]{"kind", "attribute", "name", "supportsMultipleInstantiation", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.attributesBaseTEClass, source, new String[]{"name", "AttributesBaseT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getAttributesBaseT_Direct(), source, new String[]{"kind", "attribute", "name", "direct", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getAttributesBaseT_Get(), source, new String[]{"kind", "attribute", "name", "get", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getAttributesBaseT_Read(), source, new String[]{"kind", "attribute", "name", "read", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getAttributesBaseT_Scope(), source, new String[]{"kind", "attribute", "name", "scope", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getAttributesBaseT_Set(), source, new String[]{"kind", "attribute", "name", "set", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getAttributesBaseT_Write(), source, new String[]{"kind", "attribute", "name", "write", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.basicModelTypeTypeEEnum, source, new String[]{"name", "basicModelType_._type"});
        this.addAnnotation((ENamedElement)this.basicModelTypeTypeObjectEDataType, source, new String[]{"name", "basicModelType_._type:Object", "baseType", "basicModelType_._type"});
        this.addAnnotation((ENamedElement)this.colorTEClass, source, new String[]{"name", "ColorT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getColorT_Blue(), source, new String[]{"kind", "attribute", "name", "blue", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getColorT_Green(), source, new String[]{"kind", "attribute", "name", "green", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getColorT_Red(), source, new String[]{"kind", "attribute", "name", "red", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.complexAttributesTEClass, source, new String[]{"name", "ComplexAttributesT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getComplexAttributesT_ComponentID(), source, new String[]{"kind", "attribute", "name", "componentID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getComplexAttributesT_ComponentName(), source, new String[]{"kind", "attribute", "name", "componentName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getComplexAttributesT_Kind(), source, new String[]{"kind", "attribute", "name", "kind", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getComplexAttributesT_Queued(), source, new String[]{"kind", "attribute", "name", "queued", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getComplexAttributesT_Reference(), source, new String[]{"kind", "attribute", "name", "reference", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.complexTypeTypeEClass, source, new String[]{"name", "ComplexType_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getComplexTypeType_ComplexAttributes(), source, new String[]{"kind", "element", "name", "ComplexAttributes", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getComplexTypeType_RecordAttributes(), source, new String[]{"kind", "element", "name", "RecordAttributes", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.componentMainTypeEClass, source, new String[]{"name", "ComponentMain_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getComponentMainType_Component(), source, new String[]{"kind", "element", "name", "Component", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getComponentMainType_GenericComponent(), source, new String[]{"kind", "element", "name", "GenericComponent", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getComponentMainType_AtomicSoftwareComponent(), source, new String[]{"kind", "element", "name", "AtomicSoftwareComponent", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getComponentMainType_Enumeration(), source, new String[]{"kind", "element", "name", "Enumeration", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getComponentMainType_ModeGroup(), source, new String[]{"kind", "element", "name", "ModeGroup", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getComponentMainType_Image(), source, new String[]{"kind", "element", "name", "Image", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getComponentMainType_Signal(), source, new String[]{"kind", "element", "name", "Signal", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getComponentMainType_Asap2Item(), source, new String[]{"kind", "element", "name", "Asap2Item", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getComponentMainType_Container(), source, new String[]{"kind", "element", "name", "Container", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getComponentMainType_Folder(), source, new String[]{"kind", "element", "name", "Folder", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getComponentMainType_Signature(), source, new String[]{"kind", "element", "name", "Signature", "namespace", "http://www.w3.org/2000/09/xmldsig#"});
        this.addAnnotation((ENamedElement)this.getComponentMainType_SchemaVersion(), source, new String[]{"kind", "attribute", "name", "schemaVersion", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getComponentMainType_ToolVersion(), source, new String[]{"kind", "attribute", "name", "toolVersion", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.componentTEClass, source, new String[]{"name", "ComponentT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getComponentT_Elements(), source, new String[]{"kind", "element", "name", "Elements", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getComponentT_MethodSignatures(), source, new String[]{"kind", "element", "name", "MethodSignatures", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getComponentT_TimeStamps(), source, new String[]{"kind", "element", "name", "TimeStamps", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getComponentT_ChecksumGeneral(), source, new String[]{"kind", "attribute", "name", "checksumGeneral", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getComponentT_ChecksumPublicInterface(), source, new String[]{"kind", "attribute", "name", "checksumPublicInterface", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getComponentT_DefaultProjectName(), source, new String[]{"kind", "attribute", "name", "defaultProjectName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getComponentT_DefaultProjectOID(), source, new String[]{"kind", "attribute", "name", "defaultProjectOID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getComponentT_SpecificationType(), source, new String[]{"kind", "attribute", "name", "specificationType", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.componentTypeTypeEEnum, source, new String[]{"name", "componentType_._type"});
        this.addAnnotation((ENamedElement)this.componentTypeTypeObjectEDataType, source, new String[]{"name", "componentType_._type:Object", "baseType", "componentType_._type"});
        this.addAnnotation((ENamedElement)this.configurationManagementTEClass, source, new String[]{"name", "ConfigurationManagementT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getConfigurationManagementT_GenericData(), source, new String[]{"kind", "element", "name", "GenericData", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getConfigurationManagementT_ConfigurationID(), source, new String[]{"kind", "attribute", "name", "configurationID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getConfigurationManagementT_Edition(), source, new String[]{"kind", "attribute", "name", "edition", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getConfigurationManagementT_VersionID(), source, new String[]{"kind", "attribute", "name", "versionID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.containerTypeEClass, source, new String[]{"name", "Container_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getContainerType_Item(), source, new String[]{"kind", "element", "name", "Item", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.customerSpecificAttributesTypeEClass, source, new String[]{"name", "CustomerSpecificAttributes_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getCustomerSpecificAttributesType_ConfigurationManagement(), source, new String[]{"kind", "element", "name", "ConfigurationManagement", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getCustomerSpecificAttributesType_RequirementsManagement(), source, new String[]{"kind", "element", "name", "RequirementsManagement", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getCustomerSpecificAttributesType_AccessManagement(), source, new String[]{"kind", "element", "name", "AccessManagement", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getCustomerSpecificAttributesType_CustomerData(), source, new String[]{"kind", "element", "name", "CustomerData", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.dataInterfaceTEClass, source, new String[]{"name", "DataInterfaceT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getDataInterfaceT_Elements(), source, new String[]{"kind", "element", "name", "Elements", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDataInterfaceT_ChecksumGeneral(), source, new String[]{"kind", "attribute", "name", "checksumGeneral", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDataInterfaceT_ChecksumPublicInterface(), source, new String[]{"kind", "attribute", "name", "checksumPublicInterface", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.dimensionalAttributesTEClass, source, new String[]{"name", "DimensionalAttributesT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getDimensionalAttributesT_Formula(), source, new String[]{"kind", "element", "name", "Formula", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDimensionalAttributesT_Dependent(), source, new String[]{"kind", "attribute", "name", "dependent", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDimensionalAttributesT_Reference(), source, new String[]{"kind", "attribute", "name", "reference", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDimensionalAttributesT_Virtual(), source, new String[]{"kind", "attribute", "name", "virtual", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.dimensionalTypeTypeEClass, source, new String[]{"name", "DimensionalType_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getDimensionalTypeType_DimensionalAttributes(), source, new String[]{"kind", "element", "name", "DimensionalAttributes", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDimensionalTypeType_Interpolation(), source, new String[]{"kind", "attribute", "name", "interpolation", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDimensionalTypeType_MaxSizeX(), source, new String[]{"kind", "attribute", "name", "maxSizeX", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDimensionalTypeType_MaxSizeY(), source, new String[]{"kind", "attribute", "name", "maxSizeY", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDimensionalTypeType_Type(), source, new String[]{"kind", "attribute", "name", "type", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDimensionalTypeType_XDistributionName(), source, new String[]{"kind", "attribute", "name", "xDistributionName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDimensionalTypeType_XDistributionOID(), source, new String[]{"kind", "attribute", "name", "xDistributionOID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDimensionalTypeType_XSizeVariantElementName(), source, new String[]{"kind", "attribute", "name", "xSizeVariantElementName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDimensionalTypeType_XSizeVariantElementOID(), source, new String[]{"kind", "attribute", "name", "xSizeVariantElementOID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDimensionalTypeType_YDistributionName(), source, new String[]{"kind", "attribute", "name", "yDistributionName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDimensionalTypeType_YDistributionOID(), source, new String[]{"kind", "attribute", "name", "yDistributionOID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDimensionalTypeType_YSizeVariantElementName(), source, new String[]{"kind", "attribute", "name", "ySizeVariantElementName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDimensionalTypeType_YSizeVariantElementOID(), source, new String[]{"kind", "attribute", "name", "ySizeVariantElementOID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.documentRootEClass, source, new String[]{"name", "", "kind", "mixed"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_Mixed(), source, new String[]{"kind", "elementWildcard", "name", ":mixed"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_XMLNSPrefixMap(), source, new String[]{"kind", "attribute", "name", "xmlns:prefix"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_XSISchemaLocation(), source, new String[]{"kind", "attribute", "name", "xsi:schemaLocation"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_ComponentMain(), source, new String[]{"kind", "element", "name", "ComponentMain", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.elementAttributesTEClass, source, new String[]{"name", "ElementAttributesT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getElementAttributesT_ScalarType(), source, new String[]{"kind", "element", "name", "ScalarType", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getElementAttributesT_ComplexType(), source, new String[]{"kind", "element", "name", "ComplexType", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getElementAttributesT_DimensionalType(), source, new String[]{"kind", "element", "name", "DimensionalType", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getElementAttributesT_BasicModelType(), source, new String[]{"kind", "attribute", "name", "basicModelType", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getElementAttributesT_ModelType(), source, new String[]{"kind", "attribute", "name", "modelType", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getElementAttributesT_Unit(), source, new String[]{"kind", "attribute", "name", "unit", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.elementMappingTypeEClass, source, new String[]{"name", "ElementMapping_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getElementMappingType_ElementName(), source, new String[]{"kind", "attribute", "name", "elementName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.elementMappingType1EClass, source, new String[]{"name", "ElementMapping_._1_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getElementMappingType1_ElementName(), source, new String[]{"kind", "attribute", "name", "elementName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.elementMappingType2EClass, source, new String[]{"name", "ElementMapping_._2_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getElementMappingType2_ElementName(), source, new String[]{"kind", "attribute", "name", "elementName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.elementsTypeEClass, source, new String[]{"name", "ElementsType", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getElementsType_Element(), source, new String[]{"kind", "element", "name", "Element", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.elementTEClass, source, new String[]{"name", "ElementT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getElementT_Comment(), source, new String[]{"kind", "element", "name", "Comment", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getElementT_ElementAttributes(), source, new String[]{"kind", "element", "name", "ElementAttributes", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getElementT_CustomerData(), source, new String[]{"kind", "element", "name", "CustomerData", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getElementT_Ignore(), source, new String[]{"kind", "attribute", "name", "ignore", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getElementT_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getElementT_OID(), source, new String[]{"kind", "attribute", "name", "OID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getElementT_UUID(), source, new String[]{"kind", "attribute", "name", "UUID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.enumerationAttributesTEClass, source, new String[]{"name", "EnumerationAttributesT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getEnumerationAttributesT_EnumerationName(), source, new String[]{"kind", "attribute", "name", "enumerationName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getEnumerationAttributesT_EnumerationOID(), source, new String[]{"kind", "attribute", "name", "enumerationOID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getEnumerationAttributesT_Explicit(), source, new String[]{"kind", "attribute", "name", "explicit", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.enumerationTypeEClass, source, new String[]{"name", "Enumeration_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getEnumerationType_Enumerator(), source, new String[]{"kind", "element", "name", "Enumerator", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.enumeratorTEClass, source, new String[]{"name", "EnumeratorT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getEnumeratorT_Index(), source, new String[]{"kind", "attribute", "name", "index", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getEnumeratorT_Value(), source, new String[]{"kind", "attribute", "name", "value", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.externalMappingObjectTEClass, source, new String[]{"name", "ExternalMappingObjectT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getExternalMappingObjectT_SourceObject(), source, new String[]{"kind", "element", "name", "SourceObject", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getExternalMappingObjectT_TargetObject(), source, new String[]{"kind", "element", "name", "TargetObject", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.fileReferenceTEClass, source, new String[]{"name", "FileReferenceT", "kind", "simple"});
        this.addAnnotation((ENamedElement)this.getFileReferenceT_Value(), source, new String[]{"name", ":0", "kind", "simple"});
        this.addAnnotation((ENamedElement)this.getFileReferenceT_Checksum(), source, new String[]{"kind", "attribute", "name", "checksum", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getFileReferenceT_Type(), source, new String[]{"kind", "attribute", "name", "type", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.formalTypeEClass, source, new String[]{"name", "Formal_._type", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getFormalType_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getFormalType_OID(), source, new String[]{"kind", "attribute", "name", "OID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.formattedTextTEClass, source, new String[]{"name", "FormattedTextT", "kind", "simple"});
        this.addAnnotation((ENamedElement)this.getFormattedTextT_Value(), source, new String[]{"name", ":0", "kind", "simple"});
        this.addAnnotation((ENamedElement)this.formulaTypeEClass, source, new String[]{"name", "FormulaType", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getFormulaType_Formal(), source, new String[]{"kind", "element", "name", "Formal", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getFormulaType_Code(), source, new String[]{"kind", "attribute", "name", "code", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.genericComponentTEClass, source, new String[]{"name", "GenericComponentT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getGenericComponentT_FactoryKey(), source, new String[]{"kind", "attribute", "name", "factoryKey", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getGenericComponentT_IconName(), source, new String[]{"kind", "attribute", "name", "iconName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.genericDataTEClass, source, new String[]{"name", "GenericDataT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getGenericDataT_Any(), source, new String[]{"kind", "elementWildcard", "wildcards", "##any", "name", ":0", "processing", "skip"});
        this.addAnnotation((ENamedElement)this.getGenericDataT_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.iconTEClass, source, new String[]{"name", "IconT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getIconT_IconFile(), source, new String[]{"kind", "element", "name", "IconFile", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getIconT_Size(), source, new String[]{"kind", "element", "name", "Size", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getIconT_IconName(), source, new String[]{"kind", "attribute", "name", "iconName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getIconT_IconOID(), source, new String[]{"kind", "attribute", "name", "iconOID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.imageTypeEClass, source, new String[]{"name", "Image_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getImageType_File(), source, new String[]{"kind", "element", "name", "File", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.indexTypeEDataType, source, new String[]{"name", "index_._type", "baseType", "http://www.eclipse.org/emf/2003/XMLType#integer", "minInclusive", "-2147483648", "maxInclusive", "4294967295"});
        this.addAnnotation((ENamedElement)this.internalAccessTypeEEnum, source, new String[]{"name", "internalAccess_._type"});
        this.addAnnotation((ENamedElement)this.internalAccessTypeObjectEDataType, source, new String[]{"name", "internalAccess_._type:Object", "baseType", "internalAccess_._type"});
        this.addAnnotation((ENamedElement)this.intervalTEClass, source, new String[]{"name", "IntervalT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getIntervalT_Max(), source, new String[]{"kind", "attribute", "name", "max", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getIntervalT_Min(), source, new String[]{"kind", "attribute", "name", "min", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.itemBaseTEClass, source, new String[]{"name", "ItemBaseT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getItemBaseT_TimeStamp(), source, new String[]{"kind", "element", "name", "TimeStamp", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getItemBaseT_Comment(), source, new String[]{"kind", "element", "name", "Comment", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getItemBaseT_Checksum(), source, new String[]{"kind", "attribute", "name", "checksum", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getItemBaseT_ComponentType(), source, new String[]{"kind", "attribute", "name", "componentType", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getItemBaseT_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getItemBaseT_NameSpace(), source, new String[]{"kind", "attribute", "name", "nameSpace", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getItemBaseT_OID(), source, new String[]{"kind", "attribute", "name", "OID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getItemBaseT_TimeStamp1(), source, new String[]{"kind", "attribute", "name", "timeStamp", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getItemBaseT_UUID(), source, new String[]{"kind", "attribute", "name", "UUID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.itemRefTEClass, source, new String[]{"name", "ItemRefT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getItemRefT_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getItemRefT_OID(), source, new String[]{"kind", "attribute", "name", "OID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.itemTEClass, source, new String[]{"name", "ItemT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getItemT_Notes(), source, new String[]{"kind", "element", "name", "Notes", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getItemT_CustomerSpecificAttributes(), source, new String[]{"kind", "element", "name", "CustomerSpecificAttributes", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.itemTypeEClass, source, new String[]{"name", "Item_._type", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getItemType_ItemName(), source, new String[]{"kind", "attribute", "name", "itemName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getItemType_ItemOID(), source, new String[]{"kind", "attribute", "name", "itemOID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.kindTypeEEnum, source, new String[]{"name", "KindType"});
        this.addAnnotation((ENamedElement)this.kindTypeObjectEDataType, source, new String[]{"name", "KindType:Object", "baseType", "KindType"});
        this.addAnnotation((ENamedElement)this.localsComplexTypeEClass, source, new String[]{"name", "LocalsComplexType", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getLocalsComplexType_Local(), source, new String[]{"kind", "element", "name", "Local", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.mappingItemTEClass, source, new String[]{"name", "MappingItemT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getMappingItemT_DisplayName(), source, new String[]{"kind", "attribute", "name", "displayName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getMappingItemT_ElementName(), source, new String[]{"kind", "attribute", "name", "elementName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getMappingItemT_ElementOID(), source, new String[]{"kind", "attribute", "name", "elementOID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getMappingItemT_ModelName(), source, new String[]{"kind", "attribute", "name", "modelName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getMappingItemT_ModelOID(), source, new String[]{"kind", "attribute", "name", "modelOID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.mappingObjectTEClass, source, new String[]{"name", "MappingObjectT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getMappingObjectT_SourceObject(), source, new String[]{"kind", "element", "name", "SourceObject", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getMappingObjectT_TargetObject(), source, new String[]{"kind", "element", "name", "TargetObject", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.methodBaseTEClass, source, new String[]{"name", "MethodBaseT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getMethodBaseT_CustomerData(), source, new String[]{"kind", "element", "name", "CustomerData", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getMethodBaseT_AvailableForOS(), source, new String[]{"kind", "attribute", "name", "availableForOS", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getMethodBaseT_Default(), source, new String[]{"kind", "attribute", "name", "default", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getMethodBaseT_DefaultMethod(), source, new String[]{"kind", "attribute", "name", "defaultMethod", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getMethodBaseT_Hidden(), source, new String[]{"kind", "attribute", "name", "hidden", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getMethodBaseT_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getMethodBaseT_OID(), source, new String[]{"kind", "attribute", "name", "OID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getMethodBaseT_Public(), source, new String[]{"kind", "attribute", "name", "public", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getMethodBaseT_ReinitializeMethod(), source, new String[]{"kind", "attribute", "name", "reinitializeMethod", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getMethodBaseT_UUID(), source, new String[]{"kind", "attribute", "name", "UUID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.methodInterfaceTEClass, source, new String[]{"name", "MethodInterfaceT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getMethodInterfaceT_MethodSignatures(), source, new String[]{"kind", "element", "name", "MethodSignatures", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getMethodInterfaceT_ChecksumGeneral(), source, new String[]{"kind", "attribute", "name", "checksumGeneral", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getMethodInterfaceT_ChecksumPublicInterface(), source, new String[]{"kind", "attribute", "name", "checksumPublicInterface", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.methodSignaturesTypeEClass, source, new String[]{"name", "MethodSignatures_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getMethodSignaturesType_Group(), source, new String[]{"kind", "group", "name", "group:0"});
        this.addAnnotation((ENamedElement)this.getMethodSignaturesType_MethodSignature(), source, new String[]{"kind", "element", "name", "MethodSignature", "namespace", "##targetNamespace", "group", "group:0"});
        this.addAnnotation((ENamedElement)this.methodSignaturesType1EClass, source, new String[]{"name", "MethodSignaturesType", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getMethodSignaturesType1_Group(), source, new String[]{"kind", "group", "name", "group:0"});
        this.addAnnotation((ENamedElement)this.getMethodSignaturesType1_RunnableSignature(), source, new String[]{"kind", "element", "name", "RunnableSignature", "namespace", "##targetNamespace", "group", "group:0"});
        this.addAnnotation((ENamedElement)this.getMethodSignaturesType1_RealizedRunnableSignature(), source, new String[]{"kind", "element", "name", "RealizedRunnableSignature", "namespace", "##targetNamespace", "group", "group:0"});
        this.addAnnotation((ENamedElement)this.getMethodSignaturesType1_MethodSignature(), source, new String[]{"kind", "element", "name", "MethodSignature", "namespace", "##targetNamespace", "group", "group:0"});
        this.addAnnotation((ENamedElement)this.getMethodSignaturesType1_RealizedMethodSignature(), source, new String[]{"kind", "element", "name", "RealizedMethodSignature", "namespace", "##targetNamespace", "group", "group:0"});
        this.addAnnotation((ENamedElement)this.methodSignatureTEClass, source, new String[]{"name", "MethodSignatureT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getMethodSignatureT_Arguments(), source, new String[]{"kind", "element", "name", "Arguments", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getMethodSignatureT_Return(), source, new String[]{"kind", "element", "name", "Return", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.methodTEClass, source, new String[]{"name", "MethodT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getMethodT_Arguments(), source, new String[]{"kind", "element", "name", "Arguments", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getMethodT_Return(), source, new String[]{"kind", "element", "name", "Return", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getMethodT_Locals(), source, new String[]{"kind", "element", "name", "Locals", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.modeGroupTypeEClass, source, new String[]{"name", "ModeGroup_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getModeGroupType_Mode(), source, new String[]{"kind", "element", "name", "Mode", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getModeGroupType_DefaultMode(), source, new String[]{"kind", "attribute", "name", "defaultMode", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.modelTypeTypeEEnum, source, new String[]{"name", "modelType_._type"});
        this.addAnnotation((ENamedElement)this.modelTypeTypeObjectEDataType, source, new String[]{"name", "modelType_._type:Object", "baseType", "modelType_._type"});
        this.addAnnotation((ENamedElement)this.notesTEClass, source, new String[]{"name", "NotesT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getNotesT_Note(), source, new String[]{"kind", "element", "name", "Note", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.noteTypeEClass, source, new String[]{"name", "Note_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getNoteType_Text(), source, new String[]{"kind", "element", "name", "Text", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getNoteType_View(), source, new String[]{"kind", "element", "name", "View", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getNoteType_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.numberOrFractionEDataType, source, new String[]{"name", "NumberOrFraction", "memberTypes", "http://www.eclipse.org/emf/2003/XMLType#double NumberOrFraction_._member_._1"});
        this.addAnnotation((ENamedElement)this.numberOrFractionMember1EDataType, source, new String[]{"name", "NumberOrFraction_._member_._1", "baseType", "http://www.eclipse.org/emf/2003/XMLType#string", "pattern", "-?\\d*.?\\d*/\\d*\\.?\\d*"});
        this.addAnnotation((ENamedElement)this.nzqrEDataType, source, new String[]{"name", "nzqr", "memberTypes", "http://www.eclipse.org/emf/2003/XMLType#double http://www.eclipse.org/emf/2003/XMLType#int nzqr_._member_._2"});
        this.addAnnotation((ENamedElement)this.nzqrMember2EDataType, source, new String[]{"name", "nzqr_._member_._2", "baseType", "http://www.eclipse.org/emf/2003/XMLType#string", "pattern", "-?\\d*/\\d*"});
        this.addAnnotation((ENamedElement)this.oidEDataType, source, new String[]{"name", "OID", "baseType", "http://www.eclipse.org/emf/2003/XMLType#string", "pattern", "(_040|_07v)\\w{26}|_sm"});
        this.addAnnotation((ENamedElement)this.optionTEClass, source, new String[]{"name", "OptionT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getOptionT_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getOptionT_Type(), source, new String[]{"kind", "attribute", "name", "type", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getOptionT_Value(), source, new String[]{"kind", "attribute", "name", "value", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.parameterMappingsTypeEClass, source, new String[]{"name", "ParameterMappings_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getParameterMappingsType_Group(), source, new String[]{"kind", "group", "name", "group:0"});
        this.addAnnotation((ENamedElement)this.getParameterMappingsType_ElementMapping(), source, new String[]{"kind", "element", "name", "ElementMapping", "namespace", "##targetNamespace", "group", "group:0"});
        this.addAnnotation((ENamedElement)this.pointTEClass, source, new String[]{"name", "PointT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getPointT_X(), source, new String[]{"kind", "attribute", "name", "x", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getPointT_Y(), source, new String[]{"kind", "attribute", "name", "y", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.primitiveAttributesBaseTEClass, source, new String[]{"name", "PrimitiveAttributesBaseT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getPrimitiveAttributesBaseT_CalibrationRead(), source, new String[]{"kind", "attribute", "name", "calibrationRead", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getPrimitiveAttributesBaseT_CalibrationWrite(), source, new String[]{"kind", "attribute", "name", "calibrationWrite", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getPrimitiveAttributesBaseT_Kind(), source, new String[]{"kind", "attribute", "name", "kind", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getPrimitiveAttributesBaseT_Volatile(), source, new String[]{"kind", "attribute", "name", "volatile", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.realizedElementTEClass, source, new String[]{"name", "RealizedElementT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getRealizedElementT_MasterElementName(), source, new String[]{"kind", "attribute", "name", "masterElementName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getRealizedElementT_MasterElementOID(), source, new String[]{"kind", "attribute", "name", "masterElementOID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.realizedMethodBaseTEClass, source, new String[]{"name", "RealizedMethodBaseT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getRealizedMethodBaseT_InterfaceName(), source, new String[]{"kind", "attribute", "name", "interfaceName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getRealizedMethodBaseT_InterfaceOID(), source, new String[]{"kind", "attribute", "name", "interfaceOID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getRealizedMethodBaseT_SignatureName(), source, new String[]{"kind", "attribute", "name", "signatureName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getRealizedMethodBaseT_SignatureOID(), source, new String[]{"kind", "attribute", "name", "signatureOID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.realizedMethodTEClass, source, new String[]{"name", "RealizedMethodT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getRealizedMethodT_Arguments(), source, new String[]{"kind", "element", "name", "Arguments", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getRealizedMethodT_Return(), source, new String[]{"kind", "element", "name", "Return", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getRealizedMethodT_Locals(), source, new String[]{"kind", "element", "name", "Locals", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.realizedReturnTEClass, source, new String[]{"name", "RealizedReturnT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getRealizedReturnT_MasterElementOID(), source, new String[]{"kind", "attribute", "name", "masterElementOID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.realizedRunnableTEClass, source, new String[]{"name", "RealizedRunnableT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getRealizedRunnableT_CanBeInvokedConcurrently(), source, new String[]{"kind", "attribute", "name", "canBeInvokedConcurrently", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getRealizedRunnableT_MinimumStartTime(), source, new String[]{"kind", "attribute", "name", "minimumStartTime", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.recordAttributesTEClass, source, new String[]{"name", "RecordAttributesT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getRecordAttributesT_CalibrationRead(), source, new String[]{"kind", "attribute", "name", "calibrationRead", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getRecordAttributesT_CalibrationWrite(), source, new String[]{"kind", "attribute", "name", "calibrationWrite", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getRecordAttributesT_Virtual(), source, new String[]{"kind", "attribute", "name", "virtual", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getRecordAttributesT_Volatile(), source, new String[]{"kind", "attribute", "name", "volatile", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.requirementsManagementTEClass, source, new String[]{"name", "RequirementsManagementT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getRequirementsManagementT_GenericData(), source, new String[]{"kind", "element", "name", "GenericData", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getRequirementsManagementT_RequirementsID(), source, new String[]{"kind", "attribute", "name", "requirementsID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.returnTEClass, source, new String[]{"name", "ReturnT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getReturnT_Comment(), source, new String[]{"kind", "element", "name", "Comment", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getReturnT_ElementAttributes(), source, new String[]{"kind", "element", "name", "ElementAttributes", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getReturnT_CustomerData(), source, new String[]{"kind", "element", "name", "CustomerData", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getReturnT_OID(), source, new String[]{"kind", "attribute", "name", "OID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getReturnT_UUID(), source, new String[]{"kind", "attribute", "name", "UUID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.runnableTEClass, source, new String[]{"name", "RunnableT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getRunnableT_Locals(), source, new String[]{"kind", "element", "name", "Locals", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getRunnableT_CanBeInvokedConcurrently(), source, new String[]{"kind", "attribute", "name", "canBeInvokedConcurrently", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getRunnableT_MinimumStartTime(), source, new String[]{"kind", "attribute", "name", "minimumStartTime", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.scalarAttributesTEClass, source, new String[]{"name", "ScalarAttributesT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getScalarAttributesT_Formula(), source, new String[]{"kind", "element", "name", "Formula", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getScalarAttributesT_Dependent(), source, new String[]{"kind", "attribute", "name", "dependent", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getScalarAttributesT_Explicit(), source, new String[]{"kind", "attribute", "name", "explicit", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getScalarAttributesT_Interrunnable(), source, new String[]{"kind", "attribute", "name", "interrunnable", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getScalarAttributesT_Virtual(), source, new String[]{"kind", "attribute", "name", "virtual", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.scalarTypeTypeEClass, source, new String[]{"name", "ScalarType_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getScalarTypeType_ScalarAttributes(), source, new String[]{"kind", "element", "name", "ScalarAttributes", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getScalarTypeType_EnumerationAttributes(), source, new String[]{"kind", "element", "name", "EnumerationAttributes", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.scopeTypeEEnum, source, new String[]{"name", "scope_._type"});
        this.addAnnotation((ENamedElement)this.scopeTypeObjectEDataType, source, new String[]{"name", "scope_._type:Object", "baseType", "scope_._type"});
        this.addAnnotation((ENamedElement)this.signalTypeEClass, source, new String[]{"name", "Signal_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getSignalType_File(), source, new String[]{"kind", "element", "name", "File", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.sizeTEClass, source, new String[]{"name", "SizeT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getSizeT_X(), source, new String[]{"kind", "attribute", "name", "x", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getSizeT_Y(), source, new String[]{"kind", "attribute", "name", "y", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.sourceObjectTypeEClass, source, new String[]{"name", "SourceObject_._type", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getSourceObjectType_InternalAccess(), source, new String[]{"kind", "attribute", "name", "internalAccess", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.specificationTypeTypeEEnum, source, new String[]{"name", "specificationType_._type"});
        this.addAnnotation((ENamedElement)this.specificationTypeTypeObjectEDataType, source, new String[]{"name", "specificationType_._type:Object", "baseType", "specificationType_._type"});
        this.addAnnotation((ENamedElement)this.timeStampsTypeEClass, source, new String[]{"name", "TimeStamps_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getTimeStampsType_TimeStamp(), source, new String[]{"kind", "element", "name", "TimeStamp", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.timeStampTEClass, source, new String[]{"name", "TimeStampT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getTimeStampT_TimeStampCounter(), source, new String[]{"kind", "attribute", "name", "timeStampCounter", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTimeStampT_TimeStampKey(), source, new String[]{"kind", "attribute", "name", "timeStampKey", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTimeStampT_TimeStampValue(), source, new String[]{"kind", "attribute", "name", "timeStampValue", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.typeTypeEEnum, source, new String[]{"name", "type_._type"});
        this.addAnnotation((ENamedElement)this.typeType1EEnum, source, new String[]{"name", "type_._1_._type"});
        this.addAnnotation((ENamedElement)this.typeTypeObjectEDataType, source, new String[]{"name", "type_._type:Object", "baseType", "type_._type"});
        this.addAnnotation((ENamedElement)this.typeTypeObject1EDataType, source, new String[]{"name", "type_._1_._type:Object", "baseType", "type_._1_._type"});
        this.addAnnotation((ENamedElement)this.variableMappingsExternalTypeEClass, source, new String[]{"name", "VariableMappingsExternal_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getVariableMappingsExternalType_Group(), source, new String[]{"kind", "group", "name", "group:0"});
        this.addAnnotation((ENamedElement)this.getVariableMappingsExternalType_ElementMapping(), source, new String[]{"kind", "element", "name", "ElementMapping", "namespace", "##targetNamespace", "group", "group:0"});
        this.addAnnotation((ENamedElement)this.variableMappingsInternalTypeEClass, source, new String[]{"name", "VariableMappingsInternal_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getVariableMappingsInternalType_Group(), source, new String[]{"kind", "group", "name", "group:0"});
        this.addAnnotation((ENamedElement)this.getVariableMappingsInternalType_ElementMapping(), source, new String[]{"kind", "element", "name", "ElementMapping", "namespace", "##targetNamespace", "group", "group:0"});
        this.addAnnotation((ENamedElement)this.viewTypeEClass, source, new String[]{"name", "View_._type", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getViewType_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
    }
}

